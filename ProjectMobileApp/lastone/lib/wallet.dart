class Wallet {
  double balance = 1000;

  void addBalance(double amount) {
    balance += amount;
  }

  void deductBalance(double amount) {
    if (balance >= amount) {
      balance -= amount;
    } else {
      throw Exception('Insufficient funds');
    }
  }
}
