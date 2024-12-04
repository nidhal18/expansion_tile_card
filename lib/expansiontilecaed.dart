import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile Card'),
      ),
      body: Expansiontilecaed(),
    );
  }
}

class Expansiontilecaed extends StatelessWidget {
  final List<Item> items = [
    Item('Item 1', 'Details about Item 1'),
    Item('Item 2', 'Details about Item 2'),
    Item('Item 3', 'Details about Item 3'),
    Item('Item 4', 'Details about Item 4'),
  ];

  Expansiontilecaed({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ExpansionTile(
          title: Text(items[index].title),
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(items[index].details),
            )
          ],
        );
      },
    );
  }
}

class Item {
  final String title;
  final String details;

  Item(this.title, this.details);
}
