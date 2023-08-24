import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Card()));
}

class Card extends StatefulWidget {
  const Card({super.key});

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  int ninjaLevel = 0;
  String handle = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("Soham ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/zoro.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Soham Dahiya',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'PROFICIENCY',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'AI and ML',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // const SizedBox(height: 30.0),
            // Row(
            //   children: [
            //     Icon(
            //       Icons.email,
            //       color: Colors.grey[400],
            //     ),
            //     const SizedBox(width: 10.0),
            //     Text(
            //       'sohamdahiya@gmail.com',
            //       style: TextStyle(
            //         color: Colors.grey[400],
            //         fontSize: 18.0,
            //         letterSpacing: 1.0,
            //       ),
            //     )
            //   ],
            // ),
            const SizedBox(height: 30.0),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      handle = 'sohamdahiya@gmail.com';
                    });
                  },
                  iconSize: 40.0,
                  icon: const Icon(Icons.email),
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 20.0),
                IconButton(
                  onPressed: () {
                    setState(() {
                      handle = 'github.com/sdMickey';
                    });
                  },
                  iconSize: 40.0,
                  icon: Image.asset("assets/github-logo-icon.png"),
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 20.0),
                IconButton(
                  onPressed: () {
                    setState(() {
                      handle = 'linkedin.com/in/soham-dahiya';
                    });
                  },
                  iconSize: 40.0,
                  icon: Image.asset("assets/linkedin-icon.png"),
                  color: Colors.grey[400],
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Text(
              handle,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18.0,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
