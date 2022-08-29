import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rolan_fashion/widgets/app_text_field.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController _numberTextController;
  late TextEditingController _passwordTextController;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _numberTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = onTap;
  }

  void onTap() {
    Navigator.pushNamed(context, '/register_screen');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _numberTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          // title:  Text(AppLocalizations.of(context)!.login),
          title:  const Text('LOGIN'),
          backgroundColor: const Color(0xFFD32F2F),),

        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          children: [
            const SizedBox(height: 5,),
            const Text('Welcome Back', style:

             TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),textAlign: TextAlign.center,),
            const Text('Find Your Fashion!',
                textAlign: TextAlign.center,
                style:
                TextStyle(
                  fontSize: 15,
                  color: Color(0xFFD32F2F),

                )),
            const SizedBox(height: 15),
            AppTextField(
              controller: _numberTextController,
              prefixIcon: Icons.person,
              hint: 'FullName',
              type: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            AppTextField(
              controller: _passwordTextController,
              prefixIcon: Icons.lock,
              hint: 'Password',
              obsecure: true,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/main_screen');
              },
              child:  const Text('LOGIN'),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: const Color(0xFFD32F2F),
                minimumSize: const Size(0, 50),
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  //    text: AppLocalizations.of(context)!.haveAccount,
                    text: 'Don\'t have an account',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    children: [
                      const TextSpan(text: ' '),
                      TextSpan(
                          text: ' Create now',
                          style: const TextStyle(color: Colors.lightBlueAccent),
                          recognizer: _tapGestureRecognizer
                      )
                    ]
                )),
            TextButton(
                onPressed:()=>Navigator.pushNamed(context,'/froget_password_screen') ,
                child: const Text('Forget Password?')
            )

          ],
        )
    );
  }


}