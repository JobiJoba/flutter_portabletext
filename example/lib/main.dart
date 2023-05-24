// ignore_for_file: avoid_print, unused_element

import 'dart:convert';

import 'package:example/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portabletext/flutter_portabletext.dart';
import 'package:flutter_portabletext/portable_text.dart';
import 'package:flutter_sanity/flutter_sanity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter PortableText Demo'),
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
  List<PortableText>? portableText;
  @override
  void initState() {
    super.initState();

    initPortableTextWithSanity() async {
      final sanityClient = SanityClient(
        dataset: sanityVariable['dataset']!,
        projectId: sanityVariable['projectId']!,
      );

      final response = await sanityClient.fetch('*[_type == "post"]');

      final content = response[0]['content'] as List<dynamic>;

      final List<PortableText> listPortableText = [];
      for (var dynamicPort in content) {
        final portableText = PortableText.fromJson(dynamicPort);
        listPortableText.add(portableText);
      }
      setState(() {
        portableText = listPortableText;
      });
    }

    initPortableTextWithSanity();

    initPortableTextWithJson() async {
      rootBundle.loadString('assets/ex.json').then((value) async {
        final data = await json.decode(value) as List<dynamic>;
        final List<PortableText> listPortableText = [];
        for (var dynamicPort in data) {
          final portableText = PortableText.fromJson(dynamicPort);
          listPortableText.add(portableText);
        }
        setState(() {
          portableText = listPortableText;
        });
      });
    }

    // initPortableTextWithJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            if (portableText != null)
              SizedBox(
                width: double.infinity,
                child: PortableTextRichText(
                  portableText: portableText!,
                  onTapLink: (value) => print(value),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
