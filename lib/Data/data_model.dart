import 'package:flutter/material.dart';
import 'package:productivity_app/Values/values.dart';

class AppData {
  static final List<Map<String, dynamic>> progressIndicatorList = [
    {
      "cardTitle": "Monday",
      "rating": "3/5",
      "progress": "68.99",
      "progressBar": "2"
    },
    {
      "cardTitle": "Tuesday",
      "rating": "3/4",
      "progress": "75.00",
      "progressBar": "3"
    },
    {
      "cardTitle": "Wednesday",
      "rating": "2/5",
      "progress": "50",
      "progressBar": "1"
    },
    {
      "cardTitle": "Thursday",
      "rating": "3/4",
      "progress": "75",
      "progressBar": "3"
    },
    {
      "cardTitle": "Friday",
      "rating": "3/5",
      "progress": "68.99",
      "progressBar": "2"
    },
  ];

  static final List<Map<String, dynamic>> notificationMentions = [
    {
      "mentionedBy": "Joshua Bumanlag",
      "mentionedIn": "Application Design",
      "read": false,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/1.png",
      "hashTagPresent": true,
      "userOnline": false,
      "color": "BBF1C3",
      "hashElement": "@tranmautritam",
      "message":
          " when you have time please take a look at the new designs I just made in Figma. 👋"
    },
    {
      "mentionedBy": "Sean Bayyono",
      "mentionedIn": "Unity Gaming",
      "read": true,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/2.png",
      "hashTagPresent": false,
      "color": "DBCFFE",
      "userOnline": true,
      "hashElement": "",
      "message":
          "Please make the presentation as soon as possible Tam. We're still waiting for it. 🏀"
    },
    {
      "mentionedBy": "Bertha Ramos",
      "mentionedIn": "UI8 Products",
      "read": true,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/4.png",
      "hashTagPresent": false,
      "userOnline": true,
      "color": "FFC5D5",
      "hashElement": "",
      "message":
          "Are you actually working? I don't see any new stuffs from you. Please Be creative!!!"
    },
    {
      "mentionedBy": "Marie Bowen",
      "mentionedIn": "Productivity",
      "date": "Nov 2nd",
      "read": true,
      "profileImage": "assets/memoji/7.png",
      "hashTagPresent": false,
      "color": "FAA3FF",
      "userOnline": false,
      "hashElement": "",
      "message": "Are you actually working? We're still waiting for it. 🏀"
    },
    {
      "mentionedBy": "Katharine Walls",
      "mentionedIn": "Unity Gaming",
      "read": true,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/2.png",
      "hashTagPresent": false,
      "color": "DBCFFE",
      "userOnline": true,
      "hashElement": "",
      "message":
          "Please make the presentation as soon as possible Tam. We're still waiting for it. 🏀"
    },
    {
      "mentionedBy": "Bertha Ramos",
      "mentionedIn": "UI8 Products",
      "read": true,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/4.png",
      "hashTagPresent": false,
      "userOnline": true,
      "color": "FFC5D5",
      "hashElement": "",
      "message":
          "Are you actually working? I don't see any new stuffs from you. Please Be creative!!!"
    },
    {
      "mentionedBy": "Marie Bowen",
      "mentionedIn": "Productivity",
      "date": "Nov 2nd",
      "read": true,
      "profileImage": "assets/memoji/7.png",
      "hashTagPresent": false,
      "color": "FAA3FF",
      "userOnline": false,
      "hashElement": "",
      "message": "Are you actually working? We're still waiting for it. 🏀"
    },
  ];

  static final List<String> profileImages = [
    "assets/memoji/1.png",
    "assets/memoji/2.png",
    "assets/memoji/4.png",
    "assets/memoji/7.png"
  ];

  static final List<Color> groupBackgroundColors = [
    HexColor.fromHex("BCF2C7"),
    HexColor.fromHex("8D96FF"),
    HexColor.fromHex("A5F69C"),
    HexColor.fromHex("FCA3FF")
  ];

