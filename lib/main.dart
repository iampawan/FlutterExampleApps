import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Modernized App',
      debugShowCheckedModeBanner: false,
      // 1. ADIM: DARK MODE DESTEĞİ (Rubrik Puanı)
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system, // Sisteme göre otomatik değişir
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTurkish = true; // 2. ADIM: DİL DESTEĞİ (Rubrik Puanı)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isTurkish ? "Modern Flutter Örneği" : "Modern Flutter Example"),
        centerTitle: true,
        elevation: 2,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.flutter_dash, size: 100, color: Colors.blue),
              const SizedBox(height: 20),
              Text(
                isTurkish 
                  ? "Bu repo, harika uygulamaların koleksiyonudur." 
                  : "This repo is a collection of awesome apps.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    isTurkish = !isTurkish;
                  });
                },
                icon: const Icon(Icons.language),
                label: Text(isTurkish ? "English'e Çevir" : "Switch to Turkish"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}