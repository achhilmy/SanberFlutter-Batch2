import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data_object = [
      {
        "id": "1",
        "title": "Achmad Hilmy",
        "status": "on",
        "image_profile":
            "https://sanbercode.com/assets/img/identity/logo@2x.jpg"
      },
      {
        "id": "2",
        "title": "Muhammad Hilmy",
        "status": "on",
        "image_profile":
            "https://sanbercode.com/assets/img/identity/logo@2x.jpg"
      },
      {
        "id": "3",
        "title": "Abdul Hilmy",
        "status": "off",
        "image_profile":
            "https://sanbercode.com/assets/img/identity/logo@2x.jpg"
      },
      {
        "id": "4",
        "title": "Firdaus Hilmy",
        "status": "off",
        "image_profile":
            "https://sanbercode.com/assets/img/identity/logo@2x.jpg"
      }
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Example ListView",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 10),
        child: ListView.separated(
            itemCount: data_object.length,
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  if (kDebugMode) {
                    print(data_object[index]["id"]);
                  }
                },
                child: ListTile(
                  leading: Image.network(
                    data_object[index]["image_profile"].toString(),
                  ),
                  title: Text(data_object[index]["title"].toString()),
                  subtitle: Text(data_object[index]["status"].toString()),
                  trailing: IconButton(
                    icon: const Icon(Icons.arrow_circle_right),
                    onPressed: () {},
                  ),
                ),
              );
            }),
      ),
    );
  }
}
