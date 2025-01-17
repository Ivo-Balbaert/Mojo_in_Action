fn main():
    # initial situation:
    # guess = input("Guess a number between 1 and 100: ")
    # var int_guess: UInt64 = int(guess)

    # error is handled:
    guess = input("Guess a number between 1 and 100: ")
    try:
        var int_guess: UInt64 = int(guess)
    except err:
        print("Error is raised:", err)
        print("The number given was", guess)
        print("Guess an integer number please.")
