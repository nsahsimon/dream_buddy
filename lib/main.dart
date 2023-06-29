import 'package:dream_buddy/constants.dart';
import 'package:dream_buddy/models/story/story.dart';
import 'package:dream_buddy/screens/auth_screens/forgot_password.dart';
import 'package:dream_buddy/screens/auth_screens/parent_auth.dart';
import 'package:dream_buddy/screens/auth_screens/signin_screen.dart';
import 'package:dream_buddy/screens/auth_screens/signup_screen.dart';
import 'package:dream_buddy/screens/home_screen/home_screen.dart';
import 'package:dream_buddy/screens/onboarding_screen/onboarding_screen.dart';
import 'package:dream_buddy/screens/story_screen/story_screen.dart';
import 'package:dream_buddy/screens/survey/pop_up_survey.dart';
import 'package:dream_buddy/screens/survey/pop_up_survey_end.dart';
import 'package:dream_buddy/widgets/robot_stacked_containers/robot_stacked_containers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dream buddy',
      theme: ThemeData(
        primarySwatch: kAppColor,
      ),
      home: OnboardingScreen(),//StoryScreen(story: Story())//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
