
--- prog list "init·1" ---
0000 (signal.go:6) TEXT    init·1+0(SB),$152-0
0001 (signal.go:6) LOCALS  ,$120
0002 (signal.go:6) TYPE    autotmp_0000+-120(SP){*"".SliceSignal},$8
0003 (signal.go:6) TYPE    autotmp_0001+-96(SP){"".SliceSignal},$32
0004 (signal.go:6) TYPE    autotmp_0003+-24(SP){*"".RandSignal},$8
0005 (signal.go:6) TYPE    autotmp_0004+-64(SP){"".RandSignal},$40
0006 (signal.go:8) LEAQ    autotmp_0001+-96(SP),DI
0007 (signal.go:8) MOVQ    $0,AX
0008 (signal.go:8) MOVQ    $4,CX
0009 (signal.go:8) REP     ,
0010 (signal.go:8) STOSQ   ,
0011 (signal.go:8) LEAQ    autotmp_0001+-96(SP),BX
0012 (signal.go:8) MOVQ    BX,DX
0013 (signal.go:8) MOVQ    BX,DI
0014 (signal.go:8) MOVQ    BX,autotmp_0000+-120(SP)
0015 (signal.go:8) MOVQ    $0,AX
0016 (signal.go:8) MOVQ    $4,CX
0017 (signal.go:8) REP     ,
0018 (signal.go:8) STOSQ   ,
0019 (signal.go:8) MOVQ    go.itab.*"".SliceSignal."".Signal+0(SB),AX
0020 (signal.go:8) MOVQ    $0,BP
0021 (signal.go:8) CMPQ    AX,BP
0022 (signal.go:8) JNE     $1,29
0023 (signal.go:8) MOVQ    $type.*"".SliceSignal+0(SB),(SP)
0024 (signal.go:8) MOVQ    $type."".Signal+0(SB),8(SP)
0025 (signal.go:8) MOVQ    $go.itab.*"".SliceSignal."".Signal+0(SB),16(SP)
0026 (signal.go:8) CALL    ,runtime.typ2Itab+0(SB)
0027 (signal.go:8) MOVQ    autotmp_0000+-120(SP),DX
0028 (signal.go:8) MOVQ    24(SP),AX
0029 (signal.go:8) MOVQ    DX,autotmp_0006+-104(SP)
0030 (signal.go:8) MOVQ    AX,autotmp_0006+-112(SP)
0031 (signal.go:9) LEAQ    autotmp_0004+-64(SP),DI
0032 (signal.go:9) MOVQ    $0,AX
0033 (signal.go:9) MOVQ    $5,CX
0034 (signal.go:9) REP     ,
0035 (signal.go:9) STOSQ   ,
0036 (signal.go:9) LEAQ    autotmp_0004+-64(SP),BX
0037 (signal.go:9) MOVQ    BX,DX
0038 (signal.go:9) MOVQ    BX,DI
0039 (signal.go:9) MOVQ    BX,autotmp_0003+-24(SP)
0040 (signal.go:9) MOVQ    $0,AX
0041 (signal.go:9) MOVQ    $5,CX
0042 (signal.go:9) REP     ,
0043 (signal.go:9) STOSQ   ,
0044 (signal.go:9) MOVQ    go.itab.*"".RandSignal."".Signal+0(SB),AX
0045 (signal.go:9) MOVQ    $0,BP
0046 (signal.go:9) CMPQ    AX,BP
0047 (signal.go:9) JNE     $1,54
0048 (signal.go:9) MOVQ    $type.*"".RandSignal+0(SB),(SP)
0049 (signal.go:9) MOVQ    $type."".Signal+0(SB),8(SP)
0050 (signal.go:9) MOVQ    $go.itab.*"".RandSignal."".Signal+0(SB),16(SP)
0051 (signal.go:9) CALL    ,runtime.typ2Itab+0(SB)
0052 (signal.go:9) MOVQ    autotmp_0003+-24(SP),DX
0053 (signal.go:9) MOVQ    24(SP),AX
0054 (signal.go:9) MOVQ    DX,autotmp_0007+-8(SP)
0055 (signal.go:9) MOVQ    AX,autotmp_0007+-16(SP)
0056 (signal.go:10) RET     ,

