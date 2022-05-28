import 'package:pap_projeto/Cliente/Interface_Ementa/Ementa/lib/src/model/bottom_navy_bar_item.dart';
import 'package:pap_projeto/Cliente/Interface_Ementa/Ementa/lib/src/model/product.dart';
import 'package:pap_projeto/Cliente/Interface_Ementa/Ementa/lib/src/model/product_category.dart';
import 'package:pap_projeto/Cliente/Interface_Ementa/Ementa/lib/src/model/product_size_type.dart';
import 'package:pap_projeto/Cliente/Interface_Ementa/Ementa/lib/src/model/recommended_product.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../src/model/categorical.dart';
import '../src/model/numerical.dart';

class AppData {
  static List<Product> products = [
    Product(
        name: 'Cappuccino',
        price: 1,
        about:
            'Cappuccino de Caramelo',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'assets/images/Ementa/capp.jpg',
          'assets/images/Ementa/capp.jpg',
          'assets/images/Ementa/capp.jpg',
        ],
        isLiked: true,
        rating: 1,
        type: ProductType.cafe),
    Product(
        name: 'Café Curto',
        price: 1,
        about:
            'Café Curto / Nespresso',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'assets/images/Ementa/cafe.png',
          'assets/images/Ementa/cafe.png',
          'assets/images/Ementa/cafe.png',
        ],
        isLiked: false,
        rating: 4,
        type: ProductType.cafe),
    Product(
        name: 'Sandes de Delícias',
        price: 1,
        about:
            '',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'assets/images/Ementa/sandes_delicias.jpg',
          'assets/images/Ementa/sandes_delicias.jpg',
          'assets/images/Ementa/sandes_delicias.jpg',
        ],
        isLiked: false,
        rating: 3,
        type: ProductType.snacks),
    Product(
        name: 'Tosta Atum',
        price: 3,
        about:
            'Atum não existe em stock, é só pão!',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'assets/images/Ementa/tosta_atum.jpg',
          'assets/images/Ementa/tosta_atum.jpg',
          'assets/images/Ementa/tosta_atum.jpg',
        ],
        isLiked: false,
        rating: 5,
        type: ProductType.snacks),
    Product(
        name: 'IceTea de Manga',
        price: 1,
        about:
            'Fresquinho é que é bom',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'assets/images/Ementa/icetea_manga.jpeg',
          'assets/images/Ementa/icetea_manga.jpeg',
          'assets/images/Ementa/icetea_manga.jpeg',
        ],
        isLiked: false,
        rating: 4,
        type: ProductType.bebidas),
    Product(
        name: 'Sagres',
        price: 1,
        about:
            'Sagres Mini sempre fresquinha!',
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'assets/images/Ementa/sagres.jpg',
          'assets/images/Ementa/sagres.jpg',
          'assets/images/Ementa/sagres.jpg',
          'assets/images/Ementa/sagres.jpg',
        ],
        isLiked: false,
        rating: 2,
        type: ProductType.bebidas),
  ];

  static List<ProductCategory> categories = [
    ProductCategory(ProductType.all, true, Icons.fastfood_rounded),
    ProductCategory(ProductType.snacks, false, Icons.cake_rounded),
    ProductCategory(ProductType.snacks, false, Icons.fastfood_rounded),
    ProductCategory(ProductType.bebidas, false, Icons.fastfood_rounded),
    ProductCategory(ProductType.cafe, false, Icons.fastfood_rounded),
    ProductCategory(ProductType.cafe, false, Icons.local_drink_rounded),
  ];

  static List<Color> randomColors = [
    const Color(0xFFFCE4EC),
    const Color(0xFFF3E5F5),
    const Color(0xFFEDE7F6),
    const Color(0xFFE3F2FD),
    const Color(0xFFE0F2F1),
    const Color(0xFFF1F8E9),
    const Color(0xFFFFF8E1),
    const Color(0xFFECEFF1),
  ];

  static List<BottomNavyBarItem> bottomNavyBarItems = [
    BottomNavyBarItem(
        "Home", const Icon(Icons.home), const Color(0xFFEC6813), Colors.grey),
    BottomNavyBarItem("Favorite", const Icon(Icons.favorite),
        const Color(0xFFEC6813), Colors.grey),
    BottomNavyBarItem("Cart", const Icon(Icons.shopping_cart),
        const Color(0xFFEC6813), Colors.grey),
    BottomNavyBarItem("Profile", const Icon(Icons.person),
        const Color(0xFFEC6813), Colors.grey),
  ];

  static List<RecommendedProduct> recommendedProducts = [
    RecommendedProduct(
        imagePath: "", cardBackgroundColor: const Color(0xFFEC6813)),
    RecommendedProduct(
        imagePath: "",
        cardBackgroundColor: const Color(0xFF3081E1),
        buttonBackgroundColor: const Color(0xFF9C46FF),
        buttonTextColor: Colors.white),
  ];
}
