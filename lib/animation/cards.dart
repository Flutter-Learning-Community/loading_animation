import 'package:flutter/material.dart';
import 'package:loading_animation/animation/grid.dart';
import 'package:loading_animation/animation/loading.dart';
import 'package:loading_animation/animation/multipleloading.dart';

class list extends StatelessWidget {
  list({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cards'),
        ),
        body: ListView(
          children: [
            Card(
                child: ListTile(
              title: Text("Loading Animation"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loading_animation()),
                );
              },
            )),
            Card(
                child: ListTile(
              title: Text("Single Loading"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => single_loading()),
                );
              },
            )),
            Card(
              child: ListTile(
                title: Text("GridView"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => grid()),
                  );
                },
              ),
            ),
          ],
          padding: EdgeInsets.all(10),
        ));
  }
}