--- prog list "(*SliceSignal).Reset" ---
0057 (signal.go:24) TEXT    (*SliceSignal).Reset+0(SB),$0-8
0058 (signal.go:24) LOCALS  ,$0
0059 (signal.go:24) TYPE    s+0(FP){*"".SliceSignal},$8
0060 (signal.go:25) MOVQ    s+0(FP),BX
0061 (signal.go:25) MOVQ    $0,24(BX)
0062 (signal.go:26) RET     ,

--- prog list "(*SliceSignal).Next" ---
0063 (signal.go:28) TEXT    (*SliceSignal).Next+0(SB),$0-32
0064 (signal.go:28) MOVQ    s+0(FP),DX
0065 (signal.go:28) LOCALS  ,$0
0066 (signal.go:28) TYPE    s+0(FP){*"".SliceSignal},$8
0067 (signal.go:28) TYPE    out+8(FP){int64},$8
0068 (signal.go:28) TYPE    err+16(FP){error},$16
0069 (signal.go:28) MOVQ    $0,err+16(FP)
0070 (signal.go:28) MOVQ    $0,err+24(FP)
0071 (signal.go:28) MOVQ    $0,out+8(FP)
0072 (signal.go:29) JMP     ,75
0073 (signal.go:29) MOVQ    $1,AX
0074 (signal.go:29) JMP     ,80
0075 (signal.go:29) MOVQ    24(DX),BX
0076 (signal.go:29) MOVQ    8(DX),BP
0077 (signal.go:29) CMPQ    BX,BP
0078 (signal.go:29) JLT     ,73
0079 (signal.go:29) MOVQ    $0,AX
0080 (signal.go:29) CMPB    AX,$0
0081 (signal.go:29) JNE     ,87
0082 (signal.go:30) MOVQ    NoMoreSamples+0(SB),BX
0083 (signal.go:30) MOVQ    BX,err+16(FP)
0084 (signal.go:30) MOVQ    NoMoreSamples+8(SB),BX
0085 (signal.go:30) MOVQ    BX,err+24(FP)
0086 (signal.go:31) RET     ,
0087 (signal.go:34) MOVQ    24(DX),SI
0088 (signal.go:34) MOVQ    (DX),BX
0089 (signal.go:34) MOVQ    8(DX),AX
0090 (signal.go:34) MOVQ    16(DX),BP
0091 (signal.go:34) MOVQ    SI,BP
0092 (signal.go:34) CMPQ    SI,AX
0093 (signal.go:34) JCS     $1,96
0094 (signal.go:34) CALL    ,runtime.panicindex+0(SB)
0095 (signal.go:34) UNDEF   ,
0096 (signal.go:34) LEAQ    (BX)(BP*8),BX
0097 (signal.go:34) MOVQ    (BX),BP
0098 (signal.go:34) MOVQ    BP,out+8(FP)
0099 (signal.go:35) INCQ    ,24(DX)
0100 (signal.go:36) RET     ,

--- prog list "(*SliceSignal).HasNext" ---
0101 (signal.go:39) TEXT    (*SliceSignal).HasNext+0(SB),$0-16
0102 (signal.go:39) MOVQ    s+0(FP),AX
0103 (signal.go:39) LOCALS  ,$0
0104 (signal.go:39) TYPE    s+0(FP){*"".SliceSignal},$8
0105 (signal.go:39) TYPE    ~anon0+8(FP){bool},$1
0106 (signal.go:40) JMP     ,109
0107 (signal.go:40) MOVB    $1,~anon0+8(FP)
0108 (signal.go:40) JMP     ,114
0109 (signal.go:40) MOVQ    24(AX),BX
0110 (signal.go:40) MOVQ    8(AX),BP
0111 (signal.go:40) CMPQ    BX,BP
0112 (signal.go:40) JLT     ,107
0113 (signal.go:40) MOVB    $0,~anon0+8(FP)
0114 (signal.go:40) RET     ,

