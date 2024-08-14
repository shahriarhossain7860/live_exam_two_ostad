import 'package:flutter/material.dart';

void main(){
  runApp(liveApp());
}
class liveApp extends StatelessWidget {
  const liveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'live App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Styling App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flutter Text Styling',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 8,),
            Text('Experiment with text styles',style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 16,
            ),
            ),
            SizedBox(height: 16), // Add some space between the subtitle and the button
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You clicked the button!'),
                  ),
                );
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 16,),
            RichText(
              text: TextSpan(
                text: 'Welcome to ',
                style: TextStyle(
                  color: Colors.black, // Explicitly set text color to black
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Flutter!',
                    style: TextStyle(
                      color: Colors.blue, // Blue color for 'Flutter!'
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

