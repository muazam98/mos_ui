import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salon_mos/Theme/constants.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String _radioValue; //Initial definition of radio button value
  String choice;

  void radioButtonChanges(String value) {
    setState(() {
      _radioValue = value;
      switch (value) {
        case 'one':
          choice = value;
          break;
        case 'two':
          choice = value;
          break;
        case 'three':
          choice = value;
          break;
        default:
          choice = null;
      }
      debugPrint(choice); //Debug the choice in console
    });
  }

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
        title: Text('Edit Profile', style: SalonTheme.title),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 30, top: 30, right: 30),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/avatar1.png'),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffd6a5c0),
                                blurRadius: 40,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 1,
                          bottom: 1,
                          child: ClipOval(
                            child: Material(
                              color: Colors.pink[300], // button color
                              child: InkWell(
                                splashColor: Colors.pink[300], // inkwell color
                                child: SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Icon(
                                      Icons.edit,
                                      size: 16,
                                    )),
                                onTap: () {},
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "First Name",
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                        fontFamily: 'Karla',
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                        fontFamily: 'Karla',
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Row(
                    children: [
                      Text(
                        "Gender",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15.0,
                          fontFamily: 'Karla',
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 0,
                        ),
                      ),
                      Radio(
                        value: 'one',
                        groupValue: _radioValue,
                        onChanged: radioButtonChanges,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15.0,
                          fontFamily: 'Karla',
                        ),
                      ),
                      Radio(
                        value: 'one',
                        onChanged: radioButtonChanges,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15.0,
                          fontFamily: 'Karla',
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: SizedBox(
                  //         width: 50,
                  //       ),
                  //     ),
                  //     Container(
                  //       padding: EdgeInsets.symmetric(horizontal: 10.0),
                  //       child: new DropdownButton<String>(
                  //         items: <String>['Malay', 'English', 'Madarin']
                  //             .map((String value) {
                  //           return new DropdownMenuItem<String>(
                  //             value: value,
                  //             child: new Text(value),
                  //           );
                  //         }).toList(),
                  //         onChanged: (_) {},
                  //       ),
                  //     )
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 1,
                  // ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Address",
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                        fontFamily: 'Karla',
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Zip Code",
                      labelStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 15.0,
                        fontFamily: 'Karla',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
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
