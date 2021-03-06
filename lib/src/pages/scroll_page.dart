import 'package:disenos/src/pages/botones_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(context),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(fontSize: 50.0, color: Colors.white);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 25.0,),
          Text('11°', style: estiloTexto,),
          Text('Miércoles', style: estiloTexto,),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );
  }

  Widget _pagina2(BuildContext context) {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _boton(context),
      ],
    );
  }

  Widget _boton(BuildContext context) {
    return Center(
      child: RaisedButton(
        shape: StadiumBorder(),
        textColor: Colors.white,
        onPressed: (){
          Navigator.of(context).push(CupertinoPageRoute(builder: (BuildContext context){
            return BotonesPage();
          }));
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text('Bienvenido', style: TextStyle(fontSize: 20.0),),
        ),
        color: Colors.blue,
      )
    );
  }

  
}