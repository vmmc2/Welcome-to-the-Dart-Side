//Keys

/*
-> Em primeiro lugar: Keys apenas sao utilizadas quando estamos trabalhando com Stateful Widgets. 
-> Keys tambem devem ser utilizadas quando estamos adicionando, removendo ou deslocando colecao de Widgets do mesmo tipo e que guardam algum estado. (Ex: ToDo List App)
-> Keys servem para preservar o estado de widgets (Stateful Widget) quando eles estao se movendo dentro da WidgetTree.
-> Keys sao uteis se vc ta modificando a ordem ou a quantidade de StatefulWidgets em um colecao. 
-> As Keys devem ser colocadas no nivel mais acima possivel do Widget que estamos trabalhando de fato.
-> Tipos de Keys: ObjectKey(), GlobalKey(), PageKey().
-> GlobalKey() aparentemente eh a mais util pois permite que a gente acesse os dados de um mesmo widget atraves de diferentes "posicoes" na WidgetTree.
*/
