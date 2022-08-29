import 'package:flutter/material.dart';
import 'package:rolan_fashion/screens/auth/password/reset_password_screen.dart';
import 'package:rolan_fashion/widgets/app_text_field.dart';
class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {

  late TextEditingController _mobileTextController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mobileTextController = TextEditingController();

  }


  @override
  void dispose() {
    // TODO: implement dispose
    _mobileTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Forget Password'),
          centerTitle: true,
          backgroundColor:const Color(0xFFD32F2F),
        ),
        body: ListView(

          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Text('Enter Mobile', style:
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
            const Text('Reset code will be sent', style:
            TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )),
            const SizedBox(height: 15),
            AppTextField(
              controller: _mobileTextController,
              prefixIcon: Icons.phone,
              hint: 'Mobile',
              type: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context,'/reset_password_screen');
              },
              child: const Text('SEND'),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFD32F2F),
                minimumSize: const Size(0, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),



          ],
        )
    );
  }




}