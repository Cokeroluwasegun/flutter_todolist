import 'package:flutter/material.dart';
import 'package:flutter_todolist/ResetPassword.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      home: forgetPassword(),
    );
  }
}

class forgetPassword extends StatefulWidget {
  @override
  _forgetPasswordState createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
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
              "Forget password",
              style: TextStyle(fontSize: 35),
            ),
            Text(
              "Please enter your mail to receive password and reset information",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Email",
              style: TextStyle(fontSize: 23),
            ),
            TextField(
              decoration: InputDecoration(hintText: "John@example.com"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: InkWell(
                onTap: openResetPassword,
                child: Container(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                    color: Color(0xfff96060)),
                child: Text(
                  "Send Request",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
             ),
            ),
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
