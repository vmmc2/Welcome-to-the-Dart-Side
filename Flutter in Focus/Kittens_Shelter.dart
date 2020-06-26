import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Kitten{
  final String name;
  final String description;
  final int age;
  final String imageUrl;

  Kitten({this.name, this.description, this.age, this.imageUrl}); //Construtor da classe
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp(); //Construtor da classe

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        buttonColor: Colors.purple,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

List<Kitten> _kittens = [
  Kitten(
    name: "Thor",
    description: "This cat is actually the norse god of thunder. Beware!",
    age: 3000,
    imageUrl: 'https://dummyurljustfortesting.jpg',
  ),
  Kitten(
    name: "Odin",
    description: "This cat is actually the father of all.",
    age: 9000000,
    imageUrl: 'https://dummyurljustfortesting.jpg',
  ),
  Kitten(
    name: "Baldur",
    description: "This cat is indeed a norse god that got his ass kicked by Kratos in God of War 4!",
    age: 21,
    imageUrl: 'https://dummyurljustfortesting.jpg',
  ),
];

class MyHomePage extends StatelessWidget {
  MyHomePage(); //Cosntrutor

  Widget _dialogBuilder(BuildContext context, Kitten kitten){
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      children: <Widget>[
        Image.network(
          kitten.imageUrl,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text(kitten.name),
              Text('${kitten.age} years old.'),
              SizedBox(height: 16.0),
              Text(kitten.description),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: Wrap(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("I'M ALLERGIC"),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text("ADDOPT"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _listItemBuilder(BuildContext context, int index){
    return GestureDetector(
      onTap: () => showDialog(
        context: context,
        builder: (context) => _dialogBuilder(context, _kittens[index])
      ),
      child: Container(
        padding: EdgeInsets.only(left: 16.0),
        child: Text(
          _kittens[index].name,
          style: Theme.of(context).textTheme.headline,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Available Kittens"),
      ),
      body: ListView.builder(
        itemCount: _kittens.length, //itemCount -> Diz o tamanho da minha List. Quantidade de itens dentro dela.
        itemExtent: 60.0, //itemExtent -> Responsavel por dizer qual vai ser o height/altura de cada item dentro da List.
        itemBuilder: _listItemBuilder, //essa funcao eh responsavel por montar os widgets que serao mostrados dentro da List.
      )
    );
  }
}



