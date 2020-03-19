import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/custom_radio_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE2E2E2),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
          title: FlutterLogo(
            size: 30,
            colors: Colors.pink,
          ),
          elevation: 0.0,
        ),
        body: Container(
          color: Color(0xFFE2E2E2),
          constraints: BoxConstraints.expand(),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Image.asset('assets/watch.png')),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Pillow color',
                      style: TextStyle(
                        color: Color(0xFF0C0C0C),
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Choose the color of the pillow',
                        style: TextStyle(
                          color: Color(0xFF414141),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 0;
                              });
                            },
                            child: CustomRadioButton(
                              color: Color(0xFFA08880),
                              isSelected: selected == 0 ? true : false,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 1;
                              });
                            },
                            child: CustomRadioButton(
                              color: Color(0xFF737277),
                              isSelected: selected == 1 ? true : false,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected = 2;
                              });
                            },
                            child: CustomRadioButton(
                              color: Color(0xFF919C8F),
                              isSelected: selected == 2 ? true : false,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 30),
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: ClipOval(
                              child: Container(
                                height: 45,
                                width: 45,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                color: Color(0xFFAB7D6F),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Container(
                                    height: 45,
                                    color: Color(0xFFAB7D6F),
                                    child: Center(
                                      child: Text(
                                        '1/2  NEXT',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: ClipOval(
                              child: Container(
                                height: 45,
                                width: 45,
                                child: Icon(
                                  Icons.bookmark_border,
                                  color: Colors.white,
                                ),
                                color: Color(0xFFAB7D6F),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'ABOUT',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    IconButton(
                      onPressed: () {
                        showAboutDialog(
                            context: context, children: [Text('Yeah!')]);
                      },
                      icon: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
