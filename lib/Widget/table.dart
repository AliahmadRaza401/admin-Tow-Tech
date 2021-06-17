import 'package:flutter/material.dart';

class Table extends StatefulWidget {
  // const Table({Key? key}) : super(key: key);

  @override
  _TableState createState() => _TableState();
}

class _TableState extends State<Table> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          child: Table(
              border: TableBorder.all(), // Allows to add a border decoration around your table
              children: [
                TableRow(children :[
                  Text('Year'),
                  Text('Lang'),
                  Text('Author'),
                ]),
                TableRow(children :[
                  Text('2011',),
                  Text('Dart'),
                  Text('Lars Bak'),
                ]),
                TableRow(children :[
                  Text('1996'),
                  Text('Java'),
                  Text('James Gosling'),
                ]),
              ]
          ),
        ),
      ]),
    );
  }
}
