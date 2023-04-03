import 'package:train/veclessclasses/mix.dart';

import 'seat.dart';

class PlaneSeat1 extends Seat with behundwindow {
  PlaneSeat1({required String type, required int price})
      : super(type: type, price: price);

  @override
  void bookseat() {
    print("book from plain");
  }
}

class PlaneSeat2 extends Seat with nonwindow {
  PlaneSeat2({required String type, required int price})
      : super(type: type, price: price);

  @override
  void bookseat() {
    print("book from plain");
  }
}
