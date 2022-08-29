import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key,}) : super(key: key);
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorites'),
        centerTitle: true,
        backgroundColor:const  Color(0xFFD32F2F),
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),      ),
      body:GridView.builder(
        padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10) ,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,

        ),
        itemCount:10,
        itemBuilder: (context, index){

          return InkWell(
            onTap: (){
            },
            child:  Container(
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
                        child: Image.network('http://profession.tmooh-dev.com/storage/images/subCategories/1653573917_subCategory_image.jpg',
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
                        const Spacer(),
                        const Icon(Icons.star,color: Color(0xFFFFDA1A)),
                        Text('4.5'),
                        const SizedBox(width:2),

                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children:  [
                        const SizedBox(width:2),
                        Text('50\$',style:const TextStyle(
                            fontWeight: FontWeight.bold)),
                        const Spacer(),
                        CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.grey.shade400,
                            child: const Icon(
                                Icons.favorite,
                            color:Color(0xFFD32F2F))),
                        const SizedBox(width:2),

                      ],
                    )



                    //  ),
                  ],
                )
            ),
          );

        },) );
  }
}

