//
// Programmer               : Rethabile Eric Siase
// Time taken to complete   : 1 days
// Number of external help  : 0
// Complexity               : basic
// Purpose                  : Add or Subtract random numbers
//

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_calculator_application/viewmodels/random_view_models.dart';

class CalculationButtons extends StatefulWidget {
  const CalculationButtons({super.key});

  @override
  State<CalculationButtons> createState() => _CalculationButtonsState();
}

class _CalculationButtonsState extends State<CalculationButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Consumer<RandomViewModel>(builder: (context, viewModel, child) {
          return ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
              onPressed: () {
                viewModel.addRandomNumbers();
              },
              child: const Icon(Icons.add, color: Colors.white));
        }),
        Consumer<RandomViewModel>(builder: (context, viewModel, child) {
          return ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
              onPressed: () {
                viewModel.subtractRandomNumbers();
              },
              child: const Icon(Icons.remove, color: Colors.white));
        }),
      ],
    );
  }
}
