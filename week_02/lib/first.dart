//구구단 만들기

void main() {
  for (var i = 2; i < 10; i++) {
    for(var j = 1; j < 10; j++) {
      print('$i * ${j} = ${i*j}');
    }
    print(" ");
  }
}