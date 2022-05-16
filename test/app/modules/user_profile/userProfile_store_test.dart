import 'package:flutter_test/flutter_test.dart';
import 'package:buscalar/app/modules/user_profile/userProfile_store.dart';
 
void main() {
  late UserProfileStore store;

  setUpAll(() {
    store = UserProfileStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}