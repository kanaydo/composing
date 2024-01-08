import 'package:composing/main.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  PageOne({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                label: Text('username')
              ),
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                label: Text('password')
              ),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {
                final username = usernameController.text;
                final password = passwordController.text;
        
                if (username == 'user' && password == '12345') {
                  final snackbar = SnackBar(
                    backgroundColor: Colors.green,
                    content: Text('Login Berhasil')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'Chat')
                  ));
                } else {
                  final snackbar = SnackBar(
                    backgroundColor: Colors.red,
                    content: Text('Login Gagal')
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }
              }, 
              child: Text('Login')
            )
          ],
        ),
      )
    );
  }
}
