_group = {
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "VMOVSS,VMOVSS,VMOVSS,",
    offsets = "4,8,0,",
    addresses = "0x16a0,0x16a6,0x16b1,",
    stride_status = "Success",
    stride = 48,
    memory_status = "Success",
    accessed_memory = 12,
    accessed_memory_nooverlap = 12,
    accessed_memory_overlap = 0,
    span = 12,
    head = 0,
    unroll_factor = 1,
  },
  {
    group_size = 3,
    pattern = "LLL",
    opcodes = "VMOVSS,VMOVSS,VMOVSS,",
    offsets = "-16,-20,-24,",
    addresses = "0x16f2,0x170a,0x171f,",
    stride_status = "Success",
    stride = 48,
    memory_status = "Success",
    accessed_memory = 12,
    accessed_memory_nooverlap = 12,
    accessed_memory_overlap = 0,
    span = 12,
    head = 0,
    unroll_factor = 3,
  },
}