--- prog list "NewRandSignal" ---
0115 (signal.go:50) TEXT    NewRandSignal+0(SB),$48-16
0116 (signal.go:50) LOCALS  ,$24
0117 (signal.go:50) TYPE    seed+0(FP){*int64},$8
0118 (signal.go:50) TYPE    r+8(FP){*"".RandSignal},$8
0119 (signal.go:50) TYPE    rand.src·2+-24(SP){math/rand.Source},$16
0120 (signal.go:50) TYPE    autotmp_0012+-8(SP){int64},$8
0121 (signal.go:51) MOVQ    $type."".RandSignal+0(SB),(SP)
0122 (signal.go:51) CALL    ,runtime.new+0(SB)
0123 (signal.go:51) MOVQ    seed+0(FP),AX
0124 (signal.go:51) MOVQ    8(SP),BX
0125 (signal.go:51) MOVQ    BX,r+8(FP)
0126 (signal.go:52) MOVQ    $0,BP
0127 (signal.go:52) CMPQ    AX,BP
0128 (signal.go:52) JNE     ,133
0129 (signal.go:53) MOVQ    $0,autotmp_0012+-8(SP)
0130 (signal.go:53) LEAQ    autotmp_0012+-8(SP),BX
0131 (signal.go:53) MOVQ    BX,AX
0132 (signal.go:54) MOVQ    $-1,(BX)
0133 (signal.go:56) MOVQ    (AX),BP
0134 (signal.go:56) MOVQ    BP,(SP)
0135 (signal.go:56) CALL    ,rand.NewSource+0(SB)
0136 (signal.go:56) MOVQ    8(SP),CX
0137 (signal.go:56) MOVQ    16(SP),AX
0138 (signal.go:56) MOVQ    CX,rand.src·2+-24(SP)
0139 (signal.go:56) MOVQ    AX,rand.src·2+-16(SP)
0140 (signal.go:56) MOVQ    $type.math/rand.Rand+0(SB),(SP)
0141 (signal.go:56) CALL    ,runtime.new+0(SB)
0142 (signal.go:56) MOVQ    8(SP),AX
0143 (signal.go:56) MOVQ    rand.src·2+-24(SP),BP
0144 (signal.go:56) MOVQ    BP,(AX)
0145 (signal.go:56) MOVQ    rand.src·2+-16(SP),BP
0146 (signal.go:56) MOVQ    BP,8(AX)
0147 (signal.go:56) MOVQ    r+8(FP),BX
0148 (signal.go:56) MOVQ    AX,32(BX)
0149 (signal.go:57) RET     ,

--- prog list "RandSignal.HasNext" ---
0150 (signal.go:60) TEXT    RandSignal.HasNext+0(SB),$0-48
0151 (signal.go:60) MOVQ    r+16(FP),AX
0152 (signal.go:60) LOCALS  ,$0
0153 (signal.go:60) TYPE    r+0(FP){"".RandSignal},$40
0154 (signal.go:60) TYPE    ~anon0+40(FP){bool},$1
0155 (signal.go:61) CMPQ    AX,$0
0156 (signal.go:61) JLE     ,165
0157 (signal.go:62) JMP     ,160
0158 (signal.go:62) MOVB    $1,~anon0+40(FP)
0159 (signal.go:62) JMP     ,164
0160 (signal.go:62) MOVQ    r+24(FP),BX
0161 (signal.go:62) CMPQ    BX,AX
0162 (signal.go:62) JLT     ,158
0163 (signal.go:62) MOVB    $0,~anon0+40(FP)
0164 (signal.go:62) RET     ,
0165 (signal.go:64) MOVB    $1,~anon0+40(FP)
0166 (signal.go:64) RET     ,

