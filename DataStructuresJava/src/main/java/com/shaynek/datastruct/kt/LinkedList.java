package com.shaynek.datastruct.kt;

public class LinkedList<T> {

    private int length;
    private Node<T> head;

    public LinkedList() {
        length = 0;
        head = null;
    }

    @Override
    public String toString() {
        if (head == null) return "Empty linked list";

        Node<T> current = head;
        StringBuilder builder = new StringBuilder();

        while (current != null) {
            final T data = current.getData();
            builder.append(data != null ? data.toString() : "null")
                    .append(" -> ");
            current = current.next;
        }
        builder.append("null");
        return builder.toString();
    }

    public T first() {
        return head != null ? head.getData() : null;
    }

    public T last() {
        return lastNode() != null ? lastNode().getData() : null;
    }

    public void append(T data) {
        final Node<T> newNode = new Node<>(data);
        length++;
        if (head == null) {
            head = newNode;
        } else if (lastNode() != null) {
            lastNode().next = newNode;
        }
    }

    public int getLength() {
        return length;
    }

    private Node<T> lastNode() {
        if (head == null) return null;
        Node<T> current = head;
        while (current.next != null) {
            current = current.next;
        }
        return current;
    }

    private class Node<V> {
        private V data;
        private Node<V> next;

        Node(V data) {
            this.data = data;
            next = null;
        }

        V getData() {
            return data;
        }
    }
}
