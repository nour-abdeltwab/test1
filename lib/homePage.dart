import 'package:flutter/material.dart';
import 'package:test1/component/items.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List items = List.generate(30, (index) => "foo${index + 1}");
  // final List<String> items = List.generate(20, (index) => "foo${index + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catecgories'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              food_items(foodNo: items[index]),
              Divider(),
            ],
          );
        },
      ),

      // ListView.builder(
      //   padding: EdgeInsets.all(15),
      //   itemCount: items.length,
      //   itemBuilder: (context, index) {
      //     return Column(
      //       children: [
      //         food_items(foodNo: items[index]),
      //         if (index < items.length - 1)
      //           Divider(), // Avoids a divider after the last item
      //       ],
      //     );
      //   },
      // ),
      // ListView(
      //   padding: EdgeInsets.all(15),
      //   children: [
      //     food_items(foodNo: "foo01"),
      //     Divider(),
      //     food_items(foodNo: "foo02"),
      //     Divider(),
      //     food_items(foodNo: "foo03"),
      //     Divider(),
      //     food_items(foodNo: "foo04"),
      //     Divider(),
      //     food_items(foodNo: "foo05"),
      //     Divider(),
      //     food_items(foodNo: "foo06"),
      //     Divider(),
      //     food_items(foodNo: "foo07"),
      //     Divider(),
      //     food_items(foodNo: "foo08"),
      //     Divider(),
      //     food_items(foodNo: "foo09"),
      //     Divider(),
      //     food_items(foodNo: "foo10"),
      //     Divider(),
      //     food_items(foodNo: "foo11"),
      //     Divider(),
      //     food_items(foodNo: "foo12"),
      //     Divider(),
      //     food_items(foodNo: "foo13"),
      //     Divider(),
      //     food_items(foodNo: "foo14"),
      //     Divider(),
      //   ],
      // ),
    );
  }
}
