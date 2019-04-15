import 'package:data_structures/src/datastruct/linked_list.dart';
import 'package:test/test.dart';

void main() {
  test('Basic test', () {
    expect(LinkedList(), isNotNull);
  });

  test('Empty list', () {
    expect(LinkedList().toString(), "Empty linked list");
  });
}
