import 'package:flutter/material.dart';
import 'package:rolan_fashion/widgets/app_text_field.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword>{
  late TextEditingController _oldPassTextController;
  late TextEditingController _newpasswordTextController;
  late TextEditingController _newpasswordConfirmTextController;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _oldPassTextController = TextEditingController();
    _newpasswordTextController = TextEditingController();
    _newpasswordConfirmTextController = TextEditingController();

  }


  @override
  void dispose() {
    // TODO: implement dispose
    _oldPassTextController.dispose();
    _newpasswordTextController.dispose();
    _newpasswordConfirmTextController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD32F2F),
        title: Text('Change Password'),
        centerTitle: true,
      ),

      body:ListView(
        padding:EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          SizedBox(height: 10,),
          Text('Enter Details Below',style:TextStyle(fontSize: 18),textAlign: TextAlign.center,),
          SizedBox(height: 10,),
          AppTextField(controller: _oldPassTextController, prefixIcon: Icons.lock, hint: "Enter your old password",obsecure: true,prefixColor:Colors.lightBlueAccent,),
          SizedBox(height: 10,),
          AppTextField(controller: _newpasswordTextController, prefixIcon: Icons.lock, hint: 'Enter new password',obsecure: true,prefixColor: Colors.lightBlueAccent,),
          SizedBox(height: 10,),
          AppTextField(controller: _newpasswordConfirmTextController, prefixIcon: Icons.lock, hint: 'Confirm new password',obsecure: true,prefixColor:Colors.lightBlueAccent ,),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){},
            //  child:  Text(AppLocalizations.of(context)!.login),
            child:  const Text('Change'),


            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
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
