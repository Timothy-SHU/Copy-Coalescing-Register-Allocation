; ModuleID = 'arch/x86/boot/compressed/idt_64.c'
source_filename = "arch/x86/boot/compressed/idt_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.desc_ptr = type <{ i16, i64 }>

@boot_idt = external hidden global [32 x %struct.gate_struct], align 16
@boot_idt_desc = external hidden global %struct.desc_ptr, align 1

; Function Attrs: noredzone nounwind
define hidden void @load_stage1_idt() #0 !dbg !27 {
entry:
  store i64 ptrtoint (ptr @boot_idt to i64), ptr getelementptr inbounds (%struct.desc_ptr, ptr @boot_idt_desc, i32 0, i32 1), align 1, !dbg !30
  call void @load_boot_idt(ptr noundef @boot_idt_desc) #5, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: noredzone nounwind
define internal void @load_boot_idt(ptr noundef %dtr) #0 !dbg !33 {
entry:
  %dtr.addr = alloca ptr, align 8
  store ptr %dtr, ptr %dtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dtr.addr, metadata !43, metadata !DIExpression()), !dbg !44
  %0 = load ptr, ptr %dtr.addr, align 8, !dbg !45
  call void asm sideeffect "lidt $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.desc_ptr) %0) #6, !dbg !46, !srcloc !47
  ret void, !dbg !48
}

; Function Attrs: noredzone nounwind
define hidden void @load_stage2_idt() #0 !dbg !49 {
entry:
  store i64 ptrtoint (ptr @boot_idt to i64), ptr getelementptr inbounds (%struct.desc_ptr, ptr @boot_idt_desc, i32 0, i32 1), align 1, !dbg !50
  call void @set_idt_entry(i32 noundef 14, ptr noundef @boot_page_fault) #5, !dbg !51
  call void @set_idt_entry(i32 noundef 2, ptr noundef @boot_nmi_trap) #5, !dbg !52
  call void @load_boot_idt(ptr noundef @boot_idt_desc) #5, !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noredzone nounwind
define internal void @set_idt_entry(i32 noundef %vector, ptr noundef %handler) #0 !dbg !55 {
entry:
  %vector.addr = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %address = alloca i64, align 8
  %entry1 = alloca %struct.gate_struct, align 1
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !61, metadata !DIExpression()), !dbg !81
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !62, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #6, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %address, metadata !63, metadata !DIExpression()), !dbg !84
  %0 = load ptr, ptr %handler.addr, align 8, !dbg !85
  %1 = ptrtoint ptr %0 to i64, !dbg !86
  store i64 %1, ptr %address, align 8, !dbg !84
  call void @llvm.lifetime.start.p0(i64 16, ptr %entry1) #6, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !64, metadata !DIExpression()), !dbg !88
  %call = call ptr @memset(ptr noundef %entry1, i32 noundef 0, i64 noundef 16) #5, !dbg !89
  %2 = load i64, ptr %address, align 8, !dbg !90
  %and = and i64 %2, 65535, !dbg !91
  %conv = trunc i64 %and to i16, !dbg !92
  %offset_low = getelementptr inbounds %struct.gate_struct, ptr %entry1, i32 0, i32 0, !dbg !93
  store i16 %conv, ptr %offset_low, align 1, !dbg !94
  %segment = getelementptr inbounds %struct.gate_struct, ptr %entry1, i32 0, i32 1, !dbg !95
  store i16 16, ptr %segment, align 1, !dbg !96
  %bits = getelementptr inbounds %struct.gate_struct, ptr %entry1, i32 0, i32 2, !dbg !97
  %bf.load = load i16, ptr %bits, align 1, !dbg !98
  %bf.clear = and i16 %bf.load, -7937, !dbg !98
  %bf.set = or i16 %bf.clear, 3840, !dbg !98
  store i16 %bf.set, ptr %bits, align 1, !dbg !98
  %bits2 = getelementptr inbounds %struct.gate_struct, ptr %entry1, i32 0, i32 2, !dbg !99
  %bf.load3 = load i16, ptr %bits2, align 1, !dbg !100
  %bf.clear4 = and i16 %bf.load3, 32767, !dbg !100
  %bf.set5 = or i16 %bf.clear4, -32768, !dbg !100
  store i16 %bf.set5, ptr %bits2, align 1, !dbg !100
  %3 = load i64, ptr %address, align 8, !dbg !101
  %shr = lshr i64 %3, 16, !dbg !102
  %and6 = and i64 %shr, 65535, !dbg !103
  %conv7 = trunc i64 %and6 to i16, !dbg !104
  %offset_middle = getelementptr inbounds %struct.gate_struct, ptr %entry1, i32 0, i32 3, !dbg !105
  store i16 %conv7, ptr %offset_middle, align 1, !dbg !106
  %4 = load i64, ptr %address, align 8, !dbg !107
  %shr8 = lshr i64 %4, 32, !dbg !108
  %conv9 = trunc i64 %shr8 to i32, !dbg !109
  %offset_high = getelementptr inbounds %struct.gate_struct, ptr %entry1, i32 0, i32 4, !dbg !110
  store i32 %conv9, ptr %offset_high, align 1, !dbg !111
  %5 = load i32, ptr %vector.addr, align 4, !dbg !112
  %idxprom = sext i32 %5 to i64, !dbg !113
  %arrayidx = getelementptr inbounds [32 x %struct.gate_struct], ptr @boot_idt, i64 0, i64 %idxprom, !dbg !113
  %call10 = call ptr @memcpy(ptr noundef %arrayidx, ptr noundef %entry1, i64 noundef 16) #5, !dbg !114
  call void @llvm.lifetime.end.p0(i64 16, ptr %entry1) #6, !dbg !115
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #6, !dbg !115
  ret void, !dbg !115
}

