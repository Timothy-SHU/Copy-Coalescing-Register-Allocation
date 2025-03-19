; ModuleID = 'drivers/acpi/acpica/exsystem.c'
source_filename = "drivers/acpi/acpica/exsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_event = type { ptr, i8, i8, i16, i8, ptr }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }

@_acpi_module_name = internal constant [9 x i8] c"exsystem\00", align 1, !dbg !0
@.str = private unnamed_addr constant [33 x i8] c"Time parameter is too large (%u)\00", align 1, !dbg !16
@.str.1 = private unnamed_addr constant [76 x i8] c"Time parameter %u us > 100 us violating ACPI spec, please fix the firmware.\00", align 1, !dbg !22

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_system_wait_semaphore(ptr noundef %semaphore, i16 noundef zeroext %timeout) #0 align 16 !dbg !40 {
entry:
  %retval = alloca i32, align 4
  %semaphore.addr = alloca ptr, align 8
  %timeout.addr = alloca i16, align 2
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %semaphore, ptr %semaphore.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %semaphore.addr, metadata !45, metadata !DIExpression()), !dbg !48
  store i16 %timeout, ptr %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !46, metadata !DIExpression()), !dbg !49
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !50
  call void @llvm.dbg.declare(metadata ptr %status, metadata !47, metadata !DIExpression()), !dbg !51
  %0 = load ptr, ptr %semaphore.addr, align 8, !dbg !52
  %call = call i32 @acpi_os_wait_semaphore(ptr noundef %0, i32 noundef 1, i16 noundef zeroext 0) #5, !dbg !53
  store i32 %call, ptr %status, align 4, !dbg !54
  %1 = load i32, ptr %status, align 4, !dbg !55
  %tobool = icmp ne i32 %1, 0, !dbg !55
  br i1 %tobool, label %if.end, label %if.then, !dbg !57

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !58
  store i32 %2, ptr %retval, align 4, !dbg !58
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !58

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !60
  %cmp = icmp eq i32 %3, 17, !dbg !62
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !63

if.then1:                                         ; preds = %if.end
  call void @acpi_ex_exit_interpreter() #5, !dbg !64
  %4 = load ptr, ptr %semaphore.addr, align 8, !dbg !66
  %5 = load i16, ptr %timeout.addr, align 2, !dbg !67
  %call2 = call i32 @acpi_os_wait_semaphore(ptr noundef %4, i32 noundef 1, i16 noundef zeroext %5) #5, !dbg !68
  store i32 %call2, ptr %status, align 4, !dbg !69
  call void @acpi_ex_enter_interpreter() #5, !dbg !70
  br label %if.end3, !dbg !71

if.end3:                                          ; preds = %if.then1, %if.end
  %6 = load i32, ptr %status, align 4, !dbg !72
  store i32 %6, ptr %retval, align 4, !dbg !72
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !72

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !73
  %7 = load i32, ptr %retval, align 4, !dbg !73
  ret i32 %7, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !74 dso_local i32 @acpi_os_wait_semaphore(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !78 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !82 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_system_wait_mutex(ptr noundef %mutex, i16 noundef zeroext %timeout) #0 align 16 !dbg !83 {
entry:
  %retval = alloca i32, align 4
  %mutex.addr = alloca ptr, align 8
  %timeout.addr = alloca i16, align 2
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mutex, ptr %mutex.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mutex.addr, metadata !85, metadata !DIExpression()), !dbg !88
  store i16 %timeout, ptr %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !86, metadata !DIExpression()), !dbg !89
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %status, metadata !87, metadata !DIExpression()), !dbg !91
  %0 = load ptr, ptr %mutex.addr, align 8, !dbg !92
  %call = call i32 @acpi_os_wait_semaphore(ptr noundef %0, i32 noundef 1, i16 noundef zeroext 0) #5, !dbg !92
  store i32 %call, ptr %status, align 4, !dbg !93
  %1 = load i32, ptr %status, align 4, !dbg !94
  %tobool = icmp ne i32 %1, 0, !dbg !94
  br i1 %tobool, label %if.end, label %if.then, !dbg !96

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !97
  store i32 %2, ptr %retval, align 4, !dbg !97
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !99
  %cmp = icmp eq i32 %3, 17, !dbg !101
  br i1 %cmp, label %if.then1, label %if.end3, !dbg !102

if.then1:                                         ; preds = %if.end
  call void @acpi_ex_exit_interpreter() #5, !dbg !103
  %4 = load ptr, ptr %mutex.addr, align 8, !dbg !105
  %5 = load i16, ptr %timeout.addr, align 2, !dbg !105
  %call2 = call i32 @acpi_os_wait_semaphore(ptr noundef %4, i32 noundef 1, i16 noundef zeroext %5) #5, !dbg !105
  store i32 %call2, ptr %status, align 4, !dbg !106
  call void @acpi_ex_enter_interpreter() #5, !dbg !107
  br label %if.end3, !dbg !108

if.end3:                                          ; preds = %if.then1, %if.end
  %6 = load i32, ptr %status, align 4, !dbg !109
  store i32 %6, ptr %retval, align 4, !dbg !109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !109

cleanup:                                          ; preds = %if.end3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !110
  %7 = load i32, ptr %retval, align 4, !dbg !110
  ret i32 %7, !dbg !110
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_system_do_stall(i32 noundef %how_long_us) #0 align 16 !dbg !111 {
entry:
  %how_long_us.addr = alloca i32, align 4
  %status = alloca i32, align 4
  store i32 %how_long_us, ptr %how_long_us.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %how_long_us.addr, metadata !115, metadata !DIExpression()), !dbg !117
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %status, metadata !116, metadata !DIExpression()), !dbg !119
  store i32 0, ptr %status, align 4, !dbg !119
  %0 = load i32, ptr %how_long_us.addr, align 4, !dbg !120
  %cmp = icmp ugt i32 %0, 255, !dbg !122
  br i1 %cmp, label %if.then, label %if.else, !dbg !123

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %how_long_us.addr, align 4, !dbg !124
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 136, ptr noundef @.str, i32 noundef %1) #5, !dbg !124
  store i32 12292, ptr %status, align 4, !dbg !126
  br label %if.end3, !dbg !127

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %how_long_us.addr, align 4, !dbg !128
  %cmp1 = icmp ugt i32 %2, 100, !dbg !131
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !132

if.then2:                                         ; preds = %if.else
  %3 = load i32, ptr %how_long_us.addr, align 4, !dbg !133
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 141, ptr noundef @.str.1, i32 noundef %3) #5, !dbg !133
  br label %if.end, !dbg !135

if.end:                                           ; preds = %if.then2, %if.else
  %4 = load i32, ptr %how_long_us.addr, align 4, !dbg !136
  call void @acpi_os_stall(i32 noundef %4) #5, !dbg !137
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %5 = load i32, ptr %status, align 4, !dbg !138
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !139
  ret i32 %5, !dbg !140
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !141 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !146 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !147 dso_local void @acpi_os_stall(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_system_do_sleep(i64 noundef %how_long_ms) #0 align 16 !dbg !150 {
entry:
  %how_long_ms.addr = alloca i64, align 8
  store i64 %how_long_ms, ptr %how_long_ms.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %how_long_ms.addr, metadata !157, metadata !DIExpression()), !dbg !158
  call void @acpi_ex_exit_interpreter() #5, !dbg !159
  %0 = load i64, ptr %how_long_ms.addr, align 8, !dbg !160
  %cmp = icmp ugt i64 %0, 2000, !dbg !162
  br i1 %cmp, label %if.then, label %if.end, !dbg !163

