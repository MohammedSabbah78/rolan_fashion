import 'package:flutter/material.dart';
import 'package:rolan_fashion/screens/home_products_screen.dart';

class view_all extends StatelessWidget {
   view_all({
    Key? key,
    required this.title,
    required this.navigator,
}) : super(key: key);
  final String title;
  final String navigator;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
      children: [
        const SizedBox(width: 10,),
         Text(title,style:
        TextStyle(
            fontSize:18,
            fontWeight: FontWeight.bold
        )),
        const Spacer(),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeProductsScreen(title:title)),
              );
            },
          child:Text('view all')
        )
      ],
    );
  }
}
