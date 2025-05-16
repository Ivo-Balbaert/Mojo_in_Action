def take_str_ref[
    is_mutable: Bool, //, origin: Origin[is_mutable]
](ref [origin]s: String):
    @parameter
    if is_mutable:
        print("Mutable: " + s)
    else:
        print("Immutable: " + s)


def pass_refs(s1: String, owned s2: String):
    take_str_ref(s1)  # => Immutable: Hello
    take_str_ref(s2)  # => Mutable: Goodbye


fn main() raises:
    pass_refs("Hello", "Goodbye")
