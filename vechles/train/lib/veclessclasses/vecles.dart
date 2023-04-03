import 'package:train/veclessclasses/seat.dart';

abstract class Vehicles {
  String id;
  //list not arry you can add with any types generic
  List<Seat> seats;
  //constructor
  Vehicles({
    required this.id,
    required this.seats,
  });
}
