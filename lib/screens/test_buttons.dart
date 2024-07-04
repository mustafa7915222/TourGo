import 'package:flutter/material.dart';
import 'package:tourgo/screens/test_text.dart';
import '../utils/constants.dart';
import '../widgets/buttons.dart';
import '../widgets/text.dart';

class TestButtonPage extends StatefulWidget {
  const TestButtonPage({super.key});

  @override
  State<TestButtonPage> createState() => _TestButtonPageState();
}

class _TestButtonPageState extends State<TestButtonPage> {
  String text = "اختبار";
  bool isActive=false;
  bool isIconActive=false;
  bool isIconActive1=false;
  bool isIconActive2=false;
  bool isIconActive3=false;
  bool isIconActive4=false;
  bool isIconActive5=false;
  bool isIconActive6=false;
  bool isMainIconActive1=true;
  bool isMainIconActive2=false;
  bool isMainIconActive3=false;
  @override
  void initState() {
    super.initState();
    //checkData();
  }


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: textTitle("انواع الأزرار في التطبيق"),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  text,
                  style: TextStyle(
                      fontFamily: AppConstants.fontFamily, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: primaryButton(context, AppConstants.loginButtonText,isActive,
                    onPressed: () {
                  setState(() {

                    isActive =!isActive;
                    isActive?text = "رئيسي مفعل":text = "رئيسي غير مفعل";
                  });
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  confirmedButton(context, AppConstants.confirmedButtonText,
                      onPressed: () {
                        setState(() {
                          text = "تأكيد";
                        });
                      }),
                  canceledButton(context, AppConstants.canceledButtonText,
                      onPressed: () {
                        setState(() {
                          text = "الغاء";
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  facilityIconButton(context, Icons.ac_unit),
                  facilityIconButton(context, Icons.ac_unit),
                  facilityIconButton(context, Icons.ac_unit),
                  facilityIconButton(context, Icons.ac_unit),
                  facilityIconButton(context, Icons.ac_unit),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  functionIconButton(context, Icons.add , isIconActive,
                      onPressed: () {
                        setState(() {
                          isIconActive =!isIconActive;
                          text = "زائد";
                        });
                      }),
                  functionIconButton(context, Icons.remove, isIconActive1,
                      onPressed: () {
                        setState(() {
                          isIconActive1 =!isIconActive1;
                          text = "ناقص";
                        });
                      }),
                  functionIconButton(context, Icons.remove, isIconActive2,
                      onPressed: () {
                        setState(() {
                          isIconActive2 =!isIconActive2;
                          text = "ناقص";
                        });
                      }),
                  functionIconButton(context, Icons.remove, isIconActive3,
                      onPressed: () {
                        setState(() {
                          isIconActive3 =!isIconActive3;
                          text = "ناقص";
                        });
                      }),
                  functionIconButton(context, Icons.remove, isIconActive4,
                      onPressed: () {
                        setState(() {
                          isIconActive4 =!isIconActive4;
                          text = "ناقص";
                        });
                      }),
                  functionIconButton(context, Icons.remove, isIconActive5,
                      onPressed: () {
                        setState(() {
                          isIconActive5 =!isIconActive5;
                          text = "ناقص";
                        });
                      }),
                  functionIconButton(context, Icons.remove, isIconActive6,
                      onPressed: () {
                        setState(() {
                          isIconActive6 =!isIconActive6;
                          text = "ناقص";
                        });
                      }),


                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  mainIconButton(context, Icons.explore , isMainIconActive1,
                      onPressed: () {
                        setState(() {
                          isMainIconActive1 =true;
                          isMainIconActive2 =false;
                          isMainIconActive3 =false;
                          text = "زائد";
                        });
                      }),
                  mainIconButton(context, Icons.book_outlined, isMainIconActive2,
                      onPressed: () {
                        setState(() {
                          isMainIconActive1 =false;
                          isMainIconActive2 =true;
                          isMainIconActive3 =false;

                          text = "ناقص";
                        });
                      }),
                  mainIconButton(context, Icons.person, isMainIconActive3,
                      onPressed: () {
                        setState(() {
                          isMainIconActive1 =false;
                          isMainIconActive2 =false;
                          isMainIconActive3 =true;
                          text = "ناقص";
                        });
                      }),



                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  textButton(context, AppConstants.confirmedButtonText , AppConstants.primaryColor,
                      onPressed: () {
                        setState(() {
                          text = "زر نصي تأكيد";
                        });
                      }),
                  textButton(context, AppConstants.canceledButtonText , AppConstants.myBlack,
                      onPressed: () {
                        setState(() {
                          text = "زر نصي الغاء";
                        });
                      }),
                  textButton(context, AppConstants.confirmedButtonText1 , AppConstants.primaryColor,
                      onPressed: () {
                        setState(() {
                          text = "زر نصي تأكيد";
                        });
                      }),




                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  textButtonWithBorder(context, AppConstants.bookingButtonText,
                      onPressed: () {
                        setState(() {
                          text = "زر نصي مع حدود احجز";
                        });
                      }),
                  textButtonWithBorder(context, AppConstants.detailsButtonText,
                      onPressed: () {
                        setState(() {
                          text = "زر نصي مع حدود التفاصيل";
                        });
                      }),
                  textButtonWithBorder(context, AppConstants.nextButtonText,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  const TestTextPage()),
                        );                      }),




                ],
              )
            ],
          )),
    );
  }
}
