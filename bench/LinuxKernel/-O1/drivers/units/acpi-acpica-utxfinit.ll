; ModuleID = 'drivers/acpi/acpica/utxfinit.c'
source_filename = "drivers/acpi/acpica/utxfinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_startup_flags = external dso_local global i32, align 4
@_acpi_module_name = internal constant [9 x i8] c"utxfinit\00", align 1, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"During OSL initialization\00", align 1, !dbg !13
@.str.1 = private unnamed_addr constant [33 x i8] c"During initialization of globals\00", align 1, !dbg !19
@.str.2 = private unnamed_addr constant [29 x i8] c"During Global Mutex creation\00", align 1, !dbg !24
@.str.3 = private unnamed_addr constant [32 x i8] c"During Namespace initialization\00", align 1, !dbg !29
@.str.4 = private unnamed_addr constant [37 x i8] c"During OSI interfaces initialization\00", align 1, !dbg !34
@acpi_gbl_early_initialization = external dso_local global i8, align 1
@acpi_gbl_original_mode = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"AcpiEnable failed\00", align 1, !dbg !39
@.str.6 = private unnamed_addr constant [29 x i8] c"Could not map the FACS table\00", align 1, !dbg !44

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_initialize_subsystem() #0 section ".init.text" align 16 !dbg !59 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !63
  call void @llvm.dbg.declare(metadata ptr %status, metadata !62, metadata !DIExpression()), !dbg !64
  store i32 1, ptr @acpi_gbl_startup_flags, align 4, !dbg !65
  %call = call i32 @acpi_os_initialize() #6, !dbg !66
  store i32 %call, ptr %status, align 4, !dbg !67
  %0 = load i32, ptr %status, align 4, !dbg !68
  %tobool = icmp ne i32 %0, 0, !dbg !68
  br i1 %tobool, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !71
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 51, i32 noundef %1, ptr noundef @.str) #7, !dbg !71
  %2 = load i32, ptr %status, align 4, !dbg !73
  store i32 %2, ptr %retval, align 4, !dbg !73
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !73

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_ut_init_globals() #7, !dbg !74
  store i32 %call1, ptr %status, align 4, !dbg !75
  %3 = load i32, ptr %status, align 4, !dbg !76
  %tobool2 = icmp ne i32 %3, 0, !dbg !76
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !78

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4, !dbg !79
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 59, i32 noundef %4, ptr noundef @.str.1) #7, !dbg !79
  %5 = load i32, ptr %status, align 4, !dbg !81
  store i32 %5, ptr %retval, align 4, !dbg !81
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !81

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @acpi_ut_mutex_initialize() #7, !dbg !82
  store i32 %call5, ptr %status, align 4, !dbg !83
  %6 = load i32, ptr %status, align 4, !dbg !84
  %tobool6 = icmp ne i32 %6, 0, !dbg !84
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !86

if.then7:                                         ; preds = %if.end4
  %7 = load i32, ptr %status, align 4, !dbg !87
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 68, i32 noundef %7, ptr noundef @.str.2) #7, !dbg !87
  %8 = load i32, ptr %status, align 4, !dbg !89
  store i32 %8, ptr %retval, align 4, !dbg !89
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !89

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @acpi_ns_root_initialize() #7, !dbg !90
  store i32 %call9, ptr %status, align 4, !dbg !91
  %9 = load i32, ptr %status, align 4, !dbg !92
  %tobool10 = icmp ne i32 %9, 0, !dbg !92
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !94

if.then11:                                        ; preds = %if.end8
  %10 = load i32, ptr %status, align 4, !dbg !95
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 79, i32 noundef %10, ptr noundef @.str.3) #7, !dbg !95
  %11 = load i32, ptr %status, align 4, !dbg !97
  store i32 %11, ptr %retval, align 4, !dbg !97
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @acpi_ut_initialize_interfaces() #7, !dbg !98
  store i32 %call13, ptr %status, align 4, !dbg !99
  %12 = load i32, ptr %status, align 4, !dbg !100
  %tobool14 = icmp ne i32 %12, 0, !dbg !100
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !102

if.then15:                                        ; preds = %if.end12
  %13 = load i32, ptr %status, align 4, !dbg !103
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 88, i32 noundef %13, ptr noundef @.str.4) #7, !dbg !103
  %14 = load i32, ptr %status, align 4, !dbg !105
  store i32 %14, ptr %retval, align 4, !dbg !105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !105

if.end16:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !106

