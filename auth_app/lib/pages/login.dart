import 'package:auth_app/pages/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // Textfield controller
  final TextEditingController _umailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _loginAction() {
    // Retrieve text from textfield
    String umail = _umailController.text.trim();
    String pass = _passwordController.text.trim();

    if (umail.isNotEmpty && pass.isNotEmpty) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (contex) => const Home()));
    } else {
      showDialog(
        context: context,
        builder: (BuildContext contex) {
          return AlertDialog(
            title: const Text('Login failed.'),
            content: const Text("Email or Passowrd can't be empty"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.purple),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 32,
        ),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.deepPurple[400],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "lib/images/signin.png",
                  height: 180,
                ),
                const Column(
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Login to your account",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: _umailController,
                      decoration: InputDecoration(
                        labelText: "Username or Email",
                        prefixIcon: const Icon(Icons.person_2_rounded),
                        prefixIconColor: Colors.deepPurple,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        filled: true,
                        floatingLabelStyle: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500,
                          backgroundColor: Colors.white70,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.password_rounded),
                        prefixIconColor: Colors.deepPurple,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        filled: true,
                        floatingLabelStyle: TextStyle(
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w500,
                          backgroundColor: Colors.white70,
                        ),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: _loginAction,
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
