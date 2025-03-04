from sys.info import (
    is_apple_m2,
    is_apple_m3,
    has_nvidia_gpu_accelerator,
    num_physical_cores,
)

alias cores_needed = 8


def main():
    machine_checks[cores_needed]()


def machine_checks[cores: Int]():
    constrained[has_nvidia_gpu_accelerator(), "No NVIA GPU present"]()
    # constrained[is_apple_m2() | is_apple_m3(), "Not an Apple M2 or M3 CPU"]()
    # => note: constraint failed: Not an Apple M2 or M3 CPU

    # constrained[
    #     cores <= num_physical_cores(),
    #     "Not enough physical cores present",
    # ]()
    # => note: unable to interpret call to unknown external function: KGEN_CompilerRT_NumPhysicalCores
