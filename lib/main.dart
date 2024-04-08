import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5, // The number of tabs / views.
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: const Text('Où partons nous ?'),
            bottom: const TabBar(
              labelColor: Colors.pink,
              tabs: [
                Tab(text: 'Campagne', icon: Icon(Icons.house_siding)),
                Tab(text: 'Sur l\'eau', icon: Icon(Icons.houseboat_outlined)),
                Tab(text: 'Avec vue', icon: Icon(Icons.panorama)),
                Tab(text: 'Bord de mer', icon: Icon(Icons.scuba_diving)),
                Tab(text: 'Ski', icon: Icon(Icons.downhill_skiing)),
              ],
            ),
            actions: const [Icon(Icons.account_box, color: Colors.pink)],
          ),
          drawer: const Drawer(child: Text('Drawer')),
          floatingActionButton: FloatingActionButton(
            onPressed: () => scaffoldKey.currentState?.openDrawer(),
            child: const Icon(Icons.menu),
          ),
          body: TabBarView(
            children: [
              // Ici, vous pouvez ajouter l'image à l'onglet "Campagne"
              Center(
                child: Image.network(
                  'https://media.istockphoto.com/id/1150388900/fr/photo/toscane-et-ombrie-r%C3%A9gion-de-litalie.jpg?s=1024x1024&w=is&k=20&c=l_xx69T4L_ggwZIOeAtaZmeyIN0_-NweCm_LpiU_7F0=',
                ),
              ),
              Center(child: Text('Contenu Sur l\'eau')),
              Center(child: Text('Contenu Avec vue')),
              Center(child: Text('Contenu Bord de mer')),
              Center(child: Text('Contenu Ski')),
            ],
          ),
        ),
      ),
    );
  }
}
