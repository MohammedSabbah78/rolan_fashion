import 'package:flutter/material.dart';
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title:const Text('Categories',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
          centerTitle: true,
          elevation: 0,
          backgroundColor:const  Color(0xFFD32F2F),
          shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 22
        ),),
      body:GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 7),
        itemCount:10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.5,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ), itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            // Navigator.push(context, MaterialPageRoute(
            //     builder: (BuildContext context)=> SubCategoriesScreen(
            //       categoryId: _categories[index].id,
            //       subNum: _categories[index].subCategoriesCount,
            //     )
            // )
            // );
          },
          child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(40)),),
              child:Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child:Stack(
                  children:[
                    Image.network('http://profession.tmooh-dev.com/storage/images/subCategories/1653569134_subCategory_image.jpg',
                      fit:BoxFit.fill ,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Container(
                        height: 19,
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        color: Colors.white54,
                        child:  Align(
                          alignment: AlignmentDirectional.center,
                          child: Text('Category Name',
                            overflow: TextOverflow.clip
                            ,style: const TextStyle(
                              color:Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),


                      ),


                    ),],
                ),)
          ),
        );

      },)
     );

       }
}
