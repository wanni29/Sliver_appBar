import 'package:flutter/material.dart';
import 'package:flutter_sliver_app/appbar/first_appbar.dart';
import 'package:flutter_sliver_app/appbar/second_appbar.dart';
import 'package:flutter_sliver_app/appbar/third_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: PageView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          //아 아이템 갯수만큼 뭔가 해주는 거구나 // builder 뜨면 이생각하면됨
          return Image.network(
            "https://picsum.photos/id/${index + 1}/200/300",
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
