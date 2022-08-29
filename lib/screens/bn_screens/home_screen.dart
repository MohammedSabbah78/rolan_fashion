import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rolan_fashion/widgets/categories_item.dart';
import 'package:rolan_fashion/widgets/product_item.dart';
import 'package:rolan_fashion/widgets/slider_image.dart';
import 'package:rolan_fashion/widgets/view_all_categories.dart';
import 'package:rolan_fashion/widgets/view_all_products.dart';
enum ProductType{latest,famous}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String image1='images/2.jpg';
  String image2='images/3.jpg';
  String image3='images/4.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'),
        centerTitle: true,
        backgroundColor:const  Color(0xFFD32F2F),
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),      ),
        body:Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                children: [
                  const SizedBox(height: 4,),
                  SliderImageWidget(),
                  view_all_categories(title: 'Categories', navigator: '/categories_screen',),
                  CategoryItem(),
                  const SizedBox(height: 10,),
                  view_all(title: 'Latest Products', navigator: '/products_screen',),
                  ProductItem(),
                  view_all(title: 'Famous Products', navigator: '/products_screen',),
                  ProductItem( )
                ])
        ));
    }
  }



