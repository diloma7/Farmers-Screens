import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:flutter/material.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Dummy_Data_service> service_data = [
      Dummy_Data_service(
          id: 1, title: "Agronomist", image: "assets/newImg/Agronomist.png"),
      Dummy_Data_service(
          id: 2, title: "Veterinary", image: "assets/newImg/veterinary.png"),
      Dummy_Data_service(
          id: 3,
          title: "Seed \n/Merchant",
          image: "assets/newImg/seedMerchant.png"),
      Dummy_Data_service(
          id: 4, title: "Soil care", image: "assets/newImg/soilCare.png"),
      Dummy_Data_service(
          id: 5, title: "Tractor", image: "assets/newImg/tractor.png"),
      Dummy_Data_service(
          id: 6, title: "Aggregator", image: "assets/newImg/agg.png"),
      Dummy_Data_service(
          id: 7, title: "Irrigation", image: "assets/newImg/irrigate.png"),
      Dummy_Data_service(
          id: 8, title: "Spraying", image: "assets/newImg/spraying.png"),
      Dummy_Data_service(
          id: 9, title: "Green House", image: "assets/newImg/green.png"),
      Dummy_Data_service(
          id: 10, title: "Agro Dealer", image: "assets/newImg/dealer.png"),
      Dummy_Data_service(
          id: 11,
          title: "Cold \nStorage \nLogistics",
          image: "assets/newImg/coldLogistics.png"),
      Dummy_Data_service(
          id: 12, title: "Packaging", image: "assets/newImg/packaging.png"),
    ];
    return Scaffold(
        appBar: const CustomAppbar_Details(
          backgroundColor: Color.fromARGB(183, 26, 93, 27),
          title: 'Providers',
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5,
                            color: Color.fromARGB(183, 26, 93, 27))),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Icon(
                            Icons.search,
                            size: 15,
                            color: Color.fromARGB(183, 26, 93, 27),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("search for Service provider",
                            style: TextStyle(
                              color: Color.fromARGB(183, 26, 93, 27),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 60,
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 45,
                        ),
                        itemCount: service_data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            color: Colors.green[200],
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(service_data[index].image),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(service_data[index].title)
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class Dummy_Data_service {
  int id;
  String title;
  String image;

  Dummy_Data_service({
    required this.id,
    required this.title,
    required this.image,
  });
}
