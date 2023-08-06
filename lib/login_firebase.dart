// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:insta_clon/function/authFuction.dart';

class login_firebase extends StatefulWidget {
  const login_firebase({super.key});

  @override
  State<login_firebase> createState() => _login_firebaseState();
}

class _login_firebaseState extends State<login_firebase> {
  final _formKey = GlobalKey<FormState>();
  bool islogin = false;
  String Password = '';
  String email = '';
  String username = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email/Pass Auth'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !islogin
                  ? TextFormField(
                      key: ValueKey('username'),
                      decoration:
                          InputDecoration(hintText: ' Enter your username '),
                      validator: ((value) {
                        if (value.toString().length < 3) {
                          return 'username was to small';
                        } else {
                          return null;
                        }
                      }),
                      onSaved: (value) {
                        setState(() {
                          username = value!;
                        });
                      },
                    )
                  : Container(),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                key: ValueKey('email'),
                decoration: InputDecoration(hintText: ' Enter your email '),
                validator: ((value) {
                  if (!(value.toString().contains('@'))) {
                    return 'Invalid email';
                  } else {
                    return null;
                  }
                }),
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                key: ValueKey('Password'),
                decoration: InputDecoration(hintText: ' Enter your password '),
                validator: ((value) {
                  if (value.toString().length < 6) {
                    return 'password was to small';
                  } else {
                    return null;
                  }
                }),
                onSaved: (value) {
                  setState(() {
                    Password = value!;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      signup(email, Password);
                    }
                  },
                  child: !islogin ? Text('SignUp') : Text('Login'),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      islogin = !islogin;
                    }); //
                  },
                  child: islogin
                      ? Text("Don't have an account? Singin ")
                      : Text('Already Signed Up? Login'))
            ],
          ),
        ),
      ),
    );
  }
}
