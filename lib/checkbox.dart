import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Checkboxs(),
  ));
}

class Checkboxs extends StatefulWidget {
  @override
  State<Checkboxs> createState() => _CheckboxsState();
}

class _CheckboxsState extends State<Checkboxs> {
  bool? isChecked = false;
  bool? isChecked1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
                tristate: true,
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CheckboxListTile(
                  tileColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  title: Text("Notification"),
                  subtitle: Text("On or off"),
                  value: isChecked1,
                  onChanged: (value) {
                    setState(() {
                      isChecked1 = value;
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
