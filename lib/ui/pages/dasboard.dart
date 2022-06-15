import 'package:chesa_app/models/obat_model.dart';
import 'package:chesa_app/ui/pages/artikel-pages2.dart';
import 'package:chesa_app/ui/pages/jadwal_obat.dart';
import 'package:chesa_app/ui/pages/obat_pages2.dart';
import 'package:chesa_app/ui/widgets/cardfitur.dart';
import 'package:chesa_app/ui/widgets/obat_tile.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

// ignore: camel_case_types
class dasboard extends StatelessWidget {
  const dasboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good  morning ',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: reguler,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Beluga',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/Profiile_baluga.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

// widget card chesa
    Widget Chesa() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 24),
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(17)),
          child: Row(
            //card
            children: [
              Container(
                height: 141,
                width: 113,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/doctorchesa.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              //howdoyou fell + cek disini button
              Expanded(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Apa yang kamu rasakan ?',
                            style: blackTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'cek gejalmu disini',
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: light,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    Container(
                      height: 35,
                      width: 150,
                      margin: EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/chesa');
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: kWhiteColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(defaultRadius),
                          ),
                        ),
                        child: Text(
                          'Start',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: reguler,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget fitur() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              fitur_card(
                name: 'Jadwal Konsumsi Obat',
                imageurl: 'assets/jadwal.png',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => jadwalobat(),
                    ),
                  );
                },
              ),
              fitur_card(
                name: 'Obat',
                imageurl: 'assets/obat.png',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => obatpages2(),
                    ),
                  );
                },
              ),
              fitur_card(
                name: 'Artikel',
                imageurl: 'assets/artikel.png',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => artikelpages2(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );
    }

    Widget fiturtext() {
      return Container(
        margin: EdgeInsets.only(top: 45),
        padding: EdgeInsets.only(left: 24),
        child: Text(
          'Asistant',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgorundColor,
      body: ListView(
        children: [
          header(),
          Chesa(),
          fiturtext(),
          fitur(),
        ],
      ),
    );
  }
}
