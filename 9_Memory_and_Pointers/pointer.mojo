from memory import Pointer


@value
struct Person:
    var age: UInt8


def change_age(p: Pointer[Person]):
    print("In change_age")
    # p[] = 16 # Uncommenting this would result in compilation error.
    # => expression must be mutable in assignment


def change_age_mut[origin: MutableOrigin](p: Pointer[Person, origin=origin]):
    print("In change_age_mut")
    p[] = Person(16)  # Now it works


fn main() raises:
    var pn1 = Person(69)
    # Construct a Pointer out of an existing value
    var ref_pn1 = Pointer(to=pn1)
    print(ref_pn1[].age)  # => 69

    pn1.age = 70
    print(ref_pn1[].age)  # => 70
    ref_pn1[].age = 71
    print(ref_pn1[].age)  # => 71

    var pn2 = Person(10)
    # ref_pn1 = Pointer(to=pn2)
    # => error: cannot implicitly convert 'Pointer[Person, pn2]' value to 'Pointer[Person, pn1]'mojo

    # change_age(ref_pn1)  # => In change_age
    ref_pn1[].age = 15  # Works
    print(ref_pn1[].age)  # => 15

    change_age_mut(ref_pn1)  # => In change_age_mut
    print(ref_pn1[].age)  # => 16

    # Change mutability
    var ref_pn3 = Pointer[mut=False](to=pn1)
    print(ref_pn3[].age)  # => 69
    # ref_pn3[].age = 70 # => error: expression must be mutable in assignment
