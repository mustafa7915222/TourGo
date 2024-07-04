import 'package:flutter/material.dart';
class AppConstants {
  /* utils start */

  static const Color primaryColor = Color(0xFFF21636);
  static const Color secondaryColor = Color(0xffC2BDBD);
  static const Color confirmColor = Color(0xff2BB100);
  static const Color myWhite = Color(0xFFFFFFFF);
  static const Color myWhiteDark = Color(0xFFF5F5F5);
  static const Color myGrey = Color(0xFFC2BDBD);
  static const Color myBlack = Color(0xFF1E1E1E);
  static const String fontFamily = 'Cairo-SemiBold';

  /* utils end */
  // primary button
  static const double primaryButtonRadius = 5.0;
  static const double primaryButtonFontSize = 20.0;

  // secondary button
  static const double secondaryButtonRadius = 5.0;
  static const double secondaryButtonFontSize = 18.0;

  // confirmed button
  static const double confirmedButtonRadius = 5.0;
  static const double confirmedButtonFontSize = 18.0;

  // canceled button
  static const double canceledButtonRadius = 5.0;
  static const double canceledButtonFontSize = 18.0;

  // facility icon button
  static const double facilityIconButtonRadius = 10.0;
  static const double facilityIconButtonSize = 24.0;
  static const double facilityIconButtonPaddingAll = 16.0;
  static const double facilityIconButtonSpreadRadius = 1;
  static const double facilityIconButtonBlurRadius = 2;
  static const double facilityIconButtonOffsetFrom = 0;
  static const double facilityIconButtonOffsetTo = 2;
  static Color facilityIconButtonBorderShadowColor = Colors.black.withOpacity(
      0.2);

  // function icon button
  static const double functionIconButtonSize = 32.0;
  static const double functionIconButtonPaddingAll = 8.0;

  // function icon button
  static const double mainIconButtonSize = 48.0;
  static const double mainIconButtonPaddingAll = 8.0;

  // text button
  static const double textButtonFontSize = 16.0;

  // text button with border
  static const double textButtonWithBorderFontSize = 18.0;
  static const double textButtonWithBorderRadius = 5.0;
  static const double textButtonWithBorderBorderWidth = 1.0;


  // button text

  static const String loginButtonText = 'تسجيل دخول';
  static const String confirmedButtonText = 'موافق';
  static const String confirmedButtonText1 = 'تم';
  static const String canceledButtonText = 'الغاء';
  static const String bookingButtonText = 'احجز';
  static const String detailsButtonText = 'التفاصيل';
  static const String nextButtonText = 'التالي';
  static const String previousButtonText = 'السابق';

/* text */
  // page title
  static const double pageTitleFontSize = 20;
  static const FontWeight pageTitleFontWeight = FontWeight.bold;

// page title text
  static const String pageTitleLogin = 'تسجيل الدخول';
  static const String pageTitleSignup = 'حساب جديد';

// page paragraph
  static const double paragraphFontSize = 14;
  static const FontWeight paragraphFontWeight = FontWeight.normal;

// page title text
  static const String paragraphWelcome1 = 'استفد من أفضل العروض في المواسم السياحية المختلفة استفد من أفضل العروض في المواسم السياحية المختلفة استفد من أفضل العروض في المواسم السياحية المختلفة';
  static const String paragraphWelcome2 = 'اختر المنشأة السياحية المناسبة لك و استمتع بإقامة سعيدة';
  static const String paragraphWelcome3 = "شاليه مميزة بإطلالة رائعة على البحر مباشرة تحتوي على غرفتين نوم و غرفة معيشة و برندا مميزة";
  static const String paragraphWelcome4 = 'منتجع مميز و جميل باطلالة رائعة على البحر مع شاطئ جميل و خلال يحتوي على مجموعة خدمات و هي :';

// page primaryText
  static const double primaryTextFontSize = 16;
  static const FontWeight primaryTextFontWeight = FontWeight.normal;

// page primaryText text
  static const String primaryText1 = 'شاليه الشاطئ';
  static const String primaryText2 = 'اوافق على الشوط و الأحكام';

  // page secondaryText
  static const double secondaryTextFontSize = 12;
  static const FontWeight secondaryTextFontWeight = FontWeight.normal;

// page secondaryText text
  static const String secondaryText1 = "نسيت كلمة المرور؟";
  static const String secondaryText2 = "الخدمات الاضافية";

// page linkText
  static const double linkTextFontSize = 12;
  static const FontWeight linkTextFontWeight = FontWeight.bold;
  static const TextDecoration linkTextDecoration = TextDecoration.underline;

// page linkText text
  static const String linkText1 = "عرض الكل";
  static const String linkText2 = "هنا";


/* Text form fields*/

  // page TextFormField
  static const double textFormFieldLabelFontSize = 14.0;
  static const double textFormFieldHintFontSize = 14.0;
  static const double textFormFieldBorderRadius = 5.0;
  static const double textFormFieldFocusedBorderRadius = 5.0;
  static const double textFormFieldBorderWidth = 1.0;
  static const double textFormFieldErrorBorderRadius = 5.0;
  static const double textFormFieldElevation = 5.0;


  // page TextFormField text

  static const String textFormFieldPhoneLabel = 'رقم الهاتف';
  static const String textFormFieldDateLabel = 'تاريخ الوصول';
  static const String textFormFieldPasswordLabel = 'كلمة المرور';
  static const String textFormFieldEmailHint = '0987654321';
  static const String textFormFieldPasswordHint = 'ادخل كلمة المرور';
}