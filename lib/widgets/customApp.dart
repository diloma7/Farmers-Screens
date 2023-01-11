// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Image title;
  final Color backgroundColor;

  // final double toolbarHeight;

  // final List<Padding> actions;

  const CustomAppbar({
    Key? key,
    required this.backgroundColor,
    required this.title,
    // required this.toolbarHeight,
    // required this.actions
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: ClipRRect(
        child: title,
      ),
      backgroundColor: backgroundColor,
      bottom: PreferredSize(
        child: Container(
          height: 50.0,
          width: double.infinity,
          color: const Color.fromARGB(0, 26, 93, 27),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 1.0),
                child: Text("Welcome User 1",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)),
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
  Size get preferredSize => const Size.fromHeight(115.0);
}
