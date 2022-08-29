import 'package:flutter/material.dart';
class ProductItem extends StatefulWidget {
   ProductItem({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 200,
        width: 120,
        child: ListView.separated(
            padding: const EdgeInsets.all(2),
            separatorBuilder: (context,index){
              return const SizedBox(width: 4,);
            },
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return  InkWell(
                onTap: (){
                  Navigator.pushNamed(context,'/product_details');
                },
                child: Container(
                    height: 186,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey.shade50,

                    ),
                    child:Column(
                      children: [
                        Container(
                          height: 130,
                          width: 160,
                          child: Card(
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.network('https://www.chanel.com/i18n/en_CA/slides/1600_hautecouture.jpg',
                              fit: BoxFit.cover,
                              isAntiAlias: true,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const SizedBox(width:2),
                            SizedBox(
                              height: 30,
                              width: 120,
                              child: Text('Product Name',
                                  overflow: TextOverflow.clip,
                                  style:const TextStyle(
                                    fontSize: 13,
                                  )),
                            ),
                            // const Spacer(),
                            const Icon(Icons.star,color: Color(0xFFFFDA1A)),
                            Text('4'),
                            const SizedBox(width:1),

                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                            children:  [
                              const SizedBox(width:2),
                              Text('242\$',style:const TextStyle(
                                  fontWeight: FontWeight.bold)),
                              const Spacer(),
                              CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.grey.shade400,
                                  child: IconButton(
                                    onPressed:() { } ,
                                    icon:Icon(Icons.favorite),
                                    color:Color(0xFFD32F2F),
                                  )),
                              const SizedBox(width: 2),




                            ] ),
                      ],
                    )
                ),
              );
            }





        )
    );
  }

}
