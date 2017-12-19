# Linked list

This is my version of a linked list data structure, written in Ruby.

Rubyists don't actually need to use linked lists, because the native arrays can be of unlimited size and are dynamic, but this project is a first step for me in working with more exotic data structures.

![Screenshot](linked_list.png)

It's a project from [The Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/linked-lists).


## Structure

This file contains two classes - LinkedList and Node. The LinkedList class supports the following methods:
    - #append
    - #prepend
    - #size
    - #head
    - #tail
    - #at(index)
    - #pop
    - #contains?
    - #find(data)
    - #to_s (represents the LinkedList objects as strings, so you can print them out and preview them in the console)
    - #insert_at(index)
    - #remove_at(index)


## Installation

Open your terminal/command line. Navigate to the directory where you want this project to live. Type:
```
$ git clone https://github.com/Jonosenior/linked_lists.git
$ cd linked_lists
$ ruby linked_lists.rb
```

## Thoughts

This is one of several projects related to data structures at this stage of The Odin Project. I found it really interesting delving into some basic computer science. I also discovered Harvard's CS50 course, which I'm keen to explore once I've finished with the Ruby and Rails sections TOP.
