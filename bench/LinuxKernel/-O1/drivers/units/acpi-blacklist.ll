; ModuleID = 'drivers/acpi/blacklist.c'
source_filename = "drivers/acpi/blacklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_platform_list = type { [7 x i8], [9 x i8], i32, ptr, i32, ptr, i32 }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }

@acpi_blacklist = internal global [5 x %struct.acpi_platform_list] [%struct.acpi_platform_list { [7 x i8] c"PTLTD \00", [9 x i8] c"  DSDT  \00", i32 100925440, ptr @.str.4, i32 1, ptr @.str.5, i32 1 }, %struct.acpi_platform_list { [7 x i8] c"SONY  \00", [9 x i8] c"U0      \00", i32 536937235, ptr @.str.4, i32 1, ptr @.str.6, i32 1 }, %struct.acpi_platform_list { [7 x i8] c"INT440\00", [9 x i8] c"SYSFexxx\00", i32 4097, ptr @.str.4, i32 1, ptr @.str.7, i32 1 }, %struct.acpi_platform_list { [7 x i8] c"IBM   \00", [9 x i8] c"TP600E  \00", i32 261, ptr @.str.4, i32 1, ptr @.str.8, i32 1 }, %struct.acpi_platform_list zeroinitializer], section ".init.data", align 16, !dbg !0
@.str = private unnamed_addr constant [84 x i8] c"\013ACPI: Vendor \22%6.6s\22 System \22%8.8s\22 Revision 0x%x has a known ACPI BIOS problem.\0A\00", align 1, !dbg !14
@.str.1 = private unnamed_addr constant [40 x i8] c"\013ACPI: Reason: %s. This is a %s error\0A\00", align 1, !dbg !20
@.str.2 = private unnamed_addr constant [16 x i8] c"non-recoverable\00", align 1, !dbg !25
@.str.3 = private unnamed_addr constant [12 x i8] c"recoverable\00", align 1, !dbg !30
@.str.4 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1, !dbg !35
@.str.5 = private unnamed_addr constant [18 x i8] c"Multiple problems\00", align 1, !dbg !40
@.str.6 = private unnamed_addr constant [20 x i8] c"ACPI driver problem\00", align 1, !dbg !45
@.str.7 = private unnamed_addr constant [42 x i8] c"Does not use _REG to protect EC OpRegions\00", align 1, !dbg !50
@.str.8 = private unnamed_addr constant [15 x i8] c"Incorrect _ADR\00", align 1, !dbg !55
@acpi_rev_dmi_table = internal constant [6 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @dmi_enable_rev_override, ptr @.str.10, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"XPS 13 9343\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_enable_rev_override, ptr @.str.11, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Precision 5520\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_enable_rev_override, ptr @.str.12, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Precision 3520\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_enable_rev_override, ptr @.str.13, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Latitude 3350\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id { ptr @dmi_enable_rev_override, ptr @.str.14, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 7537\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !73
@.str.10 = private unnamed_addr constant [19 x i8] c"DELL XPS 13 (2015)\00", align 1, !dbg !60
@.str.11 = private unnamed_addr constant [20 x i8] c"DELL Precision 5520\00", align 1, !dbg !65
@.str.12 = private unnamed_addr constant [20 x i8] c"DELL Precision 3520\00", align 1, !dbg !67
@.str.13 = private unnamed_addr constant [19 x i8] c"DELL Latitude 3350\00", align 1, !dbg !69
@.str.14 = private unnamed_addr constant [19 x i8] c"DELL Inspiron 7537\00", align 1, !dbg !71
@.str.15 = private unnamed_addr constant [49 x i8] c"\015ACPI: DMI detected: %s (force ACPI _REV to 5)\0A\00", align 1, !dbg !106

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_blacklisted() #0 section ".init.text" align 16 !dbg !141 {
entry:
  %i = alloca i32, align 4
  %blacklisted = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %i, metadata !145, metadata !DIExpression()), !dbg !148
  call void @llvm.lifetime.start.p0(i64 4, ptr %blacklisted) #5, !dbg !149
  call void @llvm.dbg.declare(metadata ptr %blacklisted, metadata !146, metadata !DIExpression()), !dbg !150
  store i32 0, ptr %blacklisted, align 4, !dbg !150
  %call = call i32 @acpi_match_platform_list(ptr noundef @acpi_blacklist) #6, !dbg !151
  store i32 %call, ptr %i, align 4, !dbg !152
  %0 = load i32, ptr %i, align 4, !dbg !153
  %cmp = icmp sge i32 %0, 0, !dbg !155
  br i1 %cmp, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !157

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !160

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !160

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %i, align 4, !dbg !157
  %idxprom = sext i32 %1 to i64, !dbg !157
  %arrayidx = getelementptr [5 x %struct.acpi_platform_list], ptr @acpi_blacklist, i64 0, i64 %idxprom, !dbg !157
  %oem_id = getelementptr inbounds %struct.acpi_platform_list, ptr %arrayidx, i32 0, i32 0, !dbg !157
  %arraydecay = getelementptr inbounds [7 x i8], ptr %oem_id, i64 0, i64 0, !dbg !157
  %2 = load i32, ptr %i, align 4, !dbg !157
  %idxprom1 = sext i32 %2 to i64, !dbg !157
  %arrayidx2 = getelementptr [5 x %struct.acpi_platform_list], ptr @acpi_blacklist, i64 0, i64 %idxprom1, !dbg !157
  %oem_table_id = getelementptr inbounds %struct.acpi_platform_list, ptr %arrayidx2, i32 0, i32 1, !dbg !157
  %arraydecay3 = getelementptr inbounds [9 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !157
  %3 = load i32, ptr %i, align 4, !dbg !157
  %idxprom4 = sext i32 %3 to i64, !dbg !157
  %arrayidx5 = getelementptr [5 x %struct.acpi_platform_list], ptr @acpi_blacklist, i64 0, i64 %idxprom4, !dbg !157
  %oem_revision = getelementptr inbounds %struct.acpi_platform_list, ptr %arrayidx5, i32 0, i32 2, !dbg !157
  %4 = load i32, ptr %oem_revision, align 8, !dbg !157
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %arraydecay3, i32 noundef %4) #7, !dbg !157
  store i32 %call6, ptr %tmp, align 4, !dbg !160
  %5 = load i32, ptr %tmp, align 4, !dbg !157
  br label %do.body7, !dbg !162

