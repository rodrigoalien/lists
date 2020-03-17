import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _loadItens(){
    for(int i = 0; i < 10; i++){
      Map<String, dynamic> item = Map();
      item['titulo'] = 'Título $i';
      item['subtitulo'] = 'Descrição $i';
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            print('Item(t): ${_itens[indice].toString()}');
            return ListTile(
              title: Text('Item: ${indice.toString()}'),
              subtitle: Text('subtítulo'),
            );
          }
        ),
      ),
    );
  }
}