import 'package:flutter/material.dart';

import '../utils/constants.dart';

/// A primary button widget with customizable text and state (active or inactive).
///
/// The button changes its background color based on the active state and
/// has rounded corners. The button width is set to 90% of the screen width.
Widget primaryButton(BuildContext context, String buttonText, bool active, {required void Function() onPressed}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.9,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: active
            ? MaterialStateProperty.resolveWith((states) => AppConstants.primaryColor)
            : MaterialStateProperty.resolveWith((states) => AppConstants.secondaryColor),
        shape: MaterialStateProperty.resolveWith(
                (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.primaryButtonRadius),
            )),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: AppConstants.primaryButtonFontSize,
          color: AppConstants.myWhite,
          fontFamily: AppConstants.fontFamily,
        ),
      ),
    ),
  );
}

/// A confirmed button widget with customizable text.
///
/// The button has a fixed background color, rounded corners,
/// and a width set to 45% of the screen width.
Widget confirmedButton(BuildContext context, String buttonText, {required void Function() onPressed}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.45,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) => AppConstants.confirmColor),
        shape: MaterialStateProperty.resolveWith(
                (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.confirmedButtonRadius),
            )),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: AppConstants.confirmedButtonFontSize,
          color: AppConstants.myWhite,
          fontFamily: AppConstants.fontFamily,
        ),
      ),
    ),
  );
}

/// A canceled button widget with customizable text.
///
/// The button has a fixed background color, rounded corners,
/// and a width set to 45% of the screen width.
Widget canceledButton(BuildContext context, String buttonText, {required void Function() onPressed}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.45,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) => AppConstants.primaryColor),
        shape: MaterialStateProperty.resolveWith(
                (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstants.canceledButtonRadius),
            )),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: AppConstants.canceledButtonFontSize,
          color: AppConstants.myWhite,
          fontFamily: AppConstants.fontFamily,
        ),
      ),
    ),
  );
}

/// An icon button widget for facilities with a fixed size and appearance.
///
/// The button has rounded corners, a shadow, and a border.
Widget facilityIconButton(BuildContext context, IconData buttonIcon) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.15,
    decoration: BoxDecoration(
      color: AppConstants.myWhite,
      borderRadius: BorderRadius.circular(AppConstants.facilityIconButtonRadius),
      boxShadow: [
        BoxShadow(
          color: AppConstants.facilityIconButtonBorderShadowColor,
          spreadRadius: AppConstants.facilityIconButtonSpreadRadius,
          blurRadius: AppConstants.facilityIconButtonBlurRadius,
          offset: const Offset(AppConstants.facilityIconButtonOffsetFrom, AppConstants.facilityIconButtonOffsetTo),
        ),
      ],
      border: Border.all(
        color: AppConstants.myWhite,
      ),
    ),
    child: IconButton(
      onPressed: null,
      icon: Icon(
        buttonIcon,
        color: AppConstants.primaryColor,
        size: AppConstants.facilityIconButtonSize,
      ),
      padding: const EdgeInsets.all(AppConstants.facilityIconButtonPaddingAll),
    ),
  );
}


/// A circular icon button widget with customizable active state.
///
/// The button's color changes based on the active state.
Widget functionIconButton(BuildContext context, IconData buttonIcon, bool isIconActive, {required void Function() onPressed}) {
  return Container(
    decoration: BoxDecoration(
      color: isIconActive ? AppConstants.primaryColor : AppConstants.myGrey,
      shape: BoxShape.circle,
    ),
    child: IconButton(
      onPressed: onPressed,
      icon: Icon(
        buttonIcon,
        color: AppConstants.myWhite,
        size: AppConstants.functionIconButtonSize,
      ),
      padding: const EdgeInsets.all(AppConstants.functionIconButtonPaddingAll),
    ),
  );
}

/// An icon button widget with customizable active state.
///
/// The button's icon color changes based on the active state.
Widget mainIconButton(BuildContext context, IconData buttonIcon, bool isIconActive, {required void Function() onPressed}) {
  return IconButton(
    onPressed: onPressed,
    icon: Icon(
      buttonIcon,
      color: isIconActive ? AppConstants.primaryColor : AppConstants.myGrey,
      size: AppConstants.mainIconButtonSize,
    ),
    padding: const EdgeInsets.all(AppConstants.mainIconButtonPaddingAll),
  );
}

/// A text button widget with customizable text and color.
///
/// The button has a fixed width and no border.
Widget textButton(BuildContext context, String text, Color textColor, {required void Function() onPressed}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.30,
    decoration: const BoxDecoration(
      color: AppConstants.myWhite,
    ),
    child: TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: AppConstants.textButtonFontSize,
          color: textColor,
          fontFamily: AppConstants.fontFamily,
        ),
      ),
    ),
  );
}

/// A text button widget with customizable text and a border.
///
/// The button has a fixed width, rounded corners, and a border.
Widget textButtonWithBorder(BuildContext context, String text, {required void Function() onPressed}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.30,
    decoration: BoxDecoration(
      color: AppConstants.myWhite,
      borderRadius: BorderRadius.circular(AppConstants.textButtonWithBorderRadius),
      border: Border.all(
        color: AppConstants.primaryColor,
        width: AppConstants.textButtonWithBorderBorderWidth,
      ),
    ),
    child: TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.textButtonWithBorderRadius),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: AppConstants.textButtonWithBorderFontSize,
          color: AppConstants.primaryColor,
          fontFamily: AppConstants.fontFamily,
        ),
      ),
    ),
  );
}
