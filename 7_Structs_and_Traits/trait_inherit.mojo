trait Soundable:
    fn make_sound(self):
        ...


trait Walkable(Soundable):
    fn walk(self):
        ...


trait Flyable:
    fn fly(self):
        ...


trait FlyandWalkable(Flyable, Walkable):
    ...


@value
struct Chicken(Walkable):
    fn walk(self):
        print("Chickens walk on the ground")

    fn make_sound(self):
        print("Chickens say: Tock, tock")


@value
struct Duck(FlyandWalkable):
    fn fly(self):
        print("Ducks fly to the sky")

    fn walk(self):
        print("Ducks walk on the ground")

    fn make_sound(self):
        print("Ducks say: Quack, quack")


fn main():
    Chicken().walk()
    Chicken().make_sound()
    Duck().walk()
    Duck().fly()
    Duck().make_sound()


# =>
# Chickens walk on the ground
# Chickens say: Tock, tock
# Ducks walk on the ground
# Ducks fly to the sky
# Ducks say:Quack, quack
