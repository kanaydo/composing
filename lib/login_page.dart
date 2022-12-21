import 'package:composing/main.dart';
import 'package:composing/session.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final session = Session();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                label: Text('username'),
                hintText: 'username'
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  label: Text('password'),
                  hintText: 'password'
              ),
            ),
            SizedBox(height: 16,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50)
              ),
              onPressed: () {
                final username = usernameController.text;
                final password = passwordController.text;

                if (username == 'user' && password == '123456') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('login berhasil'),
                      backgroundColor: Colors.green,
                    )
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyPage()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('username atau password salah'),
                        backgroundColor: Colors.red,
                      )
                  );
                }
              },
              child: Text('login')
            )
          ],
        ),
      ),
    );
  }
}
