import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';
import '../widgets/text_form_field.dart';

class TestTextFromFieldPage extends StatefulWidget {
  const TestTextFromFieldPage({super.key});

  @override
  State<TestTextFromFieldPage> createState() => _TestTextFromFieldPageState();
}

class _TestTextFromFieldPageState extends State<TestTextFromFieldPage> {

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;
  @override
  void initState() {
    super.initState();
    //checkData();
  }


  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: textTitle("انواع مربعات الادخال في التطبيق"),
                ),
                const SizedBox(
                  height: 10,
                ),
                textPrimary("مربع الادخال العادي"),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: textFormField(context,_phoneController, AppConstants.textFormFieldPhoneLabel,AppConstants.textFormFieldEmailHint,Icons.phone_android),
                ),
                const SizedBox(
                  height: 20,
                ),
                textPrimary("مربع الادخال الذي يأخذ قيمته من نموذج خارجي"),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: textFormFieldClick(context,_dateController, AppConstants.textFormFieldDateLabel,AppConstants.textFormFieldEmailHint,Icons.date_range,onTapFunction: (){
                    print("tapped");
                    setState(() {
                      _dateController.text ="11-7-2021";
        
                    });
                  }),
                ),
                textPrimary("مربع الادخال لكلمة المرور"),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: textFormFieldPassword(context,_passwordController,_obscurePassword, AppConstants.textFormFieldPasswordLabel,AppConstants.textFormFieldPasswordHint,Icons.password,Icons.visibility,Icons.visibility_off,onPressed: (){
        
                    setState(() {
                      _obscurePassword = !_obscurePassword;
        
                    });
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    textButtonWithBorder(context, AppConstants.previousButtonText,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    textButtonWithBorder(context, AppConstants.nextButtonText,
                        onPressed: () {
                        }),
                  ],
                ),
        
              ],
            )),
      ),
    );
  }
}
