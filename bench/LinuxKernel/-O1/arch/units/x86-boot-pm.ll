; ModuleID = 'arch/x86/boot/pm.c'
source_filename = "arch/x86/boot/pm.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type { i64, i64, i32 }
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon, %union.anon.5, i8, i8 }>
%union.anon = type { %struct.anon }
%struct.anon = type { i16, i16, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i16, i32, i64 }
%struct.port_io_ops = type { ptr, ptr, ptr }
%struct.gdt_ptr = type <{ i16, i32 }>

@.str = private unnamed_addr constant [44 x i8] c"A20 gate not responding, unable to boot...\0A\00", align 1, !dbg !0
@boot_params = external dso_local global %struct.boot_params, align 1
@pio_ops = external dso_local global %struct.port_io_ops, align 4
@setup_idt.null_idt = internal constant %struct.gdt_ptr zeroinitializer, align 1, !dbg !7
@setup_gdt.boot_gdt = internal constant [5 x i64] [i64 0, i64 0, i64 58435744481476607, i64 58426948388454399, i64 150633361440871], align 16, !dbg !20
@setup_gdt.gdt = internal global %struct.gdt_ptr zeroinitializer, align 1, !dbg !30

; Function Attrs: noreturn nounwind
define dso_local void @go_to_protected_mode() #0 !dbg !46 {
entry:
  call void @realmode_switch_hook() #7, !dbg !47
  %call = call i32 @enable_a20() #7, !dbg !48
  %tobool = icmp ne i32 %call, 0, !dbg !48
  br i1 %tobool, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  call void @puts(ptr inreg noundef @.str) #7, !dbg !51
  call void @die() #8, !dbg !53
  unreachable, !dbg !53

if.end:                                           ; preds = %entry
  call void @reset_coprocessor() #7, !dbg !54
  call void @mask_all_interrupts() #7, !dbg !55
  call void @setup_idt() #7, !dbg !56
  call void @setup_gdt() #7, !dbg !57
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 16), align 1, !dbg !58
  %call1 = call zeroext i16 @ds() #7, !dbg !59
  %conv = zext i16 %call1 to i32, !dbg !59
  %shl = shl i32 %conv, 4, !dbg !60
  %add = add i32 ptrtoint (ptr @boot_params to i32), %shl, !dbg !61
  call void @protected_mode_jump(i32 inreg noundef %0, i32 inreg noundef %add) #8, !dbg !62
  unreachable, !dbg !62
}

; Function Attrs: nounwind
define internal void @realmode_switch_hook() #1 !dbg !63 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 10), align 1, !dbg !64
  %tobool = icmp ne i32 %0, 0, !dbg !66
  br i1 %tobool, label %if.then, label %if.else, !dbg !67

if.then:                                          ; preds = %entry
  call void asm sideeffect "lcallw *$0", "*m,~{eax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 10)) #9, !dbg !68, !srcloc !70
  br label %if.end, !dbg !71

if.else:                                          ; preds = %entry
  call void asm sideeffect "cli", "~{dirflag},~{fpsr},~{flags}"() #9, !dbg !72, !srcloc !74
  %1 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !75
  call void %1(i8 inreg noundef zeroext -128, i16 inreg noundef zeroext 112) #7, !dbg !75
  call void @io_delay() #7, !dbg !76
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !77
}

declare !dbg !78 dso_local i32 @enable_a20() #2

declare !dbg !83 dso_local void @puts(ptr inreg noundef) #2

; Function Attrs: noreturn
declare !dbg !88 dso_local void @die() #3

; Function Attrs: nounwind
define internal void @reset_coprocessor() #1 !dbg !89 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !90
  call void %0(i8 inreg noundef zeroext 0, i16 inreg noundef zeroext 240) #7, !dbg !90
  call void @io_delay() #7, !dbg !91
  %1 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !92
  call void %1(i8 inreg noundef zeroext 0, i16 inreg noundef zeroext 241) #7, !dbg !92
  call void @io_delay() #7, !dbg !93
  ret void, !dbg !94
}

; Function Attrs: nounwind
define internal void @mask_all_interrupts() #1 !dbg !95 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !96
  call void %0(i8 inreg noundef zeroext -1, i16 inreg noundef zeroext 161) #7, !dbg !96
  call void @io_delay() #7, !dbg !97
  %1 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !98
  call void %1(i8 inreg noundef zeroext -5, i16 inreg noundef zeroext 33) #7, !dbg !98
  call void @io_delay() #7, !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nounwind
