import 'package:flutter_modular/flutter_modular.dart';

void bottomNavigationBarItems(
  int index,
) {
  if (index == 0) {
    Modular.to.pushReplacementNamed(Modular.initialRoute);
  } else if (index == 1) {
    Modular.to.pushReplacementNamed(
      '/list-announcemnt',
    );
  } else if (index == 2) {
    Modular.to.pushReplacementNamed('/user-profile');
  } else if (index == 3) {
    Modular.to.pushReplacementNamed('/about');
  }
}
