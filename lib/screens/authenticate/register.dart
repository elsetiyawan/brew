import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  const Register({required this.toggleView});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Sign Up to Brew Crew'),
        actions: [
          TextButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: const Icon(Icons.person),
              label: const Text('Sign In'))
        ],
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
              child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: ((value) {
                  setState(() {
                    email = value;
                  });
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                onChanged: ((value) {
                  setState(() {
                    password = value;
                  });
                }),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  // ignore: avoid_print
                  print(email);
                  // ignore: avoid_print
                  print(password);
                },
                child: const Text('Sign Up'),
              )
            ],
          ))),
    );
  }
}
