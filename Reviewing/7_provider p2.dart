import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      //A gente coloca o provider no nivel mais alto da widget tree.
      //A gente tambem tem que especificar que tipo de dado a gente vai prover para os outros niveis da widget tree.
      //No caso, a gente ta provendo uma String. Portanto, fazemos Provider<String>()
      builder: (context) { //Aqui a gente coloca qual eh o dado que temos que fornecer para outros widgets distantes na widget tree.
        return Data();
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: MyText(),
          ),
          body: Level1(),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyTextField(),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context).data); //Aqui a gente consegue ter acesso ao dado fornecido pelo Provider<String>()
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context).data);
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField( //Aqui eu vou fazer as mudancas necessarias que serao passadas por meio do Provider() para o objeto do tipo Data()
      onChanged: (newValue) {
        Provider.of<Data>(context).changeString(newValue);
      },
    );
  }
}

class Data extends ChangeNotifier{ //Eh utilizado quando precisamos transmitir mudancas que ocorreram.
  String data = 'Top Secret Data';

  void changeString(String newString){
    //Para mudar a String, a gente tem que fazer a mudanca dentro de um metodo pois com isso a gente pode chamar outro metodo notifyListeners();
    data = newString;
    notifyListeners(); //Assim que fizer uma modificacao, eu notifico os subscribers...
    return;
  }
}






