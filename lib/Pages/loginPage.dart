import 'package:crash_course/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String user_name = '';
  bool ifChange = false;

  final _keyform = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_keyform.currentState!.validate()) {
      setState(() {
        ifChange = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeScreenRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_backspace),
        title: Text('login screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          child: Column(
            children: <Widget>[
              Image.asset(
                'images/login_screen.png',
                scale: 0.2,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15),
              Text('Welcome $user_name',
                  style: GoogleFonts.aBeeZee(
                    textStyle: Theme.of(context).textTheme.headline6,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: ('enter user name'),
                      labelText: ('User Name'),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 3.0,
                          color: Colors.blue
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3,
                        color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    validator: (value){

                      if(value != null){
                        return 'enter the user name';
                      }
                      else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      setState(() {
                        user_name = value;
                      });
                    },

                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'enter password',
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3,
                          color: Colors.blue),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3,
                          color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(40),
                        ),
                    ),
                    validator: (value){
                      if(value != null){
                        return 'Please enter password';
                      }
                      else if(value!.length<6){
                        return 'password length must be at least 6';
                      }
                      else
                        return null;
                      },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(ifChange ? 50 : 10),
                child: InkWell(
                onTap: (){
                moveToHome(context);
                },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn,
                    width: ifChange ? 40 : 150,
                    height: 50,
                    child: ifChange
                        ? Icon(Icons.done)
                        : Text(
                            'Login',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}