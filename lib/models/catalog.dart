class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "Shirt01",
      name: "Shirt",
      desc: "Slim Shirt(full Sleeves)",
      price: 599,
      color: "green",
      image: "assets/images/shirt01.jpg")
];
