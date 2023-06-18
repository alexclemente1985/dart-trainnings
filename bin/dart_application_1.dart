import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

void main(List<String> arguments) {
  print('Hello world: ${dart_application_1.calculate()}!');

  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 25;
  bool isMadura;

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  String nome1 = 'Uva';
  double peso1 = 100.2;
  String cor1 = 'Roxo';
  String sabor1 = 'Doce e cítrica';
  int diasDesdeColheita1 = 25;
  bool isMadura1;

  List<dynamic> fruta01 = ['Laranja', 100.2, 'Verde e Amarela'];
  List<dynamic> fruta02 = ['Uva', 40, 'Roxo'];

  Fruta pessego = Fruta('Pêssego', 40, 'Roxa', 'Doce', 20);
  Fruta morango = Fruta('Morango', 20, 'Roxa', 'Doce', 10);

  funcQuantosDiasMadura(dias) {
    int diasParaMadura = 30;
    int quantosDiasFaltam = dias - diasParaMadura;

    return quantosDiasFaltam;
  }

  print(funcQuantosDiasMadura(diasDesdeColheita));

  String toString(String nome, double peso, int diasDesdeColheita,
      int diasParaFicarMadura, bool estaMadura) {
    return 'A ${nome} pesa ${peso} gramas! Ela foi colhida há ${diasDesdeColheita} e precisa de ${diasParaFicarMadura} para amadurecer, logo, a ${nome} ${estaMadura ? 'está madura' : 'ainda está verde'}';
  }

  print(toString('Laranja', 98, 20, 30, false));

//Exemplo de recursividade
  funcRecursiva(int contador, int condicaoParada) {
    print('Estamos a $contador iterações sem Stack Overflow');
    if (contador >= condicaoParada) {
      return;
    }
    funcRecursiva(contador + 1, condicaoParada);
  }

  funcRecursiva(5, 15);

  print('${pessego.nome} e ${pessego.sabor}');

  Fruta2 fruit = Fruta2('Acerola', 'vermelha');

  print('${fruit.nome} é ${fruit.cor}');

  Fruta2 laranja = Fruta2('Laranja', 'laranja');
  Fruta2 uva = Fruta2.nomeados(nome: 'Uva', cor: 'roxa');
  Fruta2 pera = Fruta2.minusculas('Pera', 'amarela');

  print('${laranja.nome} é ${laranja.cor}; ${pera.nome} já é ${pera.cor}');

  print(pessego.estaMadura(50));

  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadâmia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  macadamia1.printAlimento();
  banana1.printAlimento();
  mandioca1.printAlimento();
  limao1.printAlimento();

  mandioca1.cozinhar();
  limao1.fazerSuco();

  Alimento pao1 = Alimento('Pão', 5, 'Marrom');
  Legumes cenoura1 = Legumes('Cenoura', 120, 'Laranja', true);
  Fruta abacate1 = Fruta('Abacate', 250, 'Verde', 'Doce', 10);
  Nozes castanhaCaju1 =
      Nozes('Castanha de Caju', 4, 'Branco e Marrom', 'Doce', 15, 25);
  Citricas maracuja1 = Citricas('Maracujá', 120, 'Amarelo', 'Azedo', 6, 10);

  macadamia1.fazerMassa();
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(super.nome, super.peso, super.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        'A sua $nome foi colhida há $diasDesdeColheita e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura');
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome');
  }

  @override
  void assar() {
    print('Colocar no forno');
  }

  @override
  void fazerMassa() {
    print('Misturar a fruta com farinha, açúcar, ovos...');
  }

  @override
  void separarIngredientes() {
    print('Catar a $nome');
  }
}

class Fruta2 {
  String nome;
  String cor;

  Fruta2(this.nome, this.cor);

  Fruta2.nomeados({required this.nome, required this.cor});

  Fruta2.minusculas(this.nome, this.cor) {
    nome = nome.toLowerCase();
    cor = cor.toLowerCase();
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso e é $cor');
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;
  Legumes(super.nome, super.peso, super.cor, this.isPrecisaCozinhar);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando!');
    } else {
      print('Nem precisa cozinhar!');
    }
  }

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {
    // TODO: implement fazerMassa
  }

  @override
  void separarIngredientes() {
    // TODO: implement separarIngredientes
  }
}

class Citricas extends Fruta {
  double nivelDeAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelDeAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome');
    } else {
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print('Tirar a casca');
    //super.fazerMassa();
  }
}

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}
