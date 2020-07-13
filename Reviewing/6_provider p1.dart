import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String data = 'Top Secret Data';

  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      //A gente coloca o provider no nivel mais alto da widget tree.
      //A gente tambem tem que especificar que tipo de dado a gente vai prover para os outros niveis da widget tree.
      //No caso, a gente ta provendo uma String. Portanto, fazemos Provider<String>()
      builder: (context) { //Aqui a gente coloca qual eh o dado que temos que fornecer para outros widgets distantes na widget tree.
        return data;
      },
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('$data'),
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
    return Level3();
  }
}

class Level3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<String>(context)); //Aqui a gente consegue ter acesso ao dado fornecido pelo Provider<String>()
  }
}




