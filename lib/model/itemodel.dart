class ItemModel {
  static List<Item> items = [
    Item(
        name: "Peace Skull Shirt",
        price: 999,
        color: "Black - L",
        image:
            "https://cdn.dxomark.com/wp-content/uploads/medias/post-80694/Apple-iPhone-12-Pro-Max-featured-image-packshot-review.jpg"),
    Item(
        name: "Beach Sweater",
        price: 89,
        color: "Green - S",
        image:
            "https://cdn.dxomark.com/wp-content/uploads/medias/post-80694/Apple-iPhone-12-Pro-Max-featured-image-packshot-review.jpg"),
    Item(
        name: "Hoodie",
        price: 700,
        color: "Pink - XL",
        image:
            "https://cdn.dxomark.com/wp-content/uploads/medias/post-80694/Apple-iPhone-12-Pro-Max-featured-image-packshot-review.jpg"),
    Item(
        name: "Simple Hoodie",
        price: 999,
        color: "Black - L",
        image:
            "https://cdn.dxomark.com/wp-content/uploads/medias/post-80694/Apple-iPhone-12-Pro-Max-featured-image-packshot-review.jpg")
  ];
}

class Item {
  final String name;

  final num price;
  final String color;

  final String image;

  Item({
    required this.name,
    required this.price,
    required this.color,
    required this.image,
  });
}
