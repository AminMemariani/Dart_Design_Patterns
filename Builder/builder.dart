abstract class Dialog {
  void show();
}

class CustomDialog implements Dialog {
  String? title;
  String? message;
  bool? hasCloseButton;

  @override
  void show() {
    print('Dialog: "$title" - $message');
    if (hasCloseButton == true) print('Has a close button.');
  }
}

class DialogBuilder {
  final CustomDialog _dialog = CustomDialog();

  DialogBuilder setTitle(String title) {
    _dialog.title = title;
    return this;
  }

  DialogBuilder setMessage(String message) {
    _dialog.message = message;
    return this;
  }

  DialogBuilder addCloseButton() {
    _dialog.hasCloseButton = true;
    return this;
  }

  CustomDialog build() => _dialog;
}

void main() {
  var dialog = DialogBuilder()
      .setTitle('Warning')
      .setMessage('Low battery')
      .addCloseButton()
      .build();

  dialog.show();
}
