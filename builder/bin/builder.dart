import 'package:builder/builder.dart' as builder;

void main(List<String> arguments) {
  ClienteBuilder clienteBuilder =
      ClienteBuilder("Rua 13", "46 1234-5678", "emaildocliente@hotmail.com");

  Cliente cliente = Cliente(clienteBuilder);

  print(cliente._email);
  print(cliente._endereco);
  print(cliente._telefone);
}

class ClienteBuilder {
  String _endereco = "";
  String _telefone = "";
  String _email = "";

  ClienteBuilder(String endereco, String telefone, String email) {
    _endereco = endereco;
    _telefone = telefone;
    _email = email;
  }
  // Getter e setter dos atributos
  String get endereco => _endereco;
  set endereco(String novoEndereco) {
    _endereco = novoEndereco;
  }

  String get telefone => _telefone;
  set telefone(String novoTelefone) {
    _telefone = novoTelefone;
  }

  String get email => _email;
  set email(String novoEmail) {
    _email = novoEmail;
  }

  Cliente criarCliente() {
    return Cliente(this);
  }
}

class Cliente {
  String _endereco = "";
  String _telefone = "";
  String _email = "";

  Cliente(ClienteBuilder clienteBuilder) {
    _endereco = clienteBuilder.endereco;
    _telefone = clienteBuilder.telefone;
    _email = clienteBuilder.email;
  }
  // Getter e setter dos atributos
  String get endereco => _endereco;
  set endereco(String novoEndereco) {
    _endereco = novoEndereco;
  }

  String get telefone => _telefone;
  set telefone(String novoTelefone) {
    _telefone = novoTelefone;
  }

  String get email => _email;
  set email(String novoEmail) {
    _email = novoEmail;
  }
}
