alias LIGHT_SPEED = 299_792.458  # km/sec.
alias AVG_DIST_EARTH_SUN = 149_600_000  # km


fn main():
    var light_min: Float16
    light_min = AVG_DIST_EARTH_SUN / (LIGHT_SPEED * 60)
    print("Light takes about", light_min, "minutes from the sun to reach earth")
    # => Light takes 8.3203125 minutes from the sun to reach earth
