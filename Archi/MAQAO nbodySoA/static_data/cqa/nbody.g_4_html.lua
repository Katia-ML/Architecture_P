_cqa_text_report = {
  paths = {
    {
      hint = {
        {
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VCVTPD2PS: 4 occurrences</li><li>VCVTPS2PD: 4 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Recompile with march=icelake.\nCQA target is Icelake_7e (10th generation Intel Core processors and Intel Xeon processor product family based on Icelake Client microarchitecture) but specialization flags are -march=icelake-client</li><li>Use vector aligned instructions:\n<ol><li>align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 64, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.</li></ol></li></ul>",
          details = "<ul><li>VEXTRACTF128: 2 occurrences</li><li>VINSERTF128: 2 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 4 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = "<ul><li>VCVTPD2PS (FP64 to FP32, SIMD): 4 occurrences</li><li>VCVTPS2PD (FP32 to FP64, SIMD): 4 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "30 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n8 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 352 FP arithmetical operations:\n<ul><li>176: addition or subtraction (80 inside FMA instructions)</li><li>144: multiply (80 inside FMA instructions)</li><li>16: fast reciprocal</li><li>16: square root</li></ul>The binary loop is loading 192 bytes (48 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.83 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>61</td></tr><tr><td>nb uops</td><td>68</td></tr><tr><td>loop length</td><td>315</td></tr><tr><td>used x86 registers</td><td>5</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>3</td></tr><tr><td>used ymm registers</td><td>17</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>1.20</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>13.60 cycles</td></tr><tr><td>front end</td><td>13.60 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th></tr><tr><td>uops</td><td>23.00</td><td>23.00</td><td>3.00</td><td>3.00</td><td>0.00</td><td>12.00</td><td>2.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>23.00</td><td>23.00</td><td>3.00</td><td>3.00</td><td>0.00</td><td>12.00</td><td>2.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>36.00-48.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>8.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>13.60</td></tr><tr><td>Dispatch</td><td>23.00</td></tr><tr><td>DIV/SQRT</td><td>36.00-48.00</td></tr><tr><td>Data deps.</td><td>8.00</td></tr><tr><td>Overall L1</td><td>36.00-48.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>100%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>100%</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>46%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>50%</td></tr><tr><td>add-sub</td><td>50%</td></tr><tr><td>fma</td><td>50%</td></tr><tr><td>div/sqrt</td><td>50%</td></tr><tr><td>other</td><td>35%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 48.00 cycles. At this rate:\n<ul><li>3% of peak load performance is reached (4.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 17d0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVUPS (%R8,%RAX,1),%YMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPS (%RCX,%RAX,1),%YMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBPS %YMM10,%YMM15,%YMM20</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM9,%YMM3,%YMM15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVUPS (%RDX,%RAX,1),%YMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBPS %YMM8,%YMM2,%YMM21</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPS %YMM15,%YMM15,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVAPS %YMM21,%YMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>VFMADD132PS %YMM21,%YMM11,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD231PS %YMM20,%YMM20,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VADDPS %YMM2,%YMM3,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM2,%XMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VCVTPS2PD %XMM2,%YMM19</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VCVTPS2PD %XMM3,%YMM3</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VSQRTPD %YMM19,%YMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>9-12</td></tr><tr><td>VSQRTPD %YMM3,%YMM18</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>9-12</td></tr><tr><td>VMULPD %YMM19,%YMM2,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPD %YMM3,%YMM18,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VCVTPD2PS %YMM2,%XMM2</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VCVTPD2PS %YMM3,%XMM3</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,%XMM3,%YMM2,%YMM2</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VRCPPS %YMM2,%YMM3</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VMULPS %YMM2,%YMM3,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPS %YMM2,%YMM3,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VADDPS %YMM3,%YMM3,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM2,%YMM3,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVUPS 0x20(%RDX,%RAX,1),%YMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM2,%YMM4,%YMM15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVUPS 0x20(%RCX,%RAX,1),%YMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM2,%YMM14,%YMM20</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM9,%YMM4,%YMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM21,%YMM1,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVUPS 0x20(%R8,%RAX,1),%YMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBPS %YMM8,%YMM3,%YMM22</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM10,%YMM1,%YMM14</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPS %YMM4,%YMM4,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVAPS %YMM22,%YMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>VFMADD132PS %YMM22,%YMM11,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADD $0x40,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>VFMADD231PS %YMM14,%YMM14,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VADDPS %YMM1,%YMM3,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM1,%XMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VCVTPS2PD %XMM1,%YMM23</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VCVTPS2PD %XMM3,%YMM3</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VSQRTPD %YMM23,%YMM1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>9-12</td></tr><tr><td>VSQRTPD %YMM3,%YMM24</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>9-12</td></tr><tr><td>VMULPD %YMM23,%YMM1,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPD %YMM3,%YMM24,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VCVTPD2PS %YMM1,%XMM1</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VCVTPD2PS %YMM3,%XMM3</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,%XMM3,%YMM1,%YMM1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VRCPPS %YMM1,%YMM3</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VMULPS %YMM1,%YMM3,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPS %YMM1,%YMM3,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VADDPS %YMM3,%YMM3,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM1,%YMM3,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM1,%YMM20,%YMM14</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM1,%YMM15,%YMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM22,%YMM2,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>CMP %R10,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 17d0 <move_particles+0x150></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
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
          workaround = "<ul><li>Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast</li></ul></li><li>If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip</li></ul>",
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
          details = "These instructions generate more than one micro-operation and only one of them can be decoded during a cycle and the extra micro-operations increase pressure on execution units.\n<ul><li>VCVTPD2PS: 4 occurrences</li><li>VCVTPS2PD: 4 occurrences</li></ul>",
          title = "Complex instructions",
          txt = "Detected COMPLEX INSTRUCTIONS.\n",
        },
        {
          workaround = "<ul><li>Recompile with march=icelake.\nCQA target is Icelake_7e (10th generation Intel Core processors and Intel Xeon processor product family based on Icelake Client microarchitecture) but specialization flags are -march=icelake-client</li><li>Use vector aligned instructions:\n<ol><li>align your arrays on 64 bytes boundaries: replace { void *p = malloc (size); } with { void *p; posix_memalign (&amp;p, 64, size); }.</li><li>inform your compiler that your arrays are vector aligned: if array 'foo' is 64 bytes-aligned, define a pointer 'p_foo' as __builtin_assume_aligned (foo, 64) and use it instead of 'foo' in the loop.</li></ol></li></ul>",
          details = "<ul><li>VEXTRACTF128: 2 occurrences</li><li>VINSERTF128: 2 occurrences</li></ul>",
          title = "Vector unaligned load/store instructions",
          txt = "Detected 4 suboptimal vector unaligned load/store instructions.\n",
        },
        {
          workaround = "Avoid mixing data with different types. In particular, check if the type of constants is the same as array elements. Use double instead of single precision only when/where needed by numerical stability and avoid mixing precision. In C/C++, FP constants are double precision by default and must be suffixed by 'f' to make them single precision.",
          details = "<ul><li>VCVTPD2PS (FP64 to FP32, SIMD): 4 occurrences</li><li>VCVTPS2PD (FP32 to FP64, SIMD): 4 occurrences</li></ul>",
          title = "Conversion instructions",
          txt = "Detected expensive conversion instructions.",
        },
        {
          title = "Type of elements and instruction set",
          txt = "30 AVX instructions are processing arithmetic or math operations on single precision FP elements in vector mode (eight at a time).\n8 AVX instructions are processing arithmetic or math operations on double precision FP elements in vector mode (four at a time).\n",
        },
        {
          title = "Matching between your loop (in the source code) and the binary loop",
          txt = "The binary loop is composed of 352 FP arithmetical operations:\n<ul><li>176: addition or subtraction (80 inside FMA instructions)</li><li>144: multiply (80 inside FMA instructions)</li><li>16: fast reciprocal</li><li>16: square root</li></ul>The binary loop is loading 192 bytes (48 single precision FP elements).",
        },
        {
          title = "Arithmetic intensity",
          txt = "Arithmetic intensity is 1.83 FP operations per loaded or stored byte.",
        },
      },
      expert = {
        {
          title = "General properties",
          txt = "<table><tr><td>nb instructions</td><td>61</td></tr><tr><td>nb uops</td><td>68</td></tr><tr><td>loop length</td><td>315</td></tr><tr><td>used x86 registers</td><td>5</td></tr><tr><td>used mmx registers</td><td>0</td></tr><tr><td>used xmm registers</td><td>3</td></tr><tr><td>used ymm registers</td><td>17</td></tr><tr><td>used zmm registers</td><td>0</td></tr><tr><td>nb stack references</td><td>0</td></tr><tr><td>ADD-SUB / MUL ratio</td><td>1.20</td></tr></table>",
        },
        {
          title = "Front-end",
          txt = "ASSUMED MACRO FUSION\nFIT IN UOP CACHE\n<table><tr><td>micro-operation queue</td><td>13.60 cycles</td></tr><tr><td>front end</td><td>13.60 cycles</td></tr></table>",
        },
        {
          title = "Back-end",
          txt = "<table><tr><th>      </th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th></tr><tr><td>uops</td><td>23.00</td><td>23.00</td><td>3.00</td><td>3.00</td><td>0.00</td><td>12.00</td><td>2.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>cycles</td><td>23.00</td><td>23.00</td><td>3.00</td><td>3.00</td><td>0.00</td><td>12.00</td><td>2.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr></table>\n<table><tr><td>Cycles executing div or sqrt instructions</td><td>36.00-48.00</td></tr><tr><td>Longest recurrence chain latency (RecMII)</td><td>8.00</td></tr></table>",
        },
        {
          title = "Cycles summary",
          txt = "<table><tr><td>Front-end</td><td>13.60</td></tr><tr><td>Dispatch</td><td>23.00</td></tr><tr><td>DIV/SQRT</td><td>36.00-48.00</td></tr><tr><td>Data deps.</td><td>8.00</td></tr><tr><td>Overall L1</td><td>36.00-48.00</td></tr></table>",
        },
        {
          title = "Vectorization ratios",
          txt = "<table><tr><td>all</td><td>100%</td></tr><tr><td>load</td><td>100%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>100%</td></tr><tr><td>add-sub</td><td>100%</td></tr><tr><td>fma</td><td>100%</td></tr><tr><td>div/sqrt</td><td>100%</td></tr><tr><td>other</td><td>100%</td></tr></table>",
        },
        {
          title = "Vector efficiency ratios",
          txt = "<table><tr><td>all</td><td>46%</td></tr><tr><td>load</td><td>50%</td></tr><tr><td>store</td><td>NA (no store vectorizable/vectorized instructions)</td></tr><tr><td>mul</td><td>50%</td></tr><tr><td>add-sub</td><td>50%</td></tr><tr><td>fma</td><td>50%</td></tr><tr><td>div/sqrt</td><td>50%</td></tr><tr><td>other</td><td>35%</td></tr></table>",
        },
        {
          title = "Cycles and memory resources usage",
          txt = "Assuming all data fit into the L1 cache, each iteration of the binary loop takes 48.00 cycles. At this rate:\n<ul><li>3% of peak load performance is reached (4.00 out of 128.00 bytes loaded per cycle (GB/s @ 1GHz))</li></ul>",
        },
        {
          title = "Front-end bottlenecks",
          txt = "Found no such bottlenecks.",
        },
        {
          title = "ASM code",
          txt = "In the binary file, the address of the loop is: 17d0\n\n<table><tr><th>Instruction</th><th>Nb FU</th><th>P0</th><th>P1</th><th>P2</th><th>P3</th><th>P4</th><th>P5</th><th>P6</th><th>P7</th><th>P8</th><th>P9</th><th>Latency</th><th>Recip. throughput</th></tr><tr><td>VMOVUPS (%R8,%RAX,1),%YMM15</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VMOVUPS (%RCX,%RAX,1),%YMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBPS %YMM10,%YMM15,%YMM20</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM9,%YMM3,%YMM15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVUPS (%RDX,%RAX,1),%YMM2</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBPS %YMM8,%YMM2,%YMM21</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPS %YMM15,%YMM15,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVAPS %YMM21,%YMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>VFMADD132PS %YMM21,%YMM11,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD231PS %YMM20,%YMM20,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VADDPS %YMM2,%YMM3,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM2,%XMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VCVTPS2PD %XMM2,%YMM19</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VCVTPS2PD %XMM3,%YMM3</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VSQRTPD %YMM19,%YMM2</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>9-12</td></tr><tr><td>VSQRTPD %YMM3,%YMM18</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>9-12</td></tr><tr><td>VMULPD %YMM19,%YMM2,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPD %YMM3,%YMM18,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VCVTPD2PS %YMM2,%XMM2</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VCVTPD2PS %YMM3,%XMM3</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,%XMM3,%YMM2,%YMM2</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VRCPPS %YMM2,%YMM3</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VMULPS %YMM2,%YMM3,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPS %YMM2,%YMM3,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VADDPS %YMM3,%YMM3,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM2,%YMM3,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVUPS 0x20(%RDX,%RAX,1),%YMM3</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM2,%YMM4,%YMM15</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVUPS 0x20(%RCX,%RAX,1),%YMM4</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM2,%YMM14,%YMM20</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM9,%YMM4,%YMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM21,%YMM1,%YMM2</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVUPS 0x20(%R8,%RAX,1),%YMM1</td><td>1</td><td>0</td><td>0</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>0.50</td></tr><tr><td>VSUBPS %YMM8,%YMM3,%YMM22</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM10,%YMM1,%YMM14</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPS %YMM4,%YMM4,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMOVAPS %YMM22,%YMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.25</td></tr><tr><td>VFMADD132PS %YMM22,%YMM11,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>ADD $0x40,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>VFMADD231PS %YMM14,%YMM14,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VADDPS %YMM1,%YMM3,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VEXTRACTF128 $0x1,%YMM1,%XMM3</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VCVTPS2PD %XMM1,%YMM23</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VCVTPS2PD %XMM3,%YMM3</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VSQRTPD %YMM23,%YMM1</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>9-12</td></tr><tr><td>VSQRTPD %YMM3,%YMM24</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>13-19</td><td>9-12</td></tr><tr><td>VMULPD %YMM23,%YMM1,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPD %YMM3,%YMM24,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VCVTPD2PS %YMM1,%XMM1</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VCVTPD2PS %YMM3,%XMM3</td><td>2</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>7</td><td>1</td></tr><tr><td>VINSERTF128 $0x1,%XMM3,%YMM1,%YMM1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>3</td><td>1</td></tr><tr><td>VRCPPS %YMM1,%YMM3</td><td>1</td><td>1</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>1</td></tr><tr><td>VMULPS %YMM1,%YMM3,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VMULPS %YMM1,%YMM3,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VADDPS %YMM3,%YMM3,%YMM3</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VSUBPS %YMM1,%YMM3,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM1,%YMM20,%YMM14</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM1,%YMM15,%YMM4</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>VFMADD132PS %YMM22,%YMM2,%YMM1</td><td>1</td><td>0.50</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>4</td><td>0.50</td></tr><tr><td>CMP %R10,%RAX</td><td>1</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>0.25</td><td>0.25</td><td>0</td><td>0</td><td>0</td><td>1</td><td>0.25</td></tr><tr><td>JNE 17d0 <move_particles+0x150></td><td>1</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0.50-1</td></tr></table>",
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
          workaround = "<ul><li>Reduce the number of division or square root instructions:\n<ul><li>If denominator is constant over iterations, use reciprocal (replace x/y with x*(1/y)). Check precision impact. This will be done by your compiler with ffast-math or Ofast</li></ul></li><li>If you accept to loose numerical precision up to 2 ulp, you can speedup your code by passing the following options to your compiler: (ffast-math or Ofast) and mrecip</li></ul>",
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
