import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cv/converter/converter_view_model.dart';
import 'package:go_router/go_router.dart';

class Converter extends StatelessWidget {
  const Converter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.go('/');
          },
          icon: const Icon(
            Icons.navigate_before,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        title: const Text(
          'Converter',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ChangeNotifierProvider(
        create: (context) => ConverterViewModel(),
        child: Consumer<ConverterViewModel>(
          builder: (context, viewModel, child) {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Vitesse"),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 150,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: viewModel.meter,
                          decoration: const InputDecoration(labelText: 'Meter'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 150,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: viewModel.secondes,
                          decoration:
                              const InputDecoration(labelText: 'Seconds'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                          "Result: ${viewModel.result.toStringAsFixed(2)} km/h"),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
