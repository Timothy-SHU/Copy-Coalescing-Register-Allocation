; ModuleID = 'drivers/acpi/acpica/tbfind.c'
source_filename = "drivers/acpi/acpica/tbfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_list = type { ptr, i32, i32, i8 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_table_desc = type { i64, ptr, i32, %union.acpi_name_union, i16, i8, i16 }
%union.acpi_name_union = type { i32 }

@acpi_gbl_root_table_list = external dso_local global %struct.acpi_table_list, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_tb_find_table(ptr noundef %signature, ptr noundef %oem_id, ptr noundef %oem_table_id, ptr noundef %table_index) #0 align 16 !dbg !23 {
entry:
  %retval = alloca i32, align 4
  %signature.addr = alloca ptr, align 8
  %oem_id.addr = alloca ptr, align 8
  %oem_table_id.addr = alloca ptr, align 8
  %table_index.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %header = alloca %struct.acpi_table_header, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %signature, ptr %signature.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signature.addr, metadata !29, metadata !DIExpression()), !dbg !61
  store ptr %oem_id, ptr %oem_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oem_id.addr, metadata !30, metadata !DIExpression()), !dbg !62
  store ptr %oem_table_id, ptr %oem_table_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oem_table_id.addr, metadata !31, metadata !DIExpression()), !dbg !63
  store ptr %table_index, ptr %table_index.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table_index.addr, metadata !32, metadata !DIExpression()), !dbg !64
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !65
  call void @llvm.dbg.declare(metadata ptr %status, metadata !33, metadata !DIExpression()), !dbg !66
  store i32 0, ptr %status, align 4, !dbg !66
  call void @llvm.lifetime.start.p0(i64 36, ptr %header) #5, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %header, metadata !34, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %i, metadata !59, metadata !DIExpression()), !dbg !70
  %0 = load ptr, ptr %signature.addr, align 8, !dbg !71
  %call = call zeroext i8 @acpi_ut_valid_nameseg(ptr noundef %0) #6, !dbg !73
  %tobool = icmp ne i8 %call, 0, !dbg !73
  br i1 %tobool, label %if.end, label %if.then, !dbg !74

if.then:                                          ; preds = %entry
  store i32 8193, ptr %retval, align 4, !dbg !75
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !75

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %oem_id.addr, align 8, !dbg !77
  %call1 = call i64 @strlen(ptr noundef %1) #6, !dbg !79
  %cmp = icmp ugt i64 %call1, 6, !dbg !80
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !81

lor.lhs.false:                                    ; preds = %if.end
  %2 = load ptr, ptr %oem_table_id.addr, align 8, !dbg !82
  %call2 = call i64 @strlen(ptr noundef %2) #6, !dbg !83
  %cmp3 = icmp ugt i64 %call2, 8, !dbg !84
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !85

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 12305, ptr %retval, align 4, !dbg !86
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !86

if.end5:                                          ; preds = %lor.lhs.false
  call void @llvm.memset.p0.i64(ptr align 1 %header, i8 0, i64 36, i1 false), !dbg !88
  %3 = load ptr, ptr %signature.addr, align 8, !dbg !89
  %4 = ptrtoint ptr %3 to i64, !dbg !89
  %5 = inttoptr i64 %4 to ptr, !dbg !89
  %6 = load i32, ptr %5, align 4, !dbg !89
  %signature6 = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 0, !dbg !89
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature6, i64 0, i64 0, !dbg !89
  %7 = ptrtoint ptr %arraydecay to i64, !dbg !89
  %8 = inttoptr i64 %7 to ptr, !dbg !89
  store i32 %6, ptr %8, align 4, !dbg !89
  %oem_id7 = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 4, !dbg !90
  %arraydecay8 = getelementptr inbounds [6 x i8], ptr %oem_id7, i64 0, i64 0, !dbg !91
  %9 = load ptr, ptr %oem_id.addr, align 8, !dbg !92
  %call9 = call ptr @strncpy(ptr noundef %arraydecay8, ptr noundef %9, i64 noundef 6) #6, !dbg !93
  %oem_table_id10 = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 5, !dbg !94
  %arraydecay11 = getelementptr inbounds [8 x i8], ptr %oem_table_id10, i64 0, i64 0, !dbg !95
  %10 = load ptr, ptr %oem_table_id.addr, align 8, !dbg !96
  %call12 = call ptr @strncpy(ptr noundef %arraydecay11, ptr noundef %10, i64 noundef 8) #6, !dbg !97
  %call13 = call i32 @acpi_ut_acquire_mutex(i32 noundef 2) #6, !dbg !98
  store i32 0, ptr %i, align 4, !dbg !99
  br label %for.cond, !dbg !101

