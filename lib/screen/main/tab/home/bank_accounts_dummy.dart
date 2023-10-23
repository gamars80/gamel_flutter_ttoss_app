import 'package:gamel_flutter_ttoss/screen/main/tab/home/bank_dummy.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountsShinhan1 =
    BankAccount(bankShinhan, 1000000, accountTypeName: '신한 주거래 우대통장');
final bankAccountsShinhan2 =
    BankAccount(bankShinhan, 2000000, accountTypeName: '저축 예금');
final bankAccountsShinhan3 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '저축 예금');
final bankAccountsKakao =
    BankAccount(bankKakao, 4000000, accountTypeName: '입출금 통장');
final bankAccountsTtoss = BankAccount(bankTtoss, 5000000);

main(){
  print('test');
}

final bankAccounts = [
  bankAccountsShinhan1,
  bankAccountsShinhan2,
  bankAccountsShinhan3,
  bankAccountsKakao,
  bankAccountsTtoss
];
