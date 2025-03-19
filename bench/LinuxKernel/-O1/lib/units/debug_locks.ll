; ModuleID = 'lib/debug_locks.c'
source_filename = "lib/debug_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debug_locks: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debug_locks ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debug_locks_silent: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debug_locks_silent ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_debug_locks_off: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad debug_locks_off ; .previous"

@debug_locks = hidden global i32 1, section ".data..read_mostly", align 4, !dbg !0
@__UNIQUE_ID___addressable_debug_locks61 = internal global ptr @debug_locks, section ".discard.addressable", align 8, !dbg !14
@debug_locks_silent = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !20
@__UNIQUE_ID___addressable_debug_locks_silent62 = internal global ptr @debug_locks_silent, section ".discard.addressable", align 8, !dbg !16
@__UNIQUE_ID___addressable_debug_locks_off63 = internal global ptr @debug_locks_off, section ".discard.addressable", align 8, !dbg !18
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_debug_locks61, ptr @__UNIQUE_ID___addressable_debug_locks_silent62, ptr @__UNIQUE_ID___addressable_debug_locks_off63], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @debug_locks_off() #0 align 16 !dbg !32 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr @debug_locks, align 4, !dbg !35
  %tobool = icmp ne i32 %0, 0, !dbg !35
  br i1 %tobool, label %land.lhs.true, label %if.end4, !dbg !37

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @__debug_locks_off() #6, !dbg !38
  %tobool1 = icmp ne i32 %call, 0, !dbg !38
  br i1 %tobool1, label %if.then, label %if.end4, !dbg !39

if.then:                                          ; preds = %land.lhs.true
  %1 = load i32, ptr @debug_locks_silent, align 4, !dbg !40
  %tobool2 = icmp ne i32 %1, 0, !dbg !40
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !43

if.then3:                                         ; preds = %if.then
  call void @console_verbose() #6, !dbg !44
  store i32 1, ptr %retval, align 4, !dbg !46
  br label %return, !dbg !46

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !47

if.end4:                                          ; preds = %if.end, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !48
  br label %return, !dbg !48