for.cond:                                         ; preds = %for.inc, %if.end5
  %11 = load i32, ptr %i, align 4, !dbg !102
  %12 = load i32, ptr getelementptr inbounds (%struct.acpi_table_list, ptr @acpi_gbl_root_table_list, i32 0, i32 1), align 8, !dbg !104
  %cmp14 = icmp ult i32 %11, %12, !dbg !105
  br i1 %cmp14, label %for.body, label %for.end, !dbg !106

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !107
  %14 = load i32, ptr %i, align 4, !dbg !110
  %idxprom = zext i32 %14 to i64, !dbg !111
  %arrayidx = getelementptr %struct.acpi_table_desc, ptr %13, i64 %idxprom, !dbg !111
  %signature15 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx, i32 0, i32 3, !dbg !112
  %signature16 = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 0, !dbg !113
  %arraydecay17 = getelementptr inbounds [4 x i8], ptr %signature16, i64 0, i64 0, !dbg !114
  %call18 = call i32 @memcmp(ptr noundef %signature15, ptr noundef %arraydecay17, i64 noundef 4) #6, !dbg !115
  %tobool19 = icmp ne i32 %call18, 0, !dbg !115
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !116

if.then20:                                        ; preds = %for.body
  br label %for.inc, !dbg !117

if.end21:                                         ; preds = %for.body
  %15 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !119
  %16 = load i32, ptr %i, align 4, !dbg !121
  %idxprom22 = zext i32 %16 to i64, !dbg !122
  %arrayidx23 = getelementptr %struct.acpi_table_desc, ptr %15, i64 %idxprom22, !dbg !122
  %pointer = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx23, i32 0, i32 1, !dbg !123
  %17 = load ptr, ptr %pointer, align 8, !dbg !123
  %tobool24 = icmp ne ptr %17, null, !dbg !122
  br i1 %tobool24, label %if.end38, label %if.then25, !dbg !124

if.then25:                                        ; preds = %if.end21
  %18 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !125
  %19 = load i32, ptr %i, align 4, !dbg !127
  %idxprom26 = zext i32 %19 to i64, !dbg !128
  %arrayidx27 = getelementptr %struct.acpi_table_desc, ptr %18, i64 %idxprom26, !dbg !128
  %call28 = call i32 @acpi_tb_validate_table(ptr noundef %arrayidx27) #6, !dbg !129
  store i32 %call28, ptr %status, align 4, !dbg !130
  %20 = load i32, ptr %status, align 4, !dbg !131
  %tobool29 = icmp ne i32 %20, 0, !dbg !131
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !133

if.then30:                                        ; preds = %if.then25
  br label %unlock_and_exit, !dbg !134

if.end31:                                         ; preds = %if.then25
  %21 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !136
  %22 = load i32, ptr %i, align 4, !dbg !138
  %idxprom32 = zext i32 %22 to i64, !dbg !139
  %arrayidx33 = getelementptr %struct.acpi_table_desc, ptr %21, i64 %idxprom32, !dbg !139
  %pointer34 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx33, i32 0, i32 1, !dbg !140
  %23 = load ptr, ptr %pointer34, align 8, !dbg !140
  %tobool35 = icmp ne ptr %23, null, !dbg !139
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !141

if.then36:                                        ; preds = %if.end31
  br label %for.inc, !dbg !142

if.end37:                                         ; preds = %if.end31
  br label %if.end38, !dbg !144

