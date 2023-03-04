main() {
  // var addFun = (int a, int b){
  //   return a + b;
  // };
  // print(addFun.runtimeType); // (int, int) => int
  // print(addFun(10,20)); // 30

  // OperationFun addFun = (int a, int b){
  //   return a + b;
  // };
  //
  // print(addFun.runtimeType);
  // print(addFun(10,20));

  FishMan man = FishMan(hook: (String name) {
    print("钓到一条$name");
  });

  Pond pond = Pond(fishMan: man);
  pond.emitFish("鲫鱼"); // 钓到一条鲫鱼
}

// typedef OperationFun = int Function(int a,int b);
//
// class Operation {
//   final OperationFun add;
//
//   Operation({required this.add});
// }

typedef OnBiteCallBack = void Function(String name);

class FishMan {
  final OnBiteCallBack hook;

  FishMan({required this.hook});
}

class Pond {
  FishMan fishMan;
  Pond({required this.fishMan});

  void emitFish(String name) {
    fishMan.hook(name);
  }
}
