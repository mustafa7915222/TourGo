import 'package:flutter/material.dart';
import 'package:tourgo/screens/test_list_v.dart';
import '../utils/constants.dart';
import '../utils/help_function.dart';
import '../widgets/Lists.dart';
import '../widgets/buttons.dart';

class TestListPage extends StatefulWidget {
  const TestListPage({super.key});

  @override
  State<TestListPage> createState() => _TestListPageState();
}

class _TestListPageState extends State<TestListPage> {

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
          title: Text('List View'),
        ),
        body: properties1.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Column(
          mainAxisAlignment: MainAxisAlignment.start,
              children: [
                horizontalList(context),
                const SizedBox(height: 20,),
                horizontalList(context),
                const SizedBox(height: 20,),
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
                            MaterialPageRoute(builder: (context) =>  const TestListVPage()),
                          );
                        }),
                  ],
                ),
              ],
            ),
        floatingActionButton:  FloatingActionButton(
          onPressed: () async {
            await fetchData();
            setState(() {

            });
          },
          child: const Icon(Icons.download),
        ),
      ),
    );
  }
}
