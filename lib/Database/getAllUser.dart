import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetAllUser extends StatefulWidget {
  // GetAllUser({Key? key}) : super(key: key);

  @override
  _GetAllUserState createState() => _GetAllUserState();
}

class _GetAllUserState extends State<GetAllUser> {
  final db = FirebaseFirestore.instance;

  updateDataIntoDatabase(id, status) {
    try {
      db.collection("Users").doc(id).update({
        "Status": status,
      }).then((_) {
        print("success!");
      });
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            // margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
            child: Table(
                columnWidths: {
                  0: FractionColumnWidth(0.16),
                  1: FractionColumnWidth(0.13),
                  2: FractionColumnWidth(0.13),
                  3: FractionColumnWidth(0.13),
                  4: FractionColumnWidth(0.13),
                  5: FractionColumnWidth(0.13),
                  6: FractionColumnWidth(0.13),
                  7: FractionColumnWidth(0.06)
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                border: TableBorder.all(width: 2.0, color: Colors.white12),
                textDirection: TextDirection.rtl,
                children: [
                  TableRow(
                      decoration: new BoxDecoration(color: Colors.blue),
                      children: [
                        Center(
                            child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  "Service Type",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))),
                        Center(
                            child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  'Location',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Vehicle Number',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Vehicle Name',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Brand',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Full Name',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'No.',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      ]),
                ]),
          ),
          // Live Data
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 400,
            child: StreamBuilder(
                stream: db.collection("Users").snapshots(),
                builder: (context, snapshot) {
                  return !snapshot.hasData
                      ? Text(
                          "Please wait..",
                          style: TextStyle(color: Colors.yellow),
                        )
                      : ListView.builder(
                          itemCount: snapshot.data.docs.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot document =
                                snapshot.data.docs[index];
                            print(index);
                            return Table(
                                columnWidths: {
                                  0: FractionColumnWidth(0.16),
                                  1: FractionColumnWidth(0.13),
                                  2: FractionColumnWidth(0.13),
                                  3: FractionColumnWidth(0.13),
                                  4: FractionColumnWidth(0.13),
                                  5: FractionColumnWidth(0.13),
                                  6: FractionColumnWidth(0.13),
                                  7: FractionColumnWidth(0.06)
                                },
                                defaultVerticalAlignment:
                                    TableCellVerticalAlignment.bottom,
                                border: TableBorder.all(
                                    width: 2.0, color: Colors.white12),
                                textDirection: TextDirection.rtl,
                                children: [
                                  TableRow(
                                      decoration: new BoxDecoration(
                                          color: Colors.white24),
                                      children: [
                                        Center(
                                            child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15),
                                                child: Text(
                                                  document["Services"],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))),
                                        Center(
                                            child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 15),
                                                child: Text(
                                                  'Location',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ))),
                                        Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Text(
                                            document['Vehicale_LEX'] +
                                                " " +
                                                document['Vehicale_Number'],
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                        Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Text(
                                            document['Sub_Vehicale'],
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                        Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Text(
                                            document['Vehicale'],
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                        Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Text(
                                            document['Number'],
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                        Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Text(
                                            document['First Name'],
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                        Center(
                                            child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Text(
                                            index.toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                      ]),
                                ]);
                          },
                        );
                }),
          ),
        ],
      ),
    );
  }

  Widget statusBtn(id) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              ElevatedButton(
                child: Text('Approve'),
                onPressed: () {
                  updateDataIntoDatabase(id, "Approved");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(
                      fontSize: 12,
                    )),
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                child: Text('Reject'),
                onPressed: () {
                  updateDataIntoDatabase(id, "Rejected");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    textStyle: TextStyle(
                      fontSize: 12,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
