# -*- coding: utf-8 -*-
"""
Created on Thu Oct 19 10:50:59 2023

@author: ananth
"""
def create_linked_list_from_input():
    elements = input("Enter elements (Give spaces after every element) : ").split()
    linked_list = LinkedList()
    for element in elements:
        linked_list.append(int(element))
    return linked_list

class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None
    
    # Function to push the data onto the linkedlist
    def append(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            return
        current = self.head
        while current.next:
            current = current.next
        current.next = new_node

    # Function to insert the element "11" to the linkedlist after deleting the even indexing elements.
    def insert_after_even(self, value_to_insert):
        current = self.head
        while current:
            if current.data % 2 == 0:
                new_node = Node(value_to_insert)
                new_node.next = current.next
                current.next = new_node
                current = new_node.next
            else:
                current = current.next
                
    # Function to print the output
    def display(self):
        current = self.head
        while current:
            print(current.data, end="  ")
            current = current.next
        print("None")


# Driver code
if __name__ == "__main__":
    linked_list = create_linked_list_from_input()

    print("Original Linked List:")
    linked_list.display()

    value_to_insert = 11
    linked_list.insert_after_even(value_to_insert)

    print("Modified Linked List:")
    linked_list.display()

