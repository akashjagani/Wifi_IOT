import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int isSelected = -1;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white, //or set color with: Color(0xFF0000FF)
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  Container(
                    height: 60.h,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/menu.png',
                          height: 15.h,
                          width: 20.w,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/logo.png',
                                height: 55.h,
                                width: 60.w,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Image.asset(
                                'assets/images/name.png',
                                height: 15.h,
                                width: 120.w,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/profile.png',
                                height: 40.h,
                                width: 40.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Image.asset(
                                'assets/images/bell.png',
                                height: 25.h,
                                width: 25.w,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    'You’re Ready to Connect Sensors',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'poppins',
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/demopic.png',
              height: 330.h,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'You can either setup your sensors one-byone (Individually) or by group.',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'poppins',
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Individually, click “Set up” next to each sensors. to group then select into the group zone',
                    style: TextStyle(
                      color: Color(0xFF222222),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Wireless sensors',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'poppins',
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              color: Color(0xFF08F0A9),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'poppins',
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 30.h,
                        width: 115.w,
                        decoration: BoxDecoration(
                          color: Color(0xFF000000),
                          borderRadius: BorderRadiusDirectional.circular(25.r),
                        ),
                        child: Center(
                          child: Text(
                            'Scan sensor',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 2.h,
                    width: double.infinity,
                    color: Color(0xFFEEEEEE),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 65.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/search.png',
                            height: 20.h,
                            width: 20.w,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Search Group',
                                hintStyle: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'poppins',
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          WifiCard(
                            onTap: () {
                              setState(() {
                                if (index == isSelected) {
                                  isSelected = -1;
                                } else {
                                  isSelected = index;
                                }
                              });
                            },
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          isSelected == index ? hideContainer() : Container(),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  hideContainer() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 25.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                            color: Color(0xFF08F0A9),
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Sensor set up',
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 60.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFFE1E1E1),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF08F0A9),
                            offset: Offset(-4.0, 0.0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                color: Color(0xFF838383),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'poppins',
                              ),
                            ),
                            Text(
                              'Enviro-XID3015',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'poppins',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 60.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFFE1E1E1),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Applications',
                              style: TextStyle(
                                color: Color(0xFF838383),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'poppins',
                              ),
                            ),
                            Image.asset(
                              'assets/images/downblackarrow.png',
                              height: 5.h,
                              width: 10.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      'Connect to wifi',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins',
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.w),
                child: Container(
                  height: 3.h,
                  width: double.infinity,
                  color: Color(0xFFEEEEEE),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 60.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFFE1E1E1),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.w,
                          right: 5.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Search WIFI network',
                              style: TextStyle(
                                color: Color(0xFF838383),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'poppins',
                              ),
                            ),
                            Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/search.png',
                                  height: 25.h,
                                  width: 25.w,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 60.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFFE1E1E1),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Enter SSID',
                            style: TextStyle(
                              color: Color(0xFF838383),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'poppins',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 60.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0xFFE1E1E1),
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.w,
                          right: 5.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Password',
                              style: TextStyle(
                                color: Color(0xFF838383),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'poppins',
                              ),
                            ),
                            Container(
                              height: 50.h,
                              width: 50.w,
                              decoration: BoxDecoration(
                                color: Color(0xFF08F0A9),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/images/true.png',
                                  height: 12.h,
                                  width: 17.w,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
}

class WifiCard extends StatelessWidget {
  final Function onTap;

  const WifiCard({Key key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Container(
        height: 75.h,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.60, 1],
            colors: [
              Color(0xFF121E2E),
              Color(0xFF4D2E56),
            ],
          ),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/Wifiicon.png',
                    height: 25.h,
                    width: 25.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Enviro-XID3015',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'poppins',
                    ),
                  ),
                ],
              ),
              Container(
                height: 35.h,
                width: 115.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFF2E6862),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Set-up',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'poppins',
                        ),
                      ),
                      Image.asset(
                        'assets/images/downarrow.png',
                        height: 5.h,
                        width: 10.w,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
