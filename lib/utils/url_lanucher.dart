import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  const UrlLauncher._();

  static Future<void> lanuch(String urlText) async {
    final uri = Uri.tryParse(urlText);
    if (uri == null) return;
    await launchUrl(
      Uri.parse(urlText),
      mode: LaunchMode.externalApplication,
    );
  }
}
