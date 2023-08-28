import 'package:url_launcher/url_launcher.dart';

class Utilty {
  static Future<void> openUrl(String url) async {
    print("pressed");
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  static Future<void> openMail() => openUrl("mailto:mo7amedaliebaid@gmail.com");

  static Future<void> openMyLocation() =>
      openUrl("https://goo.gl/maps/BMqhL1VkUCXVq7pC7");
  static Future<void> openMyPhoneNo() => openUrl("tel:+201016381636");
  static Future<void> openWhatsapp() => openUrl("https://wa.me/+201016381636");
}
