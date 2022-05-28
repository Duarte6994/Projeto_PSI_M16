import 'package:pap_projeto/Cliente/Interface_Ementa/Ementa/lib/src/model/product_size_type.dart';

enum ProductType { all,snacks, bebidas, bolos, cafe,petiscos}

class Product {
  String name;
  int price;
  int? off;
  String about;
  bool isAvailable;
  ProductSizeType? sizes;
  int quantity;
  List<String> images;
  bool isLiked;
  double rating;
  ProductType type;

  Product(
      {required this.name,
      required this.price,
      required this.about,
      required this.isAvailable,
      this.sizes,
      required this.off,
      required this.quantity,
      required this.images,
      required this.isLiked,
      required this.rating,
      required this.type});
}
