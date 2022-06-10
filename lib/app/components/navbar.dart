import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NavBar extends StatelessWidget {
  final int currentIndex;
  const NavBar({
    required this.currentIndex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: 'Lista',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'Sobre',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: Color(0xFF930000),
      onTap: bottomNavigationBarItems,
    );
  }
}

void bottomNavigationBarItems(
  int index,
) {
  if (index == 0) {
    Modular.to.pushNamed('/home');
  } else if (index == 1) {
    Modular.to.pushNamed(
      '/list-announcemnt',
    );
  } else if (index == 2) {
    Modular.to.pushNamed('/user-profile');
  } else if (index == 3) {
    Modular.to.pushNamed('/about');
  }
}
