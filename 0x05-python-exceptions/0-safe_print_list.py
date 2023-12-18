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
    init_value = 0
    try:
        for i in range(x):
            print(my_list[i], end="")
            init_value += 1
    except IndexError:
        pass
    finally:
        print("")
    return init_value

# Values for implementing the above
my_list = [23, 24, 55, "jumbo"]
elements_printed = safe_print_list(my_list,7)
print("The number of elements printed are:", elements_printed)

  