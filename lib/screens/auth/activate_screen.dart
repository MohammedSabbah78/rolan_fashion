import 'package:flutter/material.dart';
import 'package:rolan_fashion/widgets/app_text_field.dart';

class ActivateScreen extends StatefulWidget {
  const ActivateScreen({Key? key}) : super(key: key);

  @override
  _ActivateScreenState createState() => _ActivateScreenState();
}

class _ActivateScreenState extends State<ActivateScreen>{


  late TextEditingController _numberTextController;
  late TextEditingController _codeTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _numberTextController = TextEditingController();
    _codeTextController = TextEditingController();
  }


  @override
  void dispose() {
    // TODO: implement dispose
    _numberTextController.dispose();
    _codeTextController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          // title:  Text(AppLocalizations.of(context)!.login),
          title:  const Text('Activate'),
          backgroundColor: const Color(0xFFD32F2F),
        ),

//
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          children: [
            const SizedBox(height: 5,),
            //Text(AppLocalizations.of(context)!.welcome, style:
            const Text('Activate your account', style:

            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),textAlign: TextAlign.center,),
            // Text(AppLocalizations.of(context)!.start,
            const Text('Enter mobile & code',
                textAlign: TextAlign.center,
                style:
                TextStyle(
                  fontSize: 15,
                  color: Color(0xFFD32F2F),

                )),
            const SizedBox(height: 15),
            AppTextField(
              controller: _numberTextController,
              prefixIcon: Icons.phone,
              //  hint: AppLocalizations.of(context)!.fullName,
              hint: 'Mobile',
              type: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            AppTextField(
              controller: _codeTextController,
              prefixIcon: Icons.lock_open ,
              //  hint: AppLocalizations.of(context)!.password,
              hint: 'Code',
              obsecure: true,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){},
              //  child:  Text(AppLocalizations.of(context)!.login),
              child:  const Text('Activate'),


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



          ],
        )
    );
  }
}

