import 'package:flutter/material.dart';

import '../utils/constants.dart';

/// A widget that displays a title text with a specific style.
Widget textTitle(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: AppConstants.pageTitleFontSize,
        color: AppConstants.myBlack,
        fontWeight: AppConstants.pageTitleFontWeight,
        fontFamily: AppConstants.fontFamily,
      ),
    ),
  );
}

/// A widget that displays a paragraph text with padding and a specific style.
Widget textParagraph(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: AppConstants.paragraphFontSize,
        color: AppConstants.myBlack,
        fontWeight: AppConstants.paragraphFontWeight,
        fontFamily: AppConstants.fontFamily,
      ),
    ),
  );
}
/// A widget that displays primary text with padding and a specific style.
Widget textPrimary(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: AppConstants.paragraphFontSize,
        color: AppConstants.myBlack,
        fontWeight: AppConstants.paragraphFontWeight,
        fontFamily: AppConstants.fontFamily,
      ),
    ),
  );
}

/// A widget that displays secondary text with padding and a specific style.
Widget textSecondary(String text) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 4, 16, 4),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: AppConstants.secondaryTextFontSize,
        color: AppConstants.myBlack,
        fontWeight: AppConstants.secondaryTextFontWeight,
        fontFamily: AppConstants.fontFamily,
      ),
    ),
  );
}

/// A widget that displays a clickable link text with padding and a specific style.
/// The [onTap] callback is triggered when the text is tapped.
Widget textLink(String text, {required void Function() onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: AppConstants.linkTextFontSize,
          color: AppConstants.primaryColor,
          fontWeight: AppConstants.linkTextFontWeight,
          decoration: AppConstants.linkTextDecoration,
          decorationColor: AppConstants.primaryColor,
          fontFamily: AppConstants.fontFamily,
        ),
      ),
    ),
  );
}

Widget textListTitle(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: AppConstants.paragraphFontSize,
        color: AppConstants.myBlack,
        fontWeight: AppConstants.paragraphFontWeight,
        fontFamily: AppConstants.fontFamily,
      ),
      overflow: TextOverflow.ellipsis,

    ),
  );
}