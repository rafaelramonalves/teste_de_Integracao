// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    /*
      First, define the Finders and use them to locate widgets from the
      test suite.
      Note: the Strings provided to the `byValueKey` method must
       be the same as the Strings we used for the Keys in step 1.
     */
    final counterTextFinder = find.byValueKey('counter');
    final buttonFinder = find.byValueKey('increment');

    FlutterDriver driver;

    // Conecte-se ao driver Flutter antes de executar qualquer teste.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Feche a conexão com o driver após a conclusão dos testes.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Começando do 0', () async {
      // Use o método `driver.getText` para verificar se o contador inicia em 0.
      expect(await driver.getText(counterTextFinder), "0");
    });

    test('incrementando o contador', () async {
      // Primeiro, toque no botão.
      await driver.tap(buttonFinder);

      //Em seguida, verifique se o texto do contador é incrementado em 1.
      expect(await driver.getText(counterTextFinder), "1");
    });
  });
}
