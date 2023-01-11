import 'package:flutter/material.dart';

class SideDrawerWidget extends StatefulWidget {
  const SideDrawerWidget({Key? key}) : super(key: key);

  @override
  State<SideDrawerWidget> createState() => _SideDrawerWidgetState();
}

class _SideDrawerWidgetState extends State<SideDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: Column(
        children: [
          buildHeader(context),
          Divider(),
          buiMenuItem(context),
        ],
      ),
    );
  }
}

Widget buildHeader(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    child: Row(
      children: [
        SizedBox(
            height: 50,
            width: 50,
            child: Image.asset("assets/images/farmer.jpeg")),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text("Hello"),
            Text("DallanFarm@gmail.com"),
          ],
        )
      ],
    ),
  );
}

Widget buiMenuItem(BuildContext context) {
  return Column(
    children: [
      ListTile(
        leading: const Icon(Icons.account_circle_outlined),
        title: const Text("Edit Account"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.delete_forever),
        title: const Text("Delete Account"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.shopping_cart),
        title: const Text("Order"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.favorite_outline_sharp),
        title: const Text("Favorites"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.notification_add),
        title: const Text("Notification settings"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.location_on_sharp),
        title: const Text("Address"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.share_rounded),
        title: const Text("Share"),
        onTap: () {},
      ),
      ListTile(
        leading: SizedBox(
            height: 35,
            width: 150,
            child: Image.asset(
              "assets/newImg/Network.png",
              fit: BoxFit.contain,
            )),
        // title: const Text("Address"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.rate_review),
        title: const Text("Rate Us"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.power_settings_new),
        title: const Text("Log Out"),
        onTap: () {},
      ),
    ],
  );
}
