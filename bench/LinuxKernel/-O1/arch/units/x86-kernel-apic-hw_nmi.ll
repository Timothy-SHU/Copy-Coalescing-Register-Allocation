; ModuleID = 'arch/x86/kernel/apic/hw_nmi.c'
source_filename = "arch/x86/kernel/apic/hw_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init..kmod_hw_nmi__316_60_register_nmi_cpu_backtrace_handler\22, \22a\22\09\09"
module asm "__initcall__kmod_hw_nmi__316_60_register_nmi_cpu_backtrace_handlerearly:\09\09\09"
module asm ".long\09__initstub__kmod_hw_nmi__316_60_register_nmi_cpu_backtrace_handlerearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }
%struct.nmiaction = type { %struct.list_head, ptr, i64, i64, ptr }
%struct.list_head = type { ptr, ptr }

@_kbl_addr_nmi_cpu_backtrace_handler = internal global i64 ptrtoint (ptr @nmi_cpu_backtrace_handler to i64), section "_kprobe_blacklist", align 8, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_hw_nmi__316_60_register_nmi_cpu_backtrace_handlerearly317 = internal global ptr @__initstub__kmod_hw_nmi__316_60_register_nmi_cpu_backtrace_handlerearly, section ".discard.addressable", align 8, !dbg !18
@__apic_send_IPI_mask.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_mask211 = internal global ptr @__SCK__apic_call_send_IPI_mask, section ".discard.addressable", align 8, !dbg !20
@__SCK__apic_call_send_IPI_mask = external dso_local global %struct.static_call_key, align 8
@register_nmi_cpu_backtrace_handler.nmi_cpu_backtrace_handler_na = internal global %struct.nmiaction { %struct.list_head { ptr @register_nmi_cpu_backtrace_handler.nmi_cpu_backtrace_handler_na, ptr @register_nmi_cpu_backtrace_handler.nmi_cpu_backtrace_handler_na }, ptr @nmi_cpu_backtrace_handler, i64 0, i64 0, ptr @.str }, align 8, !dbg !45
@.str = private unnamed_addr constant [8 x i8] c"arch_bt\00", align 1, !dbg !39
@llvm.compiler.used = appending global [3 x ptr] [ptr @_kbl_addr_nmi_cpu_backtrace_handler, ptr @__UNIQUE_ID___addressable___initstub__kmod_hw_nmi__316_60_register_nmi_cpu_backtrace_handlerearly317, ptr @__apic_send_IPI_mask.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_mask211], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_trigger_cpumask_backtrace(ptr noundef %mask, i32 noundef %exclude_cpu) #0 align 16 !dbg !138 {
entry:
  %mask.addr = alloca ptr, align 8
  %exclude_cpu.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !145, metadata !DIExpression()), !dbg !147
  store i32 %exclude_cpu, ptr %exclude_cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %exclude_cpu.addr, metadata !146, metadata !DIExpression()), !dbg !148
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !149
  %1 = load i32, ptr %exclude_cpu.addr, align 4, !dbg !150
  call void @nmi_trigger_cpumask_backtrace(ptr noundef %0, i32 noundef %1, ptr noundef @nmi_raise_cpu_backtrace) #5, !dbg !151
  ret void, !dbg !152
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !153 dso_local void @nmi_trigger_cpumask_backtrace(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nmi_raise_cpu_backtrace(ptr noundef %mask) #0 align 16 !dbg !161 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !165
  call void @__apic_send_IPI_mask(ptr noundef %0, i32 noundef 2) #5, !dbg !166
  ret void, !dbg !167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nmi_cpu_backtrace_handler(i32 noundef %cmd, ptr noundef %regs) #0 align 16 !dbg !168 {
entry:
  %retval = alloca i32, align 4
  %cmd.addr = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !170, metadata !DIExpression()), !dbg !172
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !171, metadata !DIExpression()), !dbg !173
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !174
  %call = call zeroext i1 @nmi_cpu_backtrace(ptr noundef %0) #5, !dbg !176
  br i1 %call, label %if.then, label %if.end, !dbg !177

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !178
  br label %return, !dbg !178

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !179
  br label %return, !dbg !179

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !180
  ret i32 %1, !dbg !180
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_hw_nmi__316_60_register_nmi_cpu_backtrace_handlerearly() #3 section ".init.text" align 16 !dbg !181 {
entry:
  %call = call i32 @register_nmi_cpu_backtrace_handler() #6, !dbg !182
  ret i32 %call, !dbg !182
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @register_nmi_cpu_backtrace_handler() #3 section ".init.text" align 16 !dbg !47 {
entry:
  %tmp = alloca i32, align 4
  %call = call i32 @__register_nmi_handler(i32 noundef 0, ptr noundef @register_nmi_cpu_backtrace_handler.nmi_cpu_backtrace_handler_na) #5, !dbg !183
  store i32 %call, ptr %tmp, align 4, !dbg !183
  %0 = load i32, ptr %tmp, align 4, !dbg !183
  ret i32 0, !dbg !185
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__apic_send_IPI_mask(ptr noundef %mask, i32 noundef %vector) #4 align 16 !dbg !22 {
entry:
  %mask.addr = alloca ptr, align 8
  %vector.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !37, metadata !DIExpression()), !dbg !186
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !38, metadata !DIExpression()), !dbg !187
  store ptr @__SCT__apic_call_send_IPI_mask, ptr %tmp, align 8, !dbg !188
  %0 = load ptr, ptr %tmp, align 8, !dbg !188
  %1 = load ptr, ptr %mask.addr, align 8, !dbg !190
  %2 = load i32, ptr %vector.addr, align 4, !dbg !191
  call void %0(ptr noundef %1, i32 noundef %2) #5, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_mask(ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !194 dso_local zeroext i1 @nmi_cpu_backtrace(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !199 dso_local i32 @__register_nmi_handler(i32 noundef, ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_kbl_addr_nmi_cpu_backtrace_handler", scope: !2, file: !3, line: 52, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/apic/.hw_nmi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/apic/hw_nmi\22 -D KBUILD_BASENAME=\22hw_nmi\22 -D KBUILD_MODNAME=\22hw_nmi\22 -D __KBUILD_MODNAME=kmod_hw_nmi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/apic/hw_nmi.ll arch/x86/kernel/apic/hw_nmi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !14, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/apic/hw_nmi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a01687790ca2555b7bb829b1d29ec93")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df2487e90a9e90d681c12ee58edd9a47")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "NMI_LOCAL", value: 0)
