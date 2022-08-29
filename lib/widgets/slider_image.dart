import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rolan_fashion/widgets/out_boarding_content_slider.dart';

class SliderImageWidget extends StatefulWidget {
  const SliderImageWidget({Key? key,
  }) : super(key: key);




  @override
  State<SliderImageWidget> createState() => _SliderImageWidgetState();
}

class _SliderImageWidgetState extends State<SliderImageWidget> {
  int _currentPage=0;
  late PageController _pageController;

  @override
  void initState(){
    super.initState();
    _pageController=PageController();
  }
  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth:10,
              maxWidth:double.infinity,
              minHeight:0,
              maxHeight: 200,
            ),

            child: Stack(
              children:[
                PageView(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value){

                    setState((){
                      _currentPage=value;
                    });

                  },
                  children:  [
                    OutBoardingContentSlider(
                      Imagename:'https://media.glamour.com/photos/61537feb4b9f0ff788c3b89e/master/w_1600,c_limit/1342598222',
                    ),
                    OutBoardingContentSlider(
                      Imagename:'http://profession.tmooh-dev.com/storage/images/categories/1653567511_category_image.jpg',
                    ),
                    OutBoardingContentSlider(
                      Imagename: 'http://profession.tmooh-dev.com/storage/images/categories/1653571647_category_image.jpg',
                    ),


                  ],
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        IconButton(
                            color: _currentPage==0? Colors.grey : Color(0xFFD32F2F),
                            onPressed: (){
                              _pageController.previousPage(duration: const Duration(seconds:1), curve:Curves.easeInOut );
                            },
                            icon: const Icon(Icons.arrow_back_ios)),

                        Visibility(
                          visible: _currentPage<4,
                          maintainAnimation: true,
                          maintainSize: true,
                          maintainState: true,
                          child: IconButton(
                            color:Color(0xFFD32F2F),
                            onPressed:(){
                              _pageController.nextPage(duration: const Duration(seconds:1), curve: Curves.easeIn);

                            },
                            icon:const Icon(Icons.arrow_forward_ios),
                          ),
                        )
                      ]
                  ),
                ),



              ]
            ),
          ),




        ]
    );
  }
}
