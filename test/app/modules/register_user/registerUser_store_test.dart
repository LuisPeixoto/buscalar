import 'package:flutter_test/flutter_test.dart';
import 'package:buscalar/app/modules/register_user/registerUser_store.dart';
 
void main() {
  late RegisterUserStore store;

  setUpAll(() {
    store = RegisterUserStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}