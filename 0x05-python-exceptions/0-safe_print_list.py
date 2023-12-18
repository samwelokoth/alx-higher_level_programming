#!/usr/bin/python3
'''Write a function that prints x elements of a list.

    Prototype: def safe_print_list(my_list=[], x=0):
    my_list can contain any type (integer, string, etc.)
    All elements must be printed on the same line followed by a new line.
    x represents the number of elements to print
    x can be bigger than the length of my_list
    Returns the real number of elements printed
    You have to use try: / except:
    You are not allowed to import any module
    You are not allowed to use len()
'''
def safe_print_list(my_list=[], x=0):
    count = 0
    for i in range(x):
        try:
            print(my_list[i], end="")
            count += 1  
        except IndexError:
            pass

    print("")  # Print a new line after printing all elements
    return count

# Implementation of the list
my_list = ['somethingstupid', 234, 23, 12, 54]
elements_printed = safe_print_list(my_list, 3)        
print("The number of elements printed are:", elements_printed)


# Implementation of the list
my_list = ['somethingstupid', 234, 23, 12, 54]
elements_printed = safe_print_list(my_list, 7)        
print("The number of elements printed are:", elements_printed)




