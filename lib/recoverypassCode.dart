import 'package:JeddahFriends/forget_password.dart';
import 'package:JeddahFriends/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class recPassCode extends StatefulWidget {
  @override
  _PincodePageState createState() => _PincodePageState();
}

class _PincodePageState extends State<recPassCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white,
          ],
          begin: Alignment.topRight,
        )),
        child: OptScreen(),
      ),
    );
  }
}

class OptScreen extends StatefulWidget {
  _OptScreenState createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  List<String> currentPin = ["", "", "", ""];
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();

  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(color: Colors.blue),
  );
  int pinIndex = 0;

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.20,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(85))),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                    //  Navigator.pushReplacement(context,
                      //    MaterialPageRoute(builder: (context) => Signup()));
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40.0,
                      child:
                          Image(image: AssetImage("assets/images/lefts.png")),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  'رمز التحقق',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27.0,
                      fontFamily: 'Tohama'),
                ),
              ),
            ],
          ),
        ),
        // buildExitButton(),
        SizedBox(height: 20.0),
        Container(
          alignment: Alignment(0, 0.5),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // SizedBox(height: 40.0),
              buildPinRow(),
            ],
          ),
        ),
        // ),
        SizedBox(height: 15.0),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 5.0),
              InkWell(
                onTap: () {},
                child: Text(
                  'اعد الإرسال',
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 19,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 15.0),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(85))),
          height: MediaQuery.of(context).size.height * 0.59,
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "التالي",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontFamily: 'Tohama'),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.white],
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(85))),
                child: buildNumberPad(),
              ),
            ],
          ),
        ),
        // buildNumberPad(),
      ],
    );
  }

  buildNumberPad() {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Center(
                  child: Column(
                    children: <Widget>[],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeyboardNumber(
                    n: 3,
                    onPressed: () {
                      pinIndexSetup("3");
                    },
                  ),
                  KeyboardNumber(
                    n: 2,
                    onPressed: () {
                      pinIndexSetup("2");
                    },
                  ),
                  KeyboardNumber(
                    n: 1,
                    onPressed: () {
                      pinIndexSetup("1");
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeyboardNumber(
                    n: 6,
                    onPressed: () {
                      pinIndexSetup("6");
                    },
                  ),
                  KeyboardNumber(
                    n: 5,
                    onPressed: () {
                      pinIndexSetup("5");
                    },
                  ),
                  KeyboardNumber(
                    n: 4,
                    onPressed: () {
                      pinIndexSetup("4");
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  KeyboardNumber(
                    n: 9,
                    onPressed: () {
                      pinIndexSetup("9");
                    },
                  ),
                  KeyboardNumber(
                    n: 8,
                    onPressed: () {
                      pinIndexSetup("8");
                    },
                  ),
                  KeyboardNumber(
                    n: 7,
                    onPressed: () {
                      pinIndexSetup("7");
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 60.0,
                    child: MaterialButton(
                      height: 60.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                      onPressed: () {
                        clearPin();
                      },
                      /*child: Image.asset(
                        "assets/images/lake.jpg",
                        color: Colors.white,
                      ),*/
                      child:
                          Image(image: AssetImage("assets/images/delete.png")),
                    ),
                  ),
                  KeyboardNumber(
                    n: 0,
                    onPressed: () {
                      pinIndexSetup("0");
                    },
                  ),
                  Container(
                    width: 60.0,
                    child: MaterialButton(
                      onPressed: null,
                      child: SizedBox(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  clearPin() {
    if (pinIndex == 0)
      pinIndex = 1;
    else if (pinIndex == 4) {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    } else {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    }
  }

  pinIndexSetup(String text) {
    if (pinIndex == 0)
      pinIndex = 1;
    else if (pinIndex < 4) pinIndex++;
    setPin(pinIndex, text);
    currentPin[pinIndex - 1] = text;
    String strPin = "";
    currentPin.forEach((e) {
      strPin += e;
    });
    if (pinIndex == 4) print(strPin);
  }

  setPin(int n, String text) {
    switch (n) {
      case 1:
        pinOneController.text = text;
        break;

      case 2:
        pinTwoController.text = text;
        break;

      case 3:
        pinThreeController.text = text;
        break;

      case 4:
        pinFourController.text = text;
        break;
    }
  }

  buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        PinNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinOneController,
        ),
        PinNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinTwoController,
        ),
        PinNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinThreeController,
        ),
        PinNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: pinFourController,
        ),
      ],
    );
  }

  buildExitButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
            onPressed: () {},
            height: 50.0,
            minWidth: 50.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
              child: Icon(
                Icons.clear,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class PinNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;
  PinNumber({this.textEditingController, this.outlineInputBorder});

  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(25.0),
          border: outlineInputBorder,
          filled: true,
          fillColor: Colors.white,
        ),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 21.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class KeyboardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;
  KeyboardNumber({this.n, this.onPressed});
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.6),
      ),
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8.0),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(60.0),
        ),
        height: 90.0,
        child: Text(
          "$n",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24 * MediaQuery.of(context).textScaleFactor,
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
