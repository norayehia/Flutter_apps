import 'dart:io';

import 'package:train/veclessclasses/seat.dart';
import 'package:train/veclessclasses/train.dart';

import 'package:train/veclessclasses/train.dart';
import 'package:train/veclessclasses/trainseat.dart';
import 'package:train/veclessclasses/vecles.dart';

extension on String {
  int parseInt() {
    return int.parse(this);
  }
}

//generator to get sequence of int num
Iterable norgenerator(int number) sync* {
  while (number >= 0) {
    // Checking for even number
    if (number % 2 == 0) {
      // 'yield' suspends
      // the function
      yield number;
    }

    // Decreasing the
    // variable geek
    number--;
  }
}

void main() {
  // Printing positive even numbers
  // from 10 in reverse order
  //norgenerator(10).forEach(print);
  /*
  print("getting iterable");
  Iterable sequence = norgenerator(10);
  print("start");
  for (int value in sequence) {
    var n = value;
    print(n);
  }
*/

  // Asking for price
  print("Enter your price number:");

  // Scanning number
  //int? n = int.parse(stdin.readLineSync()!);
  var n = (stdin.readLineSync()!).parseInt();

  final List<Seat> b = [
    TrainSeat(type: "yo", price: n),
    //TrainSeat(type: "ra", price: "70"),
  ];
//call methods or objects
//train with 2seats
  Train n1 = Train(id: 'lll', seats: b);
  //or call in polymorphsm refre object
  Vehicles nn = Train(id: "12", seats: []);

  print(n1.id);

  print(n1.createBookMessage());
}
