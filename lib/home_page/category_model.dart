class CategoryModel {
  String? pic;
  String? name;
  double? price;
  String? dis;

  CategoryModel({this.pic, this.name, this.price, this.dis});
}

List<CategoryModel> categoryData = [
  CategoryModel(
    pic: "assets/pic4.jpeg",
    name: "Iphone14",
    price: 200000,
  ),
  CategoryModel(
    pic: "assets/pic5.jpeg",
    name: "CaverIphone",
    price: 2500000,
  ),
  CategoryModel(
    pic: "assets/pic2.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
  CategoryModel(
    pic: "assets/pic2.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
  CategoryModel(
    pic: "assets/pic1.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
  CategoryModel(
    pic: "assets/pic3.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
  CategoryModel(
    pic: "assets/pic1.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
];

List<CategoryModel> productData = [
  CategoryModel(price: 3000, pic: "assets/pic3.jpeg", name: "phone"),
  CategoryModel(
      price: 400,
      pic: "assets/pic3.jpeg",
      name: "cover",
      dis: "hello my new phone "),
  CategoryModel(
    price: 3600,
    pic: "assets/pic3.jpeg",
  ),
  CategoryModel(
    pic: "assets/pic1.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
  CategoryModel(
    pic: "assets/pic2.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
  CategoryModel(
    pic: "assets/pic1.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
  CategoryModel(
    pic: "assets/pic3.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
  CategoryModel(
    pic: "assets/pic1.jpeg",
    name: "Iphone12",
    price: 50000,
  ),
];