cleanup:                                          ; preds = %if.end16, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !107
  %15 = load i32, ptr %retval, align 4, !dbg !107
  ret i32 %15, !dbg !107
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !108 dso_local i32 @acpi_os_initialize() #3 section ".init.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !110 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !115 dso_local i32 @acpi_ut_init_globals() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !117 dso_local i32 @acpi_ut_mutex_initialize() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !118 dso_local i32 @acpi_ns_root_initialize() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !120 dso_local i32 @acpi_ut_initialize_interfaces() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_enable_subsystem(i32 noundef %flags) #0 section ".init.text" align 16 !dbg !121 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !125, metadata !DIExpression()), !dbg !127
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %status, metadata !126, metadata !DIExpression()), !dbg !129
  store i32 0, ptr %status, align 4, !dbg !129
  store i8 0, ptr @acpi_gbl_early_initialization, align 1, !dbg !130
  %0 = load i32, ptr %flags.addr, align 4, !dbg !131
  %and = and i32 %0, 2, !dbg !133
  %tobool = icmp ne i32 %and, 0, !dbg !133
  br i1 %tobool, label %if.end4, label %if.then, !dbg !134

if.then:                                          ; preds = %entry
  %call = call i32 @acpi_hw_get_mode() #7, !dbg !135
  store i32 %call, ptr @acpi_gbl_original_mode, align 4, !dbg !137
  %call1 = call i32 @acpi_enable() #7, !dbg !138
  store i32 %call1, ptr %status, align 4, !dbg !139
  %1 = load i32, ptr %status, align 4, !dbg !140
  %tobool2 = icmp ne i32 %1, 0, !dbg !140
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !142

if.then3:                                         ; preds = %if.then
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 135, ptr noundef @.str.5) #7, !dbg !143
  %2 = load i32, ptr %status, align 4, !dbg !145
  store i32 %2, ptr %retval, align 4, !dbg !145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !145

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !146

if.end4:                                          ; preds = %if.end, %entry
  %3 = load i32, ptr %flags.addr, align 4, !dbg !147
  %and5 = and i32 %3, 1, !dbg !149
  %tobool6 = icmp ne i32 %and5, 0, !dbg !149
  br i1 %tobool6, label %if.end12, label %if.then7, !dbg !150

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @acpi_tb_initialize_facs() #7, !dbg !151
  store i32 %call8, ptr %status, align 4, !dbg !153
  %4 = load i32, ptr %status, align 4, !dbg !154
  %tobool9 = icmp ne i32 %4, 0, !dbg !154
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !156

if.then10:                                        ; preds = %if.then7
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 147, ptr noundef @.str.6) #7, !dbg !157
  %5 = load i32, ptr %status, align 4, !dbg !159
  store i32 %5, ptr %retval, align 4, !dbg !159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !159

if.end11:                                         ; preds = %if.then7
  br label %if.end12, !dbg !160

if.end12:                                         ; preds = %if.end11, %if.end4
  %6 = load i32, ptr %flags.addr, align 4, !dbg !161
  %and13 = and i32 %6, 8, !dbg !163
  %tobool14 = icmp ne i32 %and13, 0, !dbg !163
  br i1 %tobool14, label %if.end20, label %if.then15, !dbg !164

if.then15:                                        ; preds = %if.end12
  %call16 = call i32 @acpi_ev_initialize_events() #7, !dbg !165
  store i32 %call16, ptr %status, align 4, !dbg !167
  %7 = load i32, ptr %status, align 4, !dbg !168
  %tobool17 = icmp ne i32 %7, 0, !dbg !168
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !170

if.then18:                                        ; preds = %if.then15
  %8 = load i32, ptr %status, align 4, !dbg !171
  store i32 %8, ptr %retval, align 4, !dbg !171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !171

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !173

if.end20:                                         ; preds = %if.end19, %if.end12
  %9 = load i32, ptr %flags.addr, align 4, !dbg !174
  %and21 = and i32 %9, 16, !dbg !176
  %tobool22 = icmp ne i32 %and21, 0, !dbg !176
  br i1 %tobool22, label %if.end28, label %if.then23, !dbg !177

if.then23:                                        ; preds = %if.end20
  %call24 = call i32 @acpi_ev_install_xrupt_handlers() #7, !dbg !178
  store i32 %call24, ptr %status, align 4, !dbg !180
  %10 = load i32, ptr %status, align 4, !dbg !181
  %tobool25 = icmp ne i32 %10, 0, !dbg !181
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !183

if.then26:                                        ; preds = %if.then23
  %11 = load i32, ptr %status, align 4, !dbg !184
  store i32 %11, ptr %retval, align 4, !dbg !184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !184

if.end27:                                         ; preds = %if.then23
  br label %if.end28, !dbg !186

