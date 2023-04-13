import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FirstClass extends StatefulWidget {
  const FirstClass({super.key});

  @override
  State<FirstClass> createState() => _FirstClassState();
}

class _FirstClassState extends State<FirstClass> {
  bool loadmydata = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double widht = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Data Row class '),
      ),
      body: Container(
        height: height,
        width: widht,
        child: DataTable(
          dividerThickness: 1,
          dataRowColor: MaterialStateProperty.all(Colors.cyan),
          columns: <DataColumn>[
            DataColumn(numeric: false, label: Expanded(child: Text('Name'))),
            DataColumn(
              label: Expanded(child: Text('Father Name')),
            ),
            DataColumn(
              label: Expanded(
                child: Text(
                  'Role',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ],
          rows: [
            DataRow(
                color: MaterialStateProperty.all(Colors.amber),
                selected: false,
                cells: <DataCell>[
                  DataCell(Text('Khubab')),
                  DataCell(Text('Muhammd Ramzann')),
                  DataCell(Text('Student')),
                ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('Qadeer Hussain ')),
              DataCell(Text('Muhamad Ramzan')),
              DataCell(Text('Teacher')),
            ]),
          ],
        ),
      ),
    );
  }
}
