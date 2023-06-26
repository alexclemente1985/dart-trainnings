import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = "DJNADS12";
  double dinheiro = 0;
  Transporte locomocao;

/* Propriedade privada */
  int _totalLocaisVisitados = 0;

  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoTrabalho);
  }

  void escolherMeioTransporte(Transporte? locomocao) {
    switch (locomocao) {
      case Transporte.carro:
        print("[2] Vou de CARRO para aventura!");
        break;
      case Transporte.bike:
        print("[2] Vou de BIKE para aventura!");
        break;
      case Transporte.onibus:
        print("[2] Vou de BUSÃO para aventura!");
        break;
      default:
        print("Estou indo para aventura, isso é o que importa!");
        break;
    }
  }

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco) {
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQnt) {
    if (novaQnt < 10) {
      _totalLocaisVisitados = novaQnt;
    } else {
      print("Não é possível!");
    }
  }
}
