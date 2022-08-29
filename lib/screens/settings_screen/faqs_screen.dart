import 'package:flutter/material.dart';
import 'package:rolan_fashion/widgets/question_answer.dart';
class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  _FaqsScreenState createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController( length:1,vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title:Text('FAQs'),
      backgroundColor: Color(0xFFD32F2F),
      centerTitle: true,
      bottom: TabBar(
        indicatorColor: Colors.lightBlueAccent,
labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
        controller: _tabController,
        tabs: [
          Tab(text: 'Questions & Answers',),
        ],


      ),
      ),
      body:getTabBarView()

    );
  }


  Widget getTabBarView(){
    return TabBarView(
        children: [
        QuestionAnswer(),
    ],

    controller: _tabController,);
  }

}
