import 'package:train/veclessclasses/seat.dart';

import 'vecles.dart';

//extendes inhertance
class Car extends Vehicles {
  //add fun ction not in parent or attribtes
  List<String> services = List.empty();

  Car({required String id, required List<Seat> seats})
      : super(id: id, seats: seats);

  Future<String> fetchUserBook() =>
      // Imagine that this function is more complex and slow.
      Future.delayed(
        const Duration(seconds: 1),
        () => 'Book done now',
      );

  String createBookMessage() {
    var order = fetchUserBook();
    return 'Your order is: $order';
  }
}
