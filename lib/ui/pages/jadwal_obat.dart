import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import '../widgets/obat_tile.dart';

class jadwalobat extends StatelessWidget {
  const jadwalobat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget obattile() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              'Pagi',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
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
              height: 16,
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
              height: 16,
            ),
            Text(
              'Malam',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
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
        toolbarHeight: 70,
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Jadwal Minum Obat',
          style: blackTextStyle.copyWith(fontSize: 18, fontWeight: reguler),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: DatePicker(
              DateTime.now(),
              height: 100,
              width: 80,
              initialSelectedDate: DateTime.now(),
              selectionColor: kPrimaryColor,
              selectedTextColor: Colors.white,
              dateTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          Container(
            height: 620,
            width: 396,
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: kBackgorundColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
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
