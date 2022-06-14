import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/obat_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class jadwalobat extends StatelessWidget {
  const jadwalobat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget obattile() {
      return Container(
        margin: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
        child: Column(
          children: [
            Text(
              'Pagi',
              style: blackTextStyle.copyWith(
                  fontSize: 18.sp, fontWeight: semiBold),
            ),
            Obatjadwal(
              nameobat: 'PARACETAMOL',
              waktu: '07:00',
            ),
            Obatjadwal(
              nameobat: 'IBUPROFEN',
              waktu: '07:00',
            ),
            Obatjadwal(
              nameobat: 'ASPIRIN',
              waktu: '07:00',
            ),
            Obatjadwal(
              nameobat: 'NAPROXEN',
              waktu: '07:00',
            ),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            Text(
              'Siang',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            Obatjadwal(
              nameobat: 'PARAMEX',
              waktu: '12:00',
            ),
            Obatjadwal(
              nameobat: 'OSKADON',
              waktu: '12:00',
            ),
            Obatjadwal(
              nameobat: 'OBH-COMBI',
              waktu: '12:00',
            ),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            Text(
              'Malam',
              style: blackTextStyle.copyWith(
                  fontSize: 18.sp, fontWeight: semiBold),
            ),
            Obatjadwal(
              nameobat: 'PARACETAMOL',
              waktu: '21:00',
            ),
            Obatjadwal(
              nameobat: 'IBUPROFEN',
              waktu: '21:00',
            ),
            Obatjadwal(
              nameobat: 'ASPIRIN',
              waktu: '21:00',
            ),
            Obatjadwal(
              nameobat: 'NAPROXEN',
              waktu: '21:00',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: ScreenUtil().setHeight(70),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Jadwal Minum Obat',
          style: blackTextStyle.copyWith(fontSize: 18.sp, fontWeight: reguler),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: DatePicker(
              DateTime.now(),
              height: ScreenUtil().setHeight(100),
              width: ScreenUtil().setWidth(60),
              initialSelectedDate: DateTime.now(),
              selectionColor: kPrimaryColor,
              selectedTextColor: Colors.white,
              dateTextStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(570),
            width: ScreenUtil().setWidth(396),
            padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(24),
              right: ScreenUtil().setWidth(24),
            ),
            margin: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
            decoration: BoxDecoration(
              color: kBackgorundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.r),
                  topRight: Radius.circular(25)),
            ),
            child: ListView(
              children: [
                obattile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
