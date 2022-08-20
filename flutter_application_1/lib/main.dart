import 'package:flutter/material.dart';
import 'package:flutter_application_1/signIn.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 24, 115, 190),
            ),
            child: Center(
                child: Column(
              children: const [
                SizedBox(height: 130),
                Text(
                  'Welcome to My Major',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  'Discover infomation about university',
                  style: TextStyle(color: Colors.white54, fontSize: 15),
                )
              ],
            )),
          ),
          const SizedBox(height: 350),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            child: Container(
                width: 170,
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 24, 115, 190),
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )),
          ),
          const SizedBox(height: 10),
          Container(
              width: 170,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 19, 91, 149)),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 19, 91, 149)),
                ),
              ))
        ],
      ),
    );
  }
}
