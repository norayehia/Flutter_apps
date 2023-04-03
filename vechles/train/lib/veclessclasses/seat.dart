// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Seat {
  String type;
  int price;
  Seat({
    required this.type,
    required this.price,
  });

  void bookseat() {}
}
