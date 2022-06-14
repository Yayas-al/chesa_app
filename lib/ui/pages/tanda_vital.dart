import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../models/artikel_models.dart';
import '../../shared/theme.dart';

class tandaVital extends StatefulWidget {
  tandaVital({Key? key}) : super(key: key);

  @override
  State<tandaVital> createState() => _tandaVitalState();
}

class _tandaVitalState extends State<tandaVital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: ScreenUtil().setHeight(70),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(),
    );
  }
}
