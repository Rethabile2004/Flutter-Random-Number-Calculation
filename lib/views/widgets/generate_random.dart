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

class GenerateRandomButton extends StatefulWidget {
  const GenerateRandomButton({super.key});

  @override
  State<GenerateRandomButton> createState() => _GenerateRandomButtonState();
}

class _GenerateRandomButtonState extends State<GenerateRandomButton> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RandomViewModel>(
      builder: (context, viewModel, child) {
        return ElevatedButton(
          style:ElevatedButton.styleFrom(
            backgroundColor: Colors.blue
          ),
            onPressed: () {
              viewModel.generateRandomNumber();
            },
            child: const Text('Generate Random Numbers',style: TextStyle(color: Colors.white)));
      },
    );
  }
}
