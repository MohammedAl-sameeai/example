import 'package:flutter/material.dart';

Text t = Text(
  "Helloooo fluttttter",
  textDirection: TextDirection.rtl,
  textAlign: TextAlign.center,
  style: TextStyle(
      // backgroundColor: Colors.amber,
      color: Colors.amber,
      fontSize: 23,
      fontWeight: FontWeight.w900,
      decoration: TextDecoration.none),
);
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: t,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 0; i < 15; i++)
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40))),
                  margin: EdgeInsets.only(bottom: 2),
                  width: 200,
                  height: 100,
                  child: Center(
                    child: t,
                  ),
                )
            ],
          ),
        ),
      ),
    ),
  ));
}
