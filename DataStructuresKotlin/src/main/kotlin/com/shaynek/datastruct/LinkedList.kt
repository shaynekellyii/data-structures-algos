package com.shaynek.datastruct

class LinkedList<T> {

    var length = 0
    private var head: Node<T>? = null

    override fun toString(): String {
        if (head == null) return "Empty linked list"

        var current = head
        val builder = StringBuilder()

        while (current != null) {
            val dataString = current.data?.toString() ?: "null"
            builder.append("$dataString -> ")
            current = current.next
        }
        builder.append("null")
        return builder.toString()
    }

    fun first(): T? = head?.data
    fun last(): T? = lastNode()?.data

    fun append(data: T) {
        length++
        Node(data).also {
            if (head == null) head = it
            else lastNode()?.next = it
        }
    }

    private fun lastNode(): Node<T>? {
        var current = head
        while (current?.next != null) {
            current = current.next
        }
        return current
    }
}

private data class Node<T>(val data: T) {
    var next: Node<T>? = null
}