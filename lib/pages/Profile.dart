import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:farmers_network_screens/widgets/SideDrawer.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<ProfileService> serviceList = [
    ProfileService(
        id: "1", name: "Strawberries", image: "assets/newImg/strawberries.png"),
    ProfileService(
        id: "2", name: "Avocados", image: "assets/newImg/avocado.png"),
    ProfileService(
        id: "3",
        name: "Indeginious \nVegetables",
        image: "assets/newImg/indigenousVeggies.png"),
    ProfileService(
        id: "4", name: "Potatoes", image: "assets/newImg/Potatoes.png"),
    ProfileService(
        id: "5", name: "Catfish", image: "assets/newImg/catfish.png"),
    ProfileService(
        id: "6", name: "Dopper Sheep", image: "assets/newImg/sheep.png"),
    ProfileService(
        id: "7", name: "Agri Tourism", image: "assets/newImg/tourism.png"),
    ProfileService(
        id: "8", name: "Training", image: "assets/newImg/training.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        toolbarHeight: 100,
        title: Image.asset(
          'assets/images/login.png',
        ),
        backgroundColor: const Color.fromARGB(183, 26, 93, 27),
        actions: [
          InkWell(
            onTap: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            child: const Icon(Icons.menu),
          ),
        ],
      ),
      endDrawer: const SideDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/newImg/Network.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("ADMIN"),
                    Text("Mobile: +254 702157000"),
                    Text("Email: Info@DallanFarm.com"),
                    Text("Website: www.DallanFarm.com"),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset("assets/newImg/Whatsapp.png"),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset("assets/newImg/facebook.png"),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset("assets/newImg/Instagram.png"),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset("assets/newImg/LinkedIn.png"),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset("assets/newImg/Youtube.png"),
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset("assets/newImg/TikTok.png"),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "About",
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(8),
              color: Color.fromARGB(255, 159, 157, 157),
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: const Text(
                  "Dallan farm is a mixed farm located in Awendo Migori Country,Kenya. We produce Strawberries, avocados, traditinal vegetables, potatoes, fish, and sheep. We provide training in farming and also offer Aggri & cultural tourism"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Product & Services",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      children: const [
                        Text(" See All"),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisExtent: 100,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 4),
                itemCount: serviceList.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 113, 113, 113)
                                .withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset:
                                const Offset(0, 2) // changes position of shadow
                            ),
                      ],
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Column(children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(serviceList[index].image),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        serviceList[index].name,
                        style: const TextStyle(fontSize: 12),
                      ),
                    ]),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

class ProfileService {
  String id;
  String name;
  String image;

  ProfileService({
    required this.id,
    required this.name,
    required this.image,
  });
}
