import 'package:flutter/material.dart';
import 'package:tourgo/utils/constants.dart';

/// Returns a customized TextFormField widget.
///
/// [context] - The BuildContext for obtaining media query size.
/// [controller] - The TextEditingController for controlling the text.
/// [labelText] - The label text for the input field.
/// [hintText] - The hint text for the input field.
/// [prefixIcon] - The icon displayed at the start of the input field.
Widget textFormField(
    BuildContext context,
    TextEditingController controller,
    String labelText,
    String hintText,
    IconData prefixIcon,
    ) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.9,
    child: Material(
      elevation: AppConstants.textFormFieldElevation,
      shadowColor: AppConstants.myGrey.withOpacity(0.5),
      color: AppConstants.myWhiteDark,
      borderRadius: BorderRadius.circular(AppConstants.textFormFieldBorderRadius),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(
            fontSize: AppConstants.textFormFieldLabelFontSize,
            color: AppConstants.myBlack,
            fontFamily: AppConstants.fontFamily,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: AppConstants.textFormFieldHintFontSize,
            color: AppConstants.myGrey,
            fontFamily: AppConstants.fontFamily,
          ),
          prefixIcon: Icon(prefixIcon, color: AppConstants.primaryColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.textFormFieldBorderRadius),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.textFormFieldFocusedBorderRadius),
            borderSide: const BorderSide(
              color: AppConstants.myBlack,
              width: AppConstants.textFormFieldBorderWidth,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppConstants.textFormFieldErrorBorderRadius),
            borderSide: const BorderSide(
              color: AppConstants.primaryColor,
              width: AppConstants.textFormFieldBorderWidth,
            ),
          ),
        ),
      ),
    ),
  );
}

/// Returns a customized TextFormField widget that triggers a function on tap.
///
/// [context] - The BuildContext for obtaining media query size.
/// [controller] - The TextEditingController for controlling the text.
/// [labelText] - The label text for the input field.
/// [hintText] - The hint text for the input field.
/// [prefixIcon] - The icon displayed at the start of the input field.
/// [onTapFunction] - The function to be called when the field is tapped.
Widget textFormFieldClick(
    BuildContext context,
    TextEditingController controller,
    String labelText,
    String hintText,
    IconData prefixIcon, {
      required void Function() onTapFunction,
    }) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.9,
    child: Material(
      elevation: AppConstants.textFormFieldElevation,
      shadowColor: AppConstants.myGrey.withOpacity(0.5),
      color: AppConstants.myWhiteDark,
      borderRadius: BorderRadius.circular(AppConstants.textFormFieldBorderRadius),
      child: InkWell(
        onTap: onTapFunction, // Function to be called on tap
        child: IgnorePointer( // Ignore user input
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
              labelStyle: const TextStyle(
                fontSize: AppConstants.textFormFieldLabelFontSize,
                color: AppConstants.myBlack,
                fontFamily: AppConstants.fontFamily,
              ),
              hintStyle: const TextStyle(
                fontSize: AppConstants.textFormFieldHintFontSize,
                color: AppConstants.myGrey,
                fontFamily: AppConstants.fontFamily,
              ),
              prefixIcon: Icon(prefixIcon, color: AppConstants.primaryColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppConstants.textFormFieldBorderRadius),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppConstants.textFormFieldFocusedBorderRadius),
                borderSide: const BorderSide(
                  color: AppConstants.myBlack,
                  width: AppConstants.textFormFieldBorderWidth,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppConstants.textFormFieldErrorBorderRadius),
                borderSide: const BorderSide(
                  color: AppConstants.primaryColor,
                  width: AppConstants.textFormFieldBorderWidth,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

/// Returns a customized password TextFormField widget with toggleable visibility.
///
/// [context] - The BuildContext for obtaining media query size.
/// [controller] - The TextEditingController for controlling the text.
/// [obscureText] - Boolean to control the visibility of the text.
/// [labelText] - The label text for the input field.
/// [hintText] - The hint text for the input field.
/// [prefixIcon] - The icon displayed at the start of the input field.
/// [suffixIcon1] - The icon displayed when the text is visible.
/// [suffixIcon2] - The icon displayed when the text is hidden.
/// [onPressed] - The function to toggle the visibility of the text.
Widget textFormFieldPassword(
    BuildContext context,
    TextEditingController controller,
    bool obscureText,
    String labelText,
    String hintText,
    IconData prefixIcon,
    IconData suffixIcon1,
    IconData suffixIcon2, {
      required void Function() onPressed,
    }) {
  return SizedBox(
    width: MediaQuery
        .of(context)
        .size
        .width * 0.9,
    child: Material(
      elevation: AppConstants.textFormFieldElevation,
      shadowColor: AppConstants.myGrey.withOpacity(0.5),
      color: AppConstants.myWhiteDark,
      borderRadius: BorderRadius.circular(
          AppConstants.textFormFieldBorderRadius),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: const TextStyle(
            fontSize: AppConstants.textFormFieldLabelFontSize,
            color: AppConstants.myBlack,
            fontFamily: AppConstants.fontFamily,
          ),
          hintStyle: const TextStyle(
            fontSize: AppConstants.textFormFieldHintFontSize,
            color: AppConstants.myGrey,
            fontFamily: AppConstants.fontFamily,
          ),
          prefixIcon: Icon(prefixIcon, color: AppConstants.primaryColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                AppConstants.textFormFieldBorderRadius),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                AppConstants.textFormFieldFocusedBorderRadius),
            borderSide: const BorderSide(
              color: AppConstants.myBlack,
              width: AppConstants.textFormFieldBorderWidth,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
                AppConstants.textFormFieldErrorBorderRadius),
            borderSide: const BorderSide(
              color: AppConstants.primaryColor,
              width: AppConstants.textFormFieldBorderWidth,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(
              !obscureText ? suffixIcon1 : suffixIcon2,
              color: !obscureText ? AppConstants.primaryColor : AppConstants
                  .myGrey,
            ),
          ),
        ),
      ),
    ),
  );
}