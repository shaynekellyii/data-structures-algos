import 'package:data_structures/src/datastruct/linked_list.dart';
import 'package:test/test.dart';

void main() {
  test('Basic test', () {
    expect(LinkedList(), isNotNull);
  });

  test('Append test', () {
    final list = LinkedList<int>();
    expect(list.length, 0);

    list.append(1);
    expect(list.length, 1);
    expect(list.first, 1);
    expect(list.last, 1);

    list.append(2);
    expect(list.length, 2);
    expect(list.first, 1);
    expect(list.last, 2);
  });

  test('First and last element of empty list', () {
    final list = LinkedList<String>();
    expect(list.first, isNull);
    expect(list.last, isNull);
  });

  test('toString() test', () {
    final list = LinkedList<int>();
    expect(list.toString(), 'Empty linked list');

    list.append(1);
    expect(list.toString(), '1 -> null');

    list.append(5);
    expect(list.toString(), '1 -> 5 -> null');
  });
}
