import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  CategoryItem({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/categories_screen');
              },
              child:
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Stack(
                  children:[
                    Container(
                      width:250,
                      child: Image.network('http://profession.tmooh-dev.com/storage/images/subCategories/1653569134_subCategory_image.jpg',
                        fit:BoxFit.cover ,
                        //height: double.infinity,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Container(
                          width:200,
                          padding: const EdgeInsets.symmetric(horizontal: 2,vertical:2),
                          //color: Colors.white54,
                          child:  Text('Category Name',
                            overflow: TextOverflow.clip
                            ,style: TextStyle(
                              color:Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),)
                      ),
                    ),],
                ),
              ),
            );
          }),
    );
  }
}
