import 'package:chesa_app/models/artikel_models.dart';
import 'package:chesa_app/ui/pages/artikel_details.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class artikelpages2 extends StatefulWidget {
  artikelpages2({Key? key}) : super(key: key);

  @override
  State<artikelpages2> createState() => _artikelpages2State();
}

class _artikelpages2State extends State<artikelpages2> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(children: <Widget>[
        Container(
          height: size.height * .45,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            image: DecorationImage(
              image: AssetImage("assets/artikelbg2.png"),
            ),
          ),
        ),
      ]),
    );
  }
}
