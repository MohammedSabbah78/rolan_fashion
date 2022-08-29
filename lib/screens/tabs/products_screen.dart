import 'package:flutter/material.dart';

import '../../widgets/product_item_grid.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key,
  required this.subCategoryId}) : super(key: key);
  final int subCategoryId;
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return ProductItemGrid(fromeWhere: 'Grid',);









  }

}
