import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceCard extends StatelessWidget {
  final String? titile;
  final String? description;
  final double? iconSize;
  const ServiceCard({super.key, this.titile, this.description, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 203, 220, 254),
            Color.fromARGB(255, 232, 208, 237),
          ])),
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35.r,
            backgroundColor: Colors.white,
            child: Image.asset(
              'assets/images/checklist.png',
              width: iconSize ?? 35.w,
              height: iconSize ?? 35.w,
            ),
          ),
          10.verticalSpace,
          Text(
            titile ?? "",
            style: TextStyle(fontSize: 30.r, color: Colors.black),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                description ??
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.r,
                  color: const Color.fromARGB(255, 39, 39, 39),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
