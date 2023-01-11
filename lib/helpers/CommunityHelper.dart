import 'package:farmers_network_screens/models/CommunityModel.dart';
import 'package:flutter/material.dart';

class CommunityHelper with ChangeNotifier {
  List<CommunityModel> communityList = [
    CommunityModel(
      id: '1',
      forumName: 'One Voice \nConsortium',
      numberOfMember: '+100',
      image: "assets/newImg/GDDF.png",
    ),
    // CommunityModel(
    //     id: '9',
    //     forumName: 'My hustle',
    //     numberOfMember: '+500 k',
    //     image: "assets/newImg/hustle.png"),
    CommunityModel(
        id: '2',
        forumName: 'Nyanza \nAgronomist',
        numberOfMember: '86',
        image: "assets/newImg/Nyanza.png"),
    // CommunityModel(
    //     id: '3',
    //     forumName: 'Farmers Forum',
    //     numberOfMember: '+219',
    //     image: "assets/newImg/Forum.png"),
    // CommunityModel(
    //     id: '4',
    //     forumName: 'AgroBusiness \nInternational',
    //     numberOfMember: '+465',
    //     image: "assets/newImg/agribusiness.png"),
    CommunityModel(
        id: '5',
        forumName: 'Agro Consultancy',
        numberOfMember: '+256',
        image: "assets/newImg/consultancy.png"),
    CommunityModel(
        id: '6',
        forumName: 'Kilomo Biashara',
        numberOfMember: '+268',
        image: "assets/newImg/Excellence.png"),
    CommunityModel(
        id: '7',
        forumName: 'Multindwa',
        numberOfMember: '+2,500',
        image: "assets/newImg/cocoa.png"),
    CommunityModel(
        id: '8',
        forumName: '4Gotten Bottom \nMillions',
        numberOfMember: '+500 k',
        image: "assets/newImg/Network.png"),
  ];

  List<CommunityModel> get CommunityStuff => communityList;
}
