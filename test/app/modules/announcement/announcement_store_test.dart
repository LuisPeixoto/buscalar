import 'package:flutter_test/flutter_test.dart';
import 'package:buscalar/app/modules/announcement/announcement_store.dart';
 
void main() {
  late AnnouncementStore store;

  setUpAll(() {
    store = AnnouncementStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}