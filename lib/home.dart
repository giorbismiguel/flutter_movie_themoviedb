import 'package:flutter/material.dart';
import 'package:movies_app/media_list.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  // void initState() {
  //   super.initState();
  //   _loadJson();
  // }

  // _loadJson() async {
  //   String data = await HttpHandler().fetchMovies();

  //   print(data);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Flutter Movie'),
        actions: <Widget>[
          new IconButton(
              onPressed: () {},
              icon: new Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      drawer: new Drawer(
          child: ListView(
        children: <Widget>[
          new DrawerHeader(
            child: new Material(),
          ),
          new ListTile(
            title: new Text("Peliculas"),
            trailing: new Icon(Icons.local_movies),
          ),
          new Divider(
            endIndent: 5.0,
          ),
          new ListTile(
            title: new Text("Televisión"),
            trailing: new Icon(Icons.live_tv),
          ),
          new Divider(
            endIndent: 5.0,
          ),
          new ListTile(
            title: new Text("Cerrar"),
            trailing: new Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(), // Cerrar rutas de la app
          ),
        ],
      )),
      body: PageView(
        children: <Widget>[new MediaList()],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up), label: 'Populares'),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.update), label: 'Próximamente'),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.star), label: 'Mejor valoradas'),
    ];
  }
}
