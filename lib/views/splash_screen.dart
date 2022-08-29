// ignore_for_file: unnecessary_import, implementation_imports

import 'dart:async';

import 'package:firebase_demo/views/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignUpPage())));
    return const Scaffold(
        body: Center(
      child: CircularProgressIndicator(),
    ));
  }
}
