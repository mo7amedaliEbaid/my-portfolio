import 'package:my_portfolio/models/link.dart';
import 'package:my_portfolio/models/technology.dart';
import 'package:my_portfolio/utils/constants.dart';

class ProjectModel {
  final String project;
  final String title;
  final String description;
  final String projectLink;
  final List<TechnologyModel> techUsed;
  List<LinkModel>? links = [];
  final String? buttonText;

  ProjectModel({
    required this.project,
    required this.title,
    required this.description,
    required this.projectLink,
    required this.techUsed,
    this.buttonText,
    this.links,
  });

  static List<ProjectModel> projects = [
    ProjectModel(
      project: "Flutter App",
      title: "Islamic App",
      description:
      "This is a flutter Islamic App with Complete Quran, Prayer times Api, Hadith, Azkar and Five Pillars of Islam. It has many features such as playing youtube videos, search quran, multiple languages, multiple themes and much more...",
      //  appPhotos: AppConstants.newsUpImage,
      projectLink: "https://github.com/mo7amedaliEbaid/islamic",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Alpha Store",
      description: "Alpha Store is a Flutter app for hyper, multi-categories market to display products, manage sales and orders.",
     // appPhotos: AppConstants.crossTheRoadImage,
      projectLink: "https://github.com/mo7amedaliEbaid/Ecommerce-Flutter",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),

    ProjectModel(
      project: "Flutter App",
      title: "Easy Chat",
      description:
      "Easy Chat is a flutter app for Online Messaging ( Textual, Images ), Group Chats and Video Calls. It is backed by Firebase and Agora platform.",
      projectLink: "https://github.com/mo7amedaliEbaid/easy-chat",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.agora,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Housing Organizer",
      description:
      "A Flutter App for organizing real estates selling and renting, The user can make a post about his product or buy from what is available.",
      projectLink: "https://github.com/mo7amedaliEbaid/housing-organizer",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
        TechnologyConstants.firebase,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter Project",
      title: "News Wire",
      description:
      "A complete news website working perfectly in flutter application. Multiple themes, search functionality, 3D navigation and much more..",
      projectLink: "https://github.com/mo7amedaliEbaid/news-wire",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter Project",
      title: "Phones Shop",
      description:
      "Phones Shop is a fully functional website working perfectly in flutter application. The user can buy phones or post phones for sale.",
      projectLink: "https://github.com/mo7amedaliEbaid/phones-shop-web-app-firebase",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),

    ProjectModel(
      project: "Flutter App",
      title: "Coffee Shop",
      description:
      "A Flutter app to display products ,manage orders and sales of a coffee shop, It is based on local database, Cart and contact us screens are provided...",
      projectLink: "https://github.com/mo7amedaliEbaid/Coffee-Shop-Getx",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Audio Bliss",
      description:
      "Audio Bliss is an audio \" MP3 \" player built in flutter, It asks for permission to access internal storage and once it is allowed you can play any mp3 file from your internal storage in this app.",
      projectLink: "https://github.com/mo7amedaliEbaid/audio-bliss",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
  ];

  static List<ProjectModel> demos = [
    ProjectModel(
      project: "Flutter App",
      title: "Flutter Web Portfolio",
      description: "",
      projectLink: "https://github.com/AgnelSelvan/Flutter-Web-Portfolio",
      techUsed: [],
      buttonText: "Github Link",
    ),
  ];

}
