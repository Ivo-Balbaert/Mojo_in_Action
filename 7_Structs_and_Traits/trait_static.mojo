trait HasStaticMethod:
    @staticmethod
    fn do_stuff():
        ...


struct ConformingStruct(HasStaticMethod):
    @staticmethod
    fn do_stuff():
        print("Doing stuff statically!")


fn main():
    ConformingStruct.do_stuff()
