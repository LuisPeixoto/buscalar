import 'package:buscalar/app/components/card-item.dart';
import 'package:buscalar/app/components/list-item.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/modules/user_profile/userProfile_store.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  final String title;
  const UserProfilePage({Key? key, this.title = 'UserProfilePage'})
      : super(key: key);
  @override
  UserProfilePageState createState() => UserProfilePageState();
}

class UserProfilePageState extends State<UserProfilePage> {
  final UserProfileStore store = Modular.get();

  @override
  void _onItemTapped(int index) {
    if (index == 0) {
      Modular.to.pushReplacementNamed(Modular.initialRoute);
    } else if (index == 1) {
      Modular.to.pushReplacementNamed('/register');
    } else if (index == 2) {
      Modular.to.pushReplacementNamed('/announcement');
    } else if (index == 3) {
      Modular.to.pushReplacementNamed('/about');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Perfil',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(31, 128, 102, 102),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      offset: Offset(
                        0,
                        0,
                      ),
                    ),
                  ],
                ),
                child: Row(children: [
                  Container(
                      padding: const EdgeInsets.all(16.0),
                      height: 100,
                      child: ClipRRect(
                        child: SizedBox.fromSize(
                          child: Image.network(
                              'https://thumbs.dreamstime.com/b/male-avatar-profile-picture-silhouette-34443055.jpg',
                              fit: BoxFit.cover),
                        ),
                        borderRadius: BorderRadius.circular(50), // Image border
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Luis Fernando Peixoto',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'luispeixoto@pq.uenf.br',
                        style: TextStyle(
                            color: Color(0xFF828282),
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CardItem(
                    title: 'Meus Favoritos',
                    icon: Icons.favorite_outline,
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: CardItem(
                      title: 'Meus Anúncios',
                      icon: Icons.home_work_outlined,
                      onPress: () {}),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(4.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(31, 128, 102, 102),
                      blurRadius: 4.0,
                      spreadRadius: 1.0,
                      offset: Offset(
                        0,
                        0,
                      ),
                    ),
                  ],
                ),
                child: Column(children: [
                  ListItem(
                      title: 'Editar informações do perfil',
                      icon: Icons.person_outline_rounded,
                      onPress: () {}),
                  ListItem(
                      title: 'Termo de uso',
                      icon: Icons.text_snippet_outlined,
                      onPress: () {}),
                  ListItem(
                      title: 'Sair da conta',
                      icon: Icons.login_rounded,
                      border: false,
                      onPress: () {})
                ]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: 2,
        selectedItemColor: Color(0xFF930000),
        onTap: _onItemTapped,
      ),
    );
  }
}
