
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
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.backspace),
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
              Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: ('enter user name'),
                    labelText: ('User Name'),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),

                    ),
                  ),
                  onChanged: (value){
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
                      fillColor: Colors.black26,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                ),
              ],),
              SizedBox(
                height: 15,
               ),

              InkWell(
                onTap: () async {
                  setState(() {
                    ifChange = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeScreenRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  width: ifChange? 40 : 150,
                  height: 50,
                  child: ifChange? Icon(
                    Icons.done
                  ) : Text('Login',
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  ),
                  alignment: Alignment.center,
             decoration: BoxDecoration(
                 color: Colors.indigo,
                 borderRadius: BorderRadius.circular(ifChange? 50 : 10),




             ),




                ),
              ),



              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.pushNamed(context, MyRoutes.homeScreenRoute);
              //   },
              //   child: Text('Login'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}