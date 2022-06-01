import 'package:chesa_app/shared/theme.dart';
import 'package:flutter/material.dart';

class Obatjadwal extends StatelessWidget {
  final String nameobat;
  final String waktu;
  const Obatjadwal({Key? key, required this.nameobat, required this.waktu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.only(right: 45),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
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
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: reguler),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  waktu,
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: reguler),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