if.end38:                                         ; preds = %if.end37, %if.end21
  %24 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !145
  %25 = load i32, ptr %i, align 4, !dbg !147
  %idxprom39 = zext i32 %25 to i64, !dbg !148
  %arrayidx40 = getelementptr %struct.acpi_table_desc, ptr %24, i64 %idxprom39, !dbg !148
  %pointer41 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx40, i32 0, i32 1, !dbg !149
  %26 = load ptr, ptr %pointer41, align 8, !dbg !149
  %signature42 = getelementptr inbounds %struct.acpi_table_header, ptr %26, i32 0, i32 0, !dbg !150
  %arraydecay43 = getelementptr inbounds [4 x i8], ptr %signature42, i64 0, i64 0, !dbg !148
  %signature44 = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 0, !dbg !151
  %arraydecay45 = getelementptr inbounds [4 x i8], ptr %signature44, i64 0, i64 0, !dbg !152
  %call46 = call i32 @memcmp(ptr noundef %arraydecay43, ptr noundef %arraydecay45, i64 noundef 4) #6, !dbg !153
  %tobool47 = icmp ne i32 %call46, 0, !dbg !153
  br i1 %tobool47, label %if.end74, label %land.lhs.true, !dbg !154

land.lhs.true:                                    ; preds = %if.end38
  %27 = load ptr, ptr %oem_id.addr, align 8, !dbg !155
  %arrayidx48 = getelementptr i8, ptr %27, i64 0, !dbg !155
  %28 = load i8, ptr %arrayidx48, align 1, !dbg !155
  %tobool49 = icmp ne i8 %28, 0, !dbg !155
  br i1 %tobool49, label %lor.lhs.false50, label %land.lhs.true60, !dbg !156

lor.lhs.false50:                                  ; preds = %land.lhs.true
  %29 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !157
  %30 = load i32, ptr %i, align 4, !dbg !158
  %idxprom51 = zext i32 %30 to i64, !dbg !159
  %arrayidx52 = getelementptr %struct.acpi_table_desc, ptr %29, i64 %idxprom51, !dbg !159
  %pointer53 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx52, i32 0, i32 1, !dbg !160
  %31 = load ptr, ptr %pointer53, align 8, !dbg !160
  %oem_id54 = getelementptr inbounds %struct.acpi_table_header, ptr %31, i32 0, i32 4, !dbg !161
  %arraydecay55 = getelementptr inbounds [6 x i8], ptr %oem_id54, i64 0, i64 0, !dbg !159
  %oem_id56 = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 4, !dbg !162
  %arraydecay57 = getelementptr inbounds [6 x i8], ptr %oem_id56, i64 0, i64 0, !dbg !163
  %call58 = call i32 @memcmp(ptr noundef %arraydecay55, ptr noundef %arraydecay57, i64 noundef 6) #6, !dbg !164
  %tobool59 = icmp ne i32 %call58, 0, !dbg !164
  br i1 %tobool59, label %if.end74, label %land.lhs.true60, !dbg !165

land.lhs.true60:                                  ; preds = %lor.lhs.false50, %land.lhs.true
  %32 = load ptr, ptr %oem_table_id.addr, align 8, !dbg !166
  %arrayidx61 = getelementptr i8, ptr %32, i64 0, !dbg !166
  %33 = load i8, ptr %arrayidx61, align 1, !dbg !166
  %tobool62 = icmp ne i8 %33, 0, !dbg !166
  br i1 %tobool62, label %lor.lhs.false63, label %if.then73, !dbg !167

