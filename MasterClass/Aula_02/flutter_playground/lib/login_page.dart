import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('../lib/assets/logos/money.png'),
              width: 100,
            ),
            Container(height: 30),
            const Text(
              'Get your Money\nUnder Control',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(height: 20),
            const Text(
              'Manage your expenses.\nSeamlessly.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white60,
              ),
            ),
            Container(height: 80),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff5e5ce5)),
                onPressed: () {},
                child: const Text('Sign Up with Email ID'),
              ),
            ),
            Container(height: 15),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black,
                  primary: Colors.white,
                ),
                onPressed: () {},
                label: const Text('Sign Up with Google',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                icon: const Image(
                  image: AssetImage('../lib/assets/logos/google.png'),
                  width: 17,
                ),
              ),
            ),
            Container(height: 50),
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(text: 'Already have an account?'),
                  TextSpan(text: ' '),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
