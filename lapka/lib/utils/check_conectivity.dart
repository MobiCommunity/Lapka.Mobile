import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:lapka/components/dialogs/basic_dialog.dart';
import 'package:lapka/components/dialogs/no_internet_dialog.dart';

class InternetConectivity {
  static Future<bool> check(context) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      BasicDialog.showDialogCustom(context, NoInternetDialog());
      return false;
    }
    return true;
  }
}
