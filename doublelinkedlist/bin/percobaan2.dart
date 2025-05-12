import 'dart:io';
class Dnode<T>{
  T nodeValue; // data value of the node
  Dnode? prev; // previous node in the list
  Dnode? next; // next node in the list
 /* default constructor; creates an object with the value set to null
 and whose references point to the node itself */
  Dnode(this.nodeValue)
    : next = null, prev = null;
}

void printList(Dnode? node) {
  Dnode? tail;
  tail = null;
  print("Traversal in Forward Direction: ");
  while (node != null) {
    stdout.write("${node.nodeValue} ");
    tail = node;
    node = node.next;
  }
  print("");
  print("Traversal in Reverse Direction: ");
  while (tail != null) {
    stdout.write("${tail.nodeValue} ");
    tail = tail.prev;
  }
  print('');
}

// Menambahkan data sebelum head
void InsertBeforeHead(dynamic data) {
  Dnode newNode = Dnode(data);
  if (isEmpty()) {
    append(data);
  } else {
    newNode.next = head;
    head!.prev = newNode;
    head = newNode;
  }
}

// menambahkan data baru atau di akhir node
void InsertTailNode(dynamic data) {
  Dnode newNode = Dnode(data);
  if (isEmpty()) {
    append(data);
  } else {
    Dnode? temp = head;
    while (temp!.next != null) {
      temp = temp.next;
    }
    temp.next = newNode;
    newNode.prev = temp;
  }
}



