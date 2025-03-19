; ModuleID = 'sound/core/seq/seq_lock.c'
source_filename = "sound/core/seq/seq_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_use_lock_sync_helper: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_use_lock_sync_helper ; .previous"

%struct.atomic_t = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"\014ALSA: seq_lock: lock trouble [counter = %d] in %s:%d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [46 x i8] c"\014ALSA: seq_lock: waiting [%d left] in %s:%d\0A\00", align 1, !dbg !7
@__UNIQUE_ID___addressable_snd_use_lock_sync_helper205 = internal global ptr @snd_use_lock_sync_helper, section ".discard.addressable", align 8, !dbg !12
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_snd_use_lock_sync_helper205], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_use_lock_sync_helper(ptr noundef %lockp, ptr noundef %file, i32 noundef %line) #0 align 16 !dbg !38 {
entry:
  %lockp.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %warn_count = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store ptr %lockp, ptr %lockp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockp.addr, metadata !52, metadata !DIExpression()), !dbg !56
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !53, metadata !DIExpression()), !dbg !57
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !54, metadata !DIExpression()), !dbg !58
  call void @llvm.lifetime.start.p0(i64 4, ptr %warn_count) #7, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %warn_count, metadata !55, metadata !DIExpression()), !dbg !60
  store i32 5000, ptr %warn_count, align 4, !dbg !60
  %0 = load ptr, ptr %lockp.addr, align 8, !dbg !61
  %call = call i32 @atomic_read(ptr noundef %0) #8, !dbg !63
  %cmp = icmp slt i32 %call, 0, !dbg !64
  br i1 %cmp, label %if.then, label %if.end, !dbg !65

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !66

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !69

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !69

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %lockp.addr, align 8, !dbg !66
  %call1 = call i32 @atomic_read(ptr noundef %1) #8, !dbg !66
  %2 = load ptr, ptr %file.addr, align 8, !dbg !66
  %3 = load i32, ptr %line.addr, align 4, !dbg !66
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %call1, ptr noundef %2, i32 noundef %3) #9, !dbg !66
  store i32 %call2, ptr %tmp, align 4, !dbg !69
  %4 = load i32, ptr %tmp, align 4, !dbg !66
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !71

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !72

while.cond:                                       ; preds = %if.end13, %if.end
  %5 = load ptr, ptr %lockp.addr, align 8, !dbg !73
  %call3 = call i32 @atomic_read(ptr noundef %5) #8, !dbg !74
  %cmp4 = icmp sgt i32 %call3, 0, !dbg !75
  br i1 %cmp4, label %while.body, label %while.end, !dbg !72

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %warn_count, align 4, !dbg !76
  %dec = add i32 %6, -1, !dbg !76
  store i32 %dec, ptr %warn_count, align 4, !dbg !76
  %cmp5 = icmp eq i32 %6, 0, !dbg !79
  br i1 %cmp5, label %if.then6, label %if.end13, !dbg !80

if.then6:                                         ; preds = %while.body
  br label %do.body7, !dbg !81

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !83

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !83

do.end9:                                          ; preds = %do.cond8
  %7 = load ptr, ptr %lockp.addr, align 8, !dbg !81
  %call11 = call i32 @atomic_read(ptr noundef %7) #8, !dbg !81
  %8 = load ptr, ptr %file.addr, align 8, !dbg !81
  %9 = load i32, ptr %line.addr, align 4, !dbg !81
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %call11, ptr noundef %8, i32 noundef %9) #9, !dbg !81
  store i32 %call12, ptr %tmp10, align 4, !dbg !83
  %10 = load i32, ptr %tmp10, align 4, !dbg !81
  br label %if.end13, !dbg !85

if.end13:                                         ; preds = %do.end9, %while.body
  %call14 = call i64 @schedule_timeout_uninterruptible(i64 noundef 1) #8, !dbg !86
  br label %while.cond, !dbg !72, !llvm.loop !87

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !91
  br label %cleanup, !dbg !91

