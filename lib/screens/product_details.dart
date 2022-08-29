import 'package:flutter/material.dart';
import 'package:rolan_fashion/widgets/slider-image_product.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key,
}) : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor:const  Color(0xFFD32F2F),
         title:Text('Product Details',style:TextStyle(
           fontWeight: FontWeight.bold,
           color:Colors.lightBlue
         )),
         centerTitle: true,
         shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
       ),
        backgroundColor: Colors.lightBlue.shade50,
        body:ListView(
          children: [
            SliderImageProduct(),
            SizedBox(height: 20,),
            Card(
                elevation: 5,
                color: Color(0xFFD32F2F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child:SizedBox(
                    width: 353,
                    height: 300,
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          SizedBox(height: 20,),
                          Row(
                              children:[
                                Text('Name En',style:TextStyle(
                                  fontSize: 19,
                                  color: Colors.lightBlue,
                                ),
                                  overflow: TextOverflow.clip,
                                ),
                                const Spacer(),
                                const Icon(Icons.star,color: Color(0xFFFFDA1A)),
                                Text('2.5'),
                                const SizedBox(width:2),
                              ]
                          ),
                          SizedBox(height: 10,),
                          Text('Info Info Info  InfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfo InfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfoInfo',
                            overflow: TextOverflow.clip,
                          )
                        ],
                      ),
                    )

                )


            )],
        )
     );
  }
}
