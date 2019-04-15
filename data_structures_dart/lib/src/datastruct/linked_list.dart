class LinkedList<T> {
  LinkedList() {
    _length = 0;
  }

  _Node<T> _head;
  int _length;

  T get first => _head?.data;

  T get last => _lastNode()?.data;

  int get length => _length;

  void append(T data) {
    final newNode = _Node(data);
    _length++;
    if (_head == null) {
      _head = newNode;
    } else {
      _lastNode().next = newNode;
    }
  }

  _Node<T> _lastNode() {
    if (_head == null) return null;

    _Node current = _head;
    while (current.next != null) {
      current = current.next;
    }
    return current;
  }

  @override
  String toString() {
    if (_head == null) return "Empty linked list";

    _Node current = _head;
    StringBuffer buffer = StringBuffer();

    while (current != null) {
      buffer.write('${current.data.toString()} -> ');
      current = current.next;
    }
    buffer.write('null');
    return buffer.toString();
  }
}

class _Node<T> {
  _Node(this.data);

  T data;
  _Node<T> next;
}
