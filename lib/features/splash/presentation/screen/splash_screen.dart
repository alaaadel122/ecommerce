// import 'package:ecommerce/features/presentation/screen/home_screen.dart';
import 'package:ecommerce/features/auth/presentation/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 5), (() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
              child: Image.asset(
            "images/background.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          )),
          Container(
              decoration: const BoxDecoration(
            color: Color.fromRGBO(247, 178, 65, 0.6),
          )),
          Center(child: Image.asset("images/logo.png")),
        ],
      ),
    );
  }
}
