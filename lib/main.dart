import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const UIcleaner(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UIcleaner extends StatelessWidget {
  const UIcleaner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            onPrimary: Color.fromARGB(255, 255, 255, 255),
                            primary: Color.fromARGB(255, 255, 255, 255),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 18.0,
                          ),
                        ),
                        Text(
                          "Cleaner",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 255, 127, 7)),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            onPrimary: Color.fromARGB(255, 255, 255, 255),
                            primary: Color.fromARGB(255, 255, 255, 255),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.settings_rounded,
                            color: Color.fromARGB(255, 0, 0, 0),
                            size: 18.0,
                          ),
                        ),
                      ]),
                ),
                Container(
                  width: 300,
                  height: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 255, 146, 138),
                          Color.fromARGB(255, 238, 212, 65),
                        ],
                      )),
                  child: Container(
                    height: 100,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  '400',
                                  style: TextStyle(
                                      fontSize: 60,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'MB',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                            const Text(
                              "Trash",
                              style: TextStyle(fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(220.0),
                      ),
                      elevation: 15,
                      margin: const EdgeInsets.all(2),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Cache Files",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Obsolete files",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.check_circle_outline,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Residuals",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Packages",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      Icon(
                        Icons.check_circle_outline,
                        color: Color.fromARGB(255, 0, 0, 0),
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: ElevatedButton(
                        child: Text(
                          "Clean Up 400MB",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            onPrimary: Color.fromARGB(255, 255, 255, 255),
                            primary: Color.fromARGB(255, 252, 129, 13),
                            onSurface: Color.fromARGB(255, 134, 130, 130),
                            elevation: 3,
                            minimumSize: Size(150, 50),
                            shadowColor: Colors.teal,
                            padding: EdgeInsets.only(
                                left: 80, right: 80, top: 15, bottom: 15)),
                        onPressed: () {},
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
