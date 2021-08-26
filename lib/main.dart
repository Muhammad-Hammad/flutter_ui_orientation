import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrientationList(title: "My Title is Title"),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;
  const OrientationList({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item #$index',
                  style: Theme.of(context).textTheme.headline3,
                ),
              );
            }),
          );
        }));
  }
}
