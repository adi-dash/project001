import 'package:flutter/material.dart';
import 'homepage_AJYA.dart';
import 'signup_AJYA.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.green,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      textTheme: TextTheme( 
        bodyMedium: TextStyle(
          fontSize: 18,
          color: Colors.amberAccent,
        ),
      ),
    ),
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo')),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => homepage_AJYA()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter both username and password'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/image.webp',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        Text(
          'Sign In',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text('Please enter your details'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _handleLogin,
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                ),
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
