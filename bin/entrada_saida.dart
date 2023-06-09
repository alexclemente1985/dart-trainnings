import 'dart:io';

void main(List<String> arguments) {
  print("Qual a sua idade?");
  String? input = stdin.readLineSync();
  if(input != null && input.isNotEmpty){
    print('valor do input: ${input.length}');
    int idade = int.parse(input);
    print("Ano que vem sua idade será ${idade +1} anos.");
    print('Sua idade é ${input}');
  }else {
    print("Não foi possível calcular o valor da sua idade.");
  }

  List<String> list = ["Ricarth", "Ruan", "da", "Silva", "Lima"];
  List<String> sublist = list.sublist(1,3);
  list.forEach((element) {
    print(element);
  });
  print('cabô');
  print(sublist);

  String procurando = "Silva";

  if(list.contains(procurando)){
    print('Achô!');
  }

  print(!list.contains('Souza'));

  String myName = list.reduce((value, element){
    return value + " " + element;
  });

  print(myName);

  Iterable maior = list.where((element) => element.length>4);
  List<String> maiorStr = list.where((element) => element.length>4).toList();
  String myFirstStr = list.firstWhere((element) => element.length>4);
  String myLastStr = list.lastWhere((element) => element.length>4);
  print(maior);
  print(maior.toList());
  print(maiorStr);
  print(myFirstStr);
  print(myLastStr);

  int idade = int.parse(input as String);

  print('minha idade é de $idade.');
}
