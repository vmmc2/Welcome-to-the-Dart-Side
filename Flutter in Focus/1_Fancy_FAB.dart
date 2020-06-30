import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget{
  final GestureTapCallBack onPressed; //Variavel que guarda uma funcao que vai ser chamada quando o FancyButton for pressionado.

  FancyButton({@required this.onPressed}); //Construtor da classe FancyButton
  
  @override
  Widget build(BuildContext context){
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.deepOrange,  // fillColor eh a cor do FancyButton quando ele nao ta sendo pressionado.
      splashColor: Colors.orange,    // splashColor eh a cor do FancyButton no momento em que estamos pressionando o FancyButton.
      shape: StadiumBorder(),        // o parametro "shape" indica o formato do nosso FancyButton.
      child: Row( 
        mainAxisSize: MainAxisSize.min, //Essa property setada dessa maneira, diz para o Row() widget usar o minimo de espaco horizontal possivel.
        children: <Widget>[
          Icon(
            Icons.explore,
            color: Colors.amber,
          ),
          SizedBox(width: 8.0),
          Text(
            'PURCHASE',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ]
      ),
    );
  }
}

//RotatedBox() widget -> Vc coloca um widget de sua escolha como child de RotatedBox() e podemos rotaciona-lo da forma que acharmos melhor.
