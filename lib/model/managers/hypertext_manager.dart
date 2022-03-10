import 'package:url_launcher/url_launcher.dart';

class HyperTextManager {
  static dynamic launchHyperText(String urlToLaunch, String uriType) async {
    final Uri linkToLaunch = Uri(
      scheme: uriType,
      path: urlToLaunch,
      query: _encodeQueryParameters(<String, String>{
        "Proposition d'emploi !": "Vos compétences m'intéresse beaucoup, et si nous discutions ?"
      }),
    );

    await launch(linkToLaunch.toString());
  }

  static String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}