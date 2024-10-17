import 'package:flutter/material.dart';
import 'package:thaiqr/thaiqr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PromptPay QRCode'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: PromptPayWidget(),
        ),
      ),
    );
  }
}

class PromptPayWidget extends StatelessWidget {
  const PromptPayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ThaiQRWidget(
      mobileOrId: "0898433717",
      amount: "11.11",
      showHeader: true,
    );
  }
}
