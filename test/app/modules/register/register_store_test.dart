import 'package:flutter_test/flutter_test.dart';
import 'package:buscalar/app/modules/register_announcement/register_announcement_store.dart';

void main() {
  late RegisterAnnouncementStore store;

  setUpAll(() {
    store = RegisterAnnouncementStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.save;
    expect(store.value, equals(1));
  });
}
