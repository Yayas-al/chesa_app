import 'package:chesa_app/models/artikel_models.dart';
import 'package:chesa_app/ui/pages/artikel_details.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class artikelpages2 extends StatefulWidget {
  artikelpages2({Key? key}) : super(key: key);

  @override
  State<artikelpages2> createState() => _artikelpages2State();
}

class _artikelpages2State extends State<artikelpages2> {
  //mengambil data dari artikel model ke list
  List<artikel> artikels = artikelList;
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
                        onChanged: searchArtikel,
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

    Widget List() {
      return Container(
        margin: EdgeInsets.only(top: size.height * .30),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Expanded(
                  child: ListView.builder(
                      itemCount: artikels.length,
                      itemBuilder: (context, index) {
                        final artikel = artikels[index];
                        return Card(
                          child: ListTile(
                            title: Text(artikel.artikel_title),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => artikelDetail(
                                    articels: artikel,
                                  ),
                                ),
                              );
                            },
                            leading: Image.network(
                              artikel.artikel_imageurls,
                              height: 40.h,
                              width: 40.w,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                ),
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
      body: Stack(children: <Widget>[
        header(),
        List(),
      ]),
    );
  }

  void searchArtikel(String query) {
    // ignore: avoid_types_as_parameter_names
    final suggestions = artikelList.where((artikels) {
      final artikelTitle = artikels.artikel_title.toLowerCase();
      final input = query.toLowerCase();

      return artikelTitle.contains(input);
    }).toList();
    setState(() => artikels = suggestions);
  }
}
