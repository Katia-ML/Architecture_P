address;source_location;insn;indent
0x1680;/home/katia/Archi/nbodySoA.c:55;ENDBR64;
0x1684;/home/katia/Archi/nbodySoA.c:60;TEST	%RSI,%RSI;
0x1687;/home/katia/Archi/nbodySoA.c:60;JE	2072 <move_particles+0x9f2>;
0x168d;/home/katia/Archi/nbodySoA.c:55;PUSH	%RBP;
0x168e;/home/katia/Archi/nbodySoA.c:55;MOV	%RSI,%R10;
0x1691;/home/katia/Archi/nbodySoA.c:55;SHR	$0x3,%R10;
0x1695;/home/katia/Archi/nbodySoA.c:55;MOV	%RSP,%RBP;
0x1698;/home/katia/Archi/nbodySoA.c:55;PUSH	%R15;
0x169a;/home/katia/Archi/nbodySoA.c:55;VMOVAPS	0x1a9e(%RIP),%YMM11;
0x16a2;/home/katia/Archi/nbodySoA.c:55;VMOVSS	0x1a7e(%RIP),%XMM13;
0x16aa;/home/katia/Archi/nbodySoA.c:55;PUSH	%R14;
0x16ac;/home/katia/Archi/nbodySoA.c:55;VMOVSS	0x1a78(%RIP),%XMM12;
0x16b4;/home/katia/Archi/nbodySoA.c:55;LEA	-0x1(%RSI),%R14;
0x16b8;/home/katia/Archi/nbodySoA.c:55;PUSH	%R13;
0x16ba;/home/katia/Archi/nbodySoA.c:55;MOV	%RSI,%R13;
0x16bd;/home/katia/Archi/nbodySoA.c:55;SAL	$0x5,%R10;
0x16c1;/home/katia/Archi/nbodySoA.c:55;PUSH	%R12;
0x16c3;/home/katia/Archi/nbodySoA.c:55;AND	$-0x8,%R13;
0x16c7;/home/katia/Archi/nbodySoA.c:55;PUSH	%RBX;
0x16c8;/home/katia/Archi/nbodySoA.c:71;MOV	(%RDI),%R8;
0x16cb;/home/katia/Archi/nbodySoA.c:72;MOV	0x8(%RDI),%RCX;
0x16cf;/home/katia/Archi/nbodySoA.c:73;MOV	0x10(%RDI),%RDX;
0x16d3;/home/katia/Archi/nbodySoA.c:86;MOV	0x18(%RDI),%R12;
0x16d7;/home/katia/Archi/nbodySoA.c:87;MOV	0x20(%RDI),%RBX;
0x16db;/home/katia/Archi/nbodySoA.c:88;MOV	0x28(%RDI),%R11;
0x16df;/home/katia/Archi/nbodySoA.c:60;XOR	%EDI,%EDI;
0x16e1;/home/katia/Archi/nbodySoA.c:60;NOPL	(%RAX);
0x16e8;/home/katia/Archi/nbodySoA.c:71;VMOVSS	(%R8,%RDI,4),%XMM5;(3) 
0x16ee;/home/katia/Archi/nbodySoA.c:72;VMOVSS	(%RCX,%RDI,4),%XMM6;(3) 
0x16f3;/home/katia/Archi/nbodySoA.c:73;VMOVSS	(%RDX,%RDI,4),%XMM7;(3) 
0x16f8;/home/katia/Archi/nbodySoA.c:73;CMP	$0x6,%R14;(3) 
0x16fc;/home/katia/Archi/nbodySoA.c:73;JBE	2028 <move_particles+0x9a8>;(3) 
0x1702;/home/katia/Archi/nbodySoA.c:73;VXORPS	%XMM1,%XMM1,%XMM1;(3) 
0x1706;/home/katia/Archi/nbodySoA.c:73;VBROADCASTSS	%XMM5,%YMM10;(3) 
0x170b;/home/katia/Archi/nbodySoA.c:73;VBROADCASTSS	%XMM6,%YMM9;(3) 
0x1710;/home/katia/Archi/nbodySoA.c:73;VBROADCASTSS	%XMM7,%YMM8;(3) 
0x1715;/home/katia/Archi/nbodySoA.c:73;XOR	%EAX,%EAX;(3) 
0x1717;/home/katia/Archi/nbodySoA.c:73;VMOVAPS	%YMM1,%YMM4;(3) 
0x171b;/home/katia/Archi/nbodySoA.c:73;VMOVAPS	%YMM1,%YMM14;(3) 
0x171f;/home/katia/Archi/nbodySoA.c:73;TEST	$0x20,%R10B;(3) 
0x1723;/home/katia/Archi/nbodySoA.c:73;JE	17d0 <move_particles+0x150>;(3) 
0x1729;/home/katia/Archi/nbodySoA.c:71;VMOVUPS	(%R8),%YMM4;(3) 
0x172e;/home/katia/Archi/nbodySoA.c:72;VMOVUPS	(%RCX),%YMM15;(3) 
0x1732;/home/katia/Archi/nbodySoA.c:71;VSUBPS	%YMM10,%YMM4,%YMM14;(3) 
0x1737;/home/katia/Archi/nbodySoA.c:72;VSUBPS	%YMM9,%YMM15,%YMM4;(3) 
0x173c;/home/katia/Archi/nbodySoA.c:73;VMOVUPS	(%RDX),%YMM2;(3) 
0x1740;/home/katia/Archi/nbodySoA.c:73;MOV	$0x20,%EAX;(3) 
0x1745;/home/katia/Archi/nbodySoA.c:73;VSUBPS	%YMM8,%YMM2,%YMM16;(3) 
0x174b;/home/katia/Archi/nbodySoA.c:74;VMULPS	%YMM4,%YMM4,%YMM2;(3) 
0x174f;/home/katia/Archi/nbodySoA.c:74;VMOVAPS	%YMM16,%YMM3;(3) 
0x1755;/home/katia/Archi/nbodySoA.c:74;VFMADD132PS	%YMM16,%YMM11,%YMM3;(3) 
0x175b;/home/katia/Archi/nbodySoA.c:74;VMOVAPS	%YMM2,%YMM15;(3) 
0x175f;/home/katia/Archi/nbodySoA.c:74;VFMADD231PS	%YMM14,%YMM14,%YMM15;(3) 
0x1764;/home/katia/Archi/nbodySoA.c:74;VADDPS	%YMM15,%YMM3,%YMM2;(3) 
0x1769;/home/katia/Archi/nbodySoA.c:75;VEXTRACTF128	$0x1,%YMM2,%XMM15;(3) 
0x176f;/home/katia/Archi/nbodySoA.c:75;VCVTPS2PD	%XMM2,%YMM17;(3) 
0x1775;/home/katia/Archi/nbodySoA.c:75;VCVTPS2PD	%XMM15,%YMM3;(3) 
0x177a;/home/katia/Archi/nbodySoA.c:75;VSQRTPD	%YMM17,%YMM2;(3) 
0x1780;/home/katia/Archi/nbodySoA.c:75;VSQRTPD	%YMM3,%YMM15;(3) 
0x1784;/home/katia/Archi/nbodySoA.c:75;VMULPD	%YMM17,%YMM2,%YMM2;(3) 
0x178a;/home/katia/Archi/nbodySoA.c:75;VMULPD	%YMM3,%YMM15,%YMM3;(3) 
0x178e;/home/katia/Archi/nbodySoA.c:75;VCVTPD2PS	%YMM2,%XMM15;(3) 
0x1792;/home/katia/Archi/nbodySoA.c:75;VCVTPD2PS	%YMM3,%XMM2;(3) 
0x1796;/home/katia/Archi/nbodySoA.c:75;VINSERTF128	$0x1,%XMM2,%YMM15,%YMM15;(3) 
0x179c;/home/katia/Archi/nbodySoA.c:75;VRCPPS	%YMM15,%YMM3;(3) 
0x17a1;/home/katia/Archi/nbodySoA.c:75;VMULPS	%YMM15,%YMM3,%YMM2;(3) 
0x17a6;/home/katia/Archi/nbodySoA.c:75;VMULPS	%YMM2,%YMM3,%YMM15;(3) 
0x17aa;/home/katia/Archi/nbodySoA.c:75;VADDPS	%YMM3,%YMM3,%YMM3;(3) 
0x17ae;/home/katia/Archi/nbodySoA.c:75;VSUBPS	%YMM15,%YMM3,%YMM2;(3) 
0x17b3;/home/katia/Archi/nbodySoA.c:80;VFMADD132PS	%YMM2,%YMM1,%YMM14;(3) 
0x17b8;/home/katia/Archi/nbodySoA.c:81;VFMADD132PS	%YMM2,%YMM1,%YMM4;(3) 
0x17bd;/home/katia/Archi/nbodySoA.c:82;VFMADD231PS	%YMM16,%YMM2,%YMM1;(3) 
0x17c3;/home/katia/Archi/nbodySoA.c:68;CMP	%R10,%RAX;(3) 
0x17c6;/home/katia/Archi/nbodySoA.c:68;JE	190b <move_particles+0x28b>;(3) 
0x17cc;/home/katia/Archi/nbodySoA.c:68;NOPL	(%RAX);(3) 
0x17d0;/home/katia/Archi/nbodySoA.c:71;VMOVUPS	(%R8,%RAX,1),%YMM15;  (4) 
0x17d6;/home/katia/Archi/nbodySoA.c:72;VMOVUPS	(%RCX,%RAX,1),%YMM3;  (4) 
0x17db;/home/katia/Archi/nbodySoA.c:71;VSUBPS	%YMM10,%YMM15,%YMM20;  (4) 
0x17e1;/home/katia/Archi/nbodySoA.c:72;VSUBPS	%YMM9,%YMM3,%YMM15;  (4) 
0x17e6;/home/katia/Archi/nbodySoA.c:73;VMOVUPS	(%RDX,%RAX,1),%YMM2;  (4) 
0x17eb;/home/katia/Archi/nbodySoA.c:73;VSUBPS	%YMM8,%YMM2,%YMM21;  (4) 
0x17f1;/home/katia/Archi/nbodySoA.c:74;VMULPS	%YMM15,%YMM15,%YMM2;  (4) 
0x17f6;/home/katia/Archi/nbodySoA.c:74;VMOVAPS	%YMM21,%YMM3;  (4) 
0x17fc;/home/katia/Archi/nbodySoA.c:74;VFMADD132PS	%YMM21,%YMM11,%YMM3;  (4) 
0x1802;/home/katia/Archi/nbodySoA.c:74;VFMADD231PS	%YMM20,%YMM20,%YMM2;  (4) 
0x1808;/home/katia/Archi/nbodySoA.c:74;VADDPS	%YMM2,%YMM3,%YMM2;  (4) 
0x180c;/home/katia/Archi/nbodySoA.c:75;VEXTRACTF128	$0x1,%YMM2,%XMM3;  (4) 
0x1812;/home/katia/Archi/nbodySoA.c:75;VCVTPS2PD	%XMM2,%YMM19;  (4) 
0x1818;/home/katia/Archi/nbodySoA.c:75;VCVTPS2PD	%XMM3,%YMM3;  (4) 
0x181c;/home/katia/Archi/nbodySoA.c:75;VSQRTPD	%YMM19,%YMM2;  (4) 
0x1822;/home/katia/Archi/nbodySoA.c:75;VSQRTPD	%YMM3,%YMM18;  (4) 
0x1828;/home/katia/Archi/nbodySoA.c:75;VMULPD	%YMM19,%YMM2,%YMM2;  (4) 
0x182e;/home/katia/Archi/nbodySoA.c:75;VMULPD	%YMM3,%YMM18,%YMM3;  (4) 
0x1834;/home/katia/Archi/nbodySoA.c:75;VCVTPD2PS	%YMM2,%XMM2;  (4) 
0x1838;/home/katia/Archi/nbodySoA.c:75;VCVTPD2PS	%YMM3,%XMM3;  (4) 
0x183c;/home/katia/Archi/nbodySoA.c:75;VINSERTF128	$0x1,%XMM3,%YMM2,%YMM2;  (4) 
0x1842;/home/katia/Archi/nbodySoA.c:75;VRCPPS	%YMM2,%YMM3;  (4) 
0x1846;/home/katia/Archi/nbodySoA.c:75;VMULPS	%YMM2,%YMM3,%YMM2;  (4) 
0x184a;/home/katia/Archi/nbodySoA.c:75;VMULPS	%YMM2,%YMM3,%YMM2;  (4) 
0x184e;/home/katia/Archi/nbodySoA.c:75;VADDPS	%YMM3,%YMM3,%YMM3;  (4) 
0x1852;/home/katia/Archi/nbodySoA.c:75;VSUBPS	%YMM2,%YMM3,%YMM2;  (4) 
0x1856;/home/katia/Archi/nbodySoA.c:73;VMOVUPS	0x20(%RDX,%RAX,1),%YMM3;  (4) 
0x185c;/home/katia/Archi/nbodySoA.c:81;VFMADD132PS	%YMM2,%YMM4,%YMM15;  (4) 
0x1861;/home/katia/Archi/nbodySoA.c:72;VMOVUPS	0x20(%RCX,%RAX,1),%YMM4;  (4) 
0x1867;/home/katia/Archi/nbodySoA.c:80;VFMADD132PS	%YMM2,%YMM14,%YMM20;  (4) 
0x186d;/home/katia/Archi/nbodySoA.c:72;VSUBPS	%YMM9,%YMM4,%YMM4;  (4) 
0x1872;/home/katia/Archi/nbodySoA.c:82;VFMADD132PS	%YMM21,%YMM1,%YMM2;  (4) 
0x1878;/home/katia/Archi/nbodySoA.c:71;VMOVUPS	0x20(%R8,%RAX,1),%YMM1;  (4) 
0x187f;/home/katia/Archi/nbodySoA.c:73;VSUBPS	%YMM8,%YMM3,%YMM22;  (4) 
0x1885;/home/katia/Archi/nbodySoA.c:71;VSUBPS	%YMM10,%YMM1,%YMM14;  (4) 
0x188a;/home/katia/Archi/nbodySoA.c:74;VMULPS	%YMM4,%YMM4,%YMM1;  (4) 
0x188e;/home/katia/Archi/nbodySoA.c:74;VMOVAPS	%YMM22,%YMM3;  (4) 
0x1894;/home/katia/Archi/nbodySoA.c:74;VFMADD132PS	%YMM22,%YMM11,%YMM3;  (4) 
0x189a;/home/katia/Archi/nbodySoA.c:74;ADD	$0x40,%RAX;  (4) 
0x189e;/home/katia/Archi/nbodySoA.c:74;VFMADD231PS	%YMM14,%YMM14,%YMM1;  (4) 
0x18a3;/home/katia/Archi/nbodySoA.c:74;VADDPS	%YMM1,%YMM3,%YMM1;  (4) 
0x18a7;/home/katia/Archi/nbodySoA.c:75;VEXTRACTF128	$0x1,%YMM1,%XMM3;  (4) 
0x18ad;/home/katia/Archi/nbodySoA.c:75;VCVTPS2PD	%XMM1,%YMM23;  (4) 
0x18b3;/home/katia/Archi/nbodySoA.c:75;VCVTPS2PD	%XMM3,%YMM3;  (4) 
0x18b7;/home/katia/Archi/nbodySoA.c:75;VSQRTPD	%YMM23,%YMM1;  (4) 
0x18bd;/home/katia/Archi/nbodySoA.c:75;VSQRTPD	%YMM3,%YMM24;  (4) 
0x18c3;/home/katia/Archi/nbodySoA.c:75;VMULPD	%YMM23,%YMM1,%YMM1;  (4) 
0x18c9;/home/katia/Archi/nbodySoA.c:75;VMULPD	%YMM3,%YMM24,%YMM3;  (4) 
0x18cf;/home/katia/Archi/nbodySoA.c:75;VCVTPD2PS	%YMM1,%XMM1;  (4) 
0x18d3;/home/katia/Archi/nbodySoA.c:75;VCVTPD2PS	%YMM3,%XMM3;  (4) 
0x18d7;/home/katia/Archi/nbodySoA.c:75;VINSERTF128	$0x1,%XMM3,%YMM1,%YMM1;  (4) 
0x18dd;/home/katia/Archi/nbodySoA.c:75;VRCPPS	%YMM1,%YMM3;  (4) 
0x18e1;/home/katia/Archi/nbodySoA.c:75;VMULPS	%YMM1,%YMM3,%YMM1;  (4) 
0x18e5;/home/katia/Archi/nbodySoA.c:75;VMULPS	%YMM1,%YMM3,%YMM1;  (4) 
0x18e9;/home/katia/Archi/nbodySoA.c:75;VADDPS	%YMM3,%YMM3,%YMM3;  (4) 
0x18ed;/home/katia/Archi/nbodySoA.c:75;VSUBPS	%YMM1,%YMM3,%YMM1;  (4) 
0x18f1;/home/katia/Archi/nbodySoA.c:80;VFMADD132PS	%YMM1,%YMM20,%YMM14;  (4) 
0x18f7;/home/katia/Archi/nbodySoA.c:81;VFMADD132PS	%YMM1,%YMM15,%YMM4;  (4) 
0x18fc;/home/katia/Archi/nbodySoA.c:82;VFMADD132PS	%YMM22,%YMM2,%YMM1;  (4) 
0x1902;/home/katia/Archi/nbodySoA.c:68;CMP	%R10,%RAX;  (4) 
0x1905;/home/katia/Archi/nbodySoA.c:68;JNE	17d0 <move_particles+0x150>;  (4) 
0x190b;/home/katia/Archi/nbodySoA.c:68;VEXTRACTF128	$0x1,%YMM1,%XMM10;(3) 
0x1911;/home/katia/Archi/nbodySoA.c:68;VADDPS	%XMM1,%XMM10,%XMM9;(3) 
0x1915;/home/katia/Archi/nbodySoA.c:68;VEXTRACTF128	$0x1,%YMM4,%XMM3;(3) 
0x191b;/home/katia/Archi/nbodySoA.c:68;VADDPS	%XMM4,%XMM3,%XMM10;(3) 
0x191f;/home/katia/Archi/nbodySoA.c:68;VMOVHLPS	%XMM9,%XMM9,%XMM8;(3) 
0x1924;/home/katia/Archi/nbodySoA.c:68;VADDPS	%XMM9,%XMM8,%XMM15;(3) 
0x1929;/home/katia/Archi/nbodySoA.c:68;VMOVHLPS	%XMM10,%XMM10,%XMM4;(3) 
0x192e;/home/katia/Archi/nbodySoA.c:68;VADDPS	%XMM10,%XMM4,%XMM9;(3) 
0x1933;/home/katia/Archi/nbodySoA.c:68;VSHUFPS	$0x55,%XMM15,%XMM15,%XMM2;(3) 
0x1939;/home/katia/Archi/nbodySoA.c:68;VADDPS	%XMM15,%XMM2,%XMM1;(3) 
0x193e;/home/katia/Archi/nbodySoA.c:68;VEXTRACTF128	$0x1,%YMM14,%XMM15;(3) 
0x1944;/home/katia/Archi/nbodySoA.c:68;VADDPS	%XMM14,%XMM15,%XMM3;(3) 
0x1949;/home/katia/Archi/nbodySoA.c:68;VSHUFPS	$0x55,%XMM9,%XMM9,%XMM8;(3) 
0x194f;/home/katia/Archi/nbodySoA.c:68;VADDPS	%XMM9,%XMM8,%XMM2;(3) 
0x1954;/home/katia/Archi/nbodySoA.c:68;VMOVHLPS	%XMM3,%XMM3,%XMM14;(3) 
0x1958;/home/katia/Archi/nbodySoA.c:68;VADDPS	%XMM3,%XMM14,%XMM10;(3) 
0x195c;/home/katia/Archi/nbodySoA.c:68;VSHUFPS	$0x55,%XMM10,%XMM10,%XMM4;(3) 
0x1962;/home/katia/Archi/nbodySoA.c:68;VADDPS	%XMM10,%XMM4,%XMM3;(3) 
0x1967;/home/katia/Archi/nbodySoA.c:68;CMP	%R13,%RSI;(3) 
0x196a;/home/katia/Archi/nbodySoA.c:68;JE	1c55 <move_particles+0x5d5>;(3) 
0x1970;/home/katia/Archi/nbodySoA.c:82;MOV	%R13,%R9;(3) 
0x1973;/home/katia/Archi/nbodySoA.c:72;VMOVSS	(%RCX,%R9,4),%XMM8;(3) 
0x1979;/home/katia/Archi/nbodySoA.c:71;VMOVSS	(%R8,%R9,4),%XMM9;(3) 
0x197f;/home/katia/Archi/nbodySoA.c:72;VSUBSS	%XMM6,%XMM8,%XMM10;(3) 
0x1983;/home/katia/Archi/nbodySoA.c:73;VMOVSS	(%RDX,%R9,4),%XMM14;(3) 
0x1989;/home/katia/Archi/nbodySoA.c:71;VSUBSS	%XMM5,%XMM9,%XMM15;(3) 
0x198d;/home/katia/Archi/nbodySoA.c:74;VMULSS	%XMM10,%XMM10,%XMM4;(3) 
0x1992;/home/katia/Archi/nbodySoA.c:73;VSUBSS	%XMM7,%XMM14,%XMM9;(3) 
0x1996;/home/katia/Archi/nbodySoA.c:68;LEA	0x1(%R9),%R15;(3) 
0x199a;/home/katia/Archi/nbodySoA.c:71;LEA	(,%R9,4),%RAX;(3) 
0x19a2;/home/katia/Archi/nbodySoA.c:71;VMOVAPS	%XMM9,%XMM8;(3) 
0x19a7;/home/katia/Archi/nbodySoA.c:71;VFMADD231SS	%XMM15,%XMM15,%XMM4;(3) 
0x19ac;/home/katia/Archi/nbodySoA.c:71;VFMADD132SS	%XMM9,%XMM13,%XMM8;(3) 
0x19b1;/home/katia/Archi/nbodySoA.c:74;VADDSS	%XMM8,%XMM4,%XMM14;(3) 
0x19b6;/home/katia/Archi/nbodySoA.c:75;VCVTSS2SD	%XMM14,%XMM14,%XMM4;(3) 
0x19bb;/home/katia/Archi/nbodySoA.c:75;VSQRTSD	%XMM4,%XMM4,%XMM8;(3) 
0x19bf;/home/katia/Archi/nbodySoA.c:75;VMULSD	%XMM8,%XMM4,%XMM14;(3) 
0x19c4;/home/katia/Archi/nbodySoA.c:75;VCVTSD2SS	%XMM14,%XMM14,%XMM4;(3) 
0x19c9;/home/katia/Archi/nbodySoA.c:75;VDIVSS	%XMM4,%XMM12,%XMM8;(3) 
0x19cd;/home/katia/Archi/nbodySoA.c:80;VFMADD231SS	%XMM8,%XMM15,%XMM3;(3) 
0x19d2;/home/katia/Archi/nbodySoA.c:81;VFMADD231SS	%XMM8,%XMM10,%XMM2;(3) 
0x19d7;/home/katia/Archi/nbodySoA.c:82;VFMADD231SS	%XMM8,%XMM9,%XMM1;(3) 
0x19dc;/home/katia/Archi/nbodySoA.c:68;CMP	%R15,%RSI;(3) 
0x19df;/home/katia/Archi/nbodySoA.c:68;JBE	1c55 <move_particles+0x5d5>;(3) 
0x19e5;/home/katia/Archi/nbodySoA.c:71;VMOVSS	0x4(%R8,%RAX,1),%XMM15;(3) 
0x19ec;/home/katia/Archi/nbodySoA.c:72;VMOVSS	0x4(%RCX,%RAX,1),%XMM9;(3) 
0x19f2;/home/katia/Archi/nbodySoA.c:71;VSUBSS	%XMM5,%XMM15,%XMM10;(3) 
0x19f6;/home/katia/Archi/nbodySoA.c:72;VSUBSS	%XMM6,%XMM9,%XMM15;(3) 
0x19fa;/home/katia/Archi/nbodySoA.c:73;VMOVSS	0x4(%RDX,%RAX,1),%XMM14;(3) 
0x1a00;/home/katia/Archi/nbodySoA.c:68;LEA	0x2(%R9),%R15;(3) 
0x1a04;/home/katia/Archi/nbodySoA.c:74;VMULSS	%XMM15,%XMM15,%XMM4;(3) 
0x1a09;/home/katia/Archi/nbodySoA.c:73;VSUBSS	%XMM7,%XMM14,%XMM8;(3) 
0x1a0d;/home/katia/Archi/nbodySoA.c:74;VMOVAPS	%XMM8,%XMM9;(3) 
0x1a12;/home/katia/Archi/nbodySoA.c:74;VFMADD231SS	%XMM10,%XMM10,%XMM4;(3) 
0x1a17;/home/katia/Archi/nbodySoA.c:74;VFMADD132SS	%XMM8,%XMM13,%XMM9;(3) 
0x1a1c;/home/katia/Archi/nbodySoA.c:74;VADDSS	%XMM9,%XMM4,%XMM14;(3) 
0x1a21;/home/katia/Archi/nbodySoA.c:75;VCVTSS2SD	%XMM14,%XMM14,%XMM4;(3) 
0x1a26;/home/katia/Archi/nbodySoA.c:75;VSQRTSD	%XMM4,%XMM4,%XMM9;(3) 
0x1a2a;/home/katia/Archi/nbodySoA.c:75;VMULSD	%XMM9,%XMM4,%XMM14;(3) 
0x1a2f;/home/katia/Archi/nbodySoA.c:75;VCVTSD2SS	%XMM14,%XMM14,%XMM4;(3) 
0x1a34;/home/katia/Archi/nbodySoA.c:75;VDIVSS	%XMM4,%XMM12,%XMM9;(3) 
0x1a38;/home/katia/Archi/nbodySoA.c:80;VFMADD231SS	%XMM9,%XMM10,%XMM3;(3) 
0x1a3d;/home/katia/Archi/nbodySoA.c:81;VFMADD231SS	%XMM9,%XMM15,%XMM2;(3) 
0x1a42;/home/katia/Archi/nbodySoA.c:82;VFMADD231SS	%XMM9,%XMM8,%XMM1;(3) 
0x1a47;/home/katia/Archi/nbodySoA.c:68;CMP	%R15,%RSI;(3) 
0x1a4a;/home/katia/Archi/nbodySoA.c:68;JBE	1c55 <move_particles+0x5d5>;(3) 
0x1a50;/home/katia/Archi/nbodySoA.c:72;VMOVSS	0x8(%RCX,%RAX,1),%XMM8;(3) 
0x1a56;/home/katia/Archi/nbodySoA.c:71;VMOVSS	0x8(%R8,%RAX,1),%XMM10;(3) 
0x1a5d;/home/katia/Archi/nbodySoA.c:72;VSUBSS	%XMM6,%XMM8,%XMM9;(3) 
0x1a61;/home/katia/Archi/nbodySoA.c:73;VMOVSS	0x8(%RDX,%RAX,1),%XMM14;(3) 
0x1a67;/home/katia/Archi/nbodySoA.c:71;VSUBSS	%XMM5,%XMM10,%XMM15;(3) 
0x1a6b;/home/katia/Archi/nbodySoA.c:74;VMULSS	%XMM9,%XMM9,%XMM4;(3) 
0x1a70;/home/katia/Archi/nbodySoA.c:73;VSUBSS	%XMM7,%XMM14,%XMM10;(3) 
0x1a74;/home/katia/Archi/nbodySoA.c:68;LEA	0x3(%R9),%R15;(3) 
0x1a78;/home/katia/Archi/nbodySoA.c:68;VMOVAPS	%XMM10,%XMM8;(3) 
0x1a7d;/home/katia/Archi/nbodySoA.c:68;VFMADD231SS	%XMM15,%XMM15,%XMM4;(3) 
0x1a82;/home/katia/Archi/nbodySoA.c:68;VFMADD132SS	%XMM10,%XMM13,%XMM8;(3) 
0x1a87;/home/katia/Archi/nbodySoA.c:74;VADDSS	%XMM8,%XMM4,%XMM14;(3) 
0x1a8c;/home/katia/Archi/nbodySoA.c:75;VCVTSS2SD	%XMM14,%XMM14,%XMM4;(3) 
0x1a91;/home/katia/Archi/nbodySoA.c:75;VSQRTSD	%XMM4,%XMM4,%XMM8;(3) 
0x1a95;/home/katia/Archi/nbodySoA.c:75;VMULSD	%XMM8,%XMM4,%XMM14;(3) 
0x1a9a;/home/katia/Archi/nbodySoA.c:75;VCVTSD2SS	%XMM14,%XMM14,%XMM4;(3) 
0x1a9f;/home/katia/Archi/nbodySoA.c:75;VDIVSS	%XMM4,%XMM12,%XMM8;(3) 
0x1aa3;/home/katia/Archi/nbodySoA.c:80;VFMADD231SS	%XMM15,%XMM8,%XMM3;(3) 
0x1aa8;/home/katia/Archi/nbodySoA.c:81;VFMADD231SS	%XMM9,%XMM8,%XMM2;(3) 
0x1aad;/home/katia/Archi/nbodySoA.c:82;VFMADD231SS	%XMM8,%XMM10,%XMM1;(3) 
0x1ab2;/home/katia/Archi/nbodySoA.c:68;CMP	%R15,%RSI;(3) 
0x1ab5;/home/katia/Archi/nbodySoA.c:68;JBE	1c55 <move_particles+0x5d5>;(3) 
0x1abb;/home/katia/Archi/nbodySoA.c:71;VMOVSS	0xc(%R8,%RAX,1),%XMM15;(3) 
0x1ac2;/home/katia/Archi/nbodySoA.c:72;VMOVSS	0xc(%RCX,%RAX,1),%XMM9;(3) 
0x1ac8;/home/katia/Archi/nbodySoA.c:71;VSUBSS	%XMM5,%XMM15,%XMM10;(3) 
0x1acc;/home/katia/Archi/nbodySoA.c:72;VSUBSS	%XMM6,%XMM9,%XMM15;(3) 
0x1ad0;/home/katia/Archi/nbodySoA.c:73;VMOVSS	0xc(%RDX,%RAX,1),%XMM14;(3) 
0x1ad6;/home/katia/Archi/nbodySoA.c:68;LEA	0x4(%R9),%R15;(3) 
0x1ada;/home/katia/Archi/nbodySoA.c:74;VMULSS	%XMM15,%XMM15,%XMM4;(3) 
0x1adf;/home/katia/Archi/nbodySoA.c:73;VSUBSS	%XMM7,%XMM14,%XMM8;(3) 
0x1ae3;/home/katia/Archi/nbodySoA.c:74;VMOVAPS	%XMM8,%XMM9;(3) 
0x1ae8;/home/katia/Archi/nbodySoA.c:74;VFMADD231SS	%XMM10,%XMM10,%XMM4;(3) 
0x1aed;/home/katia/Archi/nbodySoA.c:74;VFMADD132SS	%XMM8,%XMM13,%XMM9;(3) 
0x1af2;/home/katia/Archi/nbodySoA.c:74;VADDSS	%XMM9,%XMM4,%XMM14;(3) 
0x1af7;/home/katia/Archi/nbodySoA.c:75;VCVTSS2SD	%XMM14,%XMM14,%XMM4;(3) 
0x1afc;/home/katia/Archi/nbodySoA.c:75;VSQRTSD	%XMM4,%XMM4,%XMM9;(3) 
0x1b00;/home/katia/Archi/nbodySoA.c:75;VMULSD	%XMM9,%XMM4,%XMM14;(3) 
0x1b05;/home/katia/Archi/nbodySoA.c:75;VCVTSD2SS	%XMM14,%XMM14,%XMM4;(3) 
0x1b0a;/home/katia/Archi/nbodySoA.c:75;VDIVSS	%XMM4,%XMM12,%XMM9;(3) 
0x1b0e;/home/katia/Archi/nbodySoA.c:80;VFMADD231SS	%XMM10,%XMM9,%XMM3;(3) 
0x1b13;/home/katia/Archi/nbodySoA.c:81;VFMADD231SS	%XMM15,%XMM9,%XMM2;(3) 
0x1b18;/home/katia/Archi/nbodySoA.c:82;VFMADD231SS	%XMM8,%XMM9,%XMM1;(3) 
0x1b1d;/home/katia/Archi/nbodySoA.c:68;CMP	%R15,%RSI;(3) 
0x1b20;/home/katia/Archi/nbodySoA.c:68;JBE	1c55 <move_particles+0x5d5>;(3) 
0x1b26;/home/katia/Archi/nbodySoA.c:72;VMOVSS	0x10(%RCX,%RAX,1),%XMM8;(3) 
0x1b2c;/home/katia/Archi/nbodySoA.c:71;VMOVSS	0x10(%R8,%RAX,1),%XMM10;(3) 
0x1b33;/home/katia/Archi/nbodySoA.c:72;VSUBSS	%XMM6,%XMM8,%XMM9;(3) 
0x1b37;/home/katia/Archi/nbodySoA.c:73;VMOVSS	0x10(%RDX,%RAX,1),%XMM14;(3) 
0x1b3d;/home/katia/Archi/nbodySoA.c:71;VSUBSS	%XMM5,%XMM10,%XMM15;(3) 
0x1b41;/home/katia/Archi/nbodySoA.c:74;VMULSS	%XMM9,%XMM9,%XMM4;(3) 
0x1b46;/home/katia/Archi/nbodySoA.c:73;VSUBSS	%XMM7,%XMM14,%XMM10;(3) 
0x1b4a;/home/katia/Archi/nbodySoA.c:68;LEA	0x5(%R9),%R15;(3) 
0x1b4e;/home/katia/Archi/nbodySoA.c:68;VMOVAPS	%XMM10,%XMM8;(3) 
0x1b53;/home/katia/Archi/nbodySoA.c:68;VFMADD231SS	%XMM15,%XMM15,%XMM4;(3) 
0x1b58;/home/katia/Archi/nbodySoA.c:68;VFMADD132SS	%XMM10,%XMM13,%XMM8;(3) 
0x1b5d;/home/katia/Archi/nbodySoA.c:74;VADDSS	%XMM8,%XMM4,%XMM14;(3) 
0x1b62;/home/katia/Archi/nbodySoA.c:75;VCVTSS2SD	%XMM14,%XMM14,%XMM4;(3) 
0x1b67;/home/katia/Archi/nbodySoA.c:75;VSQRTSD	%XMM4,%XMM4,%XMM8;(3) 
0x1b6b;/home/katia/Archi/nbodySoA.c:75;VMULSD	%XMM8,%XMM4,%XMM14;(3) 
0x1b70;/home/katia/Archi/nbodySoA.c:75;VCVTSD2SS	%XMM14,%XMM14,%XMM4;(3) 
0x1b75;/home/katia/Archi/nbodySoA.c:75;VDIVSS	%XMM4,%XMM12,%XMM8;(3) 
0x1b79;/home/katia/Archi/nbodySoA.c:80;VFMADD231SS	%XMM15,%XMM8,%XMM3;(3) 
0x1b7e;/home/katia/Archi/nbodySoA.c:81;VFMADD231SS	%XMM9,%XMM8,%XMM2;(3) 
0x1b83;/home/katia/Archi/nbodySoA.c:82;VFMADD231SS	%XMM10,%XMM8,%XMM1;(3) 
0x1b88;/home/katia/Archi/nbodySoA.c:68;CMP	%R15,%RSI;(3) 
0x1b8b;/home/katia/Archi/nbodySoA.c:68;JBE	1c55 <move_particles+0x5d5>;(3) 
0x1b91;/home/katia/Archi/nbodySoA.c:71;VMOVSS	0x14(%R8,%RAX,1),%XMM15;(3) 
0x1b98;/home/katia/Archi/nbodySoA.c:72;VMOVSS	0x14(%RCX,%RAX,1),%XMM9;(3) 
0x1b9e;/home/katia/Archi/nbodySoA.c:71;VSUBSS	%XMM5,%XMM15,%XMM10;(3) 
0x1ba2;/home/katia/Archi/nbodySoA.c:72;VSUBSS	%XMM6,%XMM9,%XMM15;(3) 
0x1ba6;/home/katia/Archi/nbodySoA.c:73;VMOVSS	0x14(%RDX,%RAX,1),%XMM14;(3) 
0x1bac;/home/katia/Archi/nbodySoA.c:68;ADD	$0x6,%R9;(3) 
0x1bb0;/home/katia/Archi/nbodySoA.c:74;VMULSS	%XMM15,%XMM15,%XMM4;(3) 
0x1bb5;/home/katia/Archi/nbodySoA.c:73;VSUBSS	%XMM7,%XMM14,%XMM8;(3) 
0x1bb9;/home/katia/Archi/nbodySoA.c:74;VMOVAPS	%XMM8,%XMM9;(3) 
0x1bbe;/home/katia/Archi/nbodySoA.c:74;VFMADD231SS	%XMM10,%XMM10,%XMM4;(3) 
0x1bc3;/home/katia/Archi/nbodySoA.c:74;VFMADD132SS	%XMM8,%XMM13,%XMM9;(3) 
0x1bc8;/home/katia/Archi/nbodySoA.c:74;VADDSS	%XMM9,%XMM4,%XMM14;(3) 
0x1bcd;/home/katia/Archi/nbodySoA.c:75;VCVTSS2SD	%XMM14,%XMM14,%XMM4;(3) 
0x1bd2;/home/katia/Archi/nbodySoA.c:75;VSQRTSD	%XMM4,%XMM4,%XMM9;(3) 
0x1bd6;/home/katia/Archi/nbodySoA.c:75;VMULSD	%XMM9,%XMM4,%XMM14;(3) 
0x1bdb;/home/katia/Archi/nbodySoA.c:75;VCVTSD2SS	%XMM14,%XMM14,%XMM4;(3) 
0x1be0;/home/katia/Archi/nbodySoA.c:75;VDIVSS	%XMM4,%XMM12,%XMM9;(3) 
0x1be4;/home/katia/Archi/nbodySoA.c:80;VFMADD231SS	%XMM10,%XMM9,%XMM3;(3) 
0x1be9;/home/katia/Archi/nbodySoA.c:81;VFMADD231SS	%XMM15,%XMM9,%XMM2;(3) 
0x1bee;/home/katia/Archi/nbodySoA.c:82;VFMADD231SS	%XMM8,%XMM9,%XMM1;(3) 
0x1bf3;/home/katia/Archi/nbodySoA.c:68;CMP	%R9,%RSI;(3) 
0x1bf6;/home/katia/Archi/nbodySoA.c:68;JBE	1c55 <move_particles+0x5d5>;(3) 
0x1bf8;/home/katia/Archi/nbodySoA.c:72;VMOVSS	0x18(%RCX,%RAX,1),%XMM15;(3) 
0x1bfe;/home/katia/Archi/nbodySoA.c:73;VMOVSS	0x18(%RDX,%RAX,1),%XMM8;(3) 
0x1c04;/home/katia/Archi/nbodySoA.c:72;VSUBSS	%XMM6,%XMM15,%XMM6;(3) 
0x1c08;/home/katia/Archi/nbodySoA.c:71;VMOVSS	0x18(%R8,%RAX,1),%XMM10;(3) 
0x1c0f;/home/katia/Archi/nbodySoA.c:73;VSUBSS	%XMM7,%XMM8,%XMM7;(3) 
0x1c13;/home/katia/Archi/nbodySoA.c:74;VMULSS	%XMM6,%XMM6,%XMM14;(3) 
0x1c17;/home/katia/Archi/nbodySoA.c:71;VSUBSS	%XMM5,%XMM10,%XMM5;(3) 
0x1c1b;/home/katia/Archi/nbodySoA.c:74;VMOVAPS	%XMM7,%XMM4;(3) 
0x1c1f;/home/katia/Archi/nbodySoA.c:74;VFMADD132SS	%XMM7,%XMM13,%XMM4;(3) 
0x1c24;/home/katia/Archi/nbodySoA.c:74;VFMADD231SS	%XMM5,%XMM5,%XMM14;(3) 
0x1c29;/home/katia/Archi/nbodySoA.c:74;VADDSS	%XMM4,%XMM14,%XMM9;(3) 
0x1c2d;/home/katia/Archi/nbodySoA.c:75;VCVTSS2SD	%XMM9,%XMM9,%XMM10;(3) 
0x1c32;/home/katia/Archi/nbodySoA.c:75;VSQRTSD	%XMM10,%XMM10,%XMM15;(3) 
0x1c37;/home/katia/Archi/nbodySoA.c:75;VMULSD	%XMM10,%XMM15,%XMM8;(3) 
0x1c3c;/home/katia/Archi/nbodySoA.c:75;VCVTSD2SS	%XMM8,%XMM8,%XMM14;(3) 
0x1c41;/home/katia/Archi/nbodySoA.c:75;VDIVSS	%XMM14,%XMM12,%XMM4;(3) 
0x1c46;/home/katia/Archi/nbodySoA.c:80;VFMADD231SS	%XMM5,%XMM4,%XMM3;(3) 
0x1c4b;/home/katia/Archi/nbodySoA.c:81;VFMADD231SS	%XMM6,%XMM4,%XMM2;(3) 
0x1c50;/home/katia/Archi/nbodySoA.c:82;VFMADD231SS	%XMM7,%XMM4,%XMM1;(3) 
0x1c55;/home/katia/Archi/nbodySoA.c:86;VFMADD213SS	(%R12,%RDI,4),%XMM0,%XMM3;(3) 
0x1c5b;/home/katia/Archi/nbodySoA.c:60;LEA	0x1(%RDI),%R9;(3) 
0x1c5f;/home/katia/Archi/nbodySoA.c:86;VMOVSS	%XMM3,(%R12,%RDI,4);(3) 
0x1c65;/home/katia/Archi/nbodySoA.c:87;VFMADD213SS	(%RBX,%RDI,4),%XMM0,%XMM2;(3) 
0x1c6b;/home/katia/Archi/nbodySoA.c:87;VMOVSS	%XMM2,(%RBX,%RDI,4);(3) 
0x1c70;/home/katia/Archi/nbodySoA.c:88;VFMADD213SS	(%R11,%RDI,4),%XMM0,%XMM1;(3) 
0x1c76;/home/katia/Archi/nbodySoA.c:88;VMOVSS	%XMM1,(%R11,%RDI,4);(3) 
0x1c7c;/home/katia/Archi/nbodySoA.c:60;CMP	%R9,%RSI;(3) 
0x1c7f;/home/katia/Archi/nbodySoA.c:60;JE	1c90 <move_particles+0x610>;(3) 
0x1c81;/home/katia/Archi/nbodySoA.c:60;MOV	%R9,%RDI;(3) 
0x1c84;/home/katia/Archi/nbodySoA.c:60;JMP	16e8 <move_particles+0x68>;(3) 
0x1c89;/home/katia/Archi/nbodySoA.c:60;NOPL	(%RAX);
0x1c90;/home/katia/Archi/nbodySoA.c:60;XOR	%R10D,%R10D;
0x1c93;/home/katia/Archi/nbodySoA.c:60;AND	$0x7,%ESI;
0x1c96;/home/katia/Archi/nbodySoA.c:60;JE	1e36 <move_particles+0x7b6>;
0x1c9c;/home/katia/Archi/nbodySoA.c:60;CMP	$0x1,%RSI;
0x1ca0;/home/katia/Archi/nbodySoA.c:60;JE	1df1 <move_particles+0x771>;
0x1ca6;/home/katia/Archi/nbodySoA.c:60;CMP	$0x2,%RSI;
0x1caa;/home/katia/Archi/nbodySoA.c:60;JE	1db8 <move_particles+0x738>;
0x1cb0;/home/katia/Archi/nbodySoA.c:60;CMP	$0x3,%RSI;
0x1cb4;/home/katia/Archi/nbodySoA.c:60;JE	1d7f <move_particles+0x6ff>;
0x1cba;/home/katia/Archi/nbodySoA.c:60;CMP	$0x4,%RSI;
0x1cbe;/home/katia/Archi/nbodySoA.c:60;JE	1d46 <move_particles+0x6c6>;
0x1cc4;/home/katia/Archi/nbodySoA.c:60;CMP	$0x5,%RSI;
0x1cc8;/home/katia/Archi/nbodySoA.c:60;JE	1d0d <move_particles+0x68d>;
0x1cca;/home/katia/Archi/nbodySoA.c:60;CMP	$0x6,%RSI;
0x1cce;/home/katia/Archi/nbodySoA.c:60;JNE	203c <move_particles+0x9bc>;
0x1cd4;/home/katia/Archi/nbodySoA.c:94;VMOVSS	(%R12,%R10,4),%XMM1;
0x1cda;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	(%R8,%R10,4),%XMM0,%XMM1;
0x1ce0;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM1,(%R8,%R10,4);
0x1ce6;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R10,4),%XMM2;
0x1cec;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R10,4),%XMM0,%XMM2;
0x1cf2;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM2,(%RCX,%R10,4);
0x1cf8;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R10,4),%XMM3;
0x1cfe;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R10,4),%XMM0,%XMM3;
0x1d04;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM3,(%RDX,%R10,4);
0x1d0a;/home/katia/Archi/nbodySoA.c:92;INC	%R10;
0x1d0d;/home/katia/Archi/nbodySoA.c:94;VMOVSS	(%R12,%R10,4),%XMM5;
0x1d13;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	(%R8,%R10,4),%XMM0,%XMM5;
0x1d19;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM5,(%R8,%R10,4);
0x1d1f;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R10,4),%XMM6;
0x1d25;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R10,4),%XMM0,%XMM6;
0x1d2b;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM6,(%RCX,%R10,4);
0x1d31;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R10,4),%XMM7;
0x1d37;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R10,4),%XMM0,%XMM7;
0x1d3d;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM7,(%RDX,%R10,4);
0x1d43;/home/katia/Archi/nbodySoA.c:92;INC	%R10;
0x1d46;/home/katia/Archi/nbodySoA.c:94;VMOVSS	(%R12,%R10,4),%XMM9;
0x1d4c;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	(%R8,%R10,4),%XMM0,%XMM9;
0x1d52;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM9,(%R8,%R10,4);
0x1d58;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R10,4),%XMM10;
0x1d5e;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R10,4),%XMM0,%XMM10;
0x1d64;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM10,(%RCX,%R10,4);
0x1d6a;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R10,4),%XMM15;
0x1d70;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R10,4),%XMM0,%XMM15;
0x1d76;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM15,(%RDX,%R10,4);
0x1d7c;/home/katia/Archi/nbodySoA.c:92;INC	%R10;
0x1d7f;/home/katia/Archi/nbodySoA.c:94;VMOVSS	(%R12,%R10,4),%XMM8;
0x1d85;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	(%R8,%R10,4),%XMM0,%XMM8;
0x1d8b;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM8,(%R8,%R10,4);
0x1d91;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R10,4),%XMM14;
0x1d97;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R10,4),%XMM0,%XMM14;
0x1d9d;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM14,(%RCX,%R10,4);
0x1da3;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R10,4),%XMM4;
0x1da9;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R10,4),%XMM0,%XMM4;
0x1daf;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM4,(%RDX,%R10,4);
0x1db5;/home/katia/Archi/nbodySoA.c:92;INC	%R10;
0x1db8;/home/katia/Archi/nbodySoA.c:94;VMOVSS	(%R12,%R10,4),%XMM11;
0x1dbe;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	(%R8,%R10,4),%XMM0,%XMM11;
0x1dc4;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM11,(%R8,%R10,4);
0x1dca;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R10,4),%XMM12;
0x1dd0;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R10,4),%XMM0,%XMM12;
0x1dd6;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM12,(%RCX,%R10,4);
0x1ddc;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R10,4),%XMM13;
0x1de2;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R10,4),%XMM0,%XMM13;
0x1de8;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM13,(%RDX,%R10,4);
0x1dee;/home/katia/Archi/nbodySoA.c:92;INC	%R10;
0x1df1;/home/katia/Archi/nbodySoA.c:94;VMOVSS	(%R12,%R10,4),%XMM1;
0x1df7;/home/katia/Archi/nbodySoA.c:94;MOV	%R10,%RSI;
0x1dfa;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	(%R8,%R10,4),%XMM0,%XMM1;
0x1e00;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM1,(%R8,%R10,4);
0x1e06;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R10,4),%XMM2;
0x1e0c;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R10,4),%XMM0,%XMM2;
0x1e12;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM2,(%RCX,%R10,4);
0x1e18;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R10,4),%XMM3;
0x1e1e;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R10,4),%XMM0,%XMM3;
0x1e24;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM3,(%RDX,%R10,4);
0x1e2a;/home/katia/Archi/nbodySoA.c:92;INC	%R10;
0x1e2d;/home/katia/Archi/nbodySoA.c:92;CMP	%RDI,%RSI;
0x1e30;/home/katia/Archi/nbodySoA.c:92;JE	2017 <move_particles+0x997>;
0x1e36;/home/katia/Archi/nbodySoA.c:94;VMOVSS	(%R12,%R10,4),%XMM5;(2) 
0x1e3c;/home/katia/Archi/nbodySoA.c:92;LEA	0x1(%R10),%R13;(2) 
0x1e40;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	(%R8,%R10,4),%XMM0,%XMM5;(2) 
0x1e46;/home/katia/Archi/nbodySoA.c:92;LEA	0x2(%R10),%R14;(2) 
0x1e4a;/home/katia/Archi/nbodySoA.c:92;LEA	0x3(%R10),%RAX;(2) 
0x1e4e;/home/katia/Archi/nbodySoA.c:92;LEA	0x4(%R10),%R15;(2) 
0x1e52;/home/katia/Archi/nbodySoA.c:92;LEA	0x5(%R10),%R9;(2) 
0x1e56;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM5,(%R8,%R10,4);(2) 
0x1e5c;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R10,4),%XMM6;(2) 
0x1e62;/home/katia/Archi/nbodySoA.c:92;LEA	0x6(%R10),%RSI;(2) 
0x1e66;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R10,4),%XMM0,%XMM6;(2) 
0x1e6c;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM6,(%RCX,%R10,4);(2) 
0x1e72;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R10,4),%XMM7;(2) 
0x1e78;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R10,4),%XMM0,%XMM7;(2) 
0x1e7e;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM7,(%RDX,%R10,4);(2) 
0x1e84;/home/katia/Archi/nbodySoA.c:94;VMOVSS	0x4(%R12,%R10,4),%XMM9;(2) 
0x1e8b;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	0x4(%R8,%R10,4),%XMM0,%XMM9;(2) 
0x1e92;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM9,(%R8,%R13,4);(2) 
0x1e98;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R13,4),%XMM10;(2) 
0x1e9e;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R13,4),%XMM0,%XMM10;(2) 
0x1ea4;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM10,(%RCX,%R13,4);(2) 
0x1eaa;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R13,4),%XMM15;(2) 
0x1eb0;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R13,4),%XMM0,%XMM15;(2) 
0x1eb6;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM15,(%RDX,%R13,4);(2) 
0x1ebc;/home/katia/Archi/nbodySoA.c:94;VMOVSS	0x8(%R12,%R10,4),%XMM8;(2) 
0x1ec3;/home/katia/Archi/nbodySoA.c:92;LEA	0x7(%R10),%R13;(2) 
0x1ec7;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	0x8(%R8,%R10,4),%XMM0,%XMM8;(2) 
0x1ece;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM8,(%R8,%R14,4);(2) 
0x1ed4;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R14,4),%XMM14;(2) 
0x1eda;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R14,4),%XMM0,%XMM14;(2) 
0x1ee0;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM14,(%RCX,%R14,4);(2) 
0x1ee6;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R14,4),%XMM4;(2) 
0x1eec;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R14,4),%XMM0,%XMM4;(2) 
0x1ef2;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM4,(%RDX,%R14,4);(2) 
0x1ef8;/home/katia/Archi/nbodySoA.c:94;VMOVSS	0xc(%R12,%R10,4),%XMM11;(2) 
0x1eff;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	0xc(%R8,%R10,4),%XMM0,%XMM11;(2) 
0x1f06;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM11,(%R8,%RAX,4);(2) 
0x1f0c;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%RAX,4),%XMM12;(2) 
0x1f11;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%RAX,4),%XMM0,%XMM12;(2) 
0x1f17;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM12,(%RCX,%RAX,4);(2) 
0x1f1c;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%RAX,4),%XMM13;(2) 
0x1f22;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%RAX,4),%XMM0,%XMM13;(2) 
0x1f28;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM13,(%RDX,%RAX,4);(2) 
0x1f2d;/home/katia/Archi/nbodySoA.c:94;VMOVSS	0x10(%R12,%R10,4),%XMM1;(2) 
0x1f34;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	0x10(%R8,%R10,4),%XMM0,%XMM1;(2) 
0x1f3b;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM1,(%R8,%R15,4);(2) 
0x1f41;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R15,4),%XMM2;(2) 
0x1f47;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R15,4),%XMM0,%XMM2;(2) 
0x1f4d;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM2,(%RCX,%R15,4);(2) 
0x1f53;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R15,4),%XMM3;(2) 
0x1f59;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R15,4),%XMM0,%XMM3;(2) 
0x1f5f;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM3,(%RDX,%R15,4);(2) 
0x1f65;/home/katia/Archi/nbodySoA.c:94;VMOVSS	0x14(%R12,%R10,4),%XMM5;(2) 
0x1f6c;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	0x14(%R8,%R10,4),%XMM0,%XMM5;(2) 
0x1f73;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM5,(%R8,%R9,4);(2) 
0x1f79;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R9,4),%XMM6;(2) 
0x1f7f;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R9,4),%XMM0,%XMM6;(2) 
0x1f85;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM6,(%RCX,%R9,4);(2) 
0x1f8b;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R9,4),%XMM7;(2) 
0x1f91;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R9,4),%XMM0,%XMM7;(2) 
0x1f97;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM7,(%RDX,%R9,4);(2) 
0x1f9d;/home/katia/Archi/nbodySoA.c:94;VMOVSS	0x18(%R12,%R10,4),%XMM9;(2) 
0x1fa4;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	0x18(%R8,%R10,4),%XMM0,%XMM9;(2) 
0x1fab;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM9,(%R8,%RSI,4);(2) 
0x1fb1;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%RSI,4),%XMM10;(2) 
0x1fb6;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%RSI,4),%XMM0,%XMM10;(2) 
0x1fbc;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM10,(%RCX,%RSI,4);(2) 
0x1fc1;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%RSI,4),%XMM15;(2) 
0x1fc7;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%RSI,4),%XMM0,%XMM15;(2) 
0x1fcd;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM15,(%RDX,%RSI,4);(2) 
0x1fd2;/home/katia/Archi/nbodySoA.c:94;VMOVSS	0x1c(%R12,%R10,4),%XMM8;(2) 
0x1fd9;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	0x1c(%R8,%R10,4),%XMM0,%XMM8;(2) 
0x1fe0;/home/katia/Archi/nbodySoA.c:92;ADD	$0x8,%R10;(2) 
0x1fe4;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM8,(%R8,%R13,4);(2) 
0x1fea;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX,%R13,4),%XMM14;(2) 
0x1ff0;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX,%R13,4),%XMM0,%XMM14;(2) 
0x1ff6;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM14,(%RCX,%R13,4);(2) 
0x1ffc;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11,%R13,4),%XMM4;(2) 
0x2002;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX,%R13,4),%XMM0,%XMM4;(2) 
0x2008;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM4,(%RDX,%R13,4);(2) 
0x200e;/home/katia/Archi/nbodySoA.c:92;CMP	%RDI,%R13;(2) 
0x2011;/home/katia/Archi/nbodySoA.c:92;JNE	1e36 <move_particles+0x7b6>;(2) 
0x2017;/home/katia/Archi/nbodySoA.c:92;VZEROUPPER;
0x201a;/home/katia/Archi/nbodySoA.c:98;POP	%RBX;
0x201b;/home/katia/Archi/nbodySoA.c:98;POP	%R12;
0x201d;/home/katia/Archi/nbodySoA.c:98;POP	%R13;
0x201f;/home/katia/Archi/nbodySoA.c:98;POP	%R14;
0x2021;/home/katia/Archi/nbodySoA.c:98;POP	%R15;
0x2023;/home/katia/Archi/nbodySoA.c:98;POP	%RBP;
0x2024;/home/katia/Archi/nbodySoA.c:98;RET;
0x2025;/home/katia/Archi/nbodySoA.c:98;NOPL	(%RAX);
0x2028;/home/katia/Archi/nbodySoA.c:65;VXORPS	%XMM1,%XMM1,%XMM1;(3) 
0x202c;/home/katia/Archi/nbodySoA.c:68;XOR	%R9D,%R9D;(3) 
0x202f;/home/katia/Archi/nbodySoA.c:64;VMOVAPS	%XMM1,%XMM2;(3) 
0x2033;/home/katia/Archi/nbodySoA.c:63;VMOVAPS	%XMM1,%XMM3;(3) 
0x2037;/home/katia/Archi/nbodySoA.c:63;JMP	1973 <move_particles+0x2f3>;(3) 
0x203c;/home/katia/Archi/nbodySoA.c:94;VMOVSS	(%R12),%XMM11;
0x2042;/home/katia/Archi/nbodySoA.c:92;MOV	$0x1,%R10D;
0x2048;/home/katia/Archi/nbodySoA.c:94;VFMADD213SS	(%R8),%XMM0,%XMM11;
0x204d;/home/katia/Archi/nbodySoA.c:94;VMOVSS	%XMM11,(%R8);
0x2052;/home/katia/Archi/nbodySoA.c:95;VMOVSS	(%RBX),%XMM12;
0x2056;/home/katia/Archi/nbodySoA.c:95;VFMADD213SS	(%RCX),%XMM0,%XMM12;
0x205b;/home/katia/Archi/nbodySoA.c:95;VMOVSS	%XMM12,(%RCX);
0x205f;/home/katia/Archi/nbodySoA.c:96;VMOVSS	(%R11),%XMM13;
0x2064;/home/katia/Archi/nbodySoA.c:96;VFMADD213SS	(%RDX),%XMM0,%XMM13;
0x2069;/home/katia/Archi/nbodySoA.c:96;VMOVSS	%XMM13,(%RDX);
0x206d;/home/katia/Archi/nbodySoA.c:92;JMP	1cd4 <move_particles+0x654>;
0x2072;/home/katia/Archi/nbodySoA.c:92;RET;
0x2073;:0;NOPW	%CS:(%RAX,%RAX,1);
0x207d;:0;NOPL	(%RAX);
