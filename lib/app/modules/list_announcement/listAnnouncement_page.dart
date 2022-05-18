import 'package:buscalar/app/components/card-announcement.dart';
import 'package:buscalar/app/components/input-search.dart';
import 'package:buscalar/app/components/input.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/modules/list_announcement/listAnnouncement_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class ListAnnouncementPage extends StatefulWidget {
  final String title;
  const ListAnnouncementPage({Key? key, this.title = 'ListAnnouncementPage'})
      : super(key: key);
  @override
  ListAnnouncementPageState createState() => ListAnnouncementPageState();
}

class ListAnnouncementPageState extends State<ListAnnouncementPage> {
  final ListAnnouncementStore store = Modular.get();

  @override
  void _onItemTapped(int index) {
    if (index == 0) {
      Modular.to.pushReplacementNamed(Modular.initialRoute);
    } else if (index == 1) {
      Modular.to.pushReplacementNamed('/list-announcemnt');
    } else if (index == 2) {
      Modular.to.pushReplacementNamed('/user-profile');
    } else if (index == 3) {
      Modular.to.pushReplacementNamed('/about');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        title: SizedBox(
          //height: 52,
          child: InputSearch(
              title: 'Realize uma pesquisa',
              icon: Icons.search,
              onChanged: store.setSearch),
        ),
        actions: [],
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(builder: (_) {
              return ListView.builder(
                itemCount: store.listAnnouncement.length,
                itemBuilder: (_, index) {
                  var item = store.listAnnouncement[index];
                  var location = '${item.borough} - ${item.city}';
                  var image = item.images!.isEmpty
                      ? 'https://via.placeholder.com/150'
                      : item.images!.first;
                  var price = 'R\$ ${item.price}';
                  return CardAnnouncement(
                      image: image,
                      title: item.type ?? '',
                      location: location,
                      price: price + (item.type == 'Aluguel' ? '/mês' : ''),
                      onPressed: () {
                        //print(item.price);
                        var immobile = {
                          'immobile': item,
                        };
                        Modular.to
                            .pushNamed('/announcement/', arguments: immobile);
                      });
                },
              );
            }),
          ),
        ],
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
        currentIndex: 1,
        selectedItemColor: Color(0xFF930000),
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xFF930000),
        label: Text('Criar anúncio'),
        onPressed: () {
          Modular.to.pushNamed('/register');
        },
        icon: Icon(Icons.add),
      ),
    );
  }
}
