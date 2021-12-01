import 'package:flutter/material.dart';
import 'package:task/resetpassword.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: forgotPassword(),
    );
  }
}

class forgotPassword extends StatefulWidget {
  const forgotPassword({Key key}) : super(key: key);

  @override
  _forgotPasswordState createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              'Please enter your mail ID to receive your password and reset information',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Mail ID",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "visal@gmail.com",
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: openResetPassword,
              child: Center(
            child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: Color(0xfff96060),
                ),
                child: Text('Send Request',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ))),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openResetPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResetPassword()));
  }
}
