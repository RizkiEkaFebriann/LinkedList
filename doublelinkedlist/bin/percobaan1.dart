class DNode<T> {
  T? nodeValue; // data value of the node
  DNode<T>? prev; // previous node in the list
  DNode<T>? next; // next node in the list
 // default constructor; creates an object with the value set to null and whose references point to the node itself
  DNode() {
    nodeValue = null;
 // the next node is the current node
    next = this;
 // the previous node is the current
    prev = this;
 }
 // creates object whose value is item and whose references point to the node itself
  DNode(T item) {
    nodeValue = item;
 // the next node is the current node
    next = this;
 // the previous node is the current node
    prev = this;
  }
}

void DeleteFront() {
  if (!isEmpty()) {
    if (head!.next != null) {
      Dnode? delete = head;
      head = head!.next;
      head!.prev = null;
      delete!.next = null;
    } else {
    head = null;
    }
  }
}

void DeleteEnd() {
  Dnode? temp;
  if (!isEmpty()) {
    if (head!.next != null) {
    temp = head;
    while (temp!.next!.next != null) {
      temp = temp.next;
    }
    temp.next!.prev = null;
    temp.next = null;
  } else {
    head = null;
    }
  }
}

