; ModuleID = 'kernel/numa.c'
source_filename = "kernel/numa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_memory_add_physaddr_to_nid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad memory_add_physaddr_to_nid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_phys_to_target_node: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad phys_to_target_node ; .previous"

@memory_add_physaddr_to_nid.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !0
@.str = private unnamed_addr constant [61 x i8] c"\016Unknown online node for memory at 0x%llx, assuming node 0\0A\00", align 1, !dbg !23
@__UNIQUE_ID___addressable_memory_add_physaddr_to_nid0 = internal global ptr @memory_add_physaddr_to_nid, section ".discard.addressable", align 8, !dbg !29
@phys_to_target_node.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !31
@.str.1 = private unnamed_addr constant [61 x i8] c"\016Unknown target node for memory at 0x%llx, assuming node 0\0A\00", align 1, !dbg !45
@__UNIQUE_ID___addressable_phys_to_target_node1 = internal global ptr @phys_to_target_node, section ".discard.addressable", align 8, !dbg !47
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_memory_add_physaddr_to_nid0, ptr @__UNIQUE_ID___addressable_phys_to_target_node1], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @memory_add_physaddr_to_nid(i64 noundef %start) #0 align 16 !dbg !2 {
entry:
  %start.addr = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %tmp19 = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !50, metadata !DIExpression()), !dbg !66
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #5, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !51, metadata !DIExpression()), !dbg !67
  store i8 1, ptr %__ret_do_once, align 1, !dbg !67
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #5, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !53, metadata !DIExpression()), !dbg !68
  %0 = load i8, ptr %__ret_do_once, align 1, !dbg !68, !range !69, !noundef !70
  %tobool = trunc i8 %0 to i1, !dbg !68
  %lnot = xor i1 %tobool, true, !dbg !68
  %lnot1 = xor i1 %lnot, true, !dbg !68
  %frombool = zext i1 %lnot1 to i8, !dbg !68
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !68
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #5, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !56, metadata !DIExpression()), !dbg !68
  store i8 0, ptr %__ret_once, align 1, !dbg !68
  %1 = load i8, ptr %__ret_cond, align 1, !dbg !71, !range !69, !noundef !70
  %tobool2 = trunc i8 %1 to i1, !dbg !71
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !71

land.rhs:                                         ; preds = %entry
  %2 = load i8, ptr @memory_add_physaddr_to_nid.__already_done, align 1, !dbg !71, !range !69, !noundef !70
  %tobool3 = trunc i8 %2 to i1, !dbg !71
  %lnot4 = xor i1 %tobool3, true, !dbg !71
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot4, %land.rhs ], !dbg !73
  %lnot5 = xor i1 %3, true, !dbg !71
  %lnot6 = xor i1 %lnot5, true, !dbg !71
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !71
  %conv = sext i32 %lnot.ext to i64, !dbg !71
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !71
  %tobool7 = icmp ne i64 %expval, 0, !dbg !71
  br i1 %tobool7, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %land.end
  store i8 1, ptr @memory_add_physaddr_to_nid.__already_done, align 1, !dbg !74
  store i8 1, ptr %__ret_once, align 1, !dbg !74
  br label %if.end, !dbg !74

if.end:                                           ; preds = %if.then, %land.end
  %4 = load i8, ptr %__ret_once, align 1, !dbg !68, !range !69, !noundef !70
  %tobool8 = trunc i8 %4 to i1, !dbg !68
  %lnot9 = xor i1 %tobool8, true, !dbg !68
  %lnot11 = xor i1 %lnot9, true, !dbg !68
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !68
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !68
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !68
  store i64 %expval14, ptr %tmp, align 8, !dbg !71
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #5, !dbg !76
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #5, !dbg !76
  %5 = load i64, ptr %tmp, align 8, !dbg !68
  %tobool15 = icmp ne i64 %5, 0, !dbg !76
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !67

if.then16:                                        ; preds = %if.end
  br label %do.body, !dbg !77

do.body:                                          ; preds = %if.then16
  br label %do.cond, !dbg !79

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !79

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr %start.addr, align 8, !dbg !77
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, i64 noundef %6) #6, !dbg !77
  store i32 %call, ptr %tmp17, align 4, !dbg !79
  %7 = load i32, ptr %tmp17, align 4, !dbg !77
  br label %if.end18, !dbg !76

