main() {
  String phone = '15798002700';
  print(phone.isPhone()); // true
  print("toly" > "hello"); // true
}

extension iphoneStr on String {
  bool isPhone() {
    const String reg = r'^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$';
    RegExp(reg).hasMatch(this);
    return RegExp(reg).hasMatch(this);
  }

  bool operator >(String other) {
    print("$this,$other"); // toly,hello
    int thisCode = 0;
    int otherCode = 0;
    if (isNotEmpty) { // 是否为空
      thisCode = codeUnits.first; // 每个字符代表的编码
    }
    if (other.isNotEmpty) {
      otherCode = other.codeUnits.first;
    }
    return thisCode > otherCode;
  }
}