void main(List<String> args) {
  final man = People.myInternalCont();
  man.printSomething();
}

class People {
  // People(){
  //   print('hi');
  // }

  People.myInternalCont();

  void printSomething() {
    print("hey man");
  }

  // static final People _instance = People._myInternalCont();

  // factory People() => _instance;
}
