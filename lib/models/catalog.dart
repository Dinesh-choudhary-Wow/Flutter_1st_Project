class CatelogModel {
  static final items = [
    Item(
        id: 1,
        name: "Shirt",
        desc: "Slim Shirt(full Sleeves)",
        price: 599,
        color: "green",
        image: "assets/images/shirt01.jpg")
  ];
}

class Item {
  final int id;
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
