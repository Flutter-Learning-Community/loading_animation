import 'package:flutter/material.dart';
import 'package:loading_animation/animation/cards.dart';

void main() => runApp(grid());

class grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leading: BackButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => list()),
                  );
                },
              ),
              title: Text("Gridview"),
            ),
            body: SafeArea(child: Center(child: GridWidget()))));
  }
}

class GridWidget extends StatefulWidget {
  GridViewState createState() => GridViewState();
}

class GridViewState extends State {
  num countValue = 2;

  num aspectWidth = 2;

  num aspectHeight = 1;

  List<String> gridItems = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen',
    'Twenty'
  ];

  getGridViewSelectedItem(BuildContext context, String gridItem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(gridItem),
          actions: <Widget>[
            FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: (aspectWidth / aspectHeight),
          children: gridItems
              .map((data) => GestureDetector(
                  onTap: () {
                    getGridViewSelectedItem(context, data);
                  },
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                      color: Colors.lightBlueAccent,
                      child: Center(
                          child: Text(data,
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                              textAlign: TextAlign.center)))))
              .toList(),
        ),
      ),
    ]));
  }
}
