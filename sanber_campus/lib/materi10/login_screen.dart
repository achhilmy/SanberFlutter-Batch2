import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "SanberFlutter",
            style: TextStyle(
                color: Color(0xff54C5F8),
                fontSize: 30,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 20),
          Image.network(
            "https://web-strapi.mrmilu.com/uploads/flutter_logo_470e9f7491.png",
            height: 100,
            width: 100,
          ),
          const SizedBox(height: 20),
          const TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.0),
                ),
                hintText: "Username"),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 0.0),
                ),
                hintText: "Password"),
          ),
          TextButton(onPressed: () {}, child: const Text('Forgot Password')),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Login"),
            ),
          ),
          Row(
            children: [
              const Text("Dont have account?"),
              TextButton(onPressed: () {}, child: const Text("Register"))
            ],
          )
        ]),
      ),
    );
  }
}
