import 'package:console_bank_app/console_bank_app.dart' as console_bank_app;
import '../lib/Models/account.dart';

void main(List<String> arguments) {
  Account myAcct = Account.openAccount();
  myAcct.deposit(1000.00);
  myAcct.withdraw(200.56);
  print(myAcct.balance);
  myAcct.withdraw(2000);
  print(myAcct.balance);
  myAcct.deposit(12432.08);
  myAcct.printLog();
}
