import 'package:buscalar/app/components/loading.dart';
import 'package:buscalar/app/components/navbar.dart';
import 'package:buscalar/app/components/card-item.dart';
import 'package:buscalar/app/components/list-item.dart';
import 'package:buscalar/app/components/status-bar-style.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
  void initState() {
    super.initState();
    store.loadUserLocalStorage();
  }

  @override
  Widget build(BuildContext context) {
    StatusBarStyle();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Perfil',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
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
                          borderRadius:
                              BorderRadius.circular(50), // Image border
                        )),
                    Observer(builder: (context) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            store.userName ?? '',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(height: 4),
                          Text(
                            store.userEmail ?? '',
                            style: TextStyle(
                                color: Color(0xFF828282),
                                fontSize: 18,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      );
                    })
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
                        onPress: () {
                          Modular.to.pushNamed('/list-announcemnt',
                              arguments: store.myImmobiles);
                        }),
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
                        onPress: () async {
                          loading(context);
                          await store.logout();
                          Modular.to.pop();
                          Modular.to.pushNamed(Modular.initialRoute);
                        })
                  ]),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavBar(currentIndex: 2));
  }
}
