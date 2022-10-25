import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:login_signup/main.dart'as app;

import 'const Key.dart';
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group("group_auth", () async {
    testWidgets("signUpScreen", (tester) async {
      app.main();
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(ConstKey.Name), "Ahmed");
      await tester.pumpAndSettle();
      await tester.pumpAndSettle( const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Email), "Ahmed@example.com");
      await tester.pumpAndSettle();
      await tester.pumpAndSettle( const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.contentNo), "0598356930");
      await tester.pumpAndSettle();
      await tester.pumpAndSettle( const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Password), "123456789***/");
      await tester.pumpAndSettle();
      await tester.pumpAndSettle( const Duration(seconds: 1));
      await tester.pumpAndSettle( const Duration(seconds: 1));
      await tester.press(find.byKey(ConstKey.SignUp));
      await tester.pumpAndSettle();

    });
  });
}
