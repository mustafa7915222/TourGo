import 'package:flutter/material.dart';
import 'package:tourgo/screens/test_textFormField.dart';
import '../utils/constants.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class TestTextPage extends StatefulWidget {
  const TestTextPage({super.key});

  @override
  State<TestTextPage> createState() => _TestTextPageState();
}

class _TestTextPageState extends State<TestTextPage> {
  String text = "";
  String text1 = "";

  bool isActive=false;
  bool isActive2=false;
  @override
  void initState() {
    super.initState();
    //checkData();
  }


  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: textTitle("انواع النصوص في التطبيق"),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: textTitle(AppConstants.pageTitleLogin),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: textTitle(AppConstants.pageTitleSignup),
              ),
              const SizedBox(
                height: 5,
              ),
              textParagraph(AppConstants.paragraphWelcome1),
              const SizedBox(
                height: 5,
              ),

              textParagraph(AppConstants.paragraphWelcome3),
              const SizedBox(
                height: 5,
              ),

              textPrimary(AppConstants.primaryText1),
              const SizedBox(
                height: 5,
              ),
              textPrimary(AppConstants.primaryText2),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  textSecondary(AppConstants.secondaryText1),
                  textLink(AppConstants.linkText1 , onTap: () {
                    setState(() {

                      isActive =!isActive;
                      isActive?text = "اختبار":text = "";
                    });
                  }),
                  textSecondary(text),

                ],

              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  textSecondary(AppConstants.secondaryText2),
                  textLink(AppConstants.linkText2 , onTap: () {
                    setState(() {

                      isActive2 =!isActive2;
                      isActive2?text1 = "اختبار":text1 = "";
                    });
                  }),
                  textSecondary(text1),

                ],
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const TestTextFromFieldPage()),
                        );                      }),
                ],
              ),


            ],
          )),
    );
  }
}
