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
import 'package:random_number_calculator_application/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RandomViewModel(),
      child: const MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}