--- prog list "(*RandSignal).Next" ---
0167 (signal.go:67) TEXT    (*RandSignal).Next+0(SB),$72-32
0168 (signal.go:67) MOVQ    r+0(FP),AX
0169 (signal.go:67) LOCALS  ,$48
0170 (signal.go:67) TYPE    r+0(FP){*"".RandSignal},$8
0171 (signal.go:67) TYPE    out+8(FP){int64},$8
0172 (signal.go:67) TYPE    err+16(FP){error},$16
0173 (signal.go:67) TYPE    r+-40(SP){"".RandSignal},$40
0174 (signal.go:67) TYPE    autotmp_0016+-48(SP){uint32},$4
0175 (signal.go:67) TYPE    autotmp_0018+-44(SP){uint32},$4
0176 (signal.go:67) MOVQ    $0,err+16(FP)
0177 (signal.go:67) MOVQ    $0,err+24(FP)
0178 (signal.go:68) LEAQ    r+-40(SP),BP
0179 (signal.go:68) MOVQ    BP,DI
0180 (signal.go:68) MOVQ    AX,SI
0181 (signal.go:68) MOVQ    $5,CX
0182 (signal.go:68) REP     ,
0183 (signal.go:68) MOVSQ   ,
0184 (signal.go:68) MOVQ    r+-24(SP),BX
0185 (signal.go:68) CMPQ    BX,$0
0186 (signal.go:68) JLE     ,196
0187 (signal.go:68) JMP     ,190
0188 (signal.go:68) MOVQ    $1,CX
0189 (signal.go:68) JMP     ,195
0190 (signal.go:68) MOVQ    r+-16(SP),BX
0191 (signal.go:68) MOVQ    r+-24(SP),BP
0192 (signal.go:68) CMPQ    BX,BP
0193 (signal.go:68) JLT     ,188
0194 (signal.go:68) MOVQ    $0,CX
0195 (signal.go:68) JMP     ,197
0196 (signal.go:68) MOVQ    $1,CX
0197 (signal.go:68) CMPB    CX,$0
0198 (signal.go:68) JNE     ,205
0199 (signal.go:69) MOVQ    NoMoreSamples+0(SB),CX
0200 (signal.go:69) MOVQ    NoMoreSamples+8(SB),AX
0201 (signal.go:69) MOVQ    $0,out+8(FP)
0202 (signal.go:69) MOVQ    CX,err+16(FP)
0203 (signal.go:69) MOVQ    AX,err+24(FP)
0204 (signal.go:69) RET     ,
0205 (signal.go:71) MOVQ    8(AX),BX
0206 (signal.go:71) MOVQ    (AX),BP
0207 (signal.go:71) SUBQ    BP,BX
0208 (signal.go:71) MOVQ    $9223372036854775807,BP
0209 (signal.go:71) CMPQ    BX,BP
0210 (signal.go:71) JGT     ,224
0211 (signal.go:73) MOVQ    32(AX),BP
0212 (signal.go:73) MOVQ    BP,(SP)
0213 (signal.go:73) MOVQ    8(AX),BX
0214 (signal.go:73) MOVQ    (AX),BP
0215 (signal.go:73) SUBQ    BP,BX
0216 (signal.go:73) MOVQ    BX,8(SP)
0217 (signal.go:73) CALL    ,rand.(*Rand).Int63n+0(SB)
0218 (signal.go:73) MOVQ    r+0(FP),CX
0219 (signal.go:73) MOVQ    16(SP),AX
0220 (signal.go:73) MOVQ    (CX),BX
0221 (signal.go:73) ADDQ    AX,BX
0222 (signal.go:73) MOVQ    BX,out+8(FP)
0223 (signal.go:71) JMP     ,265
0224 (signal.go:75) MOVQ    32(AX),BP
0225 (signal.go:75) MOVQ    BP,(SP)
0226 (signal.go:75) CALL    ,rand.(*Rand).Uint32+0(SB)
0227 (signal.go:75) MOVL    8(SP),BX
0228 (signal.go:75) MOVL    BX,autotmp_0016+-48(SP)
0229 (signal.go:75) MOVQ    r+0(FP),BX
0230 (signal.go:75) MOVQ    32(BX),BP
0231 (signal.go:75) MOVQ    BP,(SP)
0232 (signal.go:75) CALL    ,rand.(*Rand).Uint32+0(SB)
0233 (signal.go:75) MOVQ    r+0(FP),CX
0234 (signal.go:75) MOVL    8(SP),AX
0235 (signal.go:75) MOVL    autotmp_0016+-48(SP),BX
0236 (signal.go:75) SHLL    $31,BX
0237 (signal.go:75) SHLL    $31,BX
0238 (signal.go:75) ORL     AX,BX
0239 (signal.go:75) MOVQ    BX,AX
0240 (signal.go:76) MOVQ    (CX),BX
0241 (signal.go:76) CMPQ    BX,AX
0242 (signal.go:76) JGT     $1,248
0243 (signal.go:76) MOVQ    8(CX),BX
0244 (signal.go:76) MOVQ    AX,out+8(FP)
0245 (signal.go:76) CMPQ    BX,AX
0246 (signal.go:76) JLT     $1,248
0247 (signal.go:76) JMP     ,265
0248 (signal.go:77) MOVQ    32(CX),BP
0249 (signal.go:77) MOVQ    BP,(SP)
0250 (signal.go:77) CALL    ,rand.(*Rand).Uint32+0(SB)
0251 (signal.go:77) MOVL    8(SP),BX
0252 (signal.go:77) MOVL    BX,autotmp_0018+-44(SP)
0253 (signal.go:77) MOVQ    r+0(FP),BX
0254 (signal.go:77) MOVQ    32(BX),BP
0255 (signal.go:77) MOVQ    BP,(SP)
0256 (signal.go:77) CALL    ,rand.(*Rand).Uint32+0(SB)
0257 (signal.go:77) MOVQ    r+0(FP),CX
0258 (signal.go:77) MOVL    8(SP),AX
0259 (signal.go:77) MOVL    autotmp_0018+-44(SP),BX
0260 (signal.go:77) SHLL    $31,BX
0261 (signal.go:77) SHLL    $31,BX
0262 (signal.go:77) ORL     AX,BX
0263 (signal.go:77) MOVQ    BX,AX
0264 (signal.go:76) JMP     ,240
0265 (signal.go:80) INCQ    ,24(CX)
0266 (signal.go:81) RET     ,

