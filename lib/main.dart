import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rolan_fashion/screens/auth/activate_screen.dart';
import 'package:rolan_fashion/screens/auth/login_screen.dart';
import 'package:rolan_fashion/screens/auth/password/forget_password_screen.dart';
import 'package:rolan_fashion/screens/auth/password/reset_password_screen.dart';
import 'package:rolan_fashion/screens/auth/register_screen.dart';
import 'package:rolan_fashion/screens/bn_screens/categories_screen.dart';
import 'package:rolan_fashion/screens/lunch_screen.dart';
import 'package:rolan_fashion/screens/main_screen.dart';
import 'package:rolan_fashion/screens/out_boarding_screen.dart';
import 'package:rolan_fashion/screens/product_details.dart';
import 'package:rolan_fashion/screens/settings_screen/about_screen.dart';
import 'package:rolan_fashion/screens/settings_screen/change_password.dart';
import 'package:rolan_fashion/screens/settings_screen/contact_us_screen.dart';
import 'package:rolan_fashion/screens/settings_screen/edit_screen.dart';
import 'package:rolan_fashion/screens/settings_screen/faqs_screen.dart';
import 'package:rolan_fashion/screens/settings_screen/language_screen.dart';
import 'package:rolan_fashion/screens/settings_screen/profile_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(375, 812),
      builder:(context , child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/lunch_screen',
          routes: {
            '/lunch_screen':(context)=>LunchScreen(),
            '/login_screen':(context)=> const LoginScreen(),
            '/register_screen':(context)=> const RegisterScreen(),
            '/activate_screen':(context)=> const ActivateScreen(),
            '/froget_password_screen':(context)=> const ForgetPasswordScreen(),
            '/out_boarding_screen':(context)=> const OutBoardingScreen(),
            '/reset_password_screen':(context)=> const ResetPassword(),
            '/main_screen':(context)=> const MainScreen(),
            '/categories_screen':(context)=> const CategoriesScreen(),
            '/product_details':(context)=> const ProductDetails(),

            '/language_screen':(context)=> const LanguageScreen(),
            '/profile_screen':(context)=> const EditProfileScreen(),
            '/edit_screen':(context)=> const EditScreen(),
            '/change_password_screen':(context)=> const ChangePassword(),
            '/faqs_screen':(context)=> const FaqsScreen(),
            '/contact_us_screen':(context)=> const ContactUsScreen(),
            '/about_screen':(context)=> const AboutScreen(),

          },
        );
      },

    );
  }
}
