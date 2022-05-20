import 'package:example/my_field.dart';
import 'package:example/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:immobilizer/immobilizer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const MyScaffold());
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Immobilizer')),
      body: Immobilizer(
        immobile: isLoading,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const MyField(
                label: 'Enter your name',
              ),
              const SizedBox(height: 16),
              const MyField(label: 'Enter your password'),
              const SizedBox(height: 16),
              RoundedButton(
                onPressed: () async {
                  setState(() => isLoading = true);
                  await Future.delayed(const Duration(seconds: 5), () {
                    setState(() {
                      isLoading = false;
                    });
                  });
                },
                isLoading: isLoading,
                child: const Text('Press Me',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
