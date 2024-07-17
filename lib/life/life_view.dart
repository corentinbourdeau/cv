import 'dart:async';
import 'package:flutter/material.dart';

class LifeGame extends StatelessWidget {
  const LifeGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Jeu de la Vie',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const GameOfLife(),
      ),
    );
  }
}

class GameOfLife extends StatefulWidget {
  const GameOfLife({super.key});

  @override
  _GameOfLifeState createState() => _GameOfLifeState();
}

class _GameOfLifeState extends State<GameOfLife> {
  static const int rows = 40;
  static const int cols = 40;
  static int generation = 0;
  List<List<bool>> grid =
      List.generate(rows, (_) => List.generate(cols, (_) => false));
  Timer? timer;
  bool isRunning = false;

  void _startGame() {
    setState(() {
      isRunning = true;
    });
    timer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
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

  void _updateGrid() {
    List<List<bool>> newGrid =
        List.generate(rows, (_) => List.generate(cols, (_) => false));

    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < cols; col++) {
        int neighbors = _countNeighbors(row, col);
        if (grid[row][col]) {
          if (neighbors == 2 || neighbors == 3) {
            newGrid[row][col] = true;
          }
        } else {
          if (neighbors == 3) {
            newGrid[row][col] = true;
          }
        }
      }
    }

    grid = newGrid;
  }

  int _countNeighbors(int row, int col) {
    int count = 0;
    for (int i = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        if (i == 0 && j == 0) continue;
        int r = (row + i + rows) % rows;
        int c = (col + j + cols) % cols;
        if (grid[r][c]) {
          count++;
        }
      }
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Container(
              color: Colors.black,
              child: CustomPaint(
                size: const Size.square(800),
                painter: GridPainter(grid),
              ),
            ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _toggleCell(Offset position) {
    double cellSize = 800 / rows;
    int row = (position.dy / cellSize).floor();
    int col = (position.dx / cellSize).floor();

    if (row >= 0 && row < rows && col >= 0 && col < cols) {
      grid[row][col] = !grid[row][col];
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}

class GridPainter extends CustomPainter {
  final List<List<bool>> grid;

  GridPainter(this.grid);

  @override
  void paint(Canvas canvas, Size size) {
    double cellSize = size.width / grid.length;

    Paint paint = Paint()..style = PaintingStyle.fill;

    for (int row = 0; row < grid.length; row++) {
      for (int col = 0; col < grid[row].length; col++) {
        paint.color = grid[row][col] ? Colors.white : Colors.black;
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
