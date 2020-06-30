// Inherited Widget...
/*
-> Inherited Widget costuma ser utilizado para resolver o problema de passar e acessar dados de certos widgets quando a WidgetTree fica muito grande.
-> Suponha que vc tenha um Widget A e um Widget B que se encontra 5 posições abaixo na WidgetTree em relacao ao Widget A. Suponha tambem que o Widget B quer ter acesso aos dados
do Widget A. Para isso, usamos InheritedWidget().
-> Quando a gente coloca um InheritedWidget() dentro de uma WidgetTree, a gente pode ter acesso a ele por meio de qualquer outro widget que esteja abaixo dele na WidgetTree.
*/

//Observe o exemplo abaixo...
class InheritedNose extends InheritedWidget{
  final Image asset;
  
  InheritedNose({this.asset, Widget child}) : super(child: child);  //InheritedWidget sempre tem que ter no minimo um parametro no construtor: O child.
  
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}

class FilipWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final nose = context.inheritFromWidgetOfExactType(InheritNose).asset; //Pronto, agora a variavel "nose" apresenta o mesmo valor que a variavel "asset" de InheritNose, que pode estar muito acima na WidgetTree.
    //InheritedWidget is an immutable widget (It cannot be changed). So its variables must be set with the "final" keyword.
  }
}

