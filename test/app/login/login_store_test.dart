import 'package:flutter_test/flutter_test.dart';
import 'package:buscalar/app/modules/login/login_store.dart';

void main() {
  late LoginStore store;

  setUpAll(() {
    store = LoginStore();
  });

  test('increment count', () async {
    expect(store.email, equals(0));
    store.login();
    expect(store.email, equals(1));
  });
}
