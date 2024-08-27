import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/Widget/ButtonWidget.dart';
import 'package:responsive_ui/Widget/ResponsiveBuilder.dart';
import 'package:responsive_ui/Widget/textWidget.dart';

class Devicescreeen extends StatelessWidget {
  const Devicescreeen({super.key});
  @override
  Widget build(BuildContext context) {
    return Responsivebuilder(
      mobile: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8.0.w, bottom: 2.h),
              child: Text(
                "Humming\nBird.",
                style: TextStyle(
                    fontSize: 14.sp, fontWeight: FontWeight.bold, height: 1.2),
              ),
            ),
          ],
        ),
        drawer: buildDrawer(),
        body: buildMobileBody(30.sp,12.sp,280.w),
      ),

      tablet: Scaffold(
        appBar:
          buildAppBarForTablet(),

        body: buildMobileBody(20.sp,10.sp,300.0),
      ),

      desktop: Scaffold(
        appBar: buildAppBarForTablet(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Textwidget(AlignText: TextAlign.center,headerSize: 16.sp,normalSize: 6.sp,),
            ),

            Buttonwidget(buttonWidth: 150.0,buttonfontSize: 18.0,),

          ],)
        ],),
      ),
    );
  }

  AppBar buildAppBarForTablet() {
    return AppBar(
          title:  Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "HUMMING\nBIRD.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(

                      children: [
                      Text(
                        "Episodes",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: 25.w,),
                      Text(
                        "About",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      )
                    ],),
                  )
                ],
              ),
            ],
          ),
        );
  }

  Widget buildMobileBody(headerSize,normalSize,buttonWidth) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Textwidget(AlignText: TextAlign.center,headerSize: headerSize,normalSize:normalSize,),
          SizedBox(height: 40.h),
          Buttonwidget(buttonWidth: buttonWidth,buttonfontSize: 18.0,),
        ],
      ),
    );
  }

  Widget buildDrawer() {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 12,
              child: Container(
                color: Colors.greenAccent.shade400,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SKILL UP NOW",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18.sp),
                      ),
                      Text(
                        "TAP HERE",
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            buildDrawerComponent(Icons.movie_filter_outlined, "Episode"),
            SizedBox(
              height: 50.h,
            ),
            buildDrawerComponent(Icons.info_outline, "About"),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerComponent(icon, text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 20.w,
        ),
        Text(
          "$text",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
