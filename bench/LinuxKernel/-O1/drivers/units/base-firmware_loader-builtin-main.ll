; ModuleID = 'drivers/base/firmware_loader/builtin/main.c'
source_filename = "drivers/base/firmware_loader/builtin/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_firmware_request_builtin: ; .asciz \22GPL\22 ; .asciz \22TEST_FIRMWARE\22 ; .balign 8 ; .quad firmware_request_builtin ; .previous"

%struct.builtin_fw = type { ptr, ptr, i64 }
%struct.firmware = type { i64, ptr, ptr }

@__start_builtin_fw = external dso_local global [0 x %struct.builtin_fw], align 8
@__end_builtin_fw = external dso_local global [0 x %struct.builtin_fw], align 8
@__UNIQUE_ID___addressable_firmware_request_builtin117 = internal global ptr @firmware_request_builtin, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_firmware_request_builtin117], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @firmware_request_builtin(ptr noundef %fw, ptr noundef %name) #0 align 16 !dbg !23 {
entry:
  %retval = alloca i1, align 1
  %fw.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %b_fw = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fw, ptr %fw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fw.addr, metadata !52, metadata !DIExpression()), !dbg !62
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !53, metadata !DIExpression()), !dbg !63
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_fw) #5, !dbg !64
  call void @llvm.dbg.declare(metadata ptr %b_fw, metadata !54, metadata !DIExpression()), !dbg !65
  %0 = load ptr, ptr %fw.addr, align 8, !dbg !66
  %tobool = icmp ne ptr %0, null, !dbg !66
  br i1 %tobool, label %if.end, label %if.then, !dbg !68

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !69
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !69

if.end:                                           ; preds = %entry
  store ptr @__start_builtin_fw, ptr %b_fw, align 8, !dbg !70
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load ptr, ptr %b_fw, align 8, !dbg !73
  %cmp = icmp ne ptr %1, @__end_builtin_fw, !dbg !75
  br i1 %cmp, label %for.body, label %for.end, !dbg !76

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %name.addr, align 8, !dbg !77
  %3 = load ptr, ptr %b_fw, align 8, !dbg !80
  %name1 = getelementptr inbounds %struct.builtin_fw, ptr %3, i32 0, i32 0, !dbg !81
  %4 = load ptr, ptr %name1, align 8, !dbg !81
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef %4) #6, !dbg !82
  %cmp2 = icmp eq i32 %call, 0, !dbg !83
  br i1 %cmp2, label %if.then3, label %if.end6, !dbg !84

if.then3:                                         ; preds = %for.body
  %5 = load ptr, ptr %b_fw, align 8, !dbg !85
  %size = getelementptr inbounds %struct.builtin_fw, ptr %5, i32 0, i32 2, !dbg !87
  %6 = load i64, ptr %size, align 8, !dbg !87
  %7 = load ptr, ptr %fw.addr, align 8, !dbg !88
  %size4 = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 0, !dbg !89
  store i64 %6, ptr %size4, align 8, !dbg !90
  %8 = load ptr, ptr %b_fw, align 8, !dbg !91
  %data = getelementptr inbounds %struct.builtin_fw, ptr %8, i32 0, i32 1, !dbg !92
  %9 = load ptr, ptr %data, align 8, !dbg !92
  %10 = load ptr, ptr %fw.addr, align 8, !dbg !93
  %data5 = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1, !dbg !94
  store ptr %9, ptr %data5, align 8, !dbg !95
  store i1 true, ptr %retval, align 1, !dbg !96
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !96

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !97

