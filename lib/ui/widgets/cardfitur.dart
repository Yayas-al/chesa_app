import 'package:chesa_app/ui/pages/jadwal_obat.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class fitur_card extends StatelessWidget {
  final String name;
  final String imageurl;
  final VoidCallback press;

  const fitur_card(
      {Key? key,
      required this.name,
      required this.imageurl,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 200,
        height: 323,
        margin: EdgeInsets.only(left: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              width: 180,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageurl),
                ),
                borderRadius: BorderRadius.circular(17),
              ),
            ),
            Container(
              child: Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
