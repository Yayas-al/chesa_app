// ignore_for_file: camel_case_types

import 'package:chesa_app/models/obat_model.dart';
import 'package:chesa_app/ui/pages/obat_detail_pages.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class obatPage extends StatefulWidget {
  const obatPage({Key? key}) : super(key: key);

  @override
  State<obatPage> createState() => _obatPageState();
}

class _obatPageState extends State<obatPage> {
  List<obatModel> drug = obatList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgorundColor,
      appBar: AppBar(
        backgroundColor: kBackgorundColor,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kumpulan Obat",
              style: blackTextStyle.copyWith(fontSize: 22, fontWeight: bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: kWhiteColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none),
                hintText: "eg:IBUPROFEN",
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: searchObat,
            ),
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
