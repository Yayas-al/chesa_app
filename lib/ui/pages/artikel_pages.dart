import 'package:chesa_app/models/artikel_models.dart';
import 'package:chesa_app/ui/pages/artikel_details.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class artikelPages extends StatefulWidget {
  const artikelPages({Key? key}) : super(key: key);

  @override
  State<artikelPages> createState() => _artikelPagesState();
}

class _artikelPagesState extends State<artikelPages> {
  //mengambil data dari artikel model ke list
  List<artikel> artikels = artikelList;
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
              "Cari dan temukan\nberbagai artikel dan tips kesehatan di sini",
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
                  hintText: "eg : Covid-19",
                  prefixIcon: Icon(Icons.search)),
              onChanged: searchArtikel,
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
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
                          height: 40,
                          width: 40,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
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
