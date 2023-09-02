import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Study to Container'),
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        //color: Colors.amberAccent.shade100,
        padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        // margin: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
        // BoxDecoration이 있는 경우 color가 밖에 없어야 함
        decoration: BoxDecoration(
          color: Colors.amberAccent.shade100,
          border: Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black, offset: Offset(6, 6), blurRadius: 10, spreadRadius: 10),
            BoxShadow(color: Colors.blue.shade100, offset: Offset(-6, -6), blurRadius: 10, spreadRadius: 10),
          ]
        ),
        child: Center(
            child: Container(
              color: Colors.greenAccent,
              child: Text('Hello Container'))),
      ),
    );
  }
}
