import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mockapi/app/common/extensions.dart';
import 'package:mockapi/app/modules/home/views/home/widget/footer.dart';
import 'package:mockapi/app/modules/home/views/home/widget/service_card.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> widgetList = ['Todo API', 'Ecommerce API', 'Custom API'];
    Color bgColor = const Color(0x00ffffff);
    Color buttonColor = const Color.fromARGB(255, 0, 0, 0);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )).animate().fade().scale(),
        title: Text(
          'FLUTTER WEB',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp),
        ).animate().fade().scale(),
        bottomOpacity: 5,
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: context.sh(),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xffD3DFF7),
                  Color(0xffE9DDEB),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Image.asset(
                            "assets/images/group.png",
                          ).animate().fade().scale(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Where does it come from?",
                                style: TextStyle(
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                style: TextStyle(fontSize: 15.sp),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: buttonColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(15.r),
                                  child: const Text('Get Access Now'),
                                ),
                              ),
                              SizedBox(
                                height: 40.h,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "SERVICES",
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 3 * (380.r),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 1,
                  mainAxisSpacing: 10.w,
                  controller: ScrollController(keepScrollOffset: false),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: widgetList.map((String value) {
                    return ServiceCard(titile: value);
                  }).toList(),
                ),
              ),
              const Footer()
            ],
          ),
        ),
      ),
    );
  }
}
