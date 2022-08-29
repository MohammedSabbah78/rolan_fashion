import 'package:flutter/material.dart';
import 'package:rolan_fashion/widgets/app_text_field.dart';
import 'package:rolan_fashion/widgets/code_text_field.dart';
class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword>{

  late TextEditingController _newPasswordTextController;
  late TextEditingController _newPasswordConfirmationTextController;

  late TextEditingController _firsCodeTextController;
  late TextEditingController _secondCodeTextController;
  late TextEditingController _thirdCodeTextController;
  late TextEditingController _fourthCodeTextController;

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;

  late String _code;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _newPasswordTextController = TextEditingController();
    _newPasswordConfirmationTextController=TextEditingController();

    _firsCodeTextController=TextEditingController();
    _secondCodeTextController=TextEditingController();
    _thirdCodeTextController=TextEditingController();
    _fourthCodeTextController=TextEditingController();

    _firstFocusNode=FocusNode();
    _secondFocusNode=FocusNode();
    _thirdFocusNode=FocusNode();
    _fourthFocusNode=FocusNode();


  }


  @override
  void dispose() {
    // TODO: implement dispose
    _newPasswordTextController.dispose();
    _newPasswordConfirmationTextController.dispose();
    _firsCodeTextController.dispose();
    _secondCodeTextController.dispose();
    _thirdCodeTextController.dispose();
    _fourthCodeTextController.dispose();
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reset Password'),
          backgroundColor: const Color(0xFFD32F2F),
          centerTitle: true,
        ),
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          children: [
            const Text('Enter new password...', style:
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )),
            const Text('Enter new password and receive code ', style:
            TextStyle(
              fontSize: 15,
              color: Colors.grey,
            )),
            const SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                    child:CodeTextField(
                        controller: _firsCodeTextController,
                        focusNode: _firstFocusNode,
                        onChange: (value){
                          if(value.isNotEmpty) {
                            _secondFocusNode.requestFocus();
                          }})
                ),
                const SizedBox(width: 10),
                Expanded(
                    child:CodeTextField(
                        controller: _secondCodeTextController,
                        focusNode: _secondFocusNode,
                        onChange: (value){
                          value.isNotEmpty
                              ?_thirdFocusNode.requestFocus()
                              :_firstFocusNode.requestFocus();
                        })
                ),
                const SizedBox(width: 10),

                Expanded(
                    child:CodeTextField(
                        controller: _thirdCodeTextController,
                        focusNode: _thirdFocusNode,
                        onChange: (value){
                          value.isNotEmpty
                              ?_fourthFocusNode.requestFocus()
                              :_secondFocusNode.requestFocus();

                        })
                ),
                const SizedBox(width: 10),

                Expanded(
                    child:CodeTextField(
                        controller: _fourthCodeTextController,
                        focusNode: _fourthFocusNode,
                        onChange: (value){
                          if (value.isEmpty){
                            _thirdFocusNode.requestFocus();
                          }

                        })
                ),
              ],
            ),
            const SizedBox(height: 15),

            AppTextField(
              controller: _newPasswordConfirmationTextController,
              prefixIcon: Icons.lock,
              hint: 'new password',
              obsecure: true,
            ),
            const SizedBox(height: 10),
            AppTextField(
              controller: _newPasswordTextController,
              prefixIcon: Icons.lock,
              hint: 'new password confirmation',
              obsecure: true,
            ),
            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: (){},
              child: const Text('RESET'),
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

