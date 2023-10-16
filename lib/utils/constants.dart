import 'package:flutter/material.dart';
import 'package:my_portfolio/models/header_item.dart';
import 'package:my_portfolio/utils/utils.dart';

const Color kPrimaryColor = Color(0xFF40AB6E);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromARGB(255, 243, 22, 22);
const Color klightCaptionColor = Color.fromRGBO(17, 16, 122, 1.0);
const Color kdarkCaptionColor = Color.fromRGBO(206, 227, 223, 1.0);

const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;

double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

sealed class AppConstants {



  static const linkedInUrl = "https://www.linkedin.com/in/mo7amedebaid/";
  static const youtubeUrl = "https://www.youtube.com/channel/UCcaLYqe9DJGdqexSQSIgs7w";
  static const githubUrl = "https://github.com/mo7amedaliEbaid";
  static const facebookUrl = "https://www.facebook.com/mohamed.ebied.980/";
  static const leetcodeUrl = "https://leetcode.com/mo7amedaliebaid/";



  static const _assets = "assets/";



  static const _images = _assets + "images/";

  static const profileimg = _images + "profile.jpg";

  static const _socialImages = _images + "social/";
  static const emailImage = _socialImages + "gmail.png";
  static const linkedInImage = _socialImages + "linkedin.png";
  static const youtubeImage = _socialImages + "youtube.png";
  static const githubImage = _socialImages + "github.png";
  static const facebookImage = _socialImages + "facebook.png";
  static const leetcodeImage = _socialImages + "leetcode.png";

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
    NameOnTap(
        title: leetcodeImage,
        onTap: () {
          Utilty.openUrl(leetcodeUrl);
        }),
  ];
}
