import 'package:book/core/fonction/snackbar.dart';

import 'package:url_launcher/url_launcher.dart';

Future<void> geturl(context, String? urll) async {
  if (urll != null) {
    Uri uri = Uri.parse(urll);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      snackbar(context, 'Not Found $urll');
    }
  }
}