lor.lhs.false63:                                  ; preds = %land.lhs.true60
  %34 = load ptr, ptr @acpi_gbl_root_table_list, align 8, !dbg !168
  %35 = load i32, ptr %i, align 4, !dbg !169
  %idxprom64 = zext i32 %35 to i64, !dbg !170
  %arrayidx65 = getelementptr %struct.acpi_table_desc, ptr %34, i64 %idxprom64, !dbg !170
  %pointer66 = getelementptr inbounds %struct.acpi_table_desc, ptr %arrayidx65, i32 0, i32 1, !dbg !171
  %36 = load ptr, ptr %pointer66, align 8, !dbg !171
  %oem_table_id67 = getelementptr inbounds %struct.acpi_table_header, ptr %36, i32 0, i32 5, !dbg !172
  %arraydecay68 = getelementptr inbounds [8 x i8], ptr %oem_table_id67, i64 0, i64 0, !dbg !170
  %oem_table_id69 = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 5, !dbg !173
  %arraydecay70 = getelementptr inbounds [8 x i8], ptr %oem_table_id69, i64 0, i64 0, !dbg !174
  %call71 = call i32 @memcmp(ptr noundef %arraydecay68, ptr noundef %arraydecay70, i64 noundef 8) #6, !dbg !175
  %tobool72 = icmp ne i32 %call71, 0, !dbg !175
  br i1 %tobool72, label %if.end74, label %if.then73, !dbg !176

if.then73:                                        ; preds = %lor.lhs.false63, %land.lhs.true60
  %37 = load i32, ptr %i, align 4, !dbg !177
  %38 = load ptr, ptr %table_index.addr, align 8, !dbg !179
  store i32 %37, ptr %38, align 4, !dbg !180
  br label %unlock_and_exit, !dbg !181

if.end74:                                         ; preds = %lor.lhs.false63, %lor.lhs.false50, %if.end38
  br label %for.inc, !dbg !182

for.inc:                                          ; preds = %if.end74, %if.then36, %if.then20
  %39 = load i32, ptr %i, align 4, !dbg !183
  %inc = add i32 %39, 1, !dbg !183
  store i32 %inc, ptr %i, align 4, !dbg !183
  br label %for.cond, !dbg !184, !llvm.loop !185

for.end:                                          ; preds = %for.cond
  store i32 5, ptr %status, align 4, !dbg !189
  br label %unlock_and_exit, !dbg !190

unlock_and_exit:                                  ; preds = %for.end, %if.then73, %if.then30
  call void @llvm.dbg.label(metadata !60), !dbg !191
  %call75 = call i32 @acpi_ut_release_mutex(i32 noundef 2) #6, !dbg !192
  %40 = load i32, ptr %status, align 4, !dbg !193
  store i32 %40, ptr %retval, align 4, !dbg !193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !193

