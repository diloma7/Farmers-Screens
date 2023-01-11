import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:flutter/material.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Dummy_Data> resource = [
      Dummy_Data(
        id: 1,
        title: "Funding",
        color: Colors.green,
        icon1: const Icon(Icons.monetization_on),
        icon2: const Icon(
          Icons.sms,
          size: 40,
        ),
      ),
      Dummy_Data(
        id: 2,
        title: "Seed",
        color: Colors.transparent,
        icon1: const Icon(Icons.hive_sharp),
        icon2: const Icon(
          Icons.sms,
          size: 40,
        ),
      ),
      Dummy_Data(
        id: 3,
        title: "Training",
        color: Colors.transparent,
        icon1: const Icon(Icons.photo_camera_front_outlined),
        icon2: const Icon(
          Icons.sms,
          size: 40,
        ),
      ),
      Dummy_Data(
        id: 4,
        title: "Farm Inputs",
        color: Colors.green,
        icon1: const Icon(Icons.handyman_rounded),
        icon2: const Icon(
          Icons.sms,
          size: 40,
        ),
      ),
      Dummy_Data(
        id: 5,
        title: "Guides",
        color: Colors.green,
        icon1: const Icon(Icons.contact_mail_outlined),
        icon2: const Icon(
          Icons.sms,
          size: 40,
        ),
      ),
      Dummy_Data(
        id: 6,
        title: "Technology",
        color: Colors.transparent,
        icon1: const Icon(Icons.desktop_mac_outlined),
        icon2: const Icon(
          Icons.sms,
          size: 40,
        ),
      ),
      Dummy_Data(
        id: 7,
        title: "farming Tips",
        color: Colors.transparent,
        icon1: const Icon(Icons.wb_incandescent_sharp),
        icon2: const Icon(
          Icons.sms,
          size: 40,
        ),
      ),
      Dummy_Data(
        id: 8,
        title: "Aggregation",
        color: Colors.green,
        icon1: const Icon(Icons.hub_outlined),
        icon2: const Icon(
          Icons.sms,
          size: 40,
        ),
      ),
    ];

    int contIndex = 0;
    return Scaffold(
        appBar: const CustomAppbar_Details(
          backgroundColor: Color.fromARGB(183, 26, 93, 27),
          title: 'Resource',
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 130,
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 1,
              ),
              itemCount: resource.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      color: resource[index].color,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            resource[index].icon1,
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              resource[index].title,
                              style: const TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              resource[index].icon2,
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}

class Dummy_Data {
  int id;
  String title;
  Color color;
  Icon icon1;
  Icon icon2;

  Dummy_Data({
    required this.id,
    required this.title,
    required this.color,
    required this.icon1,
    required this.icon2,
  });
}