define internal void @setup_idt() #1 !dbg !9 {
entry:
  call void asm sideeffect "lidtl $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.gdt_ptr) @setup_idt.null_idt) #9, !dbg !101, !srcloc !102
  ret void, !dbg !103
}

; Function Attrs: nounwind
define internal void @setup_gdt() #1 !dbg !22 {
entry:
  store i16 39, ptr @setup_gdt.gdt, align 1, !dbg !104
  %call = call zeroext i16 @ds() #7, !dbg !105
  %conv = zext i16 %call to i32, !dbg !105
  %shl = shl i32 %conv, 4, !dbg !106
  %add = add i32 ptrtoint (ptr @setup_gdt.boot_gdt to i32), %shl, !dbg !107
  store i32 %add, ptr getelementptr inbounds (%struct.gdt_ptr, ptr @setup_gdt.gdt, i32 0, i32 1), align 1, !dbg !108
  call void asm sideeffect "lgdtl $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.gdt_ptr) @setup_gdt.gdt) #9, !dbg !109, !srcloc !110
  ret void, !dbg !111
}

; Function Attrs: noreturn
declare !dbg !112 dso_local void @protected_mode_jump(i32 inreg noundef, i32 inreg noundef) #3

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @ds() #4 !dbg !115 {
entry:
  %seg = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %seg) #9, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !119, metadata !DIExpression()), !dbg !121
  call void asm "movw %ds,$0", "=*rm,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %seg) #9, !dbg !122, !srcloc !123
  %0 = load i16, ptr %seg, align 2, !dbg !124
  call void @llvm.lifetime.end.p0(i64 2, ptr %seg) #9, !dbg !125
  ret i16 %0, !dbg !126
}

