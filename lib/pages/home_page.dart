import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  androidDialog(Color a) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(" O'rnatish "),
            content: Text(" Haqiqatan ham siz shu rangni o'rnatnoqchimisiz "),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel")),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      c = a;
                    });
                  },
                  child: Text("Confirm"))
            ],
          );
        });
  }

  Color c = Colors.black;
  Color? c1 = Colors.purpleAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 150),
            color: Colors.white,
            height: 200,
            child: Center(
              child: Text(
                " 26.03.2022",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: c,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 50,
            child: Center(
              child: Text(
                " 20 : 00 ",
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, color: c),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            height: 100,
            color: Colors.white,
            child: Center(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {

                      androidDialog(Colors.red);
                    },
                    icon: Icon(
                      Icons.circle,
                      size: 60,
                    ),
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {

                      androidDialog(Colors.blue);
                    },
                    icon: Icon(
                      Icons.circle,
                      size: 60,
                    ),
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {

                      androidDialog(Colors.yellowAccent);
                    },
                    icon: Icon(
                      Icons.circle,
                      size: 60,
                    ),
                    color: Colors.yellowAccent,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {

                      androidDialog(Colors.green);
                    },
                    icon: Icon(
                      Icons.circle,
                      size: 60,
                    ),
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {

                      androidDialog(Colors.black);
                    },
                    icon: Icon(
                      Icons.circle,
                      size: 60,
                    ),
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {

                      androidDialog(Colors.purpleAccent);
                    },
                    icon: Icon(
                      Icons.circle,
                      size: 60,
                    ),
                    color: Colors.purpleAccent,
                  ),

                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
