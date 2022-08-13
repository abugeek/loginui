import 'package:flutter/material.dart';

class TodoLoginUi extends StatefulWidget {
  const TodoLoginUi({Key? key}) : super(key: key);

  @override
  State<TodoLoginUi> createState() => _TodoLoginUiState();
}

class _TodoLoginUiState extends State<TodoLoginUi> {
  final Color mainPurple = Colors.purple.shade400;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 1, bottom: 60),
          child: Expanded(
            child: Container(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_circle,
                    size: 200,
                    color: Colors.purple.shade400,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Welcome !",
                        style: TextStyle(
                          color: Colors.purple.shade400,
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Sign in To Continue !",
                    style: TextStyle(
                      color: mainPurple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //email//
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            gapPadding: 5,
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        labelText: "Enter your email",
                        suffixIcon: const Icon(Icons.email),
                        errorStyle: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                  //password//
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              gapPadding: 5,
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20)),
                          labelText: "Enter your password",
                          suffixIcon: const Icon(Icons.lock)),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        color: mainPurple,
                      ),
                      height: 60,
                      width: 300,
                      alignment: const Alignment(0, 0.0),
                      child: const Text(
                        "Login",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
