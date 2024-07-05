import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils/constants.dart';
import '../utils/help_function.dart';
import '../widgets/Lists.dart';
import '../widgets/buttons.dart';

class TestListVPage extends StatefulWidget {
  const TestListVPage({super.key});

  @override
  State<TestListVPage> createState() => _TestListVPageState();
}

class _TestListVPageState extends State<TestListVPage> {

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
        appBar: AppBar(
          title: const Text('List View'),
        ),
        body: properties1.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(flex:17,child: verticalList(context)),

                Expanded(
                  flex:3,
                  child: Row(
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
                ),
              ],
            ),

      ),
    );
  }
}
