import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecondClass extends StatefulWidget {
  const SecondClass({super.key});

  @override
  State<SecondClass> createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text('Table Screen')),
      body: Container(
        height: height,
        width: width,
        child: Table(children: <TableRow>[
          TableRow(children: [
            Column(
                children: [Text('Website', style: TextStyle(fontSize: 20.0))]),
            Column(
                children: [Text('Tutorial', style: TextStyle(fontSize: 20.0))]),
            Column(
                children: [Text('Review', style: TextStyle(fontSize: 20.0))]),
          ]),
          TableRow(children: [
            Column(
                children: [Text('xskhubab', style: TextStyle(fontSize: 20.0))]),
            Column(children: [
              Text('Bahawalpur', style: TextStyle(fontSize: 20.0))
            ]),
            Column(
                children: [Text('flutter ', style: TextStyle(fontSize: 20.0))]),
          ]),
          TableRow(children: [
            Column(
                children: [Text('git hub', style: TextStyle(fontSize: 20.0))]),
            Column(
                children: [Text(' linkdin', style: TextStyle(fontSize: 20.0))]),
            Column(children: [
              Text('flutter community', style: TextStyle(fontSize: 20.0))
            ]),
          ]),
        ]),
      ),
    );
  }
}
