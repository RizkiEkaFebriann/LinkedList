import 'latihan1.dart';
void main() {
  SingleLinkedList<int> Slist = SingleLinkedList<int>();

  Slist.InsertFront(10);
  Slist.InsertFront(30);
  Slist.PrintList();

  Slist.InsertBack(5);
  Slist.InsertBack(25);
  Slist.PrintList();

  Slist.InsertAfter(Slist.head!.next!, 20);
  Slist.PrintList();

  Slist.deleteFront();
  Slist.PrintList();
  
  Slist.deleteEnd();
  Slist.PrintList();
  
  Slist.deleteMiddle(5);
  Slist.PrintList();
}