--- prog list "init" ---
0267 (signal.go:82) TEXT    init+0(SB),$32-0
0268 (signal.go:82) MOVBQZX initdone·+0(SB),AX
0269 (signal.go:82) LOCALS  ,$0
0270 (signal.go:82) CMPB    AX,$0
0271 (signal.go:82) JEQ     ,277
0272 (signal.go:82) CMPB    AX,$2
0273 (signal.go:82) JNE     ,275
0274 (signal.go:82) RET     ,
0275 (signal.go:82) CALL    ,runtime.throwinit+0(SB)
0276 (signal.go:82) UNDEF   ,
0277 (signal.go:82) MOVB    $1,initdone·+0(SB)
0278 (signal.go:82) CALL    ,rand.init+0(SB)
0279 (signal.go:12) LEAQ    go.string."No more samples"+0(SB),BX
0280 (signal.go:12) LEAQ    (SP),BP
0281 (signal.go:12) MOVQ    BP,DI
0282 (signal.go:12) MOVQ    BX,SI
0283 (signal.go:12) MOVSQ   ,
0284 (signal.go:12) MOVSQ   ,
0285 (signal.go:12) CALL    ,errors.New+0(SB)
0286 (signal.go:12) MOVQ    16(SP),CX
0287 (signal.go:12) MOVQ    24(SP),AX
0288 (signal.go:12) MOVQ    CX,NoMoreSamples+0(SB)
0289 (signal.go:12) MOVQ    AX,NoMoreSamples+8(SB)
0290 (signal.go:82) CALL    ,init·1+0(SB)
0291 (signal.go:82) MOVB    $2,initdone·+0(SB)
0292 (signal.go:82) RET     ,

--- prog list "Signal.HasNext" ---
0293 (signal.go:1) TEXT    Signal.HasNext+0(SB),$16-24
0294 (signal.go:1) LOCALS  ,$0
0295 (signal.go:1) TYPE    .this+0(FP){"".Signal},$16
0296 (signal.go:1) TYPE    ~anon0+16(FP){bool},$1
0297 (signal.go:1) MOVQ    .this+8(FP),BX
0298 (signal.go:1) MOVQ    BX,(SP)
0299 (signal.go:1) MOVQ    .this+0(FP),BX
0300 (signal.go:1) MOVQ    32(BX),BX
0301 (signal.go:1) CALL    ,BX
0302 (signal.go:1) MOVBQZX 8(SP),BX
0303 (signal.go:1) MOVB    BX,~anon0+16(FP)
0304 (signal.go:1) RET     ,