do.body7:                                         ; preds = %do.end
  br label %do.cond8, !dbg !164

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !164

do.end9:                                          ; preds = %do.cond8
  %6 = load i32, ptr %i, align 4, !dbg !162
  %idxprom11 = sext i32 %6 to i64, !dbg !162
  %arrayidx12 = getelementptr [5 x %struct.acpi_platform_list], ptr @acpi_blacklist, i64 0, i64 %idxprom11, !dbg !162
  %reason = getelementptr inbounds %struct.acpi_platform_list, ptr %arrayidx12, i32 0, i32 5, !dbg !162
  %7 = load ptr, ptr %reason, align 8, !dbg !162
  %8 = load i32, ptr %i, align 4, !dbg !162
  %idxprom13 = sext i32 %8 to i64, !dbg !162
  %arrayidx14 = getelementptr [5 x %struct.acpi_platform_list], ptr @acpi_blacklist, i64 0, i64 %idxprom13, !dbg !162
  %data = getelementptr inbounds %struct.acpi_platform_list, ptr %arrayidx14, i32 0, i32 6, !dbg !162
  %9 = load i32, ptr %data, align 8, !dbg !162
  %tobool = icmp ne i32 %9, 0, !dbg !162
  %10 = zext i1 %tobool to i64, !dbg !162
  %cond = select i1 %tobool, ptr @.str.2, ptr @.str.3, !dbg !162
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %7, ptr noundef %cond) #7, !dbg !162
  store i32 %call15, ptr %tmp10, align 4, !dbg !164
  %11 = load i32, ptr %tmp10, align 4, !dbg !162
  %12 = load i32, ptr %i, align 4, !dbg !166
  %idxprom16 = sext i32 %12 to i64, !dbg !167
  %arrayidx17 = getelementptr [5 x %struct.acpi_platform_list], ptr @acpi_blacklist, i64 0, i64 %idxprom16, !dbg !167
  %data18 = getelementptr inbounds %struct.acpi_platform_list, ptr %arrayidx17, i32 0, i32 6, !dbg !168
  %13 = load i32, ptr %data18, align 8, !dbg !168
  store i32 %13, ptr %blacklisted, align 4, !dbg !169
  br label %if.end, !dbg !170

