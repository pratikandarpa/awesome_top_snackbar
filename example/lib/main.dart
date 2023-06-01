import 'package:awesome_top_snackbar/awesome_top_snackbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF31B98C)),
          useMaterial3: true,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    awesomeTopSnackbar(context, "Hello world");
                  },
                  child: const Text('Snackbar 1 ')),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  awesomeTopSnackbar(
                    context,
                    "Hello world",
                    backgroundColor: Color.fromARGB(255, 19, 129, 45),
                    icon: const Icon(Icons.close, color: Colors.white),
                    iconWithDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white),
                    ),
                  ); // for the decoration you can use this property
                },
                child: const Text('Snackbar 2'),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  awesomeTopSnackbar(
                    context,
                    "Hello world ...",
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 20, 64, 83), fontStyle: FontStyle.italic, fontWeight: FontWeight.w400, fontSize: 24),
                    backgroundColor: Color.fromARGB(255, 220, 149, 111),
                    icon: const Icon(Icons.close, color: Colors.white),
                    iconWithDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white),
                    ),
                  ); // for the decoration you can use this property
                },
                child: const Text('Snackbar 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
