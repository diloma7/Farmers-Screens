import 'package:farmers_network_screens/helpers/CommunityHelper.dart';
import 'package:farmers_network_screens/widgets/CustomAppBar_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Forum extends StatefulWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  @override
  Widget build(BuildContext context) {
    final communityContent =
        Provider.of<CommunityHelper>(context).communityList;
    return Scaffold(
      appBar: const CustomAppbar_Details(
        backgroundColor: Color.fromARGB(183, 26, 93, 27),
        title: 'Community',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 25,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 25,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 4),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Add +",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.groups,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("MEMBER OF COMMUNITY"),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      children: const [
                        Text("See All"),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                primary: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 155,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 5,
                ),
                itemCount: communityContent.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: Image.asset(
                              communityContent[index].image,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            communityContent[index].forumName,
                            style: const TextStyle(fontSize: 10),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            communityContent[index].numberOfMember + " Members",
                            style: const TextStyle(fontSize: 10),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Join",
                              style: TextStyle(color: Colors.green[700]),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("JOIN COMMUNITY"),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      children: const [
                        Text("See All"),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            GridView.builder(
                shrinkWrap: true,
                primary: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 155,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 5,
                ),
                itemCount: communityContent.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: const Color.fromARGB(255, 113, 113, 113)
                                  .withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: const Offset(
                                  0, 2) // changes position of shadow
                              ),
                        ],
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 100,
                            child: Image.asset(
                              communityContent[index].image,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            communityContent[index].forumName,
                            style: const TextStyle(fontSize: 10),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            communityContent[index].numberOfMember + " Members",
                            style: const TextStyle(fontSize: 10),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Join",
                              style: TextStyle(color: Colors.green[700]),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
