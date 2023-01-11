class ShoppProduct {
  final String id;
  final String title;
  final double price;
  final String image;
  bool isFavorite;

  ShoppProduct(
      {required this.id,
      required this.title,
      required this.price,
      required this.image,
      this.isFavorite = false});
}
