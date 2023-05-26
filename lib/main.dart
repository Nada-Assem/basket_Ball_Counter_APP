import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamApoint = 0;

  int teamBpoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Point Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 450,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          '$teamApoint',
                          style: TextStyle(fontSize: 150),
                        ),
                        // create boutton
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                            //fixedSize: Size(50, 70),
                          ),
                          onPressed: () {
                            setState(() {
                              teamApoint++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                            //fixedSize: Size(50, 70),
                          ),
                          onPressed: () {
                            setState(() {
                              teamApoint += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                            //fixedSize: Size(50, 70),
                          ),
                          onPressed: () {
                            setState(() {
                              teamApoint += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 4,
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    //==============================
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          '$teamBpoint',
                          style: TextStyle(fontSize: 150),
                        ),
                        // create boutton
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                            //fixedSize: Size(50, 70),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBpoint++;
                            });
                          },
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                            //fixedSize: Size(50, 70),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBpoint += 2;
                            });
                          },
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                            //fixedSize: Size(50, 70),
                          ),
                          onPressed: () {
                            setState(() {
                              teamBpoint += 3;
                            });
                          },
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: const Size(150, 50),
                  //fixedSize: Size(50, 70),
                ),
                onPressed: () {
                  teamApoint = 0;
                  teamBpoint = 0;
                  setState(() {
                    teamApoint = 0;
                    teamBpoint = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
