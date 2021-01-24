import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                left: -100,
                child: Container(
                  child: Opacity(
                    opacity: 0.7,
                    child: Image.asset(
                      'assets/images/background.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(0, 0, 0, 0.7),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: Container(
                        child: Image.asset(
                          'assets/images/logo_white.png',
                          height: 260,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: Form(
                          onChanged: () {},
                          child: Column(
                            children: [
                              TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.mail_outline,
                                    color: Colors.orange[800],
                                    size: 35,
                                  ),
                                  filled: true,
                                  fillColor: Colors.black38,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black45,
                                          style: BorderStyle.solid)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black45,
                                          style: BorderStyle.solid)),
                                  hintText: 'johnDoe@email.com',
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      letterSpacing: 1),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextField(
                                obscureText: true,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.lock_outline_rounded,
                                    color: Colors.orange[800],
                                    size: 35,
                                  ),
                                  filled: true,
                                  fillColor: Colors.black38,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black45,
                                          style: BorderStyle.solid)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.black45,
                                          style: BorderStyle.solid)),
                                  hintText: '********',
                                  hintStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      letterSpacing: 1),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              SizedBox(
                                  width: 200,
                                  height: 50,
                                  child: FlatButton(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Text(
                                      'Sign in',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Roboto'),
                                    ),
                                    color: Colors.orange[800],
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Forgot password?',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Roboto',
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                  ),
                                  SizedBox(
                                    width: 200,
                                    height: 50,
                                    child: FlatButton(
                                      color: Colors.black38,
                                      onPressed: () {},
                                      child: Text(
                                        'New here? Sign Up',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'Roboto'),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