if.then:                                          ; preds = %entry
  store i64 2000, ptr %how_long_ms.addr, align 8, !dbg !164
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %how_long_ms.addr, align 8, !dbg !167
  call void @acpi_os_sleep(i64 noundef %1) #5, !dbg !168
  call void @acpi_ex_enter_interpreter() #5, !dbg !169
  ret i32 0, !dbg !170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !171 dso_local void @acpi_os_sleep(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_system_signal_event(ptr noundef %obj_desc) #0 align 16 !dbg !174 {
entry:
  %obj_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !938, metadata !DIExpression()), !dbg !940
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !941
  call void @llvm.dbg.declare(metadata ptr %status, metadata !939, metadata !DIExpression()), !dbg !942
  store i32 0, ptr %status, align 4, !dbg !942
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !943
  %tobool = icmp ne ptr %0, null, !dbg !943
  br i1 %tobool, label %if.then, label %if.end, !dbg !945

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !946
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, ptr %1, i32 0, i32 5, !dbg !948
  %2 = load ptr, ptr %os_semaphore, align 8, !dbg !948
  %call = call i32 @acpi_os_signal_semaphore(ptr noundef %2, i32 noundef 1) #5, !dbg !949
  store i32 %call, ptr %status, align 4, !dbg !950
  br label %if.end, !dbg !951

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %status, align 4, !dbg !952
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !953
  ret i32 %3, !dbg !952
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !954 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_system_wait_event(ptr noundef %time_desc, ptr noundef %obj_desc) #0 align 16 !dbg !957 {
entry:
  %time_desc.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %time_desc, ptr %time_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time_desc.addr, metadata !961, metadata !DIExpression()), !dbg !964
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !962, metadata !DIExpression()), !dbg !965
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !966
  call void @llvm.dbg.declare(metadata ptr %status, metadata !963, metadata !DIExpression()), !dbg !967
  store i32 0, ptr %status, align 4, !dbg !967
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !968
  %tobool = icmp ne ptr %0, null, !dbg !968
  br i1 %tobool, label %if.then, label %if.end, !dbg !970

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !971
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, ptr %1, i32 0, i32 5, !dbg !973
  %2 = load ptr, ptr %os_semaphore, align 8, !dbg !973
  %3 = load ptr, ptr %time_desc.addr, align 8, !dbg !974
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %3, i32 0, i32 6, !dbg !975
  %4 = load i64, ptr %value, align 8, !dbg !975
  %conv = trunc i64 %4 to i16, !dbg !976
  %call = call i32 @acpi_ex_system_wait_semaphore(ptr noundef %2, i16 noundef zeroext %conv) #5, !dbg !977
  store i32 %call, ptr %status, align 4, !dbg !978
  br label %if.end, !dbg !979

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %status, align 4, !dbg !980
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !981
  ret i32 %5, !dbg !980
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_system_reset_event(ptr noundef %obj_desc) #0 align 16 !dbg !982 {
entry:
  %obj_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %temp_semaphore = alloca ptr, align 8
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !984, metadata !DIExpression()), !dbg !987
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !988
  call void @llvm.dbg.declare(metadata ptr %status, metadata !985, metadata !DIExpression()), !dbg !989
  store i32 0, ptr %status, align 4, !dbg !989
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_semaphore) #4, !dbg !990
  call void @llvm.dbg.declare(metadata ptr %temp_semaphore, metadata !986, metadata !DIExpression()), !dbg !991
  %call = call i32 @acpi_os_create_semaphore(i32 noundef -1, i32 noundef 0, ptr noundef %temp_semaphore) #5, !dbg !992
  store i32 %call, ptr %status, align 4, !dbg !993
  %0 = load i32, ptr %status, align 4, !dbg !994
  %tobool = icmp ne i32 %0, 0, !dbg !994
  br i1 %tobool, label %if.end, label %if.then, !dbg !996

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !997
  %os_semaphore = getelementptr inbounds %struct.acpi_object_event, ptr %1, i32 0, i32 5, !dbg !999
  %2 = load ptr, ptr %os_semaphore, align 8, !dbg !999
  %call1 = call i32 @acpi_os_delete_semaphore(ptr noundef %2) #5, !dbg !1000
  %3 = load ptr, ptr %temp_semaphore, align 8, !dbg !1001
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1002
  %os_semaphore2 = getelementptr inbounds %struct.acpi_object_event, ptr %4, i32 0, i32 5, !dbg !1003
  store ptr %3, ptr %os_semaphore2, align 8, !dbg !1004
  br label %if.end, !dbg !1005

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %status, align 4, !dbg !1006
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_semaphore) #4, !dbg !1007
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1007
  ret i32 %5, !dbg !1008
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1009 dso_local i32 @acpi_os_create_semaphore(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1012 dso_local i32 @acpi_os_delete_semaphore(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !27, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exsystem.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exsystem\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exsystem.ll drivers/acpi/acpica/exsystem.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exsystem.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8dc129aacc8d6f9d4bdb9bab170f874f")
!4 = !{!5, !12, !7}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !14)
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !{!16, !22, !0}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 264, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!21}
!21 = !DISubrange(count: 33)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 141, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 608, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 76)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 72, elements: !29)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!29 = !{!30}
!30 = !DISubrange(count: 9)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 8, !"cf-protection-branch", i32 1}
!35 = !{i32 4, !"function_return_thunk_extern", i32 1}
!36 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!37 = !{i32 1, !"Code Model", i32 2}
!38 = !{i32 1, !"override-stack-alignment", i32 8}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = distinct !DISubprogram(name: "acpi_ex_system_wait_semaphore", scope: !3, file: !3, line: 31, type: !41, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!41 = !DISubroutineType(types: !42)
!42 = !{!5, !43, !12}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !{!45, !46, !47}
!45 = !DILocalVariable(name: "semaphore", arg: 1, scope: !40, file: !3, line: 31, type: !43)
!46 = !DILocalVariable(name: "timeout", arg: 2, scope: !40, file: !3, line: 31, type: !12)
!47 = !DILocalVariable(name: "status", scope: !40, file: !3, line: 33, type: !5)
!48 = !DILocation(line: 31, column: 58, scope: !40)
!49 = !DILocation(line: 31, column: 73, scope: !40)
!50 = !DILocation(line: 33, column: 2, scope: !40)
!51 = !DILocation(line: 33, column: 14, scope: !40)
!52 = !DILocation(line: 37, column: 34, scope: !40)
!53 = !DILocation(line: 37, column: 11, scope: !40)
!54 = !DILocation(line: 37, column: 9, scope: !40)
!55 = !DILocation(line: 38, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !40, file: !3, line: 38, column: 6)
!57 = !DILocation(line: 38, column: 6, scope: !40)
!58 = !DILocation(line: 39, column: 3, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 38, column: 28)
!60 = !DILocation(line: 42, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !40, file: !3, line: 42, column: 6)
!62 = !DILocation(line: 42, column: 13, scope: !61)
!63 = !DILocation(line: 42, column: 6, scope: !40)
!64 = !DILocation(line: 46, column: 3, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !3, line: 42, column: 25)
!66 = !DILocation(line: 47, column: 35, scope: !65)
!67 = !DILocation(line: 47, column: 49, scope: !65)
!68 = !DILocation(line: 47, column: 12, scope: !65)
!69 = !DILocation(line: 47, column: 10, scope: !65)
!70 = !DILocation(line: 55, column: 3, scope: !65)
!71 = !DILocation(line: 56, column: 2, scope: !65)
!72 = !DILocation(line: 58, column: 2, scope: !40)
!73 = !DILocation(line: 59, column: 1, scope: !40)
!74 = !DISubprogram(name: "acpi_os_wait_semaphore", scope: !75, file: !75, line: 136, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!75 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!76 = !DISubroutineType(types: !77)
!77 = !{!5, !43, !7, !12}
!78 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !79, file: !79, line: 466, type: !80, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!79 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!80 = !DISubroutineType(types: !81)
!81 = !{null}
!82 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !79, file: !79, line: 464, type: !80, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = distinct !DISubprogram(name: "acpi_ex_system_wait_mutex", scope: !3, file: !3, line: 76, type: !41, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !84)
!84 = !{!85, !86, !87}
!85 = !DILocalVariable(name: "mutex", arg: 1, scope: !83, file: !3, line: 76, type: !43)
!86 = !DILocalVariable(name: "timeout", arg: 2, scope: !83, file: !3, line: 76, type: !12)
!87 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 78, type: !5)
!88 = !DILocation(line: 76, column: 50, scope: !83)
!89 = !DILocation(line: 76, column: 61, scope: !83)
!90 = !DILocation(line: 78, column: 2, scope: !83)
!91 = !DILocation(line: 78, column: 14, scope: !83)
!92 = !DILocation(line: 82, column: 11, scope: !83)
!93 = !DILocation(line: 82, column: 9, scope: !83)
!94 = !DILocation(line: 83, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !83, file: !3, line: 83, column: 6)
!96 = !DILocation(line: 83, column: 6, scope: !83)
!97 = !DILocation(line: 84, column: 3, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !3, line: 83, column: 28)
!99 = !DILocation(line: 87, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !83, file: !3, line: 87, column: 6)
!101 = !DILocation(line: 87, column: 13, scope: !100)
!102 = !DILocation(line: 87, column: 6, scope: !83)
!103 = !DILocation(line: 91, column: 3, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !3, line: 87, column: 25)
!105 = !DILocation(line: 92, column: 12, scope: !104)
!106 = !DILocation(line: 92, column: 10, scope: !104)
!107 = !DILocation(line: 100, column: 3, scope: !104)
!108 = !DILocation(line: 101, column: 2, scope: !104)
!109 = !DILocation(line: 103, column: 2, scope: !83)
!110 = !DILocation(line: 104, column: 1, scope: !83)
!111 = distinct !DISubprogram(name: "acpi_ex_system_do_stall", scope: !3, file: !3, line: 123, type: !112, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!5, !7}
!114 = !{!115, !116}
!115 = !DILocalVariable(name: "how_long_us", arg: 1, scope: !111, file: !3, line: 123, type: !7)
!116 = !DILocalVariable(name: "status", scope: !111, file: !3, line: 125, type: !5)
!117 = !DILocation(line: 123, column: 41, scope: !111)
!118 = !DILocation(line: 125, column: 2, scope: !111)
!119 = !DILocation(line: 125, column: 14, scope: !111)
!120 = !DILocation(line: 129, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !111, file: !3, line: 129, column: 6)
!122 = !DILocation(line: 129, column: 18, scope: !121)
!123 = !DILocation(line: 129, column: 6, scope: !111)
!124 = !DILocation(line: 136, column: 3, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !3, line: 129, column: 25)
!126 = !DILocation(line: 138, column: 10, scope: !125)
!127 = !DILocation(line: 139, column: 2, scope: !125)
!128 = !DILocation(line: 140, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !3, line: 140, column: 7)
!130 = distinct !DILexicalBlock(scope: !121, file: !3, line: 139, column: 9)
!131 = !DILocation(line: 140, column: 19, scope: !129)
!132 = !DILocation(line: 140, column: 7, scope: !130)
!133 = !DILocation(line: 141, column: 4, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !3, line: 140, column: 26)
!135 = !DILocation(line: 144, column: 3, scope: !134)
!136 = !DILocation(line: 145, column: 17, scope: !130)
!137 = !DILocation(line: 145, column: 3, scope: !130)
!138 = !DILocation(line: 148, column: 10, scope: !111)
!139 = !DILocation(line: 149, column: 1, scope: !111)
!140 = !DILocation(line: 148, column: 2, scope: !111)
!141 = !DISubprogram(name: "acpi_error", scope: !142, file: !142, line: 901, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!142 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!143 = !DISubroutineType(types: !144)
!144 = !{null, !145, !7, !145, null}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!146 = !DISubprogram(name: "acpi_warning", scope: !142, file: !142, line: 912, type: !143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DISubprogram(name: "acpi_os_stall", scope: !75, file: !75, line: 260, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !7}
!150 = distinct !DISubprogram(name: "acpi_ex_system_do_sleep", scope: !3, file: !3, line: 164, type: !151, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !156)
!151 = !DISubroutineType(types: !152)
!152 = !{!5, !153}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !155)
!155 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!156 = !{!157}
!157 = !DILocalVariable(name: "how_long_ms", arg: 1, scope: !150, file: !3, line: 164, type: !153)
!158 = !DILocation(line: 164, column: 41, scope: !150)
!159 = !DILocation(line: 170, column: 2, scope: !150)
!160 = !DILocation(line: 176, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !150, file: !3, line: 176, column: 6)
!162 = !DILocation(line: 176, column: 18, scope: !161)
!163 = !DILocation(line: 176, column: 6, scope: !150)
!164 = !DILocation(line: 177, column: 15, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !3, line: 176, column: 36)
!166 = !DILocation(line: 178, column: 2, scope: !165)
!167 = !DILocation(line: 180, column: 16, scope: !150)
!168 = !DILocation(line: 180, column: 2, scope: !150)
!169 = !DILocation(line: 184, column: 2, scope: !150)
!170 = !DILocation(line: 185, column: 2, scope: !150)
!171 = !DISubprogram(name: "acpi_os_sleep", scope: !75, file: !75, line: 256, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !153}
!174 = distinct !DISubprogram(name: "acpi_ex_system_signal_event", scope: !3, file: !3, line: 201, type: !175, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!175 = !DISubroutineType(types: !176)
!176 = !{!5, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !179, line: 369, size: 576, elements: !180)
!179 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!180 = !{!181, !192, !205, !216, !252, !266, !275, !586, !603, !619, !632, !710, !722, !736, !746, !764, !786, !805, !824, !843, !856, !883, !900, !913, !927, !936}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !178, file: !179, line: 370, baseType: !182, size: 128)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !179, line: 73, size: 128, elements: !183)
!183 = !{!184, !185, !189, !190, !191}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !182, file: !179, line: 74, baseType: !177, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !182, file: !179, line: 74, baseType: !186, size: 8, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !188)
!188 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !182, file: !179, line: 74, baseType: !186, size: 8, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !182, file: !179, line: 74, baseType: !12, size: 16, offset: 80)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !179, line: 74, baseType: !186, size: 8, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !178, file: !179, line: 371, baseType: !193, size: 192)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !179, line: 76, size: 192, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !204}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !193, file: !179, line: 77, baseType: !177, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !193, file: !179, line: 77, baseType: !186, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !193, file: !179, line: 77, baseType: !186, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !193, file: !179, line: 77, baseType: !12, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !179, line: 77, baseType: !186, size: 8, offset: 96)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !193, file: !179, line: 77, baseType: !201, size: 24, offset: 104)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 24, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 3)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !179, line: 78, baseType: !153, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !178, file: !179, line: 372, baseType: !206, size: 256)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !179, line: 93, size: 256, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !215}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !206, file: !179, line: 94, baseType: !177, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !179, line: 94, baseType: !186, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !206, file: !179, line: 94, baseType: !186, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !206, file: !179, line: 94, baseType: !12, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !179, line: 94, baseType: !186, size: 8, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !206, file: !179, line: 94, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !206, file: !179, line: 94, baseType: !7, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !178, file: !179, line: 373, baseType: !217, size: 384)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !179, line: 97, size: 384, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224, !226, !227, !228, !229}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !217, file: !179, line: 98, baseType: !177, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !217, file: !179, line: 98, baseType: !186, size: 8, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !217, file: !179, line: 98, baseType: !186, size: 8, offset: 72)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !217, file: !179, line: 98, baseType: !12, size: 16, offset: 80)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !179, line: 98, baseType: !186, size: 8, offset: 96)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !217, file: !179, line: 98, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !217, file: !179, line: 98, baseType: !7, size: 32, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !217, file: !179, line: 99, baseType: !7, size: 32, offset: 224)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !217, file: !179, line: 100, baseType: !225, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !217, file: !179, line: 101, baseType: !230, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !232, line: 133, size: 384, elements: !233)
!232 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!233 = !{!234, !235, !236, !237, !238, !247, !248, !249, !250}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !231, file: !232, line: 134, baseType: !177, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !231, file: !232, line: 135, baseType: !186, size: 8, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !231, file: !232, line: 136, baseType: !186, size: 8, offset: 72)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !232, line: 137, baseType: !12, size: 16, offset: 80)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !232, line: 138, baseType: !239, size: 32, offset: 96)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !240, line: 328, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !239, file: !240, line: 329, baseType: !7, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !239, file: !240, line: 330, baseType: !244, size: 32)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 4)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !231, file: !232, line: 139, baseType: !230, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !231, file: !232, line: 140, baseType: !230, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !231, file: !232, line: 141, baseType: !230, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !231, file: !232, line: 142, baseType: !251, size: 16, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !12)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !178, file: !179, line: 374, baseType: !253, size: 384)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !179, line: 104, size: 384, elements: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261, !263, !264, !265}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !253, file: !179, line: 105, baseType: !177, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !253, file: !179, line: 105, baseType: !186, size: 8, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !253, file: !179, line: 105, baseType: !186, size: 8, offset: 72)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !253, file: !179, line: 105, baseType: !12, size: 16, offset: 80)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !179, line: 105, baseType: !186, size: 8, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !253, file: !179, line: 105, baseType: !230, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !253, file: !179, line: 106, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !253, file: !179, line: 107, baseType: !225, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !253, file: !179, line: 108, baseType: !7, size: 32, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !253, file: !179, line: 109, baseType: !7, size: 32, offset: 352)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !178, file: !179, line: 375, baseType: !267, size: 192)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !179, line: 118, size: 192, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !267, file: !179, line: 119, baseType: !177, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !267, file: !179, line: 119, baseType: !186, size: 8, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !267, file: !179, line: 119, baseType: !186, size: 8, offset: 72)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !267, file: !179, line: 119, baseType: !12, size: 16, offset: 80)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !179, line: 119, baseType: !186, size: 8, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !267, file: !179, line: 119, baseType: !43, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !178, file: !179, line: 376, baseType: !276, size: 448)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !179, line: 144, size: 448, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !583, !584, !585}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !276, file: !179, line: 145, baseType: !177, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !179, line: 145, baseType: !186, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !276, file: !179, line: 145, baseType: !186, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !276, file: !179, line: 145, baseType: !12, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !179, line: 145, baseType: !186, size: 8, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !276, file: !179, line: 145, baseType: !186, size: 8, offset: 104)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !276, file: !179, line: 146, baseType: !186, size: 8, offset: 112)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !276, file: !179, line: 147, baseType: !186, size: 8, offset: 120)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !276, file: !179, line: 148, baseType: !177, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !276, file: !179, line: 149, baseType: !177, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !276, file: !179, line: 150, baseType: !225, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !276, file: !179, line: 154, baseType: !290, size: 64, offset: 320)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !276, file: !179, line: 151, size: 64, elements: !291)
!291 = !{!292, !582}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !290, file: !179, line: 152, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !232, line: 248, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!5, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !299, line: 37, size: 9024, elements: !300)
!299 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !530, !531, !532, !533, !534, !538, !540, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !565, !566, !567, !568, !569, !570, !571, !572, !574, !580}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !299, line: 38, baseType: !297, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !299, line: 39, baseType: !186, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !298, file: !299, line: 40, baseType: !186, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !298, file: !299, line: 41, baseType: !12, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !298, file: !299, line: 42, baseType: !186, size: 8, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !298, file: !299, line: 43, baseType: !186, size: 8, offset: 104)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !298, file: !299, line: 44, baseType: !186, size: 8, offset: 112)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !298, file: !299, line: 45, baseType: !251, size: 16, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !298, file: !299, line: 46, baseType: !186, size: 8, offset: 144)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !298, file: !299, line: 47, baseType: !186, size: 8, offset: 152)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !298, file: !299, line: 48, baseType: !186, size: 8, offset: 160)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !298, file: !299, line: 49, baseType: !186, size: 8, offset: 168)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !298, file: !299, line: 50, baseType: !186, size: 8, offset: 176)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !298, file: !299, line: 51, baseType: !186, size: 8, offset: 184)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !298, file: !299, line: 52, baseType: !186, size: 8, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !298, file: !299, line: 53, baseType: !186, size: 8, offset: 200)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !298, file: !299, line: 54, baseType: !225, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !298, file: !299, line: 55, baseType: !7, size: 32, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !298, file: !299, line: 56, baseType: !7, size: 32, offset: 352)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !298, file: !299, line: 57, baseType: !7, size: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !298, file: !299, line: 58, baseType: !7, size: 32, offset: 416)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !298, file: !299, line: 60, baseType: !323, size: 640, offset: 448)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !232, line: 909, size: 640, elements: !324)
!324 = !{!325, !326, !327, !328, !329, !330, !411, !412, !528, !529}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !323, file: !232, line: 910, baseType: !225, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !323, file: !232, line: 911, baseType: !225, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !323, file: !232, line: 912, baseType: !225, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !323, file: !232, line: 913, baseType: !225, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !323, file: !232, line: 914, baseType: !225, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !323, file: !232, line: 915, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !232, line: 891, size: 1600, elements: !333)
!333 = !{!334, !354, !370}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !332, file: !232, line: 892, baseType: !335, size: 448)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !232, line: 844, size: 448, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !353}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !335, file: !232, line: 845, baseType: !331, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !232, line: 845, baseType: !186, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !232, line: 845, baseType: !186, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !335, file: !232, line: 845, baseType: !12, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !335, file: !232, line: 845, baseType: !225, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !232, line: 845, baseType: !331, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !335, file: !232, line: 845, baseType: !230, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !232, line: 845, baseType: !345, size: 64, offset: 320)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !232, line: 732, size: 64, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !345, file: !232, line: 733, baseType: !153, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !345, file: !232, line: 734, baseType: !7, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !345, file: !232, line: 735, baseType: !214, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !345, file: !232, line: 736, baseType: !225, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !232, line: 737, baseType: !214, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !345, file: !232, line: 738, baseType: !331, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !335, file: !232, line: 845, baseType: !186, size: 8, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !332, file: !232, line: 893, baseType: !355, size: 640)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !232, line: 851, size: 640, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !355, file: !232, line: 852, baseType: !331, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !355, file: !232, line: 852, baseType: !186, size: 8, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !232, line: 852, baseType: !186, size: 8, offset: 72)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !355, file: !232, line: 852, baseType: !12, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !355, file: !232, line: 852, baseType: !225, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !232, line: 852, baseType: !331, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !355, file: !232, line: 852, baseType: !230, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !232, line: 852, baseType: !345, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !355, file: !232, line: 852, baseType: !186, size: 8, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !355, file: !232, line: 852, baseType: !214, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !355, file: !232, line: 853, baseType: !225, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !355, file: !232, line: 854, baseType: !7, size: 32, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !355, file: !232, line: 855, baseType: !7, size: 32, offset: 608)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !332, file: !232, line: 894, baseType: !371, size: 1600)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !232, line: 862, size: 1600, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !371, file: !232, line: 863, baseType: !331, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !371, file: !232, line: 863, baseType: !186, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !232, line: 863, baseType: !186, size: 8, offset: 72)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !371, file: !232, line: 863, baseType: !12, size: 16, offset: 80)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !371, file: !232, line: 863, baseType: !225, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !232, line: 863, baseType: !331, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !371, file: !232, line: 863, baseType: !230, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !371, file: !232, line: 863, baseType: !345, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !371, file: !232, line: 863, baseType: !186, size: 8, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !371, file: !232, line: 863, baseType: !331, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !371, file: !232, line: 864, baseType: !331, size: 64, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !371, file: !232, line: 865, baseType: !214, size: 64, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !371, file: !232, line: 866, baseType: !186, size: 8, offset: 640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !371, file: !232, line: 867, baseType: !214, size: 64, offset: 704)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !371, file: !232, line: 868, baseType: !214, size: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !371, file: !232, line: 869, baseType: !214, size: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !371, file: !232, line: 870, baseType: !244, size: 32, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !371, file: !232, line: 871, baseType: !7, size: 32, offset: 928)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !371, file: !232, line: 872, baseType: !7, size: 32, offset: 960)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !371, file: !232, line: 873, baseType: !7, size: 32, offset: 992)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !371, file: !232, line: 874, baseType: !7, size: 32, offset: 1024)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !371, file: !232, line: 875, baseType: !7, size: 32, offset: 1056)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !371, file: !232, line: 876, baseType: !7, size: 32, offset: 1088)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !371, file: !232, line: 877, baseType: !7, size: 32, offset: 1120)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !371, file: !232, line: 878, baseType: !7, size: 32, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !371, file: !232, line: 879, baseType: !7, size: 32, offset: 1184)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !371, file: !232, line: 880, baseType: !7, size: 32, offset: 1216)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !371, file: !232, line: 881, baseType: !7, size: 32, offset: 1248)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !371, file: !232, line: 882, baseType: !7, size: 32, offset: 1280)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !371, file: !232, line: 883, baseType: !7, size: 32, offset: 1312)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !371, file: !232, line: 884, baseType: !12, size: 16, offset: 1344)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !371, file: !232, line: 885, baseType: !186, size: 8, offset: 1360)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !371, file: !232, line: 886, baseType: !186, size: 8, offset: 1368)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !371, file: !232, line: 887, baseType: !186, size: 8, offset: 1376)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !371, file: !232, line: 888, baseType: !408, size: 160, offset: 1384)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 20)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !323, file: !232, line: 916, baseType: !230, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !323, file: !232, line: 917, baseType: !413, size: 64, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !232, line: 679, size: 640, elements: !415)
!415 = !{!416, !424, !437, !446, !455, !468, !482, !494, !506}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !414, file: !232, line: 680, baseType: !417, size: 128)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !232, line: 575, size: 128, elements: !418)
!418 = !{!419, !420, !421, !422, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !232, line: 576, baseType: !43, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !417, file: !232, line: 576, baseType: !186, size: 8, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !232, line: 576, baseType: !186, size: 8, offset: 72)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !417, file: !232, line: 576, baseType: !12, size: 16, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !417, file: !232, line: 576, baseType: !12, size: 16, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !414, file: !232, line: 681, baseType: !425, size: 384)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !232, line: 604, size: 384, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !232, line: 605, baseType: !43, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !425, file: !232, line: 605, baseType: !186, size: 8, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !232, line: 605, baseType: !186, size: 8, offset: 72)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !425, file: !232, line: 605, baseType: !12, size: 16, offset: 80)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !425, file: !232, line: 605, baseType: !12, size: 16, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !425, file: !232, line: 606, baseType: !12, size: 16, offset: 112)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !425, file: !232, line: 607, baseType: !331, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !425, file: !232, line: 608, baseType: !225, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !425, file: !232, line: 609, baseType: !225, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !425, file: !232, line: 610, baseType: !153, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !414, file: !232, line: 682, baseType: !438, size: 192)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !232, line: 582, size: 192, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !438, file: !232, line: 583, baseType: !43, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !438, file: !232, line: 583, baseType: !186, size: 8, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !232, line: 583, baseType: !186, size: 8, offset: 72)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !438, file: !232, line: 583, baseType: !12, size: 16, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !438, file: !232, line: 583, baseType: !12, size: 16, offset: 96)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !438, file: !232, line: 584, baseType: !177, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !414, file: !232, line: 683, baseType: !447, size: 192)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !232, line: 616, size: 192, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !232, line: 617, baseType: !43, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !447, file: !232, line: 617, baseType: !186, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !232, line: 617, baseType: !186, size: 8, offset: 72)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !447, file: !232, line: 617, baseType: !12, size: 16, offset: 80)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !447, file: !232, line: 617, baseType: !12, size: 16, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !447, file: !232, line: 618, baseType: !230, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !414, file: !232, line: 684, baseType: !456, size: 448)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !232, line: 621, size: 448, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !232, line: 622, baseType: !43, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !232, line: 622, baseType: !186, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !232, line: 622, baseType: !186, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !456, file: !232, line: 622, baseType: !12, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !456, file: !232, line: 622, baseType: !12, size: 16, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !456, file: !232, line: 623, baseType: !7, size: 32, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !456, file: !232, line: 624, baseType: !331, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !456, file: !232, line: 625, baseType: !225, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !456, file: !232, line: 626, baseType: !225, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !456, file: !232, line: 627, baseType: !7, size: 32, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !414, file: !232, line: 685, baseType: !469, size: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !232, line: 590, size: 512, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !232, line: 591, baseType: !43, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !232, line: 591, baseType: !186, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !232, line: 591, baseType: !186, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !469, file: !232, line: 591, baseType: !12, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !469, file: !232, line: 591, baseType: !12, size: 16, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !469, file: !232, line: 592, baseType: !7, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !469, file: !232, line: 593, baseType: !177, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !469, file: !232, line: 594, baseType: !177, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !469, file: !232, line: 595, baseType: !297, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !469, file: !232, line: 596, baseType: !43, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !469, file: !232, line: 597, baseType: !7, size: 32, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !414, file: !232, line: 686, baseType: !483, size: 320)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !232, line: 634, size: 320, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !232, line: 635, baseType: !43, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !483, file: !232, line: 635, baseType: !186, size: 8, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !232, line: 635, baseType: !186, size: 8, offset: 72)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !483, file: !232, line: 635, baseType: !12, size: 16, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !483, file: !232, line: 635, baseType: !12, size: 16, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !483, file: !232, line: 636, baseType: !186, size: 8, offset: 112)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !483, file: !232, line: 637, baseType: !297, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !483, file: !232, line: 638, baseType: !177, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !483, file: !232, line: 639, baseType: !153, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !414, file: !232, line: 687, baseType: !495, size: 640)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !232, line: 646, size: 640, elements: !496)
!496 = !{!497, !498, !499, !500, !501, !502}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !232, line: 647, baseType: !43, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !495, file: !232, line: 647, baseType: !186, size: 8, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !232, line: 647, baseType: !186, size: 8, offset: 72)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !495, file: !232, line: 647, baseType: !12, size: 16, offset: 80)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !495, file: !232, line: 647, baseType: !12, size: 16, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !495, file: !232, line: 648, baseType: !503, size: 512, offset: 128)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 512, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 8)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !414, file: !232, line: 688, baseType: !507, size: 320)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !232, line: 669, size: 320, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !517}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !232, line: 670, baseType: !43, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !507, file: !232, line: 670, baseType: !186, size: 8, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !232, line: 670, baseType: !186, size: 8, offset: 72)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !507, file: !232, line: 670, baseType: !12, size: 16, offset: 80)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !507, file: !232, line: 670, baseType: !12, size: 16, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !507, file: !232, line: 671, baseType: !186, size: 8, offset: 112)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !507, file: !232, line: 672, baseType: !230, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !507, file: !232, line: 673, baseType: !177, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !507, file: !232, line: 674, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !232, line: 660, size: 128, elements: !520)
!520 = !{!521, !527}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !519, file: !232, line: 661, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526, !7, !43}
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !43)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !519, file: !232, line: 662, baseType: !43, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !323, file: !232, line: 918, baseType: !331, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !323, file: !232, line: 919, baseType: !7, size: 32, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !298, file: !299, line: 61, baseType: !7, size: 32, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !298, file: !299, line: 62, baseType: !7, size: 32, offset: 1120)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !298, file: !299, line: 63, baseType: !12, size: 16, offset: 1152)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !298, file: !299, line: 64, baseType: !186, size: 8, offset: 1168)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !298, file: !299, line: 66, baseType: !535, size: 2688, offset: 1216)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 2688, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 7)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !298, file: !299, line: 67, baseType: !539, size: 3072, offset: 3904)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 3072, elements: !504)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !298, file: !299, line: 68, baseType: !541, size: 576, offset: 6976)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 576, elements: !29)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !298, file: !299, line: 69, baseType: !262, size: 64, offset: 7552)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !298, file: !299, line: 71, baseType: !225, size: 64, offset: 7616)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !298, file: !299, line: 72, baseType: !262, size: 64, offset: 7680)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !298, file: !299, line: 73, baseType: !413, size: 64, offset: 7744)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !298, file: !299, line: 74, baseType: !230, size: 64, offset: 7808)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !298, file: !299, line: 75, baseType: !177, size: 64, offset: 7872)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !298, file: !299, line: 76, baseType: !230, size: 64, offset: 7936)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !298, file: !299, line: 77, baseType: !331, size: 64, offset: 8000)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !298, file: !299, line: 78, baseType: !177, size: 64, offset: 8064)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !298, file: !299, line: 79, baseType: !230, size: 64, offset: 8128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !298, file: !299, line: 80, baseType: !214, size: 64, offset: 8192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !298, file: !299, line: 81, baseType: !331, size: 64, offset: 8256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !298, file: !299, line: 82, baseType: !555, size: 64, offset: 8320)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !232, line: 718, size: 128, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !557, file: !232, line: 722, baseType: !7, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !557, file: !232, line: 723, baseType: !7, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !232, line: 724, baseType: !12, size: 16, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !557, file: !232, line: 725, baseType: !186, size: 8, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !557, file: !232, line: 726, baseType: !186, size: 8, offset: 88)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !232, line: 727, baseType: !186, size: 8, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !298, file: !299, line: 83, baseType: !331, size: 64, offset: 8384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !298, file: !299, line: 84, baseType: !177, size: 64, offset: 8448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !298, file: !299, line: 85, baseType: !413, size: 64, offset: 8512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !298, file: !299, line: 86, baseType: !177, size: 64, offset: 8576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !298, file: !299, line: 87, baseType: !413, size: 64, offset: 8640)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !298, file: !299, line: 88, baseType: !331, size: 64, offset: 8704)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !298, file: !299, line: 89, baseType: !331, size: 64, offset: 8768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !298, file: !299, line: 90, baseType: !573, size: 64, offset: 8832)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !298, file: !299, line: 91, baseType: !575, size: 64, offset: 8896)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !232, line: 652, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!5, !297, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !298, file: !299, line: 92, baseType: !581, size: 64, offset: 8960)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !232, line: 656, baseType: !294)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !290, file: !179, line: 153, baseType: !177, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !276, file: !179, line: 156, baseType: !7, size: 32, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !276, file: !179, line: 157, baseType: !251, size: 16, offset: 416)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !276, file: !179, line: 158, baseType: !186, size: 8, offset: 432)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !178, file: !179, line: 377, baseType: !587, size: 576)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !179, line: 122, size: 576, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !179, line: 123, baseType: !177, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !179, line: 123, baseType: !186, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !179, line: 123, baseType: !186, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !179, line: 123, baseType: !12, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !179, line: 123, baseType: !186, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !587, file: !179, line: 123, baseType: !186, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !587, file: !179, line: 124, baseType: !12, size: 16, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !587, file: !179, line: 125, baseType: !43, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !587, file: !179, line: 126, baseType: !153, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !587, file: !179, line: 127, baseType: !573, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !587, file: !179, line: 128, baseType: !177, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !179, line: 129, baseType: !177, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !587, file: !179, line: 130, baseType: !230, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !587, file: !179, line: 131, baseType: !186, size: 8, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !178, file: !179, line: 378, baseType: !604, size: 512)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !179, line: 134, size: 512, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !617, !618}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !604, file: !179, line: 135, baseType: !177, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !604, file: !179, line: 135, baseType: !186, size: 8, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !604, file: !179, line: 135, baseType: !186, size: 8, offset: 72)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !604, file: !179, line: 135, baseType: !12, size: 16, offset: 80)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !179, line: 135, baseType: !186, size: 8, offset: 96)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !604, file: !179, line: 135, baseType: !186, size: 8, offset: 104)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !604, file: !179, line: 136, baseType: !230, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !604, file: !179, line: 137, baseType: !177, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !604, file: !179, line: 138, baseType: !177, size: 64, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !604, file: !179, line: 139, baseType: !616, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !153)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !604, file: !179, line: 140, baseType: !7, size: 32, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !604, file: !179, line: 141, baseType: !43, size: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !178, file: !179, line: 379, baseType: !620, size: 320)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !179, line: 185, size: 320, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !631}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !179, line: 186, baseType: !177, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !179, line: 186, baseType: !186, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !179, line: 186, baseType: !186, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !179, line: 186, baseType: !12, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !179, line: 186, baseType: !186, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !620, file: !179, line: 186, baseType: !628, size: 128, offset: 128)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 128, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 2)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !620, file: !179, line: 186, baseType: !177, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !178, file: !179, line: 380, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !179, line: 188, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !179, line: 189, baseType: !177, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !179, line: 189, baseType: !186, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !179, line: 189, baseType: !186, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !179, line: 189, baseType: !12, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !179, line: 189, baseType: !186, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !633, file: !179, line: 190, baseType: !628, size: 128, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !633, file: !179, line: 190, baseType: !177, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !633, file: !179, line: 190, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !232, line: 480, size: 576, elements: !645)
!645 = !{!646, !647, !648, !649, !657, !672, !704, !705, !706, !707, !708, !709}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !644, file: !232, line: 481, baseType: !230, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !644, file: !232, line: 482, baseType: !643, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !232, line: 483, baseType: !643, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !644, file: !232, line: 484, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !232, line: 497, size: 256, elements: !652)
!652 = !{!653, !654, !655, !656}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !651, file: !232, line: 498, baseType: !650, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !651, file: !232, line: 499, baseType: !650, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !651, file: !232, line: 500, baseType: !643, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !651, file: !232, line: 501, baseType: !7, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !644, file: !232, line: 485, baseType: !658, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !232, line: 466, size: 320, elements: !660)
!660 = !{!661, !666, !667, !668, !669, !670, !671}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !659, file: !232, line: 467, baseType: !662, size: 128)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !232, line: 459, size: 128, elements: !663)
!663 = !{!664, !665}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !662, file: !232, line: 460, baseType: !186, size: 8)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !662, file: !232, line: 461, baseType: !153, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !659, file: !232, line: 468, baseType: !662, size: 128, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !659, file: !232, line: 469, baseType: !12, size: 16, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !659, file: !232, line: 470, baseType: !186, size: 8, offset: 272)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !659, file: !232, line: 471, baseType: !186, size: 8, offset: 280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !659, file: !232, line: 472, baseType: !186, size: 8, offset: 288)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !659, file: !232, line: 473, baseType: !186, size: 8, offset: 296)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !644, file: !232, line: 486, baseType: !673, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !232, line: 448, size: 192, elements: !675)
!675 = !{!676, !699, !700, !701, !702, !703}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !674, file: !232, line: 449, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !232, line: 438, size: 64, elements: !678)
!678 = !{!679, !680, !693}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !677, file: !232, line: 439, baseType: !230, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !677, file: !232, line: 440, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !232, line: 419, size: 256, elements: !683)
!683 = !{!684, !689, !690, !691, !692}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !682, file: !232, line: 420, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!7, !526, !7, !43}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !682, file: !232, line: 421, baseType: !43, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !682, file: !232, line: 422, baseType: !230, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !682, file: !232, line: 423, baseType: !186, size: 8, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !682, file: !232, line: 424, baseType: !186, size: 8, offset: 200)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !677, file: !232, line: 441, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !232, line: 429, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !695, file: !232, line: 430, baseType: !230, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !695, file: !232, line: 431, baseType: !694, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !674, file: !232, line: 450, baseType: !658, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !232, line: 451, baseType: !186, size: 8, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !674, file: !232, line: 452, baseType: !186, size: 8, offset: 136)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !674, file: !232, line: 453, baseType: !186, size: 8, offset: 144)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !674, file: !232, line: 454, baseType: !186, size: 8, offset: 152)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !644, file: !232, line: 487, baseType: !153, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !644, file: !232, line: 488, baseType: !7, size: 32, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !644, file: !232, line: 489, baseType: !12, size: 16, offset: 480)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !644, file: !232, line: 490, baseType: !12, size: 16, offset: 496)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !644, file: !232, line: 491, baseType: !186, size: 8, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !644, file: !232, line: 492, baseType: !186, size: 8, offset: 520)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !178, file: !179, line: 381, baseType: !711, size: 384)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !179, line: 193, size: 384, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !179, line: 194, baseType: !177, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !179, line: 194, baseType: !186, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !179, line: 194, baseType: !186, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !179, line: 194, baseType: !12, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !179, line: 194, baseType: !186, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !711, file: !179, line: 194, baseType: !628, size: 128, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !711, file: !179, line: 194, baseType: !177, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !711, file: !179, line: 194, baseType: !7, size: 32, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !711, file: !179, line: 195, baseType: !7, size: 32, offset: 352)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !178, file: !179, line: 382, baseType: !723, size: 384)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !179, line: 198, size: 384, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !723, file: !179, line: 199, baseType: !177, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !179, line: 199, baseType: !186, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !179, line: 199, baseType: !186, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !723, file: !179, line: 199, baseType: !12, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !179, line: 199, baseType: !186, size: 8, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !723, file: !179, line: 201, baseType: !186, size: 8, offset: 104)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !723, file: !179, line: 202, baseType: !186, size: 8, offset: 112)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !723, file: !179, line: 203, baseType: !628, size: 128, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !723, file: !179, line: 203, baseType: !177, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !723, file: !179, line: 203, baseType: !735, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !153)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !178, file: !179, line: 383, baseType: !737, size: 320)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !179, line: 206, size: 320, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !179, line: 207, baseType: !177, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !179, line: 207, baseType: !186, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !179, line: 207, baseType: !186, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !179, line: 207, baseType: !12, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !179, line: 207, baseType: !186, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !737, file: !179, line: 207, baseType: !628, size: 128, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !737, file: !179, line: 207, baseType: !177, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !178, file: !179, line: 384, baseType: !747, size: 384)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !179, line: 234, size: 384, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !179, line: 235, baseType: !177, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !179, line: 235, baseType: !186, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !179, line: 235, baseType: !186, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !179, line: 235, baseType: !12, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !179, line: 235, baseType: !186, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !747, file: !179, line: 235, baseType: !186, size: 8, offset: 104)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !747, file: !179, line: 235, baseType: !186, size: 8, offset: 112)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !747, file: !179, line: 235, baseType: !186, size: 8, offset: 120)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !179, line: 235, baseType: !230, size: 64, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !747, file: !179, line: 235, baseType: !7, size: 32, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !747, file: !179, line: 235, baseType: !7, size: 32, offset: 224)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !747, file: !179, line: 235, baseType: !7, size: 32, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !747, file: !179, line: 235, baseType: !186, size: 8, offset: 288)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !747, file: !179, line: 235, baseType: !186, size: 8, offset: 296)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !747, file: !179, line: 235, baseType: !177, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !178, file: !179, line: 385, baseType: !765, size: 576)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !179, line: 238, size: 576, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !179, line: 239, baseType: !177, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !179, line: 239, baseType: !186, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !179, line: 239, baseType: !186, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !179, line: 239, baseType: !12, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !179, line: 239, baseType: !186, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !765, file: !179, line: 239, baseType: !186, size: 8, offset: 104)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !765, file: !179, line: 239, baseType: !186, size: 8, offset: 112)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !765, file: !179, line: 239, baseType: !186, size: 8, offset: 120)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !179, line: 239, baseType: !230, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !765, file: !179, line: 239, baseType: !7, size: 32, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !765, file: !179, line: 239, baseType: !7, size: 32, offset: 224)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !765, file: !179, line: 239, baseType: !7, size: 32, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !765, file: !179, line: 239, baseType: !186, size: 8, offset: 288)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !765, file: !179, line: 239, baseType: !186, size: 8, offset: 296)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !765, file: !179, line: 239, baseType: !12, size: 16, offset: 304)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !765, file: !179, line: 240, baseType: !177, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !765, file: !179, line: 241, baseType: !225, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !765, file: !179, line: 242, baseType: !12, size: 16, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !765, file: !179, line: 243, baseType: !225, size: 64, offset: 512)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !178, file: !179, line: 386, baseType: !787, size: 384)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !179, line: 263, size: 384, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !787, file: !179, line: 264, baseType: !177, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !787, file: !179, line: 264, baseType: !186, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !179, line: 264, baseType: !186, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !787, file: !179, line: 264, baseType: !12, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !179, line: 264, baseType: !186, size: 8, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !787, file: !179, line: 264, baseType: !186, size: 8, offset: 104)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !787, file: !179, line: 264, baseType: !186, size: 8, offset: 112)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !787, file: !179, line: 264, baseType: !186, size: 8, offset: 120)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !787, file: !179, line: 264, baseType: !230, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !787, file: !179, line: 264, baseType: !7, size: 32, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !787, file: !179, line: 264, baseType: !7, size: 32, offset: 224)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !787, file: !179, line: 264, baseType: !7, size: 32, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !787, file: !179, line: 264, baseType: !186, size: 8, offset: 288)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !787, file: !179, line: 264, baseType: !186, size: 8, offset: 296)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !787, file: !179, line: 264, baseType: !186, size: 8, offset: 304)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !787, file: !179, line: 265, baseType: !177, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !178, file: !179, line: 387, baseType: !806, size: 448)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !179, line: 246, size: 448, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !806, file: !179, line: 247, baseType: !177, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !806, file: !179, line: 247, baseType: !186, size: 8, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !806, file: !179, line: 247, baseType: !186, size: 8, offset: 72)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !806, file: !179, line: 247, baseType: !12, size: 16, offset: 80)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !806, file: !179, line: 247, baseType: !186, size: 8, offset: 96)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !806, file: !179, line: 247, baseType: !186, size: 8, offset: 104)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !806, file: !179, line: 247, baseType: !186, size: 8, offset: 112)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !806, file: !179, line: 247, baseType: !186, size: 8, offset: 120)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !806, file: !179, line: 247, baseType: !230, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !806, file: !179, line: 247, baseType: !7, size: 32, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !806, file: !179, line: 247, baseType: !7, size: 32, offset: 224)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !806, file: !179, line: 247, baseType: !7, size: 32, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !806, file: !179, line: 247, baseType: !186, size: 8, offset: 288)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !806, file: !179, line: 247, baseType: !186, size: 8, offset: 296)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !806, file: !179, line: 247, baseType: !177, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !806, file: !179, line: 248, baseType: !177, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !178, file: !179, line: 388, baseType: !825, size: 448)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !179, line: 251, size: 448, elements: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !825, file: !179, line: 252, baseType: !177, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !825, file: !179, line: 252, baseType: !186, size: 8, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !825, file: !179, line: 252, baseType: !186, size: 8, offset: 72)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !825, file: !179, line: 252, baseType: !12, size: 16, offset: 80)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !825, file: !179, line: 252, baseType: !186, size: 8, offset: 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !825, file: !179, line: 252, baseType: !186, size: 8, offset: 104)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !825, file: !179, line: 252, baseType: !186, size: 8, offset: 112)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !825, file: !179, line: 252, baseType: !186, size: 8, offset: 120)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !825, file: !179, line: 252, baseType: !230, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !825, file: !179, line: 252, baseType: !7, size: 32, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !825, file: !179, line: 252, baseType: !7, size: 32, offset: 224)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !825, file: !179, line: 252, baseType: !7, size: 32, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !825, file: !179, line: 252, baseType: !186, size: 8, offset: 288)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !825, file: !179, line: 252, baseType: !186, size: 8, offset: 296)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !825, file: !179, line: 257, baseType: !177, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !825, file: !179, line: 258, baseType: !177, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !178, file: !179, line: 389, baseType: !844, size: 512)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !179, line: 274, size: 512, elements: !845)
!845 = !{!846, !847, !848, !849, !850, !851, !852, !853, !854, !855}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !844, file: !179, line: 275, baseType: !177, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !844, file: !179, line: 275, baseType: !186, size: 8, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !844, file: !179, line: 275, baseType: !186, size: 8, offset: 72)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !844, file: !179, line: 275, baseType: !12, size: 16, offset: 80)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !179, line: 275, baseType: !186, size: 8, offset: 96)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !844, file: !179, line: 275, baseType: !230, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !844, file: !179, line: 276, baseType: !7, size: 32, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !844, file: !179, line: 277, baseType: !522, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !844, file: !179, line: 278, baseType: !43, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !179, line: 279, baseType: !628, size: 128, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !178, file: !179, line: 390, baseType: !857, size: 576)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !179, line: 282, size: 576, elements: !858)
!858 = !{!859, !860, !861, !862, !863, !864, !865, !866, !872, !873, !874, !875, !881, !882}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !857, file: !179, line: 283, baseType: !177, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !857, file: !179, line: 283, baseType: !186, size: 8, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !857, file: !179, line: 283, baseType: !186, size: 8, offset: 72)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !857, file: !179, line: 283, baseType: !12, size: 16, offset: 80)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !179, line: 283, baseType: !186, size: 8, offset: 96)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !857, file: !179, line: 283, baseType: !186, size: 8, offset: 104)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !857, file: !179, line: 284, baseType: !186, size: 8, offset: 112)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !857, file: !179, line: 285, baseType: !867, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!5, !7, !616, !7, !871, !43, !43}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !857, file: !179, line: 286, baseType: !230, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !857, file: !179, line: 287, baseType: !43, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !857, file: !179, line: 288, baseType: !43, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !857, file: !179, line: 289, baseType: !876, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!5, !526, !7, !43, !880}
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !857, file: !179, line: 290, baseType: !177, size: 64, offset: 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !179, line: 291, baseType: !177, size: 64, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !178, file: !179, line: 391, baseType: !884, size: 512)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !179, line: 309, size: 512, elements: !885)
!885 = !{!886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !884, file: !179, line: 310, baseType: !177, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !884, file: !179, line: 310, baseType: !186, size: 8, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !884, file: !179, line: 310, baseType: !186, size: 8, offset: 72)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !884, file: !179, line: 310, baseType: !12, size: 16, offset: 80)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !884, file: !179, line: 310, baseType: !186, size: 8, offset: 96)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !884, file: !179, line: 310, baseType: !186, size: 8, offset: 104)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !884, file: !179, line: 311, baseType: !186, size: 8, offset: 112)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !884, file: !179, line: 312, baseType: !186, size: 8, offset: 120)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !884, file: !179, line: 313, baseType: !43, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !884, file: !179, line: 314, baseType: !230, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !884, file: !179, line: 315, baseType: !262, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !884, file: !179, line: 316, baseType: !225, size: 64, offset: 320)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !884, file: !179, line: 317, baseType: !225, size: 64, offset: 384)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !884, file: !179, line: 318, baseType: !7, size: 32, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !178, file: !179, line: 392, baseType: !901, size: 448)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !179, line: 342, size: 448, elements: !902)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910, !911, !912}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !901, file: !179, line: 343, baseType: !177, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !901, file: !179, line: 343, baseType: !186, size: 8, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !901, file: !179, line: 343, baseType: !186, size: 8, offset: 72)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !901, file: !179, line: 343, baseType: !12, size: 16, offset: 80)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !901, file: !179, line: 343, baseType: !186, size: 8, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !901, file: !179, line: 343, baseType: !230, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !901, file: !179, line: 344, baseType: !230, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !901, file: !179, line: 345, baseType: !43, size: 64, offset: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !901, file: !179, line: 346, baseType: !225, size: 64, offset: 320)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !901, file: !179, line: 347, baseType: !7, size: 32, offset: 384)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !178, file: !179, line: 393, baseType: !914, size: 256)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !179, line: 352, size: 256, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921, !926}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !914, file: !179, line: 353, baseType: !177, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !914, file: !179, line: 353, baseType: !186, size: 8, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !914, file: !179, line: 353, baseType: !186, size: 8, offset: 72)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !914, file: !179, line: 353, baseType: !12, size: 16, offset: 80)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !914, file: !179, line: 353, baseType: !186, size: 8, offset: 96)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !914, file: !179, line: 353, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !526, !43}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !914, file: !179, line: 354, baseType: !43, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !178, file: !179, line: 394, baseType: !928, size: 192)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !179, line: 359, size: 192, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !928, file: !179, line: 360, baseType: !177, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !928, file: !179, line: 360, baseType: !186, size: 8, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !928, file: !179, line: 360, baseType: !186, size: 8, offset: 72)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !928, file: !179, line: 360, baseType: !12, size: 16, offset: 80)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !928, file: !179, line: 360, baseType: !186, size: 8, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !928, file: !179, line: 360, baseType: !177, size: 64, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !178, file: !179, line: 401, baseType: !231, size: 384)
!937 = !{!938, !939}
!938 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !174, file: !3, line: 201, type: !177)
!939 = !DILocalVariable(name: "status", scope: !174, file: !3, line: 203, type: !5)
!940 = !DILocation(line: 201, column: 69, scope: !174)
!941 = !DILocation(line: 203, column: 2, scope: !174)
!942 = !DILocation(line: 203, column: 14, scope: !174)
!943 = !DILocation(line: 207, column: 6, scope: !944)
!944 = distinct !DILexicalBlock(scope: !174, file: !3, line: 207, column: 6)
!945 = !DILocation(line: 207, column: 6, scope: !174)
!946 = !DILocation(line: 209, column: 32, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 207, column: 16)
!948 = !DILocation(line: 209, column: 48, scope: !947)
!949 = !DILocation(line: 209, column: 7, scope: !947)
!950 = !DILocation(line: 208, column: 10, scope: !947)
!951 = !DILocation(line: 210, column: 2, scope: !947)
!952 = !DILocation(line: 212, column: 2, scope: !174)
!953 = !DILocation(line: 213, column: 1, scope: !174)
!954 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !75, file: !75, line: 140, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubroutineType(types: !956)
!956 = !{!5, !43, !7}
!957 = distinct !DISubprogram(name: "acpi_ex_system_wait_event", scope: !3, file: !3, line: 231, type: !958, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !960)
!958 = !DISubroutineType(types: !959)
!959 = !{!5, !177, !177}
!960 = !{!961, !962, !963}
!961 = !DILocalVariable(name: "time_desc", arg: 1, scope: !957, file: !3, line: 231, type: !177)
!962 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !957, file: !3, line: 232, type: !177)
!963 = !DILocalVariable(name: "status", scope: !957, file: !3, line: 234, type: !5)
!964 = !DILocation(line: 231, column: 54, scope: !957)
!965 = !DILocation(line: 232, column: 33, scope: !957)
!966 = !DILocation(line: 234, column: 2, scope: !957)
!967 = !DILocation(line: 234, column: 14, scope: !957)
!968 = !DILocation(line: 238, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !957, file: !3, line: 238, column: 6)
!970 = !DILocation(line: 238, column: 6, scope: !957)
!971 = !DILocation(line: 240, column: 37, scope: !972)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 238, column: 16)
!973 = !DILocation(line: 240, column: 53, scope: !972)
!974 = !DILocation(line: 241, column: 15, scope: !972)
!975 = !DILocation(line: 242, column: 9, scope: !972)
!976 = !DILocation(line: 241, column: 9, scope: !972)
!977 = !DILocation(line: 240, column: 7, scope: !972)
!978 = !DILocation(line: 239, column: 10, scope: !972)
!979 = !DILocation(line: 243, column: 2, scope: !972)
!980 = !DILocation(line: 245, column: 2, scope: !957)
!981 = !DILocation(line: 246, column: 1, scope: !957)
!982 = distinct !DISubprogram(name: "acpi_ex_system_reset_event", scope: !3, file: !3, line: 260, type: !175, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !983)
!983 = !{!984, !985, !986}
!984 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !982, file: !3, line: 260, type: !177)
!985 = !DILocalVariable(name: "status", scope: !982, file: !3, line: 262, type: !5)
!986 = !DILocalVariable(name: "temp_semaphore", scope: !982, file: !3, line: 263, type: !43)
!987 = !DILocation(line: 260, column: 67, scope: !982)
!988 = !DILocation(line: 262, column: 2, scope: !982)
!989 = !DILocation(line: 262, column: 14, scope: !982)
!990 = !DILocation(line: 263, column: 2, scope: !982)
!991 = !DILocation(line: 263, column: 17, scope: !982)
!992 = !DILocation(line: 272, column: 6, scope: !982)
!993 = !DILocation(line: 271, column: 9, scope: !982)
!994 = !DILocation(line: 273, column: 6, scope: !995)
!995 = distinct !DILexicalBlock(scope: !982, file: !3, line: 273, column: 6)
!996 = !DILocation(line: 273, column: 6, scope: !982)
!997 = !DILocation(line: 274, column: 34, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 273, column: 28)
!999 = !DILocation(line: 274, column: 50, scope: !998)
!1000 = !DILocation(line: 274, column: 9, scope: !998)
!1001 = !DILocation(line: 275, column: 34, scope: !998)
!1002 = !DILocation(line: 275, column: 3, scope: !998)
!1003 = !DILocation(line: 275, column: 19, scope: !998)
!1004 = !DILocation(line: 275, column: 32, scope: !998)
!1005 = !DILocation(line: 276, column: 2, scope: !998)
!1006 = !DILocation(line: 278, column: 10, scope: !982)
!1007 = !DILocation(line: 279, column: 1, scope: !982)
!1008 = !DILocation(line: 278, column: 2, scope: !982)
!1009 = !DISubprogram(name: "acpi_os_create_semaphore", scope: !75, file: !75, line: 126, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!5, !7, !7, !880}
!1012 = !DISubprogram(name: "acpi_os_delete_semaphore", scope: !75, file: !75, line: 131, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!5, !43}
