import 'package:flutter/material.dart';

import '../../widgets/app_text_field.dart';
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _nameTextController;
  late TextEditingController _mobileTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _cityIdTextController;



  String _gender='M';
  int dropdownValue=1 ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController=TextEditingController();
    _mobileTextController=TextEditingController();
    _passwordTextController=TextEditingController() ;
    _cityIdTextController=TextEditingController() ;
  }
  void onTap(){
    Navigator.pushNamed(context, '/register_screen');
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _nameTextController.dispose();
    _mobileTextController.dispose();
    _passwordTextController.dispose();
    _cityIdTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xFFD32F2F),
        title:const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: ListView(
    physics: const NeverScrollableScrollPhysics(),
    padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
    children: [
    const Text('Edit your account ...',style:
    TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    ),
    textAlign: TextAlign.center,),
    const Text('Enter details below',style:
    TextStyle(
    fontSize: 15,
    color: Color(0xFFD32F2F),
    ),
    textAlign: TextAlign.center,),
    const SizedBox(height:15),
    AppTextField(
    controller: _nameTextController,
    prefixIcon: Icons.person,
    hint: 'FullName',
    prefixColor: Color(0xFFD32F2F),
    ),
    const SizedBox(height:10),

    DropdownButton<int>(
    isExpanded: true,
    value: dropdownValue,
    elevation: 16,
    hint:const Text('Select City'),

    onChanged: (int? newValue) {
    print(dropdownValue);
    if(newValue!=null)
    setState(() {
    dropdownValue = newValue;
    });

    },
    items: []
    ),

    const SizedBox(height:10),
    Row(
    children:[
    Expanded(
    child:RadioListTile<String>(
    title: const Text('Male'),
    activeColor:const Color(0xFFD32F2F),
    value:'M',
    groupValue: _gender,
    onChanged: (String?value) {
    if(value !=null){
    setState((){
    _gender=value;
    });
    }
    },

    )
    ),

    Expanded(
    child:RadioListTile<String>(

    title: const Text('Female'),
    activeColor:const Color(0xFFD32F2F),
    value:'F',
    groupValue: _gender,
    onChanged: (String?value) {
    if(value !=null){
    setState((){
    _gender=value;
    });
    }
    },

    )
    ),

    ]

    ),
    ElevatedButton(
    onPressed: (){},
    child:const Text('EDIT'),
    style: ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: const Color(0xFFD32F2F),
    minimumSize: const Size(0,50),
    shape:RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    ),
    ),
    ),
    const SizedBox(height: 15,),


    ],
    )
    );


}
}
