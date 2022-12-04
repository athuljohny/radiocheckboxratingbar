import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Radios(),
  ));
}

class Radios extends StatefulWidget {
  @override
  State<Radios> createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  String? gender;
  String? status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          Center(
            child: Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "YOUR GENDER",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: const Text("Male"),
                    leading: Radio(
                      activeColor: Colors.black,
                      value: "male",
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text("Female"),
                    leading: Radio(
                      activeColor: Colors.black,
                      value: 'female',
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Container(
            child: Column(
              children: [
                const Text(
                  'Current Status',
                  style: TextStyle(fontSize: 20),
                ),
                RadioListTile(
                    title: Text("Married"),
                    value: "married",
                    groupValue: status,
                    onChanged: ((String? value) {
                      setState(() {
                        status = value;
                      });
                    })),
                RadioListTile(
                    title: Text("UnMarried"),
                    value: "unmarried",
                    groupValue: status,
                    onChanged: ((String? value) {
                      setState(() {
                        status = value;
                      });
                    }))
              ],
            ),
          )
        ],
      ),
    );
  }
}