if.end28:                                         ; preds = %if.end27, %if.end20
  %12 = load i32, ptr %status, align 4, !dbg !187
  store i32 %12, ptr %retval, align 4, !dbg !187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !187

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then18, %if.then10, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !188
  %13 = load i32, ptr %retval, align 4, !dbg !188
  ret i32 %13, !dbg !188
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !189 dso_local i32 @acpi_hw_get_mode() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !193 dso_local i32 @acpi_enable() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !194 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !197 dso_local i32 @acpi_tb_initialize_facs() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !199 dso_local i32 @acpi_ev_initialize_events() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !201 dso_local i32 @acpi_ev_install_xrupt_handlers() #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_initialize_objects(i32 noundef %flags) #0 section ".init.text" align 16 !dbg !202 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !204, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %status, metadata !205, metadata !DIExpression()), !dbg !208
  store i32 0, ptr %status, align 4, !dbg !208
  %0 = load i32, ptr %flags.addr, align 4, !dbg !209
  %and = and i32 %0, 192, !dbg !211
  %tobool = icmp ne i32 %and, 0, !dbg !211
  br i1 %tobool, label %if.end3, label %if.then, !dbg !212

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !213
  %call = call i32 @acpi_ns_initialize_devices(i32 noundef %1) #7, !dbg !215
  store i32 %call, ptr %status, align 4, !dbg !216
  %2 = load i32, ptr %status, align 4, !dbg !217
  %tobool1 = icmp ne i32 %2, 0, !dbg !217
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !219

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr %status, align 4, !dbg !220
  store i32 %3, ptr %retval, align 4, !dbg !220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !220

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !222

