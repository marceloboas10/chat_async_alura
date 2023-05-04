import 'dart:io';

import 'questions/time_questions.dart';

void main() async {
  String nitiBot = 'NitiBOT:\n';
  var sair = true;
  String usuario = '';

  print('=== Iniciando o NitiBOT, aguarde... ===');

  print('NitiBOT:\n Oi :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    if (usuario.contains('xau') ||
        (usuario.contains('Xau')) ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      sair = false;
      print('$nitiBot Até a próxima!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      //Verificae antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(usuario).timeQuestion();
    } else {
      print(
          '$nitiBot Não fui treinado para responder essa pergunta \n Desculpe :( ');
      print('$nitiBot você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (sair);

  print('=== Encerrando NitiBOT ==');
}
