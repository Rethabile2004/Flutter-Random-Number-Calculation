//
// Programmer               : Rethabile Eric Siase
// Time taken to complete   : 1 days 
// Number of external help  : 0
// Complexity               : basic
// Purpose                  : Add or Subtract random numbers
//


import 'package:flutter/material.dart';
import 'package:random_number_calculator_application/views/widgets/calculation_buttons.dart';
import 'package:random_number_calculator_application/views/widgets/generate_random.dart';
import 'package:random_number_calculator_application/views/widgets/numbers_detaild.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          automaticallyImplyLeading: false,
          title: const Text('Random Calculator Application',
              style: TextStyle(color: Colors.white),),),
      body: const Center(
        child: Column(
                children: [
                  SizedBox(height: 20),
                  Text('Welcome to the consultation home screen',
                      style: TextStyle(fontSize: 25)),
                  SizedBox(height: 25),
                  NumbersDetails(),// class to display the random numbers
                  SizedBox(height: 10),
                  GenerateRandomButton(), // class to display the elevated button that generates random numbers
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: EdgeInsets.all(18.0),
                      child: CalculationButtons(),// class to display the calculations button
                      )
                ],
              ),
      ),
    );
  }
}