for.inc:                                          ; preds = %if.end6
  %11 = load ptr, ptr %b_fw, align 8, !dbg !98
  %incdec.ptr = getelementptr %struct.builtin_fw, ptr %11, i32 1, !dbg !98
  store ptr %incdec.ptr, ptr %b_fw, align 8, !dbg !98
  br label %for.cond, !dbg !99, !llvm.loop !100

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !104

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_fw) #5, !dbg !105
  %12 = load i1, ptr %retval, align 1, !dbg !105
  ret i1 %12, !dbg !105
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !106 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @firmware_request_builtin_buf(ptr noundef %fw, ptr noundef %name, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !111 {
entry:
  %retval = alloca i1, align 1
  %fw.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %fw, ptr %fw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fw.addr, metadata !115, metadata !DIExpression()), !dbg !119
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !116, metadata !DIExpression()), !dbg !120
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !117, metadata !DIExpression()), !dbg !121
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !118, metadata !DIExpression()), !dbg !122
  %0 = load ptr, ptr %fw.addr, align 8, !dbg !123
  %1 = load ptr, ptr %name.addr, align 8, !dbg !125
  %call = call zeroext i1 @firmware_request_builtin(ptr noundef %0, ptr noundef %1) #6, !dbg !126
  br i1 %call, label %if.end, label %if.then, !dbg !127

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !128
  br label %return, !dbg !128

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %fw.addr, align 8, !dbg !129
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !130
  %4 = load i64, ptr %size.addr, align 8, !dbg !131
  %call1 = call zeroext i1 @fw_copy_to_prealloc_buf(ptr noundef %2, ptr noundef %3, i64 noundef %4) #6, !dbg !132
  store i1 %call1, ptr %retval, align 1, !dbg !133
  br label %return, !dbg !133

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !134
  ret i1 %5, !dbg !134
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fw_copy_to_prealloc_buf(ptr noundef %fw, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !135 {
entry:
  %retval = alloca i1, align 1
  %fw.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %fw, ptr %fw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fw.addr, metadata !139, metadata !DIExpression()), !dbg !142
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !140, metadata !DIExpression()), !dbg !143
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !141, metadata !DIExpression()), !dbg !144
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !145
  %tobool = icmp ne ptr %0, null, !dbg !145
  br i1 %tobool, label %if.end, label %if.then, !dbg !147

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !148
  br label %return, !dbg !148

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !149
  %2 = load ptr, ptr %fw.addr, align 8, !dbg !151
  %size1 = getelementptr inbounds %struct.firmware, ptr %2, i32 0, i32 0, !dbg !152
  %3 = load i64, ptr %size1, align 8, !dbg !152
  %cmp = icmp ult i64 %1, %3, !dbg !153
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !154

if.then2:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !155
  br label %return, !dbg !155

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !156
  %5 = load ptr, ptr %fw.addr, align 8, !dbg !157
  %data = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1, !dbg !158
  %6 = load ptr, ptr %data, align 8, !dbg !158
  %7 = load ptr, ptr %fw.addr, align 8, !dbg !159
  %size4 = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 0, !dbg !160
  %8 = load i64, ptr %size4, align 8, !dbg !160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %6, i64 %8, i1 false), !dbg !161
  store i1 true, ptr %retval, align 1, !dbg !162
  br label %return, !dbg !162

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %9 = load i1, ptr %retval, align 1, !dbg !163
  ret i1 %9, !dbg !163
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @firmware_is_builtin(ptr noundef %fw) #0 align 16 !dbg !164 {
entry:
  %retval = alloca i1, align 1
  %fw.addr = alloca ptr, align 8
  %b_fw = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fw, ptr %fw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fw.addr, metadata !170, metadata !DIExpression()), !dbg !172
  call void @llvm.lifetime.start.p0(i64 8, ptr %b_fw) #5, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %b_fw, metadata !171, metadata !DIExpression()), !dbg !174
  store ptr @__start_builtin_fw, ptr %b_fw, align 8, !dbg !175
  br label %for.cond, !dbg !177

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %b_fw, align 8, !dbg !178
  %cmp = icmp ne ptr %0, @__end_builtin_fw, !dbg !180
  br i1 %cmp, label %for.body, label %for.end, !dbg !181

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %fw.addr, align 8, !dbg !182
  %data = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1, !dbg !184
  %2 = load ptr, ptr %data, align 8, !dbg !184
  %3 = load ptr, ptr %b_fw, align 8, !dbg !185
  %data1 = getelementptr inbounds %struct.builtin_fw, ptr %3, i32 0, i32 1, !dbg !186
  %4 = load ptr, ptr %data1, align 8, !dbg !186
  %cmp2 = icmp eq ptr %2, %4, !dbg !187
  br i1 %cmp2, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !189

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !186

