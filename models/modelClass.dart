class CatalogModel {
  static final items = [
  Item(1, 'ahmad', 'hi thi is me', '#33505a', 999, 'https://priceoye.pk/mobiles/apple/apple-iphone-12-pro-max'),
  Item(1, 'ahmad', 'hi thi is me', '#33505a', 999, 'https://priceoye.pk/mobiles/apple/apple-iphone-12-pro-max'),
  Item(1, 'ahmad', 'hi thi is me', '#33505a', 999, 'https://priceoye.pk/mobiles/apple/apple-iphone-12-pro-max'),
  Item(1, 'ahmad', 'hi thi is me', '#33505a', 999, 'https://priceoye.pk/mobiles/apple/apple-iphone-12-pro-max'),

  ];
}


class Item{
  final int id;
  final String name;
  final String desc;
  final String color;
  final int price;
  final String image;

  Item(this.id, this.name, this.desc, this.color, this.price, this.image);
}