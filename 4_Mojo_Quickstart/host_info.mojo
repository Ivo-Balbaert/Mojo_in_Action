from sys.info import (
    os_is_linux,
    os_is_macos,
    os_is_windows,
    has_avx,
    has_avx2,
    has_avx512f,
    has_intel_amx,
    has_neon,
    has_sse4,
    has_vnni,
    is_apple_m1,
    is_apple_m2,
    is_apple_m3,
    _current_arch,
    _triple_attr,
    num_logical_cores,
    num_physical_cores,
    has_nvidia_gpu_accelerator,
)


fn main():
    var os: StringLiteral
    if os_is_linux():
        os = "linux"
    elif os_is_macos():
        os = "macOS"
    else:
        os = "windows"
    var cpu = String(_current_arch())
    var arch = String(_triple_attr())

    print("The host OS is  : ", os)
    print("Its CPU is      : ", cpu)
    print("Its Architecture: ", arch)
    print("Number of Physical Cores: ", num_physical_cores())
    print("Number of Logical Cores: ", num_logical_cores())

    print("CPU-features:")
    if has_sse4():
        print("sse4", end=" / ")
    if has_avx():
        print("avx", end=" / ")
    if has_avx2():
        print("avx2", end=" / ")
    if has_avx512f():
        print("avx512f", end=" / ")
    if has_intel_amx():
        print("intel_amx", end=" / ")
    if has_neon():
        print("neon", end=" / ")
    if is_apple_m1():
        print("apple_m1", end=" / ")
    if has_vnni() & has_avx512f():
        print("avx512_vnni1")
    if has_vnni():
        print("avx_vnni1", end=" / ")
    if has_nvidia_gpu_accelerator():
        print("NVIDIA-GPU", end=" / ")
