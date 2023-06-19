import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClientList extends StatelessWidget {
  const ClientList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80.h,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) => 10.horizontalSpace,
        itemBuilder: (context, index) => Image.asset(
          "assets/images/leonartologo.png",
          height: 100,
          width: 300,
        ),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