cleanup:                                          ; preds = %while.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %warn_count) #7, !dbg !91
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !91

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !92 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load ptr, ptr %v.addr, align 8, !dbg !101
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #8, !dbg !102
  %1 = load ptr, ptr %v.addr, align 8, !dbg !103
  %call = call i32 @raw_atomic_read(ptr noundef %1) #8, !dbg !104
  ret i32 %call, !dbg !105
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !106 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !110 dso_local i64 @schedule_timeout_uninterruptible(i64 noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !115 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !128, metadata !DIExpression()), !dbg !130
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !129, metadata !DIExpression()), !dbg !131
  %0 = load ptr, ptr %v.addr, align 8, !dbg !132
  %1 = load i64, ptr %size.addr, align 8, !dbg !133
  %conv = trunc i64 %1 to i32, !dbg !133
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #8, !dbg !134
  %2 = load ptr, ptr %v.addr, align 8, !dbg !135
  %3 = load i64, ptr %size.addr, align 8, !dbg !135
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #8, !dbg !135
  ret void, !dbg !136
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !137 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load ptr, ptr %v.addr, align 8, !dbg !142
  %call = call i32 @arch_atomic_read(ptr noundef %0) #8, !dbg !143
  ret i32 %call, !dbg !144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !145 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !152, metadata !DIExpression()), !dbg !154
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !153, metadata !DIExpression()), !dbg !155
  ret i1 true, !dbg !156
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !157 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !162, metadata !DIExpression()), !dbg !165
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !163, metadata !DIExpression()), !dbg !166
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !164, metadata !DIExpression()), !dbg !167
  ret void, !dbg !168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !169 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load ptr, ptr %v.addr, align 8, !dbg !174
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !174
  %1 = load volatile i32, ptr %counter, align 4, !dbg !174
  ret i32 %1, !dbg !175
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sound/core/seq/seq_lock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dea4725cf208e2c462226a5d9c9df318")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 56)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 46)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_use_lock_sync_helper205", scope: !14, file: !2, line: 26, type: !23, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/seq/.seq_lock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/seq/snd-seq\22 -D KBUILD_BASENAME=\22seq_lock\22 -D KBUILD_MODNAME=\22snd_seq\22 -D __KBUILD_MODNAME=kmod_snd_seq -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/seq/seq_lock.ll sound/core/seq/seq_lock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !22, globals: !28, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "false", value: 0)
!21 = !DIEnumerator(name: "true", value: 1)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !{!0, !7, !12}
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 8, !"cf-protection-branch", i32 1}
!33 = !{i32 4, !"function_return_thunk_extern", i32 1}
!34 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!35 = !{i32 1, !"Code Model", i32 2}
!36 = !{i32 1, !"override-stack-alignment", i32 8}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = distinct !DISubprogram(name: "snd_use_lock_sync_helper", scope: !2, file: !2, line: 12, type: !39, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !51)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !49, !27}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "snd_use_lock_t", file: !43, line: 7, baseType: !44)
!43 = !DIFile(filename: "sound/core/seq/seq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "87f5d997a3ce18199b25dc23b768dfb6")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !46, file: !45, line: 173, baseType: !27, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!51 = !{!52, !53, !54, !55}
!52 = !DILocalVariable(name: "lockp", arg: 1, scope: !38, file: !2, line: 12, type: !41)
!53 = !DILocalVariable(name: "file", arg: 2, scope: !38, file: !2, line: 12, type: !49)
!54 = !DILocalVariable(name: "line", arg: 3, scope: !38, file: !2, line: 12, type: !27)
!55 = !DILocalVariable(name: "warn_count", scope: !38, file: !2, line: 14, type: !27)
!56 = !DILocation(line: 12, column: 47, scope: !38)
!57 = !DILocation(line: 12, column: 66, scope: !38)
!58 = !DILocation(line: 12, column: 76, scope: !38)
!59 = !DILocation(line: 14, column: 2, scope: !38)
!60 = !DILocation(line: 14, column: 6, scope: !38)
!61 = !DILocation(line: 16, column: 18, scope: !62)
!62 = distinct !DILexicalBlock(scope: !38, file: !2, line: 16, column: 6)
!63 = !DILocation(line: 16, column: 6, scope: !62)
!64 = !DILocation(line: 16, column: 25, scope: !62)
!65 = !DILocation(line: 16, column: 6, scope: !38)
!66 = !DILocation(line: 17, column: 3, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !2, line: 17, column: 3)
!68 = distinct !DILexicalBlock(scope: !62, file: !2, line: 16, column: 30)
!69 = !DILocation(line: 17, column: 3, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !2, line: 17, column: 3)
!71 = !DILocation(line: 18, column: 3, scope: !68)
!72 = !DILocation(line: 20, column: 2, scope: !38)
!73 = !DILocation(line: 20, column: 21, scope: !38)
!74 = !DILocation(line: 20, column: 9, scope: !38)
!75 = !DILocation(line: 20, column: 28, scope: !38)
!76 = !DILocation(line: 21, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !2, line: 21, column: 7)
!78 = distinct !DILexicalBlock(scope: !38, file: !2, line: 20, column: 33)
!79 = !DILocation(line: 21, column: 20, scope: !77)
!80 = !DILocation(line: 21, column: 7, scope: !78)
!81 = !DILocation(line: 22, column: 4, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !2, line: 22, column: 4)
!83 = !DILocation(line: 22, column: 4, scope: !84)
!84 = distinct !DILexicalBlock(scope: !82, file: !2, line: 22, column: 4)
!85 = !DILocation(line: 22, column: 4, scope: !77)
!86 = !DILocation(line: 23, column: 3, scope: !78)
!87 = distinct !{!87, !72, !88, !89, !90}
!88 = !DILocation(line: 24, column: 2, scope: !38)
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !DILocation(line: 25, column: 1, scope: !38)
!92 = distinct !DISubprogram(name: "atomic_read", scope: !93, file: !93, line: 30, type: !94, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !98)
!93 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!94 = !DISubroutineType(types: !95)
!95 = !{!27, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!98 = !{!99}
!99 = !DILocalVariable(name: "v", arg: 1, scope: !92, file: !93, line: 30, type: !96)
!100 = !DILocation(line: 30, column: 29, scope: !92)
!101 = !DILocation(line: 32, column: 25, scope: !92)
!102 = !DILocation(line: 32, column: 2, scope: !92)
!103 = !DILocation(line: 33, column: 25, scope: !92)
!104 = !DILocation(line: 33, column: 9, scope: !92)
!105 = !DILocation(line: 33, column: 2, scope: !92)
!106 = !DISubprogram(name: "_printk", scope: !107, file: !107, line: 153, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!108 = !DISubroutineType(types: !109)
!109 = !{!27, !49, null}
!110 = !DISubprogram(name: "schedule_timeout_uninterruptible", scope: !111, file: !111, line: 301, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !114}
!114 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!115 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !116, file: !116, line: 66, type: !117, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !127)
!116 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119, !122}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !124, line: 72, baseType: !125)
!124 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !124, line: 16, baseType: !126)
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !{!128, !129}
!128 = !DILocalVariable(name: "v", arg: 1, scope: !115, file: !116, line: 66, type: !119)
!129 = !DILocalVariable(name: "size", arg: 2, scope: !115, file: !116, line: 66, type: !122)
!130 = !DILocation(line: 66, column: 73, scope: !115)
!131 = !DILocation(line: 66, column: 83, scope: !115)
!132 = !DILocation(line: 68, column: 19, scope: !115)
!133 = !DILocation(line: 68, column: 22, scope: !115)
!134 = !DILocation(line: 68, column: 2, scope: !115)
!135 = !DILocation(line: 69, column: 2, scope: !115)
!136 = !DILocation(line: 70, column: 1, scope: !115)
!137 = distinct !DISubprogram(name: "raw_atomic_read", scope: !138, file: !138, line: 442, type: !94, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !139)
!138 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!139 = !{!140}
!140 = !DILocalVariable(name: "v", arg: 1, scope: !137, file: !138, line: 442, type: !96)
!141 = !DILocation(line: 442, column: 33, scope: !137)
!142 = !DILocation(line: 444, column: 26, scope: !137)
!143 = !DILocation(line: 444, column: 9, scope: !137)
!144 = !DILocation(line: 444, column: 2, scope: !137)
!145 = distinct !DISubprogram(name: "kasan_check_read", scope: !146, file: !146, line: 40, type: !147, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !151)
!146 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !119, !18}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !150)
!150 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!151 = !{!152, !153}
!152 = !DILocalVariable(name: "p", arg: 1, scope: !145, file: !146, line: 40, type: !119)
!153 = !DILocalVariable(name: "size", arg: 2, scope: !145, file: !146, line: 40, type: !18)
!154 = !DILocation(line: 40, column: 58, scope: !145)
!155 = !DILocation(line: 40, column: 74, scope: !145)
!156 = !DILocation(line: 42, column: 2, scope: !145)
!157 = distinct !DISubprogram(name: "kcsan_check_access", scope: !158, file: !158, line: 229, type: !159, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !161)
!158 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!159 = !DISubroutineType(types: !160)
!160 = !{null, !119, !122, !27}
!161 = !{!162, !163, !164}
!162 = !DILocalVariable(name: "ptr", arg: 1, scope: !157, file: !158, line: 229, type: !119)
!163 = !DILocalVariable(name: "size", arg: 2, scope: !157, file: !158, line: 229, type: !122)
!164 = !DILocalVariable(name: "type", arg: 3, scope: !157, file: !158, line: 230, type: !27)
!165 = !DILocation(line: 229, column: 60, scope: !157)
!166 = !DILocation(line: 229, column: 72, scope: !157)
!167 = !DILocation(line: 230, column: 15, scope: !157)
!168 = !DILocation(line: 230, column: 23, scope: !157)
!169 = distinct !DISubprogram(name: "arch_atomic_read", scope: !170, file: !170, line: 17, type: !94, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !171)
!170 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!171 = !{!172}
!172 = !DILocalVariable(name: "v", arg: 1, scope: !169, file: !170, line: 17, type: !96)
!173 = !DILocation(line: 17, column: 61, scope: !169)
!174 = !DILocation(line: 23, column: 9, scope: !169)
!175 = !DILocation(line: 23, column: 2, scope: !169)
