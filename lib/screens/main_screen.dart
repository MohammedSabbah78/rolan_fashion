import 'package:flutter/material.dart';
import 'package:rolan_fashion/models/bn_screen.dart';
import 'package:rolan_fashion/screens/bn_screens/categories_screen.dart';
import 'package:rolan_fashion/screens/bn_screens/favorite_screen.dart';
import 'package:rolan_fashion/screens/bn_screens/home_screen.dart';
import 'package:rolan_fashion/screens/bn_screens/profile_screen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, }) : super(key: key);


  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex=0;

  final List<BnScreen> _bnScreens=[
    BnScreen(title:'Home' ,bodyWidget: const HomeScreen()),
    BnScreen(title:'Profile' ,bodyWidget:const CategoriesScreen()),
    BnScreen(title:'Favorites' ,bodyWidget:const FavoriteScreen()),
    BnScreen(title:'Settings' ,bodyWidget:const ProfileScreen()),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      extendBodyBehindAppBar: true,
      body: _bnScreens[_currentIndex].bodyWidget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        currentIndex: _currentIndex,
        type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        selectedItemColor: const Color(0xFFD32F2F),
        selectedIconTheme: const IconThemeData(color: Color(0xFFD32F2F)),
        selectedFontSize: 14,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1.1),



        unselectedItemColor: Colors.grey,
        unselectedIconTheme:  IconThemeData(color:Colors.grey.shade800,
        ),
        unselectedFontSize: 14,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400,letterSpacing: 1),

        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home'),

          BottomNavigationBarItem(
            activeIcon:Icon(Icons.category),
            icon:Icon(Icons.category_outlined),
            label:'Categories',

          ),

          BottomNavigationBarItem(
            activeIcon:Icon(Icons.favorite),
            icon:Icon(Icons.favorite_outlined),
            //  size: 24
            label:'Favorites',
          ),

           BottomNavigationBarItem(
             activeIcon:Icon(Icons.settings),
             icon:Icon(Icons.settings_outlined),
             label:'Settings',

            )
        ],
      ),
    );
  }
}
