import 'dart:io';

class Node<T> {
  T? nodeValue;
  Node<T>? next;
  
  Node(this.nodeValue) : next = null;
}

class SingleLinkedList<T> {
  Node<T>? head = null;
  
  bool isEmpty() {
    return head == null;
  }
  
  void InsertFront(T data) {
    Node<T> newNode = Node<T>(data);
    if (isEmpty()) {
      head = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }
  void InsertBack(T data) {
    Node<T> newNode = Node<T>(data);
    if (isEmpty()) {
      head = newNode;
    } else {
      Node<T>? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = newNode;
    }
  }
  
  void InsertAfter(Node<T> prevNode, T newData) {
    if (prevNode == null) {
      print("Node tidak boleh null!");
      return;
    }
    Node<T> newNode = Node<T>(newData);
    newNode.next = prevNode.next;
    prevNode.next = newNode;
  }
  
  void deleteFront() {
    if (!isEmpty()) {
      if (head!.next != null) {
        head = head!.next;
      } else {
        head = null;
      }
    }
  }
  
  void deleteEnd() {
    if (!isEmpty()) {
      if (head!.next != null) {
        Node<T>? bantu = head;
        while (bantu!.next!.next != null) {
          bantu = bantu.next;
        }
        bantu.next = null;
      } else {
        head = null;
      }
    }
  }
  
  void deleteMiddle(T cari) {
    if (!isEmpty()) {
      if (head!.next != null) {
        Node<T>? bantu = head;
        while (bantu!.next!.nodeValue != cari) {
          bantu = bantu.next;
        }
        Node<T>? hapus = bantu.next;
        bantu.next = hapus!.next;
        hapus.next = null;
      } else {
        head = null;
      }
    }
  }
  
  void PrintList() {
    if (!isEmpty()) {
      Node<T>? now = head;
      stdout.write('Single Linked List : ');
      while (now != null) {
        stdout.write('${now.nodeValue} ');
        now = now.next;
      }
    } else {
      print('Linked List dalam kondisi kosong');
    }
    print('');
  }
}