if.end:                                           ; preds = %do.end9, %entry
  %call19 = call i32 @early_acpi_osi_init() #6, !dbg !171
  %call20 = call i32 @dmi_check_system(ptr noundef @acpi_rev_dmi_table) #6, !dbg !172
  %14 = load i32, ptr %blacklisted, align 4, !dbg !173
  call void @llvm.lifetime.end.p0(i64 4, ptr %blacklisted) #5, !dbg !174
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !174
  ret i32 %14, !dbg !175
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !176 dso_local i32 @acpi_match_platform_list(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !181 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !185 dso_local i32 @early_acpi_osi_init() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !187 dso_local i32 @dmi_check_system(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @dmi_enable_rev_override(ptr noundef %d) #0 section ".init.text" align 16 !dbg !189 {
entry:
  %d.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !191, metadata !DIExpression()), !dbg !192
  br label %do.body, !dbg !193

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !195

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %d.addr, align 8, !dbg !193
  %ident = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 1, !dbg !193
  %1 = load ptr, ptr %ident, align 8, !dbg !193
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, ptr noundef %1) #7, !dbg !193
  store i32 %call, ptr %tmp, align 4, !dbg !195
  %2 = load i32, ptr %tmp, align 4, !dbg !193
  %call1 = call i32 @acpi_rev_override_setup(ptr noundef null) #6, !dbg !197
  ret i32 0, !dbg !198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !199 dso_local i32 @acpi_rev_override_setup(ptr noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_blacklist", scope: !2, file: !3, line: 30, type: !111, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.blacklist.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/blacklist\22 -D KBUILD_BASENAME=\22blacklist\22 -D KBUILD_MODNAME=\22blacklist\22 -D __KBUILD_MODNAME=kmod_blacklist -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/blacklist.ll drivers/acpi/blacklist.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/blacklist.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "175d86340ee6a91e1c3107a83302d181")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_predicate", file: !6, line: 681, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "all_versions", value: 0)
