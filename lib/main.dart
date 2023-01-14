import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = 'Text';

  // void tombolDiTekan() {
  //   setState(() {
  //     message = 'Tombol sudah ditekan';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymous Method'),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(message),
              ElevatedButton(
                child: Text('Tekan Saya'),
                onPressed: () {
                  setState(() {
                    message = 'Tombol sudah ditekan';
                  });
                },
              )
            ])),
      ),
    );
  }
}
