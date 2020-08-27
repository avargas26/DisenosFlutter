import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearText(),
          _crearText(),
          _crearText(),
          _crearText()
        ],
      ),
    ));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://unsplash.com/photos/twukN12EN7c/download'),
        height: 300.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    //el safearea nos verifica si la informacion a desplegar tiene espacio con los iphone nuevos
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago chungara', style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Este lago en alemanria', style: estiloSubTitulo)
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _crearText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Commodo qui tempor duis excepteur mollit dolore cillum sint occaecat adipisicing minim ex laboris culpa. Incididunt ea voluptate excepteur sit occaecat cillum. Anim sunt proident ad adipisicing duis veniam eu ea deserunt ut consequat ipsum laborum. Deserunt eu dolor ut consectetur in ea elit est enim. Commodo est anim irure quis id nostrud Lorem cupidatat laboris tempor.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