  static final List<Map<String, dynamic>> onlineUsers = [
    {
      "name": "Joshua Bumanlag 🔥",
      "profileImage": "assets/memoji/1.png",
      "color": "BAF0C5",
    },
    {
      "name": "Lambert Dela Cruz 🇺🇸",
      "profileImage": "assets/memoji/2.png",
      "color": "DACFFE",
    },
    {
      "name": "Sean Bayono 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
    {
      "name": "Adrian Abelarde 🔥",
      "profileImage": "assets/memoji/7.png",
      "color": "C0E7FD",
    },
    {
      "name": "LA Toribio 🔥",
      "profileImage": "assets/memoji/9.png",
      "color": "D7D2D4",
    },
    {
      "name": "Adeline Nunez 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
    {
      "name": "Samuel Doyle 🔥",
      "profileImage": "assets/memoji/7.png",
      "color": "C0E7FD",
    },
    {
      "name": "Ruth Benson 🔥",
      "profileImage": "assets/memoji/9.png",
      "color": "D7D2D4",
    },
    {
      "name": "Adeline Nunez 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
    {
      "name": "Samuel Doyle 🔥",
      "profileImage": "assets/memoji/7.png",
      "color": "C0E7FD",
    },
    {
      "name": "Ruth Benson 🔥",
      "profileImage": "assets/memoji/9.png",
      "color": "D7D2D4",
    },
    {
      "name": "Gareth Reid 🔥",
      "profileImage": "assets/memoji/1.png",
      "color": "BAF0C5",
    },
    {
      "name": "Vincent Lyons 🇺🇸",
      "profileImage": "assets/memoji/2.png",
      "color": "DACFFE",
    },
    {
      "name": "Adeline Nunez 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
  ];

  static final List<Map<String, dynamic>> employeeData = [
    {
      "employeeName": "Sean Bayono",
      "employeeImage": "assets/girl_smile.png",
      "color": HexColor.fromHex("FCA3FF"),
      "activated": true,
      "employeePosition": "Lead UI/UX"
    },
    {
      "employeeName": "Joshua Bumanlag",
      "employeeImage": "assets/man-head.png",
      "color": HexColor.fromHex("94F1F1"),
      "activated": false,
      "employeePosition": "Lead Developer"
    },
    {
      "employeeName": "Judd Koch",
      "employeeImage": "assets/memoji/7.png",
      "color": HexColor.fromHex("8D96FF"),
      "activated": true,
      "employeePosition": "Senior Interactions Agent"
    },
    {
      "employeeName": "Katherine Wells",
      "employeeImage": "assets/memoji/2.png",
      "color": HexColor.fromHex("DBD0FD"),
      "activated": false,
      "employeePosition": "Dynamic Security Technician"
    },
    {
      "employeeName": "Betha Ramos",
      "employeeImage": "assets/memoji/9.png",
      "color": HexColor.fromHex("FFC5D5"),
      "activated": false,
      "employeePosition": "Dynamic Security Technician"
    },
    {
      "employeeName": "Greta Streich",
      "employeeImage": "assets/girl_smile.png",
      "color": HexColor.fromHex("94F1F1"),
      "activated": false,
      "employeePosition": "Dynamic Security Technician"
    },
    {
      "employeeName": "Aaliyah Langosh",
      "employeeImage": "assets/girl_smile.png",
      "color": HexColor.fromHex("FCA3FF"),
      "activated": true,
      "employeePosition": "Senior Interactions Agent"
    },
  ];

  static final List<Map<String, dynamic>> productData = [
    {
      "projectName": "App Design",
      "category": "Design",
      "color": "A06AFA",
      "ratingsUpperNumber": 15,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "Pubmats 🇵🇭",
      "category": "Marketing",
      "color": "8D96FF",
      "ratingsUpperNumber": 8,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "Productivity App",
      "category": "Design",
      "color": "FF968E",
      "ratingsUpperNumber": 15,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "OpenMind 🚀",
      "category": "Development",
      "color": "FFDE72",
      "ratingsUpperNumber": 19,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "Kubits",
      "category": "Design",
      "color": "A06AFA",
      "ratingsUpperNumber": 10,
      "ratingsLowerNumber": 20
    },
    {
      "projectName": "Anytime PitNess",
      "category": "Development",
      "color": "A6F69C",
      "ratingsUpperNumber": 18,
      "ratingsLowerNumber": 20
    },
  ];
}
