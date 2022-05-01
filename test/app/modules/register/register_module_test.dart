import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:buscalar/app/modules/register_announcement/register_announcement_module.dart';

void main() {
  setUpAll(() {
    initModule(RegisterAnnouncementModule());
  });
}
