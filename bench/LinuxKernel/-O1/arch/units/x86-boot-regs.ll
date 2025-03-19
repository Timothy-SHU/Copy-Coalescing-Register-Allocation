; ModuleID = 'arch/x86/boot/regs.c'
source_filename = "arch/x86/boot/regs.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.biosregs = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: nounwind
define dso_local void @initregs(ptr inreg noundef %reg) #0 !dbg !8 {
entry:
  %reg.addr = alloca ptr, align 4
  store ptr %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load ptr, ptr %reg.addr, align 4, !dbg !106
  call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 44, i1 false), !dbg !106
  %1 = load ptr, ptr %reg.addr, align 4, !dbg !107
  %2 = getelementptr inbounds %struct.biosregs, ptr %1, i32 0, i32 0, !dbg !108
  %eflags = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 10, !dbg !108
  %3 = load i32, ptr %eflags, align 4, !dbg !109
  %or = or i32 %3, 1, !dbg !109
  store i32 %or, ptr %eflags, align 4, !dbg !109
  %call = call zeroext i16 @ds() #5, !dbg !110
  %4 = load ptr, ptr %reg.addr, align 4, !dbg !111
  %5 = getelementptr inbounds %struct.biosregs, ptr %4, i32 0, i32 0, !dbg !112
  %ds = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 19, !dbg !112
  store i16 %call, ptr %ds, align 2, !dbg !113
  %call1 = call zeroext i16 @ds() #5, !dbg !114
  %6 = load ptr, ptr %reg.addr, align 4, !dbg !115
  %7 = getelementptr inbounds %struct.biosregs, ptr %6, i32 0, i32 0, !dbg !116
  %es = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 18, !dbg !116
  store i16 %call1, ptr %es, align 4, !dbg !117
  %call2 = call zeroext i16 @fs() #5, !dbg !118
  %8 = load ptr, ptr %reg.addr, align 4, !dbg !119
  %9 = getelementptr inbounds %struct.biosregs, ptr %8, i32 0, i32 0, !dbg !120
  %fs = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 17, !dbg !120
  store i16 %call2, ptr %fs, align 2, !dbg !121
  %call3 = call zeroext i16 @gs() #5, !dbg !122
  %10 = load ptr, ptr %reg.addr, align 4, !dbg !123
  %11 = getelementptr inbounds %struct.biosregs, ptr %10, i32 0, i32 0, !dbg !124
  %gs = getelementptr inbounds %struct.anon.0, ptr %11, i32 0, i32 16, !dbg !124
  store i16 %call3, ptr %gs, align 4, !dbg !125
  ret void, !dbg !126
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @ds() #3 !dbg !127 {
entry:
  %seg = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %seg) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !131, metadata !DIExpression()), !dbg !133
  call void asm "movw %ds,$0", "=*rm,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %seg) #6, !dbg !134, !srcloc !135
  %0 = load i16, ptr %seg, align 2, !dbg !136
  call void @llvm.lifetime.end.p0(i64 2, ptr %seg) #6, !dbg !137
  ret i16 %0, !dbg !138
}

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @fs() #3 !dbg !139 {
entry:
  %seg = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %seg) #6, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !141, metadata !DIExpression()), !dbg !143
  call void asm sideeffect "movw %fs,$0", "=*rm,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %seg) #6, !dbg !144, !srcloc !145
  %0 = load i16, ptr %seg, align 2, !dbg !146
  call void @llvm.lifetime.end.p0(i64 2, ptr %seg) #6, !dbg !147
  ret i16 %0, !dbg !148
}

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @gs() #3 !dbg !149 {
entry:
  %seg = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %seg) #6, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !151, metadata !DIExpression()), !dbg !153
  call void asm sideeffect "movw %gs,$0", "=*rm,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %seg) #6, !dbg !154, !srcloc !155
  %0 = load i16, ptr %seg, align 2, !dbg !156
  call void @llvm.lifetime.end.p0(i64 2, ptr %seg) #6, !dbg !157
  ret i16 %0, !dbg !158
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.regs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/regs\22 -D KBUILD_BASENAME=\22regs\22 -D KBUILD_MODNAME=\22regs\22 -D __KBUILD_MODNAME=kmod_regs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/regs.ll arch/x86/boot/regs.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/boot/regs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a4fffc51282ab88bd1fc35475c37861")
!2 = !{i32 1, !"NumRegisterParameters", i32 3}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"override-stack-alignment", i32 4}
!7 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!8 = distinct !DISubprogram(name: "initregs", scope: !1, file: !1, line: 19, type: !9, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 32)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !13, line: 206, size: 352, elements: !14)
!13 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, scope: !12, file: !13, line: 207, baseType: !16, size: 352)
!16 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !12, file: !13, line: 207, size: 352, elements: !17)
!17 = !{!18, !37, !65}
!18 = !DIDerivedType(tag: DW_TAG_member, scope: !16, file: !13, line: 208, baseType: !19, size: 352)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !16, file: !13, line: 208, size: 352, elements: !20)
!20 = !{!21, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !19, file: !13, line: 209, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !25, line: 27, baseType: !26)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !19, file: !13, line: 210, baseType: !22, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !19, file: !13, line: 211, baseType: !22, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !19, file: !13, line: 212, baseType: !22, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !19, file: !13, line: 213, baseType: !22, size: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !19, file: !13, line: 214, baseType: !22, size: 32, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !19, file: !13, line: 215, baseType: !22, size: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !19, file: !13, line: 216, baseType: !22, size: 32, offset: 224)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !19, file: !13, line: 217, baseType: !22, size: 32, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !19, file: !13, line: 218, baseType: !22, size: 32, offset: 288)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !19, file: !13, line: 219, baseType: !22, size: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, scope: !16, file: !13, line: 221, baseType: !38, size: 352)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !16, file: !13, line: 221, size: 352, elements: !39)
!39 = !{!40, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !38, file: !13, line: 222, baseType: !41, size: 16)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !23, line: 19, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !25, line: 24, baseType: !43)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !38, file: !13, line: 222, baseType: !41, size: 16, offset: 16)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !38, file: !13, line: 223, baseType: !41, size: 16, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !38, file: !13, line: 223, baseType: !41, size: 16, offset: 48)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !38, file: !13, line: 224, baseType: !41, size: 16, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !38, file: !13, line: 224, baseType: !41, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !38, file: !13, line: 225, baseType: !41, size: 16, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !38, file: !13, line: 225, baseType: !41, size: 16, offset: 112)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !38, file: !13, line: 226, baseType: !41, size: 16, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !38, file: !13, line: 226, baseType: !41, size: 16, offset: 144)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !38, file: !13, line: 227, baseType: !41, size: 16, offset: 160)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !38, file: !13, line: 227, baseType: !41, size: 16, offset: 176)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !38, file: !13, line: 228, baseType: !41, size: 16, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !38, file: !13, line: 228, baseType: !41, size: 16, offset: 208)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !38, file: !13, line: 229, baseType: !41, size: 16, offset: 224)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !38, file: !13, line: 229, baseType: !41, size: 16, offset: 240)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !38, file: !13, line: 230, baseType: !41, size: 16, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !38, file: !13, line: 230, baseType: !41, size: 16, offset: 272)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !38, file: !13, line: 231, baseType: !41, size: 16, offset: 288)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !38, file: !13, line: 231, baseType: !41, size: 16, offset: 304)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !13, line: 232, baseType: !41, size: 16, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !38, file: !13, line: 232, baseType: !41, size: 16, offset: 336)
!65 = !DIDerivedType(tag: DW_TAG_member, scope: !16, file: !13, line: 234, baseType: !66, size: 256)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !16, file: !13, line: 234, size: 256, elements: !67)
!67 = !{!68, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !66, file: !13, line: 235, baseType: !69, size: 8)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !23, line: 17, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !25, line: 21, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !66, file: !13, line: 235, baseType: !69, size: 8, offset: 8)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !66, file: !13, line: 235, baseType: !69, size: 8, offset: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !66, file: !13, line: 235, baseType: !69, size: 8, offset: 24)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !66, file: !13, line: 236, baseType: !69, size: 8, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !66, file: !13, line: 236, baseType: !69, size: 8, offset: 40)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !66, file: !13, line: 236, baseType: !69, size: 8, offset: 48)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !66, file: !13, line: 236, baseType: !69, size: 8, offset: 56)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !66, file: !13, line: 237, baseType: !69, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !66, file: !13, line: 237, baseType: !69, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !66, file: !13, line: 237, baseType: !69, size: 8, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !66, file: !13, line: 237, baseType: !69, size: 8, offset: 88)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !66, file: !13, line: 238, baseType: !69, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !66, file: !13, line: 238, baseType: !69, size: 8, offset: 104)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !66, file: !13, line: 238, baseType: !69, size: 8, offset: 112)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !66, file: !13, line: 238, baseType: !69, size: 8, offset: 120)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !66, file: !13, line: 239, baseType: !69, size: 8, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !66, file: !13, line: 239, baseType: !69, size: 8, offset: 136)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !66, file: !13, line: 239, baseType: !69, size: 8, offset: 144)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !66, file: !13, line: 239, baseType: !69, size: 8, offset: 152)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !66, file: !13, line: 240, baseType: !69, size: 8, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !66, file: !13, line: 240, baseType: !69, size: 8, offset: 168)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !66, file: !13, line: 240, baseType: !69, size: 8, offset: 176)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !66, file: !13, line: 240, baseType: !69, size: 8, offset: 184)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !66, file: !13, line: 241, baseType: !69, size: 8, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !66, file: !13, line: 241, baseType: !69, size: 8, offset: 200)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !66, file: !13, line: 241, baseType: !69, size: 8, offset: 208)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !66, file: !13, line: 241, baseType: !69, size: 8, offset: 216)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !66, file: !13, line: 242, baseType: !69, size: 8, offset: 224)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !66, file: !13, line: 242, baseType: !69, size: 8, offset: 232)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !66, file: !13, line: 242, baseType: !69, size: 8, offset: 240)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !66, file: !13, line: 242, baseType: !69, size: 8, offset: 248)
!103 = !{!104}
!104 = !DILocalVariable(name: "reg", arg: 1, scope: !8, file: !1, line: 19, type: !11)
!105 = !DILocation(line: 19, column: 32, scope: !8)
!106 = !DILocation(line: 21, column: 2, scope: !8)
!107 = !DILocation(line: 22, column: 2, scope: !8)
!108 = !DILocation(line: 22, column: 7, scope: !8)
!109 = !DILocation(line: 22, column: 14, scope: !8)
!110 = !DILocation(line: 23, column: 12, scope: !8)
!111 = !DILocation(line: 23, column: 2, scope: !8)
!112 = !DILocation(line: 23, column: 7, scope: !8)
!113 = !DILocation(line: 23, column: 10, scope: !8)
!114 = !DILocation(line: 24, column: 12, scope: !8)
!115 = !DILocation(line: 24, column: 2, scope: !8)
!116 = !DILocation(line: 24, column: 7, scope: !8)
!117 = !DILocation(line: 24, column: 10, scope: !8)
!118 = !DILocation(line: 25, column: 12, scope: !8)
!119 = !DILocation(line: 25, column: 2, scope: !8)
!120 = !DILocation(line: 25, column: 7, scope: !8)
!121 = !DILocation(line: 25, column: 10, scope: !8)
!122 = !DILocation(line: 26, column: 12, scope: !8)
!123 = !DILocation(line: 26, column: 2, scope: !8)
!124 = !DILocation(line: 26, column: 7, scope: !8)
!125 = !DILocation(line: 26, column: 10, scope: !8)
!126 = !DILocation(line: 27, column: 1, scope: !8)
!127 = distinct !DISubprogram(name: "ds", scope: !13, file: !13, line: 47, type: !128, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{!41}
!130 = !{!131}
!131 = !DILocalVariable(name: "seg", scope: !127, file: !13, line: 49, type: !41)
!132 = !DILocation(line: 49, column: 2, scope: !127)
!133 = !DILocation(line: 49, column: 6, scope: !127)
!134 = !DILocation(line: 50, column: 2, scope: !127)
!135 = !{i64 112756}
!136 = !DILocation(line: 51, column: 9, scope: !127)
!137 = !DILocation(line: 52, column: 1, scope: !127)
!138 = !DILocation(line: 51, column: 2, scope: !127)
!139 = distinct !DISubprogram(name: "fs", scope: !13, file: !13, line: 58, type: !128, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !140)
!140 = !{!141}
!141 = !DILocalVariable(name: "seg", scope: !139, file: !13, line: 60, type: !41)
!142 = !DILocation(line: 60, column: 2, scope: !139)
!143 = !DILocation(line: 60, column: 6, scope: !139)
!144 = !DILocation(line: 61, column: 2, scope: !139)
!145 = !{i64 112941}
!146 = !DILocation(line: 62, column: 9, scope: !139)
!147 = !DILocation(line: 63, column: 1, scope: !139)
!148 = !DILocation(line: 62, column: 2, scope: !139)
!149 = distinct !DISubprogram(name: "gs", scope: !13, file: !13, line: 69, type: !128, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!150 = !{!151}
!151 = !DILocalVariable(name: "seg", scope: !149, file: !13, line: 71, type: !41)
!152 = !DILocation(line: 71, column: 2, scope: !149)
!153 = !DILocation(line: 71, column: 6, scope: !149)
!154 = !DILocation(line: 72, column: 2, scope: !149)
!155 = !{i64 113126}
!156 = !DILocation(line: 73, column: 9, scope: !149)
!157 = !DILocation(line: 74, column: 1, scope: !149)
!158 = !DILocation(line: 73, column: 2, scope: !149)
