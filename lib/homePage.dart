import 'package:flutter/material.dart';
import 'package:test1/component/items.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List items = List.generate(20, (index) => "foo${index + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catecgories'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              food_items(foodNo: items[index]),
              const Divider(),
              // if (index < items.length - 1) Divider(),
            ],
          );
        },
      ),
    );
  }
}
