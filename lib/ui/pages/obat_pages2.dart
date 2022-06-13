import 'package:chesa_app/models/obat_model.dart';
import 'package:chesa_app/ui/pages/obat_detail_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/theme.dart';

class obatpages2 extends StatefulWidget {
  const obatpages2({Key? key}) : super(key: key);

  @override
  State<obatpages2> createState() => _obatpages2State();
}

class _obatpages2State extends State<obatpages2> {
  List<obatModel> drug = obatList;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    Widget header() {
      return Container(
        height: size.height * .35,
        color: kpurplecream,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: ScreenUtil().setWidth(216),
                  right: ScreenUtil().setWidth(24),
                  bottom: ScreenUtil().setHeight(40)),
              height: double.infinity,
              width: ScreenUtil().setWidth(120),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/artikelbg2.png'))),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "ARTIKEL",
                      style: blackTextStyle.copyWith(
                          fontSize: 19.sp, fontWeight: bold),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Text(
                      "Temukan berbagai artikel tentang :\nKesehatan, Gaya Hidup, Tips ",
                      style: blackTextStyle.copyWith(
                          fontSize: 10.sp, fontWeight: reguler),
                    ),
                    SizedBox(
                      height: size.height * .08,
                    ),
                    SizedBox(
                      width: size.width * .5,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: kWhiteColor,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.r),
                                borderSide: BorderSide.none),
                            hintText: "eg : Covid-19",
                            prefixIcon: Icon(Icons.search)),
                        onChanged: searchObat,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget obatlist() {
      return Container(
        margin: EdgeInsets.only(top: size.height * .25),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: drug.length,
                    itemBuilder: (context, index) {
                      final obatModel = drug[index];
                      return Card(
                        child: ListTile(
                          title: Text(obatModel.obat_title),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => obatDetail(
                                  obat: obatModel,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kpurplecream,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(children: <Widget>[header(), obatlist()]),
    );
  }

  void searchObat(String query) {
    // ignore: avoid_types_as_parameter_names
    final suggestions = obatList.where((obat) {
      final obatTitle = obat.obat_title.toLowerCase();
      final input = query.toLowerCase();

      return obatTitle.contains(input);
    }).toList();
    setState(() => drug = suggestions);
  }
}
