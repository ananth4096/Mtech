# -*- coding: utf-8 -*-
"""
Created on Thu Oct 16 10:48:25 2023

@author: ananth
"""
def create_stack_from_input():
    stack = Stack()
    elements = input("Enter elements (Give space for every element) : ").split()
    for element in elements:
        stack.push(element)
    return stack


class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

# Define the Stack class to implement the stack using a linked list.
class Stack:
    def __init__(self):
        self.top = None

    # Function to push the element onto the linkedlist
    def push(self, data):
        new_node = Node(data)
        if self.top is None:
            self.top = new_node
        else:
            new_node.next = self.top
            self.top = new_node
    
    # Function to pop the element onto the linkedlist
    def pop(self):
        if self.top is None:
            print("Stack is empty. Cannot Pop Out.")
            return None
        data = self.top.data
        self.top = self.top.next
        return data
    
    # Function to peek the element into the linkedlist
    def peek(self):
        if self.top is None:
            print("Stack is empty. Cannot Peek in .")
            return None
        return self.top.data

     # Function to check if the linkedlist is empty
    def is_empty(self):
        return self.top is None

     # Function to print the output
    def display(self):
        current = self.top
        while current:
            print(current.data, end="  ")
            current = current.next
        print("None")


# driver code
if __name__ == "__main__":
    stack = create_stack_from_input()

    while True:
        print("\nStack Operations:")
        print("1. PUSH")
        print("2. POP")
        print("3. PEEK")
        print("4. DISPLAY")
        print("5. EXIT")

        choice = input("Enter your choice (1/2/3/4/5): ")

        if choice == '1':
            element = input("Enter the element to push: ")
            stack.push(element)
        elif choice == '2':
            popped = stack.pop()
            if popped is not None:
                print(f"Popped element: {popped}")
        elif choice == '3':
            peeked = stack.peek()
            if peeked is not None:
                print(f"Top element: {peeked}")
        elif choice == '4':
            print("Current Stack:")
            stack.display()
        elif choice == '5':
            break
        else:
            print("Invalid choice. Please choose 1, 2, 3, 4, or 5.")