cleanup:                                          ; preds = %unlock_and_exit, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !194
  call void @llvm.lifetime.end.p0(i64 36, ptr %header) #5, !dbg !194
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !194
  %41 = load i32, ptr %retval, align 4, !dbg !194
  ret i32 %41, !dbg !194
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !195 dso_local zeroext i8 @acpi_ut_valid_nameseg(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !199 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !205 dso_local ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !211 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !216 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !222 dso_local i32 @acpi_tb_validate_table(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !249 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.tbfind.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22tbfind\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/tbfind.ll drivers/acpi/acpica/tbfind.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/tbfind.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4f2058acc359dc688f4bf0a0993f12e")
!2 = !{!3, !10, !11}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !4, line: 421, baseType: !5)
!4 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !12, line: 42, baseType: !13)
!12 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 8, !"cf-protection-branch", i32 1}
!18 = !{i32 4, !"function_return_thunk_extern", i32 1}
!19 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!20 = !{i32 1, !"Code Model", i32 2}
!21 = !{i32 1, !"override-stack-alignment", i32 8}
!22 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!23 = distinct !DISubprogram(name: "acpi_tb_find_table", scope: !1, file: !1, line: 34, type: !24, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!24 = !DISubroutineType(types: !25)
!25 = !{!3, !26, !26, !26, !10}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!29, !30, !31, !32, !33, !34, !59, !60}
!29 = !DILocalVariable(name: "signature", arg: 1, scope: !23, file: !1, line: 34, type: !26)
!30 = !DILocalVariable(name: "oem_id", arg: 2, scope: !23, file: !1, line: 35, type: !26)
!31 = !DILocalVariable(name: "oem_table_id", arg: 3, scope: !23, file: !1, line: 35, type: !26)
!32 = !DILocalVariable(name: "table_index", arg: 4, scope: !23, file: !1, line: 35, type: !10)
!33 = !DILocalVariable(name: "status", scope: !23, file: !1, line: 37, type: !3)
!34 = !DILocalVariable(name: "header", scope: !23, file: !1, line: 38, type: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !36, line: 68, size: 288, elements: !37)
!36 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!37 = !{!38, !42, !43, !47, !48, !52, !56, !57, !58}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !35, file: !36, line: 69, baseType: !39, size: 32)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 4)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !35, file: !36, line: 70, baseType: !5, size: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !35, file: !36, line: 71, baseType: !44, size: 8, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 17, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !46)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !35, file: !36, line: 72, baseType: !44, size: 8, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !35, file: !36, line: 73, baseType: !49, size: 48, offset: 80)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 48, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 6)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !35, file: !36, line: 74, baseType: !53, size: 64, offset: 128)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 64, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 8)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !35, file: !36, line: 75, baseType: !5, size: 32, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !35, file: !36, line: 76, baseType: !39, size: 32, offset: 224)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !35, file: !36, line: 77, baseType: !5, size: 32, offset: 256)
!59 = !DILocalVariable(name: "i", scope: !23, file: !1, line: 39, type: !5)
!60 = !DILabel(scope: !23, name: "unlock_and_exit", file: !1, line: 119)
!61 = !DILocation(line: 34, column: 26, scope: !23)
!62 = !DILocation(line: 35, column: 12, scope: !23)
!63 = !DILocation(line: 35, column: 26, scope: !23)
!64 = !DILocation(line: 35, column: 45, scope: !23)
!65 = !DILocation(line: 37, column: 2, scope: !23)
!66 = !DILocation(line: 37, column: 14, scope: !23)
!67 = !DILocation(line: 38, column: 2, scope: !23)
!68 = !DILocation(line: 38, column: 27, scope: !23)
!69 = !DILocation(line: 39, column: 2, scope: !23)
!70 = !DILocation(line: 39, column: 6, scope: !23)
!71 = !DILocation(line: 45, column: 29, scope: !72)
!72 = distinct !DILexicalBlock(scope: !23, file: !1, line: 45, column: 6)
!73 = !DILocation(line: 45, column: 7, scope: !72)
!74 = !DILocation(line: 45, column: 6, scope: !23)
!75 = !DILocation(line: 46, column: 3, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 45, column: 41)
!77 = !DILocation(line: 51, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !23, file: !1, line: 51, column: 6)
!79 = !DILocation(line: 51, column: 7, scope: !78)
!80 = !DILocation(line: 51, column: 22, scope: !78)
!81 = !DILocation(line: 51, column: 42, scope: !78)
!82 = !DILocation(line: 52, column: 14, scope: !78)
!83 = !DILocation(line: 52, column: 7, scope: !78)
!84 = !DILocation(line: 52, column: 28, scope: !78)
!85 = !DILocation(line: 51, column: 6, scope: !23)
!86 = !DILocation(line: 53, column: 3, scope: !87)
!87 = distinct !DILexicalBlock(scope: !78, file: !1, line: 52, column: 55)
!88 = !DILocation(line: 58, column: 2, scope: !23)
!89 = !DILocation(line: 59, column: 2, scope: !23)
!90 = !DILocation(line: 60, column: 17, scope: !23)
!91 = !DILocation(line: 60, column: 10, scope: !23)
!92 = !DILocation(line: 60, column: 25, scope: !23)
!93 = !DILocation(line: 60, column: 2, scope: !23)
!94 = !DILocation(line: 61, column: 17, scope: !23)
!95 = !DILocation(line: 61, column: 10, scope: !23)
!96 = !DILocation(line: 61, column: 31, scope: !23)
!97 = !DILocation(line: 61, column: 2, scope: !23)
!98 = !DILocation(line: 65, column: 8, scope: !23)
!99 = !DILocation(line: 66, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !23, file: !1, line: 66, column: 2)
!101 = !DILocation(line: 66, column: 7, scope: !100)
!102 = !DILocation(line: 66, column: 14, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 66, column: 2)
!104 = !DILocation(line: 66, column: 43, scope: !103)
!105 = !DILocation(line: 66, column: 16, scope: !103)
!106 = !DILocation(line: 66, column: 2, scope: !100)
!107 = !DILocation(line: 67, column: 41, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 67, column: 7)
!109 = distinct !DILexicalBlock(scope: !103, file: !1, line: 66, column: 69)
!110 = !DILocation(line: 67, column: 48, scope: !108)
!111 = !DILocation(line: 67, column: 16, scope: !108)
!112 = !DILocation(line: 67, column: 51, scope: !108)
!113 = !DILocation(line: 68, column: 14, scope: !108)
!114 = !DILocation(line: 68, column: 7, scope: !108)
!115 = !DILocation(line: 67, column: 7, scope: !108)
!116 = !DILocation(line: 67, column: 7, scope: !109)
!117 = !DILocation(line: 72, column: 4, scope: !118)
!118 = distinct !DILexicalBlock(scope: !108, file: !1, line: 68, column: 45)
!119 = !DILocation(line: 77, column: 33, scope: !120)
!120 = distinct !DILexicalBlock(scope: !109, file: !1, line: 77, column: 7)
!121 = !DILocation(line: 77, column: 40, scope: !120)
!122 = !DILocation(line: 77, column: 8, scope: !120)
!123 = !DILocation(line: 77, column: 43, scope: !120)
!124 = !DILocation(line: 77, column: 7, scope: !109)
!125 = !DILocation(line: 83, column: 10, scope: !126)
!126 = distinct !DILexicalBlock(scope: !120, file: !1, line: 77, column: 52)
!127 = !DILocation(line: 83, column: 17, scope: !126)
!128 = !DILocation(line: 82, column: 32, scope: !126)
!129 = !DILocation(line: 82, column: 8, scope: !126)
!130 = !DILocation(line: 81, column: 11, scope: !126)
!131 = !DILocation(line: 84, column: 8, scope: !132)
!132 = distinct !DILexicalBlock(scope: !126, file: !1, line: 84, column: 8)
!133 = !DILocation(line: 84, column: 8, scope: !126)
!134 = !DILocation(line: 85, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 84, column: 30)
!136 = !DILocation(line: 88, column: 34, scope: !137)
!137 = distinct !DILexicalBlock(scope: !126, file: !1, line: 88, column: 8)
!138 = !DILocation(line: 88, column: 41, scope: !137)
!139 = !DILocation(line: 88, column: 9, scope: !137)
!140 = !DILocation(line: 88, column: 44, scope: !137)
!141 = !DILocation(line: 88, column: 8, scope: !126)
!142 = !DILocation(line: 89, column: 5, scope: !143)
!143 = distinct !DILexicalBlock(scope: !137, file: !1, line: 88, column: 53)
!144 = !DILocation(line: 91, column: 3, scope: !126)
!145 = !DILocation(line: 96, column: 33, scope: !146)
!146 = distinct !DILexicalBlock(scope: !109, file: !1, line: 95, column: 7)
!147 = !DILocation(line: 96, column: 40, scope: !146)
!148 = !DILocation(line: 96, column: 8, scope: !146)
!149 = !DILocation(line: 96, column: 43, scope: !146)
!150 = !DILocation(line: 96, column: 52, scope: !146)
!151 = !DILocation(line: 97, column: 15, scope: !146)
!152 = !DILocation(line: 97, column: 8, scope: !146)
!153 = !DILocation(line: 95, column: 8, scope: !146)
!154 = !DILocation(line: 97, column: 45, scope: !146)
!155 = !DILocation(line: 97, column: 50, scope: !146)
!156 = !DILocation(line: 98, column: 14, scope: !146)
!157 = !DILocation(line: 101, column: 15, scope: !146)
!158 = !DILocation(line: 101, column: 22, scope: !146)
!159 = !DILocation(line: 100, column: 15, scope: !146)
!160 = !DILocation(line: 102, column: 15, scope: !146)
!161 = !DILocation(line: 102, column: 24, scope: !146)
!162 = !DILocation(line: 103, column: 22, scope: !146)
!163 = !DILocation(line: 103, column: 15, scope: !146)
!164 = !DILocation(line: 99, column: 15, scope: !146)
!165 = !DILocation(line: 105, column: 7, scope: !146)
!166 = !DILocation(line: 105, column: 12, scope: !146)
!167 = !DILocation(line: 106, column: 4, scope: !146)
!168 = !DILocation(line: 106, column: 40, scope: !146)
!169 = !DILocation(line: 106, column: 47, scope: !146)
!170 = !DILocation(line: 106, column: 15, scope: !146)
!171 = !DILocation(line: 106, column: 50, scope: !146)
!172 = !DILocation(line: 107, column: 8, scope: !146)
!173 = !DILocation(line: 107, column: 29, scope: !146)
!174 = !DILocation(line: 107, column: 22, scope: !146)
!175 = !DILocation(line: 106, column: 8, scope: !146)
!176 = !DILocation(line: 95, column: 7, scope: !109)
!177 = !DILocation(line: 109, column: 19, scope: !178)
!178 = distinct !DILexicalBlock(scope: !146, file: !1, line: 108, column: 34)
!179 = !DILocation(line: 109, column: 5, scope: !178)
!180 = !DILocation(line: 109, column: 17, scope: !178)
!181 = !DILocation(line: 114, column: 4, scope: !178)
!182 = !DILocation(line: 116, column: 2, scope: !109)
!183 = !DILocation(line: 66, column: 64, scope: !103)
!184 = !DILocation(line: 66, column: 2, scope: !103)
!185 = distinct !{!185, !106, !186, !187, !188}
!186 = !DILocation(line: 116, column: 2, scope: !100)
!187 = !{!"llvm.loop.mustprogress"}
!188 = !{!"llvm.loop.unroll.disable"}
!189 = !DILocation(line: 117, column: 9, scope: !23)
!190 = !DILocation(line: 117, column: 2, scope: !23)
!191 = !DILocation(line: 119, column: 1, scope: !23)
!192 = !DILocation(line: 120, column: 8, scope: !23)
!193 = !DILocation(line: 121, column: 2, scope: !23)
!194 = !DILocation(line: 122, column: 1, scope: !23)
!195 = !DISubprogram(name: "acpi_ut_valid_nameseg", scope: !196, file: !196, line: 157, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !26}
!199 = !DISubprogram(name: "strlen", scope: !200, file: !200, line: 128, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!201 = !DISubroutineType(types: !202)
!202 = !{!13, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!205 = !DISubprogram(name: "strncpy", scope: !200, file: !200, line: 66, type: !206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{!26, !26, !203, !208}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !209, line: 72, baseType: !210)
!209 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !209, line: 16, baseType: !13)
!211 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !196, file: !196, line: 646, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DISubroutineType(types: !213)
!213 = !{!3, !214}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !215, line: 17, baseType: !5)
!215 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!216 = !DISubprogram(name: "memcmp", scope: !200, file: !200, line: 196, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !220, !220, !208}
!219 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!222 = !DISubprogram(name: "acpi_tb_validate_table", scope: !223, file: !223, line: 72, type: !224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!224 = !DISubroutineType(types: !225)
!225 = !{!3, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_desc", file: !36, line: 335, size: 256, elements: !228)
!228 = !{!229, !234, !236, !237, !242, !247, !248}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !227, file: !36, line: 336, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !4, line: 129, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !233)
!233 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !227, file: !36, line: 337, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !227, file: !36, line: 338, baseType: !5, size: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !227, file: !36, line: 339, baseType: !238, size: 32, offset: 160)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !36, line: 328, size: 32, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !238, file: !36, line: 329, baseType: !5, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !238, file: !36, line: 330, baseType: !39, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !227, file: !36, line: 340, baseType: !243, size: 16, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !4, line: 445, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !6, line: 19, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !8, line: 24, baseType: !246)
!246 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !36, line: 341, baseType: !44, size: 8, offset: 208)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "validation_count", scope: !227, file: !36, line: 342, baseType: !244, size: 16, offset: 224)
!249 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !196, file: !196, line: 648, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
