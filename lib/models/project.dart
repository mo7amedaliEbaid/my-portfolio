import 'package:my_portfolio/models/technology.dart';

class ProjectModel {
  final String project;
  final String title;
  final String description;
  final String projectLink;
  final List<TechnologyModel> techUsed;
  final String? buttonText;

  ProjectModel({
    required this.project,
    required this.title,
    required this.description,
    required this.projectLink,
    required this.techUsed,
    this.buttonText,
  });

  static List<ProjectModel> projects = [
    ProjectModel(
      project: "Flutter App",
      title: "Islamic App",
      description:
      "This is a flutter Islamic App with Complete Quran, Prayer times Api, Hadith, Azkar and Five Pillars of Islam. It has many features such as playing youtube videos, search quran, multiple languages, multiple themes and much more...",
      projectLink: "https://github.com/mo7amedaliEbaid/islamic",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Quran App",
      description: "Flutter Quran app to read or listen to the holly quran recited by multiple readers, Cubit state management and clean architecture principles are applied.",
      projectLink: "https://github.com/mo7amedaliEbaid/quran",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter Project",
      title: "Kafka",
      description: "Fully functional Multiplatform project working perfectly with android, ios, desktop and web for the books and quotes of Franz Kafka.",
      projectLink: "https://github.com/mo7amedaliEbaid/kafka",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
        TechnologyConstants.linux
      ],
      buttonText: "Github Link",
    ),

    ProjectModel(
      project: "Flutter App",
      title: "Movies App",
      description:
      "Movies multiplatform application based on TMDB api, built with clean architecture and riverpod state management.",
      projectLink: "https://github.com/mo7amedaliEbaid/movies_riverpod",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
        TechnologyConstants.linux
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter Project",
      title: "Color Selector",
      description:
      "Fully functional color picker website working perfectly in flutter application, to get the HEX, RGB, HSV and HSL of any color, extract a color from any image.",
      projectLink: "https://github.com/mo7amedaliEbaid/Color-Selector",
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
      "A complete news website working perfectly in flutter application. Multiple themes, search functionality, Responsive Design, Data Caching, 3D navigation and much more..",
      projectLink: "https://github.com/mo7amedaliEbaid/news-wire",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
        TechnologyConstants.linux
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Online Shop",
      description:
      "By using firebase as a backend, I developed a flutter app for shoping online, Cart, Paymob Integration and Google maps are provided.",
      projectLink: "https://github.com/mo7amedaliEbaid/online-shop",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),

    ProjectModel(
      project: "Flutter App",
      title: "Beautify",
      description:
      "Beautify is a flutter e-commerce app built using MVVM architecture pattern for displaying makeup products ,managing user's orders and sales , Cart, Search functionality are provided.",
      projectLink: "https://github.com/mo7amedaliEbaid/beautify",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Run Tracker",
      description:
      "It's a run tracker app to track the distance , speed and time of your activity (running, cycling,......). It's built with clean architecture and riverpod state management.",
      projectLink: "https://github.com/mo7amedaliEbaid/run-tracker",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter App",
      title: "Audio Player",
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
    ProjectModel(
      project: "Flutter App",
      title: "Weather TDD",
      description:
      "A simple project in my journey of learning Test-driven development (TDD) and Tests in Flutter.",
      projectLink: "https://github.com/mo7amedaliEbaid/weather-TDD",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
      ],
      buttonText: "Github Link",
    ),
    ProjectModel(
      project: "Flutter Project",
      title: "Fitness App",
      description:
      "Multiplatform (Android, Ios, Desktop) fitness app with clean architecture and bloc state maanagement.",
      projectLink: "https://github.com/mo7amedaliEbaid/fitness-app-clean-arch",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
        TechnologyConstants.linux
      ],
      buttonText: "Github Link",
    ),
  ];



}
