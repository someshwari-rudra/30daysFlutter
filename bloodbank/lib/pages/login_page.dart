import 'package:bloodbank/utils/routes.dart';
import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool ChangeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        ChangeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MYRoutes.homeRoute);
      setState(() {
        ChangeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "welcome $name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter User Name",
                        labelText: "User Name",
                      ),
                      validator: (Value) {
                        if (Value!.isEmpty) {
                          return "UserName Can not be Null";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (Value) {
                        if (Value!.isEmpty) {
                          return "UserName Can not be Null";
                        } else if (Value.length < 6) {
                          return "password length must be greater than 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(ChangeButton ? 50 : 20),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: ChangeButton ? 50 : 150,
                          alignment: Alignment.center,
                          child: ChangeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   child: Text(
                    //     "Login",
                    //     style: TextStyle(fontSize: 18),
                    //   ),
                    //   style: TextButton.styleFrom(minimumSize: Size(130, 40)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MYRoutes.homeRoute);
                    //   },
                    // )
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
