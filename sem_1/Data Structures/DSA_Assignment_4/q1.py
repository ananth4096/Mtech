# -*- coding: utf-8 -*-
"""
Created on Thu Oct 14 10:35:22 2023

@author: ananth
"""
def create_linked_list_from_input():
    elements = input("Enter elements (Give space for every element) : ").split()
    linked_list = LinkedList()
    for element in elements:
        linked_list.append(element)
    return linked_list

class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None
    # Function to append elements onto the linkedlist
    def append(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            return
        current = self.head
        while current.next:
            current = current.next
        current.next = new_node

    # Function to reverse the elements present in the linkedlist
    def reverse(self):
        prev = None
        current = self.head
        while current:
            next_node = current.next
            current.next = prev
            prev = current
            current = next_node
        self.head = prev
    
    # Function to print output .
    def display(self):
        current = self.head
        while current:
            print(current.data, end="  ")
            current = current.next
        print("None")


if __name__ == "__main__":
    linked_list = create_linked_list_from_input()
    
    print("Original Linked List:")
    linked_list.display()

    linked_list.reverse()
    
    print("Reversed Linked List:")
    linked_list.display()

