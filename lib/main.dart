import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
      home: UniqueID(),
    ));

class UniqueID extends StatefulWidget {
  @override
  _UniqueIDState createState() => _UniqueIDState();
}

class _UniqueIDState extends State<UniqueID> {
  int uniqueIDNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text('UniqueID'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[700],
        elevation: 0.0,
      ),
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
            onPressed: () {
              setState(() {
                uniqueIDNumber += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.yellow),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                uniqueIDNumber -= 1;
              });
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.yellow),
      ]),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/avatar2.png'),
                backgroundColor: Colors.transparent,
                radius: 40.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.transparent,
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
            ),
            SizedBox(height: 5.0),
            Text('UGONWA CHIDERA',
                style: TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
            Text(
              'UniqueID NUMBER',
              style: TextStyle(color: Colors.white, letterSpacing: 2.0),
            ),
            SizedBox(height: 5.0),
            Text('$uniqueIDNumber',
                style: TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(Icons.email, color: Colors.white),
                SizedBox(width: 5.0),
                Text(
                  'austinugonwa@samplemail.co.ng',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
