import 'package:train/veclessclasses/mix.dart';

import 'seat.dart';

class CarSeat extends Seat {
  CarSeat({required String type, required int price})
      : super(type: type, price: price);

  @override
  void bookseat() {
    print("book from car ");
  }
}
