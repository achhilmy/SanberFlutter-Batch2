import 'package:flutter/material.dart';

class HomeScreenPengayaan extends StatelessWidget {
  const HomeScreenPengayaan({super.key});

  @override
  Widget build(BuildContext context) {
    final data_object = [
      "https://images.yuktravel.com/images/upload/articles/big1/EifelTower.jpg",
      "https://images.yuktravel.com/images/upload/articles/big1/EifelTower.jpg",
      "https://images.yuktravel.com/images/upload/articles/big1/EifelTower.jpg",
      "https://images.yuktravel.com/images/upload/articles/big1/EifelTower.jpg"
    ];
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.alarm),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.add_shopping_cart)
                ],
              ),
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff54C5F8)),
            ),
            Text(
              "Hilmy",
              style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff01579B)),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  hintText: "Search"),
            ),
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.only(top: 10),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recomended Place"),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    child: GridView.builder(
                        itemCount: data_object.length,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200),
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.grey,
                            child: Center(
                                child: Image.network(data_object[index])),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
