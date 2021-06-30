import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DriverData extends StatelessWidget {
  // const RecordTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          child: Table(
              columnWidths: {
                0: FractionColumnWidth(0.2),
                1: FractionColumnWidth(0.16),
                2: FractionColumnWidth(0.16),
                3: FractionColumnWidth(0.16),
                4: FractionColumnWidth(0.16),
                5: FractionColumnWidth(0.06)
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
              border: TableBorder.all(width: 2.0, color: Colors.white12),
              textDirection: TextDirection.rtl,
              children: [
                TableRow(
                    decoration: new BoxDecoration(color: Colors.blue),
                    children: [
                      Center(child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text("Status", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),)
                      )),
                      Center(child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text('Location', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),))),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Vehicle Number', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Phone Number', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Name', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('No.', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      )),
                    ]),
                TableRow(
                    decoration: new BoxDecoration(color: Colors.white24),
                    children: [
                      Center(child:  Padding(
                        padding: const EdgeInsets.symmetric(vertical:15),
                        child: RaisedButton(
                          color: Colors.green,
                          child: Text('Available'),
                          onPressed: () => null,
                        ),
                      ),),
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child:Text("Bahria Town, Lahore",style: TextStyle(
                            color: Colors.white
                        ),))),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('LEX 2354', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('03018948401', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Ali Raza', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('1', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                    ]),
                TableRow(
                    decoration: new BoxDecoration(color: Colors.white24),
                    children: [
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child:  RaisedButton(
                          color: Colors.green,
                          child: Text('Available'),
                          onPressed: () => null,
                        ),
                      )),
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text("Johar Town, Lahore",style: TextStyle(
                            color: Colors.white
                        ),)
                        // Image.asset("assets/png/location.png",width: 50,height: 30,)
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('LEX 8900', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('03023543656', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Ahsan ali', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('2', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                    ]),
                TableRow(
                    decoration: new BoxDecoration(color: Colors.white24),
                    children: [
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child:  RaisedButton(
                          color: Colors.red,
                          child: Text('Booked'),
                          onPressed: () => null,
                        ),
                      )),
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child:  Text("Link Road, Lahore",style: TextStyle(
                            color: Colors.white
                        ),),)),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('LEX 5467', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('03018934567', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Masoom Raza', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('3', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                    ]),
                TableRow(
                    decoration: new BoxDecoration(color: Colors.white24),
                    children: [
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child:  RaisedButton(
                          color: Colors.green,
                          child: Text('Available'),
                          onPressed: () => null,
                        ),
                      )),
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text("Kasur",style: TextStyle(
                            color: Colors.white
                        ),))),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('LEX 5678', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('03018923456', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Rashid Ali', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('4', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                    ]),
                TableRow(
                    decoration: new BoxDecoration(color: Colors.white24),
                    children: [
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: RaisedButton(
                          color: Colors.red,
                          child: Text('Booked'),
                          onPressed: () => null,
                        ),
                      )),
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child:Text("Islamabad",style: TextStyle(
                            color: Colors.white
                        ),),)),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('LEC 5354', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('03028948234', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('M Khalil', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('5', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                    ]),
                TableRow(
                    decoration: new BoxDecoration(color: Colors.white24),
                    children: [
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child:   RaisedButton(
                          color: Colors.green,
                          child: Text('Available'),
                          onPressed: () => null,
                        ),
                      )),
                      Center(child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child:  Text("Township, Lahore",style: TextStyle(
                            color: Colors.white
                        ),))),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('LEX 2354', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('0302348401', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('Ahmad Raza', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                      Center(child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('6', style: TextStyle(
                          color: Colors.white,
                        ),),
                      )),
                    ]),
              ]),
        ),
      ]),
    );
  }
}
