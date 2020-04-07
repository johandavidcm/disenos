import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _acciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _pasarPagina(context),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    ));
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Billie Eilish',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Cantante',
                    style: estiloSubtitulo,
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '10',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
        width: double.infinity,
        child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 200),
          image: NetworkImage(
              'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AAIACTm.img?h=0&w=720&m=6&q=60&u=t&o=f&l=f'),
          fit: BoxFit.cover,
          height: 300.0,
          placeholder: AssetImage('assets/giphy.gif'),
        ));
  }

  Widget _acciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Llamar'),
        _accion(Icons.near_me, 'Ruta'),
        _accion(Icons.share, 'Compartir')
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Quis Lorem reprehenderit aute laboris laboris. Aute irure est cupidatat officia sunt nostrud cillum voluptate duis officia magna et laborum nostrud. Consectetur qui in commodo cupidatat irure proident proident minim occaecat fugiat esse voluptate. Nulla exercitation non nostrud quis nisi nostrud ullamco esse enim et dolor amet exercitation ipsum. Commodo ex laborum cupidatat occaecat non exercitation Lorem culpa do id. Aliqua magna cupidatat velit dolor esse cillum culpa ad dolore aliqua labore. Est anim non mollit ex.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _pasarPagina(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context)
              .push(CupertinoPageRoute(builder: (BuildContext context) {
            return ScrollPage();
          }));
        },
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          'Siguiente vista',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
