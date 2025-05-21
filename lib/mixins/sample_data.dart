import 'package:untitled/imports.dart';

mixin SampleData {
  List<CategoryModel> sampleCategories = [
    CategoryModel(
      img: 'assets/cat_groceries.svg',
      color: Color(0xff4ab7b6),
      name: 'Groceries',
    ),
    CategoryModel(
      img: 'assets/cat_appliances.svg',
      color: Color(0xff4B9DCB),
      name: 'Appliances',
    ),
    CategoryModel(
      img: 'assets/cat_fashion.svg',
      color: Color(0xffAF558B),
      name: 'Fashion',
    ),
    CategoryModel(
      img: 'assets/cat_furniture.svg',
      color: Color(0xffA187D9),
      name: 'Furniture',
    ),
  ];

  List<ProductModel> productList = [
    ProductModel(
      img: 'assets/strawberry.png',
      name: 'Strawberries',
      price: 10,
      rating: 4.5,
      hasOff: true,
    ),
    ProductModel(
      img: 'assets/pineapples.png',
      name: 'Fried Chips',
      price: 11,
      rating: 4.8,
    ),
    ProductModel(
      img: 'assets/chair.png',
      name: 'Moder Chair',
      price: 3599,
      rating: 4.8,
    ),
    ProductModel(
      img: 'assets/washing_machine.png',
      name: 'LG washing machine',
      price: 10,
      rating: 4.5,
    ),
  ];
}
