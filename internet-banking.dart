class Sistema {
  double saldo;
  double valor;
  double limite;
  
  Sistema(this.saldo, this.valor, this.limite);
  
  void deposito() {
    saldo = valor + saldo;
    print("Você realizou um depósito de R\$ $valor. Saldo total R\$ $saldo.");
  }
  
  void credito() {
    if(saldo <= 10000.0){
      limite = 2500.0;
      print("Você tem R\$ $limite de limite disponível");
    }
    else if (saldo <= 50000.0 && saldo >= 50000.0) {
      limite = 5000.0;
      print("Você tem R\$ $limite de limite disponível");
    } else {
      print("Seu saldo é insuficiente.");
    }
  }
  
  void saque() {
    if(saldo > 0){
      saldo = saldo - valor;
      print("Você realizou um saque de R\$ $valor. Saldo total R\$ $saldo.");
    } else {
      print("Seu saldo é insuficiente para saque.");
    }
  }
}

class Cliente extends Sistema{
  String name;
  String cpf;
  int age;
  
  Cliente(this.name, this.cpf, this.age, double saldo, double valor, double limite) :  super(saldo,valor,limite);
  
  void extrato() {
    print("""
    -----------------------
             Extrato
    -----------------------
    Nome: $name
    CPF: $cpf
    idade: $age
    -----------------------
    Saldo: R\$ $saldo
    Limite: R\$ $limite
    """);
  }
}

void main() {
  
  Cliente edison = Cliente("Edison", "000.000.000-00", 22, 50000.0, 500.0, 0.0);
  edison.credito();
  edison.deposito();
  edison.saque();
  edison.extrato();
  
  
}