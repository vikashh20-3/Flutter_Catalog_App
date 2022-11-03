import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:third/utils/routes.dart';

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 110.0,
              ),
              Image.asset(
                "assets/login_image.png",
                // height: 330,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                          hintText: "Enter Your username",
                          labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          changebutton = true;
                        });
                        Navigator.pushNamed(context, MyRoutes.homepageroute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 5),

                        height: 40,
                        // color: Colors.deepPurpleAccent,
                        width: changebutton ? 50 : 150,
                        alignment: Alignment.center,
                        child: new Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w100),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homepageroute);
                    //   },
                    //   child: new Text("Login"),
                    //   style: TextButton.styleFrom(
                    //       backgroundColor: Colors.cyan,
                    //       minimumSize: Size(50, 40)),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
