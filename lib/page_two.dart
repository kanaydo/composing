import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Kembali Ke Halaman Satu'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