!10 = !DIEnumerator(name: "NMI_UNKNOWN", value: 1)
!11 = !DIEnumerator(name: "NMI_SERR", value: 2)
!12 = !DIEnumerator(name: "NMI_IO_CHECK", value: 3)
!13 = !DIEnumerator(name: "NMI_MAX", value: 4)
!14 = !{!15, !16}
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !{!0, !18, !20, !39, !45}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_hw_nmi__316_60_register_nmi_cpu_backtrace_handlerearly317", scope: !2, file: !3, line: 60, type: !16, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_mask211", scope: !22, file: !23, line: 434, type: !16, isLocal: true, isDefinition: true)
!22 = distinct !DISubprogram(name: "__apic_send_IPI_mask", scope: !23, file: !23, line: 432, type: !24, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !36)
!23 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !35}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !29, line: 19, size: 64, elements: !30)
!29 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !28, file: !29, line: 19, baseType: !32, size: 64)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 1)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !{!37, !38}
!37 = !DILocalVariable(name: "mask", arg: 1, scope: !22, file: !23, line: 432, type: !26)
!38 = !DILocalVariable(name: "vector", arg: 2, scope: !22, file: !23, line: 432, type: !35)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !43)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !{!44}
!44 = !DISubrange(count: 8)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "nmi_cpu_backtrace_handler_na", scope: !47, file: !3, line: 56, type: !50, isLocal: true, isDefinition: true)
!47 = distinct !DISubprogram(name: "register_nmi_cpu_backtrace_handler", scope: !3, file: !3, line: 54, type: !48, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{!35}
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nmiaction", file: !6, line: 39, size: 384, elements: !51)
!51 = !{!52, !59, !124, !125, !126}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !50, file: !6, line: 40, baseType: !53, size: 128)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !54, line: 190, size: 128, elements: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!55 = !{!56, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !54, line: 191, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !53, file: !54, line: 191, baseType: !57, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !50, file: !6, line: 41, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "nmi_handler_t", file: !6, line: 37, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!35, !7, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !66, line: 103, size: 1344, elements: !67)
!66 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !104, !105, !106}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !65, file: !66, line: 109, baseType: !15, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !65, file: !66, line: 110, baseType: !15, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !65, file: !66, line: 111, baseType: !15, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !65, file: !66, line: 112, baseType: !15, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !65, file: !66, line: 113, baseType: !15, size: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !65, file: !66, line: 114, baseType: !15, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !65, file: !66, line: 117, baseType: !15, size: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !65, file: !66, line: 118, baseType: !15, size: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !65, file: !66, line: 119, baseType: !15, size: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !65, file: !66, line: 120, baseType: !15, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !65, file: !66, line: 121, baseType: !15, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !65, file: !66, line: 122, baseType: !15, size: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !65, file: !66, line: 123, baseType: !15, size: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !65, file: !66, line: 124, baseType: !15, size: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !65, file: !66, line: 125, baseType: !15, size: 64, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !65, file: !66, line: 139, baseType: !15, size: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !65, file: !66, line: 142, baseType: !15, size: 64, offset: 1024)
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !65, file: !66, line: 144, baseType: !86, size: 64, offset: 1088)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !65, file: !66, line: 144, size: 64, elements: !87)
!87 = !{!88, !94, !98}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !86, file: !66, line: 146, baseType: !89, size: 16)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !90, line: 19, baseType: !91)
!90 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !92, line: 24, baseType: !93)
!92 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !86, file: !66, line: 148, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !90, line: 23, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !92, line: 31, baseType: !97)
!97 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !86, file: !66, line: 150, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !66, line: 59, size: 64, elements: !100)
!100 = !{!101, !102, !103}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !99, file: !66, line: 61, baseType: !95, size: 16, flags: DIFlagBitField, extraData: i64 0)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !99, file: !66, line: 63, baseType: !95, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !99, file: !66, line: 65, baseType: !95, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !66, line: 153, baseType: !15, size: 64, offset: 1152)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !65, file: !66, line: 154, baseType: !15, size: 64, offset: 1216)
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !65, file: !66, line: 156, baseType: !107, size: 64, offset: 1280)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !65, file: !66, line: 156, size: 64, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !107, file: !66, line: 158, baseType: !89, size: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !107, file: !66, line: 160, baseType: !95, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !107, file: !66, line: 162, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !66, line: 69, size: 64, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !112, file: !66, line: 71, baseType: !95, size: 16, flags: DIFlagBitField, extraData: i64 0)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !112, file: !66, line: 73, baseType: !95, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !112, file: !66, line: 75, baseType: !95, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !112, file: !66, line: 77, baseType: !95, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !112, file: !66, line: 80, baseType: !95, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !66, line: 83, baseType: !95, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !112, file: !66, line: 86, baseType: !95, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !112, file: !66, line: 88, baseType: !95, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !112, file: !66, line: 93, baseType: !95, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !112, file: !66, line: 100, baseType: !95, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "max_duration", scope: !50, file: !6, line: 42, baseType: !95, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !6, line: 43, baseType: !15, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !6, line: 44, baseType: !127, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!129 = !{i32 7, !"Dwarf Version", i32 5}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 8, !"cf-protection-branch", i32 1}
!133 = !{i32 4, !"function_return_thunk_extern", i32 1}
!134 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!135 = !{i32 1, !"Code Model", i32 2}
!136 = !{i32 1, !"override-stack-alignment", i32 8}
!137 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!138 = distinct !DISubprogram(name: "arch_trigger_cpumask_backtrace", scope: !3, file: !3, line: 39, type: !139, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !141, !35}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !29, line: 19, baseType: !28)
!144 = !{!145, !146}
!145 = !DILocalVariable(name: "mask", arg: 1, scope: !138, file: !3, line: 39, type: !141)
!146 = !DILocalVariable(name: "exclude_cpu", arg: 2, scope: !138, file: !3, line: 39, type: !35)
!147 = !DILocation(line: 39, column: 54, scope: !138)
!148 = !DILocation(line: 39, column: 64, scope: !138)
!149 = !DILocation(line: 41, column: 32, scope: !138)
!150 = !DILocation(line: 41, column: 38, scope: !138)
!151 = !DILocation(line: 41, column: 2, scope: !138)
!152 = !DILocation(line: 43, column: 1, scope: !138)
!153 = !DISubprogram(name: "nmi_trigger_cpumask_backtrace", scope: !154, file: !154, line: 183, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5da5752bbe70ab061cfd0891798ac7e8")
!155 = !DISubroutineType(types: !156)
!156 = !{null, !141, !35, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!161 = distinct !DISubprogram(name: "nmi_raise_cpu_backtrace", scope: !3, file: !3, line: 34, type: !158, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!162 = !{!163}
!163 = !DILocalVariable(name: "mask", arg: 1, scope: !161, file: !3, line: 34, type: !160)
!164 = !DILocation(line: 34, column: 48, scope: !161)
!165 = !DILocation(line: 36, column: 23, scope: !161)
!166 = !DILocation(line: 36, column: 2, scope: !161)
!167 = !DILocation(line: 37, column: 1, scope: !161)
!168 = distinct !DISubprogram(name: "nmi_cpu_backtrace_handler", scope: !3, file: !3, line: 45, type: !62, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !169)
!169 = !{!170, !171}
!170 = !DILocalVariable(name: "cmd", arg: 1, scope: !168, file: !3, line: 45, type: !7)
!171 = !DILocalVariable(name: "regs", arg: 2, scope: !168, file: !3, line: 45, type: !64)
!172 = !DILocation(line: 45, column: 51, scope: !168)
!173 = !DILocation(line: 45, column: 72, scope: !168)
!174 = !DILocation(line: 47, column: 24, scope: !175)
!175 = distinct !DILexicalBlock(scope: !168, file: !3, line: 47, column: 6)
!176 = !DILocation(line: 47, column: 6, scope: !175)
!177 = !DILocation(line: 47, column: 6, scope: !168)
!178 = !DILocation(line: 48, column: 3, scope: !175)
!179 = !DILocation(line: 50, column: 2, scope: !168)
!180 = !DILocation(line: 51, column: 1, scope: !168)
!181 = distinct !DISubprogram(name: "__initstub__kmod_hw_nmi__316_60_register_nmi_cpu_backtrace_handlerearly", scope: !3, file: !3, line: 60, type: !48, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!182 = !DILocation(line: 60, column: 1, scope: !181)
!183 = !DILocation(line: 56, column: 2, scope: !184)
!184 = distinct !DILexicalBlock(scope: !47, file: !3, line: 56, column: 2)
!185 = !DILocation(line: 58, column: 2, scope: !47)
!186 = !DILocation(line: 432, column: 72, scope: !22)
!187 = !DILocation(line: 432, column: 82, scope: !22)
!188 = !DILocation(line: 434, column: 2, scope: !189)
!189 = distinct !DILexicalBlock(scope: !22, file: !23, line: 434, column: 2)
!190 = !DILocation(line: 434, column: 43, scope: !22)
!191 = !DILocation(line: 434, column: 49, scope: !22)
!192 = !DILocation(line: 434, column: 2, scope: !22)
!193 = !DILocation(line: 435, column: 1, scope: !22)
!194 = !DISubprogram(name: "nmi_cpu_backtrace", scope: !154, file: !154, line: 186, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !64}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 35, baseType: !198)
!198 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!199 = !DISubprogram(name: "__register_nmi_handler", scope: !6, file: !6, line: 58, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{!35, !7, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
