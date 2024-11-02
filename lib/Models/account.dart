class Account {
  double _balance = 0.0;
  final List<String> _log = [];

  static bool isOpened = false;

  // start account with no initial balance
  Account.openAccount() {
    if (!isOpened) {
      _balance = 0.0;
      isOpened = true;
      DateTime currentDT = DateTime.now();
      _addLog("$currentDT - Acct Created");
    } else {
      DateTime currentDT = DateTime.now();
      _addLog("$currentDT - ERROR! - Attmpt to open acct again");
    }
  }

  // return balance
  double get balance => _balance;

  // deposit and increment balance
  bool deposit(double depositAmt) {
    try {
      _balance += depositAmt;
      DateTime currentDT = DateTime.now();
      _addLog("$currentDT - Deposit - $depositAmt");
      return true;
    } catch (e) {
      DateTime currentDT = DateTime.now();
      _addLog("$currentDT - ERROR! - FAIL at DEPOSIT");
      return false;
    }
  }

  // withdraw amount from deposit
  bool withdraw(double withdrawAmt) {
    try {
      if (_balance >= withdrawAmt) {
        _balance -= withdrawAmt;
        DateTime currentDT = DateTime.now();
        _addLog("$currentDT - withdraw - $withdrawAmt");
        return true;
      } else {
        DateTime currentDT = DateTime.now();
        _addLog("$currentDT - ERROR! - FAIL at Deposit (Insufficent Funds)");
        return false;
      }
    } catch (e) {
      DateTime currentDT = DateTime.now();
      _addLog("$currentDT - ERROR! - FAIL at WITHDRAW");
      return false;
    }
  }

  // add transaction to log
  bool _addLog(String message) {
    _log.add(message);
    return true;
  }

  // print all transactions from log
  void printLog() {
    print(_log);
    DateTime currentDT = DateTime.now();
    _addLog("$currentDT - Log Accessed");
  }
}
