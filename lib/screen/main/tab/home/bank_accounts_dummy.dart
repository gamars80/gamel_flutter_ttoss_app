import 'package:gamel_flutter_ttoss/screen/main/tab/home/bank_dummy.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountsShinhan1 =
    BankAccount(bankShinhan, 1000000, accountTypeName: '신한 주거래 우대통장');
final bankAccountsShinhan2 =
    BankAccount(bankShinhan, 2000000, accountTypeName: '저축 예금');
final bankAccountsShinhan3 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '저축 예금');
final bankAccountsShinhan4 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '저축 예금');
final bankAccountsShinhan5 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '저축 예금');
final bankAccountsShinhan6 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '저축 예금');
final bankAccountsShinhan7 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '저축 예금');
final bankAccountsShinhan8 =
    BankAccount(bankShinhan, 3000000, accountTypeName: '저축 예금');

final bankAccountsKakao =
    BankAccount(bankKakao, 4000000, accountTypeName: '입출금 통장');
final bankAccountsTtoss = BankAccount(bankTtoss, 5000000);

final bankAccounts = [
  bankAccountsShinhan1,
  bankAccountsShinhan2,
  bankAccountsShinhan3,
  bankAccountsShinhan4,
  bankAccountsShinhan5,
  bankAccountsShinhan6,
  bankAccountsShinhan7,
  bankAccountsShinhan8,
  bankAccountsKakao,
  bankAccountsTtoss
];
