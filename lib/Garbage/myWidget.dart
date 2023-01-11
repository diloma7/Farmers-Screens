import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool showWidget = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          showWidget
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.ac_unit),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.accessible),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.backpack),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Icon(Icons.cached),
                    ),
                  ],
                )
              : Container(),
          TextButton(
            onPressed: () {
              setState(() {
                showWidget = !showWidget;
              });
            },
            child: const Icon(
              Icons.close,
              color: Color.fromARGB(255, 27, 4, 4),
            ),
          ),
        ],
      ),
    );
  }
}
