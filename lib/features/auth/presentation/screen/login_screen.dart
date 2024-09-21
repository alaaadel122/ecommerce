import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
        extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   backgroundColor: Colors.amber[600]?.withOpacity(0.5),
        //   leading: IconButton(
        //     icon: const Icon(Icons.arrow_back_ios,
        //         color: Color.fromARGB(255, 255, 255, 255)),
        //     onPressed: () => Navigator.of(context).pop(),
        //   ),
        //   // toolbarOpacity: 0.1,
        // ),
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
              color: Color.fromRGBO(247, 177, 65, 0.329),
            )),
            Padding(
              padding: const EdgeInsets.all(5),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 100, 0, 30),
                        child: Text(
                          "Welcome Back, \n Alaa",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 30),
                        child: Text(
                          "Login To your account using \n your mobilr number",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.normal,
                              fontSize: 18),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                            child: Container(
                              alignment: Alignment.center,
                              color: Color.fromARGB(141, 255, 255, 255),
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    labelText: "Email or Phone",
                                    contentPadding: EdgeInsets.all(10)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                            child: Container(
                              alignment: Alignment.center,
                              color: Color.fromARGB(141, 255, 255, 255),
                              child: TextField(
                                controller: passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    labelText: "Password",
                                    contentPadding: EdgeInsets.all(10)),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -100,
                            child: MaterialButton(
                              minWidth: 200,
                              padding: const EdgeInsets.all(15),
                              color: Colors.red,
                              onPressed: (() {}),
                              child: const Text(
                                "Log In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 21),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
