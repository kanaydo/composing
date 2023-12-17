import 'package:composing/page_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: Text('Ke Halaman Dua'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PageTwo()));
        },
      )),
    );
  }
}
