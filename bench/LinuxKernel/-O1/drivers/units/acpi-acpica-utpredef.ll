; ModuleID = 'drivers/acpi/acpica/utpredef.c'
source_filename = "drivers/acpi/acpica/utpredef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_predefined_info = type { %struct.acpi_name_info }
%struct.acpi_name_info = type <{ [4 x i8], i16, i8 }>

@acpi_gbl_predefined_methods = external dso_local constant [0 x %union.acpi_predefined_info], align 1
@.str = private unnamed_addr constant [5 x i8] c"NONE\00", align 1, !dbg !0
@ut_rtype_names = internal global [5 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 16, !dbg !7
@.str.1 = private unnamed_addr constant [9 x i8] c"/Integer\00", align 1, !dbg !21
@.str.2 = private unnamed_addr constant [8 x i8] c"/String\00", align 1, !dbg !26
@.str.3 = private unnamed_addr constant [8 x i8] c"/Buffer\00", align 1, !dbg !31
@.str.4 = private unnamed_addr constant [9 x i8] c"/Package\00", align 1, !dbg !33
@.str.5 = private unnamed_addr constant [11 x i8] c"/Reference\00", align 1, !dbg !35

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_next_predefined_method(ptr noundef %this_name) #0 align 16 !dbg !52 {
entry:
  %this_name.addr = alloca ptr, align 8
  store ptr %this_name, ptr %this_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %this_name.addr, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load ptr, ptr %this_name.addr, align 8, !dbg !115
  %expected_btypes = getelementptr inbounds %struct.acpi_name_info, ptr %0, i32 0, i32 2, !dbg !117
  %1 = load i8, ptr %expected_btypes, align 1, !dbg !117
  %conv = zext i8 %1 to i32, !dbg !115
  %and = and i32 %conv, 16, !dbg !118
  %tobool = icmp ne i32 %and, 0, !dbg !118
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !119

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %this_name.addr, align 8, !dbg !120
  %expected_btypes1 = getelementptr inbounds %struct.acpi_name_info, ptr %2, i32 0, i32 2, !dbg !121
  %3 = load i8, ptr %expected_btypes1, align 1, !dbg !121
  %conv2 = zext i8 %3 to i32, !dbg !120
  %cmp = icmp ne i32 %conv2, 63, !dbg !122
  br i1 %cmp, label %if.then, label %if.end, !dbg !123

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %this_name.addr, align 8, !dbg !124
  %incdec.ptr = getelementptr %union.acpi_predefined_info, ptr %4, i32 1, !dbg !124
  store ptr %incdec.ptr, ptr %this_name.addr, align 8, !dbg !124
  br label %if.end, !dbg !126

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load ptr, ptr %this_name.addr, align 8, !dbg !127
  %incdec.ptr4 = getelementptr %union.acpi_predefined_info, ptr %5, i32 1, !dbg !127
  store ptr %incdec.ptr4, ptr %this_name.addr, align 8, !dbg !127
  %6 = load ptr, ptr %this_name.addr, align 8, !dbg !128
  ret ptr %6, !dbg !129
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_match_predefined_method(ptr noundef %name) #0 align 16 !dbg !130 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %this_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !135, metadata !DIExpression()), !dbg !137
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_name) #4, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %this_name, metadata !136, metadata !DIExpression()), !dbg !139
  %0 = load ptr, ptr %name.addr, align 8, !dbg !140
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !140
  %1 = load i8, ptr %arrayidx, align 1, !dbg !140
  %conv = zext i8 %1 to i32, !dbg !140
  %cmp = icmp ne i32 %conv, 95, !dbg !142
  br i1 %cmp, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !144

if.end:                                           ; preds = %entry
  store ptr @acpi_gbl_predefined_methods, ptr %this_name, align 8, !dbg !146
  br label %while.cond, !dbg !147

