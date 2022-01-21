_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTPD2PS: 4 occurrences\n - VCVTPS2PD: 4 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Recompile with march=icelake.\nCQA target is Icelake_7e (10th generation Intel Core processors and Intel Xeon processor product family based on Icelake Client microarchitecture) but specialization flags are -march=icelake-client\n - Use vector aligned instructions:\n  1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VEXTRACTF128: 2 occurrences\n - VINSERTF128: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 4 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTPD2PS (FP64 to FP32, SIMD): 4 occurrences\n - VCVTPS2PD (FP32 to FP64, SIMD): 4 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "30 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n8 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 352 FP arithmetical operations:\n - 176: addition or subtraction (80 inside FMA instructions)\n - 144: multiply (80 inside FMA instructions)\n - 16: fast reciprocal\n - 16: square root\nThe binary loop is loading 192 bytes (48 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.83 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 61\nnb uops            : 68\nloop length        : 315\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 17\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 13.60 cycles\nfront end            : 13.60 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5    | P6   | P7   | P8   | P9\n-------------------------------------------------------------------------------\nuops   | 23.00 | 23.00 | 3.00 | 3.00 | 0.00 | 12.00 | 2.00 | 0.00 | 0.00 | 0.00\ncycles | 23.00 | 23.00 | 3.00 | 3.00 | 0.00 | 12.00 | 2.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: 36.00-48.00\nLongest recurrence chain latency (RecMII): 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 13.60\nDispatch  : 23.00\nDIV/SQRT  : 36.00-48.00\nData deps.: 8.00\nOverall L1: 36.00-48.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 46%\nload    : 50%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 50%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 35%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 48.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 17d0\n\nInstruction                        | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%R8,%RAX,1),%YMM15        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS (%RCX,%RAX,1),%YMM3        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %YMM10,%YMM15,%YMM20        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM9,%YMM3,%YMM15          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVUPS (%RDX,%RAX,1),%YMM2        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %YMM8,%YMM2,%YMM21          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPS %YMM15,%YMM15,%YMM2         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVAPS %YMM21,%YMM3               | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %YMM21,%YMM11,%YMM3    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231PS %YMM20,%YMM20,%YMM2    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDPS %YMM2,%YMM3,%YMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVEXTRACTF128 $0x1,%YMM2,%XMM3      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVCVTPS2PD %XMM2,%YMM19             | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPS2PD %XMM3,%YMM3              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVSQRTPD %YMM19,%YMM2               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 9-12\nVSQRTPD %YMM3,%YMM18               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 9-12\nVMULPD %YMM19,%YMM2,%YMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPD %YMM3,%YMM18,%YMM3          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTPD2PS %YMM2,%XMM2              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPD2PS %YMM3,%XMM3              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVINSERTF128 $0x1,%XMM3,%YMM2,%YMM2 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVRCPPS %YMM2,%YMM3                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %YMM2,%YMM3,%YMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPS %YMM2,%YMM3,%YMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDPS %YMM3,%YMM3,%YMM3           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM2,%YMM3,%YMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVUPS 0x20(%RDX,%RAX,1),%YMM3    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD132PS %YMM2,%YMM4,%YMM15     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVUPS 0x20(%RCX,%RAX,1),%YMM4    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD132PS %YMM2,%YMM14,%YMM20    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM9,%YMM4,%YMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132PS %YMM21,%YMM1,%YMM2     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVUPS 0x20(%R8,%RAX,1),%YMM1     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %YMM8,%YMM3,%YMM22          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM10,%YMM1,%YMM14         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPS %YMM4,%YMM4,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVAPS %YMM22,%YMM3               | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %YMM22,%YMM11,%YMM3    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nADD $0x40,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nVFMADD231PS %YMM14,%YMM14,%YMM1    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDPS %YMM1,%YMM3,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVEXTRACTF128 $0x1,%YMM1,%XMM3      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVCVTPS2PD %XMM1,%YMM23             | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPS2PD %XMM3,%YMM3              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVSQRTPD %YMM23,%YMM1               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 9-12\nVSQRTPD %YMM3,%YMM24               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 9-12\nVMULPD %YMM23,%YMM1,%YMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPD %YMM3,%YMM24,%YMM3          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTPD2PS %YMM1,%XMM1              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPD2PS %YMM3,%XMM3              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVINSERTF128 $0x1,%XMM3,%YMM1,%YMM1 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVRCPPS %YMM1,%YMM3                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %YMM1,%YMM3,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPS %YMM1,%YMM3,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDPS %YMM3,%YMM3,%YMM3           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM1,%YMM3,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132PS %YMM1,%YMM20,%YMM14    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132PS %YMM1,%YMM15,%YMM4     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132PS %YMM22,%YMM2,%YMM1     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nCMP %R10,%RAX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 17d0 <move_particles+0x150>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "11% of peak computational performance is used (7.33 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 46% register length (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 48.00 to 23.00 cycles (2.09x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 80 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTPD2PS: 4 occurrences\n - VCVTPS2PD: 4 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Recompile with march=icelake.\nCQA target is Icelake_7e (10th generation Intel Core processors and Intel Xeon processor product family based on Icelake Client microarchitecture) but specialization flags are -march=icelake-client\n - Use vector aligned instructions:\n  1) align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&p, 64, size); }.\n  2) inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.\n",
          details = " - VEXTRACTF128: 2 occurrences\n - VINSERTF128: 2 occurrences\n",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 4 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTPD2PS (FP64 to FP32, SIMD): 4 occurrences\n - VCVTPS2PD (FP32 to FP64, SIMD): 4 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "30 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n8 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 352 FP arithmetical operations:\n - 176: addition or subtraction (80 inside FMA instructions)\n - 144: multiply (80 inside FMA instructions)\n - 16: fast reciprocal\n - 16: square root\nThe binary loop is loading 192 bytes (48 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.83 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 61\nnb uops            : 68\nloop length        : 315\nused x86 registers : 5\nused mmx registers : 0\nused xmm registers : 3\nused ymm registers : 17\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 1.20\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 13.60 cycles\nfront end            : 13.60 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5    | P6   | P7   | P8   | P9\n-------------------------------------------------------------------------------\nuops   | 23.00 | 23.00 | 3.00 | 3.00 | 0.00 | 12.00 | 2.00 | 0.00 | 0.00 | 0.00\ncycles | 23.00 | 23.00 | 3.00 | 3.00 | 0.00 | 12.00 | 2.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: 36.00-48.00\nLongest recurrence chain latency (RecMII): 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 13.60\nDispatch  : 23.00\nDIV/SQRT  : 36.00-48.00\nData deps.: 8.00\nOverall L1: 36.00-48.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 100%\nload    : 100%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 100%\nadd-sub : 100%\nfma     : 100%\ndiv/sqrt: 100%\nother   : 100%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 46%\nload    : 50%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 50%\nadd-sub : 50%\nfma     : 50%\ndiv/sqrt: 50%\nother   : 35%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 48.00 cycles. At this rate:\n - 3% of peak load performance is reached (4.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 17d0\n\nInstruction                        | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n--------------------------------------------------------------------------------------------------------------------------------------\nVMOVUPS (%R8,%RAX,1),%YMM15        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVMOVUPS (%RCX,%RAX,1),%YMM3        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %YMM10,%YMM15,%YMM20        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM9,%YMM3,%YMM15          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVUPS (%RDX,%RAX,1),%YMM2        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %YMM8,%YMM2,%YMM21          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPS %YMM15,%YMM15,%YMM2         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVAPS %YMM21,%YMM3               | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %YMM21,%YMM11,%YMM3    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231PS %YMM20,%YMM20,%YMM2    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDPS %YMM2,%YMM3,%YMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVEXTRACTF128 $0x1,%YMM2,%XMM3      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVCVTPS2PD %XMM2,%YMM19             | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPS2PD %XMM3,%YMM3              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVSQRTPD %YMM19,%YMM2               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 9-12\nVSQRTPD %YMM3,%YMM18               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 9-12\nVMULPD %YMM19,%YMM2,%YMM2          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPD %YMM3,%YMM18,%YMM3          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTPD2PS %YMM2,%XMM2              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPD2PS %YMM3,%XMM3              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVINSERTF128 $0x1,%XMM3,%YMM2,%YMM2 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVRCPPS %YMM2,%YMM3                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %YMM2,%YMM3,%YMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPS %YMM2,%YMM3,%YMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDPS %YMM3,%YMM3,%YMM3           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM2,%YMM3,%YMM2           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVUPS 0x20(%RDX,%RAX,1),%YMM3    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD132PS %YMM2,%YMM4,%YMM15     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVUPS 0x20(%RCX,%RAX,1),%YMM4    | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVFMADD132PS %YMM2,%YMM14,%YMM20    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM9,%YMM4,%YMM4           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132PS %YMM21,%YMM1,%YMM2     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVUPS 0x20(%R8,%RAX,1),%YMM1     | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 3       | 0.50\nVSUBPS %YMM8,%YMM3,%YMM22          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM10,%YMM1,%YMM14         | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPS %YMM4,%YMM4,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVAPS %YMM22,%YMM3               | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132PS %YMM22,%YMM11,%YMM3    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nADD $0x40,%RAX                     | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nVFMADD231PS %YMM14,%YMM14,%YMM1    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDPS %YMM1,%YMM3,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVEXTRACTF128 $0x1,%YMM1,%XMM3      | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVCVTPS2PD %XMM1,%YMM23             | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPS2PD %XMM3,%YMM3              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVSQRTPD %YMM23,%YMM1               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 9-12\nVSQRTPD %YMM3,%YMM24               | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 9-12\nVMULPD %YMM23,%YMM1,%YMM1          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPD %YMM3,%YMM24,%YMM3          | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTPD2PS %YMM1,%XMM1              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVCVTPD2PS %YMM3,%XMM3              | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 7       | 1\nVINSERTF128 $0x1,%XMM3,%YMM1,%YMM1 | 1     | 0    | 0    | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 3       | 1\nVRCPPS %YMM1,%YMM3                 | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 1\nVMULPS %YMM1,%YMM3,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULPS %YMM1,%YMM3,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDPS %YMM3,%YMM3,%YMM3           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBPS %YMM1,%YMM3,%YMM1           | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132PS %YMM1,%YMM20,%YMM14    | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132PS %YMM1,%YMM15,%YMM4     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132PS %YMM22,%YMM2,%YMM1     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nCMP %R10,%RAX                      | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 17d0 <move_particles+0x150>    | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "11% of peak computational performance is used (7.33 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          details = "All SSE/AVX instructions are used in vector version (process two or more data elements in vector registers).\n",
          title = "Vectorization",
          txt = "Your loop is vectorized, but using 46% register length (average across all SSE/AVX instructions).\n",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 48.00 to 23.00 cycles (2.09x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 80 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/katia/Archi/nbodySoA.c:68-82.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
