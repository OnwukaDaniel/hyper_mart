class ProductModel {
  String img;
  String name;
  int price;
  double rating;
  bool hasOff;

  ProductModel({
    required this.img,
    required this.name,
    required this.price,
    required this.rating,
    this.hasOff = false,
  });
}
