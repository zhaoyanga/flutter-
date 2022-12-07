main() {
  int? a;
  int b = a ??= 20; // ??= 等价于，如果 a 为 null，那就走后面的 = 20；如果 a 不为 null，则 = a
  print(b);
  print(b += 10);
}