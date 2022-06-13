import 'package:chesa_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Obatjadwal extends StatelessWidget {
  final String nameobat;
  final String waktu;
  const Obatjadwal({Key? key, required this.nameobat, required this.waktu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: ScreenUtil().setHeight(15),
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18.r),
      ),
      child: Row(
        children: [
          Container(
            height: ScreenUtil().setHeight(50),
            width: ScreenUtil().setWidth(50),
            margin: EdgeInsets.only(right: ScreenUtil().setHeight(45)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.r),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/noto_pill.png'),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                nameobat,
                style: blackTextStyle.copyWith(
                    fontSize: 14.sp, fontWeight: reguler),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  waktu,
                  style: blackTextStyle.copyWith(
                      fontSize: 14.sp, fontWeight: reguler),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
