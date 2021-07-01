import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  // getData() {
  //   var collection = FirebaseFirestore.instance.collection('Users');
  //   collection.snapshots().listen((querySnapshot) {
  //     for (var doc in querySnapshot.docs) {
  //       Map<String, dynamic> data = doc.data();
  //       print(data[1]);
  //     }
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;

    return StreamBuilder(
        stream: db.collection("Users").snapshots(),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? Text('PLease Wait')
              : ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot products = snapshot.data.docs[index];
                    return Text(products['Number']);
                  },
                );
        });
  }
}