while.cond:                                       ; preds = %if.end8, %if.end
  %2 = load ptr, ptr %this_name, align 8, !dbg !148
  %name2 = getelementptr inbounds %struct.acpi_name_info, ptr %2, i32 0, i32 0, !dbg !149
  %arrayidx3 = getelementptr [4 x i8], ptr %name2, i64 0, i64 0, !dbg !148
  %3 = load i8, ptr %arrayidx3, align 1, !dbg !148
  %tobool = icmp ne i8 %3, 0, !dbg !147
  br i1 %tobool, label %while.body, label %while.end, !dbg !147

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %name.addr, align 8, !dbg !150
  %5 = ptrtoint ptr %4 to i64, !dbg !150
  %6 = inttoptr i64 %5 to ptr, !dbg !150
  %7 = load i32, ptr %6, align 4, !dbg !150
  %8 = load ptr, ptr %this_name, align 8, !dbg !150
  %name4 = getelementptr inbounds %struct.acpi_name_info, ptr %8, i32 0, i32 0, !dbg !150
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name4, i64 0, i64 0, !dbg !150
  %9 = ptrtoint ptr %arraydecay to i64, !dbg !150
  %10 = inttoptr i64 %9 to ptr, !dbg !150
  %11 = load i32, ptr %10, align 4, !dbg !150
  %cmp5 = icmp eq i32 %7, %11, !dbg !150
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !153

if.then7:                                         ; preds = %while.body
  %12 = load ptr, ptr %this_name, align 8, !dbg !154
  store ptr %12, ptr %retval, align 8, !dbg !156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !156

if.end8:                                          ; preds = %while.body
  %13 = load ptr, ptr %this_name, align 8, !dbg !157
  %call = call ptr @acpi_ut_get_next_predefined_method(ptr noundef %13) #5, !dbg !158
  store ptr %call, ptr %this_name, align 8, !dbg !159
  br label %while.cond, !dbg !147, !llvm.loop !160

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !164

cleanup:                                          ; preds = %while.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_name) #4, !dbg !165
  %14 = load ptr, ptr %retval, align 8, !dbg !165
  ret ptr %14, !dbg !165
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_get_expected_return_types(ptr noundef %buffer, i32 noundef %expected_btypes) #0 align 16 !dbg !166 {
entry:
  %buffer.addr = alloca ptr, align 8
  %expected_btypes.addr = alloca i32, align 4
  %this_rtype = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !170, metadata !DIExpression()), !dbg !175
  store i32 %expected_btypes, ptr %expected_btypes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %expected_btypes.addr, metadata !171, metadata !DIExpression()), !dbg !176
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_rtype) #4, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %this_rtype, metadata !172, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %i, metadata !173, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %j, metadata !174, metadata !DIExpression()), !dbg !182
  %0 = load i32, ptr %expected_btypes.addr, align 4, !dbg !183
  %tobool = icmp ne i32 %0, 0, !dbg !183
  br i1 %tobool, label %if.end, label %if.then, !dbg !185

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !186
  %call = call ptr @strcpy(ptr noundef %1, ptr noundef @.str) #5, !dbg !188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !189

if.end:                                           ; preds = %entry
  store i32 1, ptr %j, align 4, !dbg !190
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !191
  %arrayidx = getelementptr i8, ptr %2, i64 0, !dbg !191
  store i8 0, ptr %arrayidx, align 1, !dbg !192
  store i32 2, ptr %this_rtype, align 4, !dbg !193
  store i32 0, ptr %i, align 4, !dbg !194
  br label %for.cond, !dbg !196

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !197
  %cmp = icmp ult i32 %3, 5, !dbg !199
  br i1 %cmp, label %for.body, label %for.end, !dbg !200

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %expected_btypes.addr, align 4, !dbg !201
  %5 = load i32, ptr %this_rtype, align 4, !dbg !204
  %and = and i32 %4, %5, !dbg !205
  %tobool1 = icmp ne i32 %and, 0, !dbg !205
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !206

if.then2:                                         ; preds = %for.body
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !207
  %7 = load i32, ptr %i, align 4, !dbg !209
  %idxprom = zext i32 %7 to i64, !dbg !210
  %arrayidx3 = getelementptr [5 x ptr], ptr @ut_rtype_names, i64 0, i64 %idxprom, !dbg !210
  %8 = load ptr, ptr %arrayidx3, align 8, !dbg !210
  %9 = load i32, ptr %j, align 4, !dbg !211
  %idxprom4 = zext i32 %9 to i64, !dbg !210
  %arrayidx5 = getelementptr i8, ptr %8, i64 %idxprom4, !dbg !210
  %call6 = call ptr @strcat(ptr noundef %6, ptr noundef %arrayidx5) #5, !dbg !212
  store i32 0, ptr %j, align 4, !dbg !213
  br label %if.end7, !dbg !214

