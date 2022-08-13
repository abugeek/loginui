import 'package:flutter/material.dart';

class CoderSignInScreen extends StatelessWidget {
  CoderSignInScreen({
    Key? key,
  }) : super(key: key);
  final kBackgroundColor = const Color(0xff202020);
  final kPrimaryColor = const Color(0xff03c03c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_3.jpg'),
                  fit: BoxFit.fill,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  kPrimaryColor)),
                          onPressed: () {},
                          child: const Text('SIGN UP'),
                          // 'SIGN UP',
                          // style: Theme.of(context).textTheme.button,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(
                              Icons.alternate_email,
                              color: kPrimaryColor,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              cursorColor: kPrimaryColor,
                              decoration: InputDecoration(
                                  hintText: 'Email', fillColor: Colors.white),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Icon(
                            Icons.lock,
                            color: kPrimaryColor,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: kPrimaryColor,
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Password', fillColor: Colors.white),
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 85),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            child: Icon(
                              Icons.facebook_sharp,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white.withOpacity(.5),
                              ),
                            ),
                            child: Icon(
                              Icons.discord_sharp,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kPrimaryColor,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              color: Colors.black,
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
