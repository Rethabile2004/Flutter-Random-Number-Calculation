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

class NumbersDetails extends StatefulWidget {
  const NumbersDetails({super.key});

  @override
  State<NumbersDetails> createState() => _NumbersDetailsState();
}

class _NumbersDetailsState extends State<NumbersDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Selector<RandomViewModel, int>(
              selector: (context, viewModel) => viewModel.randomNumber1,
              builder: (context, value, child) {
                return Text('Random number 1 : $value',
                    style: const TextStyle(fontSize: 18));
              },
            ),
            const SizedBox(height: 25),
            Selector<RandomViewModel, int>(
              selector: (context, viewModel) => viewModel.randomNumber2,
              builder: (context, value, child) {
                return Text('Random number 2 : $value',
                    style: const TextStyle(fontSize: 18));
              },
            ),
            const SizedBox(height: 25),
            Selector<RandomViewModel, int>(
              selector: (context, viewModel) => viewModel.result,
              builder: (context, value, child) {
                return Text('Result = $value',
                    style: const TextStyle(fontSize: 30));
              },
            ),
      ],
    );
  }
}