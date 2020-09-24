import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon_mos/Theme/constants.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
            SystemChannels.textInput.invokeMethod('TextInput.hide');
          },
        ),
        backgroundColor: Colors.pink[200],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Change Password', style: SalonTheme.title),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, top: 30, right: 30),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration:
                          new InputDecoration(hintText: 'Current Password'),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: new InputDecoration(hintText: 'New Password'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration:
                          new InputDecoration(hintText: 'Confirm New Password'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomWidget())
        ],
      ),
    );
  }

  Container bottomWidget() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[4],
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              color: Colors.pink[300],
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "SAVE CHANGES",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
