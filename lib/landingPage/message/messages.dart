import 'package:flutter/material.dart';

import 'componants/message_card.dart';

class Massages extends StatefulWidget {
  const Massages({Key? key}) : super(key: key);

  @override
  State<Massages> createState() => _MassagesState();
}

class _MassagesState extends State<Massages> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return MessageCard(
                index: index,
              );
            }),
      ),
    );
  }
}