for.inc:                                          ; preds = %if.end
  %5 = load ptr, ptr %b_fw, align 8, !dbg !190
  %incdec.ptr = getelementptr %struct.builtin_fw, ptr %5, i32 1, !dbg !190
  store ptr %incdec.ptr, ptr %b_fw, align 8, !dbg !190
  br label %for.cond, !dbg !191, !llvm.loop !192

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !194

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b_fw) #5, !dbg !195
  %6 = load i1, ptr %retval, align 1, !dbg !195
  ret i1 %6, !dbg !195
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_firmware_request_builtin117", scope: !2, file: !3, line: 64, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/firmware_loader/builtin/.main.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/firmware_loader/builtin/main\22 -D KBUILD_BASENAME=\22main\22 -D KBUILD_MODNAME=\22main\22 -D __KBUILD_MODNAME=kmod_main -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/firmware_loader/builtin/main.ll drivers/base/firmware_loader/builtin/main.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/firmware_loader/builtin/main.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cdab9ff13a6f67ba76bc2b4096809d09")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0}
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 8, !"cf-protection-branch", i32 1}
!18 = !{i32 4, !"function_return_thunk_extern", i32 1}
!19 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!20 = !{i32 1, !"Code Model", i32 2}
!21 = !{i32 1, !"override-stack-alignment", i32 8}
!22 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!23 = distinct !DISubprogram(name: "firmware_request_builtin", scope: !3, file: !3, line: 47, type: !24, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !29, !48}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !28)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !31, line: 12, size: 192, elements: !32)
!31 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a94668a811664b50b12e1246efadf209")
!32 = !{!33, !39, !47}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !31, line: 13, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 61, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !36, line: 72, baseType: !37)
!36 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !36, line: 16, baseType: !38)
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !31, line: 14, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !43, line: 17, baseType: !44)
!43 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !45, line: 21, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !30, file: !31, line: 17, baseType: !12, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !{!52, !53, !54}
!52 = !DILocalVariable(name: "fw", arg: 1, scope: !23, file: !3, line: 47, type: !29)
!53 = !DILocalVariable(name: "name", arg: 2, scope: !23, file: !3, line: 47, type: !48)
!54 = !DILocalVariable(name: "b_fw", scope: !23, file: !3, line: 49, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "builtin_fw", file: !3, line: 10, size: 192, elements: !57)
!57 = !{!58, !60, !61}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !3, line: 11, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !56, file: !3, line: 12, baseType: !12, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !56, file: !3, line: 13, baseType: !38, size: 64, offset: 128)
!62 = !DILocation(line: 47, column: 48, scope: !23)
!63 = !DILocation(line: 47, column: 64, scope: !23)
!64 = !DILocation(line: 49, column: 2, scope: !23)
!65 = !DILocation(line: 49, column: 21, scope: !23)
!66 = !DILocation(line: 51, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !23, file: !3, line: 51, column: 6)
!68 = !DILocation(line: 51, column: 6, scope: !23)
!69 = !DILocation(line: 52, column: 3, scope: !67)
!70 = !DILocation(line: 54, column: 12, scope: !71)
!71 = distinct !DILexicalBlock(scope: !23, file: !3, line: 54, column: 2)
!72 = !DILocation(line: 54, column: 7, scope: !71)
!73 = !DILocation(line: 54, column: 34, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !3, line: 54, column: 2)
!75 = !DILocation(line: 54, column: 39, scope: !74)
!76 = !DILocation(line: 54, column: 2, scope: !71)
!77 = !DILocation(line: 55, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 55, column: 7)
!79 = distinct !DILexicalBlock(scope: !74, file: !3, line: 54, column: 68)
!80 = !DILocation(line: 55, column: 20, scope: !78)
!81 = !DILocation(line: 55, column: 26, scope: !78)
!82 = !DILocation(line: 55, column: 7, scope: !78)
!83 = !DILocation(line: 55, column: 32, scope: !78)
!84 = !DILocation(line: 55, column: 7, scope: !79)
!85 = !DILocation(line: 56, column: 15, scope: !86)
!86 = distinct !DILexicalBlock(scope: !78, file: !3, line: 55, column: 38)
!87 = !DILocation(line: 56, column: 21, scope: !86)
!88 = !DILocation(line: 56, column: 4, scope: !86)
!89 = !DILocation(line: 56, column: 8, scope: !86)
!90 = !DILocation(line: 56, column: 13, scope: !86)
!91 = !DILocation(line: 57, column: 15, scope: !86)
!92 = !DILocation(line: 57, column: 21, scope: !86)
!93 = !DILocation(line: 57, column: 4, scope: !86)
!94 = !DILocation(line: 57, column: 8, scope: !86)
!95 = !DILocation(line: 57, column: 13, scope: !86)
!96 = !DILocation(line: 58, column: 4, scope: !86)
!97 = !DILocation(line: 60, column: 2, scope: !79)
!98 = !DILocation(line: 54, column: 64, scope: !74)
!99 = !DILocation(line: 54, column: 2, scope: !74)
!100 = distinct !{!100, !76, !101, !102, !103}
!101 = !DILocation(line: 60, column: 2, scope: !71)
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !DILocation(line: 62, column: 2, scope: !23)
!105 = !DILocation(line: 63, column: 1, scope: !23)
!106 = !DISubprogram(name: "strcmp", scope: !107, file: !107, line: 88, type: !108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!107 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !48, !48}
!110 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!111 = distinct !DISubprogram(name: "firmware_request_builtin_buf", scope: !3, file: !3, line: 86, type: !112, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!26, !29, !48, !12, !34}
!114 = !{!115, !116, !117, !118}
!115 = !DILocalVariable(name: "fw", arg: 1, scope: !111, file: !3, line: 86, type: !29)
!116 = !DILocalVariable(name: "name", arg: 2, scope: !111, file: !3, line: 86, type: !48)
!117 = !DILocalVariable(name: "buf", arg: 3, scope: !111, file: !3, line: 87, type: !12)
!118 = !DILocalVariable(name: "size", arg: 4, scope: !111, file: !3, line: 87, type: !34)
!119 = !DILocation(line: 86, column: 52, scope: !111)
!120 = !DILocation(line: 86, column: 68, scope: !111)
!121 = !DILocation(line: 87, column: 13, scope: !111)
!122 = !DILocation(line: 87, column: 25, scope: !111)
!123 = !DILocation(line: 89, column: 32, scope: !124)
!124 = distinct !DILexicalBlock(scope: !111, file: !3, line: 89, column: 6)
!125 = !DILocation(line: 89, column: 36, scope: !124)
!126 = !DILocation(line: 89, column: 7, scope: !124)
!127 = !DILocation(line: 89, column: 6, scope: !111)
!128 = !DILocation(line: 90, column: 3, scope: !124)
!129 = !DILocation(line: 92, column: 33, scope: !111)
!130 = !DILocation(line: 92, column: 37, scope: !111)
!131 = !DILocation(line: 92, column: 42, scope: !111)
!132 = !DILocation(line: 92, column: 9, scope: !111)
!133 = !DILocation(line: 92, column: 2, scope: !111)
!134 = !DILocation(line: 93, column: 1, scope: !111)
!135 = distinct !DISubprogram(name: "fw_copy_to_prealloc_buf", scope: !3, file: !3, line: 19, type: !136, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{!26, !29, !12, !34}
!138 = !{!139, !140, !141}
!139 = !DILocalVariable(name: "fw", arg: 1, scope: !135, file: !3, line: 19, type: !29)
!140 = !DILocalVariable(name: "buf", arg: 2, scope: !135, file: !3, line: 20, type: !12)
!141 = !DILocalVariable(name: "size", arg: 3, scope: !135, file: !3, line: 20, type: !34)
!142 = !DILocation(line: 19, column: 54, scope: !135)
!143 = !DILocation(line: 20, column: 15, scope: !135)
!144 = !DILocation(line: 20, column: 27, scope: !135)
!145 = !DILocation(line: 22, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !135, file: !3, line: 22, column: 6)
!147 = !DILocation(line: 22, column: 6, scope: !135)
!148 = !DILocation(line: 23, column: 3, scope: !146)
!149 = !DILocation(line: 24, column: 6, scope: !150)
!150 = distinct !DILexicalBlock(scope: !135, file: !3, line: 24, column: 6)
!151 = !DILocation(line: 24, column: 13, scope: !150)
!152 = !DILocation(line: 24, column: 17, scope: !150)
!153 = !DILocation(line: 24, column: 11, scope: !150)
!154 = !DILocation(line: 24, column: 6, scope: !135)
!155 = !DILocation(line: 25, column: 3, scope: !150)
!156 = !DILocation(line: 26, column: 9, scope: !135)
!157 = !DILocation(line: 26, column: 14, scope: !135)
!158 = !DILocation(line: 26, column: 18, scope: !135)
!159 = !DILocation(line: 26, column: 24, scope: !135)
!160 = !DILocation(line: 26, column: 28, scope: !135)
!161 = !DILocation(line: 26, column: 2, scope: !135)
!162 = !DILocation(line: 27, column: 2, scope: !135)
!163 = !DILocation(line: 28, column: 1, scope: !135)
!164 = distinct !DISubprogram(name: "firmware_is_builtin", scope: !3, file: !3, line: 95, type: !165, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !169)
!165 = !DISubroutineType(types: !166)
!166 = !{!26, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!169 = !{!170, !171}
!170 = !DILocalVariable(name: "fw", arg: 1, scope: !164, file: !3, line: 95, type: !167)
!171 = !DILocalVariable(name: "b_fw", scope: !164, file: !3, line: 97, type: !55)
!172 = !DILocation(line: 95, column: 49, scope: !164)
!173 = !DILocation(line: 97, column: 2, scope: !164)
!174 = !DILocation(line: 97, column: 21, scope: !164)
!175 = !DILocation(line: 99, column: 12, scope: !176)
!176 = distinct !DILexicalBlock(scope: !164, file: !3, line: 99, column: 2)
!177 = !DILocation(line: 99, column: 7, scope: !176)
!178 = !DILocation(line: 99, column: 34, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 99, column: 2)
!180 = !DILocation(line: 99, column: 39, scope: !179)
!181 = !DILocation(line: 99, column: 2, scope: !176)
!182 = !DILocation(line: 100, column: 7, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !3, line: 100, column: 7)
!184 = !DILocation(line: 100, column: 11, scope: !183)
!185 = !DILocation(line: 100, column: 19, scope: !183)
!186 = !DILocation(line: 100, column: 25, scope: !183)
!187 = !DILocation(line: 100, column: 16, scope: !183)
!188 = !DILocation(line: 100, column: 7, scope: !179)
!189 = !DILocation(line: 101, column: 4, scope: !183)
!190 = !DILocation(line: 99, column: 64, scope: !179)
!191 = !DILocation(line: 99, column: 2, scope: !179)
!192 = distinct !{!192, !181, !193, !102, !103}
!193 = !DILocation(line: 101, column: 11, scope: !176)
!194 = !DILocation(line: 103, column: 2, scope: !164)
!195 = !DILocation(line: 104, column: 1, scope: !164)
