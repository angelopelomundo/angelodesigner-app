import 'package:url_launcher/url_launcher.dart';

void launchEmail(String email) async {
  final Uri emailLaunchUri = Uri(scheme: 'mailto', path: email);
  await launchUrl(emailLaunchUri);
}
