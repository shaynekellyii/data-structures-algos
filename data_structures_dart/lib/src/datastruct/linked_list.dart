class LinkedList<T> {
  _Node<T> head;

  void append(T data) {
    final newNode = _Node(data);
    if (head != null) {
      head = newNode;
    } else {

    }
  }

  T first() => head?.data;

  T last() => _lastNode().data;

  _Node<T> _lastNode() {
    if (head == null) return null;

    _Node current = head;
    while (current.next != null) {
      current = current.next;
    }
    return current;
  }

  @override
  String toString() {
    if (head == null) return "Empty linked list";
    return super.toString();
  }
}

class _Node<T> {
  _Node(this.data);

  T data;
  _Node<T> next;
}
