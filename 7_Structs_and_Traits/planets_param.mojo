@value
struct Planet[earth_like: Bool]:
    var mass: Int
    var name: String

    fn describe_planet(self):
        if earth_like:
            print("Attention: Earth-like planet ahead!")
        print("Name:", self.name, "Mass:", self.mass)


fn main():
    var mars = Planet[True](80, "Mars")
    mars.describe_planet()  # =>
    # Attention: Earth-like planet ahead!
    # Name: Mars Mass: 80
