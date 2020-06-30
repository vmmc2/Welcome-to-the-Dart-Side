//...
Widget build(BuildContext context){
  return Scaffold(
    body: Center(
      child: DropdownButton<String>(  //Tem que indicar qual tipo de dado o DropdownButton vai apresenta quando a gente clicar nele. A gente indica isso dentro dos angular brackets
        value: dropdownValue,  //Isso eh o valor que eh mostrado inicialmente no DropdownButton (antes de qualquer interacao).
        onChanged: (String newValue) {  //Isso eh um callback que eh chamado quando clicamos no DropdownButton() e selecionamos um item dentro dele.
           setState(() {
            dropdownValue = newValue;
           });
        },
        items: <String>['One', 'Two', 'Three', 'Four']  //O parametro items indica quais valores serao mostrados quando clicarmos no DropdownButton()
          .map<DropdownMenuItem<String>>((String value){
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
      ),
    ),
  );
}
