import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math';

class LeniaGame extends StatelessWidget {
  const LeniaGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.navigate_before,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
          title: const Text(
            'Jeu de Lenia',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const GameOfLenia(),
      ),
    );
  }
}

class GameOfLenia extends StatefulWidget {
  const GameOfLenia({super.key});

  @override
  _GameOfLeniaState createState() => _GameOfLeniaState();
}

class _GameOfLeniaState extends State<GameOfLenia> {
  static const int rows = 40;
  static const int cols = 40;
  static int generation = 0;
  List<List<double>> grid =
      List.generate(rows, (_) => List.generate(cols, (_) => 0.0));
  Timer? timer;
  bool isRunning = false;
  double mu = 0.15; // mean of the Gaussian function
  double sigma = 45; // standard deviation of the Gaussian function

  void _startGame() {
    setState(() {
      isRunning = true;
    });
    timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        generation += 1;
        _updateGrid();
      });
    });
  }

  void _pauseGame() {
    setState(() {
      isRunning = false;
    });
    timer?.cancel();
  }

  void _resetGame() {
    setState(() {
      grid = List.generate(rows, (_) => List.generate(cols, (_) => 0.0));
      generation = 0;
      mu = 0.15;
      sigma = 45;
      isRunning = false;
      timer?.cancel();
    });
  }

  void _updateGrid() {
    List<List<double>> newGrid =
        List.generate(rows, (_) => List.generate(cols, (_) => 0.0));

    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < cols; col++) {
        double neighbors = _calculateNeighbors(row, col);
        newGrid[row][col] = _updateCell(grid[row][col], neighbors);
      }
    }

    grid = newGrid;
  }

  double _calculateNeighbors(int row, int col) {
    double sum = 0.0;
    double sigma = 1.0; // standard deviation for Gaussian kernel
    double normalization = 0.0;

    for (int i = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        int r = (row + i + rows) % rows;
        int c = (col + j + cols) % cols;
        double weight = exp(-(i * i + j * j) / (2 * sigma * sigma));
        sum += grid[r][c] * weight;
        normalization += weight;
      }
    }

    return sum / normalization;
  }

  double _updateCell(double currentValue, double neighbors) {
    double growth =
        exp(-pow((neighbors - mu), 2) / (2 * pow(0.001 * sigma, 2)));
    return currentValue +
        growth * (1 - currentValue) -
        (1 - growth) * currentValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.red,
          ],
        ),
      ),
      child: MediaQuery.of(context).size.width > 850
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Génération : $generation',
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  GestureDetector(
                    onTapDown: (details) {
                      setState(() {
                        _toggleCell(details.localPosition);
                      });
                    },
                    child: CustomPaint(
                      size: const Size.square(800),
                      painter: GridPainter(grid),
                    ),
                  ),
                  Text(
                    'Mu = $mu',
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    'Sigma = ${0.001 * sigma}',
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Slider(
                    value: mu,
                    min: 0,
                    max: 1,
                    divisions: 20,
                    onChanged: (double value) {
                      setState(() {
                        mu = value;
                      });
                    },
                  ),
                  Slider(
                    value: sigma,
                    min: 0,
                    max: 100,
                    divisions: 20,
                    onChanged: (double value) {
                      setState(() {
                        sigma = value;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: isRunning ? _pauseGame : _startGame,
                          child: Text(isRunning ? 'Pause' : 'Start'),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: _resetGame,
                          child: const Text('Reset'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : const Text(
              "The screen is too small",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
    );
  }

  void _toggleCell(Offset position) {
    double cellSize = 800 / rows;
    int row = (position.dy / cellSize).floor();
    int col = (position.dx / cellSize).floor();

    if (row >= 0 && row < rows && col >= 0 && col < cols) {
      grid[row][col] = grid[row][col] == 0.0 ? 1.0 : 0.0;
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}

class GridPainter extends CustomPainter {
  final List<List<double>> grid;

  GridPainter(this.grid);

  @override
  void paint(Canvas canvas, Size size) {
    double cellSize = size.width / grid.length;

    Paint paint = Paint()..style = PaintingStyle.fill;

    for (int row = 0; row < grid.length; row++) {
      for (int col = 0; col < grid[row].length; col++) {
        paint.color = Color.lerp(Colors.black, Colors.white, grid[row][col])!;
        canvas.drawRect(
          Rect.fromLTWH(col * cellSize, row * cellSize, cellSize, cellSize),
          paint,
        );
      }
    }

    paint.color = Colors.white.withAlpha(30);
    paint.style = PaintingStyle.stroke;

    for (int row = 0; row < grid.length; row++) {
      for (int col = 0; col < grid[row].length; col++) {
        canvas.drawRect(
          Rect.fromLTWH(col * cellSize, row * cellSize, cellSize, cellSize),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
