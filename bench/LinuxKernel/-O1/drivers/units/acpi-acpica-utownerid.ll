; ModuleID = 'drivers/acpi/acpica/utownerid.c'
source_filename = "drivers/acpi/acpica/utownerid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_acpi_module_name = internal constant [10 x i8] c"utownerid\00", align 1, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"Owner ID [0x%3.3X] already exists\00", align 1, !dbg !20
@acpi_gbl_last_owner_id_index = external dso_local global i8, align 1
@acpi_gbl_next_owner_id_offset = external dso_local global i8, align 1
@acpi_gbl_owner_id_mask = external dso_local global [128 x i32], align 16
@.str.1 = private unnamed_addr constant [61 x i8] c"Could not allocate new OwnerId (4095 max), AE_OWNER_ID_LIMIT\00", align 1, !dbg !26
@.str.2 = private unnamed_addr constant [25 x i8] c"Invalid OwnerId: 0x%3.3X\00", align 1, !dbg !31
@.str.3 = private unnamed_addr constant [52 x i8] c"Attempted release of non-allocated OwnerId: 0x%3.3X\00", align 1, !dbg !36

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_allocate_owner_id(ptr noundef %owner_id) #0 align 16 !dbg !54 {
entry:
  %retval = alloca i32, align 4
  %owner_id.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %owner_id, ptr %owner_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner_id.addr, metadata !59, metadata !DIExpression()), !dbg !65
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %i, metadata !60, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %j, metadata !61, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %k, metadata !62, metadata !DIExpression()), !dbg !71
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !72
  call void @llvm.dbg.declare(metadata ptr %status, metadata !63, metadata !DIExpression()), !dbg !73
  %0 = load ptr, ptr %owner_id.addr, align 8, !dbg !74
  %1 = load i16, ptr %0, align 2, !dbg !76
  %tobool = icmp ne i16 %1, 0, !dbg !76
  br i1 %tobool, label %if.then, label %if.end, !dbg !77

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %owner_id.addr, align 8, !dbg !78
  %3 = load i16, ptr %2, align 2, !dbg !78
  %conv = zext i16 %3 to i32, !dbg !78
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 40, ptr noundef @.str, i32 noundef %conv) #5, !dbg !78
  store i32 7, ptr %retval, align 4, !dbg !80
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !80

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 4) #5, !dbg !81
  store i32 %call, ptr %status, align 4, !dbg !82
  %4 = load i32, ptr %status, align 4, !dbg !83
  %tobool1 = icmp ne i32 %4, 0, !dbg !83
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !85

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %status, align 4, !dbg !86
  store i32 %5, ptr %retval, align 4, !dbg !86
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !86

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !88
  %6 = load i8, ptr @acpi_gbl_last_owner_id_index, align 1, !dbg !90
  %conv4 = zext i8 %6 to i32, !dbg !90
  store i32 %conv4, ptr %j, align 4, !dbg !91
  br label %for.cond, !dbg !92

for.cond:                                         ; preds = %for.inc33, %if.end3
  %7 = load i32, ptr %i, align 4, !dbg !93
  %cmp = icmp ult i32 %7, 129, !dbg !95
  br i1 %cmp, label %for.body, label %for.end36, !dbg !96

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %j, align 4, !dbg !97
  %cmp6 = icmp uge i32 %8, 128, !dbg !100
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !101

if.then8:                                         ; preds = %for.body
  store i32 0, ptr %j, align 4, !dbg !102
  br label %if.end9, !dbg !104

if.end9:                                          ; preds = %if.then8, %for.body
  %9 = load i8, ptr @acpi_gbl_next_owner_id_offset, align 1, !dbg !105
  %conv10 = zext i8 %9 to i32, !dbg !105
  store i32 %conv10, ptr %k, align 4, !dbg !107
  br label %for.cond11, !dbg !108

for.cond11:                                       ; preds = %for.inc, %if.end9
  %10 = load i32, ptr %k, align 4, !dbg !109
  %cmp12 = icmp ult i32 %10, 32, !dbg !111
  br i1 %cmp12, label %for.body14, label %for.end, !dbg !112

for.body14:                                       ; preds = %for.cond11
  %11 = load i32, ptr %j, align 4, !dbg !113
  %idxprom = zext i32 %11 to i64, !dbg !116
  %arrayidx = getelementptr [128 x i32], ptr @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom, !dbg !116
  %12 = load i32, ptr %arrayidx, align 4, !dbg !116
  %cmp15 = icmp eq i32 %12, -1, !dbg !117
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !118

