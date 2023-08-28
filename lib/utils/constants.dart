import 'package:flutter/material.dart';
import 'package:my_portfolio/models/header_item.dart';
import 'package:my_portfolio/utils/utils.dart';

const Color kPrimaryColor = Color(0xFFFFD800);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromARGB(255, 243, 22, 22);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;

double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

class AppConstants {
  static const linkedInUrl = "https://www.linkedin.com/in/mo7amedebaid/";
  static const youtubeUrl = "https://youtube.com/@user-tb3pp4zo9o?si=qn_jL-HBDcVy4WG5";
  static const githubUrl = "https://github.com/mo7amedaliEbaid";
  static const facebookUrl = "https://www.facebook.com/mohamed.ebied.980/";



  static const _assets = "assets/";
  static const _outputs = "outputs/";

  static const _svg = _assets + "svg/";
  static const guySvg = _svg + "guy.svg";
  static const personSvg = _svg + "person.svg";

  static const _images = _assets + "images/";

  static const profileimg = _images + "profile.jpg";
  static const profile1img = _images + "profile1.jpg";

  static const _socialImages = _images + "social/";
  static const emailImage = _socialImages + "gmail.png";
  static const linkedInImage = _socialImages + "linkedin.png";
  static const youtubeImage = _socialImages + "youtube.png";
  static const githubImage = _socialImages + "github.png";
  static const facebookImage = _socialImages + "facebook.png";

  static const _techImages = _images + "technology/";
  static const flutterImage = _techImages + "flutter.png";
  static const htmlImage = _techImages + "html.png";
  static const libreImage = _techImages + "libre.png";
  static const linuxImage = _techImages + "linux.png";
  static const firebaseImage = _techImages + "firebase.png";
  static const ubuntuImage = _techImages + "ubuntu.png";
  static const rnativeImage = _techImages + "reactnative.png";
  static const astudioImage = _techImages + "androidstudio.png";
  static const dartImage = _techImages + "dart.png";
  static const agoraImage = _techImages + "agora.png";
  static const javascriptImage = _techImages + "javascript.png";

  static const postmanImage = _techImages + "postman.png";
  static const vstudioImage = _techImages + "visualstudio.png";
  static const latexImage = _techImages + "latex.png";
  static const gitImage = _techImages + "git.png";
  static const sqlImage = _techImages + "sql.png";
  static const intelijiImage = _techImages + "inteliji.png";
  static const figmaImage = _techImages + "figma.png";
  static const windowsImage = _techImages + "windows.png";

  static const _stateImages = _images + "statemanagement/";
  static const blocImage = _stateImages + "bloc.png";
  static const getxImage = _stateImages + "getx.png";
  static const providerImage = _stateImages + "provider.png";
  static const riverpodImage = _stateImages + "riverpod.png";

  static const _projectsImages = _images + "projects/";
  static const smartStoreImage = _projectsImages + "1.jpeg";
  static const crossTheRoadImage = _projectsImages + "2.jpeg";
  static const newsUpImage = _projectsImages + "3.jpeg";
  static const musicLabImage = _projectsImages + "4.jpeg";
  static const personalFaceImage = _projectsImages + "5.jpeg";
  static const computerStoreImage = _projectsImages + "6.jpeg";

  static const _gifs = _outputs + "gif/";
  static const portfolioGif = _gifs + "mobile.gif";

  static List<String> firebaseSkills = [
    "Firebase Auth",
    "Cloud Firestore",
    "Firebase Storage",
    "Cloud Messaging",
    "Realtime Database",
    "Firebase Analytics"
  ];

  static List<String> databases = [
    "Sqflite",
    "Hive",
    "Get Storage",
    "Drift",
    "Floor",
    "Isar",
    "Objectbox"
  ];

  static List<String> commonpackages = [
    "Localization",
    "Local Notifications",
    "Http",
    "Dio",
    "Geolocator",
    "Google Maps",
    "SharedPreferences",
    "Connectivity Plus",
    "Url Launcher",
    "Freezed",
    "Just audio",
    "Image Picker",
    "Permission Handler",
    "Share Plus",
    "Agora Rtc Engine",
    "Webview Flutter",
    "Video Player",
    "Go Router",
    "Device Info Plus",
    "Json Serializable",
    "Screenutil"
  ];

  static List<NameOnTap> socialLoginDatas = [
    NameOnTap(
        title: emailImage,
        onTap: () {
          Utilty.openMail();
        }),
    NameOnTap(
        title: linkedInImage,
        onTap: () {
          Utilty.openUrl(linkedInUrl);
        }),
    NameOnTap(
        title: youtubeImage,
        onTap: () {
          Utilty.openUrl(youtubeUrl);
        }),
    NameOnTap(
        title: githubImage,
        onTap: () {
          Utilty.openUrl(githubUrl);
        }),
    NameOnTap(
        title: facebookImage,
        onTap: () {
          Utilty.openUrl(facebookUrl);
        }),
  ];
}