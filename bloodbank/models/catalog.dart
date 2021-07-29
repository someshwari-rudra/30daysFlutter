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
      id: "somya1",
      name: "iphone 12 pro",
      desc:
          "Apple iPhone 12 Pro Max pictures Released 2020, November 13 · 228g, 7.4mm thickness · iOS 14.1, up to iOS 14.7 · 128GB/256GB/512GB storage",
      price: 9999,
      color: "#33505a",
      image:
          "https://fdn2.gsmarena.com/vv/pics/apple/apple-iphone-12-pro-r1.jpg")
];
