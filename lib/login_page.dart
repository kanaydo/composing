import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('username'),
                hintText: 'username'
              ),
            ),
            TextField(
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
                onPressed: () {},
                child: Text('login')
            )
          ],
        ),
      ),
    );
  }
}
