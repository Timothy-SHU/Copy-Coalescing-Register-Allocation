; ModuleID = 'arch/x86/realmode/rm/regs.c'
source_filename = "arch/x86/realmode/rm/regs.c"
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
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load ptr, ptr %reg.addr, align 4, !dbg !107
  call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 44, i1 false), !dbg !107
  %1 = load ptr, ptr %reg.addr, align 4, !dbg !108
  %2 = getelementptr inbounds %struct.biosregs, ptr %1, i32 0, i32 0, !dbg !109
  %eflags = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 10, !dbg !109
  %3 = load i32, ptr %eflags, align 4, !dbg !110
  %or = or i32 %3, 1, !dbg !110
  store i32 %or, ptr %eflags, align 4, !dbg !110
  %call = call zeroext i16 @ds() #5, !dbg !111
  %4 = load ptr, ptr %reg.addr, align 4, !dbg !112
  %5 = getelementptr inbounds %struct.biosregs, ptr %4, i32 0, i32 0, !dbg !113
  %ds = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 19, !dbg !113
  store i16 %call, ptr %ds, align 2, !dbg !114
  %call1 = call zeroext i16 @ds() #5, !dbg !115
  %6 = load ptr, ptr %reg.addr, align 4, !dbg !116
  %7 = getelementptr inbounds %struct.biosregs, ptr %6, i32 0, i32 0, !dbg !117
  %es = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 18, !dbg !117
  store i16 %call1, ptr %es, align 4, !dbg !118
  %call2 = call zeroext i16 @fs() #5, !dbg !119
  %8 = load ptr, ptr %reg.addr, align 4, !dbg !120
  %9 = getelementptr inbounds %struct.biosregs, ptr %8, i32 0, i32 0, !dbg !121
  %fs = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 17, !dbg !121
  store i16 %call2, ptr %fs, align 2, !dbg !122
  %call3 = call zeroext i16 @gs() #5, !dbg !123
  %10 = load ptr, ptr %reg.addr, align 4, !dbg !124
  %11 = getelementptr inbounds %struct.biosregs, ptr %10, i32 0, i32 0, !dbg !125
  %gs = getelementptr inbounds %struct.anon.0, ptr %11, i32 0, i32 16, !dbg !125
  store i16 %call3, ptr %gs, align 4, !dbg !126
  ret void, !dbg !127
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @ds() #3 !dbg !128 {
entry:
  %seg = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %seg) #6, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !132, metadata !DIExpression()), !dbg !134
  call void asm "movw %ds,$0", "=*rm,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %seg) #6, !dbg !135, !srcloc !136
  %0 = load i16, ptr %seg, align 2, !dbg !137
  call void @llvm.lifetime.end.p0(i64 2, ptr %seg) #6, !dbg !138
  ret i16 %0, !dbg !139
}

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @fs() #3 !dbg !140 {
entry:
  %seg = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %seg) #6, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !142, metadata !DIExpression()), !dbg !144
  call void asm sideeffect "movw %fs,$0", "=*rm,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %seg) #6, !dbg !145, !srcloc !146
  %0 = load i16, ptr %seg, align 2, !dbg !147
  call void @llvm.lifetime.end.p0(i64 2, ptr %seg) #6, !dbg !148
  ret i16 %0, !dbg !149
}

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @gs() #3 !dbg !150 {
entry:
  %seg = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %seg) #6, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !152, metadata !DIExpression()), !dbg !154
  call void asm sideeffect "movw %gs,$0", "=*rm,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %seg) #6, !dbg !155, !srcloc !156
  %0 = load i16, ptr %seg, align 2, !dbg !157
  call void @llvm.lifetime.end.p0(i64 2, ptr %seg) #6, !dbg !158
  ret i16 %0, !dbg !159
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

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/realmode/rm/.regs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -D _WAKEUP -I ./arch/x86/boot -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/realmode/rm/regs\22 -D KBUILD_BASENAME=\22regs\22 -D KBUILD_MODNAME=\22regs\22 -D __KBUILD_MODNAME=kmod_regs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/realmode/rm/regs.ll arch/x86/realmode/rm/regs.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/realmode/rm/regs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6cb90764af2c3f88fe3de53a826f106")
!2 = !{i32 1, !"NumRegisterParameters", i32 3}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"override-stack-alignment", i32 4}
!7 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!8 = distinct !DISubprogram(name: "initregs", scope: !9, file: !9, line: 19, type: !10, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!9 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/regs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a4fffc51282ab88bd1fc35475c37861")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "biosregs", file: !14, line: 206, size: 352, elements: !15)
!14 = !DIFile(filename: "arch/x86/realmode/rm/../../boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, scope: !13, file: !14, line: 207, baseType: !17, size: 352)
!17 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !13, file: !14, line: 207, size: 352, elements: !18)
!18 = !{!19, !38, !66}
!19 = !DIDerivedType(tag: DW_TAG_member, scope: !17, file: !14, line: 208, baseType: !20, size: 352)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !14, line: 208, size: 352, elements: !21)
!21 = !{!22, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "edi", scope: !20, file: !14, line: 209, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !24, line: 21, baseType: !25)
!24 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !26, line: 27, baseType: !27)
!26 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "esi", scope: !20, file: !14, line: 210, baseType: !23, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ebp", scope: !20, file: !14, line: 211, baseType: !23, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_esp", scope: !20, file: !14, line: 212, baseType: !23, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !20, file: !14, line: 213, baseType: !23, size: 32, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !20, file: !14, line: 214, baseType: !23, size: 32, offset: 160)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !20, file: !14, line: 215, baseType: !23, size: 32, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !20, file: !14, line: 216, baseType: !23, size: 32, offset: 224)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_fsgs", scope: !20, file: !14, line: 217, baseType: !23, size: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_dses", scope: !20, file: !14, line: 218, baseType: !23, size: 32, offset: 288)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "eflags", scope: !20, file: !14, line: 219, baseType: !23, size: 32, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, scope: !17, file: !14, line: 221, baseType: !39, size: 352)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !14, line: 221, size: 352, elements: !40)
!40 = !{!41, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !39, file: !14, line: 222, baseType: !42, size: 16)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !24, line: 19, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !26, line: 24, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "hdi", scope: !39, file: !14, line: 222, baseType: !42, size: 16, offset: 16)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !39, file: !14, line: 223, baseType: !42, size: 16, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "hsi", scope: !39, file: !14, line: 223, baseType: !42, size: 16, offset: 48)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !39, file: !14, line: 224, baseType: !42, size: 16, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "hbp", scope: !39, file: !14, line: 224, baseType: !42, size: 16, offset: 80)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_sp", scope: !39, file: !14, line: 225, baseType: !42, size: 16, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_hsp", scope: !39, file: !14, line: 225, baseType: !42, size: 16, offset: 112)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !39, file: !14, line: 226, baseType: !42, size: 16, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "hbx", scope: !39, file: !14, line: 226, baseType: !42, size: 16, offset: 144)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !39, file: !14, line: 227, baseType: !42, size: 16, offset: 160)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "hdx", scope: !39, file: !14, line: 227, baseType: !42, size: 16, offset: 176)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !39, file: !14, line: 228, baseType: !42, size: 16, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "hcx", scope: !39, file: !14, line: 228, baseType: !42, size: 16, offset: 208)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !39, file: !14, line: 229, baseType: !42, size: 16, offset: 224)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "hax", scope: !39, file: !14, line: 229, baseType: !42, size: 16, offset: 240)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !39, file: !14, line: 230, baseType: !42, size: 16, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !39, file: !14, line: 230, baseType: !42, size: 16, offset: 272)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !39, file: !14, line: 231, baseType: !42, size: 16, offset: 288)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !39, file: !14, line: 231, baseType: !42, size: 16, offset: 304)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !14, line: 232, baseType: !42, size: 16, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "hflags", scope: !39, file: !14, line: 232, baseType: !42, size: 16, offset: 336)
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !17, file: !14, line: 234, baseType: !67, size: 256)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !14, line: 234, size: 256, elements: !68)
!68 = !{!69, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "dil", scope: !67, file: !14, line: 235, baseType: !70, size: 8)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !24, line: 17, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !26, line: 21, baseType: !72)
!72 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "dih", scope: !67, file: !14, line: 235, baseType: !70, size: 8, offset: 8)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "edi2", scope: !67, file: !14, line: 235, baseType: !70, size: 8, offset: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "edi3", scope: !67, file: !14, line: 235, baseType: !70, size: 8, offset: 24)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "sil", scope: !67, file: !14, line: 236, baseType: !70, size: 8, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "sih", scope: !67, file: !14, line: 236, baseType: !70, size: 8, offset: 40)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "esi2", scope: !67, file: !14, line: 236, baseType: !70, size: 8, offset: 48)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "esi3", scope: !67, file: !14, line: 236, baseType: !70, size: 8, offset: 56)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !67, file: !14, line: 237, baseType: !70, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "bph", scope: !67, file: !14, line: 237, baseType: !70, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ebp2", scope: !67, file: !14, line: 237, baseType: !70, size: 8, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ebp3", scope: !67, file: !14, line: 237, baseType: !70, size: 8, offset: 88)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_spl", scope: !67, file: !14, line: 238, baseType: !70, size: 8, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_sph", scope: !67, file: !14, line: 238, baseType: !70, size: 8, offset: 104)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_esp2", scope: !67, file: !14, line: 238, baseType: !70, size: 8, offset: 112)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_esp3", scope: !67, file: !14, line: 238, baseType: !70, size: 8, offset: 120)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "bl", scope: !67, file: !14, line: 239, baseType: !70, size: 8, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !67, file: !14, line: 239, baseType: !70, size: 8, offset: 136)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ebx2", scope: !67, file: !14, line: 239, baseType: !70, size: 8, offset: 144)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ebx3", scope: !67, file: !14, line: 239, baseType: !70, size: 8, offset: 152)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !67, file: !14, line: 240, baseType: !70, size: 8, offset: 160)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "dh", scope: !67, file: !14, line: 240, baseType: !70, size: 8, offset: 168)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "edx2", scope: !67, file: !14, line: 240, baseType: !70, size: 8, offset: 176)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "edx3", scope: !67, file: !14, line: 240, baseType: !70, size: 8, offset: 184)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !67, file: !14, line: 241, baseType: !70, size: 8, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !67, file: !14, line: 241, baseType: !70, size: 8, offset: 200)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ecx2", scope: !67, file: !14, line: 241, baseType: !70, size: 8, offset: 208)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ecx3", scope: !67, file: !14, line: 241, baseType: !70, size: 8, offset: 216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "al", scope: !67, file: !14, line: 242, baseType: !70, size: 8, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ah", scope: !67, file: !14, line: 242, baseType: !70, size: 8, offset: 232)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "eax2", scope: !67, file: !14, line: 242, baseType: !70, size: 8, offset: 240)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "eax3", scope: !67, file: !14, line: 242, baseType: !70, size: 8, offset: 248)
!104 = !{!105}
!105 = !DILocalVariable(name: "reg", arg: 1, scope: !8, file: !9, line: 19, type: !12)
!106 = !DILocation(line: 19, column: 32, scope: !8)
!107 = !DILocation(line: 21, column: 2, scope: !8)
!108 = !DILocation(line: 22, column: 2, scope: !8)
!109 = !DILocation(line: 22, column: 7, scope: !8)
!110 = !DILocation(line: 22, column: 14, scope: !8)
!111 = !DILocation(line: 23, column: 12, scope: !8)
!112 = !DILocation(line: 23, column: 2, scope: !8)
!113 = !DILocation(line: 23, column: 7, scope: !8)
!114 = !DILocation(line: 23, column: 10, scope: !8)
!115 = !DILocation(line: 24, column: 12, scope: !8)
!116 = !DILocation(line: 24, column: 2, scope: !8)
!117 = !DILocation(line: 24, column: 7, scope: !8)
!118 = !DILocation(line: 24, column: 10, scope: !8)
!119 = !DILocation(line: 25, column: 12, scope: !8)
!120 = !DILocation(line: 25, column: 2, scope: !8)
!121 = !DILocation(line: 25, column: 7, scope: !8)
!122 = !DILocation(line: 25, column: 10, scope: !8)
!123 = !DILocation(line: 26, column: 12, scope: !8)
!124 = !DILocation(line: 26, column: 2, scope: !8)
!125 = !DILocation(line: 26, column: 7, scope: !8)
!126 = !DILocation(line: 26, column: 10, scope: !8)
!127 = !DILocation(line: 27, column: 1, scope: !8)
!128 = distinct !DISubprogram(name: "ds", scope: !14, file: !14, line: 47, type: !129, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{!42}
!131 = !{!132}
!132 = !DILocalVariable(name: "seg", scope: !128, file: !14, line: 49, type: !42)
!133 = !DILocation(line: 49, column: 2, scope: !128)
!134 = !DILocation(line: 49, column: 6, scope: !128)
!135 = !DILocation(line: 50, column: 2, scope: !128)
!136 = !{i64 112811}
!137 = !DILocation(line: 51, column: 9, scope: !128)
!138 = !DILocation(line: 52, column: 1, scope: !128)
!139 = !DILocation(line: 51, column: 2, scope: !128)
!140 = distinct !DISubprogram(name: "fs", scope: !14, file: !14, line: 58, type: !129, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!141 = !{!142}
!142 = !DILocalVariable(name: "seg", scope: !140, file: !14, line: 60, type: !42)
!143 = !DILocation(line: 60, column: 2, scope: !140)
!144 = !DILocation(line: 60, column: 6, scope: !140)
!145 = !DILocation(line: 61, column: 2, scope: !140)
!146 = !{i64 112996}
!147 = !DILocation(line: 62, column: 9, scope: !140)
!148 = !DILocation(line: 63, column: 1, scope: !140)
!149 = !DILocation(line: 62, column: 2, scope: !140)
!150 = distinct !DISubprogram(name: "gs", scope: !14, file: !14, line: 69, type: !129, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!151 = !{!152}
!152 = !DILocalVariable(name: "seg", scope: !150, file: !14, line: 71, type: !42)
!153 = !DILocation(line: 71, column: 2, scope: !150)
!154 = !DILocation(line: 71, column: 6, scope: !150)
!155 = !DILocation(line: 72, column: 2, scope: !150)
!156 = !{i64 113181}
!157 = !DILocation(line: 73, column: 9, scope: !150)
!158 = !DILocation(line: 74, column: 1, scope: !150)
!159 = !DILocation(line: 73, column: 2, scope: !150)
