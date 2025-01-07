from random import seed, random_ui64

alias MAX_ATTEMPTS = 10


fn main() raises:
    seed()
    var secret_number = random_ui64(1, 99)
    # print(secret_number)
    for num_guess in range(MAX_ATTEMPTS):
        guess = input("Guess a number between 1 and 100: ")
        var int_guess: UInt64 = int(guess)
        if int_guess == secret_number:
            print(int_guess, "is the answer!")
            print("You got it right in", num_guess + 1, "times")
            print("Congratulations!")
            break
        elif int_guess > secret_number:
            print(int_guess, "is too high")
        elif int_guess < secret_number:
            print(int_guess, "is too low")
    else:
        print("Too many attempts - game over!")