if.end18:                                         ; preds = %do.end, %if.end
  %8 = load i8, ptr %__ret_do_once, align 1, !dbg !67, !range !69, !noundef !70
  %tobool20 = trunc i8 %8 to i1, !dbg !67
  %lnot21 = xor i1 %tobool20, true, !dbg !67
  %lnot23 = xor i1 %lnot21, true, !dbg !67
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !67
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !67
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !67
  store i64 %expval26, ptr %tmp19, align 8, !dbg !76
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #5, !dbg !81
  %9 = load i64, ptr %tmp19, align 8, !dbg !67
  ret i32 0, !dbg !82
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !83 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @phys_to_target_node(i64 noundef %start) #0 align 16 !dbg !33 {
entry:
  %start.addr = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %tmp17 = alloca i32, align 4
  %tmp19 = alloca i64, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !35, metadata !DIExpression()), !dbg !89
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #5, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !36, metadata !DIExpression()), !dbg !90
  store i8 1, ptr %__ret_do_once, align 1, !dbg !90
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #5, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !41, metadata !DIExpression()), !dbg !91
  %0 = load i8, ptr %__ret_do_once, align 1, !dbg !91, !range !69, !noundef !70
  %tobool = trunc i8 %0 to i1, !dbg !91
  %lnot = xor i1 %tobool, true, !dbg !91
  %lnot1 = xor i1 %lnot, true, !dbg !91
  %frombool = zext i1 %lnot1 to i8, !dbg !91
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !91
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #5, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !44, metadata !DIExpression()), !dbg !91
  store i8 0, ptr %__ret_once, align 1, !dbg !91
  %1 = load i8, ptr %__ret_cond, align 1, !dbg !92, !range !69, !noundef !70
  %tobool2 = trunc i8 %1 to i1, !dbg !92
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !92

land.rhs:                                         ; preds = %entry
  %2 = load i8, ptr @phys_to_target_node.__already_done, align 1, !dbg !92, !range !69, !noundef !70
  %tobool3 = trunc i8 %2 to i1, !dbg !92
  %lnot4 = xor i1 %tobool3, true, !dbg !92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot4, %land.rhs ], !dbg !94
  %lnot5 = xor i1 %3, true, !dbg !92
  %lnot6 = xor i1 %lnot5, true, !dbg !92
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !92
  %conv = sext i32 %lnot.ext to i64, !dbg !92
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !92
  %tobool7 = icmp ne i64 %expval, 0, !dbg !92
  br i1 %tobool7, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %land.end
  store i8 1, ptr @phys_to_target_node.__already_done, align 1, !dbg !95
  store i8 1, ptr %__ret_once, align 1, !dbg !95
  br label %if.end, !dbg !95

if.end:                                           ; preds = %if.then, %land.end
  %4 = load i8, ptr %__ret_once, align 1, !dbg !91, !range !69, !noundef !70
  %tobool8 = trunc i8 %4 to i1, !dbg !91
  %lnot9 = xor i1 %tobool8, true, !dbg !91
  %lnot11 = xor i1 %lnot9, true, !dbg !91
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !91
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !91
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !91
  store i64 %expval14, ptr %tmp, align 8, !dbg !92
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #5, !dbg !97
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #5, !dbg !97
  %5 = load i64, ptr %tmp, align 8, !dbg !91
  %tobool15 = icmp ne i64 %5, 0, !dbg !97
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !90

if.then16:                                        ; preds = %if.end
  br label %do.body, !dbg !98

do.body:                                          ; preds = %if.then16
  br label %do.cond, !dbg !100

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !100

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr %start.addr, align 8, !dbg !98
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %6) #6, !dbg !98
  store i32 %call, ptr %tmp17, align 4, !dbg !100
  %7 = load i32, ptr %tmp17, align 4, !dbg !98
  br label %if.end18, !dbg !97

