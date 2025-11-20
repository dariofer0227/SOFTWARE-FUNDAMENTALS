#algoritm description
''' 
    Basic calculator V1
    Get two numbers
    add, subs, mult, div
    print results
'''
    
import os   

os.system('clear')
#1. Initialize vars and/or constants (inputs)
num1 = 10.5
num2 = 3.3

#2. Processes
add = num1 + num2
subs = num1 - num2
mult = num1 * num2
div = num1 / num2

#3. Outputs with formatted strings
print ("\n")
print(f"Addition: ", {add})
print(f"subtraction: ", {subs})
print(f"Multiplication: ", {mult})
print(f"Division: ", {div})