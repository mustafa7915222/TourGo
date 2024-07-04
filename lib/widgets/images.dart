import 'package:flutter/material.dart';
import '../utils/constants.dart';

/// A widget that displays an image from the assets directory.
///
/// The image is displayed with a specified width and height which are
/// fractions of the screen width, defined in [AppConstants]. The image
/// is fitted to fill the container.
Widget assetsImage(BuildContext context, String imagePath) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * AppConstants.assetsImageWidth,
    height: MediaQuery.of(context).size.width * AppConstants.assetsImageHeight,
    child: Image.asset(
      "assets/images/$imagePath",
      fit: BoxFit.fill, // Adjust the image size to fill the container
    ),
  );
}

/// A widget that displays a small logo image from the assets directory.
///
/// The small logo is displayed with a specified width and height which are
/// fractions of the screen width, defined in [AppConstants]. The image
/// is fitted to fill the container.
Widget assetsImageSmallLogo(BuildContext context, String imagePath) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * AppConstants.assetsImageSmallLogoWidth,
    height: MediaQuery.of(context).size.width * AppConstants.assetsImageSmallLogoHeight,
    child: Image.asset(
      "assets/images/$imagePath",
      fit: BoxFit.fill, // Adjust the image size to fill the container
    ),
  );
}

/// A widget that displays a big logo image from the assets directory.
///
/// The big logo is displayed with a specified width and height which are
/// fractions of the screen width, defined in [AppConstants]. The image
/// is fitted to fill the container.
Widget assetsImageBigLogo(BuildContext context, String imagePath) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * AppConstants.assetsImageBigLogoWidth,
    height: MediaQuery.of(context).size.width * AppConstants.assetsImageBigLogoHeight,
    child: Image.asset(
      "assets/images/$imagePath",
      fit: BoxFit.fill, // Adjust the image size to fill the container
    ),
  );
}

/// A widget that displays a small image from a network URL.
///
/// The image is displayed with a specified width and height which are
/// fractions of the screen width, defined in [AppConstants]. The image
/// is fitted to fill the container.
Widget networkImageSmall(BuildContext context, String imagePath) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * AppConstants.networkImageSmallWidth,
    height: MediaQuery.of(context).size.width * AppConstants.networkImageSmallHeight,
    child: Image.network(
      imagePath,
      fit: BoxFit.fill, // Adjust the image size to fill the container
    ),
  );
}

/// A widget that displays a big image from a network URL.
///
/// The image is displayed with a specified width and height which are
/// fractions of the screen width, defined in [AppConstants]. The image
/// is fitted to fill the container.
Widget networkImageBig(BuildContext context, String imagePath) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * AppConstants.networkImageBigWidth,
    height: MediaQuery.of(context).size.width * AppConstants.networkImageBigHeight,
    child: Image.network(
      imagePath,
      fit: BoxFit.fill, // Adjust the image size to fill the container
    ),
  );
}
