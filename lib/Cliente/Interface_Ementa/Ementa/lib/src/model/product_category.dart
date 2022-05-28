import 'package:pap_projeto/Cliente/Interface_Ementa/Ementa/lib/src/model/product.dart';
import 'package:flutter/material.dart';

class ProductCategory{
  ProductType type;
  bool isSelected;
  IconData icon;
  ProductCategory(this.type, this.isSelected, this.icon);
}