if.then17:                                        ; preds = %for.body14
  br label %for.end, !dbg !119

if.end18:                                         ; preds = %for.body14
  %13 = load i32, ptr %j, align 4, !dbg !121
  %idxprom19 = zext i32 %13 to i64, !dbg !123
  %arrayidx20 = getelementptr [128 x i32], ptr @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom19, !dbg !123
  %14 = load i32, ptr %arrayidx20, align 4, !dbg !123
  %15 = load i32, ptr %k, align 4, !dbg !124
  %shl = shl i32 1, %15, !dbg !125
  %and = and i32 %14, %shl, !dbg !126
  %tobool21 = icmp ne i32 %and, 0, !dbg !126
  br i1 %tobool21, label %if.end32, label %if.then22, !dbg !127

if.then22:                                        ; preds = %if.end18
  %16 = load i32, ptr %k, align 4, !dbg !128
  %shl23 = shl i32 1, %16, !dbg !130
  %17 = load i32, ptr %j, align 4, !dbg !131
  %idxprom24 = zext i32 %17 to i64, !dbg !132
  %arrayidx25 = getelementptr [128 x i32], ptr @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom24, !dbg !132
  %18 = load i32, ptr %arrayidx25, align 4, !dbg !133
  %or = or i32 %18, %shl23, !dbg !133
  store i32 %or, ptr %arrayidx25, align 4, !dbg !133
  %19 = load i32, ptr %j, align 4, !dbg !134
  %conv26 = trunc i32 %19 to i8, !dbg !135
  store i8 %conv26, ptr @acpi_gbl_last_owner_id_index, align 1, !dbg !136
  %20 = load i32, ptr %k, align 4, !dbg !137
  %add = add i32 %20, 1, !dbg !138
  %conv27 = trunc i32 %add to i8, !dbg !139
  store i8 %conv27, ptr @acpi_gbl_next_owner_id_offset, align 1, !dbg !140
  %21 = load i32, ptr %k, align 4, !dbg !141
  %add28 = add i32 %21, 1, !dbg !142
  %22 = load i32, ptr %j, align 4, !dbg !143
  %shl29 = shl i32 %22, 5, !dbg !143
  %add30 = add i32 %add28, %shl29, !dbg !144
  %conv31 = trunc i32 %add30 to i16, !dbg !145
  %23 = load ptr, ptr %owner_id.addr, align 8, !dbg !146
  store i16 %conv31, ptr %23, align 2, !dbg !147
  br label %exit, !dbg !148

if.end32:                                         ; preds = %if.end18
  br label %for.inc, !dbg !149

for.inc:                                          ; preds = %if.end32
  %24 = load i32, ptr %k, align 4, !dbg !150
  %inc = add i32 %24, 1, !dbg !150
  store i32 %inc, ptr %k, align 4, !dbg !150
  br label %for.cond11, !dbg !151, !llvm.loop !152

for.end:                                          ; preds = %if.then17, %for.cond11
  store i8 0, ptr @acpi_gbl_next_owner_id_offset, align 1, !dbg !156
  br label %for.inc33, !dbg !157

for.inc33:                                        ; preds = %for.end
  %25 = load i32, ptr %i, align 4, !dbg !158
  %inc34 = add i32 %25, 1, !dbg !158
  store i32 %inc34, ptr %i, align 4, !dbg !158
  %26 = load i32, ptr %j, align 4, !dbg !159
  %inc35 = add i32 %26, 1, !dbg !159
  store i32 %inc35, ptr %j, align 4, !dbg !159
  br label %for.cond, !dbg !160, !llvm.loop !161

for.end36:                                        ; preds = %for.cond
  store i32 27, ptr %status, align 4, !dbg !163
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 118, ptr noundef @.str.1) #5, !dbg !164
  br label %exit, !dbg !164

exit:                                             ; preds = %for.end36, %if.then22
  call void @llvm.dbg.label(metadata !64), !dbg !165
  %call37 = call i32 @acpi_ut_release_mutex(i32 noundef 4) #5, !dbg !166
  %27 = load i32, ptr %status, align 4, !dbg !167
  store i32 %27, ptr %retval, align 4, !dbg !167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !167