if.end18:                                         ; preds = %do.end, %if.end
  %8 = load i8, ptr %__ret_do_once, align 1, !dbg !90, !range !69, !noundef !70
  %tobool20 = trunc i8 %8 to i1, !dbg !90
  %lnot21 = xor i1 %tobool20, true, !dbg !90
  %lnot23 = xor i1 %lnot21, true, !dbg !90
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !90
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !90
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !90
  store i64 %expval26, ptr %tmp19, align 8, !dbg !97
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #5, !dbg !102
  %9 = load i64, ptr %tmp19, align 8, !dbg !90
  ret i32 0, !dbg !103
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__already_done", scope: !2, file: !3, line: 11, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "memory_add_physaddr_to_nid", scope: !3, file: !3, line: 9, type: !4, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !49)
!3 = !DIFile(filename: "kernel/numa.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a6f284fd9ef1b9855beccb7398caf23e")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.numa.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/numa\22 -D KBUILD_BASENAME=\22numa\22 -D KBUILD_MODNAME=\22numa\22 -D __KBUILD_MODNAME=kmod_numa -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/numa.ll kernel/numa.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !20, globals: !22, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 10, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "false", value: 0)
!19 = !DIEnumerator(name: "true", value: 1)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !{!0, !23, !29, !31, !45, !47}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !3, line: 11, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 488, elements: !27)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !{!28}
!28 = !DISubrange(count: 61)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_memory_add_physaddr_to_nid0", scope: !12, file: !3, line: 15, type: !21, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__already_done", scope: !33, file: !3, line: 21, type: !38, isLocal: true, isDefinition: true)
!33 = distinct !DISubprogram(name: "phys_to_target_node", scope: !3, file: !3, line: 19, type: !4, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !34)
!34 = !{!35, !36, !41, !44}
!35 = !DILocalVariable(name: "start", arg: 1, scope: !33, file: !3, line: 19, type: !7)
!36 = !DILocalVariable(name: "__ret_do_once", scope: !37, file: !3, line: 21, type: !38)
!37 = distinct !DILexicalBlock(scope: !33, file: !3, line: 21, column: 2)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 35, baseType: !40)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!40 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!41 = !DILocalVariable(name: "__ret_cond", scope: !42, file: !3, line: 21, type: !38)
!42 = distinct !DILexicalBlock(scope: !43, file: !3, line: 21, column: 2)
!43 = distinct !DILexicalBlock(scope: !37, file: !3, line: 21, column: 2)
!44 = !DILocalVariable(name: "__ret_once", scope: !42, file: !3, line: 21, type: !38)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 21, type: !25, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_phys_to_target_node1", scope: !12, file: !3, line: 25, type: !21, isLocal: true, isDefinition: true)
!49 = !{!50, !51, !53, !56}
!50 = !DILocalVariable(name: "start", arg: 1, scope: !2, file: !3, line: 9, type: !7)
!51 = !DILocalVariable(name: "__ret_do_once", scope: !52, file: !3, line: 11, type: !38)
!52 = distinct !DILexicalBlock(scope: !2, file: !3, line: 11, column: 2)
!53 = !DILocalVariable(name: "__ret_cond", scope: !54, file: !3, line: 11, type: !38)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 11, column: 2)
!55 = distinct !DILexicalBlock(scope: !52, file: !3, line: 11, column: 2)
!56 = !DILocalVariable(name: "__ret_once", scope: !54, file: !3, line: 11, type: !38)
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 8, !"cf-protection-branch", i32 1}
!61 = !{i32 4, !"function_return_thunk_extern", i32 1}
!62 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!63 = !{i32 1, !"Code Model", i32 2}
!64 = !{i32 1, !"override-stack-alignment", i32 8}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !DILocation(line: 9, column: 36, scope: !2)
!67 = !DILocation(line: 11, column: 2, scope: !52)
!68 = !DILocation(line: 11, column: 2, scope: !54)
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !DILocation(line: 11, column: 2, scope: !72)
!72 = distinct !DILexicalBlock(scope: !54, file: !3, line: 11, column: 2)
!73 = !DILocation(line: 0, scope: !72)
!74 = !DILocation(line: 11, column: 2, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !3, line: 11, column: 2)
!76 = !DILocation(line: 11, column: 2, scope: !55)
!77 = !DILocation(line: 11, column: 2, scope: !78)
!78 = distinct !DILexicalBlock(scope: !55, file: !3, line: 11, column: 2)
!79 = !DILocation(line: 11, column: 2, scope: !80)
!80 = distinct !DILexicalBlock(scope: !78, file: !3, line: 11, column: 2)
!81 = !DILocation(line: 11, column: 2, scope: !2)
!82 = !DILocation(line: 13, column: 2, scope: !2)
!83 = !DISubprogram(name: "_printk", scope: !84, file: !84, line: 153, type: !85, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!84 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!85 = !DISubroutineType(types: !86)
!86 = !{!6, !87, null}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!89 = !DILocation(line: 19, column: 29, scope: !33)
!90 = !DILocation(line: 21, column: 2, scope: !37)
!91 = !DILocation(line: 21, column: 2, scope: !42)
!92 = !DILocation(line: 21, column: 2, scope: !93)
!93 = distinct !DILexicalBlock(scope: !42, file: !3, line: 21, column: 2)
!94 = !DILocation(line: 0, scope: !93)
!95 = !DILocation(line: 21, column: 2, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !3, line: 21, column: 2)
!97 = !DILocation(line: 21, column: 2, scope: !43)
!98 = !DILocation(line: 21, column: 2, scope: !99)
!99 = distinct !DILexicalBlock(scope: !43, file: !3, line: 21, column: 2)
!100 = !DILocation(line: 21, column: 2, scope: !101)
!101 = distinct !DILexicalBlock(scope: !99, file: !3, line: 21, column: 2)
!102 = !DILocation(line: 21, column: 2, scope: !33)
!103 = !DILocation(line: 23, column: 2, scope: !33)
