import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => Scaffold(
        body: Column(
          children: <Widget>[
            ClipPath(
              clipper: Myclipper(),
              child: Container(
                height: 510.h,
                width: double.infinity,
                color: kPrimaryColor,
                child: Stack(children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/startimage.png'),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Your  bot health secertary ',
                    style: blackTextStyle.copyWith(
                      fontSize: 20.sp,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Kenali gejala awal penyakit anda dengan\n robot pintar ',
                    style: blackTextStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 40.h,
                    width: 232.w,
                    margin: EdgeInsets.only(
                      top: 50.h,
                      bottom: 57.h,
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(defaultRadius),
                        ),
                      ),
                      child: Text(
                        'Start',
                        style: blackTextStyle.copyWith(
                          fontSize: 16.sp,
                          fontWeight: reguler,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
