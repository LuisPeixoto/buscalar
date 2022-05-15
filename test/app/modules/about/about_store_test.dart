import 'package:flutter_test/flutter_test.dart';
import 'package:buscalar/app/modules/about/about_store.dart';
 
void main() {
  late AboutStore store;

  setUpAll(() {
    store = AboutStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}