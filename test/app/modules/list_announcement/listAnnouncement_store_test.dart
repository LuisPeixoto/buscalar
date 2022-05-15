import 'package:flutter_test/flutter_test.dart';
import 'package:buscalar/app/modules/list_announcement/listAnnouncement_store.dart';
 
void main() {
  late ListAnnouncementStore store;

  setUpAll(() {
    store = ListAnnouncementStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}