if.end7:                                          ; preds = %if.then2, %for.body
  %10 = load i32, ptr %this_rtype, align 4, !dbg !215
  %shl = shl i32 %10, 1, !dbg !215
  store i32 %shl, ptr %this_rtype, align 4, !dbg !215
  br label %for.inc, !dbg !216

for.inc:                                          ; preds = %if.end7
  %11 = load i32, ptr %i, align 4, !dbg !217
  %inc = add i32 %11, 1, !dbg !217
  store i32 %inc, ptr %i, align 4, !dbg !217
  br label %for.cond, !dbg !218, !llvm.loop !219

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !221
  br label %cleanup, !dbg !221

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4, !dbg !221
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !221
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_rtype) #4, !dbg !221
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !221

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !222 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !226 dso_local ptr @strcat(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/utpredef.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "506002e197669dd373b47ec2c5e5f9a7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "ut_rtype_names", scope: !9, file: !2, line: 21, type: !40, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utpredef.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utpredef\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utpredef.ll drivers/acpi/acpica/utpredef.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !20, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !17}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 21, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !15, line: 27, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !18, line: 42, baseType: !19)
!18 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!19 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!0, !21, !26, !31, !33, !35, !7}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 22, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 9)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 23, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 8)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !28, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !23, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 11)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 320, elements: !5)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 8, !"cf-protection-branch", i32 1}
!47 = !{i32 4, !"function_return_thunk_extern", i32 1}
!48 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!49 = !{i32 1, !"Code Model", i32 2}
!50 = !{i32 1, !"override-stack-alignment", i32 8}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = distinct !DISubprogram(name: "acpi_ut_get_next_predefined_method", scope: !2, file: !2, line: 43, type: !53, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !112)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !58, line: 351, size: 56, elements: !59)
!58 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!59 = !{!60, !75, !84, !92, !103}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !57, file: !58, line: 352, baseType: !61, size: 56)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !58, line: 295, size: 56, elements: !62)
!62 = !{!63, !67, !71}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !58, line: 296, baseType: !64, size: 32)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 4)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !61, file: !58, line: 297, baseType: !68, size: 16, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !13, line: 19, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !15, line: 24, baseType: !70)
!70 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !61, file: !58, line: 298, baseType: !72, size: 8, offset: 48)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !13, line: 17, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !15, line: 21, baseType: !74)
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !57, file: !58, line: 353, baseType: !76, size: 56)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !58, line: 314, size: 56, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !58, line: 315, baseType: !72, size: 8)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !76, file: !58, line: 316, baseType: !72, size: 8, offset: 8)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !76, file: !58, line: 317, baseType: !72, size: 8, offset: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !76, file: !58, line: 318, baseType: !72, size: 8, offset: 24)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !76, file: !58, line: 319, baseType: !72, size: 8, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !76, file: !58, line: 320, baseType: !68, size: 16, offset: 40)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !57, file: !58, line: 354, baseType: !85, size: 56)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !58, line: 325, size: 56, elements: !86)
!86 = !{!87, !88, !89, !91}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !85, file: !58, line: 326, baseType: !72, size: 8)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !85, file: !58, line: 327, baseType: !72, size: 8, offset: 8)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !85, file: !58, line: 328, baseType: !90, size: 32, offset: 16)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !65)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !85, file: !58, line: 329, baseType: !72, size: 8, offset: 48)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !57, file: !58, line: 355, baseType: !93, size: 56)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !58, line: 334, size: 56, elements: !94)
!94 = !{!95, !96, !97, !101, !102}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !58, line: 335, baseType: !72, size: 8)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !93, file: !58, line: 336, baseType: !72, size: 8, offset: 8)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !93, file: !58, line: 337, baseType: !98, size: 16, offset: 16)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 16, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 2)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !93, file: !58, line: 338, baseType: !72, size: 8, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !93, file: !58, line: 339, baseType: !68, size: 16, offset: 40)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !57, file: !58, line: 356, baseType: !104, size: 56)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !58, line: 342, size: 56, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !58, line: 343, baseType: !72, size: 8)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !104, file: !58, line: 344, baseType: !72, size: 8, offset: 8)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !104, file: !58, line: 345, baseType: !72, size: 8, offset: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !104, file: !58, line: 346, baseType: !72, size: 8, offset: 24)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !104, file: !58, line: 347, baseType: !72, size: 8, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !104, file: !58, line: 348, baseType: !68, size: 16, offset: 40)
!112 = !{!113}
!113 = !DILocalVariable(name: "this_name", arg: 1, scope: !52, file: !2, line: 45, type: !55)
!114 = !DILocation(line: 45, column: 15, scope: !52)
!115 = !DILocation(line: 52, column: 7, scope: !116)
!116 = distinct !DILexicalBlock(scope: !52, file: !2, line: 52, column: 6)
!117 = !DILocation(line: 52, column: 23, scope: !116)
!118 = !DILocation(line: 52, column: 39, scope: !116)
!119 = !DILocation(line: 52, column: 61, scope: !116)
!120 = !DILocation(line: 53, column: 7, scope: !116)
!121 = !DILocation(line: 53, column: 23, scope: !116)
!122 = !DILocation(line: 53, column: 39, scope: !116)
!123 = !DILocation(line: 52, column: 6, scope: !52)
!124 = !DILocation(line: 54, column: 12, scope: !125)
!125 = distinct !DILexicalBlock(scope: !116, file: !2, line: 53, column: 59)
!126 = !DILocation(line: 55, column: 2, scope: !125)
!127 = !DILocation(line: 57, column: 11, scope: !52)
!128 = !DILocation(line: 58, column: 10, scope: !52)
!129 = !DILocation(line: 58, column: 2, scope: !52)
!130 = distinct !DISubprogram(name: "acpi_ut_match_predefined_method", scope: !2, file: !2, line: 73, type: !131, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !134)
!131 = !DISubroutineType(types: !132)
!132 = !{!55, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!134 = !{!135, !136}
!135 = !DILocalVariable(name: "name", arg: 1, scope: !130, file: !2, line: 73, type: !133)
!136 = !DILocalVariable(name: "this_name", scope: !130, file: !2, line: 75, type: !55)
!137 = !DILocation(line: 73, column: 73, scope: !130)
!138 = !DILocation(line: 75, column: 2, scope: !130)
!139 = !DILocation(line: 75, column: 36, scope: !130)
!140 = !DILocation(line: 79, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !130, file: !2, line: 79, column: 6)
!142 = !DILocation(line: 79, column: 14, scope: !141)
!143 = !DILocation(line: 79, column: 6, scope: !130)
!144 = !DILocation(line: 80, column: 3, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !2, line: 79, column: 22)
!146 = !DILocation(line: 85, column: 12, scope: !130)
!147 = !DILocation(line: 86, column: 2, scope: !130)
!148 = !DILocation(line: 86, column: 9, scope: !130)
!149 = !DILocation(line: 86, column: 25, scope: !130)
!150 = !DILocation(line: 87, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 87, column: 7)
!152 = distinct !DILexicalBlock(scope: !130, file: !2, line: 86, column: 34)
!153 = !DILocation(line: 87, column: 7, scope: !152)
!154 = !DILocation(line: 88, column: 12, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !2, line: 87, column: 57)
!156 = !DILocation(line: 88, column: 4, scope: !155)
!157 = !DILocation(line: 91, column: 50, scope: !152)
!158 = !DILocation(line: 91, column: 15, scope: !152)
!159 = !DILocation(line: 91, column: 13, scope: !152)
!160 = distinct !{!160, !147, !161, !162, !163}
!161 = !DILocation(line: 92, column: 2, scope: !130)
!162 = !{!"llvm.loop.mustprogress"}
!163 = !{!"llvm.loop.unroll.disable"}
!164 = !DILocation(line: 94, column: 2, scope: !130)
!165 = !DILocation(line: 95, column: 1, scope: !130)
!166 = distinct !DISubprogram(name: "acpi_ut_get_expected_return_types", scope: !2, file: !2, line: 110, type: !167, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !169)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !133, !12}
!169 = !{!170, !171, !172, !173, !174}
!170 = !DILocalVariable(name: "buffer", arg: 1, scope: !166, file: !2, line: 110, type: !133)
!171 = !DILocalVariable(name: "expected_btypes", arg: 2, scope: !166, file: !2, line: 110, type: !12)
!172 = !DILocalVariable(name: "this_rtype", scope: !166, file: !2, line: 112, type: !12)
!173 = !DILocalVariable(name: "i", scope: !166, file: !2, line: 113, type: !12)
!174 = !DILocalVariable(name: "j", scope: !166, file: !2, line: 114, type: !12)
!175 = !DILocation(line: 110, column: 46, scope: !166)
!176 = !DILocation(line: 110, column: 58, scope: !166)
!177 = !DILocation(line: 112, column: 2, scope: !166)
!178 = !DILocation(line: 112, column: 6, scope: !166)
!179 = !DILocation(line: 113, column: 2, scope: !166)
!180 = !DILocation(line: 113, column: 6, scope: !166)
!181 = !DILocation(line: 114, column: 2, scope: !166)
!182 = !DILocation(line: 114, column: 6, scope: !166)
!183 = !DILocation(line: 116, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !166, file: !2, line: 116, column: 6)
!185 = !DILocation(line: 116, column: 6, scope: !166)
!186 = !DILocation(line: 117, column: 10, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !2, line: 116, column: 24)
!188 = !DILocation(line: 117, column: 3, scope: !187)
!189 = !DILocation(line: 118, column: 3, scope: !187)
!190 = !DILocation(line: 121, column: 4, scope: !166)
!191 = !DILocation(line: 122, column: 2, scope: !166)
!192 = !DILocation(line: 122, column: 12, scope: !166)
!193 = !DILocation(line: 123, column: 13, scope: !166)
!194 = !DILocation(line: 125, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !166, file: !2, line: 125, column: 2)
!196 = !DILocation(line: 125, column: 7, scope: !195)
!197 = !DILocation(line: 125, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !2, line: 125, column: 2)
!199 = !DILocation(line: 125, column: 16, scope: !198)
!200 = !DILocation(line: 125, column: 2, scope: !195)
!201 = !DILocation(line: 129, column: 7, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 129, column: 7)
!203 = distinct !DILexicalBlock(scope: !198, file: !2, line: 125, column: 40)
!204 = !DILocation(line: 129, column: 25, scope: !202)
!205 = !DILocation(line: 129, column: 23, scope: !202)
!206 = !DILocation(line: 129, column: 7, scope: !203)
!207 = !DILocation(line: 130, column: 11, scope: !208)
!208 = distinct !DILexicalBlock(scope: !202, file: !2, line: 129, column: 37)
!209 = !DILocation(line: 130, column: 35, scope: !208)
!210 = !DILocation(line: 130, column: 20, scope: !208)
!211 = !DILocation(line: 130, column: 38, scope: !208)
!212 = !DILocation(line: 130, column: 4, scope: !208)
!213 = !DILocation(line: 131, column: 6, scope: !208)
!214 = !DILocation(line: 132, column: 3, scope: !208)
!215 = !DILocation(line: 134, column: 14, scope: !203)
!216 = !DILocation(line: 135, column: 2, scope: !203)
!217 = !DILocation(line: 125, column: 36, scope: !198)
!218 = !DILocation(line: 125, column: 2, scope: !198)
!219 = distinct !{!219, !200, !220, !162, !163}
!220 = !DILocation(line: 135, column: 2, scope: !195)
!221 = !DILocation(line: 136, column: 1, scope: !166)
!222 = !DISubprogram(name: "strcpy", scope: !223, file: !223, line: 63, type: !224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!224 = !DISubroutineType(types: !225)
!225 = !{!133, !133, !41}
!226 = !DISubprogram(name: "strcat", scope: !223, file: !223, line: 79, type: !224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
