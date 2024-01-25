import 'package:flutter/material.dart';
import 'package:sanber_campus/materi10/button_widget.dart';

class StylingPage extends StatelessWidget {
  const StylingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Styling")),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            Container(
                color: Colors.blue,
                margin: const EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  title: const Text("Nama : Achmad Hilmy"),
                  subtitle: const Text("Email : Achmad@gmail.com"),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                )),
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
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
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Nama: Achma`d Hilmy"),
                  const Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const SizedBox(height: 10),
            const ButtonWidget(
              title: "Button Submit",
            ),
            const SizedBox(height: 10),
            const ButtonWidget(
              title: "Button Edit",
            ),
          ],
        ),
      ),
    );
  }
}
