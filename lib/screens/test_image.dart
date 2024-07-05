import 'package:flutter/material.dart';
import 'package:tourgo/screens/test_list_h.dart';
import '../utils/constants.dart';
import '../widgets/buttons.dart';
import '../widgets/images.dart';

class TestImagePage extends StatefulWidget {
  const TestImagePage({super.key});

  @override
  State<TestImagePage> createState() => _TestImagePageState();
}

class _TestImagePageState extends State<TestImagePage> {

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
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(child: assetsImageSmallLogo(context, AppConstants.assetsImagePathLogo)),
                  const SizedBox(height: 20),
                  Center(child: assetsImageBigLogo(context, AppConstants.assetsImagePathLogo)),
                  const SizedBox(height: 20),
                  Center(child: assetsImage(context, AppConstants.assetsImagePathLogin)),
                  const SizedBox(height: 20),
                  Center(child: assetsImage(context, AppConstants.assetsImagePathWelcome1)),
                  const SizedBox(height: 20),
                  Center(child: assetsImage(context, AppConstants.assetsImagePathWelcome2)),
                  const SizedBox(height: 20),
                  Center(child: assetsImage(context, AppConstants.assetsImagePathWelcome3)),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        networkImageSmall(context, "https://himart.dev/tourgo/images/Hotel/11.jpeg"),
                       const SizedBox(width: 20,),
                        networkImageSmall(context, "https://himart.dev/tourgo/images/Hotel/14.jpg"),
                        const SizedBox(width: 20,),

                        networkImageSmall(context, "https://himart.dev/tourgo/images/Hotel/11.jpeg"),

                      ],
                    ),

                  ),
                  const SizedBox(height: 20,),

                  Center(child: networkImageBig(context, "https://himart.dev/tourgo/images/Hotel/11.jpeg")),

                  const SizedBox(height: 20),

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
                              MaterialPageRoute(builder: (context) =>  const TestListPage()),
                            );
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            ),
      ));
  }
}
