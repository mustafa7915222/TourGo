
import 'package:flutter/material.dart';
import 'package:tourgo/widgets/text.dart';

import '../utils/constants.dart';
import '../utils/help_function.dart';



Widget horizontalList(context){
  return SizedBox(
    height: MediaQuery.of(context).size.height * 0.25,

    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: properties1.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print('Tapped item ID: ${properties1[index]['property_id']}');
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.40,
            margin: const EdgeInsets.all(AppConstants.horizontalListMarginAll),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConstants.horizontalListRadius),
              color: AppConstants.myWhite,
              boxShadow: [
                BoxShadow(
                  color: AppConstants.horizontalListBorderShadowColor,

                  spreadRadius: AppConstants.horizontalListSpreadRadius,
                  blurRadius: AppConstants.horizontalListBlurRadius,
                  offset: const Offset(AppConstants.horizontalListOffsetFrom, AppConstants.horizontalListOffsetTo),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  properties1[index]['images'][0],
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width * 0.40,
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                textListTitle(properties1[index]['name']),
                textTitle("${properties1[index]['price_per_night']} ل.س"),
              ],
            ),
          ),
        );
      },
    ),
  );
}

Widget verticalList(context){
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.95,

    child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: properties1.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print('Tapped item ID: ${properties1[index]['property_id']}');
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height *0.39 ,

            margin: const EdgeInsets.all(AppConstants.verticalListMarginAll),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppConstants.verticalListRadius),
              color: AppConstants.myWhite,
              boxShadow: [
                BoxShadow(
                  color: AppConstants.verticalListBorderShadowColor,

                  spreadRadius: AppConstants.verticalListSpreadRadius,
                  blurRadius: AppConstants.verticalListBlurRadius,
                  offset: const Offset(AppConstants.verticalListOffsetFrom, AppConstants.verticalListOffsetTo),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  properties1[index]['images'][0],
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
                textListTitle(properties1[index]['name']),
                textTitle("${properties1[index]['price_per_night']} ل.س"),
              ],
            ),
          ),
        );
      },
    ),
  );
}