cleanup:                                          ; preds = %exit, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !168
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4, !dbg !168
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4, !dbg !168
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !168
  %28 = load i32, ptr %retval, align 4, !dbg !168
  ret i32 %28, !dbg !168
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !169 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !174 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !180 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_release_owner_id(ptr noundef %owner_id_ptr) #0 align 16 !dbg !181 {
entry:
  %owner_id_ptr.addr = alloca ptr, align 8
  %owner_id = alloca i16, align 2
  %status = alloca i32, align 4
  %index = alloca i32, align 4
  %bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %owner_id_ptr, ptr %owner_id_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner_id_ptr.addr, metadata !185, metadata !DIExpression()), !dbg !190
  call void @llvm.lifetime.start.p0(i64 2, ptr %owner_id) #4, !dbg !191
  call void @llvm.dbg.declare(metadata ptr %owner_id, metadata !186, metadata !DIExpression()), !dbg !192
  %0 = load ptr, ptr %owner_id_ptr.addr, align 8, !dbg !193
  %1 = load i16, ptr %0, align 2, !dbg !194
  store i16 %1, ptr %owner_id, align 2, !dbg !192
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %status, metadata !187, metadata !DIExpression()), !dbg !196
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %index, metadata !188, metadata !DIExpression()), !dbg !198
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit) #4, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %bit, metadata !189, metadata !DIExpression()), !dbg !200
  %2 = load ptr, ptr %owner_id_ptr.addr, align 8, !dbg !201
  store i16 0, ptr %2, align 2, !dbg !202
  %3 = load i16, ptr %owner_id, align 2, !dbg !203
  %conv = zext i16 %3 to i32, !dbg !203
  %cmp = icmp eq i32 %conv, 0, !dbg !205
  br i1 %cmp, label %if.then, label %if.end, !dbg !206

if.then:                                          ; preds = %entry
  %4 = load i16, ptr %owner_id, align 2, !dbg !207
  %conv2 = zext i16 %4 to i32, !dbg !207
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 156, ptr noundef @.str.2, i32 noundef %conv2) #5, !dbg !207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !209

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 4) #5, !dbg !210
  store i32 %call, ptr %status, align 4, !dbg !211
  %5 = load i32, ptr %status, align 4, !dbg !212
  %tobool = icmp ne i32 %5, 0, !dbg !212
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !214

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !215

if.end4:                                          ; preds = %if.end
  %6 = load i16, ptr %owner_id, align 2, !dbg !217
  %dec = add i16 %6, -1, !dbg !217
  store i16 %dec, ptr %owner_id, align 2, !dbg !217
  %7 = load i16, ptr %owner_id, align 2, !dbg !218
  %conv5 = zext i16 %7 to i32, !dbg !218
  %shr = ashr i32 %conv5, 5, !dbg !218
  store i32 %shr, ptr %index, align 4, !dbg !219
  %8 = load i16, ptr %owner_id, align 2, !dbg !220
  %conv6 = zext i16 %8 to i32, !dbg !220
  %and = and i32 %conv6, 31, !dbg !220
  %shl = shl i32 1, %and, !dbg !221
  store i32 %shl, ptr %bit, align 4, !dbg !222
  %9 = load i32, ptr %index, align 4, !dbg !223
  %idxprom = zext i32 %9 to i64, !dbg !225
  %arrayidx = getelementptr [128 x i32], ptr @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom, !dbg !225
  %10 = load i32, ptr %arrayidx, align 4, !dbg !225
  %11 = load i32, ptr %bit, align 4, !dbg !226
  %and7 = and i32 %10, %11, !dbg !227
  %tobool8 = icmp ne i32 %and7, 0, !dbg !227
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !228

if.then9:                                         ; preds = %if.end4
  %12 = load i32, ptr %bit, align 4, !dbg !229
  %13 = load i32, ptr %index, align 4, !dbg !231
  %idxprom10 = zext i32 %13 to i64, !dbg !232
  %arrayidx11 = getelementptr [128 x i32], ptr @acpi_gbl_owner_id_mask, i64 0, i64 %idxprom10, !dbg !232
  %14 = load i32, ptr %arrayidx11, align 4, !dbg !233
  %xor = xor i32 %14, %12, !dbg !233
  store i32 %xor, ptr %arrayidx11, align 4, !dbg !233
  br label %if.end13, !dbg !234

if.else:                                          ; preds = %if.end4
  %15 = load i16, ptr %owner_id, align 2, !dbg !235
  %conv12 = zext i16 %15 to i32, !dbg !235
  %add = add i32 %conv12, 1, !dbg !235
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 181, ptr noundef @.str.3, i32 noundef %add) #5, !dbg !235
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %call14 = call i32 @acpi_ut_release_mutex(i32 noundef 4) #5, !dbg !237
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !238

