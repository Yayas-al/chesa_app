import 'package:chesa_app/models/obat_model.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class obatDetail extends StatelessWidget {
  final obatModel obat;

  const obatDetail({Key? key, required this.obat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgorundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(obat.imageUrls), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.45),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kBackgorundColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      child: Container(
                        width: 150,
                        height: 7,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(78, 68, 137, 255),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      obat.obat_title,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: reguler, height: 1.5),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      obat.obat_deskripsi,
                      style: blackTextStyle.copyWith(fontSize: 12),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      obat.obat_komposisi,
                      style: blackTextStyle.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      obat.obat_rule,
                      style: blackTextStyle.copyWith(fontSize: 12),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
