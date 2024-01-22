import 'package:flutter/material.dart';
import 'package:sanber_campus/materi10/button_widget.dart';

class StylingPage extends StatelessWidget {
  const StylingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Halaman Styling")),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            Container(
                color: Colors.blue,
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  title: Text("Nama : Achmad Hilmy"),
                  subtitle: Text("Email : Achmad@gmail.com"),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              height: 80,
              width: MediaQuery.of(context).size.width / 1,
              color: Colors.red,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Nama: Achma`d Hilmy"),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SizedBox(height: 10),
            ButtonWidget(
              title: "Button Submit",
            ),
            SizedBox(height: 10),
            ButtonWidget(
              title: "Button Edit",
            ),
          ],
        ),
      ),
    );
  }
}
