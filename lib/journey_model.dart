import 'package:flutter/material.dart';

class ProductJourneyWhiteCard {
  String? waterParam;
  String? cardTitle;
  String? cardSubtitle;
  String? companyDetails;
  String? cardLocation;
  String? carbonParam;
  String? verificationDetails;
  String? registrationDetails;
  IconData? cardIcon;
  int? status;
  ProductJourneyWhiteCard({
    this.waterParam,
    this.cardTitle,
    this.cardSubtitle,
    this.cardLocation,
    this.carbonParam,
    this.verificationDetails,
    this.cardIcon,
    this.companyDetails,
    this.status,
    this.registrationDetails,
  });
}

List<ProductJourneyWhiteCard> journeyModelList = [
  ProductJourneyWhiteCard(
      status: 1,
      waterParam: "1.03 METER 2",
      cardTitle: "FIBER FORMATION",
      cardSubtitle:
          "Sub fkjrnkrner krenrknfk krnfrkfnerk kenfrknfDetails JLEJFJRE OKFJKREJF ORJFJELR OFEJOIFKEOFKO sfdsf dsf dsf dsf dsf ds fds fds f dsf dsf sdf ds fds fds f dsf dsf ds fds fds f dsf dsf dsf ds fds fds fds f dsf dsf dsf ds f dsf ds fds f dsf dsf ds fds f dsf dsf dsf dsf ds",
      cardLocation: "LAHORE PAKISTAN",
      carbonParam: "0.92 KG2",
      verificationDetails: ""),
  ProductJourneyWhiteCard(
      status: 2,
      cardTitle: "YARN FORMATION",
      companyDetails:
          "Sub fkjrnkrner krenrknfk krnfrkfnerk kenfrknfDetails JLEJFJRE OKFJKREJF ORJFJELR OFEJOIFKEOFKO",
      cardLocation: "KARACHI PAKISTAN",
      registrationDetails: "",
      cardIcon: Icons.shopping_cart),
  ProductJourneyWhiteCard(
      status: 1,
      waterParam: "5.43 METER 2",
      cardTitle: "SOCKS FORMATION",
      cardSubtitle:
          "Sub fkjrnkrner krenrknfk krnfrkfnerk kenfrknfDetails JLEJFJRE OKFJKREJF ORJFJELR OFEJOIFKEOFKO",
      cardLocation: "LAHORE PAKISTAN",
      carbonParam: "2.92 KG2",
      verificationDetails: "Systems PVT LTD"),
  ProductJourneyWhiteCard(
      status: 3,
      cardTitle: "ACTIVE WEAR FORMATION",
      companyDetails:
          "Sub fkjrnkrner krenrknfk krnfrkfnerk kenfrknfDetails JLEJFJRE OKFJKREJF ORJFJELR OFEJOIFKEOFKO adsad d sad sa dsa dsa d sad sad as d sa dsa d sad sad sad sa dsa dsa dsa dsa dsa d sad sad sad sad sa dsa dsa dsa d sad sad sa dsa dsa d sad sa dsa da sd sa  fdsgfdsg fdgf dg fdg fdg fd fg fd g",
      cardLocation: "LAHORE PAKISTAN",
      verificationDetails: "NETSOL PVT LTD",
      cardIcon: Icons.local_shipping),
  ProductJourneyWhiteCard(
      status: 4,
      cardTitle: "COMPENSATED",
      companyDetails: "",
      cardLocation: "DONATION AUTHORIZED BY HASSAAN",
      cardIcon: Icons.favorite,
      verificationDetails: null)
];
