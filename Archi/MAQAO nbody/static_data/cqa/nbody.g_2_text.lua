_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTSD2SS: 2 occurrences\n - VCVTSS2SD: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 2 occurrences\n - VCVTSS2SD (FP32 to FP64, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "22 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n4 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 36 FP arithmetical operations:\n - 18: addition or subtraction (10 inside FMA instructions)\n - 14: multiply (10 inside FMA instructions)\n - 2: divide\n - 2: square root\nThe binary loop is loading 24 bytes (6 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.50 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 42\nnb uops            : 45\nloop length        : 198\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 9.00 cycles\nfront end            : 9.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 15.00 | 15.00 | 3.00 | 3.00 | 0.00 | 4.00 | 2.00 | 0.00 | 0.00 | 0.00\ncycles | 15.00 | 15.00 | 3.00 | 3.00 | 0.00 | 4.00 | 2.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: 15.00-18.00\nLongest recurrence chain latency (RecMII): 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.00\nDispatch  : 15.00\nDIV/SQRT  : 15.00-18.00\nData deps.: 8.00\nOverall L1: 15.00-18.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 7%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 42%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 8%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 9%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 9%\nother   : 16%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 18.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.33 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 16a0\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nVMOVSS 0x4(%R9),%XMM12          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVMOVSS 0x8(%R9),%XMM1           | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVSUBSS %XMM10,%XMM12,%XMM13     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVSS (%R9),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVSUBSS %XMM6,%XMM1,%XMM12       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULSS %XMM13,%XMM13,%XMM3      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBSS %XMM11,%XMM4,%XMM4       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVAPS %XMM12,%XMM2            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132SS %XMM12,%XMM8,%XMM2  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nADD $0x30,%R9                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nVFMADD231SS %XMM4,%XMM4,%XMM3   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDSS %XMM2,%XMM3,%XMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTSS2SD %XMM1,%XMM1,%XMM3     | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 5       | 1\nVSQRTSD %XMM3,%XMM3,%XMM2       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 4.50-6\nVMULSD %XMM2,%XMM3,%XMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTSD2SS %XMM1,%XMM1,%XMM3     | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 5       | 1\nVDIVSS %XMM3,%XMM7,%XMM2        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 11      | 3\nVMOVAPS %XMM12,%XMM3            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVMOVSS -0x10(%R9),%XMM12        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVSUBSS %XMM6,%XMM12,%XMM12      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVAPS %XMM12,%XMM1            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132SS %XMM12,%XMM8,%XMM1  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132SS %XMM2,%XMM14,%XMM3  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVSS -0x14(%R9),%XMM14        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVFMADD231SS %XMM2,%XMM13,%XMM5  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBSS %XMM10,%XMM14,%XMM13     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132SS %XMM2,%XMM15,%XMM4  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVSS -0x18(%R9),%XMM15        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVMULSS %XMM13,%XMM13,%XMM2      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBSS %XMM11,%XMM15,%XMM15     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231SS %XMM15,%XMM15,%XMM2 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDSS %XMM1,%XMM2,%XMM14       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTSS2SD %XMM14,%XMM14,%XMM2   | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 5       | 1\nVSQRTSD %XMM2,%XMM2,%XMM1       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 4.50-6\nVMULSD %XMM1,%XMM2,%XMM14       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTSD2SS %XMM14,%XMM14,%XMM2   | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 5       | 1\nVDIVSS %XMM2,%XMM7,%XMM14       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 11      | 3\nVFMADD132SS %XMM14,%XMM4,%XMM15 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231SS %XMM14,%XMM13,%XMM5 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132SS %XMM12,%XMM3,%XMM14 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nCMP %R9,%RSI                    | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 16a0 <move_particles+0xc0>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "3% of peak computational performance is used (2.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 18.00 to 3.75 cycles (4.80x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 18.00 to 15.00 cycles (1.20x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 10 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  },
  AVG = {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n - VCVTSD2SS: 2 occurrences\n - VCVTSS2SD: 2 occurrences\n",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = " - Try to reorganize arrays of structures to structures of arrays\n - Consider to permute loops (see vectorization gain report)\n",
          details = " - Constant non-unit stride: 1 occurrence(s)\nNon-unit stride (uncontiguous) accesses are not efficiently using data caches\n",
          title = "Slow data structures access",
          txt = "Detected data structures (typically arrays) that cannot be efficiently read/written",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = " - VCVTSD2SS (FP64 to FP32, scalar): 2 occurrences\n - VCVTSS2SD (FP32 to FP64, scalar): 2 occurrences\n",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "22 SSE or AVX instructions are processing arithmetic or math operations on single precision FP elements in scalar mode (one at a time).\n4 SSE or AVX instructions are processing arithmetic or math operations on double precision FP elements in scalar mode (one at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 36 FP arithmetical operations:\n - 18: addition or subtraction (10 inside FMA instructions)\n - 14: multiply (10 inside FMA instructions)\n - 2: divide\n - 2: square root\nThe binary loop is loading 24 bytes (6 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.50 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "nb instructions    : 42\nnb uops            : 45\nloop length        : 198\nused x86 registers : 2\nused mmx registers : 0\nused xmm registers : 14\nused ymm registers : 0\nused zmm registers : 0\nnb stack references: 0\nADD-SUB / MUL ratio: 2.00\n",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\nmicro-operation queue: 9.00 cycles\nfront end            : 9.00 cycles\n",
        },
        {
          title = "Back-end",
          txt = "       | P0    | P1    | P2   | P3   | P4   | P5   | P6   | P7   | P8   | P9\n------------------------------------------------------------------------------\nuops   | 15.00 | 15.00 | 3.00 | 3.00 | 0.00 | 4.00 | 2.00 | 0.00 | 0.00 | 0.00\ncycles | 15.00 | 15.00 | 3.00 | 3.00 | 0.00 | 4.00 | 2.00 | 0.00 | 0.00 | 0.00\n\nCycles executing div or sqrt instructions: 15.00-18.00\nLongest recurrence chain latency (RecMII): 8.00\n",
        },
        {
          title = "Cycles summary",
          txt = "Front-end : 9.00\nDispatch  : 15.00\nDIV/SQRT  : 15.00-18.00\nData deps.: 8.00\nOverall L1: 15.00-18.00\n",
        },
        {
          title = "Vectorization ratios",
          txt = "all     : 7%\nload    : 0%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 0%\nadd-sub : 0%\nfma     : 0%\ndiv/sqrt: 0%\nother   : 42%\n",
        },
        {
          title = "Vector efficiency ratios",
          txt = "all     : 8%\nload    : 6%\nstore   : NA (no store vectorizable/vectorized instructions)\nmul     : 9%\nadd-sub : 6%\nfma     : 6%\ndiv/sqrt: 9%\nother   : 16%\n",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 18.00 cycles. At this rate:\n - 1% of peak load performance is reached (1.33 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))\n",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 16a0\n\nInstruction                     | Nb FU | P0   | P1   | P2   | P3   | P4 | P5   | P6   | P7 | P8 | P9 | Latency | Recip. throughput\n-----------------------------------------------------------------------------------------------------------------------------------\nVMOVSS 0x4(%R9),%XMM12          | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVMOVSS 0x8(%R9),%XMM1           | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVSUBSS %XMM10,%XMM12,%XMM13     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVSS (%R9),%XMM4              | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVSUBSS %XMM6,%XMM1,%XMM12       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMULSS %XMM13,%XMM13,%XMM3      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBSS %XMM11,%XMM4,%XMM4       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVAPS %XMM12,%XMM2            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132SS %XMM12,%XMM8,%XMM2  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nADD $0x30,%R9                   | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nVFMADD231SS %XMM4,%XMM4,%XMM3   | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDSS %XMM2,%XMM3,%XMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTSS2SD %XMM1,%XMM1,%XMM3     | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 5       | 1\nVSQRTSD %XMM3,%XMM3,%XMM2       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 4.50-6\nVMULSD %XMM2,%XMM3,%XMM1        | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTSD2SS %XMM1,%XMM1,%XMM3     | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 5       | 1\nVDIVSS %XMM3,%XMM7,%XMM2        | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 11      | 3\nVMOVAPS %XMM12,%XMM3            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVMOVSS -0x10(%R9),%XMM12        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVSUBSS %XMM6,%XMM12,%XMM12      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVAPS %XMM12,%XMM1            | 1     | 0    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.25\nVFMADD132SS %XMM12,%XMM8,%XMM1  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132SS %XMM2,%XMM14,%XMM3  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVSS -0x14(%R9),%XMM14        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVFMADD231SS %XMM2,%XMM13,%XMM5  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBSS %XMM10,%XMM14,%XMM13     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132SS %XMM2,%XMM15,%XMM4  | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVMOVSS -0x18(%R9),%XMM15        | 1     | 0    | 0    | 0.50 | 0.50 | 0  | 0    | 0    | 0  | 0  | 0  | 0       | 0.50\nVMULSS %XMM13,%XMM13,%XMM2      | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVSUBSS %XMM11,%XMM15,%XMM15     | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231SS %XMM15,%XMM15,%XMM2 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVADDSS %XMM1,%XMM2,%XMM14       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTSS2SD %XMM14,%XMM14,%XMM2   | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 5       | 1\nVSQRTSD %XMM2,%XMM2,%XMM1       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 13-19   | 4.50-6\nVMULSD %XMM1,%XMM2,%XMM14       | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVCVTSD2SS %XMM14,%XMM14,%XMM2   | 2     | 0.50 | 0.50 | 0    | 0    | 0  | 1    | 0    | 0  | 0  | 0  | 5       | 1\nVDIVSS %XMM2,%XMM7,%XMM14       | 1     | 1    | 0    | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 11      | 3\nVFMADD132SS %XMM14,%XMM4,%XMM15 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD231SS %XMM14,%XMM13,%XMM5 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nVFMADD132SS %XMM12,%XMM3,%XMM14 | 1     | 0.50 | 0.50 | 0    | 0    | 0  | 0    | 0    | 0  | 0  | 0  | 4       | 0.50\nCMP %R9,%RSI                    | 1     | 0.25 | 0.25 | 0    | 0    | 0  | 0.25 | 0.25 | 0  | 0  | 0  | 1       | 0.25\nJNE 16a0 <move_particles+0xc0>  | 1     | 0.50 | 0    | 0    | 0    | 0  | 0    | 0.50 | 0  | 0  | 0  | 0       | 0.50-1\n",
        },
      },
      header = {
        "3% of peak computational performance is used (2.00 out of 64.00 FLOP per cycle (GFLOPS @ 1GHz))",
      },
      brief = {
      },
      gain = {
        {
          workaround = " - Try another compiler or update/tune your current one\n - Remove inter-iterations dependences from your loop and make it unit-stride:\n  * If your arrays have 2 or more dimensions, check whether elements are accessed contiguously and, otherwise, try to permute loops accordingly:\nC storage order is row-major: for(i) for(j) a[j][i] = b[j][i]; (slow, non stride 1) => for(i) for(j) a[i][j] = b[i][j]; (fast, stride 1)\n  * If your loop streams arrays of structures (AoS), try to use structures of arrays instead (SoA):\nfor(i) a[i].x = b[i].x; (slow, non stride 1) => for(i) a.x[i] = b.x[i]; (fast, stride 1)\n",
          details = "Store and arithmetical SSE/AVX instructions are used in scalar version (process only one data element in vector registers).\nSince your execution units are vector units, only a vectorized loop can use their full power.\n",
          title = "Vectorization",
          txt = "Your loop is probably not vectorized.\nOnly 8% of vector register length is used (average across all SSE/AVX instructions).\nBy vectorizing your loop, you can lower the cost of an iteration from 18.00 to 3.75 cycles (4.80x speedup).",
        },
        {
          workaround = " - Reduce the number of division or square root instructions:\n  * If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast\n - If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip\n",
          title = "Execution units bottlenecks",
          txt = "Performance is limited by execution of divide and square root operations (the divide/square root unit is a bottleneck).\n\nBy removing all these bottlenecks, you can lower the cost of an iteration from 18.00 to 15.00 cycles (1.20x speedup).\n",
        },
      },
      potential = {
        {
          workaround = "Try to change order in which elements are evaluated (using parentheses) in arithmetic expressions containing both ADD/SUB and MUL operations to enable your compiler to generate FMA instructions wherever possible.\nFor instance a + b*c is a valid FMA (MUL then ADD).\nHowever (a+b)* c cannot be translated into an FMA (ADD then MUL).",
          title = "FMA",
          txt = "Detected 10 FMA (fused multiply-add) operations.\nPresence of both ADD/SUB and MUL operations.",
        },
      },
    },
  common = {
    header = {
      "The loop is defined in /home/katia/Archi/nbody.c:57-69.\n",
      "The related source loop is not unrolled or unrolled with no peel/tail loop.",
    },
    nb_paths = 1,
  },
}
