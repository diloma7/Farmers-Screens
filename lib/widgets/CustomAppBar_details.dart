// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class CustomAppbar_Details extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;

  const CustomAppbar_Details(
      {Key? key, required this.backgroundColor, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      centerTitle: true,
      backgroundColor: backgroundColor,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 5, right: 10.0),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 35,
              )),
        ),
      ],
      bottom: PreferredSize(
        child: Container(
          height: 35.0,
          width: double.infinity,
          color: const Color.fromARGB(0, 26, 93, 27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 10),
                child: Center(
                  child: Text(title,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          ),
        ),
        preferredSize: preferredSize,
      ),
    );
  }

  @override
  // implement preferredSize
  Size get preferredSize => const Size.fromHeight(105.0);
}
