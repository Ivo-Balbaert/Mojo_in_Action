from random import seed, random_ui64

alias MAX_ATTEMPTS = 10


fn main() raises:
    seed()
    var secret_number = random_ui64(1, 99)
    # print(secret_number)
    var int_guess: UInt64
    for num_guess in range(MAX_ATTEMPTS):
        guess = input("Guess a number between 1 and 100: ")
        try:
            int_guess = Int(guess)
        except err:
            print("Error is raised:", err)
            print("The number given was", guess)
            print("Guess an integer number please.")
        else:
            if int_guess < 1 or int_guess >= 100:
                print("The number must be between 1 and 100!")
                continue
            if num_guess >= MAX_ATTEMPTS - 1:
                print("Too many attempts - game over!")
                break
            if int_guess == secret_number:
                print(int_guess, "is the answer!")
                print("You got it right in", num_guess + 1, "times")
                print("Congratulations!")
                break
            elif int_guess > secret_number:
                print(int_guess, "is too high")
            elif int_guess < secret_number:
                print(int_guess, "is too low")
        finally:
            pass
