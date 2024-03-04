# -*- coding: utf-8 -*-
"""
Created on Thu Oct 15 10:40:49 2023

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
    # Function to append element onto the linkedlist
    def append(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            return
        current = self.head
        while current.next:
            current = current.next
        current.next = new_node

    # Function to delete duplicate elements in the Linkedlist
    def delete_duplicates(self):
        current = self.head
        while current and current.next:
            if current.data == current.next.data:
                current.next = current.next.next
            else:
                current = current.next
    
    # Function to print output
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

    linked_list.delete_duplicates()
    
    print("Linked List After Deleting Duplicates:")
    linked_list.display()