; Function Attrs: noredzone
declare hidden void @boot_page_fault() #1

; Function Attrs: noredzone
declare hidden void @boot_nmi_trap() #1

; Function Attrs: noredzone nounwind
define hidden void @cleanup_exception_handling() #0 !dbg !116 {
entry:
  call void @sev_es_shutdown_ghcb() #5, !dbg !117
  store i16 0, ptr @boot_idt_desc, align 1, !dbg !118
  store i64 0, ptr getelementptr inbounds (%struct.desc_ptr, ptr @boot_idt_desc, i32 0, i32 1), align 1, !dbg !119
  call void @load_boot_idt(ptr noundef @boot_idt_desc) #5, !dbg !120
  ret void, !dbg !121
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @sev_es_shutdown_ghcb() #2 !dbg !122 {
entry:
  ret void, !dbg !124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone
declare !dbg !125 hidden ptr @memset(ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: noredzone
declare !dbg !135 hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #2 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin noredzone "no-builtins" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.idt_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/idt_64\22 -D KBUILD_BASENAME=\22idt_64\22 -D KBUILD_MODNAME=\22idt_64\22 -D __KBUILD_MODNAME=kmod_idt_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/idt_64.ll arch/x86/boot/compressed/idt_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/boot/compressed/idt_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "89639aaba86194245e6dd47aa08a1007")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 40, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "GATE_INTERRUPT", value: 14)
!8 = !DIEnumerator(name: "GATE_TRAP", value: 15)
!9 = !DIEnumerator(name: "GATE_CALL", value: 12)
!10 = !DIEnumerator(name: "GATE_TASK", value: 5)
!11 = !{!12, !13, !18}
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !5)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 1, !"Code Model", i32 1}
!26 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!27 = distinct !DISubprogram(name: "load_stage1_idt", scope: !1, file: !1, line: 31, type: !28, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!28 = !DISubroutineType(types: !29)
!29 = !{null}
!30 = !DILocation(line: 33, column: 24, scope: !27)
!31 = !DILocation(line: 39, column: 2, scope: !27)
!32 = !DILocation(line: 40, column: 1, scope: !27)
!33 = distinct !DISubprogram(name: "load_boot_idt", scope: !1, file: !1, line: 25, type: !34, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_ptr", file: !4, line: 112, size: 80, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !38, file: !4, line: 113, baseType: !17, size: 16)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !38, file: !4, line: 114, baseType: !12, size: 64, offset: 16)
!42 = !{!43}
!43 = !DILocalVariable(name: "dtr", arg: 1, scope: !33, file: !1, line: 25, type: !36)
!44 = !DILocation(line: 25, column: 50, scope: !33)
!45 = !DILocation(line: 27, column: 32, scope: !33)
!46 = !DILocation(line: 27, column: 2, scope: !33)
!47 = !{i64 735}
!48 = !DILocation(line: 28, column: 1, scope: !33)
!49 = distinct !DISubprogram(name: "load_stage2_idt", scope: !1, file: !1, line: 59, type: !28, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!50 = !DILocation(line: 61, column: 24, scope: !49)
!51 = !DILocation(line: 63, column: 2, scope: !49)
!52 = !DILocation(line: 64, column: 2, scope: !49)
!53 = !DILocation(line: 77, column: 2, scope: !49)
!54 = !DILocation(line: 78, column: 1, scope: !49)
!55 = distinct !DISubprogram(name: "set_idt_entry", scope: !1, file: !1, line: 7, type: !56, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58, !59}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!60 = !{!61, !62, !63, !64}
!61 = !DILocalVariable(name: "vector", arg: 1, scope: !55, file: !1, line: 7, type: !58)
!62 = !DILocalVariable(name: "handler", arg: 2, scope: !55, file: !1, line: 7, type: !59)
!63 = !DILocalVariable(name: "address", scope: !55, file: !1, line: 9, type: !12)
!64 = !DILocalVariable(name: "entry", scope: !55, file: !1, line: 10, type: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "gate_desc", file: !4, line: 95, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gate_struct", file: !4, line: 84, size: 128, elements: !67)
!67 = !{!68, !69, !70, !78, !79, !80}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "offset_low", scope: !66, file: !4, line: 85, baseType: !13, size: 16)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !66, file: !4, line: 86, baseType: !13, size: 16, offset: 16)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !66, file: !4, line: 87, baseType: !71, size: 16, offset: 32)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idt_bits", file: !4, line: 69, size: 16, elements: !72)
!72 = !{!73, !74, !75, !76, !77}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ist", scope: !71, file: !4, line: 70, baseType: !13, size: 3, flags: DIFlagBitField, extraData: i64 0)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !71, file: !4, line: 71, baseType: !13, size: 5, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !71, file: !4, line: 72, baseType: !13, size: 5, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !71, file: !4, line: 73, baseType: !13, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !71, file: !4, line: 74, baseType: !13, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "offset_middle", scope: !66, file: !4, line: 88, baseType: !13, size: 16, offset: 48)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "offset_high", scope: !66, file: !4, line: 90, baseType: !18, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !66, file: !4, line: 91, baseType: !18, size: 32, offset: 96)
!81 = !DILocation(line: 7, column: 31, scope: !55)
!82 = !DILocation(line: 7, column: 46, scope: !55)
!83 = !DILocation(line: 9, column: 2, scope: !55)
!84 = !DILocation(line: 9, column: 16, scope: !55)
!85 = !DILocation(line: 9, column: 41, scope: !55)
!86 = !DILocation(line: 9, column: 26, scope: !55)
!87 = !DILocation(line: 10, column: 2, scope: !55)
!88 = !DILocation(line: 10, column: 12, scope: !55)
!89 = !DILocation(line: 12, column: 2, scope: !55)
!90 = !DILocation(line: 14, column: 30, scope: !55)
!91 = !DILocation(line: 14, column: 38, scope: !55)
!92 = !DILocation(line: 14, column: 24, scope: !55)
!93 = !DILocation(line: 14, column: 8, scope: !55)
!94 = !DILocation(line: 14, column: 22, scope: !55)
!95 = !DILocation(line: 15, column: 8, scope: !55)
!96 = !DILocation(line: 15, column: 22, scope: !55)
!97 = !DILocation(line: 16, column: 8, scope: !55)
!98 = !DILocation(line: 16, column: 22, scope: !55)
!99 = !DILocation(line: 17, column: 8, scope: !55)
!100 = !DILocation(line: 17, column: 22, scope: !55)
!101 = !DILocation(line: 18, column: 31, scope: !55)
!102 = !DILocation(line: 18, column: 39, scope: !55)
!103 = !DILocation(line: 18, column: 46, scope: !55)
!104 = !DILocation(line: 18, column: 24, scope: !55)
!105 = !DILocation(line: 18, column: 8, scope: !55)
!106 = !DILocation(line: 18, column: 22, scope: !55)
!107 = !DILocation(line: 19, column: 30, scope: !55)
!108 = !DILocation(line: 19, column: 38, scope: !55)
!109 = !DILocation(line: 19, column: 24, scope: !55)
!110 = !DILocation(line: 19, column: 8, scope: !55)
!111 = !DILocation(line: 19, column: 22, scope: !55)
!112 = !DILocation(line: 21, column: 19, scope: !55)
!113 = !DILocation(line: 21, column: 10, scope: !55)
!114 = !DILocation(line: 21, column: 2, scope: !55)
!115 = !DILocation(line: 22, column: 1, scope: !55)
!116 = distinct !DISubprogram(name: "cleanup_exception_handling", scope: !1, file: !1, line: 80, type: !28, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!117 = !DILocation(line: 86, column: 2, scope: !116)
!118 = !DILocation(line: 89, column: 24, scope: !116)
!119 = !DILocation(line: 90, column: 24, scope: !116)
!120 = !DILocation(line: 91, column: 2, scope: !116)
!121 = !DILocation(line: 92, column: 1, scope: !116)
!122 = distinct !DISubprogram(name: "sev_es_shutdown_ghcb", scope: !123, file: !123, line: 156, type: !28, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!123 = !DIFile(filename: "arch/x86/boot/compressed/misc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31b219c11b56e2bcf8daba9cc959bca7")
!124 = !DILocation(line: 156, column: 49, scope: !122)
!125 = !DISubprogram(name: "memset", scope: !126, file: !126, line: 22, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!126 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2915e714ca16a16b791287599ade0ea7")
!127 = !DISubroutineType(types: !128)
!128 = !{!129, !129, !58, !130}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 61, baseType: !132)
!131 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !133, line: 72, baseType: !134)
!133 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !133, line: 16, baseType: !12)
!135 = !DISubprogram(name: "memcpy", scope: !126, file: !126, line: 18, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubroutineType(types: !137)
!137 = !{!129, !129, !138, !130}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