--- prog list "Signal.Next" ---
0305 (signal.go:1) TEXT    Signal.Next+0(SB),$32-40
0306 (signal.go:1) LOCALS  ,$0
0307 (signal.go:1) TYPE    .this+0(FP){"".Signal},$16
0308 (signal.go:1) TYPE    ~anon0+16(FP){int64},$8
0309 (signal.go:1) TYPE    ~anon1+24(FP){error},$16
0310 (signal.go:1) MOVQ    .this+8(FP),BX
0311 (signal.go:1) MOVQ    BX,(SP)
0312 (signal.go:1) MOVQ    .this+0(FP),BX
0313 (signal.go:1) MOVQ    40(BX),BX
0314 (signal.go:1) CALL    ,BX
0315 (signal.go:1) MOVQ    8(SP),DX
0316 (signal.go:1) MOVQ    16(SP),CX
0317 (signal.go:1) MOVQ    24(SP),AX
0318 (signal.go:1) MOVQ    DX,~anon0+16(FP)
0319 (signal.go:1) MOVQ    CX,~anon1+24(FP)
0320 (signal.go:1) MOVQ    AX,~anon1+32(FP)
0321 (signal.go:1) RET     ,

--- prog list "(*RandSignal).HasNext" ---
0322 (signal.go:1) TEXT    (*RandSignal).HasNext+0(SB),2,$88-16
0323 (signal.go:1) LOCALS  ,$40
0324 (signal.go:1) TYPE    .this+0(FP){*"".RandSignal},$8
0325 (signal.go:1) TYPE    ~anon0+8(FP){bool},$1
0326 (signal.go:1) TYPE    r+-40(SP){"".RandSignal},$40
0327 (signal.go:1) MOVQ    .this+0(FP),BX
0328 (signal.go:1) MOVQ    $0,BP
0329 (signal.go:1) CMPQ    BX,BP
0330 (signal.go:1) JNE     ,351
0331 (signal.go:1) LEAQ    go.string."dspguide"+0(SB),BX
0332 (signal.go:1) LEAQ    (SP),BP
0333 (signal.go:1) MOVQ    BP,DI
0334 (signal.go:1) MOVQ    BX,SI
0335 (signal.go:1) MOVSQ   ,
0336 (signal.go:1) MOVSQ   ,
0337 (signal.go:1) LEAQ    go.string."RandSignal"+0(SB),BX
0338 (signal.go:1) LEAQ    16(SP),BP
0339 (signal.go:1) MOVQ    BP,DI
0340 (signal.go:1) MOVQ    BX,SI
0341 (signal.go:1) MOVSQ   ,
0342 (signal.go:1) MOVSQ   ,
0343 (signal.go:1) LEAQ    go.string."HasNext"+0(SB),BX
0344 (signal.go:1) LEAQ    32(SP),BP
0345 (signal.go:1) MOVQ    BP,DI
0346 (signal.go:1) MOVQ    BX,SI
0347 (signal.go:1) MOVSQ   ,
0348 (signal.go:1) MOVSQ   ,
0349 (signal.go:1) CALL    ,runtime.panicwrap+0(SB)
0350 (signal.go:1) UNDEF   ,
0351 (signal.go:1) MOVQ    .this+0(FP),SI
0352 (signal.go:1) LEAQ    r+-40(SP),BP
0353 (signal.go:1) MOVQ    BP,DI
0354 (signal.go:1) MOVQ    $5,CX
0355 (signal.go:1) REP     ,
0356 (signal.go:1) MOVSQ   ,
0357 (signal.go:1) MOVQ    r+-24(SP),BX
0358 (signal.go:1) CMPQ    BX,$0
0359 (signal.go:1) JLE     ,369
0360 (signal.go:1) JMP     ,363
0361 (signal.go:1) MOVQ    $1,AX
0362 (signal.go:1) JMP     ,368
0363 (signal.go:1) MOVQ    r+-16(SP),BX
0364 (signal.go:1) MOVQ    r+-24(SP),BP
0365 (signal.go:1) CMPQ    BX,BP
0366 (signal.go:1) JLT     ,361
0367 (signal.go:1) MOVQ    $0,AX
0368 (signal.go:1) JMP     ,370
0369 (signal.go:1) MOVQ    $1,AX
0370 (signal.go:1) MOVB    AX,~anon0+8(FP)
0371 (signal.go:1) RET     ,
