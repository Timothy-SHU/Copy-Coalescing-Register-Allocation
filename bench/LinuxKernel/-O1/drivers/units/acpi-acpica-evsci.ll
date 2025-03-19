; ModuleID = 'drivers/acpi/acpica/evsci.c'
source_filename = "drivers/acpi/acpica/evsci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_sci_handler_info = type { ptr, ptr, ptr }

@acpi_gbl_sci_handler_list = external dso_local global ptr, align 8
@acpi_gbl_gpe_lock = external dso_local global ptr, align 8
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_gpe_xrupt_list_head = external dso_local global ptr, align 8
@acpi_sci_count = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_sci_dispatch() #0 align 16 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %sci_handler = alloca ptr, align 8
  %flags = alloca i64, align 8
  %int_status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sci_handler) #5, !dbg !39
  call void @llvm.dbg.declare(metadata ptr %sci_handler, metadata !23, metadata !DIExpression()), !dbg !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #5, !dbg !41
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !36, metadata !DIExpression()), !dbg !42
  call void @llvm.lifetime.start.p0(i64 4, ptr %int_status) #5, !dbg !43
  call void @llvm.dbg.declare(metadata ptr %int_status, metadata !38, metadata !DIExpression()), !dbg !44
  store i32 0, ptr %int_status, align 4, !dbg !44
  %0 = load ptr, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !45
  %tobool = icmp ne ptr %0, null, !dbg !45
  br i1 %tobool, label %if.end, label %if.then, !dbg !47

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %int_status, align 4, !dbg !48
  store i32 %1, ptr %retval, align 4, !dbg !50
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !50

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !51
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %2) #6, !dbg !52
  store i64 %call, ptr %flags, align 8, !dbg !53
  %3 = load ptr, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !54
  store ptr %3, ptr %sci_handler, align 8, !dbg !55
  br label %while.cond, !dbg !56

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr %sci_handler, align 8, !dbg !57
  %tobool1 = icmp ne ptr %4, null, !dbg !56
  br i1 %tobool1, label %while.body, label %while.end, !dbg !56

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %sci_handler, align 8, !dbg !58
  %address = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %5, i32 0, i32 1, !dbg !60
  %6 = load ptr, ptr %address, align 8, !dbg !60
  %7 = load ptr, ptr %sci_handler, align 8, !dbg !61
  %context = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %7, i32 0, i32 2, !dbg !62
  %8 = load ptr, ptr %context, align 8, !dbg !62
  %call2 = call i32 %6(ptr noundef %8) #6, !dbg !58
  %9 = load i32, ptr %int_status, align 4, !dbg !63
  %or = or i32 %9, %call2, !dbg !63
  store i32 %or, ptr %int_status, align 4, !dbg !63
  %10 = load ptr, ptr %sci_handler, align 8, !dbg !64
  %next = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %10, i32 0, i32 0, !dbg !65
  %11 = load ptr, ptr %next, align 8, !dbg !65
  store ptr %11, ptr %sci_handler, align 8, !dbg !66
  br label %while.cond, !dbg !56, !llvm.loop !67

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !71
  %13 = load i64, ptr %flags, align 8, !dbg !72
  call void @acpi_os_release_lock(ptr noundef %12, i64 noundef %13) #6, !dbg !73
  %14 = load i32, ptr %int_status, align 4, !dbg !74
  store i32 %14, ptr %retval, align 4, !dbg !75
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !75

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %int_status) #5, !dbg !76
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #5, !dbg !76
  call void @llvm.lifetime.end.p0(i64 8, ptr %sci_handler) #5, !dbg !76
  %15 = load i32, ptr %retval, align 4, !dbg !76
  ret i32 %15, !dbg !76
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !77 dso_local i64 @acpi_os_acquire_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !124 dso_local void @acpi_os_release_lock(ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_gpe_xrupt_handler(ptr noundef %context) #0 align 16 !dbg !127 {
entry:
  %context.addr = alloca ptr, align 8
  %gpe_xrupt_list = alloca ptr, align 8
  %interrupt_handled = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !129, metadata !DIExpression()), !dbg !894
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_xrupt_list) #5, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_list, metadata !130, metadata !DIExpression()), !dbg !896
  %0 = load ptr, ptr %context.addr, align 8, !dbg !897
  store ptr %0, ptr %gpe_xrupt_list, align 8, !dbg !896
  call void @llvm.lifetime.start.p0(i64 4, ptr %interrupt_handled) #5, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %interrupt_handled, metadata !893, metadata !DIExpression()), !dbg !899
  store i32 0, ptr %interrupt_handled, align 4, !dbg !899
  %1 = load ptr, ptr %gpe_xrupt_list, align 8, !dbg !900
  %call = call i32 @acpi_ev_gpe_detect(ptr noundef %1) #6, !dbg !901
  %2 = load i32, ptr %interrupt_handled, align 4, !dbg !902
  %or = or i32 %2, %call, !dbg !902
  store i32 %or, ptr %interrupt_handled, align 4, !dbg !902
  %3 = load i32, ptr %interrupt_handled, align 4, !dbg !903
  call void @llvm.lifetime.end.p0(i64 4, ptr %interrupt_handled) #5, !dbg !904
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_xrupt_list) #5, !dbg !904
  ret i32 %3, !dbg !903
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !905 dso_local i32 @acpi_ev_gpe_detect(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_install_sci_handler() #0 align 16 !dbg !909 {
entry:
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %status, metadata !911, metadata !DIExpression()), !dbg !913
  store i32 0, ptr %status, align 4, !dbg !913
  %0 = load i16, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !914
  %conv = zext i16 %0 to i32, !dbg !915
  %1 = load ptr, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !916
  %call = call i32 @acpi_os_install_interrupt_handler(i32 noundef %conv, ptr noundef @acpi_ev_sci_xrupt_handler, ptr noundef %1) #6, !dbg !917
  store i32 %call, ptr %status, align 4, !dbg !918
  %2 = load i32, ptr %status, align 4, !dbg !919
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !920
  ret i32 %2, !dbg !919
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !921 dso_local i32 @acpi_os_install_interrupt_handler(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ev_sci_xrupt_handler(ptr noundef %context) #0 align 16 !dbg !925 {
entry:
  %context.addr = alloca ptr, align 8
  %gpe_xrupt_list = alloca ptr, align 8
  %interrupt_handled = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !927, metadata !DIExpression()), !dbg !930
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_xrupt_list) #5, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_list, metadata !928, metadata !DIExpression()), !dbg !932
  %0 = load ptr, ptr %context.addr, align 8, !dbg !933
  store ptr %0, ptr %gpe_xrupt_list, align 8, !dbg !932
  call void @llvm.lifetime.start.p0(i64 4, ptr %interrupt_handled) #5, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %interrupt_handled, metadata !929, metadata !DIExpression()), !dbg !935
  store i32 0, ptr %interrupt_handled, align 4, !dbg !935
  %call = call i32 @acpi_ev_fixed_event_detect() #6, !dbg !936
  %1 = load i32, ptr %interrupt_handled, align 4, !dbg !937
  %or = or i32 %1, %call, !dbg !937
  store i32 %or, ptr %interrupt_handled, align 4, !dbg !937
  %2 = load ptr, ptr %gpe_xrupt_list, align 8, !dbg !938
  %call1 = call i32 @acpi_ev_gpe_detect(ptr noundef %2) #6, !dbg !939
  %3 = load i32, ptr %interrupt_handled, align 4, !dbg !940
  %or2 = or i32 %3, %call1, !dbg !940
  store i32 %or2, ptr %interrupt_handled, align 4, !dbg !940
  %call3 = call i32 @acpi_ev_sci_dispatch() #6, !dbg !941
  %4 = load i32, ptr %interrupt_handled, align 4, !dbg !942
  %or4 = or i32 %4, %call3, !dbg !942
  store i32 %or4, ptr %interrupt_handled, align 4, !dbg !942
  %5 = load i32, ptr @acpi_sci_count, align 4, !dbg !943
  %inc = add i32 %5, 1, !dbg !943
  store i32 %inc, ptr @acpi_sci_count, align 4, !dbg !943
  %6 = load i32, ptr %interrupt_handled, align 4, !dbg !944
  call void @llvm.lifetime.end.p0(i64 4, ptr %interrupt_handled) #5, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_xrupt_list) #5, !dbg !945
  ret i32 %6, !dbg !944
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_remove_all_sci_handlers() #0 align 16 !dbg !946 {
entry:
  %retval = alloca i32, align 4
  %sci_handler = alloca ptr, align 8
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %sci_handler) #5, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %sci_handler, metadata !950, metadata !DIExpression()), !dbg !954
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #5, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !951, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !957
  call void @llvm.dbg.declare(metadata ptr %status, metadata !952, metadata !DIExpression()), !dbg !958
  %0 = load i16, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !959
  %conv = zext i16 %0 to i32, !dbg !960
  %call = call i32 @acpi_os_remove_interrupt_handler(i32 noundef %conv, ptr noundef @acpi_ev_sci_xrupt_handler) #6, !dbg !961
  store i32 %call, ptr %status, align 4, !dbg !962
  %1 = load ptr, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !963
  %tobool = icmp ne ptr %1, null, !dbg !963
  br i1 %tobool, label %if.end, label %if.then, !dbg !965

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !966
  store i32 %2, ptr %retval, align 4, !dbg !968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !968

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !969
  %call1 = call i64 @acpi_os_acquire_lock(ptr noundef %3) #6, !dbg !970
  store i64 %call1, ptr %flags, align 8, !dbg !971
  br label %while.cond, !dbg !972

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load ptr, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !973
  %tobool2 = icmp ne ptr %4, null, !dbg !972
  br i1 %tobool2, label %while.body, label %while.end, !dbg !972

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !974
  store ptr %5, ptr %sci_handler, align 8, !dbg !976
  %6 = load ptr, ptr %sci_handler, align 8, !dbg !977
  %next = getelementptr inbounds %struct.acpi_sci_handler_info, ptr %6, i32 0, i32 0, !dbg !978
  %7 = load ptr, ptr %next, align 8, !dbg !978
  store ptr %7, ptr @acpi_gbl_sci_handler_list, align 8, !dbg !979
  %8 = load ptr, ptr %sci_handler, align 8, !dbg !980
  call void @acpi_os_free(ptr noundef %8) #6, !dbg !980
  br label %while.cond, !dbg !972, !llvm.loop !981

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !983
  %10 = load i64, ptr %flags, align 8, !dbg !984
  call void @acpi_os_release_lock(ptr noundef %9, i64 noundef %10) #6, !dbg !985
  %11 = load i32, ptr %status, align 4, !dbg !986
  store i32 %11, ptr %retval, align 4, !dbg !986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !986

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !987
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #5, !dbg !987
  call void @llvm.lifetime.end.p0(i64 8, ptr %sci_handler) #5, !dbg !987
  %12 = load i32, ptr %retval, align 4, !dbg !987
  ret i32 %12, !dbg !987
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !988 dso_local i32 @acpi_os_remove_interrupt_handler(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !991 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !996, metadata !DIExpression()), !dbg !997
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !998
  call void @kfree(ptr noundef %0) #6, !dbg !999
  ret void, !dbg !1000
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1001 dso_local i32 @acpi_ev_fixed_event_detect() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1002 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evsci.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evsci\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evsci.ll drivers/acpi/acpica/evsci.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/evsci.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "405e56481649aac3b9d8aaf3aafbe634")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !4, line: 421, baseType: !5)
!4 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 8, !"cf-protection-branch", i32 1}
!14 = !{i32 4, !"function_return_thunk_extern", i32 1}
!15 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!16 = !{i32 1, !"Code Model", i32 2}
!17 = !{i32 1, !"override-stack-alignment", i32 8}
!18 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!19 = distinct !DISubprogram(name: "acpi_ev_sci_dispatch", scope: !1, file: !1, line: 31, type: !20, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!5}
!22 = !{!23, !36, !38}
!23 = !DILocalVariable(name: "sci_handler", scope: !19, file: !1, line: 33, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_sci_handler_info", file: !26, line: 411, size: 192, elements: !27)
!26 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!27 = !{!28, !29, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !25, file: !26, line: 412, baseType: !24, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !25, file: !26, line: 413, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_sci_handler", file: !4, line: 1044, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!5, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !25, file: !26, line: 414, baseType: !34, size: 64, offset: 128)
!36 = !DILocalVariable(name: "flags", scope: !19, file: !1, line: 34, type: !37)
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocalVariable(name: "int_status", scope: !19, file: !1, line: 35, type: !5)
!39 = !DILocation(line: 33, column: 2, scope: !19)
!40 = !DILocation(line: 33, column: 32, scope: !19)
!41 = !DILocation(line: 34, column: 2, scope: !19)
!42 = !DILocation(line: 34, column: 17, scope: !19)
!43 = !DILocation(line: 35, column: 2, scope: !19)
!44 = !DILocation(line: 35, column: 6, scope: !19)
!45 = !DILocation(line: 41, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !19, file: !1, line: 41, column: 6)
!47 = !DILocation(line: 41, column: 6, scope: !19)
!48 = !DILocation(line: 42, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 41, column: 34)
!50 = !DILocation(line: 42, column: 3, scope: !49)
!51 = !DILocation(line: 45, column: 31, scope: !19)
!52 = !DILocation(line: 45, column: 10, scope: !19)
!53 = !DILocation(line: 45, column: 8, scope: !19)
!54 = !DILocation(line: 49, column: 16, scope: !19)
!55 = !DILocation(line: 49, column: 14, scope: !19)
!56 = !DILocation(line: 50, column: 2, scope: !19)
!57 = !DILocation(line: 50, column: 9, scope: !19)
!58 = !DILocation(line: 54, column: 17, scope: !59)
!59 = distinct !DILexicalBlock(scope: !19, file: !1, line: 50, column: 22)
!60 = !DILocation(line: 54, column: 30, scope: !59)
!61 = !DILocation(line: 54, column: 38, scope: !59)
!62 = !DILocation(line: 54, column: 51, scope: !59)
!63 = !DILocation(line: 54, column: 14, scope: !59)
!64 = !DILocation(line: 56, column: 17, scope: !59)
!65 = !DILocation(line: 56, column: 30, scope: !59)
!66 = !DILocation(line: 56, column: 15, scope: !59)
!67 = distinct !{!67, !56, !68, !69, !70}
!68 = !DILocation(line: 57, column: 2, scope: !19)
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !DILocation(line: 59, column: 23, scope: !19)
!72 = !DILocation(line: 59, column: 42, scope: !19)
!73 = !DILocation(line: 59, column: 2, scope: !19)
!74 = !DILocation(line: 60, column: 10, scope: !19)
!75 = !DILocation(line: 60, column: 2, scope: !19)
!76 = !DILocation(line: 61, column: 1, scope: !19)
!77 = !DISubprogram(name: "acpi_os_acquire_lock", scope: !78, file: !78, line: 93, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!79 = !DISubroutineType(types: !80)
!80 = !{!37, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !83, line: 29, baseType: !84)
!83 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !83, line: 17, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !83, line: 18, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !83, line: 18, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !87, file: !83, line: 19, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !91, line: 14, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !90, file: !91, line: 15, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !95, line: 44, baseType: !96)
!95 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !95, line: 14, size: 32, elements: !97)
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !95, line: 15, baseType: !99, size: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !96, file: !95, line: 15, size: 32, elements: !100)
!100 = !{!101, !108, !116}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !99, file: !95, line: 16, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 174, baseType: !104)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 172, size: 32, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !104, file: !103, line: 173, baseType: !107, size: 32)
!107 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !95, line: 24, baseType: !109, size: 16)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !99, file: !95, line: 24, size: 16, elements: !110)
!110 = !{!111, !115}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !109, file: !95, line: 25, baseType: !112, size: 8)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 17, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !114)
!114 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !109, file: !95, line: 26, baseType: !112, size: 8, offset: 8)
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !95, line: 28, baseType: !117, size: 32)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !99, file: !95, line: 28, size: 32, elements: !118)
!118 = !{!119, !123}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !117, file: !95, line: 29, baseType: !120, size: 16)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !6, line: 19, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !8, line: 24, baseType: !122)
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !117, file: !95, line: 30, baseType: !120, size: 16, offset: 16)
!124 = !DISubprogram(name: "acpi_os_release_lock", scope: !78, file: !78, line: 97, type: !125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !81, !37}
!127 = distinct !DISubprogram(name: "acpi_ev_gpe_xrupt_handler", scope: !1, file: !1, line: 120, type: !32, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!128 = !{!129, !130, !893}
!129 = !DILocalVariable(name: "context", arg: 1, scope: !127, file: !1, line: 120, type: !34)
!130 = !DILocalVariable(name: "gpe_xrupt_list", scope: !127, file: !1, line: 122, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !26, line: 497, size: 256, elements: !133)
!133 = !{!134, !135, !136, !892}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !132, file: !26, line: 498, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !26, line: 499, baseType: !131, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !132, file: !26, line: 500, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !26, line: 480, size: 576, elements: !139)
!139 = !{!140, !836, !837, !838, !839, !854, !886, !887, !888, !889, !890, !891}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !26, line: 481, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !26, line: 133, size: 384, elements: !143)
!143 = !{!144, !823, !824, !825, !826, !832, !833, !834, !835}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !142, file: !26, line: 134, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !147, line: 369, size: 576, elements: !148)
!147 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!148 = !{!149, !157, !173, !185, !199, !213, !222, !539, !556, !572, !585, !596, !608, !622, !632, !650, !672, !691, !710, !729, !742, !769, !786, !799, !813, !822}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !146, file: !147, line: 370, baseType: !150, size: 128)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !147, line: 73, size: 128, elements: !151)
!151 = !{!152, !153, !154, !155, !156}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !150, file: !147, line: 74, baseType: !145, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !147, line: 74, baseType: !112, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !147, line: 74, baseType: !112, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !150, file: !147, line: 74, baseType: !120, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !147, line: 74, baseType: !112, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !146, file: !147, line: 371, baseType: !158, size: 192)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !147, line: 76, size: 192, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !169}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !158, file: !147, line: 77, baseType: !145, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !158, file: !147, line: 77, baseType: !112, size: 8, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !147, line: 77, baseType: !112, size: 8, offset: 72)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !158, file: !147, line: 77, baseType: !120, size: 16, offset: 80)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !147, line: 77, baseType: !112, size: 8, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !158, file: !147, line: 77, baseType: !166, size: 24, offset: 104)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 24, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 3)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !158, file: !147, line: 78, baseType: !170, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !172)
!172 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !146, file: !147, line: 372, baseType: !174, size: 256)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !147, line: 93, size: 256, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !184}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !174, file: !147, line: 94, baseType: !145, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !174, file: !147, line: 94, baseType: !112, size: 8, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !147, line: 94, baseType: !112, size: 8, offset: 72)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !174, file: !147, line: 94, baseType: !120, size: 16, offset: 80)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !147, line: 94, baseType: !112, size: 8, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !174, file: !147, line: 94, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !174, file: !147, line: 94, baseType: !5, size: 32, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !146, file: !147, line: 373, baseType: !186, size: 384)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !147, line: 97, size: 384, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !195, !196, !197, !198}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !186, file: !147, line: 98, baseType: !145, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !186, file: !147, line: 98, baseType: !112, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !186, file: !147, line: 98, baseType: !112, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !186, file: !147, line: 98, baseType: !120, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !147, line: 98, baseType: !112, size: 8, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !186, file: !147, line: 98, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !186, file: !147, line: 98, baseType: !5, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !186, file: !147, line: 99, baseType: !5, size: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !147, line: 100, baseType: !194, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !186, file: !147, line: 101, baseType: !141, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !146, file: !147, line: 374, baseType: !200, size: 384)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !147, line: 104, size: 384, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !210, !211, !212}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !200, file: !147, line: 105, baseType: !145, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !200, file: !147, line: 105, baseType: !112, size: 8, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !147, line: 105, baseType: !112, size: 8, offset: 72)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !200, file: !147, line: 105, baseType: !120, size: 16, offset: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !200, file: !147, line: 105, baseType: !112, size: 8, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !200, file: !147, line: 105, baseType: !141, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !200, file: !147, line: 106, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !200, file: !147, line: 107, baseType: !194, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !200, file: !147, line: 108, baseType: !5, size: 32, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !200, file: !147, line: 109, baseType: !5, size: 32, offset: 352)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !146, file: !147, line: 375, baseType: !214, size: 192)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !147, line: 118, size: 192, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !214, file: !147, line: 119, baseType: !145, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !214, file: !147, line: 119, baseType: !112, size: 8, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !214, file: !147, line: 119, baseType: !112, size: 8, offset: 72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !214, file: !147, line: 119, baseType: !120, size: 16, offset: 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !147, line: 119, baseType: !112, size: 8, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !214, file: !147, line: 119, baseType: !34, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !146, file: !147, line: 376, baseType: !223, size: 448)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !147, line: 144, size: 448, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !536, !537, !538}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !223, file: !147, line: 145, baseType: !145, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !147, line: 145, baseType: !112, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !147, line: 145, baseType: !112, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !223, file: !147, line: 145, baseType: !120, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !147, line: 145, baseType: !112, size: 8, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !223, file: !147, line: 145, baseType: !112, size: 8, offset: 104)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !223, file: !147, line: 146, baseType: !112, size: 8, offset: 112)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !223, file: !147, line: 147, baseType: !112, size: 8, offset: 120)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !223, file: !147, line: 148, baseType: !145, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !147, line: 149, baseType: !145, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !223, file: !147, line: 150, baseType: !194, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !223, file: !147, line: 154, baseType: !237, size: 64, offset: 320)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !147, line: 151, size: 64, elements: !238)
!238 = !{!239, !535}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !237, file: !147, line: 152, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !26, line: 248, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!3, !244}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !246, line: 37, size: 9024, elements: !247)
!246 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !481, !482, !483, !484, !485, !489, !491, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !518, !519, !520, !521, !522, !523, !524, !525, !527, !533}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !246, line: 38, baseType: !244, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !245, file: !246, line: 39, baseType: !112, size: 8, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !245, file: !246, line: 40, baseType: !112, size: 8, offset: 72)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !245, file: !246, line: 41, baseType: !120, size: 16, offset: 80)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !245, file: !246, line: 42, baseType: !112, size: 8, offset: 96)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !245, file: !246, line: 43, baseType: !112, size: 8, offset: 104)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !245, file: !246, line: 44, baseType: !112, size: 8, offset: 112)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !245, file: !246, line: 45, baseType: !256, size: 16, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !4, line: 445, baseType: !120)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !245, file: !246, line: 46, baseType: !112, size: 8, offset: 144)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !245, file: !246, line: 47, baseType: !112, size: 8, offset: 152)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !245, file: !246, line: 48, baseType: !112, size: 8, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !245, file: !246, line: 49, baseType: !112, size: 8, offset: 168)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !245, file: !246, line: 50, baseType: !112, size: 8, offset: 176)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !245, file: !246, line: 51, baseType: !112, size: 8, offset: 184)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !245, file: !246, line: 52, baseType: !112, size: 8, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !245, file: !246, line: 53, baseType: !112, size: 8, offset: 200)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !245, file: !246, line: 54, baseType: !194, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !245, file: !246, line: 55, baseType: !5, size: 32, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !245, file: !246, line: 56, baseType: !5, size: 32, offset: 352)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !245, file: !246, line: 57, baseType: !5, size: 32, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !245, file: !246, line: 58, baseType: !5, size: 32, offset: 416)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !245, file: !246, line: 60, baseType: !271, size: 640, offset: 448)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !26, line: 909, size: 640, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !362, !363, !479, !480}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !271, file: !26, line: 910, baseType: !194, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !271, file: !26, line: 911, baseType: !194, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !271, file: !26, line: 912, baseType: !194, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !271, file: !26, line: 913, baseType: !194, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !271, file: !26, line: 914, baseType: !194, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !271, file: !26, line: 915, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !26, line: 891, size: 1600, elements: !281)
!281 = !{!282, !302, !318}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !280, file: !26, line: 892, baseType: !283, size: 448)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !26, line: 844, size: 448, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !301}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !283, file: !26, line: 845, baseType: !279, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !26, line: 845, baseType: !112, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !26, line: 845, baseType: !112, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !283, file: !26, line: 845, baseType: !120, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !283, file: !26, line: 845, baseType: !194, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !26, line: 845, baseType: !279, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !283, file: !26, line: 845, baseType: !141, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !26, line: 845, baseType: !293, size: 64, offset: 320)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !26, line: 732, size: 64, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !293, file: !26, line: 733, baseType: !170, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !293, file: !26, line: 734, baseType: !5, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !293, file: !26, line: 735, baseType: !182, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !293, file: !26, line: 736, baseType: !194, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !26, line: 737, baseType: !182, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !293, file: !26, line: 738, baseType: !279, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !283, file: !26, line: 845, baseType: !112, size: 8, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !280, file: !26, line: 893, baseType: !303, size: 640)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !26, line: 851, size: 640, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !303, file: !26, line: 852, baseType: !279, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !26, line: 852, baseType: !112, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !26, line: 852, baseType: !112, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !303, file: !26, line: 852, baseType: !120, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !303, file: !26, line: 852, baseType: !194, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !26, line: 852, baseType: !279, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !303, file: !26, line: 852, baseType: !141, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !26, line: 852, baseType: !293, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !303, file: !26, line: 852, baseType: !112, size: 8, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !303, file: !26, line: 852, baseType: !182, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !303, file: !26, line: 853, baseType: !194, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !303, file: !26, line: 854, baseType: !5, size: 32, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !26, line: 855, baseType: !5, size: 32, offset: 608)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !280, file: !26, line: 894, baseType: !319, size: 1600)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !26, line: 862, size: 1600, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !319, file: !26, line: 863, baseType: !279, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !26, line: 863, baseType: !112, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !26, line: 863, baseType: !112, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !319, file: !26, line: 863, baseType: !120, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !319, file: !26, line: 863, baseType: !194, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !26, line: 863, baseType: !279, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !319, file: !26, line: 863, baseType: !141, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !26, line: 863, baseType: !293, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !319, file: !26, line: 863, baseType: !112, size: 8, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !319, file: !26, line: 863, baseType: !279, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !319, file: !26, line: 864, baseType: !279, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !319, file: !26, line: 865, baseType: !182, size: 64, offset: 576)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !319, file: !26, line: 866, baseType: !112, size: 8, offset: 640)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !319, file: !26, line: 867, baseType: !182, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !319, file: !26, line: 868, baseType: !182, size: 64, offset: 768)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !319, file: !26, line: 869, baseType: !182, size: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !319, file: !26, line: 870, baseType: !338, size: 32, offset: 896)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 32, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 4)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !319, file: !26, line: 871, baseType: !5, size: 32, offset: 928)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !319, file: !26, line: 872, baseType: !5, size: 32, offset: 960)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !319, file: !26, line: 873, baseType: !5, size: 32, offset: 992)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !319, file: !26, line: 874, baseType: !5, size: 32, offset: 1024)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !319, file: !26, line: 875, baseType: !5, size: 32, offset: 1056)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !319, file: !26, line: 876, baseType: !5, size: 32, offset: 1088)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !319, file: !26, line: 877, baseType: !5, size: 32, offset: 1120)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !319, file: !26, line: 878, baseType: !5, size: 32, offset: 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !319, file: !26, line: 879, baseType: !5, size: 32, offset: 1184)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !319, file: !26, line: 880, baseType: !5, size: 32, offset: 1216)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !319, file: !26, line: 881, baseType: !5, size: 32, offset: 1248)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !319, file: !26, line: 882, baseType: !5, size: 32, offset: 1280)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !319, file: !26, line: 883, baseType: !5, size: 32, offset: 1312)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !319, file: !26, line: 884, baseType: !120, size: 16, offset: 1344)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !319, file: !26, line: 885, baseType: !112, size: 8, offset: 1360)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !319, file: !26, line: 886, baseType: !112, size: 8, offset: 1368)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !319, file: !26, line: 887, baseType: !112, size: 8, offset: 1376)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !319, file: !26, line: 888, baseType: !359, size: 160, offset: 1384)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 160, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 20)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !271, file: !26, line: 916, baseType: !141, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !271, file: !26, line: 917, baseType: !364, size: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !26, line: 679, size: 640, elements: !366)
!366 = !{!367, !375, !388, !397, !406, !419, !433, !445, !457}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !365, file: !26, line: 680, baseType: !368, size: 128)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !26, line: 575, size: 128, elements: !369)
!369 = !{!370, !371, !372, !373, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !26, line: 576, baseType: !34, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !26, line: 576, baseType: !112, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !26, line: 576, baseType: !112, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !368, file: !26, line: 576, baseType: !120, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !368, file: !26, line: 576, baseType: !120, size: 16, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !365, file: !26, line: 681, baseType: !376, size: 384)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !26, line: 604, size: 384, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !26, line: 605, baseType: !34, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !376, file: !26, line: 605, baseType: !112, size: 8, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !26, line: 605, baseType: !112, size: 8, offset: 72)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !376, file: !26, line: 605, baseType: !120, size: 16, offset: 80)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !376, file: !26, line: 605, baseType: !120, size: 16, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !376, file: !26, line: 606, baseType: !120, size: 16, offset: 112)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !376, file: !26, line: 607, baseType: !279, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !376, file: !26, line: 608, baseType: !194, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !376, file: !26, line: 609, baseType: !194, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !376, file: !26, line: 610, baseType: !170, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !365, file: !26, line: 682, baseType: !389, size: 192)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !26, line: 582, size: 192, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !389, file: !26, line: 583, baseType: !34, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !389, file: !26, line: 583, baseType: !112, size: 8, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !389, file: !26, line: 583, baseType: !112, size: 8, offset: 72)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !389, file: !26, line: 583, baseType: !120, size: 16, offset: 80)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !389, file: !26, line: 583, baseType: !120, size: 16, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !389, file: !26, line: 584, baseType: !145, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !365, file: !26, line: 683, baseType: !398, size: 192)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !26, line: 616, size: 192, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !26, line: 617, baseType: !34, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !398, file: !26, line: 617, baseType: !112, size: 8, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !26, line: 617, baseType: !112, size: 8, offset: 72)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !398, file: !26, line: 617, baseType: !120, size: 16, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !398, file: !26, line: 617, baseType: !120, size: 16, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !398, file: !26, line: 618, baseType: !141, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !365, file: !26, line: 684, baseType: !407, size: 448)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !26, line: 621, size: 448, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !407, file: !26, line: 622, baseType: !34, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !407, file: !26, line: 622, baseType: !112, size: 8, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !26, line: 622, baseType: !112, size: 8, offset: 72)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !407, file: !26, line: 622, baseType: !120, size: 16, offset: 80)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !407, file: !26, line: 622, baseType: !120, size: 16, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !407, file: !26, line: 623, baseType: !5, size: 32, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !407, file: !26, line: 624, baseType: !279, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !407, file: !26, line: 625, baseType: !194, size: 64, offset: 256)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !407, file: !26, line: 626, baseType: !194, size: 64, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !407, file: !26, line: 627, baseType: !5, size: 32, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !365, file: !26, line: 685, baseType: !420, size: 512)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !26, line: 590, size: 512, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !26, line: 591, baseType: !34, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !420, file: !26, line: 591, baseType: !112, size: 8, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !26, line: 591, baseType: !112, size: 8, offset: 72)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !420, file: !26, line: 591, baseType: !120, size: 16, offset: 80)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !420, file: !26, line: 591, baseType: !120, size: 16, offset: 96)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !420, file: !26, line: 592, baseType: !5, size: 32, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !420, file: !26, line: 593, baseType: !145, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !420, file: !26, line: 594, baseType: !145, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !420, file: !26, line: 595, baseType: !244, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !420, file: !26, line: 596, baseType: !34, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !420, file: !26, line: 597, baseType: !5, size: 32, offset: 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !365, file: !26, line: 686, baseType: !434, size: 320)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !26, line: 634, size: 320, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !26, line: 635, baseType: !34, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !434, file: !26, line: 635, baseType: !112, size: 8, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !26, line: 635, baseType: !112, size: 8, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !434, file: !26, line: 635, baseType: !120, size: 16, offset: 80)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !434, file: !26, line: 635, baseType: !120, size: 16, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !434, file: !26, line: 636, baseType: !112, size: 8, offset: 112)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !434, file: !26, line: 637, baseType: !244, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !434, file: !26, line: 638, baseType: !145, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !434, file: !26, line: 639, baseType: !170, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !365, file: !26, line: 687, baseType: !446, size: 640)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !26, line: 646, size: 640, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !26, line: 647, baseType: !34, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !446, file: !26, line: 647, baseType: !112, size: 8, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !26, line: 647, baseType: !112, size: 8, offset: 72)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !446, file: !26, line: 647, baseType: !120, size: 16, offset: 80)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !446, file: !26, line: 647, baseType: !120, size: 16, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !446, file: !26, line: 648, baseType: !454, size: 512, offset: 128)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 512, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 8)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !365, file: !26, line: 688, baseType: !458, size: 320)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !26, line: 669, size: 320, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !26, line: 670, baseType: !34, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !458, file: !26, line: 670, baseType: !112, size: 8, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !26, line: 670, baseType: !112, size: 8, offset: 72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !458, file: !26, line: 670, baseType: !120, size: 16, offset: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !458, file: !26, line: 670, baseType: !120, size: 16, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !458, file: !26, line: 671, baseType: !112, size: 8, offset: 112)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !458, file: !26, line: 672, baseType: !141, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !458, file: !26, line: 673, baseType: !145, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !458, file: !26, line: 674, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !26, line: 660, size: 128, elements: !471)
!471 = !{!472, !478}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !26, line: 661, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !4, line: 1061, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !477, !5, !34}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !4, line: 424, baseType: !34)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !470, file: !26, line: 662, baseType: !34, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !271, file: !26, line: 918, baseType: !279, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !271, file: !26, line: 919, baseType: !5, size: 32, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !245, file: !246, line: 61, baseType: !5, size: 32, offset: 1088)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !245, file: !246, line: 62, baseType: !5, size: 32, offset: 1120)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !245, file: !246, line: 63, baseType: !120, size: 16, offset: 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !245, file: !246, line: 64, baseType: !112, size: 8, offset: 1168)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !245, file: !246, line: 66, baseType: !486, size: 2688, offset: 1216)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 2688, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 7)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !245, file: !246, line: 67, baseType: !490, size: 3072, offset: 3904)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 3072, elements: !455)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !245, file: !246, line: 68, baseType: !492, size: 576, offset: 6976)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 576, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 9)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !245, file: !246, line: 69, baseType: !209, size: 64, offset: 7552)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !245, file: !246, line: 71, baseType: !194, size: 64, offset: 7616)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !245, file: !246, line: 72, baseType: !209, size: 64, offset: 7680)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !245, file: !246, line: 73, baseType: !364, size: 64, offset: 7744)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !245, file: !246, line: 74, baseType: !141, size: 64, offset: 7808)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !245, file: !246, line: 75, baseType: !145, size: 64, offset: 7872)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !245, file: !246, line: 76, baseType: !141, size: 64, offset: 7936)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !245, file: !246, line: 77, baseType: !279, size: 64, offset: 8000)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !245, file: !246, line: 78, baseType: !145, size: 64, offset: 8064)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !245, file: !246, line: 79, baseType: !141, size: 64, offset: 8128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !245, file: !246, line: 80, baseType: !182, size: 64, offset: 8192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !245, file: !246, line: 81, baseType: !279, size: 64, offset: 8256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !245, file: !246, line: 82, baseType: !508, size: 64, offset: 8320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !26, line: 718, size: 128, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !510, file: !26, line: 722, baseType: !5, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !510, file: !26, line: 723, baseType: !5, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !26, line: 724, baseType: !120, size: 16, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !510, file: !26, line: 725, baseType: !112, size: 8, offset: 80)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !510, file: !26, line: 726, baseType: !112, size: 8, offset: 88)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !26, line: 727, baseType: !112, size: 8, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !245, file: !246, line: 83, baseType: !279, size: 64, offset: 8384)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !245, file: !246, line: 84, baseType: !145, size: 64, offset: 8448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !245, file: !246, line: 85, baseType: !364, size: 64, offset: 8512)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !245, file: !246, line: 86, baseType: !145, size: 64, offset: 8576)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !245, file: !246, line: 87, baseType: !364, size: 64, offset: 8640)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !245, file: !246, line: 88, baseType: !279, size: 64, offset: 8704)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !245, file: !246, line: 89, baseType: !279, size: 64, offset: 8768)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !245, file: !246, line: 90, baseType: !526, size: 64, offset: 8832)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !245, file: !246, line: 91, baseType: !528, size: 64, offset: 8896)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !26, line: 652, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!3, !244, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !245, file: !246, line: 92, baseType: !534, size: 64, offset: 8960)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !26, line: 656, baseType: !241)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !237, file: !147, line: 153, baseType: !145, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !223, file: !147, line: 156, baseType: !5, size: 32, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !223, file: !147, line: 157, baseType: !256, size: 16, offset: 416)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !223, file: !147, line: 158, baseType: !112, size: 8, offset: 432)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !146, file: !147, line: 377, baseType: !540, size: 576)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !147, line: 122, size: 576, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !540, file: !147, line: 123, baseType: !145, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !540, file: !147, line: 123, baseType: !112, size: 8, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !540, file: !147, line: 123, baseType: !112, size: 8, offset: 72)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !540, file: !147, line: 123, baseType: !120, size: 16, offset: 80)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !147, line: 123, baseType: !112, size: 8, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !540, file: !147, line: 123, baseType: !112, size: 8, offset: 104)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !540, file: !147, line: 124, baseType: !120, size: 16, offset: 112)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !540, file: !147, line: 125, baseType: !34, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !540, file: !147, line: 126, baseType: !170, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !540, file: !147, line: 127, baseType: !526, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !540, file: !147, line: 128, baseType: !145, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !540, file: !147, line: 129, baseType: !145, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !540, file: !147, line: 130, baseType: !141, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !540, file: !147, line: 131, baseType: !112, size: 8, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !146, file: !147, line: 378, baseType: !557, size: 512)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !147, line: 134, size: 512, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !570, !571}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !557, file: !147, line: 135, baseType: !145, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !557, file: !147, line: 135, baseType: !112, size: 8, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !147, line: 135, baseType: !112, size: 8, offset: 72)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !557, file: !147, line: 135, baseType: !120, size: 16, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !147, line: 135, baseType: !112, size: 8, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !557, file: !147, line: 135, baseType: !112, size: 8, offset: 104)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !557, file: !147, line: 136, baseType: !141, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !147, line: 137, baseType: !145, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !557, file: !147, line: 138, baseType: !145, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !557, file: !147, line: 139, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !4, line: 129, baseType: !170)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !557, file: !147, line: 140, baseType: !5, size: 32, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !557, file: !147, line: 141, baseType: !34, size: 64, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !146, file: !147, line: 379, baseType: !573, size: 320)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !147, line: 185, size: 320, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !584}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !147, line: 186, baseType: !145, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !147, line: 186, baseType: !112, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !147, line: 186, baseType: !112, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !147, line: 186, baseType: !120, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !147, line: 186, baseType: !112, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !573, file: !147, line: 186, baseType: !581, size: 128, offset: 128)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 128, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 2)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !573, file: !147, line: 186, baseType: !145, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !146, file: !147, line: 380, baseType: !586, size: 384)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !147, line: 188, size: 384, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594, !595}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !147, line: 189, baseType: !145, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !147, line: 189, baseType: !112, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !147, line: 189, baseType: !112, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !147, line: 189, baseType: !120, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !147, line: 189, baseType: !112, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !586, file: !147, line: 190, baseType: !581, size: 128, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !586, file: !147, line: 190, baseType: !145, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !586, file: !147, line: 190, baseType: !137, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !146, file: !147, line: 381, baseType: !597, size: 384)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !147, line: 193, size: 384, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !147, line: 194, baseType: !145, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !147, line: 194, baseType: !112, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !147, line: 194, baseType: !112, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !147, line: 194, baseType: !120, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !147, line: 194, baseType: !112, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !597, file: !147, line: 194, baseType: !581, size: 128, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !597, file: !147, line: 194, baseType: !145, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !597, file: !147, line: 194, baseType: !5, size: 32, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !597, file: !147, line: 195, baseType: !5, size: 32, offset: 352)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !146, file: !147, line: 382, baseType: !609, size: 384)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !147, line: 198, size: 384, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !609, file: !147, line: 199, baseType: !145, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !609, file: !147, line: 199, baseType: !112, size: 8, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !609, file: !147, line: 199, baseType: !112, size: 8, offset: 72)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !609, file: !147, line: 199, baseType: !120, size: 16, offset: 80)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !147, line: 199, baseType: !112, size: 8, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !609, file: !147, line: 201, baseType: !112, size: 8, offset: 104)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !609, file: !147, line: 202, baseType: !112, size: 8, offset: 112)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !609, file: !147, line: 203, baseType: !581, size: 128, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !609, file: !147, line: 203, baseType: !145, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !609, file: !147, line: 203, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !4, line: 128, baseType: !170)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !146, file: !147, line: 383, baseType: !623, size: 320)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !147, line: 206, size: 320, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !147, line: 207, baseType: !145, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !147, line: 207, baseType: !112, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !147, line: 207, baseType: !112, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !147, line: 207, baseType: !120, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !147, line: 207, baseType: !112, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !623, file: !147, line: 207, baseType: !581, size: 128, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !623, file: !147, line: 207, baseType: !145, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !146, file: !147, line: 384, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !147, line: 234, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !147, line: 235, baseType: !145, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !147, line: 235, baseType: !112, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !147, line: 235, baseType: !112, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !147, line: 235, baseType: !120, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !147, line: 235, baseType: !112, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !633, file: !147, line: 235, baseType: !112, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !633, file: !147, line: 235, baseType: !112, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !633, file: !147, line: 235, baseType: !112, size: 8, offset: 120)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !147, line: 235, baseType: !141, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !633, file: !147, line: 235, baseType: !5, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !633, file: !147, line: 235, baseType: !5, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !147, line: 235, baseType: !5, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !633, file: !147, line: 235, baseType: !112, size: 8, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !633, file: !147, line: 235, baseType: !112, size: 8, offset: 296)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !633, file: !147, line: 235, baseType: !145, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !146, file: !147, line: 385, baseType: !651, size: 576)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !147, line: 238, size: 576, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !651, file: !147, line: 239, baseType: !145, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !651, file: !147, line: 239, baseType: !112, size: 8, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !147, line: 239, baseType: !112, size: 8, offset: 72)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !651, file: !147, line: 239, baseType: !120, size: 16, offset: 80)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !147, line: 239, baseType: !112, size: 8, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !651, file: !147, line: 239, baseType: !112, size: 8, offset: 104)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !651, file: !147, line: 239, baseType: !112, size: 8, offset: 112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !651, file: !147, line: 239, baseType: !112, size: 8, offset: 120)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !147, line: 239, baseType: !141, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !651, file: !147, line: 239, baseType: !5, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !651, file: !147, line: 239, baseType: !5, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !147, line: 239, baseType: !5, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !651, file: !147, line: 239, baseType: !112, size: 8, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !651, file: !147, line: 239, baseType: !112, size: 8, offset: 296)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !651, file: !147, line: 239, baseType: !120, size: 16, offset: 304)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !651, file: !147, line: 240, baseType: !145, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !651, file: !147, line: 241, baseType: !194, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !651, file: !147, line: 242, baseType: !120, size: 16, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !651, file: !147, line: 243, baseType: !194, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !146, file: !147, line: 386, baseType: !673, size: 384)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !147, line: 263, size: 384, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !673, file: !147, line: 264, baseType: !145, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !673, file: !147, line: 264, baseType: !112, size: 8, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !147, line: 264, baseType: !112, size: 8, offset: 72)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !673, file: !147, line: 264, baseType: !120, size: 16, offset: 80)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !147, line: 264, baseType: !112, size: 8, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !673, file: !147, line: 264, baseType: !112, size: 8, offset: 104)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !673, file: !147, line: 264, baseType: !112, size: 8, offset: 112)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !673, file: !147, line: 264, baseType: !112, size: 8, offset: 120)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !147, line: 264, baseType: !141, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !673, file: !147, line: 264, baseType: !5, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !673, file: !147, line: 264, baseType: !5, size: 32, offset: 224)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !673, file: !147, line: 264, baseType: !5, size: 32, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !673, file: !147, line: 264, baseType: !112, size: 8, offset: 288)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !673, file: !147, line: 264, baseType: !112, size: 8, offset: 296)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !673, file: !147, line: 264, baseType: !112, size: 8, offset: 304)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !673, file: !147, line: 265, baseType: !145, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !146, file: !147, line: 387, baseType: !692, size: 448)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !147, line: 246, size: 448, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !692, file: !147, line: 247, baseType: !145, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !692, file: !147, line: 247, baseType: !112, size: 8, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !147, line: 247, baseType: !112, size: 8, offset: 72)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !692, file: !147, line: 247, baseType: !120, size: 16, offset: 80)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !147, line: 247, baseType: !112, size: 8, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !692, file: !147, line: 247, baseType: !112, size: 8, offset: 104)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !692, file: !147, line: 247, baseType: !112, size: 8, offset: 112)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !692, file: !147, line: 247, baseType: !112, size: 8, offset: 120)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !692, file: !147, line: 247, baseType: !141, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !692, file: !147, line: 247, baseType: !5, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !692, file: !147, line: 247, baseType: !5, size: 32, offset: 224)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !692, file: !147, line: 247, baseType: !5, size: 32, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !692, file: !147, line: 247, baseType: !112, size: 8, offset: 288)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !692, file: !147, line: 247, baseType: !112, size: 8, offset: 296)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !692, file: !147, line: 247, baseType: !145, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !692, file: !147, line: 248, baseType: !145, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !146, file: !147, line: 388, baseType: !711, size: 448)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !147, line: 251, size: 448, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !147, line: 252, baseType: !145, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !147, line: 252, baseType: !112, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !147, line: 252, baseType: !112, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !147, line: 252, baseType: !120, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !147, line: 252, baseType: !112, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !711, file: !147, line: 252, baseType: !112, size: 8, offset: 104)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !711, file: !147, line: 252, baseType: !112, size: 8, offset: 112)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !711, file: !147, line: 252, baseType: !112, size: 8, offset: 120)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !147, line: 252, baseType: !141, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !711, file: !147, line: 252, baseType: !5, size: 32, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !711, file: !147, line: 252, baseType: !5, size: 32, offset: 224)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !711, file: !147, line: 252, baseType: !5, size: 32, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !711, file: !147, line: 252, baseType: !112, size: 8, offset: 288)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !711, file: !147, line: 252, baseType: !112, size: 8, offset: 296)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !711, file: !147, line: 257, baseType: !145, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !711, file: !147, line: 258, baseType: !145, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !146, file: !147, line: 389, baseType: !730, size: 512)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !147, line: 274, size: 512, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !730, file: !147, line: 275, baseType: !145, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !147, line: 275, baseType: !112, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !147, line: 275, baseType: !112, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !730, file: !147, line: 275, baseType: !120, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !147, line: 275, baseType: !112, size: 8, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !147, line: 275, baseType: !141, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !730, file: !147, line: 276, baseType: !5, size: 32, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !730, file: !147, line: 277, baseType: !473, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !730, file: !147, line: 278, baseType: !34, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !147, line: 279, baseType: !581, size: 128, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !146, file: !147, line: 390, baseType: !743, size: 576)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !147, line: 282, size: 576, elements: !744)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !758, !759, !760, !761, !767, !768}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !743, file: !147, line: 283, baseType: !145, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !743, file: !147, line: 283, baseType: !112, size: 8, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !743, file: !147, line: 283, baseType: !112, size: 8, offset: 72)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !743, file: !147, line: 283, baseType: !120, size: 16, offset: 80)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !147, line: 283, baseType: !112, size: 8, offset: 96)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !743, file: !147, line: 283, baseType: !112, size: 8, offset: 104)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !743, file: !147, line: 284, baseType: !112, size: 8, offset: 112)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !743, file: !147, line: 285, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !4, line: 1093, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!3, !5, !569, !5, !757, !34, !34}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !743, file: !147, line: 286, baseType: !141, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !743, file: !147, line: 287, baseType: !34, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !743, file: !147, line: 288, baseType: !34, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !743, file: !147, line: 289, baseType: !762, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !4, line: 1126, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!3, !477, !5, !34, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !743, file: !147, line: 290, baseType: !145, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !147, line: 291, baseType: !145, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !146, file: !147, line: 391, baseType: !770, size: 512)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !147, line: 309, size: 512, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !770, file: !147, line: 310, baseType: !145, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !770, file: !147, line: 310, baseType: !112, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !770, file: !147, line: 310, baseType: !112, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !770, file: !147, line: 310, baseType: !120, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !147, line: 310, baseType: !112, size: 8, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !770, file: !147, line: 310, baseType: !112, size: 8, offset: 104)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !770, file: !147, line: 311, baseType: !112, size: 8, offset: 112)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !770, file: !147, line: 312, baseType: !112, size: 8, offset: 120)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !770, file: !147, line: 313, baseType: !34, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !770, file: !147, line: 314, baseType: !141, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !770, file: !147, line: 315, baseType: !209, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !770, file: !147, line: 316, baseType: !194, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !770, file: !147, line: 317, baseType: !194, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !770, file: !147, line: 318, baseType: !5, size: 32, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !146, file: !147, line: 392, baseType: !787, size: 448)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !147, line: 342, size: 448, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794, !795, !796, !797, !798}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !787, file: !147, line: 343, baseType: !145, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !787, file: !147, line: 343, baseType: !112, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !147, line: 343, baseType: !112, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !787, file: !147, line: 343, baseType: !120, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !147, line: 343, baseType: !112, size: 8, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !787, file: !147, line: 343, baseType: !141, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !787, file: !147, line: 344, baseType: !141, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !787, file: !147, line: 345, baseType: !34, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !787, file: !147, line: 346, baseType: !194, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !787, file: !147, line: 347, baseType: !5, size: 32, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !146, file: !147, line: 393, baseType: !800, size: 256)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !147, line: 352, size: 256, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !812}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !800, file: !147, line: 353, baseType: !145, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !800, file: !147, line: 353, baseType: !112, size: 8, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !800, file: !147, line: 353, baseType: !112, size: 8, offset: 72)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !800, file: !147, line: 353, baseType: !120, size: 16, offset: 80)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !147, line: 353, baseType: !112, size: 8, offset: 96)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !800, file: !147, line: 353, baseType: !808, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !4, line: 1064, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !477, !34}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !800, file: !147, line: 354, baseType: !34, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !146, file: !147, line: 394, baseType: !814, size: 192)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !147, line: 359, size: 192, elements: !815)
!815 = !{!816, !817, !818, !819, !820, !821}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !814, file: !147, line: 360, baseType: !145, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !814, file: !147, line: 360, baseType: !112, size: 8, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !814, file: !147, line: 360, baseType: !112, size: 8, offset: 72)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !814, file: !147, line: 360, baseType: !120, size: 16, offset: 80)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !814, file: !147, line: 360, baseType: !112, size: 8, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !814, file: !147, line: 360, baseType: !145, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !147, line: 401, baseType: !142, size: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !26, line: 135, baseType: !112, size: 8, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !26, line: 136, baseType: !112, size: 8, offset: 72)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !26, line: 137, baseType: !120, size: 16, offset: 80)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !142, file: !26, line: 138, baseType: !827, size: 32, offset: 96)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !828, line: 328, size: 32, elements: !829)
!828 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !827, file: !828, line: 329, baseType: !5, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !827, file: !828, line: 330, baseType: !338, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !142, file: !26, line: 139, baseType: !141, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !142, file: !26, line: 140, baseType: !141, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !142, file: !26, line: 141, baseType: !141, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !142, file: !26, line: 142, baseType: !256, size: 16, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !138, file: !26, line: 482, baseType: !137, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !26, line: 483, baseType: !137, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !138, file: !26, line: 484, baseType: !131, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !138, file: !26, line: 485, baseType: !840, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !26, line: 466, size: 320, elements: !842)
!842 = !{!843, !848, !849, !850, !851, !852, !853}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !841, file: !26, line: 467, baseType: !844, size: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !26, line: 459, size: 128, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !844, file: !26, line: 460, baseType: !112, size: 8)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !844, file: !26, line: 461, baseType: !170, size: 64, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !841, file: !26, line: 468, baseType: !844, size: 128, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !841, file: !26, line: 469, baseType: !120, size: 16, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !841, file: !26, line: 470, baseType: !112, size: 8, offset: 272)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !841, file: !26, line: 471, baseType: !112, size: 8, offset: 280)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !841, file: !26, line: 472, baseType: !112, size: 8, offset: 288)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !841, file: !26, line: 473, baseType: !112, size: 8, offset: 296)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !138, file: !26, line: 486, baseType: !855, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !26, line: 448, size: 192, elements: !857)
!857 = !{!858, !881, !882, !883, !884, !885}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !856, file: !26, line: 449, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !26, line: 438, size: 64, elements: !860)
!860 = !{!861, !862, !875}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !859, file: !26, line: 439, baseType: !141, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !859, file: !26, line: 440, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !26, line: 419, size: 256, elements: !865)
!865 = !{!866, !871, !872, !873, !874}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !864, file: !26, line: 420, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !4, line: 1058, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!5, !477, !5, !34}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !864, file: !26, line: 421, baseType: !34, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !864, file: !26, line: 422, baseType: !141, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !864, file: !26, line: 423, baseType: !112, size: 8, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !864, file: !26, line: 424, baseType: !112, size: 8, offset: 200)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !859, file: !26, line: 441, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !26, line: 429, size: 128, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !877, file: !26, line: 430, baseType: !141, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !877, file: !26, line: 431, baseType: !876, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !856, file: !26, line: 450, baseType: !840, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !856, file: !26, line: 451, baseType: !112, size: 8, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !856, file: !26, line: 452, baseType: !112, size: 8, offset: 136)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !856, file: !26, line: 453, baseType: !112, size: 8, offset: 144)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !856, file: !26, line: 454, baseType: !112, size: 8, offset: 152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !138, file: !26, line: 487, baseType: !170, size: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !138, file: !26, line: 488, baseType: !5, size: 32, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !138, file: !26, line: 489, baseType: !120, size: 16, offset: 480)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !138, file: !26, line: 490, baseType: !120, size: 16, offset: 496)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !138, file: !26, line: 491, baseType: !112, size: 8, offset: 512)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !138, file: !26, line: 492, baseType: !112, size: 8, offset: 520)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !132, file: !26, line: 501, baseType: !5, size: 32, offset: 192)
!893 = !DILocalVariable(name: "interrupt_handled", scope: !127, file: !1, line: 123, type: !5)
!894 = !DILocation(line: 120, column: 55, scope: !127)
!895 = !DILocation(line: 122, column: 2, scope: !127)
!896 = !DILocation(line: 122, column: 30, scope: !127)
!897 = !DILocation(line: 122, column: 47, scope: !127)
!898 = !DILocation(line: 123, column: 2, scope: !127)
!899 = !DILocation(line: 123, column: 6, scope: !127)
!900 = !DILocation(line: 134, column: 42, scope: !127)
!901 = !DILocation(line: 134, column: 23, scope: !127)
!902 = !DILocation(line: 134, column: 20, scope: !127)
!903 = !DILocation(line: 135, column: 2, scope: !127)
!904 = !DILocation(line: 136, column: 1, scope: !127)
!905 = !DISubprogram(name: "acpi_ev_gpe_detect", scope: !906, file: !906, line: 61, type: !907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!906 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!907 = !DISubroutineType(types: !908)
!908 = !{!5, !131}
!909 = distinct !DISubprogram(name: "acpi_ev_install_sci_handler", scope: !1, file: !1, line: 150, type: !20, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !910)
!910 = !{!911}
!911 = !DILocalVariable(name: "status", scope: !909, file: !1, line: 152, type: !5)
!912 = !DILocation(line: 152, column: 2, scope: !909)
!913 = !DILocation(line: 152, column: 6, scope: !909)
!914 = !DILocation(line: 157, column: 60, scope: !909)
!915 = !DILocation(line: 157, column: 40, scope: !909)
!916 = !DILocation(line: 159, column: 12, scope: !909)
!917 = !DILocation(line: 157, column: 6, scope: !909)
!918 = !DILocation(line: 156, column: 9, scope: !909)
!919 = !DILocation(line: 160, column: 2, scope: !909)
!920 = !DILocation(line: 161, column: 1, scope: !909)
!921 = !DISubprogram(name: "acpi_os_install_interrupt_handler", scope: !78, file: !78, line: 227, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DISubroutineType(types: !923)
!923 = !{!3, !5, !924, !34}
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_osd_handler", file: !4, line: 1035, baseType: !31)
!925 = distinct !DISubprogram(name: "acpi_ev_sci_xrupt_handler", scope: !1, file: !1, line: 76, type: !32, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !926)
!926 = !{!927, !928, !929}
!927 = !DILocalVariable(name: "context", arg: 1, scope: !925, file: !1, line: 76, type: !34)
!928 = !DILocalVariable(name: "gpe_xrupt_list", scope: !925, file: !1, line: 78, type: !131)
!929 = !DILocalVariable(name: "interrupt_handled", scope: !925, file: !1, line: 79, type: !5)
!930 = !DILocation(line: 76, column: 62, scope: !925)
!931 = !DILocation(line: 78, column: 2, scope: !925)
!932 = !DILocation(line: 78, column: 30, scope: !925)
!933 = !DILocation(line: 78, column: 47, scope: !925)
!934 = !DILocation(line: 79, column: 2, scope: !925)
!935 = !DILocation(line: 79, column: 6, scope: !925)
!936 = !DILocation(line: 92, column: 23, scope: !925)
!937 = !DILocation(line: 92, column: 20, scope: !925)
!938 = !DILocation(line: 98, column: 42, scope: !925)
!939 = !DILocation(line: 98, column: 23, scope: !925)
!940 = !DILocation(line: 98, column: 20, scope: !925)
!941 = !DILocation(line: 102, column: 23, scope: !925)
!942 = !DILocation(line: 102, column: 20, scope: !925)
!943 = !DILocation(line: 104, column: 16, scope: !925)
!944 = !DILocation(line: 105, column: 2, scope: !925)
!945 = !DILocation(line: 106, column: 1, scope: !925)
!946 = distinct !DISubprogram(name: "acpi_ev_remove_all_sci_handlers", scope: !1, file: !1, line: 182, type: !947, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{!3}
!949 = !{!950, !951, !952}
!950 = !DILocalVariable(name: "sci_handler", scope: !946, file: !1, line: 184, type: !24)
!951 = !DILocalVariable(name: "flags", scope: !946, file: !1, line: 185, type: !37)
!952 = !DILocalVariable(name: "status", scope: !946, file: !1, line: 186, type: !3)
!953 = !DILocation(line: 184, column: 2, scope: !946)
!954 = !DILocation(line: 184, column: 32, scope: !946)
!955 = !DILocation(line: 185, column: 2, scope: !946)
!956 = !DILocation(line: 185, column: 17, scope: !946)
!957 = !DILocation(line: 186, column: 2, scope: !946)
!958 = !DILocation(line: 186, column: 14, scope: !946)
!959 = !DILocation(line: 193, column: 59, scope: !946)
!960 = !DILocation(line: 193, column: 39, scope: !946)
!961 = !DILocation(line: 193, column: 6, scope: !946)
!962 = !DILocation(line: 192, column: 9, scope: !946)
!963 = !DILocation(line: 196, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !946, file: !1, line: 196, column: 6)
!965 = !DILocation(line: 196, column: 6, scope: !946)
!966 = !DILocation(line: 197, column: 11, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !1, line: 196, column: 34)
!968 = !DILocation(line: 197, column: 3, scope: !967)
!969 = !DILocation(line: 200, column: 31, scope: !946)
!970 = !DILocation(line: 200, column: 10, scope: !946)
!971 = !DILocation(line: 200, column: 8, scope: !946)
!972 = !DILocation(line: 204, column: 2, scope: !946)
!973 = !DILocation(line: 204, column: 9, scope: !946)
!974 = !DILocation(line: 205, column: 17, scope: !975)
!975 = distinct !DILexicalBlock(scope: !946, file: !1, line: 204, column: 36)
!976 = !DILocation(line: 205, column: 15, scope: !975)
!977 = !DILocation(line: 206, column: 31, scope: !975)
!978 = !DILocation(line: 206, column: 44, scope: !975)
!979 = !DILocation(line: 206, column: 29, scope: !975)
!980 = !DILocation(line: 207, column: 3, scope: !975)
!981 = distinct !{!981, !972, !982, !69, !70}
!982 = !DILocation(line: 208, column: 2, scope: !946)
!983 = !DILocation(line: 210, column: 23, scope: !946)
!984 = !DILocation(line: 210, column: 42, scope: !946)
!985 = !DILocation(line: 210, column: 2, scope: !946)
!986 = !DILocation(line: 211, column: 2, scope: !946)
!987 = !DILocation(line: 212, column: 1, scope: !946)
!988 = !DISubprogram(name: "acpi_os_remove_interrupt_handler", scope: !78, file: !78, line: 234, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubroutineType(types: !990)
!990 = !{!3, !5, !924}
!991 = distinct !DISubprogram(name: "acpi_os_free", scope: !992, file: !992, line: 60, type: !993, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !995)
!992 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!993 = !DISubroutineType(types: !994)
!994 = !{null, !34}
!995 = !{!996}
!996 = !DILocalVariable(name: "memory", arg: 1, scope: !991, file: !992, line: 60, type: !34)
!997 = !DILocation(line: 60, column: 39, scope: !991)
!998 = !DILocation(line: 62, column: 8, scope: !991)
!999 = !DILocation(line: 62, column: 2, scope: !991)
!1000 = !DILocation(line: 63, column: 1, scope: !991)
!1001 = !DISubprogram(name: "acpi_ev_fixed_event_detect", scope: !906, file: !906, line: 34, type: !20, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DISubprogram(name: "kfree", scope: !1003, file: !1003, line: 227, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !1006}
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
