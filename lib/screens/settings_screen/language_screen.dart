import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int? _selectedLang;
  String dropdownValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD32F2F),
        title: Text('Language'),
        centerTitle: true,
      ),

      body: Padding(
         padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: DropdownButton<String>(
          isExpanded: true,
          value: dropdownValue,
          elevation: 16,
          onChanged: (String? newValue) {
            if(newValue!=null)
          setState(() {
          dropdownValue = newValue;
          });
          },
          items: <String>['English', 'Arabic']
          .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
    ),
      )
    );
  }
}
