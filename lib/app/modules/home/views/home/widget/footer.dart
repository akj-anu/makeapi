import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Footer extends StatelessWidget {
  final double? iconSize;
  const Footer({super.key, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 200.h,
      width: double.maxFinite,
      color: Colors.black,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.verticalSpace,
                Row(
                  children: [
                    CircleAvatar(
                      radius: iconSize ?? 15.r,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/images/facebook.png',
                        width: iconSize ?? 15.w,
                        height: iconSize ?? 15.w,
                      ),
                    ),
                    5.horizontalSpace,
                    CircleAvatar(
                      radius: iconSize ?? 15.r,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/images/instagram.png',
                        width: iconSize ?? 15.w,
                        height: iconSize ?? 15.w,
                      ),
                    ),
                    5.horizontalSpace,
                    CircleAvatar(
                      radius: iconSize ?? 15.r,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/images/linkedin.png',
                        width: iconSize ?? 15.w,
                        height: iconSize ?? 15.w,
                      ),
                    ),
                  ],
                ),
                15.verticalSpace,
                Container(
                  height: 0.5.h,
                  color: Colors.white38,
                ),
                15.verticalSpace,
                Text(
                  "FLUTTER WEB",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
                15.verticalSpace,
                Text(
                  "© Copyright 2023 Flutter web\nAll Right Reserved",
                  style: TextStyle(color: Colors.white, fontSize: 14.sp),
                ),
              ],
            ),
          ]),
    );
  }
}
