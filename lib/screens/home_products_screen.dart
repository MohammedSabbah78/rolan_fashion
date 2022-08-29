import 'package:flutter/material.dart';
class HomeProductsScreen extends StatefulWidget {
  const HomeProductsScreen({Key? key,
  required this.title}) : super(key: key);

  final String title;

  @override
  _HomeProductsScreenState createState() => _HomeProductsScreenState();
}

class _HomeProductsScreenState extends State<HomeProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor:Color(0xFFD32F2F),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
   body: GridView.builder(
         padding: const EdgeInsets.all(2),
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           childAspectRatio: .88,
           crossAxisSpacing: 8,
           mainAxisSpacing: 10,
         ),
         itemCount:10,
         itemBuilder: (context, index) {
           return  Container(
               height: 186,
               width: 160,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: Colors.blueGrey.shade50,

               ),
               child:Column(
                 children: [
                   Container(
                     height: 125,
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
                       Text('4.7'),
                       const SizedBox(width:2),

                     ],
                   ),
                   const SizedBox(height: 10,),
                   Row(
                     children:  [
                       const SizedBox(width:2),
                       Text('92\$',style:const TextStyle(
                           fontWeight: FontWeight.bold)),
                       const Spacer(),
               CircleAvatar(
                   radius: 16,
                   backgroundColor: Colors.grey.shade400,
                   child: IconButton(
                     onPressed:() {} ,
                     icon:Icon(Icons.favorite),
                     color:Color(0xFFD32F2F),
                   )),
                       const SizedBox(width:2),

                     ],
                   )



                   //  ),
                 ],
               )
           );
         }



     ),

    );
  }

}
