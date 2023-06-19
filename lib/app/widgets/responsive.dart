import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Responsive {
  static sections({
    Widget? desktop,
    Widget? tablet,
    Widget? mobile,
  }) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return desktop ?? Container(color: Colors.blue);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return tablet ?? Container(color: Colors.red);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return mobile ?? Container(color: Colors.yellow);
        }

        return mobile ?? Container(color: Colors.purple);
      },
    );
  }
}
