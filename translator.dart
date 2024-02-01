import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class translator extends StatefulWidget {
  const translator({super.key});

  @override
  State<translator> createState() => _translatorState();
}

class _translatorState extends State<translator> {
  String trans="translated text";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 60,
              width: 300,
              child: TextFormField(
                onChanged: (value)async{
                 final translation= await value.translate(
                    to: "ur"
                  );
                  setState(() {
                    trans=translation.text;
                  });
                },
                decoration: InputDecoration(
                  hintText: "Enter a word"
                ),
              ),
            ),SizedBox(height: 20,),
            Center(child: Text(trans,style: TextStyle(color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}
