import 'package:buscalar/app/components/card-announcement.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:buscalar/app/modules/list_announcement/listAnnouncement_store.dart';
import 'package:flutter/material.dart';

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
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.white,
        title: SizedBox(
          height: 52,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFEBEBEB),
              prefixIcon: Icon(Icons.search, color: Color(0xFF949597)),
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8)),
              hintStyle: TextStyle(color: Color(0xFF949597)),
              hintText: 'Digite o local que deseja ',
            ),
          ),
        ),
        actions: [
          Container(
            child: Container(
              width: 62,
              margin: EdgeInsets.fromLTRB(0, 14, 16, 13),
              decoration: BoxDecoration(
                color: Color(0xFFEBEBEB),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                icon: Icon(Icons.filter_alt, color: Color(0xFF949597)),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(children: const [
                Text(
                  'Todos',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF930000),
                  ),
                ),
                SizedBox(width: 24),
                Text(
                  'Aluguel',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 166, 167, 169),
                  ),
                ),
                SizedBox(width: 24),
                Text(
                  'Venda',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 166, 167, 169),
                  ),
                ),
                SizedBox(width: 24),
                Text(
                  'Hotel',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 166, 167, 169),
                  ),
                ),
                SizedBox(width: 24),
                Text(
                  'Pousada',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 166, 167, 169),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 16),
            CardAnnouncement(
                image:
                    'https://imganuncios.mitula.net/casa_no_melhor_condominio_de_campos_dos_goytacazes_4_suites_6890001644930455716.jpg',
                title: 'Aluguel',
                location: 'Pelinca, Campos dos Goytacazes',
                price: 'R\$ 1.000/mês',
                onPressed: () {
                  Modular.to.pushNamed('/announcemnt', arguments: {
                    'id': '1',
                    'title': 'Aluguel',
                    'location': 'Pelinca, Campos dos Goytacazes',
                    'price': 'R\$ 1.000/mês',
                    'phoneNumber': '+55 21 99999-9999',
                    'description':
                        'Uma casa de aluguel, muito bem localizada, com vista para o mar',
                  });
                }),
            CardAnnouncement(
                image:
                    'https://imganuncios.mitula.net/casa_no_melhor_condominio_de_campos_dos_goytacazes_4_suites_6890001644930455716.jpg',
                title: 'Aluguel',
                location: 'Pelinca, Campos dos Goytacazes',
                price: 'R\$ 1.000/mês',
                onPressed: () {}),
            CardAnnouncement(
                image:
                    'https://imganuncios.mitula.net/casa_no_melhor_condominio_de_campos_dos_goytacazes_4_suites_6890001644930455716.jpg',
                title: 'Aluguel',
                location: 'Pelinca, Campos dos Goytacazes',
                price: 'R\$ 1.000/mês',
                onPressed: () {}),
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
