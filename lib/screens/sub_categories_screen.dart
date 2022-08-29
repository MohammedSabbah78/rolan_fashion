import 'package:flutter/material.dart';
import 'package:rolan_fashion/screens/tabs/products_screen.dart';
class SubCategoriesScreen extends StatefulWidget {
  const SubCategoriesScreen({Key? key,
  required this.categoryId,
  required this.subNum}) : super(key: key);
  final int categoryId;
  final int subNum;
  @override
  _SubCategoriesScreenState createState() => _SubCategoriesScreenState();
}

class _SubCategoriesScreenState extends State<SubCategoriesScreen>
    with SingleTickerProviderStateMixin {


  late TabController _tabController;
  late TextEditingController _searchtextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController( length:widget.subNum,vsync: this);
    _searchtextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    _searchtextController.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SubCategories'),
        centerTitle: true,
        backgroundColor: const  Color(0xFFFFDA1A),
      ),
        backgroundColor: Colors.lightBlue.shade50,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
          child: Column(
            children: [

              //AppTextField(
              //  controller: _searchtextController,
              //  prefixIcon: Icons.search,
              //  hint: 'Search for productsss',
              //  color: Color(0xFFFFDA1A),
              //  radius: 30,
              //  prefixColor: Color(0xFFFFDA1A),
              //  onChange: (value) {
              //    //_searchGetxController.changeSearchText(value);
              //  },
              //       ),
              const SizedBox(
                height: 10,
              ),
              TabBar(
                  isScrollable: true,
                  labelColor: Color(0xFFFFDA1A),
                  indicatorColor: Colors.pink.shade900,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  controller: _tabController,
                  tabs:
                  tabMaker()
              ),
              Expanded(
                child: TabBarView(
                  children:
                  tabBarView(),
                  controller: _tabController,
                ),
              )
            ],
          ),
        )
    );
  }
  List<Tab> tabMaker(){
    List<Tab> tabs = [];
    tabs.add(Tab(text: 'Name En'));
    tabs.add(Tab(text: 'Name En'));
    tabs.add(Tab(text: 'Name En'));
    tabs.add(Tab(text: 'Name En'));

    return tabs; //return the list
  }

 List<Widget> tabBarView() {
    List<Widget> tabsView = [];
    tabsView.add( ProductScreen(subCategoryId:1,));
      tabsView.add( ProductScreen(subCategoryId:2,));
    tabsView.add( ProductScreen(subCategoryId:3));
      tabsView.add( ProductScreen(subCategoryId:4,));
    return tabsView;

  }
}