if.end3:                                          ; preds = %if.end, %entry
  %call4 = call i32 @acpi_purge_cached_objects() #7, !dbg !223
  store i32 %call4, ptr %status, align 4, !dbg !224
  %4 = load i32, ptr @acpi_gbl_startup_flags, align 4, !dbg !225
  %or = or i32 %4, 2, !dbg !225
  store i32 %or, ptr @acpi_gbl_startup_flags, align 4, !dbg !225
  %5 = load i32, ptr %status, align 4, !dbg !226
  store i32 %5, ptr %retval, align 4, !dbg !226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !226

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !227
  %6 = load i32, ptr %retval, align 4, !dbg !227
  ret i32 %6, !dbg !227
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !228 dso_local i32 @acpi_ns_initialize_devices(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !229 dso_local i32 @acpi_purge_cached_objects() #4

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { cold noredzone }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 20, type: !46, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utxfinit.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utxfinit\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utxfinit.ll drivers/acpi/acpica/utxfinit.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utxfinit.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "144e54e045f52e83f6e1db499a2c900e")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !19, !24, !29, !34, !39, !44, !0}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 208, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!18}
!18 = !DISubrange(count: 26)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 264, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 33)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 232, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 29)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 32)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 296, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 37)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 144, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 18)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !26, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 72, elements: !48)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!48 = !{!49}
!49 = !DISubrange(count: 9)
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 8, !"cf-protection-branch", i32 1}
!54 = !{i32 4, !"function_return_thunk_extern", i32 1}
!55 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!56 = !{i32 1, !"Code Model", i32 2}
!57 = !{i32 1, !"override-stack-alignment", i32 8}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = distinct !DISubprogram(name: "acpi_initialize_subsystem", scope: !3, file: !3, line: 38, type: !60, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!60 = !DISubroutineType(types: !4)
!61 = !{!62}
!62 = !DILocalVariable(name: "status", scope: !59, file: !3, line: 40, type: !5)
!63 = !DILocation(line: 40, column: 2, scope: !59)
!64 = !DILocation(line: 40, column: 14, scope: !59)
!65 = !DILocation(line: 44, column: 25, scope: !59)
!66 = !DILocation(line: 49, column: 11, scope: !59)
!67 = !DILocation(line: 49, column: 9, scope: !59)
!68 = !DILocation(line: 50, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !59, file: !3, line: 50, column: 6)
!70 = !DILocation(line: 50, column: 6, scope: !59)
!71 = !DILocation(line: 51, column: 3, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !3, line: 50, column: 28)
!73 = !DILocation(line: 52, column: 3, scope: !72)
!74 = !DILocation(line: 57, column: 11, scope: !59)
!75 = !DILocation(line: 57, column: 9, scope: !59)
!76 = !DILocation(line: 58, column: 6, scope: !77)
!77 = distinct !DILexicalBlock(scope: !59, file: !3, line: 58, column: 6)
!78 = !DILocation(line: 58, column: 6, scope: !59)
!79 = !DILocation(line: 59, column: 3, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !3, line: 58, column: 28)
!81 = !DILocation(line: 61, column: 3, scope: !80)
!82 = !DILocation(line: 66, column: 11, scope: !59)
!83 = !DILocation(line: 66, column: 9, scope: !59)
!84 = !DILocation(line: 67, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !59, file: !3, line: 67, column: 6)
!86 = !DILocation(line: 67, column: 6, scope: !59)
!87 = !DILocation(line: 68, column: 3, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 67, column: 28)
!89 = !DILocation(line: 70, column: 3, scope: !88)
!90 = !DILocation(line: 77, column: 11, scope: !59)
!91 = !DILocation(line: 77, column: 9, scope: !59)
!92 = !DILocation(line: 78, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !59, file: !3, line: 78, column: 6)
!94 = !DILocation(line: 78, column: 6, scope: !59)
!95 = !DILocation(line: 79, column: 3, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !3, line: 78, column: 28)
!97 = !DILocation(line: 81, column: 3, scope: !96)
!98 = !DILocation(line: 86, column: 11, scope: !59)
!99 = !DILocation(line: 86, column: 9, scope: !59)
!100 = !DILocation(line: 87, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !59, file: !3, line: 87, column: 6)
!102 = !DILocation(line: 87, column: 6, scope: !59)
!103 = !DILocation(line: 88, column: 3, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !3, line: 87, column: 28)
!105 = !DILocation(line: 90, column: 3, scope: !104)
!106 = !DILocation(line: 93, column: 2, scope: !59)
!107 = !DILocation(line: 94, column: 1, scope: !59)
!108 = !DISubprogram(name: "acpi_os_initialize", scope: !109, file: !109, line: 40, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!110 = !DISubprogram(name: "acpi_exception", scope: !111, file: !111, line: 906, type: !112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!111 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114, !7, !5, !114, null}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!115 = !DISubprogram(name: "acpi_ut_init_globals", scope: !116, file: !116, line: 216, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!117 = !DISubprogram(name: "acpi_ut_mutex_initialize", scope: !116, file: !116, line: 642, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubprogram(name: "acpi_ns_root_initialize", scope: !119, file: !119, line: 115, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!120 = !DISubprogram(name: "acpi_ut_initialize_interfaces", scope: !116, file: !116, line: 467, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = distinct !DISubprogram(name: "acpi_enable_subsystem", scope: !3, file: !3, line: 110, type: !122, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !124)
!122 = !DISubroutineType(types: !123)
!123 = !{!5, !7}
!124 = !{!125, !126}
!125 = !DILocalVariable(name: "flags", arg: 1, scope: !121, file: !3, line: 110, type: !7)
!126 = !DILocalVariable(name: "status", scope: !121, file: !3, line: 112, type: !5)
!127 = !DILocation(line: 110, column: 58, scope: !121)
!128 = !DILocation(line: 112, column: 2, scope: !121)
!129 = !DILocation(line: 112, column: 14, scope: !121)
!130 = !DILocation(line: 121, column: 32, scope: !121)
!131 = !DILocation(line: 127, column: 8, scope: !132)
!132 = distinct !DILexicalBlock(scope: !121, file: !3, line: 127, column: 6)
!133 = !DILocation(line: 127, column: 14, scope: !132)
!134 = !DILocation(line: 127, column: 6, scope: !121)
!135 = !DILocation(line: 131, column: 28, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !3, line: 127, column: 38)
!137 = !DILocation(line: 131, column: 26, scope: !136)
!138 = !DILocation(line: 133, column: 12, scope: !136)
!139 = !DILocation(line: 133, column: 10, scope: !136)
!140 = !DILocation(line: 134, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !3, line: 134, column: 7)
!142 = !DILocation(line: 134, column: 7, scope: !136)
!143 = !DILocation(line: 135, column: 4, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !3, line: 134, column: 29)
!145 = !DILocation(line: 136, column: 4, scope: !144)
!146 = !DILocation(line: 138, column: 2, scope: !136)
!147 = !DILocation(line: 144, column: 8, scope: !148)
!148 = distinct !DILexicalBlock(scope: !121, file: !3, line: 144, column: 6)
!149 = !DILocation(line: 144, column: 14, scope: !148)
!150 = !DILocation(line: 144, column: 6, scope: !121)
!151 = !DILocation(line: 145, column: 12, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !3, line: 144, column: 36)
!153 = !DILocation(line: 145, column: 10, scope: !152)
!154 = !DILocation(line: 146, column: 7, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !3, line: 146, column: 7)
!156 = !DILocation(line: 146, column: 7, scope: !152)
!157 = !DILocation(line: 147, column: 4, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 146, column: 29)
!159 = !DILocation(line: 148, column: 4, scope: !158)
!160 = !DILocation(line: 150, column: 2, scope: !152)
!161 = !DILocation(line: 166, column: 8, scope: !162)
!162 = distinct !DILexicalBlock(scope: !121, file: !3, line: 166, column: 6)
!163 = !DILocation(line: 166, column: 14, scope: !162)
!164 = !DILocation(line: 166, column: 6, scope: !121)
!165 = !DILocation(line: 170, column: 12, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 166, column: 37)
!167 = !DILocation(line: 170, column: 10, scope: !166)
!168 = !DILocation(line: 171, column: 7, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !3, line: 171, column: 7)
!170 = !DILocation(line: 171, column: 7, scope: !166)
!171 = !DILocation(line: 172, column: 4, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !3, line: 171, column: 29)
!173 = !DILocation(line: 174, column: 2, scope: !166)
!174 = !DILocation(line: 180, column: 8, scope: !175)
!175 = distinct !DILexicalBlock(scope: !121, file: !3, line: 180, column: 6)
!176 = !DILocation(line: 180, column: 14, scope: !175)
!177 = !DILocation(line: 180, column: 6, scope: !121)
!178 = !DILocation(line: 184, column: 12, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 180, column: 39)
!180 = !DILocation(line: 184, column: 10, scope: !179)
!181 = !DILocation(line: 185, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 185, column: 7)
!183 = !DILocation(line: 185, column: 7, scope: !179)
!184 = !DILocation(line: 186, column: 4, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 185, column: 29)
!186 = !DILocation(line: 188, column: 2, scope: !179)
!187 = !DILocation(line: 191, column: 2, scope: !121)
!188 = !DILocation(line: 192, column: 1, scope: !121)
!189 = !DISubprogram(name: "acpi_hw_get_mode", scope: !190, file: !190, line: 26, type: !191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!191 = !DISubroutineType(types: !192)
!192 = !{!7}
!193 = !DISubprogram(name: "acpi_enable", scope: !111, file: !111, line: 421, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!194 = !DISubprogram(name: "acpi_warning", scope: !111, file: !111, line: 912, type: !195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !114, !7, !114, null}
!197 = !DISubprogram(name: "acpi_tb_initialize_facs", scope: !198, file: !198, line: 121, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!198 = !DIFile(filename: "drivers/acpi/acpica/actables.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb0787ba059aac7511e633019dab5fb8")
!199 = !DISubprogram(name: "acpi_ev_initialize_events", scope: !200, file: !200, line: 30, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!201 = !DISubprogram(name: "acpi_ev_install_xrupt_handlers", scope: !200, file: !200, line: 32, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = distinct !DISubprogram(name: "acpi_initialize_objects", scope: !3, file: !3, line: 208, type: !122, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!203 = !{!204, !205}
!204 = !DILocalVariable(name: "flags", arg: 1, scope: !202, file: !3, line: 208, type: !7)
!205 = !DILocalVariable(name: "status", scope: !202, file: !3, line: 210, type: !5)
!206 = !DILocation(line: 208, column: 60, scope: !202)
!207 = !DILocation(line: 210, column: 2, scope: !202)
!208 = !DILocation(line: 210, column: 14, scope: !202)
!209 = !DILocation(line: 238, column: 8, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !3, line: 238, column: 6)
!211 = !DILocation(line: 238, column: 14, scope: !210)
!212 = !DILocation(line: 238, column: 6, scope: !202)
!213 = !DILocation(line: 239, column: 39, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !3, line: 238, column: 69)
!215 = !DILocation(line: 239, column: 12, scope: !214)
!216 = !DILocation(line: 239, column: 10, scope: !214)
!217 = !DILocation(line: 240, column: 7, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 240, column: 7)
!219 = !DILocation(line: 240, column: 7, scope: !214)
!220 = !DILocation(line: 241, column: 4, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !3, line: 240, column: 29)
!222 = !DILocation(line: 243, column: 2, scope: !214)
!223 = !DILocation(line: 250, column: 11, scope: !202)
!224 = !DILocation(line: 250, column: 9, scope: !202)
!225 = !DILocation(line: 252, column: 25, scope: !202)
!226 = !DILocation(line: 253, column: 2, scope: !202)
!227 = !DILocation(line: 254, column: 1, scope: !202)
!228 = !DISubprogram(name: "acpi_ns_initialize_devices", scope: !119, file: !119, line: 59, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!229 = !DISubprogram(name: "acpi_purge_cached_objects", scope: !111, file: !111, line: 432, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
