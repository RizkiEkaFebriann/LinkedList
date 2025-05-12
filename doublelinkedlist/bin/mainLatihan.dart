import 'latihan.dart';
void main() {
  Polynomial p1 = Polynomial();
  p1.addTerm(6, 8);
  p1.addTerm(8, 7);
  p1.addTerm(5, 5);
  p1.addTerm(1, 3);
  p1.addTerm(15, 0);
  
  Polynomial p2 = Polynomial();
  p2.addTerm(3, 9);
  p2.addTerm(4, 7);
  p2.addTerm(3, 4);
  p2.addTerm(2, 3);
  p2.addTerm(2, 2);
  p2.addTerm(10, 0);
  
  Polynomial sum = p1.add(p2);
  Polynomial difference = p1.subtract(p2);
  
  sum.simplify();
  difference.simplify();
  
  print('P1 + P2 = $sum');
  print('P1 - P2 = $difference');
}