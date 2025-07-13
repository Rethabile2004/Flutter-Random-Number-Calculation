//
// Programmer               : Rethabile Eric Siase
// Time taken to complete   : 1 days 
// Number of external help  : 0
// Complexity               : basic
// Purpose                  : Add or Subtract random numbers
//

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:random_number_calculator_application/models/random_model.dart';

//view_model class to connect the model with the view
class RandomViewModel with ChangeNotifier {
  RandomModel model =
      RandomModel(randomNumber1: 0, randomNumber2: 0, result: 0);
  int get randomNumber1 => model.randomNumber1;
  int get randomNumber2 => model.randomNumber2;
  int get result => model.result;

  //method for generating random numbers
  void generateRandomNumber() {
    model.randomNumber1 = Random().nextInt(100);
    model.randomNumber2 = Random().nextInt(100);
    notifyListeners();
  }

  //method for adding generated numbers
  void addRandomNumbers() {
    model.result = randomNumber1 + randomNumber2;
    notifyListeners();
  }

  //method for subtract generated numbers
  void subtractRandomNumbers() {
    model.result = randomNumber1 - randomNumber2;
    notifyListeners();
  }
}
