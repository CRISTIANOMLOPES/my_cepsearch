import 'package:myapp/busca_cep.dart';
import 'package:test/test.dart';

void main() {
  test('Retorna CEP', () async {
    var body = await BuscaCep().retornaCep("91060530");
    print(body);
    expect(body["bairro"], "São Sebastião");
  });
}