; Function Attrs: inlinehint nounwind
define internal void @io_delay() #4 !dbg !127 {
entry:
  %DELAY_PORT = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr %DELAY_PORT) #9, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %DELAY_PORT, metadata !129, metadata !DIExpression()), !dbg !132
  store i16 128, ptr %DELAY_PORT, align 2, !dbg !132
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 4, !dbg !133
  call void %0(i8 inreg noundef zeroext 0, i16 inreg noundef zeroext 128) #7, !dbg !133
  call void @llvm.lifetime.end.p0(i64 2, ptr %DELAY_PORT) #9, !dbg !134
  ret void, !dbg !134
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { noreturn nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #2 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #3 = { noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin "no-builtins" }
attributes #8 = { nobuiltin noreturn "no-builtins" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/pm.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3cc567b243986a7c1de1d949342252b6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 44)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "null_idt", scope: !9, file: !2, line: 95, type: !39, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "setup_idt", scope: !2, file: !2, line: 93, type: !10, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.pm.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/pm\22 -D KBUILD_BASENAME=\22pm\22 -D KBUILD_MODNAME=\22pm\22 -D __KBUILD_MODNAME=kmod_pm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/pm.ll arch/x86/boot/pm.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !13, globals: !19, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!0, !7, !20, !30}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "boot_gdt", scope: !22, file: !2, line: 68, type: !23, isLocal: true, isDefinition: true, align: 128)
!22 = distinct !DISubprogram(name: "setup_gdt", scope: !2, file: !2, line: 64, type: !10, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 320, elements: !28)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !27)
!27 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!28 = !{!29}
!29 = !DISubrange(count: 5)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "gdt", scope: !22, file: !2, line: 82, type: !32, isLocal: true, isDefinition: true)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gdt_ptr", file: !2, line: 59, size: 48, elements: !33)
!33 = !{!34, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !32, file: !2, line: 60, baseType: !35, size: 16)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !37)
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !32, file: !2, line: 61, baseType: !14, size: 32, offset: 16)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!40 = !{i32 1, !"NumRegisterParameters", i32 3}
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 1, !"override-stack-alignment", i32 4}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = distinct !DISubprogram(name: "go_to_protected_mode", scope: !2, file: !2, line: 102, type: !10, scopeLine: 103, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!47 = !DILocation(line: 105, column: 2, scope: !46)
!48 = !DILocation(line: 108, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !2, line: 108, column: 6)
!50 = !DILocation(line: 108, column: 6, scope: !46)
!51 = !DILocation(line: 109, column: 3, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !2, line: 108, column: 20)
!53 = !DILocation(line: 110, column: 3, scope: !52)
!54 = !DILocation(line: 114, column: 2, scope: !46)
!55 = !DILocation(line: 117, column: 2, scope: !46)
!56 = !DILocation(line: 120, column: 2, scope: !46)
!57 = !DILocation(line: 121, column: 2, scope: !46)
!58 = !DILocation(line: 122, column: 38, scope: !46)
!59 = !DILocation(line: 123, column: 29, scope: !46)
!60 = !DILocation(line: 123, column: 34, scope: !46)
!61 = !DILocation(line: 123, column: 26, scope: !46)
!62 = !DILocation(line: 122, column: 2, scope: !46)
!63 = distinct !DISubprogram(name: "realmode_switch_hook", scope: !2, file: !2, line: 20, type: !10, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!64 = !DILocation(line: 22, column: 22, scope: !65)
!65 = distinct !DILexicalBlock(scope: !63, file: !2, line: 22, column: 6)
!66 = !DILocation(line: 22, column: 6, scope: !65)
!67 = !DILocation(line: 22, column: 6, scope: !63)
!68 = !DILocation(line: 23, column: 3, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !2, line: 22, column: 38)
!70 = !{i64 599}
!71 = !DILocation(line: 26, column: 2, scope: !69)
!72 = !DILocation(line: 27, column: 3, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !2, line: 26, column: 9)
!74 = !{i64 725}
!75 = !DILocation(line: 28, column: 3, scope: !73)
!76 = !DILocation(line: 29, column: 3, scope: !73)
!77 = !DILocation(line: 31, column: 1, scope: !63)
!78 = !DISubprogram(name: "enable_a20", scope: !79, file: !79, line: 200, type: !80, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!79 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!80 = !DISubroutineType(types: !81)
!81 = !{!82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DISubprogram(name: "puts", scope: !79, file: !79, line: 314, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!88 = !DISubprogram(name: "die", scope: !79, file: !79, line: 284, type: !10, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!89 = distinct !DISubprogram(name: "reset_coprocessor", scope: !2, file: !2, line: 47, type: !10, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!90 = !DILocation(line: 49, column: 2, scope: !89)
!91 = !DILocation(line: 50, column: 2, scope: !89)
!92 = !DILocation(line: 51, column: 2, scope: !89)
!93 = !DILocation(line: 52, column: 2, scope: !89)
!94 = !DILocation(line: 53, column: 1, scope: !89)
!95 = distinct !DISubprogram(name: "mask_all_interrupts", scope: !2, file: !2, line: 36, type: !10, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!96 = !DILocation(line: 38, column: 2, scope: !95)
!97 = !DILocation(line: 39, column: 2, scope: !95)
!98 = !DILocation(line: 40, column: 2, scope: !95)
!99 = !DILocation(line: 41, column: 2, scope: !95)
!100 = !DILocation(line: 42, column: 1, scope: !95)
!101 = !DILocation(line: 96, column: 2, scope: !9)
!102 = !{i64 2386}
!103 = !DILocation(line: 97, column: 1, scope: !9)
!104 = !DILocation(line: 84, column: 10, scope: !22)
!105 = !DILocation(line: 85, column: 30, scope: !22)
!106 = !DILocation(line: 85, column: 35, scope: !22)
!107 = !DILocation(line: 85, column: 27, scope: !22)
!108 = !DILocation(line: 85, column: 10, scope: !22)
!109 = !DILocation(line: 87, column: 2, scope: !22)
!110 = !{i64 2239}
!111 = !DILocation(line: 88, column: 1, scope: !22)
!112 = !DISubprogram(name: "protected_mode_jump", scope: !79, file: !79, line: 294, type: !113, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !14, !14}
!115 = distinct !DISubprogram(name: "ds", scope: !79, file: !79, line: 47, type: !116, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!35}
!118 = !{!119}
!119 = !DILocalVariable(name: "seg", scope: !115, file: !79, line: 49, type: !35)
!120 = !DILocation(line: 49, column: 2, scope: !115)
!121 = !DILocation(line: 49, column: 6, scope: !115)
!122 = !DILocation(line: 50, column: 2, scope: !115)
!123 = !{i64 115035}
!124 = !DILocation(line: 51, column: 9, scope: !115)
!125 = !DILocation(line: 52, column: 1, scope: !115)
!126 = !DILocation(line: 51, column: 2, scope: !115)
!127 = distinct !DISubprogram(name: "io_delay", scope: !79, file: !79, line: 39, type: !10, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !128)
!128 = !{!129}
!129 = !DILocalVariable(name: "DELAY_PORT", scope: !127, file: !79, line: 41, type: !130)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!131 = !DILocation(line: 41, column: 2, scope: !127)
!132 = !DILocation(line: 41, column: 12, scope: !127)
!133 = !DILocation(line: 42, column: 2, scope: !127)
!134 = !DILocation(line: 43, column: 1, scope: !127)
