import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rolan_fashion/widgets/out_boarding_content_slider.dart';

class SliderImageProduct extends StatefulWidget {
  const SliderImageProduct({Key? key,
  }) : super(key: key);




  @override
  State<SliderImageProduct> createState() => _SliderImageProductState();
}

class _SliderImageProductState extends State<SliderImageProduct> {
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
                        Imagename:'https://media.glamour.com/photos/61537feb4b9f0ff788c3b89e/master/w_1600,c_limit/1342598222',
                      ),
                      OutBoardingContentSlider(
                        Imagename: 'https://media.glamour.com/photos/61537feb4b9f0ff788c3b89e/master/w_1600,c_limit/1342598222',
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          IconButton(
                              color: _currentPage==0? Colors.grey : Color(0xFFFFDA1A),
                              onPressed: (){
                                _pageController.previousPage(duration: const Duration(seconds:1), curve:Curves.easeInOut );
                              },
                              icon: const Icon(Icons.arrow_back_ios)),

                          Visibility(
                            visible: _currentPage<2,
                            maintainAnimation: true,
                            maintainSize: true,
                            maintainState: true,
                            child: IconButton(
                              color:Color(0xFFFFDA1A),
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
