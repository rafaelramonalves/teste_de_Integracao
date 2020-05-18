import 'package:flutter_driver/driver_extension.dart';
import 'package:testeautomatizadowidgets/main.dart' as app;

void main() {
  // Esta linha ativa a extensão.
  enableFlutterDriverExtension();

  /*
    Chame a função `main ()` do aplicativo ou chame `runApp` com
    qualquer widget que você esteja interessado em testar.
   */
  app.main();
}
