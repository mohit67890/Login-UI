import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}



class HomepageState extends State<MyHomePage> {

  bool islogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xFFDFF8FE)),
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome Back!",
                          style: GoogleFonts.roboto(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF4BB8F4)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Lorem Ipsum is a  standard \n Lorem Ipsum",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF4BB8F4)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Stack(
                      children: [
                        //Making of the Login Part


                        islogin ? Positioned(
                            top: 20,
                            left: 20,
                            right: 20,
                            child: Container(
                              height: 550,
                              width: MediaQuery.of(context).size.width * 0.98,
                              child: Stack(
                                children: [
                                  //Did for z-index
                                  Container(
                                    child: ClipPath(
                                      //WIll make  a clip Path of the shape as Login
                                      clipper: SignupClipper(),

                                      child: Container(
                                        height: 500,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.92,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.8)),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 30, top: 20, right: 30),
                                              child: Text(
                                                "Signup",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 40,
                                                    color: Colors.grey[400]),
                                              ),
                                            ),


                                          ],
                                        ),

                                      ),
                                    ),
                                  ),

                                  CustomPaint(
                                    //Shadow for the Box
                                    painter: loginShadowPaint(),
                                    child: ClipPath(
                                      //WIll make  a clip Path of the shape as Login
                                      clipper: loginClipper(),

                                      child: Container(
                                        height: 500,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.92,
                                        decoration:
                                            BoxDecoration(color: Colors.white),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(
                                                  left: 30, top: 20),
                                              child: Text(
                                                "Login",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 32,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                                width: 75,
                                                margin: EdgeInsets.only(
                                                  left: 30,
                                                ),
                                                height: 12,
                                                child: Card(
                                                    elevation: 2,
                                                    color: Color(0xFF4BB8F4))),
                                            SizedBox(
                                              height: 60,
                                            ),
                                            Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                margin: EdgeInsets.only(
                                                  left: 30,
                                                ),
                                                height: 60,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      icon: Icon(
                                                        Icons.mail,
                                                        size: 24,
                                                        color:
                                                            Color(0xFF4BB8F4),
                                                      ),
                                                      labelText:
                                                          "Email Address",
                                                      labelStyle:
                                                          GoogleFonts.lato(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .grey[500])),
                                                )),

                                            SizedBox(height: 30,),

                                            Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.7,
                                                margin: EdgeInsets.only(
                                                  left: 30,
                                                ),
                                                height: 60,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      icon: Icon(
                                                        FontAwesomeIcons.eyeSlash,
                                                        size: 20,
                                                        color:
                                                            Color(0xFF4BB8F4),
                                                      ),
                                                      labelText:
                                                          "Password",
                                                      labelStyle:
                                                          GoogleFonts.lato(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .grey[500])),
                                                )),

                                            SizedBox(
                                              height: 30,
                                            ),


                                            Container(

                                              margin: EdgeInsets.only(right: 28),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [

                                                  Spacer(),

                                                  Text(
                                                    "Forgot Password ?",
                                                    style: GoogleFonts.roboto(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 12,
                                                        color: Color(0xFF4BB8F4)),
                                                  ),


                                                ],
                                              ),

                                            ),


                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  Positioned(

                                    left: MediaQuery.of(context).size.width*0.32,
                                    bottom: 35,
                                    child:  Align(

                                      alignment: Alignment(0 ,10),
                                      child: Row(

                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [

                                          Container(
                                            width: 120,
                                            height: 40,

                                            decoration: BoxDecoration(
                                                color: Color(0xFF4BB8F4),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25)
                                                ),
                                              boxShadow: [

                                                BoxShadow(

                                                  color: Color(0xFF4BB8F4),
                                                  spreadRadius: 5,
                                                  blurRadius: 12

                                                )

                                              ]

                                            ),
                                            child: MaterialButton(
                                              onPressed: (){},

                                              elevation: 2,
                                              child: Text(
                                                "Login",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),


                                            ),

                                          )

                                        ],

                                      ),

                                    ),


                                  )


                                ],
                              ),
                            )): Container(),



                        //Making of the Signup Part

                        /* Finishing the Singup PArt Now */

                        islogin == false ? Positioned(
                          top: 20,
                          left: 20,
                          right: 20,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            margin: EdgeInsets.only(bottom: 20),
                            child: Stack(

                              children: [

                                CustomPaint(
                                  //Shadow for the Box
                                  painter: signupShadowPaint(),
                                  child: Stack(

                                    children: [

                                      Container(
                                        child: ClipPath(
                                          //WIll make  a clip Path of the shape as Login
                                          clipper: loginClipper(),

                                          child: Container(
                                            height: 500,
                                            width:
                                            MediaQuery.of(context).size.width *
                                                0.92,
                                            decoration: BoxDecoration(
                                                color:
                                                Colors.white.withOpacity(0.8)),
                                            child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 30, top: 20, right: 30),
                                                  child: Text(
                                                    "Login",
                                                    style: GoogleFonts.roboto(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 40,
                                                        color: Colors.grey[400]),
                                                  ),
                                                ),


                                              ],
                                            ),

                                          ),
                                        ),
                                      ),

                                      ClipPath(
                                        //WIll make  a clip Path of the shape as Login
                                        clipper: SignupClipper(),

                                        child: Container(
                                          height: 500,
                                          width: MediaQuery.of(context).size.width*0.92,
                                          decoration: BoxDecoration(
                                              color: Colors.white
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),

                                              Row(

                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [

                                                  Spacer(),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 30, top: 20, right: 20),
                                                    child: Text(
                                                      "Signup",
                                                      style: GoogleFonts.roboto(
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 32,
                                                          color: Colors.black),
                                                    ),
                                                  ),

                                                ],


                                              ),

                                              SizedBox(
                                                height: 5,
                                              ),

                                              Row(

                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [

                                                  Spacer(),
                                                  Container(
                                                      width: 85,
                                                      margin: EdgeInsets.only(
                                                          left: 30, right: 25
                                                      ),
                                                      height: 12,
                                                      child: Card(
                                                          elevation: 2,
                                                          color: Color(0xFF4BB8F4))),

                                                ],

                                              ),


                                              SizedBox(
                                                height: 60,
                                              ),
                                              Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      0.7,
                                                  margin: EdgeInsets.only(
                                                    left: 30,
                                                  ),
                                                  height: 60,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        icon: Icon(
                                                          Icons.mail,
                                                          size: 24,
                                                          color:
                                                          Color(0xFF4BB8F4),
                                                        ),
                                                        labelText:
                                                        "Email Address",
                                                        labelStyle:
                                                        GoogleFonts.lato(
                                                            fontSize: 16,
                                                            color: Colors
                                                                .grey[500])),
                                                  )),

                                              SizedBox(height: 30,),

                                              Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      0.7,
                                                  margin: EdgeInsets.only(
                                                    left: 30,
                                                  ),
                                                  height: 60,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        icon: Icon(
                                                          FontAwesomeIcons.eyeSlash,
                                                          size: 20,
                                                          color:
                                                          Color(0xFF4BB8F4),
                                                        ),
                                                        labelText:
                                                        "Password",
                                                        labelStyle:
                                                        GoogleFonts.lato(
                                                            fontSize: 16,
                                                            color: Colors
                                                                .grey[500])),
                                                  )),

                                              SizedBox(height: 30,),

                                              Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                      0.7,
                                                  margin: EdgeInsets.only(
                                                    left: 30,
                                                  ),
                                                  height: 60,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        icon: Icon(
                                                          FontAwesomeIcons.eyeSlash,
                                                          size: 20,
                                                          color:
                                                          Color(0xFF4BB8F4),
                                                        ),
                                                        labelText:
                                                        "Confirm Password",
                                                        labelStyle:
                                                        GoogleFonts.lato(
                                                            fontSize: 16,
                                                            color: Colors
                                                                .grey[500])),
                                                  )),


                                            ],
                                          ),

                                        ),

                                      ),



                                    ],

                                  ),

                                ),
                                Positioned(

                                  left: MediaQuery.of(context).size.width*0.31,
                                  bottom: 18,
                                  child:  Align(

                                    alignment: Alignment(0 , 40),
                                    child: Row(

                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [

                                        Container(
                                          width: 120,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF4BB8F4),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25)
                                              ),
                                              boxShadow: [

                                                BoxShadow(

                                                    color: Color(0xFF4BB8F4),
                                                    spreadRadius: 5,
                                                    blurRadius: 12

                                                )

                                              ]

                                          ),
                                          child: MaterialButton(
                                            onPressed: (){},

                                            elevation: 2,
                                            child: Text(
                                              "Signup",
                                              style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Colors.white),
                                            ),


                                          ),

                                        )

                                      ],

                                    ),

                                  ),


                                )

                              ],


                            ),

                          )

                        ): Container(),


                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.11,
              right: MediaQuery.of(context).size.width * 0.32,
              child: Icon(
                FontAwesomeIcons.cog,
                color: Color(0xFF4BB8F4),
                size: 18,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              right: MediaQuery.of(context).size.width * 0.2,
              child: Icon(
                FontAwesomeIcons.cog,
                color: Color(0xFF4BB8F4),
                size: 12,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.22,
              left: MediaQuery.of(context).size.width * 0.21,
              child: Icon(
                LineIcons.close,
                color: Color(0xFF4BB8F4),
                size: 24,
              ),
            ),

            Positioned(

              bottom: MediaQuery.of(context).size.height*0.07,
              left: MediaQuery.of(context).size.width*0.46,
              child: GestureDetector(

                onTap: (){

                  if(islogin){
                    setState(() {

                      islogin = false;

                    });
                  }
                  else {

                    setState(() {

                      islogin = true;

                    });

                  }

                },
                child: Text(islogin ? "Signup" : "Login", style: GoogleFonts.roboto(

                    fontSize: 16,
                    color: Color(0xFF4BB8F4),
                    fontWeight: FontWeight.w500

                ),),


              )



            )


          ],
        ),
      ),
    );
  }
}

class loginClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clip = new Path();

    clip.moveTo(0, 70);
    clip.lineTo(0, size.height - 70);
    clip.quadraticBezierTo(0, size.height, 70, size.height);

    clip.lineTo(size.width - 70, size.height);
    clip.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 70);

    clip.lineTo(size.width, size.height * 0.3 + 50);
    clip.quadraticBezierTo(
        size.width, size.height * 0.3, size.width - 50, size.height * 0.3 - 50);

    clip.lineTo(70, 0);
    clip.quadraticBezierTo(0, 0, 0, 70);
    clip.close();

    return clip;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class SignupClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clip = new Path();
    clip.moveTo(size.width, 70);
    clip.lineTo(size.width, size.height - 70);
    clip.quadraticBezierTo(
        size.width, size.height, size.width - 70, size.height);

    clip.lineTo(70, size.height);
    clip.quadraticBezierTo(0, size.height, 0, size.height - 70);

    clip.lineTo(0, size.height * 0.3 + 50);
    clip.quadraticBezierTo(0, size.height * 0.3, 50, size.height * 0.3 - 50);
    clip.lineTo(size.width - 70, 0);

    clip.quadraticBezierTo(size.width, 0, size.width, 70);

    clip.close();
    return clip;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class loginShadowPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path clip = new Path();

    clip.moveTo(0, 70);
    clip.lineTo(0, size.height - 70);
    clip.quadraticBezierTo(0, size.height, 70, size.height);

    clip.lineTo(size.width - 70, size.height);
    clip.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 70);

    clip.lineTo(size.width, size.height * 0.3 + 50);
    clip.quadraticBezierTo(
        size.width, size.height * 0.3, size.width - 50, size.height * 0.3 - 50);

    clip.lineTo(70, 0);
    clip.quadraticBezierTo(0, 0, 0, 70);
    clip.close();

    canvas.drawShadow(clip, Color(0xFF4BB8F4), 5, false);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class signupShadowPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path clip = new Path();
    clip.moveTo(size.width, 70);
    clip.lineTo(size.width, size.height - 70);
    clip.quadraticBezierTo(
        size.width, size.height, size.width - 70, size.height);

    clip.lineTo(70, size.height);
    clip.quadraticBezierTo(0, size.height, 0, size.height - 70);

    clip.lineTo(0, size.height * 0.3 + 50);
    clip.quadraticBezierTo(0, size.height * 0.3, 50, size.height * 0.3 - 50);
    clip.lineTo(size.width - 70, 0);

    clip.quadraticBezierTo(size.width, 0, size.width, 70);

    clip.close();

    canvas.drawShadow(clip, Color(0xFF4BB8F4), 5, false);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
