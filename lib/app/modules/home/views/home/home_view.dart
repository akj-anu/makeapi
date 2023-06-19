import 'package:flutter/material.dart';
import 'package:mockapi/app/modules/home/views/home/desktop/home_desktop.dart';
import 'package:mockapi/app/modules/home/views/home/mobile/home_mobile.dart';
import 'package:mockapi/app/modules/home/views/home/tab/home_tab.dart';
import 'package:mockapi/app/widgets/responsive.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Responsive.sections(
            desktop: const HomeDesktop(),
            mobile: const HomeMobile(),
            tablet: const HomeTab()));
  }
}
