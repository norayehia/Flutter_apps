import 'package:train/veclessclasses/seat.dart';

class TrainSeat extends Seat {
  TrainSeat({required String type, required int price})
      : super(type: type, price: price);

//polymorph>ovride method
  @override
  void bookseat() {
    print("book from train");
  }
}
