import '../dialogue/dialogues.dart';
import 'app_extention.dart';

class BaseController {
  void handleError(error) {
    hideLoading();
    if (error is BadRequestException) {
      var message = error.message;
      print('BadRequestException: ' + message.toString());
      DialogHelper.showErroDialog(description: message);
    } else if (error is FetchDataException) {
      var message = error.message;
      print('FetchDataException: ' + message.toString());
      DialogHelper.showErroDialog(description: message);
    } else if (error is ApiNotRespondingException) {
      DialogHelper.showErroDialog(description: 'Oops! It took longer to respond.');
    }
  }

  hideLoading() {
    DialogHelper.hideLoading();
  }
}
