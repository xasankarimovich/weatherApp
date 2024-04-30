import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/full_information_widget.dart';
class MainWeatherPage extends StatelessWidget {
  MainWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
        elevation: 20,
        shadowColor: Colors.blue[200],

        ///? elipsis button
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.ellipsis,
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: FullInformation(),
      ),
    );
  }
}
