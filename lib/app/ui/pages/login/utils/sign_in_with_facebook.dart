import 'package:flutter/material.dart';
import 'package:flutter_auth/app/ui/global_widgets/dialogs/progress_dialog.dart';

import 'package:flutter_meedu/router.dart' as router;

import '../login_page.dart';
import 'handle_login_response.dart';

void signInWithFacebook(BuildContext context) async {
  ProgressDialog.show(context);
  final controller = loginProvider.read;
  final response = await controller.signInWithFacebook();
  router.pop();
  handleLoginResponse(context, response);
}
