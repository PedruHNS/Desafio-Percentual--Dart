import 'dart:io';

String input({required String mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

void calcFaixaEtaria(Map<int, dynamic> grupo) {
  int faixa1 = 0, faixa2 = 0, faixa3 = 0, faixa4 = 0, faixa5 = 0;

  grupo.forEach(
    (key, value) {
      if (grupo[key]["idade"] <= 15) {
        faixa1++;
      } else if (grupo[key]["idade"] <= 30) {
        faixa2++;
      } else if (grupo[key]["idade"] <= 45) {
        faixa3++;
      } else if (grupo[key]["idade"] <= 60) {
        faixa4++;
      } else {
        faixa5++;
      }
    },
  );
  int total = grupo.length;
  print("---------------------------------------------");
  print("total de pessoas: $total");
  print("Até 15 anos:$faixa1 percentual: ${faixa1 / total * 100}%");
  print("De 16 a 30 anos: $faixa2 percentual: ${faixa2 / total * 100}%");
  print("De 31 a 45 anos: $faixa3 percentual: ${faixa3 / total * 100}%");
  print("De 46 a 60 anos: $faixa4 percentual: ${faixa4 / total * 100}%");
  print("Acima de 61: $faixa5 percentual: ${faixa5 / total * 100}%");
}

void calcSexo(Map<int, dynamic> grupo) {
  //TODO em breve;
}
void main() {
  Map<int, dynamic> pessoas = {};
  for (int i = 1; i <= 2; i++) {
    pessoas[i] = {};
    pessoas[i]["nome"] = input(mensagem: "qual nome?");
    pessoas[i]["idade"] = int.parse(input(mensagem: "digite a idade"));
    pessoas[i]["sexo"] = input(mensagem: "digite m = masc / f - fem");
    print("--------------------------------------------------------");
  }
  calcFaixaEtaria(pessoas);

  //TODO calcSexo(pessoas);
}
