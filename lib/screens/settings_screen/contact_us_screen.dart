
import 'package:flutter/material.dart';
import 'package:rolan_fashion/widgets/app_text_field.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {

  late TextEditingController _subjectTextController;
  late TextEditingController _messagTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _subjectTextController = TextEditingController();
    _messagTextController = TextEditingController();}
  @override
  void dispose() {
    // TODO: implement dispose
    _subjectTextController.dispose();
    _messagTextController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xFFD32F2F),

        title:Text('Contact us'),
        centerTitle: true,
      ),
      body: ListView(

        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
        children: [
          AppTextField(controller: _subjectTextController, prefixIcon: Icons.subject, hint: 'Enter Subject',prefixColor: Colors.lightBlueAccent,),
          SizedBox(height: 10,),
          AppTextField(controller: _messagTextController, prefixIcon: Icons.message, hint: 'Enter Your Message',prefixColor: Colors.lightBlueAccent,),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){},
            child:  const Text('Send'),
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
      ),
    );
  }

}
