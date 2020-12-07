import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  @override
  _LoginPagesState createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  String dropdownValue = 'Indonesia';

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  int buttonColor = 0xff26A9FF;

  bool inputTextNotNull = false;

  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topCenter,
                  child: DropdownButton<String>(
                    dropdownColor: Colors.white,
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 10,
                    style: TextStyle(color: Colors.black54),
                    underline: Container(),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['Indonesia', 'English', 'Rusia', 'Jepang']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 16),
                        ),
                      );
                    }).toList(),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/insta_logo.png',
                    height: deviseWidth * .20,
                  ),
                  SizedBox(
                    height: deviseWidth * .05,
                  ),
                  Container(
                    width: deviseWidth * .90,
                    height: deviseWidth * .14,
                    decoration: BoxDecoration(
                      color: Color(0xffE8E8E8),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                        child: TextField(
                          onChanged: (text) {
                            setState(() {
                              inputTextNotNull =
                                  usernameController.text.length >= 2 &&
                                          passwordController.text.length >= 2
                                      ? true
                                      : false;
                            });
                          },
                          controller: usernameController,
                          style: TextStyle(
                            fontSize: deviseWidth * .040,
                          ),
                          decoration: InputDecoration.collapsed(
                            hintText:
                                'Nomor telepon, email, atau nama pengguna',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviseWidth * .04,
                  ),
                  Container(
                    width: deviseWidth * .90,
                    height: deviseWidth * .14,
                    decoration: BoxDecoration(
                      color: Color(0xffE8E8E8),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                        child: TextField(
                          onChanged: (text) {
                            setState(() {
                              inputTextNotNull =
                                  usernameController.text.length >= 2 &&
                                          passwordController.text.length >= 2
                                      ? true
                                      : false;
                            });
                          },
                          controller: passwordController,
                          obscureText: true,
                          style: TextStyle(
                            fontSize: deviseWidth * .040,
                          ),
                          decoration: InputDecoration.collapsed(
                            hintText: 'Kata Sandi',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviseWidth * .04,
                  ),
                  inputTextNotNull
                      ? GestureDetector(
                          onLongPressStart: (s) {
                            setState(() {
                              buttonColor = 0xff78C9FF;
                            });
                          },
                          onLongPressEnd: (s) {
                            setState(() {
                              buttonColor = 0xff26A9FF;
                            });
                          },
                          onTap: () {
                            print('Masuk');
                          },
                          child: Container(
                            width: deviseWidth * .90,
                            height: deviseWidth * .14,
                            decoration: BoxDecoration(
                              color: Color(buttonColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Center(
                              child: Text(
                                'Masuk',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: deviseWidth * .040,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: deviseWidth * .90,
                          height: deviseWidth * .14,
                          decoration: BoxDecoration(
                            color: Color(0xff78C9FF),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Masuk',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: deviseWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: deviseWidth * .035,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lupa detail login Anda? ',
                        style: TextStyle(
                          fontSize: deviseWidth * .035,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Dapatkan bantuan untuk login, clicked!');
                        },
                        child: Text(
                          'Dapatkan bantuan untuk login',
                          style: TextStyle(
                            fontSize: deviseWidth * .035,
                            color: Color(0xff002588),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviseWidth * .060,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: deviseWidth * .40,
                        color: Color(0xffA2A2A2),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          fontSize: deviseWidth * .040,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 1,
                        width: deviseWidth * .40,
                        color: Color(0xffA2A2A2),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: deviseWidth * .06,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/facebook.png',
                        height: deviseWidth * .060,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Masuk dengan facebook',
                        style: TextStyle(
                          color: Color(0xff1877f2),
                          fontSize: deviseWidth * .040,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: deviseWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: deviseWidth,
                      height: 1,
                      color: Color(0xffA2A2A2),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Tidak punya akun? ",
                            style: TextStyle(
                              fontSize: deviseWidth * .040,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('Sing up, clicked!');
                            },
                            child: Text(
                              'Buat Akun.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: deviseWidth * .040,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