cleanup:                                          ; preds = %if.end13, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit) #4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 2, ptr %owner_id) #4, !dbg !239
  ret void, !dbg !239
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !41, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utownerid.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utownerid\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utownerid.ll drivers/acpi/acpica/utownerid.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utownerid.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4789a889628ea3e0c7bf8b2acb7aaa61")
!4 = !{!5, !7, !12, !15}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !14)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !18)
!18 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!19 = !{!20, !26, !31, !36, !0}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 272, elements: !24)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !{!25}
!25 = !DISubrange(count: 34)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 488, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 61)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 200, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 25)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 416, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 52)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 80, elements: !43)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!43 = !{!44}
!44 = !DISubrange(count: 10)
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 8, !"cf-protection-branch", i32 1}
!49 = !{i32 4, !"function_return_thunk_extern", i32 1}
!50 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!51 = !{i32 1, !"Code Model", i32 2}
!52 = !{i32 1, !"override-stack-alignment", i32 8}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = distinct !DISubprogram(name: "acpi_ut_allocate_owner_id", scope: !3, file: !3, line: 28, type: !55, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!55 = !DISubroutineType(types: !56)
!56 = !{!5, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!58 = !{!59, !60, !61, !62, !63, !64}
!59 = !DILocalVariable(name: "owner_id", arg: 1, scope: !54, file: !3, line: 28, type: !57)
!60 = !DILocalVariable(name: "i", scope: !54, file: !3, line: 30, type: !7)
!61 = !DILocalVariable(name: "j", scope: !54, file: !3, line: 31, type: !7)
!62 = !DILocalVariable(name: "k", scope: !54, file: !3, line: 32, type: !7)
!63 = !DILocalVariable(name: "status", scope: !54, file: !3, line: 33, type: !5)
!64 = !DILabel(scope: !54, name: "exit", file: !3, line: 121)
!65 = !DILocation(line: 28, column: 54, scope: !54)
!66 = !DILocation(line: 30, column: 2, scope: !54)
!67 = !DILocation(line: 30, column: 6, scope: !54)
!68 = !DILocation(line: 31, column: 2, scope: !54)
!69 = !DILocation(line: 31, column: 6, scope: !54)
!70 = !DILocation(line: 32, column: 2, scope: !54)
!71 = !DILocation(line: 32, column: 6, scope: !54)
!72 = !DILocation(line: 33, column: 2, scope: !54)
!73 = !DILocation(line: 33, column: 14, scope: !54)
!74 = !DILocation(line: 39, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !54, file: !3, line: 39, column: 6)
!76 = !DILocation(line: 39, column: 6, scope: !75)
!77 = !DILocation(line: 39, column: 6, scope: !54)
!78 = !DILocation(line: 40, column: 3, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !3, line: 39, column: 17)
!80 = !DILocation(line: 42, column: 3, scope: !79)
!81 = !DILocation(line: 47, column: 11, scope: !54)
!82 = !DILocation(line: 47, column: 9, scope: !54)
!83 = !DILocation(line: 48, column: 6, scope: !84)
!84 = distinct !DILexicalBlock(scope: !54, file: !3, line: 48, column: 6)
!85 = !DILocation(line: 48, column: 6, scope: !54)
!86 = !DILocation(line: 49, column: 3, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !3, line: 48, column: 28)
!88 = !DILocation(line: 57, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !54, file: !3, line: 57, column: 2)
!90 = !DILocation(line: 57, column: 18, scope: !89)
!91 = !DILocation(line: 57, column: 16, scope: !89)
!92 = !DILocation(line: 57, column: 7, scope: !89)
!93 = !DILocation(line: 58, column: 7, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !3, line: 57, column: 2)
!95 = !DILocation(line: 58, column: 9, scope: !94)
!96 = !DILocation(line: 57, column: 2, scope: !89)
!97 = !DILocation(line: 59, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 59, column: 7)
!99 = distinct !DILexicalBlock(scope: !94, file: !3, line: 58, column: 51)
!100 = !DILocation(line: 59, column: 9, scope: !98)
!101 = !DILocation(line: 59, column: 7, scope: !99)
!102 = !DILocation(line: 60, column: 6, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !3, line: 59, column: 36)
!104 = !DILocation(line: 61, column: 3, scope: !103)
!105 = !DILocation(line: 63, column: 12, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !3, line: 63, column: 3)
!107 = !DILocation(line: 63, column: 10, scope: !106)
!108 = !DILocation(line: 63, column: 8, scope: !106)
!109 = !DILocation(line: 63, column: 43, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !3, line: 63, column: 3)
!111 = !DILocation(line: 63, column: 45, scope: !110)
!112 = !DILocation(line: 63, column: 3, scope: !106)
!113 = !DILocation(line: 64, column: 31, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !3, line: 64, column: 8)
!115 = distinct !DILexicalBlock(scope: !110, file: !3, line: 63, column: 56)
!116 = !DILocation(line: 64, column: 8, scope: !114)
!117 = !DILocation(line: 64, column: 34, scope: !114)
!118 = !DILocation(line: 64, column: 8, scope: !115)
!119 = !DILocation(line: 68, column: 5, scope: !120)
!120 = distinct !DILexicalBlock(scope: !114, file: !3, line: 64, column: 54)
!121 = !DILocation(line: 77, column: 33, scope: !122)
!122 = distinct !DILexicalBlock(scope: !115, file: !3, line: 77, column: 8)
!123 = !DILocation(line: 77, column: 10, scope: !122)
!124 = !DILocation(line: 77, column: 49, scope: !122)
!125 = !DILocation(line: 77, column: 46, scope: !122)
!126 = !DILocation(line: 77, column: 36, scope: !122)
!127 = !DILocation(line: 77, column: 8, scope: !115)
!128 = !DILocation(line: 83, column: 45, scope: !129)
!129 = distinct !DILexicalBlock(scope: !122, file: !3, line: 77, column: 54)
!130 = !DILocation(line: 83, column: 42, scope: !129)
!131 = !DILocation(line: 83, column: 28, scope: !129)
!132 = !DILocation(line: 83, column: 5, scope: !129)
!133 = !DILocation(line: 83, column: 31, scope: !129)
!134 = !DILocation(line: 85, column: 40, scope: !129)
!135 = !DILocation(line: 85, column: 36, scope: !129)
!136 = !DILocation(line: 85, column: 34, scope: !129)
!137 = !DILocation(line: 86, column: 42, scope: !129)
!138 = !DILocation(line: 86, column: 44, scope: !129)
!139 = !DILocation(line: 86, column: 37, scope: !129)
!140 = !DILocation(line: 86, column: 35, scope: !129)
!141 = !DILocation(line: 95, column: 26, scope: !129)
!142 = !DILocation(line: 95, column: 28, scope: !129)
!143 = !DILocation(line: 95, column: 35, scope: !129)
!144 = !DILocation(line: 95, column: 33, scope: !129)
!145 = !DILocation(line: 95, column: 9, scope: !129)
!146 = !DILocation(line: 94, column: 6, scope: !129)
!147 = !DILocation(line: 94, column: 15, scope: !129)
!148 = !DILocation(line: 100, column: 5, scope: !129)
!149 = !DILocation(line: 102, column: 3, scope: !115)
!150 = !DILocation(line: 63, column: 52, scope: !110)
!151 = !DILocation(line: 63, column: 3, scope: !110)
!152 = distinct !{!152, !112, !153, !154, !155}
!153 = !DILocation(line: 102, column: 3, scope: !106)
!154 = !{!"llvm.loop.mustprogress"}
!155 = !{!"llvm.loop.unroll.disable"}
!156 = !DILocation(line: 104, column: 33, scope: !99)
!157 = !DILocation(line: 105, column: 2, scope: !99)
!158 = !DILocation(line: 58, column: 42, scope: !94)
!159 = !DILocation(line: 58, column: 47, scope: !94)
!160 = !DILocation(line: 57, column: 2, scope: !94)
!161 = distinct !{!161, !96, !162, !154, !155}
!162 = !DILocation(line: 105, column: 2, scope: !89)
!163 = !DILocation(line: 117, column: 9, scope: !54)
!164 = !DILocation(line: 118, column: 2, scope: !54)
!165 = !DILocation(line: 121, column: 1, scope: !54)
!166 = !DILocation(line: 122, column: 8, scope: !54)
!167 = !DILocation(line: 123, column: 2, scope: !54)
!168 = !DILocation(line: 124, column: 1, scope: !54)
!169 = !DISubprogram(name: "acpi_error", scope: !170, file: !170, line: 901, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!170 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173, !7, !173, null}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!174 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !175, file: !175, line: 646, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!175 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!176 = !DISubroutineType(types: !177)
!177 = !{!5, !178}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !179, line: 17, baseType: !7)
!179 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!180 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !175, file: !175, line: 648, type: !176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = distinct !DISubprogram(name: "acpi_ut_release_owner_id", scope: !3, file: !3, line: 140, type: !182, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !57}
!184 = !{!185, !186, !187, !188, !189}
!185 = !DILocalVariable(name: "owner_id_ptr", arg: 1, scope: !181, file: !3, line: 140, type: !57)
!186 = !DILocalVariable(name: "owner_id", scope: !181, file: !3, line: 142, type: !15)
!187 = !DILocalVariable(name: "status", scope: !181, file: !3, line: 143, type: !5)
!188 = !DILocalVariable(name: "index", scope: !181, file: !3, line: 144, type: !7)
!189 = !DILocalVariable(name: "bit", scope: !181, file: !3, line: 145, type: !7)
!190 = !DILocation(line: 140, column: 46, scope: !181)
!191 = !DILocation(line: 142, column: 2, scope: !181)
!192 = !DILocation(line: 142, column: 16, scope: !181)
!193 = !DILocation(line: 142, column: 28, scope: !181)
!194 = !DILocation(line: 142, column: 27, scope: !181)
!195 = !DILocation(line: 143, column: 2, scope: !181)
!196 = !DILocation(line: 143, column: 14, scope: !181)
!197 = !DILocation(line: 144, column: 2, scope: !181)
!198 = !DILocation(line: 144, column: 6, scope: !181)
!199 = !DILocation(line: 145, column: 2, scope: !181)
!200 = !DILocation(line: 145, column: 6, scope: !181)
!201 = !DILocation(line: 151, column: 3, scope: !181)
!202 = !DILocation(line: 151, column: 16, scope: !181)
!203 = !DILocation(line: 155, column: 6, scope: !204)
!204 = distinct !DILexicalBlock(scope: !181, file: !3, line: 155, column: 6)
!205 = !DILocation(line: 155, column: 15, scope: !204)
!206 = !DILocation(line: 155, column: 6, scope: !181)
!207 = !DILocation(line: 156, column: 3, scope: !208)
!208 = distinct !DILexicalBlock(scope: !204, file: !3, line: 155, column: 21)
!209 = !DILocation(line: 157, column: 3, scope: !208)
!210 = !DILocation(line: 162, column: 11, scope: !181)
!211 = !DILocation(line: 162, column: 9, scope: !181)
!212 = !DILocation(line: 163, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !181, file: !3, line: 163, column: 6)
!214 = !DILocation(line: 163, column: 6, scope: !181)
!215 = !DILocation(line: 164, column: 3, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !3, line: 163, column: 28)
!217 = !DILocation(line: 169, column: 10, scope: !181)
!218 = !DILocation(line: 173, column: 10, scope: !181)
!219 = !DILocation(line: 173, column: 8, scope: !181)
!220 = !DILocation(line: 174, column: 18, scope: !181)
!221 = !DILocation(line: 174, column: 15, scope: !181)
!222 = !DILocation(line: 174, column: 6, scope: !181)
!223 = !DILocation(line: 178, column: 29, scope: !224)
!224 = distinct !DILexicalBlock(scope: !181, file: !3, line: 178, column: 6)
!225 = !DILocation(line: 178, column: 6, scope: !224)
!226 = !DILocation(line: 178, column: 38, scope: !224)
!227 = !DILocation(line: 178, column: 36, scope: !224)
!228 = !DILocation(line: 178, column: 6, scope: !181)
!229 = !DILocation(line: 179, column: 36, scope: !230)
!230 = distinct !DILexicalBlock(scope: !224, file: !3, line: 178, column: 43)
!231 = !DILocation(line: 179, column: 26, scope: !230)
!232 = !DILocation(line: 179, column: 3, scope: !230)
!233 = !DILocation(line: 179, column: 33, scope: !230)
!234 = !DILocation(line: 180, column: 2, scope: !230)
!235 = !DILocation(line: 181, column: 3, scope: !236)
!236 = distinct !DILexicalBlock(scope: !224, file: !3, line: 180, column: 9)
!237 = !DILocation(line: 186, column: 8, scope: !181)
!238 = !DILocation(line: 187, column: 2, scope: !181)
!239 = !DILocation(line: 188, column: 1, scope: !181)
