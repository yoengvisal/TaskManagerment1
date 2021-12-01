import 'package:flutter/material.dart';
import 'package:task/passwordChangeSuccessfully.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: resetPassword(),
    );
  }
}

class resetPassword extends StatefulWidget {
  const resetPassword({Key key}) : super(key: key);

  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
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
              'Reset Password',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              'Reset code was sent to your mail Id. Please enter the code create a new password',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Reset Code",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "****",
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "password",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your password here",
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Comfirm Password",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Re-enter your password here",
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: openSuccessPage,
                child: Center(
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Color(0xfff96060),
                      ),
                      child: Text('Change Password',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openSuccessPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PasswordChangeSuccessFully()));
  }
}
