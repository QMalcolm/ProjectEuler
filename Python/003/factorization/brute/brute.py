import math

def greatest_prime_factor(num):
    largest_prime = 0
    for i in range(1, math.floor(num/2) + 1):
        if num % i == 0 and is_prime(i):
            print("Largest Prime: {}".format(i))
            largest_prime = i

    return largest_prime

def is_prime(num):
    print("Checking {}".format(num))
    for i in range(2, math.floor(num/2) + 1):
        if num % i == 0:
            return False

    return True
