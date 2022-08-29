import 'package:flutter/material.dart';
import 'package:rolan_fashion/screens/product_details.dart';
class ProductItemGrid extends StatefulWidget{
  ProductItemGrid({
    Key? key,
    required  this.fromeWhere

  }) : super(key: key);
  final String fromeWhere;

  @override
  State<ProductItemGrid> createState() => _ProductItemGridState();
}

class _ProductItemGridState extends State<ProductItemGrid> {

  @override
  Widget build(BuildContext context) {

        return GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               childAspectRatio: 0.82,
               mainAxisSpacing: 10,
               crossAxisSpacing: 10,

             ),
            itemCount:10,

          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                print('on tap');
                 Navigator.push(context,MaterialPageRoute(
                   builder: (context)=>ProductDetails()
                 ));
              },
              child: Container(
                  height: 186,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey.shade50,

                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 129,
                        width: 162,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.network('',
                            fit: BoxFit.cover,
                            isAntiAlias: true,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(width: 2),
                          SizedBox(
                            height: 30,
                            width: 120,
                            child: Text('Name EN',
                                overflow: TextOverflow.clip,
                                style: const TextStyle(
                                  fontSize: 13,
                                )),
                          ),
                          const Spacer(),
                          const Icon(Icons.star, color: Color(0xFFFFDA1A)),
                          Text('4.9'),
                          const SizedBox(width: 2),

                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const SizedBox(width: 2),
                          Text('234\$',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold)),
                          const Spacer(),
                          CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.grey.shade400,
                              child: IconButton(
                                onPressed:() {} ,
                                icon:Icon(Icons.favorite),
                               color:Colors.red,
                              )),
                          const SizedBox(width: 2),

                        ],
                      )


                      //  ),
                    ],
                  )
              ),
            );
          }
          );

  }
}
