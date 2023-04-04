//Bottom sheet
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Sheet Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Sheet Demo'),
        ),
        body: Builder(
          builder: (BuildContext context) {
            return Center(

              child: ElevatedButton(
                child: Text('Open Bottom Sheet'),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 200.0,
                        child: Center(
                          child: Text('This is a bottom sheet'),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}