return:                                           ; preds = %if.end4, %if.then3
  %2 = load i32, ptr %retval, align 4, !dbg !49
  ret i32 %2, !dbg !49
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__debug_locks_off() #1 align 16 !dbg !50 {
entry:
  %__ai_ptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ai_ptr) #7, !dbg !58
  call void @llvm.dbg.declare(metadata ptr %__ai_ptr, metadata !53, metadata !DIExpression()), !dbg !58
  store ptr @debug_locks, ptr %__ai_ptr, align 8, !dbg !58
  br label %do.body, !dbg !58

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !59

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !59

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %__ai_ptr, align 8, !dbg !58
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #6, !dbg !58
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #7, !dbg !61
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !56, metadata !DIExpression()), !dbg !61
  store i32 0, ptr %__ret, align 4, !dbg !61
  %1 = load i32, ptr %__ret, align 4, !dbg !61
  %2 = load ptr, ptr %__ai_ptr, align 8, !dbg !61
  %3 = call i32 asm sideeffect "xchgl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %2, i32 %1, ptr elementtype(i32) %2) #7, !dbg !61, !srcloc !62
  store i32 %3, ptr %__ret, align 4, !dbg !61
  %4 = load i32, ptr %__ret, align 4, !dbg !61
  store i32 %4, ptr %tmp1, align 4, !dbg !61
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #7, !dbg !58
  %5 = load i32, ptr %tmp1, align 4, !dbg !61
  store i32 %5, ptr %tmp, align 4, !dbg !58
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ai_ptr) #7, !dbg !63
  %6 = load i32, ptr %tmp, align 4, !dbg !58
  ret i32 %6, !dbg !64
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !65 dso_local void @console_verbose() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !69 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !83, metadata !DIExpression()), !dbg !85
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !84, metadata !DIExpression()), !dbg !86
  %0 = load ptr, ptr %v.addr, align 8, !dbg !87
  %1 = load i64, ptr %size.addr, align 8, !dbg !88
  %conv = trunc i64 %1 to i32, !dbg !88
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #6, !dbg !89
  %2 = load ptr, ptr %v.addr, align 8, !dbg !90
  %3 = load i64, ptr %size.addr, align 8, !dbg !90
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #6, !dbg !90
  ret void, !dbg !91
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !92 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !99, metadata !DIExpression()), !dbg !101
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !100, metadata !DIExpression()), !dbg !102
  ret i1 true, !dbg !103
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !104 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !109, metadata !DIExpression()), !dbg !112
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !110, metadata !DIExpression()), !dbg !113
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !111, metadata !DIExpression()), !dbg !114
  ret void, !dbg !115
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "debug_locks", scope: !2, file: !3, line: 25, type: !22, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.debug_locks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/debug_locks\22 -D KBUILD_BASENAME=\22debug_locks\22 -D KBUILD_MODNAME=\22debug_locks\22 -D __KBUILD_MODNAME=kmod_debug_locks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/debug_locks.ll lib/debug_locks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/debug_locks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f9278ab9e831da79f7b0921036a8165")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0, !14, !16, !18, !20}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debug_locks61", scope: !2, file: !3, line: 26, type: !12, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debug_locks_silent62", scope: !2, file: !3, line: 34, type: !12, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_debug_locks_off63", scope: !2, file: !3, line: 49, type: !12, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "debug_locks_silent", scope: !2, file: !3, line: 33, type: !22, isLocal: false, isDefinition: true)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 8, !"cf-protection-branch", i32 1}
!27 = !{i32 4, !"function_return_thunk_extern", i32 1}
!28 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{i32 1, !"override-stack-alignment", i32 8}
!31 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!32 = distinct !DISubprogram(name: "debug_locks_off", scope: !3, file: !3, line: 39, type: !33, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!33 = !DISubroutineType(types: !34)
!34 = !{!22}
!35 = !DILocation(line: 41, column: 6, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !3, line: 41, column: 6)
!37 = !DILocation(line: 41, column: 18, scope: !36)
!38 = !DILocation(line: 41, column: 21, scope: !36)
!39 = !DILocation(line: 41, column: 6, scope: !32)
!40 = !DILocation(line: 42, column: 8, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !3, line: 42, column: 7)
!42 = distinct !DILexicalBlock(scope: !36, file: !3, line: 41, column: 42)
!43 = !DILocation(line: 42, column: 7, scope: !42)
!44 = !DILocation(line: 43, column: 4, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !3, line: 42, column: 28)
!46 = !DILocation(line: 44, column: 4, scope: !45)
!47 = !DILocation(line: 46, column: 2, scope: !42)
!48 = !DILocation(line: 47, column: 2, scope: !32)
!49 = !DILocation(line: 48, column: 1, scope: !32)
!50 = distinct !DISubprogram(name: "__debug_locks_off", scope: !51, file: !51, line: 14, type: !33, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!51 = !DIFile(filename: "./include/linux/debug_locks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f2ca58272fdb5544dbc38c2c64cca117")
!52 = !{!53, !56}
!53 = !DILocalVariable(name: "__ai_ptr", scope: !54, file: !51, line: 16, type: !55)
!54 = distinct !DILexicalBlock(scope: !50, file: !51, line: 16, column: 9)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!56 = !DILocalVariable(name: "__ret", scope: !57, file: !51, line: 16, type: !22)
!57 = distinct !DILexicalBlock(scope: !54, file: !51, line: 16, column: 9)
!58 = !DILocation(line: 16, column: 9, scope: !54)
!59 = !DILocation(line: 16, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !51, line: 16, column: 9)
!61 = !DILocation(line: 16, column: 9, scope: !57)
!62 = !{i64 2149767106}
!63 = !DILocation(line: 16, column: 9, scope: !50)
!64 = !DILocation(line: 16, column: 2, scope: !50)
!65 = !DISubprogram(name: "console_verbose", scope: !66, file: !66, line: 70, type: !67, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!66 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!67 = !DISubroutineType(types: !68)
!68 = !{null}
!69 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !70, file: !70, line: 94, type: !71, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!70 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !76}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 61, baseType: !78)
!77 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !79, line: 72, baseType: !80)
!79 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !79, line: 16, baseType: !81)
!81 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!82 = !{!83, !84}
!83 = !DILocalVariable(name: "v", arg: 1, scope: !69, file: !70, line: 94, type: !73)
!84 = !DILocalVariable(name: "size", arg: 2, scope: !69, file: !70, line: 94, type: !76)
!85 = !DILocation(line: 94, column: 79, scope: !69)
!86 = !DILocation(line: 94, column: 89, scope: !69)
!87 = !DILocation(line: 96, column: 20, scope: !69)
!88 = !DILocation(line: 96, column: 23, scope: !69)
!89 = !DILocation(line: 96, column: 2, scope: !69)
!90 = !DILocation(line: 97, column: 2, scope: !69)
!91 = !DILocation(line: 98, column: 1, scope: !69)
!92 = distinct !DISubprogram(name: "kasan_check_write", scope: !93, file: !93, line: 44, type: !94, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!93 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !73, !7}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !77, line: 35, baseType: !97)
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !{!99, !100}
!99 = !DILocalVariable(name: "p", arg: 1, scope: !92, file: !93, line: 44, type: !73)
!100 = !DILocalVariable(name: "size", arg: 2, scope: !92, file: !93, line: 44, type: !7)
!101 = !DILocation(line: 44, column: 59, scope: !92)
!102 = !DILocation(line: 44, column: 75, scope: !92)
!103 = !DILocation(line: 46, column: 2, scope: !92)
!104 = distinct !DISubprogram(name: "kcsan_check_access", scope: !105, file: !105, line: 229, type: !106, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !108)
!105 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!106 = !DISubroutineType(types: !107)
!107 = !{null, !73, !76, !22}
!108 = !{!109, !110, !111}
!109 = !DILocalVariable(name: "ptr", arg: 1, scope: !104, file: !105, line: 229, type: !73)
!110 = !DILocalVariable(name: "size", arg: 2, scope: !104, file: !105, line: 229, type: !76)
!111 = !DILocalVariable(name: "type", arg: 3, scope: !104, file: !105, line: 230, type: !22)
!112 = !DILocation(line: 229, column: 60, scope: !104)
!113 = !DILocation(line: 229, column: 72, scope: !104)
!114 = !DILocation(line: 230, column: 15, scope: !104)
!115 = !DILocation(line: 230, column: 23, scope: !104)
