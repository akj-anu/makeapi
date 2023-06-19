import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mockapi/app/common/extensions.dart';
import 'package:mockapi/app/modules/home/providers/home_provider.dart';
import 'package:mockapi/app/modules/home/views/home/widget/clinet_list.dart';
import 'package:mockapi/app/modules/home/views/home/widget/footer.dart';
import 'package:mockapi/app/modules/home/views/home/widget/service_card.dart';
import 'package:provider/provider.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color bgColor = const Color(0x00ffffff);
    Color buttonColor = const Color.fromARGB(255, 0, 0, 0);
    final homeProvider = context.read<HomeProvider>();
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: const Text(
          'FLUTTER WEB',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  homeProvider.login();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Login'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Sign up'),
                ),
              ),
            ),
          ),
        ],
        bottomOpacity: 5,
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(child: Consumer<HomeProvider>(
          builder: (__, value, _) {
            return Column(
              children: [
                homeProvider.loginEnabled ? pageView() : loginScreen(context)
              ],
            );
          },
        )),
      ),
    );
  }

  Widget loginScreen(BuildContext contxt) {
    return Container(
      height: contxt.sh(size: 0.949),
      width: double.maxFinite,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffD3DFF7),
        Color(0xffE9DDEB),
      ])),
      child: Center(
          child: Container(
        height: 400.h,
        width: 80.w,
        padding: EdgeInsets.all(20.r),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25.r)),


            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
              ],
            ),
      )).animate().fade().scale(),
    );
  }

  Widget pageView() {
    return Column(
      children: [
        home(),
        const ClientList(),
        services(),
        30.verticalSpace,
        Footer(
          iconSize: 12.r,
        )
      ],
    );
  }

  Widget home() {
    var submitTextStyle = TextStyle(
        fontSize: 12.sp, color: Colors.white, fontWeight: FontWeight.w300);
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xffD3DFF7),
        Color(0xffE9DDEB),
      ])),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  child: Image.asset(
                "assets/images/group.png",
                height: 800,
                width: 800,
              )).animate().fade().scale(),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Where does it come from?",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AnimatedButton(
                      animatedOn: AnimatedOn.onHover,
                      onPress: () {},
                      // height: 70,
                      width: 200,
                      text: 'Get Access Now',
                      borderRadius: 25,
                      backgroundColor: Colors.black,
                      gradient: const LinearGradient(
                          colors: [Colors.black, Colors.black]),
                      selectedGradientColor: const LinearGradient(colors: [
                        Color.fromARGB(255, 232, 208, 237),
                        Color.fromARGB(255, 203, 220, 254),
                      ]),
                      isReverse: true,
                      selectedTextColor: Colors.white,
                      transitionType: TransitionType.LEFT_CENTER_ROUNDER,
                      textStyle: submitTextStyle,
                      borderColor: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget services() {
    List<String> widgetList = ['Todo API', 'Ecommerce API', 'Custom API'];
    return Column(
      children: [
        40.verticalSpace,
        const Text(
          "SERVICES",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        20.verticalSpace,
        SizedBox(
          height: 1 * (460.r),
          child: GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 3,
            mainAxisSpacing: 10.w,
            controller: ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: widgetList.map((String value) {
              return ServiceCard(
                titile: value,
                iconSize: 35,
              ).animate().fade().scale();
            }).toList(),
          ),
        ),
      ],
    );
  }
}
