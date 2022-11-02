import "package:flutter/material.dart";

void main() => runApp(MiCard());

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('image/avatar.jpg'),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
                  child: Text(
                    'Philip Voealis',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 25.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 150.0,
                    height: 2.0,
                    color: Colors.white.withOpacity(0.2),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text('+375 25 994 16 31',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20.0,
                            ))
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          'voealis@outlook.com',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