!10 = !DIEnumerator(name: "less_than_or_equal", value: 1)
!11 = !DIEnumerator(name: "equal", value: 2)
!12 = !DIEnumerator(name: "greater_than_or_equal", value: 3)
!13 = !{!14, !20, !25, !30, !35, !40, !45, !50, !55, !0, !60, !65, !67, !69, !71, !73, !106}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 672, elements: !18)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!19}
!19 = !DISubrange(count: 84)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 320, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 40)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 16)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 96, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 12)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 40, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 5)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 144, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 18)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 36, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 20)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 39, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 336, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 42)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 120, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 15)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 152, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 19)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !47, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !47, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !62, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !62, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "acpi_rev_dmi_table", scope: !2, file: !3, line: 84, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16512, elements: !104)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !78, line: 587, size: 2752, elements: !79)
!78 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!79 = !{!80, !86, !89, !102}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !77, file: !78, line: 588, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !85}
!84 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !77, file: !78, line: 589, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !77, file: !78, line: 590, baseType: !90, size: 2560, offset: 128)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2560, elements: !100)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !78, line: 581, size: 640, elements: !92)
!92 = !{!93, !95, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !91, file: !78, line: 582, baseType: !94, size: 7, flags: DIFlagBitField, extraData: i64 0)
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !91, file: !78, line: 583, baseType: !94, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !91, file: !78, line: 584, baseType: !97, size: 632, offset: 8)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 632, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 79)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !77, file: !78, line: 591, baseType: !103, size: 64, offset: 2688)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !{!105}
!105 = !DISubrange(count: 6)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 392, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 49)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 2240, elements: !38)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_platform_list", file: !6, line: 689, size: 448, elements: !113)
!113 = !{!114, !118, !122, !127, !129, !130, !131}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !112, file: !6, line: 690, baseType: !115, size: 56)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 56, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 7)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !112, file: !6, line: 691, baseType: !119, size: 72, offset: 56)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 72, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 9)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !112, file: !6, line: 692, baseType: !123, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !124, line: 21, baseType: !125)
!124 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !126, line: 27, baseType: !7)
!126 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !112, file: !6, line: 693, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !112, file: !6, line: 694, baseType: !5, size: 32, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !112, file: !6, line: 695, baseType: !128, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !112, file: !6, line: 696, baseType: !123, size: 32, offset: 384)
!132 = !{i32 7, !"Dwarf Version", i32 5}
!133 = !{i32 2, !"Debug Info Version", i32 3}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 8, !"cf-protection-branch", i32 1}
!136 = !{i32 4, !"function_return_thunk_extern", i32 1}
!137 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!138 = !{i32 1, !"Code Model", i32 2}
!139 = !{i32 1, !"override-stack-alignment", i32 8}
!140 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!141 = distinct !DISubprogram(name: "acpi_blacklisted", scope: !3, file: !3, line: 47, type: !142, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{!84}
!144 = !{!145, !146}
!145 = !DILocalVariable(name: "i", scope: !141, file: !3, line: 49, type: !84)
!146 = !DILocalVariable(name: "blacklisted", scope: !141, file: !3, line: 50, type: !84)
!147 = !DILocation(line: 49, column: 2, scope: !141)
!148 = !DILocation(line: 49, column: 6, scope: !141)
!149 = !DILocation(line: 50, column: 2, scope: !141)
!150 = !DILocation(line: 50, column: 6, scope: !141)
!151 = !DILocation(line: 52, column: 6, scope: !141)
!152 = !DILocation(line: 52, column: 4, scope: !141)
!153 = !DILocation(line: 53, column: 6, scope: !154)
!154 = distinct !DILexicalBlock(scope: !141, file: !3, line: 53, column: 6)
!155 = !DILocation(line: 53, column: 8, scope: !154)
!156 = !DILocation(line: 53, column: 6, scope: !141)
!157 = !DILocation(line: 54, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 54, column: 3)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 53, column: 14)
!160 = !DILocation(line: 54, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !3, line: 54, column: 3)
!162 = !DILocation(line: 59, column: 3, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 59, column: 3)
!164 = !DILocation(line: 59, column: 3, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !3, line: 59, column: 3)
!166 = !DILocation(line: 64, column: 32, scope: !159)
!167 = !DILocation(line: 64, column: 17, scope: !159)
!168 = !DILocation(line: 64, column: 35, scope: !159)
!169 = !DILocation(line: 64, column: 15, scope: !159)
!170 = !DILocation(line: 65, column: 2, scope: !159)
!171 = !DILocation(line: 67, column: 8, scope: !141)
!172 = !DILocation(line: 69, column: 2, scope: !141)
!173 = !DILocation(line: 72, column: 9, scope: !141)
!174 = !DILocation(line: 73, column: 1, scope: !141)
!175 = !DILocation(line: 72, column: 2, scope: !141)
!176 = !DISubprogram(name: "acpi_match_platform_list", scope: !6, file: !6, line: 698, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DISubroutineType(types: !178)
!178 = !{!84, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!181 = !DISubprogram(name: "_printk", scope: !182, file: !182, line: 153, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!183 = !DISubroutineType(types: !184)
!184 = !{!84, !87, null}
!185 = !DISubprogram(name: "early_acpi_osi_init", scope: !186, file: !186, line: 16, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf5cbbce8a2c7457da3066f6da7b3bd")
!187 = !DISubprogram(name: "dmi_check_system", scope: !188, file: !188, line: 100, type: !82, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!189 = distinct !DISubprogram(name: "dmi_enable_rev_override", scope: !3, file: !3, line: 76, type: !82, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!190 = !{!191}
!191 = !DILocalVariable(name: "d", arg: 1, scope: !189, file: !3, line: 76, type: !85)
!192 = !DILocation(line: 76, column: 71, scope: !189)
!193 = !DILocation(line: 78, column: 2, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !3, line: 78, column: 2)
!195 = !DILocation(line: 78, column: 2, scope: !196)
!196 = distinct !DILexicalBlock(scope: !194, file: !3, line: 78, column: 2)
!197 = !DILocation(line: 79, column: 2, scope: !189)
!198 = !DILocation(line: 80, column: 2, scope: !189)
!199 = !DISubprogram(name: "acpi_rev_override_setup", scope: !186, file: !186, line: 58, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubroutineType(types: !201)
!201 = !{!84, !128}
