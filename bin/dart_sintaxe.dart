import 'package:dart_sintaxe/dart_sintaxe.dart' as dart_sintaxe;

import 'transporte.dart';
import 'viagem.dart';

void main(List<String> arguments) {
  print('Hello world: ${dart_sintaxe.calculate()}!');

  print('Gosto da Mulher-Maravilha');

  multiplica(double a, double b) {
    return a * b;
  }

  print(multiplica(3, 40));

  /* void escolherMeioTransporte(Transporte locomocao) {
    if (locomocao == Transporte.carro) {
      print("Vou de CARRO para aventura!");
    } else if (locomocao == Transporte.bike) {
      print("Vou de BIKE para aventura!");
    }
  } */

  /*  escolherMeioTransporte(Transporte.carro);



  escolherMeioTransporte2(Transporte.bike);
  escolherMeioTransporte2(Transporte.onibus);
  escolherMeioTransporte2(null); */

  //exercício:

  void escolherTipoConta(TiposConta contaTipo) {
    switch (contaTipo) {
      case TiposConta.salario:
        print("Essa é uma conta do tipo salário.");
        break;
      case TiposConta.poupanca:
        print("Essa é uma conta do tipo poupança.");
        break;
      case TiposConta.corrente:
        print("Essa é uma conta do tipo corrente.");
        break;
      case TiposConta.investimentos:
        print("Essa é uma conta do tipo investimentos.");
        break;
      default:
        print("Tipo de conta inválido ou desconhecido.");
        break;
    }
  }

  TiposConta.tiposContasAtivos();

  //não é bom para evitar repetições
  /*  List<String> destinos = [];
  String destino = "Rio de Janeiro";
  destinos.add(destino);
  destinos.add(destino);

  print(destinos);

  //Coleções: melhor para evitar repetições na lista
  Set<String> registrosVisitados = <String>{};

  Set<String> registrarDestinos(String destino, Set<String> banco) {
    banco.add(destino);
    return banco;
  } */

/*   registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Paraná", registrosVisitados);
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);

  print(registrosVisitados);
  print(registrosVisitados.first);
  print(registrosVisitados.last);
  print(registrosVisitados.isEmpty);
  print(registrosVisitados.elementAt(1)); //Paraná
  print(registrosVisitados.contains('Rio de Janeiro')); //true
  print(registrosVisitados.contains("Natal")); //false
 */
  List<int> numbers = [];

  List<int> numbers1 = [1, 2, 3, 4];
  List<int> numbers2 = [5, 6];

  numbers.addAll(numbers1);
  print(numbers);
  numbers.addAll(numbers2);
  print(numbers);

  var numbersInRange = numbers.getRange(1, 4);
  print(numbersInRange);
  print(numbersInRange
      .runtimeType); //SubListIterable<int> -> somente métodos de iterable

  List<int> listNumbersInRange = numbersInRange.toList();
  print(listNumbersInRange);
  print(listNumbersInRange.runtimeType); //List<int> - mais métodos disponíveis

  //MAPS
  Map<String, double> registrarPrecos = {};
  registrarPrecos['São Paulo'] = 1200;
  print(registrarPrecos);
  registrarPrecos["Rio de Janeiro"] = 1500;
  print(registrarPrecos);

  print(registrarPrecos['São Paulo']);
  registrarPrecos['Rio de Janeiro'] = 1100;
  print(registrarPrecos);
  registrarPrecos['Paraná'] = 2000;
  print(registrarPrecos);
  registrarPrecos.remove('Rio de Janeiro');
  print(registrarPrecos);

  //exercício
  /* Pessoa pessoaDandara =
      Pessoa(nome: 'Dandara', idade: 25, estaAutenticada: true);
  Map<String, dynamic> mapDandara = pessoaDandara.toMap(); */

  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);

  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.visitar("Museu");
  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.alterarLocaisVisitados = 4;

  print(viagemMaio.consultarTotalLocaisVisitados);

  viagemMaio.alterarLocaisVisitados = 100;

  print(viagemMaio.consultarTotalLocaisVisitados);
}

//exercício
enum TiposConta {
  salario,
  poupanca,
  corrente,
  investimentos;

  static void tiposContasAtivos() {
    print(
        "Conta Salário, Conta Poupança, Conta Corrente e Conta Investimentos.");
  }
}

class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap() {
    return {
      "nome": this.nome,
      "idade": this.idade,
      "estaAutenticada": this.estaAutenticada
    };
  }
}
