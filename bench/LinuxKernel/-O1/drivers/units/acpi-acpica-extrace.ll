; ModuleID = 'drivers/acpi/acpica/extrace.c'
source_filename = "drivers/acpi/acpica/extrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_trace_method_object = internal global ptr null, align 8, !dbg !0
@acpi_dbg_level = external dso_local global i32, align 4
@acpi_gbl_original_dbg_level = external dso_local global i32, align 4
@acpi_dbg_layer = external dso_local global i32, align 4
@acpi_gbl_original_dbg_layer = external dso_local global i32, align 4
@acpi_gbl_trace_dbg_level = external dso_local global i32, align 4
@acpi_gbl_trace_dbg_layer = external dso_local global i32, align 4
@acpi_gbl_trace_flags = external dso_local global i32, align 4
@acpi_gbl_trace_method_name = external dso_local global ptr, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_trace_point(i32 noundef %type, i8 noundef zeroext %begin, ptr noundef %aml, ptr noundef %pathname) #0 align 16 !dbg !798 {
entry:
  %type.addr = alloca i32, align 4
  %begin.addr = alloca i8, align 1
  %aml.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !803, metadata !DIExpression()), !dbg !807
  store i8 %begin, ptr %begin.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %begin.addr, metadata !804, metadata !DIExpression()), !dbg !808
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !805, metadata !DIExpression()), !dbg !809
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !806, metadata !DIExpression()), !dbg !810
  %0 = load ptr, ptr %pathname.addr, align 8, !dbg !811
  %tobool = icmp ne ptr %0, null, !dbg !811
  br i1 %tobool, label %if.then, label %if.else, !dbg !813

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !814

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !816
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_start_trace_method(ptr noundef %method_node, ptr noundef %obj_desc, ptr noundef %walk_state) #0 align 16 !dbg !817 {
entry:
  %method_node.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %pathname = alloca ptr, align 8
  %enabled = alloca i8, align 1
  store ptr %method_node, ptr %method_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method_node.addr, metadata !821, metadata !DIExpression()), !dbg !826
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !822, metadata !DIExpression()), !dbg !827
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !823, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathname) #5, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %pathname, metadata !824, metadata !DIExpression()), !dbg !830
  store ptr null, ptr %pathname, align 8, !dbg !830
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #5, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !825, metadata !DIExpression()), !dbg !832
  store i8 0, ptr %enabled, align 1, !dbg !832
  %0 = load ptr, ptr %method_node.addr, align 8, !dbg !833
  %tobool = icmp ne ptr %0, null, !dbg !833
  br i1 %tobool, label %if.then, label %if.end, !dbg !835

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %method_node.addr, align 8, !dbg !836
  %call = call ptr @acpi_ns_get_normalized_pathname(ptr noundef %1, i8 noundef zeroext 1) #6, !dbg !838
  store ptr %call, ptr %pathname, align 8, !dbg !839
  br label %if.end, !dbg !840

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pathname, align 8, !dbg !841
  %call1 = call zeroext i8 @acpi_ex_interpreter_trace_enabled(ptr noundef %2) #6, !dbg !842
  store i8 %call1, ptr %enabled, align 1, !dbg !843
  %3 = load i8, ptr %enabled, align 1, !dbg !844
  %conv = zext i8 %3 to i32, !dbg !844
  %tobool2 = icmp ne i32 %conv, 0, !dbg !844
  br i1 %tobool2, label %land.lhs.true, label %if.end11, !dbg !846

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr @acpi_gbl_trace_method_object, align 8, !dbg !847
  %tobool3 = icmp ne ptr %4, null, !dbg !847
  br i1 %tobool3, label %if.end11, label %if.then4, !dbg !848

if.then4:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !849
  store ptr %5, ptr @acpi_gbl_trace_method_object, align 8, !dbg !851
  %6 = load i32, ptr @acpi_dbg_level, align 4, !dbg !852
  store i32 %6, ptr @acpi_gbl_original_dbg_level, align 4, !dbg !853
  %7 = load i32, ptr @acpi_dbg_layer, align 4, !dbg !854
  store i32 %7, ptr @acpi_gbl_original_dbg_layer, align 4, !dbg !855
  store i32 16777055, ptr @acpi_dbg_level, align 4, !dbg !856
  store i32 511, ptr @acpi_dbg_layer, align 4, !dbg !857
  %8 = load i32, ptr @acpi_gbl_trace_dbg_level, align 4, !dbg !858
  %tobool5 = icmp ne i32 %8, 0, !dbg !858
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !860

if.then6:                                         ; preds = %if.then4
  %9 = load i32, ptr @acpi_gbl_trace_dbg_level, align 4, !dbg !861
  store i32 %9, ptr @acpi_dbg_level, align 4, !dbg !863
  br label %if.end7, !dbg !864

if.end7:                                          ; preds = %if.then6, %if.then4
  %10 = load i32, ptr @acpi_gbl_trace_dbg_layer, align 4, !dbg !865
  %tobool8 = icmp ne i32 %10, 0, !dbg !865
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !867

if.then9:                                         ; preds = %if.end7
  %11 = load i32, ptr @acpi_gbl_trace_dbg_layer, align 4, !dbg !868
  store i32 %11, ptr @acpi_dbg_layer, align 4, !dbg !870
  br label %if.end10, !dbg !871

if.end10:                                         ; preds = %if.then9, %if.end7
  br label %if.end11, !dbg !872

if.end11:                                         ; preds = %if.end10, %land.lhs.true, %if.end
  %12 = load i8, ptr %enabled, align 1, !dbg !873
  %tobool12 = icmp ne i8 %12, 0, !dbg !873
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !875

if.then13:                                        ; preds = %if.end11
  br label %if.end14, !dbg !876

if.end14:                                         ; preds = %if.then13, %if.end11
  %13 = load ptr, ptr %pathname, align 8, !dbg !878
  %tobool15 = icmp ne ptr %13, null, !dbg !878
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !880

if.then16:                                        ; preds = %if.end14
  %14 = load ptr, ptr %pathname, align 8, !dbg !881
  call void @acpi_os_free(ptr noundef %14) #6, !dbg !881
  br label %if.end17, !dbg !883

if.end17:                                         ; preds = %if.then16, %if.end14
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #5, !dbg !884
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathname) #5, !dbg !884
  ret void, !dbg !884
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !885 dso_local ptr @acpi_ns_get_normalized_pathname(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @acpi_ex_interpreter_trace_enabled(ptr noundef %name) #0 align 16 !dbg !889 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !893, metadata !DIExpression()), !dbg !894
  %0 = load i32, ptr @acpi_gbl_trace_flags, align 4, !dbg !895
  %and = and i32 %0, 4, !dbg !897
  %tobool = icmp ne i32 %and, 0, !dbg !897
  br i1 %tobool, label %if.end, label %if.then, !dbg !898

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !899
  br label %return, !dbg !899

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @acpi_gbl_trace_method_object, align 8, !dbg !901
  %tobool1 = icmp ne ptr %1, null, !dbg !901
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !903

if.then2:                                         ; preds = %if.end
  store i8 1, ptr %retval, align 1, !dbg !904
  br label %return, !dbg !904

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %name.addr, align 8, !dbg !906
  %tobool4 = icmp ne ptr %2, null, !dbg !906
  br i1 %tobool4, label %land.lhs.true, label %if.end9, !dbg !908

land.lhs.true:                                    ; preds = %if.end3
  %3 = load ptr, ptr @acpi_gbl_trace_method_name, align 8, !dbg !909
  %tobool5 = icmp ne ptr %3, null, !dbg !909
  br i1 %tobool5, label %land.lhs.true6, label %if.end9, !dbg !910

land.lhs.true6:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr @acpi_gbl_trace_method_name, align 8, !dbg !911
  %5 = load ptr, ptr %name.addr, align 8, !dbg !912
  %call = call i32 @strcmp(ptr noundef %4, ptr noundef %5) #6, !dbg !913
  %tobool7 = icmp ne i32 %call, 0, !dbg !913
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !914

if.then8:                                         ; preds = %land.lhs.true6
  store i8 0, ptr %retval, align 1, !dbg !915
  br label %return, !dbg !915

if.end9:                                          ; preds = %land.lhs.true6, %land.lhs.true, %if.end3
  %6 = load i32, ptr @acpi_gbl_trace_flags, align 4, !dbg !917
  %and10 = and i32 %6, 2, !dbg !919
  %tobool11 = icmp ne i32 %and10, 0, !dbg !919
  br i1 %tobool11, label %land.lhs.true12, label %if.end15, !dbg !920

land.lhs.true12:                                  ; preds = %if.end9
  %7 = load ptr, ptr @acpi_gbl_trace_method_name, align 8, !dbg !921
  %tobool13 = icmp ne ptr %7, null, !dbg !921
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !922

if.then14:                                        ; preds = %land.lhs.true12
  store i8 0, ptr %retval, align 1, !dbg !923
  br label %return, !dbg !923

if.end15:                                         ; preds = %land.lhs.true12, %if.end9
  store i8 1, ptr %retval, align 1, !dbg !925
  br label %return, !dbg !925

return:                                           ; preds = %if.end15, %if.then14, %if.then8, %if.then2, %if.then
  %8 = load i8, ptr %retval, align 1, !dbg !926
  ret i8 %8, !dbg !926
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !927 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !932, metadata !DIExpression()), !dbg !933
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !934
  call void @kfree(ptr noundef %0) #6, !dbg !935
  ret void, !dbg !936
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_stop_trace_method(ptr noundef %method_node, ptr noundef %obj_desc, ptr noundef %walk_state) #0 align 16 !dbg !937 {
entry:
  %method_node.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %pathname = alloca ptr, align 8
  %enabled = alloca i8, align 1
  store ptr %method_node, ptr %method_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method_node.addr, metadata !939, metadata !DIExpression()), !dbg !944
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !940, metadata !DIExpression()), !dbg !945
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !941, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathname) #5, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %pathname, metadata !942, metadata !DIExpression()), !dbg !948
  store ptr null, ptr %pathname, align 8, !dbg !948
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #5, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !943, metadata !DIExpression()), !dbg !950
  %0 = load ptr, ptr %method_node.addr, align 8, !dbg !951
  %tobool = icmp ne ptr %0, null, !dbg !951
  br i1 %tobool, label %if.then, label %if.end, !dbg !953

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %method_node.addr, align 8, !dbg !954
  %call = call ptr @acpi_ns_get_normalized_pathname(ptr noundef %1, i8 noundef zeroext 1) #6, !dbg !956
  store ptr %call, ptr %pathname, align 8, !dbg !957
  br label %if.end, !dbg !958

if.end:                                           ; preds = %if.then, %entry
  %call1 = call zeroext i8 @acpi_ex_interpreter_trace_enabled(ptr noundef null) #6, !dbg !959
  store i8 %call1, ptr %enabled, align 1, !dbg !960
  %2 = load i8, ptr %enabled, align 1, !dbg !961
  %tobool2 = icmp ne i8 %2, 0, !dbg !961
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !963

if.then3:                                         ; preds = %if.end
  br label %if.end4, !dbg !964

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load ptr, ptr @acpi_gbl_trace_method_object, align 8, !dbg !966
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !968
  %cmp = icmp eq ptr %3, %4, !dbg !969
  br i1 %cmp, label %if.then5, label %if.end9, !dbg !970

if.then5:                                         ; preds = %if.end4
  %5 = load i32, ptr @acpi_gbl_trace_flags, align 4, !dbg !971
  %and = and i32 %5, 2, !dbg !974
  %tobool6 = icmp ne i32 %and, 0, !dbg !974
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !975

if.then7:                                         ; preds = %if.then5
  store ptr null, ptr @acpi_gbl_trace_method_name, align 8, !dbg !976
  br label %if.end8, !dbg !978

if.end8:                                          ; preds = %if.then7, %if.then5
  %6 = load i32, ptr @acpi_gbl_original_dbg_level, align 4, !dbg !979
  store i32 %6, ptr @acpi_dbg_level, align 4, !dbg !980
  %7 = load i32, ptr @acpi_gbl_original_dbg_layer, align 4, !dbg !981
  store i32 %7, ptr @acpi_dbg_layer, align 4, !dbg !982
  store ptr null, ptr @acpi_gbl_trace_method_object, align 8, !dbg !983
  br label %if.end9, !dbg !984

if.end9:                                          ; preds = %if.end8, %if.end4
  %8 = load ptr, ptr %pathname, align 8, !dbg !985
  %tobool10 = icmp ne ptr %8, null, !dbg !985
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !987

if.then11:                                        ; preds = %if.end9
  %9 = load ptr, ptr %pathname, align 8, !dbg !988
  call void @acpi_os_free(ptr noundef %9) #6, !dbg !988
  br label %if.end12, !dbg !990

if.end12:                                         ; preds = %if.then11, %if.end9
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #5, !dbg !991
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathname) #5, !dbg !991
  ret void, !dbg !991
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_start_trace_opcode(ptr noundef %op, ptr noundef %walk_state) #0 align 16 !dbg !992 {
entry:
  %op.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !996, metadata !DIExpression()), !dbg !998
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !997, metadata !DIExpression()), !dbg !999
  %call = call zeroext i8 @acpi_ex_interpreter_trace_enabled(ptr noundef null) #6, !dbg !1000
  %conv = zext i8 %call to i32, !dbg !1000
  %tobool = icmp ne i32 %conv, 0, !dbg !1000
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1002

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr @acpi_gbl_trace_flags, align 4, !dbg !1003
  %and = and i32 %0, 1, !dbg !1004
  %tobool1 = icmp ne i32 %and, 0, !dbg !1004
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1005

if.then:                                          ; preds = %land.lhs.true
  br label %if.end, !dbg !1006

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !1008
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_stop_trace_opcode(ptr noundef %op, ptr noundef %walk_state) #0 align 16 !dbg !1009 {
entry:
  %op.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1011, metadata !DIExpression()), !dbg !1013
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1012, metadata !DIExpression()), !dbg !1014
  %call = call zeroext i8 @acpi_ex_interpreter_trace_enabled(ptr noundef null) #6, !dbg !1015
  %conv = zext i8 %call to i32, !dbg !1015
  %tobool = icmp ne i32 %conv, 0, !dbg !1015
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1017

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr @acpi_gbl_trace_flags, align 4, !dbg !1018
  %and = and i32 %0, 1, !dbg !1019
  %tobool1 = icmp ne i32 %and, 0, !dbg !1019
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1020

if.then:                                          ; preds = %land.lhs.true
  br label %if.end, !dbg !1021

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !1023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1024 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1031 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!789, !790, !791, !792, !793, !794, !795, !796}
!llvm.ident = !{!797}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_trace_method_object", scope: !2, file: !3, line: 18, type: !19, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.extrace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22extrace\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/extrace.ll drivers/acpi/acpica/extrace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/extrace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3c33ea871a528257a4c94914ae1dd5d")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 1272, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_TRACE_AML_METHOD", value: 0)
!10 = !DIEnumerator(name: "ACPI_TRACE_AML_OPCODE", value: 1)
!11 = !DIEnumerator(name: "ACPI_TRACE_AML_REGION", value: 2)
!12 = !{!13, !17}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !{!0}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !21, line: 369, size: 576, elements: !22)
!21 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!22 = !{!23, !37, !53, !65, !101, !115, !124, !438, !455, !471, !484, !562, !574, !588, !598, !616, !638, !657, !676, !695, !708, !735, !752, !765, !779, !788}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !20, file: !21, line: 370, baseType: !24, size: 128)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !21, line: 73, size: 128, elements: !25)
!25 = !{!26, !27, !31, !32, !36}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !24, file: !21, line: 74, baseType: !19, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !24, file: !21, line: 74, baseType: !28, size: 8, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !30)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !21, line: 74, baseType: !28, size: 8, offset: 72)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !24, file: !21, line: 74, baseType: !33, size: 16, offset: 80)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !35)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !21, line: 74, baseType: !28, size: 8, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !20, file: !21, line: 371, baseType: !38, size: 192)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !21, line: 76, size: 192, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !49}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !38, file: !21, line: 77, baseType: !19, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !21, line: 77, baseType: !28, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !21, line: 77, baseType: !28, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !38, file: !21, line: 77, baseType: !33, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !21, line: 77, baseType: !28, size: 8, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !38, file: !21, line: 77, baseType: !46, size: 24, offset: 104)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 3)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !21, line: 78, baseType: !50, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !52)
!52 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !20, file: !21, line: 372, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !21, line: 93, size: 256, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !64}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !54, file: !21, line: 94, baseType: !19, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !21, line: 94, baseType: !28, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !21, line: 94, baseType: !28, size: 8, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !54, file: !21, line: 94, baseType: !33, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !21, line: 94, baseType: !28, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !54, file: !21, line: 94, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !54, file: !21, line: 94, baseType: !13, size: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !20, file: !21, line: 373, baseType: !66, size: 384)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !21, line: 97, size: 384, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !75, !76, !77, !78}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !21, line: 98, baseType: !19, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !21, line: 98, baseType: !28, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !21, line: 98, baseType: !28, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !21, line: 98, baseType: !33, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !21, line: 98, baseType: !28, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !66, file: !21, line: 98, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !21, line: 98, baseType: !13, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !66, file: !21, line: 99, baseType: !13, size: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !66, file: !21, line: 100, baseType: !74, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !66, file: !21, line: 101, baseType: !79, size: 64, offset: 320)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !81, line: 133, size: 384, elements: !82)
!81 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!82 = !{!83, !84, !85, !86, !87, !96, !97, !98, !99}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !80, file: !81, line: 134, baseType: !19, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !81, line: 135, baseType: !28, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !81, line: 136, baseType: !28, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !81, line: 137, baseType: !33, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !81, line: 138, baseType: !88, size: 32, offset: 96)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !89, line: 328, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !88, file: !89, line: 329, baseType: !13, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !88, file: !89, line: 330, baseType: !93, size: 32)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 32, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 4)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !81, line: 139, baseType: !79, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !80, file: !81, line: 140, baseType: !79, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !80, file: !81, line: 141, baseType: !79, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !80, file: !81, line: 142, baseType: !100, size: 16, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !33)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !20, file: !21, line: 374, baseType: !102, size: 384)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !21, line: 104, size: 384, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !112, !113, !114}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !21, line: 105, baseType: !19, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !21, line: 105, baseType: !28, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !21, line: 105, baseType: !28, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !21, line: 105, baseType: !33, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !21, line: 105, baseType: !28, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !21, line: 105, baseType: !79, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !102, file: !21, line: 106, baseType: !111, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !102, file: !21, line: 107, baseType: !74, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !102, file: !21, line: 108, baseType: !13, size: 32, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !102, file: !21, line: 109, baseType: !13, size: 32, offset: 352)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !20, file: !21, line: 375, baseType: !116, size: 192)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !21, line: 118, size: 192, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !21, line: 119, baseType: !19, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !21, line: 119, baseType: !28, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !21, line: 119, baseType: !28, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !21, line: 119, baseType: !33, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !21, line: 119, baseType: !28, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !116, file: !21, line: 119, baseType: !17, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !20, file: !21, line: 376, baseType: !125, size: 448)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !21, line: 144, size: 448, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !435, !436, !437}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !21, line: 145, baseType: !19, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !21, line: 145, baseType: !28, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !21, line: 145, baseType: !28, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !21, line: 145, baseType: !33, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !21, line: 145, baseType: !28, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !125, file: !21, line: 145, baseType: !28, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !125, file: !21, line: 146, baseType: !28, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !125, file: !21, line: 147, baseType: !28, size: 8, offset: 120)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !125, file: !21, line: 148, baseType: !19, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !21, line: 149, baseType: !19, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !125, file: !21, line: 150, baseType: !74, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !125, file: !21, line: 154, baseType: !139, size: 64, offset: 320)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !21, line: 151, size: 64, elements: !140)
!140 = !{!141, !434}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !139, file: !21, line: 152, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !81, line: 248, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !13)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !149, line: 37, size: 9024, elements: !150)
!149 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !380, !381, !382, !383, !384, !388, !390, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !417, !418, !419, !420, !421, !422, !423, !424, !426, !432}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !149, line: 38, baseType: !147, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !148, file: !149, line: 39, baseType: !28, size: 8, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !148, file: !149, line: 40, baseType: !28, size: 8, offset: 72)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !148, file: !149, line: 41, baseType: !33, size: 16, offset: 80)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !148, file: !149, line: 42, baseType: !28, size: 8, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !148, file: !149, line: 43, baseType: !28, size: 8, offset: 104)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !148, file: !149, line: 44, baseType: !28, size: 8, offset: 112)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !148, file: !149, line: 45, baseType: !100, size: 16, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !148, file: !149, line: 46, baseType: !28, size: 8, offset: 144)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !148, file: !149, line: 47, baseType: !28, size: 8, offset: 152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !148, file: !149, line: 48, baseType: !28, size: 8, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !148, file: !149, line: 49, baseType: !28, size: 8, offset: 168)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !148, file: !149, line: 50, baseType: !28, size: 8, offset: 176)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !148, file: !149, line: 51, baseType: !28, size: 8, offset: 184)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !148, file: !149, line: 52, baseType: !28, size: 8, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !148, file: !149, line: 53, baseType: !28, size: 8, offset: 200)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !148, file: !149, line: 54, baseType: !74, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !148, file: !149, line: 55, baseType: !13, size: 32, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !148, file: !149, line: 56, baseType: !13, size: 32, offset: 352)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !148, file: !149, line: 57, baseType: !13, size: 32, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !148, file: !149, line: 58, baseType: !13, size: 32, offset: 416)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !148, file: !149, line: 60, baseType: !173, size: 640, offset: 448)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !81, line: 909, size: 640, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !261, !262, !378, !379}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !173, file: !81, line: 910, baseType: !74, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !173, file: !81, line: 911, baseType: !74, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !173, file: !81, line: 912, baseType: !74, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !173, file: !81, line: 913, baseType: !74, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !173, file: !81, line: 914, baseType: !74, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !173, file: !81, line: 915, baseType: !181, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !81, line: 891, size: 1600, elements: !183)
!183 = !{!184, !204, !220}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !182, file: !81, line: 892, baseType: !185, size: 448)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !81, line: 844, size: 448, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !203}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !81, line: 845, baseType: !181, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !81, line: 845, baseType: !28, size: 8, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !81, line: 845, baseType: !28, size: 8, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !185, file: !81, line: 845, baseType: !33, size: 16, offset: 80)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !81, line: 845, baseType: !74, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !81, line: 845, baseType: !181, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !81, line: 845, baseType: !79, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !185, file: !81, line: 845, baseType: !195, size: 64, offset: 320)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !81, line: 732, size: 64, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !195, file: !81, line: 733, baseType: !50, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !195, file: !81, line: 734, baseType: !13, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !195, file: !81, line: 735, baseType: !62, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !195, file: !81, line: 736, baseType: !74, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !81, line: 737, baseType: !62, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !195, file: !81, line: 738, baseType: !181, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !185, file: !81, line: 845, baseType: !28, size: 8, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !182, file: !81, line: 893, baseType: !205, size: 640)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !81, line: 851, size: 640, elements: !206)
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !81, line: 852, baseType: !181, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !205, file: !81, line: 852, baseType: !28, size: 8, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !81, line: 852, baseType: !28, size: 8, offset: 72)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !205, file: !81, line: 852, baseType: !33, size: 16, offset: 80)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !205, file: !81, line: 852, baseType: !74, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !81, line: 852, baseType: !181, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !205, file: !81, line: 852, baseType: !79, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !205, file: !81, line: 852, baseType: !195, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !205, file: !81, line: 852, baseType: !28, size: 8, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !205, file: !81, line: 852, baseType: !62, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !205, file: !81, line: 853, baseType: !74, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !205, file: !81, line: 854, baseType: !13, size: 32, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !81, line: 855, baseType: !13, size: 32, offset: 608)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !182, file: !81, line: 894, baseType: !221, size: 1600)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !81, line: 862, size: 1600, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !221, file: !81, line: 863, baseType: !181, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !221, file: !81, line: 863, baseType: !28, size: 8, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !81, line: 863, baseType: !28, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !221, file: !81, line: 863, baseType: !33, size: 16, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !221, file: !81, line: 863, baseType: !74, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !81, line: 863, baseType: !181, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !221, file: !81, line: 863, baseType: !79, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !81, line: 863, baseType: !195, size: 64, offset: 320)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !221, file: !81, line: 863, baseType: !28, size: 8, offset: 384)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !221, file: !81, line: 863, baseType: !181, size: 64, offset: 448)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !221, file: !81, line: 864, baseType: !181, size: 64, offset: 512)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !221, file: !81, line: 865, baseType: !62, size: 64, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !221, file: !81, line: 866, baseType: !28, size: 8, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !221, file: !81, line: 867, baseType: !62, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !221, file: !81, line: 868, baseType: !62, size: 64, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !221, file: !81, line: 869, baseType: !62, size: 64, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !221, file: !81, line: 870, baseType: !93, size: 32, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !221, file: !81, line: 871, baseType: !13, size: 32, offset: 928)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !221, file: !81, line: 872, baseType: !13, size: 32, offset: 960)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !221, file: !81, line: 873, baseType: !13, size: 32, offset: 992)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !221, file: !81, line: 874, baseType: !13, size: 32, offset: 1024)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !221, file: !81, line: 875, baseType: !13, size: 32, offset: 1056)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !221, file: !81, line: 876, baseType: !13, size: 32, offset: 1088)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !221, file: !81, line: 877, baseType: !13, size: 32, offset: 1120)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !221, file: !81, line: 878, baseType: !13, size: 32, offset: 1152)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !221, file: !81, line: 879, baseType: !13, size: 32, offset: 1184)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !221, file: !81, line: 880, baseType: !13, size: 32, offset: 1216)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !221, file: !81, line: 881, baseType: !13, size: 32, offset: 1248)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !221, file: !81, line: 882, baseType: !13, size: 32, offset: 1280)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !221, file: !81, line: 883, baseType: !13, size: 32, offset: 1312)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !221, file: !81, line: 884, baseType: !33, size: 16, offset: 1344)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !221, file: !81, line: 885, baseType: !28, size: 8, offset: 1360)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !221, file: !81, line: 886, baseType: !28, size: 8, offset: 1368)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !221, file: !81, line: 887, baseType: !28, size: 8, offset: 1376)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !221, file: !81, line: 888, baseType: !258, size: 160, offset: 1384)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 160, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 20)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !173, file: !81, line: 916, baseType: !79, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !173, file: !81, line: 917, baseType: !263, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !81, line: 679, size: 640, elements: !265)
!265 = !{!266, !274, !287, !296, !305, !318, !332, !344, !356}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !264, file: !81, line: 680, baseType: !267, size: 128)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !81, line: 575, size: 128, elements: !268)
!268 = !{!269, !270, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !81, line: 576, baseType: !17, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !267, file: !81, line: 576, baseType: !28, size: 8, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !81, line: 576, baseType: !28, size: 8, offset: 72)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !267, file: !81, line: 576, baseType: !33, size: 16, offset: 80)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !267, file: !81, line: 576, baseType: !33, size: 16, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !264, file: !81, line: 681, baseType: !275, size: 384)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !81, line: 604, size: 384, elements: !276)
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !81, line: 605, baseType: !17, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !275, file: !81, line: 605, baseType: !28, size: 8, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !81, line: 605, baseType: !28, size: 8, offset: 72)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !275, file: !81, line: 605, baseType: !33, size: 16, offset: 80)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !81, line: 605, baseType: !33, size: 16, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !275, file: !81, line: 606, baseType: !33, size: 16, offset: 112)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !275, file: !81, line: 607, baseType: !181, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !275, file: !81, line: 608, baseType: !74, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !275, file: !81, line: 609, baseType: !74, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !275, file: !81, line: 610, baseType: !50, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !264, file: !81, line: 682, baseType: !288, size: 192)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !81, line: 582, size: 192, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !81, line: 583, baseType: !17, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !81, line: 583, baseType: !28, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !81, line: 583, baseType: !28, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !81, line: 583, baseType: !33, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !81, line: 583, baseType: !33, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !288, file: !81, line: 584, baseType: !19, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !264, file: !81, line: 683, baseType: !297, size: 192)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !81, line: 616, size: 192, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !81, line: 617, baseType: !17, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !81, line: 617, baseType: !28, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !81, line: 617, baseType: !28, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !81, line: 617, baseType: !33, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !81, line: 617, baseType: !33, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !297, file: !81, line: 618, baseType: !79, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !264, file: !81, line: 684, baseType: !306, size: 448)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !81, line: 621, size: 448, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !81, line: 622, baseType: !17, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !306, file: !81, line: 622, baseType: !28, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !81, line: 622, baseType: !28, size: 8, offset: 72)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !81, line: 622, baseType: !33, size: 16, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !306, file: !81, line: 622, baseType: !33, size: 16, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !306, file: !81, line: 623, baseType: !13, size: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !306, file: !81, line: 624, baseType: !181, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !306, file: !81, line: 625, baseType: !74, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !306, file: !81, line: 626, baseType: !74, size: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !306, file: !81, line: 627, baseType: !13, size: 32, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !264, file: !81, line: 685, baseType: !319, size: 512)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !81, line: 590, size: 512, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !81, line: 591, baseType: !17, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !81, line: 591, baseType: !28, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !81, line: 591, baseType: !28, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !81, line: 591, baseType: !33, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !81, line: 591, baseType: !33, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !319, file: !81, line: 592, baseType: !13, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !319, file: !81, line: 593, baseType: !19, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !319, file: !81, line: 594, baseType: !19, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !319, file: !81, line: 595, baseType: !147, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !319, file: !81, line: 596, baseType: !17, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !319, file: !81, line: 597, baseType: !13, size: 32, offset: 448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !264, file: !81, line: 686, baseType: !333, size: 320)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !81, line: 634, size: 320, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !81, line: 635, baseType: !17, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !81, line: 635, baseType: !28, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !81, line: 635, baseType: !28, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !81, line: 635, baseType: !33, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !81, line: 635, baseType: !33, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !333, file: !81, line: 636, baseType: !28, size: 8, offset: 112)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !333, file: !81, line: 637, baseType: !147, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !333, file: !81, line: 638, baseType: !19, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !333, file: !81, line: 639, baseType: !50, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !264, file: !81, line: 687, baseType: !345, size: 640)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !81, line: 646, size: 640, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !81, line: 647, baseType: !17, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !81, line: 647, baseType: !28, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !81, line: 647, baseType: !28, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !81, line: 647, baseType: !33, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !81, line: 647, baseType: !33, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !345, file: !81, line: 648, baseType: !353, size: 512, offset: 128)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 8)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !264, file: !81, line: 688, baseType: !357, size: 320)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !81, line: 669, size: 320, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !81, line: 670, baseType: !17, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !81, line: 670, baseType: !28, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !81, line: 670, baseType: !28, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !81, line: 670, baseType: !33, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !81, line: 670, baseType: !33, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !357, file: !81, line: 671, baseType: !28, size: 8, offset: 112)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !357, file: !81, line: 672, baseType: !79, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !357, file: !81, line: 673, baseType: !19, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !357, file: !81, line: 674, baseType: !368, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !81, line: 660, size: 128, elements: !370)
!370 = !{!371, !377}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !369, file: !81, line: 661, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !376, !13, !17}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !17)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !369, file: !81, line: 662, baseType: !17, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !173, file: !81, line: 918, baseType: !181, size: 64, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !173, file: !81, line: 919, baseType: !13, size: 32, offset: 576)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !148, file: !149, line: 61, baseType: !13, size: 32, offset: 1088)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !148, file: !149, line: 62, baseType: !13, size: 32, offset: 1120)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !148, file: !149, line: 63, baseType: !33, size: 16, offset: 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !148, file: !149, line: 64, baseType: !28, size: 8, offset: 1168)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !148, file: !149, line: 66, baseType: !385, size: 2688, offset: 1216)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2688, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 7)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !148, file: !149, line: 67, baseType: !389, size: 3072, offset: 3904)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 3072, elements: !354)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !148, file: !149, line: 68, baseType: !391, size: 576, offset: 6976)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 576, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 9)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !148, file: !149, line: 69, baseType: !111, size: 64, offset: 7552)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !148, file: !149, line: 71, baseType: !74, size: 64, offset: 7616)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !148, file: !149, line: 72, baseType: !111, size: 64, offset: 7680)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !148, file: !149, line: 73, baseType: !263, size: 64, offset: 7744)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !148, file: !149, line: 74, baseType: !79, size: 64, offset: 7808)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !148, file: !149, line: 75, baseType: !19, size: 64, offset: 7872)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !148, file: !149, line: 76, baseType: !79, size: 64, offset: 7936)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !148, file: !149, line: 77, baseType: !181, size: 64, offset: 8000)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !148, file: !149, line: 78, baseType: !19, size: 64, offset: 8064)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !148, file: !149, line: 79, baseType: !79, size: 64, offset: 8128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !148, file: !149, line: 80, baseType: !62, size: 64, offset: 8192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !148, file: !149, line: 81, baseType: !181, size: 64, offset: 8256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !148, file: !149, line: 82, baseType: !407, size: 64, offset: 8320)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !81, line: 718, size: 128, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !409, file: !81, line: 722, baseType: !13, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !409, file: !81, line: 723, baseType: !13, size: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !81, line: 724, baseType: !33, size: 16, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !409, file: !81, line: 725, baseType: !28, size: 8, offset: 80)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !409, file: !81, line: 726, baseType: !28, size: 8, offset: 88)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !81, line: 727, baseType: !28, size: 8, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !148, file: !149, line: 83, baseType: !181, size: 64, offset: 8384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !148, file: !149, line: 84, baseType: !19, size: 64, offset: 8448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !148, file: !149, line: 85, baseType: !263, size: 64, offset: 8512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !148, file: !149, line: 86, baseType: !19, size: 64, offset: 8576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !148, file: !149, line: 87, baseType: !263, size: 64, offset: 8640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !148, file: !149, line: 88, baseType: !181, size: 64, offset: 8704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !148, file: !149, line: 89, baseType: !181, size: 64, offset: 8768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !148, file: !149, line: 90, baseType: !425, size: 64, offset: 8832)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !148, file: !149, line: 91, baseType: !427, size: 64, offset: 8896)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !81, line: 652, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!146, !147, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !148, file: !149, line: 92, baseType: !433, size: 64, offset: 8960)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !81, line: 656, baseType: !143)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !139, file: !21, line: 153, baseType: !19, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !125, file: !21, line: 156, baseType: !13, size: 32, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !21, line: 157, baseType: !100, size: 16, offset: 416)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !125, file: !21, line: 158, baseType: !28, size: 8, offset: 432)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !20, file: !21, line: 377, baseType: !439, size: 576)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !21, line: 122, size: 576, elements: !440)
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !439, file: !21, line: 123, baseType: !19, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !439, file: !21, line: 123, baseType: !28, size: 8, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !439, file: !21, line: 123, baseType: !28, size: 8, offset: 72)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !439, file: !21, line: 123, baseType: !33, size: 16, offset: 80)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !439, file: !21, line: 123, baseType: !28, size: 8, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !439, file: !21, line: 123, baseType: !28, size: 8, offset: 104)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !439, file: !21, line: 124, baseType: !33, size: 16, offset: 112)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !439, file: !21, line: 125, baseType: !17, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !439, file: !21, line: 126, baseType: !50, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !439, file: !21, line: 127, baseType: !425, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !439, file: !21, line: 128, baseType: !19, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !21, line: 129, baseType: !19, size: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !439, file: !21, line: 130, baseType: !79, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !439, file: !21, line: 131, baseType: !28, size: 8, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !20, file: !21, line: 378, baseType: !456, size: 512)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !21, line: 134, size: 512, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !469, !470}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !456, file: !21, line: 135, baseType: !19, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !456, file: !21, line: 135, baseType: !28, size: 8, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !456, file: !21, line: 135, baseType: !28, size: 8, offset: 72)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !456, file: !21, line: 135, baseType: !33, size: 16, offset: 80)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !21, line: 135, baseType: !28, size: 8, offset: 96)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !456, file: !21, line: 135, baseType: !28, size: 8, offset: 104)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !456, file: !21, line: 136, baseType: !79, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !456, file: !21, line: 137, baseType: !19, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !21, line: 138, baseType: !19, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !456, file: !21, line: 139, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !50)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !456, file: !21, line: 140, baseType: !13, size: 32, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !456, file: !21, line: 141, baseType: !17, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !20, file: !21, line: 379, baseType: !472, size: 320)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !21, line: 185, size: 320, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !483}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !472, file: !21, line: 186, baseType: !19, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !472, file: !21, line: 186, baseType: !28, size: 8, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !21, line: 186, baseType: !28, size: 8, offset: 72)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !472, file: !21, line: 186, baseType: !33, size: 16, offset: 80)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !472, file: !21, line: 186, baseType: !28, size: 8, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !472, file: !21, line: 186, baseType: !480, size: 128, offset: 128)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 2)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !472, file: !21, line: 186, baseType: !19, size: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !20, file: !21, line: 380, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !21, line: 188, size: 384, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !21, line: 189, baseType: !19, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !21, line: 189, baseType: !28, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !21, line: 189, baseType: !28, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !21, line: 189, baseType: !33, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !21, line: 189, baseType: !28, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !21, line: 190, baseType: !480, size: 128, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !21, line: 190, baseType: !19, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !485, file: !21, line: 190, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !81, line: 480, size: 576, elements: !497)
!497 = !{!498, !499, !500, !501, !509, !524, !556, !557, !558, !559, !560, !561}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !496, file: !81, line: 481, baseType: !79, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !496, file: !81, line: 482, baseType: !495, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !496, file: !81, line: 483, baseType: !495, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !496, file: !81, line: 484, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !81, line: 497, size: 256, elements: !504)
!504 = !{!505, !506, !507, !508}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !503, file: !81, line: 498, baseType: !502, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !81, line: 499, baseType: !502, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !503, file: !81, line: 500, baseType: !495, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !503, file: !81, line: 501, baseType: !13, size: 32, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !496, file: !81, line: 485, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !81, line: 466, size: 320, elements: !512)
!512 = !{!513, !518, !519, !520, !521, !522, !523}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !511, file: !81, line: 467, baseType: !514, size: 128)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !81, line: 459, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !514, file: !81, line: 460, baseType: !28, size: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !81, line: 461, baseType: !50, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !511, file: !81, line: 468, baseType: !514, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !511, file: !81, line: 469, baseType: !33, size: 16, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !511, file: !81, line: 470, baseType: !28, size: 8, offset: 272)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !511, file: !81, line: 471, baseType: !28, size: 8, offset: 280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !511, file: !81, line: 472, baseType: !28, size: 8, offset: 288)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !511, file: !81, line: 473, baseType: !28, size: 8, offset: 296)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !496, file: !81, line: 486, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !81, line: 448, size: 192, elements: !527)
!527 = !{!528, !551, !552, !553, !554, !555}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !526, file: !81, line: 449, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !81, line: 438, size: 64, elements: !530)
!530 = !{!531, !532, !545}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !529, file: !81, line: 439, baseType: !79, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !529, file: !81, line: 440, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !81, line: 419, size: 256, elements: !535)
!535 = !{!536, !541, !542, !543, !544}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !534, file: !81, line: 420, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!13, !376, !13, !17}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !534, file: !81, line: 421, baseType: !17, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !534, file: !81, line: 422, baseType: !79, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !534, file: !81, line: 423, baseType: !28, size: 8, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !534, file: !81, line: 424, baseType: !28, size: 8, offset: 200)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !529, file: !81, line: 441, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !81, line: 429, size: 128, elements: !548)
!548 = !{!549, !550}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !547, file: !81, line: 430, baseType: !79, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !81, line: 431, baseType: !546, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !526, file: !81, line: 450, baseType: !510, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !81, line: 451, baseType: !28, size: 8, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !526, file: !81, line: 452, baseType: !28, size: 8, offset: 136)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !526, file: !81, line: 453, baseType: !28, size: 8, offset: 144)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !526, file: !81, line: 454, baseType: !28, size: 8, offset: 152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !496, file: !81, line: 487, baseType: !50, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !496, file: !81, line: 488, baseType: !13, size: 32, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !496, file: !81, line: 489, baseType: !33, size: 16, offset: 480)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !496, file: !81, line: 490, baseType: !33, size: 16, offset: 496)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !496, file: !81, line: 491, baseType: !28, size: 8, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !496, file: !81, line: 492, baseType: !28, size: 8, offset: 520)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !20, file: !21, line: 381, baseType: !563, size: 384)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !21, line: 193, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !21, line: 194, baseType: !19, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !21, line: 194, baseType: !28, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !21, line: 194, baseType: !28, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !21, line: 194, baseType: !33, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !21, line: 194, baseType: !28, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !21, line: 194, baseType: !480, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !21, line: 194, baseType: !19, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !563, file: !21, line: 194, baseType: !13, size: 32, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !563, file: !21, line: 195, baseType: !13, size: 32, offset: 352)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !20, file: !21, line: 382, baseType: !575, size: 384)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !21, line: 198, size: 384, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !21, line: 199, baseType: !19, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !21, line: 199, baseType: !28, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !21, line: 199, baseType: !28, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !21, line: 199, baseType: !33, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !21, line: 199, baseType: !28, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !575, file: !21, line: 201, baseType: !28, size: 8, offset: 104)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !575, file: !21, line: 202, baseType: !28, size: 8, offset: 112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !21, line: 203, baseType: !480, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !21, line: 203, baseType: !19, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !575, file: !21, line: 203, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !50)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !20, file: !21, line: 383, baseType: !589, size: 320)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !21, line: 206, size: 320, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !21, line: 207, baseType: !19, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !21, line: 207, baseType: !28, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !21, line: 207, baseType: !28, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !21, line: 207, baseType: !33, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !21, line: 207, baseType: !28, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !21, line: 207, baseType: !480, size: 128, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !21, line: 207, baseType: !19, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !20, file: !21, line: 384, baseType: !599, size: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !21, line: 234, size: 384, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !21, line: 235, baseType: !19, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !21, line: 235, baseType: !28, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !21, line: 235, baseType: !28, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !21, line: 235, baseType: !33, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !21, line: 235, baseType: !28, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !21, line: 235, baseType: !28, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !21, line: 235, baseType: !28, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !21, line: 235, baseType: !28, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !21, line: 235, baseType: !79, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !21, line: 235, baseType: !13, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !21, line: 235, baseType: !13, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !21, line: 235, baseType: !13, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !21, line: 235, baseType: !28, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !21, line: 235, baseType: !28, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !599, file: !21, line: 235, baseType: !19, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !20, file: !21, line: 385, baseType: !617, size: 576)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !21, line: 238, size: 576, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !21, line: 239, baseType: !19, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !21, line: 239, baseType: !28, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !21, line: 239, baseType: !28, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !21, line: 239, baseType: !33, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !21, line: 239, baseType: !28, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !617, file: !21, line: 239, baseType: !28, size: 8, offset: 104)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !617, file: !21, line: 239, baseType: !28, size: 8, offset: 112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !617, file: !21, line: 239, baseType: !28, size: 8, offset: 120)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !21, line: 239, baseType: !79, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !617, file: !21, line: 239, baseType: !13, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !617, file: !21, line: 239, baseType: !13, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !21, line: 239, baseType: !13, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !617, file: !21, line: 239, baseType: !28, size: 8, offset: 288)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !617, file: !21, line: 239, baseType: !28, size: 8, offset: 296)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !617, file: !21, line: 239, baseType: !33, size: 16, offset: 304)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !617, file: !21, line: 240, baseType: !19, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !617, file: !21, line: 241, baseType: !74, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !617, file: !21, line: 242, baseType: !33, size: 16, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !617, file: !21, line: 243, baseType: !74, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !20, file: !21, line: 386, baseType: !639, size: 384)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !21, line: 263, size: 384, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !639, file: !21, line: 264, baseType: !19, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !639, file: !21, line: 264, baseType: !28, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !21, line: 264, baseType: !28, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !639, file: !21, line: 264, baseType: !33, size: 16, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !21, line: 264, baseType: !28, size: 8, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !639, file: !21, line: 264, baseType: !28, size: 8, offset: 104)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !639, file: !21, line: 264, baseType: !28, size: 8, offset: 112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !639, file: !21, line: 264, baseType: !28, size: 8, offset: 120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !21, line: 264, baseType: !79, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !639, file: !21, line: 264, baseType: !13, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !639, file: !21, line: 264, baseType: !13, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !21, line: 264, baseType: !13, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !639, file: !21, line: 264, baseType: !28, size: 8, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !639, file: !21, line: 264, baseType: !28, size: 8, offset: 296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !639, file: !21, line: 264, baseType: !28, size: 8, offset: 304)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !639, file: !21, line: 265, baseType: !19, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !20, file: !21, line: 387, baseType: !658, size: 448)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !21, line: 246, size: 448, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !21, line: 247, baseType: !19, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !21, line: 247, baseType: !28, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !21, line: 247, baseType: !28, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !21, line: 247, baseType: !33, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !21, line: 247, baseType: !28, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !658, file: !21, line: 247, baseType: !28, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !658, file: !21, line: 247, baseType: !28, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !658, file: !21, line: 247, baseType: !28, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !21, line: 247, baseType: !79, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !658, file: !21, line: 247, baseType: !13, size: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !658, file: !21, line: 247, baseType: !13, size: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !21, line: 247, baseType: !13, size: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !658, file: !21, line: 247, baseType: !28, size: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !658, file: !21, line: 247, baseType: !28, size: 8, offset: 296)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !658, file: !21, line: 247, baseType: !19, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !658, file: !21, line: 248, baseType: !19, size: 64, offset: 384)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !20, file: !21, line: 388, baseType: !677, size: 448)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !21, line: 251, size: 448, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !21, line: 252, baseType: !19, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !21, line: 252, baseType: !28, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !21, line: 252, baseType: !28, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !21, line: 252, baseType: !33, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !21, line: 252, baseType: !28, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !21, line: 252, baseType: !28, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !21, line: 252, baseType: !28, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !21, line: 252, baseType: !28, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !21, line: 252, baseType: !79, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !21, line: 252, baseType: !13, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !21, line: 252, baseType: !13, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !21, line: 252, baseType: !13, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !21, line: 252, baseType: !28, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !21, line: 252, baseType: !28, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !677, file: !21, line: 257, baseType: !19, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !677, file: !21, line: 258, baseType: !19, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !20, file: !21, line: 389, baseType: !696, size: 512)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !21, line: 274, size: 512, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !21, line: 275, baseType: !19, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !21, line: 275, baseType: !28, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !21, line: 275, baseType: !28, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !21, line: 275, baseType: !33, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !21, line: 275, baseType: !28, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !21, line: 275, baseType: !79, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !696, file: !21, line: 276, baseType: !13, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !696, file: !21, line: 277, baseType: !372, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !696, file: !21, line: 278, baseType: !17, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !696, file: !21, line: 279, baseType: !480, size: 128, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !20, file: !21, line: 390, baseType: !709, size: 576)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !21, line: 282, size: 576, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !724, !725, !726, !727, !733, !734}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !21, line: 283, baseType: !19, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !21, line: 283, baseType: !28, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !21, line: 283, baseType: !28, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !21, line: 283, baseType: !33, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !21, line: 283, baseType: !28, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !709, file: !21, line: 283, baseType: !28, size: 8, offset: 104)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !709, file: !21, line: 284, baseType: !28, size: 8, offset: 112)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !21, line: 285, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!146, !13, !468, !13, !723, !17, !17}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !21, line: 286, baseType: !79, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !21, line: 287, baseType: !17, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !709, file: !21, line: 288, baseType: !17, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !709, file: !21, line: 289, baseType: !728, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!146, !376, !13, !17, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !709, file: !21, line: 290, baseType: !19, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !21, line: 291, baseType: !19, size: 64, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !20, file: !21, line: 391, baseType: !736, size: 512)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !21, line: 309, size: 512, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !736, file: !21, line: 310, baseType: !19, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !736, file: !21, line: 310, baseType: !28, size: 8, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !736, file: !21, line: 310, baseType: !28, size: 8, offset: 72)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !736, file: !21, line: 310, baseType: !33, size: 16, offset: 80)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !21, line: 310, baseType: !28, size: 8, offset: 96)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !736, file: !21, line: 310, baseType: !28, size: 8, offset: 104)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !736, file: !21, line: 311, baseType: !28, size: 8, offset: 112)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !736, file: !21, line: 312, baseType: !28, size: 8, offset: 120)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !736, file: !21, line: 313, baseType: !17, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !736, file: !21, line: 314, baseType: !79, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !736, file: !21, line: 315, baseType: !111, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !736, file: !21, line: 316, baseType: !74, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !736, file: !21, line: 317, baseType: !74, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !736, file: !21, line: 318, baseType: !13, size: 32, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !20, file: !21, line: 392, baseType: !753, size: 448)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !21, line: 342, size: 448, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !21, line: 343, baseType: !19, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !21, line: 343, baseType: !28, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !21, line: 343, baseType: !28, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !21, line: 343, baseType: !33, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !21, line: 343, baseType: !28, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !753, file: !21, line: 343, baseType: !79, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !753, file: !21, line: 344, baseType: !79, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !753, file: !21, line: 345, baseType: !17, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !753, file: !21, line: 346, baseType: !74, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !753, file: !21, line: 347, baseType: !13, size: 32, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !20, file: !21, line: 393, baseType: !766, size: 256)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !21, line: 352, size: 256, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !778}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !21, line: 353, baseType: !19, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !21, line: 353, baseType: !28, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !21, line: 353, baseType: !28, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !21, line: 353, baseType: !33, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !21, line: 353, baseType: !28, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !766, file: !21, line: 353, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !376, !17}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !766, file: !21, line: 354, baseType: !17, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !20, file: !21, line: 394, baseType: !780, size: 192)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !21, line: 359, size: 192, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !780, file: !21, line: 360, baseType: !19, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !780, file: !21, line: 360, baseType: !28, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !21, line: 360, baseType: !28, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !780, file: !21, line: 360, baseType: !33, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !21, line: 360, baseType: !28, size: 8, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !780, file: !21, line: 360, baseType: !19, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !20, file: !21, line: 401, baseType: !80, size: 384)
!789 = !{i32 7, !"Dwarf Version", i32 5}
!790 = !{i32 2, !"Debug Info Version", i32 3}
!791 = !{i32 1, !"wchar_size", i32 2}
!792 = !{i32 8, !"cf-protection-branch", i32 1}
!793 = !{i32 4, !"function_return_thunk_extern", i32 1}
!794 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!795 = !{i32 1, !"Code Model", i32 2}
!796 = !{i32 1, !"override-stack-alignment", i32 8}
!797 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!798 = distinct !DISubprogram(name: "acpi_ex_trace_point", scope: !3, file: !3, line: 131, type: !799, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !801, !28, !74, !62}
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_trace_event_type", file: !6, line: 1276, baseType: !5)
!802 = !{!803, !804, !805, !806}
!803 = !DILocalVariable(name: "type", arg: 1, scope: !798, file: !3, line: 131, type: !801)
!804 = !DILocalVariable(name: "begin", arg: 2, scope: !798, file: !3, line: 132, type: !28)
!805 = !DILocalVariable(name: "aml", arg: 3, scope: !798, file: !3, line: 132, type: !74)
!806 = !DILocalVariable(name: "pathname", arg: 4, scope: !798, file: !3, line: 132, type: !62)
!807 = !DILocation(line: 131, column: 43, scope: !798)
!808 = !DILocation(line: 132, column: 10, scope: !798)
!809 = !DILocation(line: 132, column: 21, scope: !798)
!810 = !DILocation(line: 132, column: 32, scope: !798)
!811 = !DILocation(line: 137, column: 6, scope: !812)
!812 = distinct !DILexicalBlock(scope: !798, file: !3, line: 137, column: 6)
!813 = !DILocation(line: 137, column: 6, scope: !798)
!814 = !DILocation(line: 142, column: 2, scope: !815)
!815 = distinct !DILexicalBlock(scope: !812, file: !3, line: 137, column: 16)
!816 = !DILocation(line: 148, column: 1, scope: !798)
!817 = distinct !DISubprogram(name: "acpi_ex_start_trace_method", scope: !3, file: !3, line: 166, type: !818, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !79, !19, !147}
!820 = !{!821, !822, !823, !824, !825}
!821 = !DILocalVariable(name: "method_node", arg: 1, scope: !817, file: !3, line: 166, type: !79)
!822 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !817, file: !3, line: 167, type: !19)
!823 = !DILocalVariable(name: "walk_state", arg: 3, scope: !817, file: !3, line: 168, type: !147)
!824 = !DILocalVariable(name: "pathname", scope: !817, file: !3, line: 170, type: !62)
!825 = !DILocalVariable(name: "enabled", scope: !817, file: !3, line: 171, type: !28)
!826 = !DILocation(line: 166, column: 56, scope: !817)
!827 = !DILocation(line: 167, column: 34, scope: !817)
!828 = !DILocation(line: 168, column: 31, scope: !817)
!829 = !DILocation(line: 170, column: 2, scope: !817)
!830 = !DILocation(line: 170, column: 8, scope: !817)
!831 = !DILocation(line: 171, column: 2, scope: !817)
!832 = !DILocation(line: 171, column: 5, scope: !817)
!833 = !DILocation(line: 175, column: 6, scope: !834)
!834 = distinct !DILexicalBlock(scope: !817, file: !3, line: 175, column: 6)
!835 = !DILocation(line: 175, column: 6, scope: !817)
!836 = !DILocation(line: 176, column: 46, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !3, line: 175, column: 19)
!838 = !DILocation(line: 176, column: 14, scope: !837)
!839 = !DILocation(line: 176, column: 12, scope: !837)
!840 = !DILocation(line: 177, column: 2, scope: !837)
!841 = !DILocation(line: 179, column: 46, scope: !817)
!842 = !DILocation(line: 179, column: 12, scope: !817)
!843 = !DILocation(line: 179, column: 10, scope: !817)
!844 = !DILocation(line: 180, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !817, file: !3, line: 180, column: 6)
!846 = !DILocation(line: 180, column: 14, scope: !845)
!847 = !DILocation(line: 180, column: 18, scope: !845)
!848 = !DILocation(line: 180, column: 6, scope: !817)
!849 = !DILocation(line: 181, column: 34, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !3, line: 180, column: 48)
!851 = !DILocation(line: 181, column: 32, scope: !850)
!852 = !DILocation(line: 182, column: 33, scope: !850)
!853 = !DILocation(line: 182, column: 31, scope: !850)
!854 = !DILocation(line: 183, column: 33, scope: !850)
!855 = !DILocation(line: 183, column: 31, scope: !850)
!856 = !DILocation(line: 184, column: 18, scope: !850)
!857 = !DILocation(line: 185, column: 18, scope: !850)
!858 = !DILocation(line: 187, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !850, file: !3, line: 187, column: 7)
!860 = !DILocation(line: 187, column: 7, scope: !850)
!861 = !DILocation(line: 188, column: 21, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 187, column: 33)
!863 = !DILocation(line: 188, column: 19, scope: !862)
!864 = !DILocation(line: 189, column: 3, scope: !862)
!865 = !DILocation(line: 191, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !850, file: !3, line: 191, column: 7)
!867 = !DILocation(line: 191, column: 7, scope: !850)
!868 = !DILocation(line: 192, column: 21, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !3, line: 191, column: 33)
!870 = !DILocation(line: 192, column: 19, scope: !869)
!871 = !DILocation(line: 193, column: 3, scope: !869)
!872 = !DILocation(line: 194, column: 2, scope: !850)
!873 = !DILocation(line: 196, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !817, file: !3, line: 196, column: 6)
!875 = !DILocation(line: 196, column: 6, scope: !817)
!876 = !DILocation(line: 200, column: 2, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !3, line: 196, column: 15)
!878 = !DILocation(line: 202, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !817, file: !3, line: 202, column: 6)
!880 = !DILocation(line: 202, column: 6, scope: !817)
!881 = !DILocation(line: 203, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 202, column: 16)
!883 = !DILocation(line: 204, column: 2, scope: !882)
!884 = !DILocation(line: 205, column: 1, scope: !817)
!885 = !DISubprogram(name: "acpi_ns_get_normalized_pathname", scope: !886, file: !886, line: 261, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!886 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!887 = !DISubroutineType(types: !888)
!888 = !{!62, !79, !28}
!889 = distinct !DISubprogram(name: "acpi_ex_interpreter_trace_enabled", scope: !3, file: !3, line: 40, type: !890, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{!28, !62}
!892 = !{!893}
!893 = !DILocalVariable(name: "name", arg: 1, scope: !889, file: !3, line: 40, type: !62)
!894 = !DILocation(line: 40, column: 51, scope: !889)
!895 = !DILocation(line: 45, column: 8, scope: !896)
!896 = distinct !DILexicalBlock(scope: !889, file: !3, line: 45, column: 6)
!897 = !DILocation(line: 45, column: 29, scope: !896)
!898 = !DILocation(line: 45, column: 6, scope: !889)
!899 = !DILocation(line: 46, column: 3, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !3, line: 45, column: 52)
!901 = !DILocation(line: 59, column: 6, scope: !902)
!902 = distinct !DILexicalBlock(scope: !889, file: !3, line: 59, column: 6)
!903 = !DILocation(line: 59, column: 6, scope: !889)
!904 = !DILocation(line: 60, column: 3, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !3, line: 59, column: 36)
!906 = !DILocation(line: 63, column: 6, scope: !907)
!907 = distinct !DILexicalBlock(scope: !889, file: !3, line: 63, column: 6)
!908 = !DILocation(line: 63, column: 11, scope: !907)
!909 = !DILocation(line: 64, column: 7, scope: !907)
!910 = !DILocation(line: 64, column: 34, scope: !907)
!911 = !DILocation(line: 65, column: 14, scope: !907)
!912 = !DILocation(line: 65, column: 42, scope: !907)
!913 = !DILocation(line: 65, column: 7, scope: !907)
!914 = !DILocation(line: 63, column: 6, scope: !889)
!915 = !DILocation(line: 66, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !907, file: !3, line: 65, column: 50)
!917 = !DILocation(line: 69, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !889, file: !3, line: 69, column: 6)
!919 = !DILocation(line: 69, column: 28, scope: !918)
!920 = !DILocation(line: 69, column: 50, scope: !918)
!921 = !DILocation(line: 70, column: 7, scope: !918)
!922 = !DILocation(line: 69, column: 6, scope: !889)
!923 = !DILocation(line: 71, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !918, file: !3, line: 70, column: 35)
!925 = !DILocation(line: 74, column: 2, scope: !889)
!926 = !DILocation(line: 75, column: 1, scope: !889)
!927 = distinct !DISubprogram(name: "acpi_os_free", scope: !928, file: !928, line: 60, type: !929, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !931)
!928 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!929 = !DISubroutineType(types: !930)
!930 = !{null, !17}
!931 = !{!932}
!932 = !DILocalVariable(name: "memory", arg: 1, scope: !927, file: !928, line: 60, type: !17)
!933 = !DILocation(line: 60, column: 39, scope: !927)
!934 = !DILocation(line: 62, column: 8, scope: !927)
!935 = !DILocation(line: 62, column: 2, scope: !927)
!936 = !DILocation(line: 63, column: 1, scope: !927)
!937 = distinct !DISubprogram(name: "acpi_ex_stop_trace_method", scope: !3, file: !3, line: 223, type: !818, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !938)
!938 = !{!939, !940, !941, !942, !943}
!939 = !DILocalVariable(name: "method_node", arg: 1, scope: !937, file: !3, line: 223, type: !79)
!940 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !937, file: !3, line: 224, type: !19)
!941 = !DILocalVariable(name: "walk_state", arg: 3, scope: !937, file: !3, line: 225, type: !147)
!942 = !DILocalVariable(name: "pathname", scope: !937, file: !3, line: 227, type: !62)
!943 = !DILocalVariable(name: "enabled", scope: !937, file: !3, line: 228, type: !28)
!944 = !DILocation(line: 223, column: 55, scope: !937)
!945 = !DILocation(line: 224, column: 33, scope: !937)
!946 = !DILocation(line: 225, column: 30, scope: !937)
!947 = !DILocation(line: 227, column: 2, scope: !937)
!948 = !DILocation(line: 227, column: 8, scope: !937)
!949 = !DILocation(line: 228, column: 2, scope: !937)
!950 = !DILocation(line: 228, column: 5, scope: !937)
!951 = !DILocation(line: 232, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !937, file: !3, line: 232, column: 6)
!953 = !DILocation(line: 232, column: 6, scope: !937)
!954 = !DILocation(line: 233, column: 46, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !3, line: 232, column: 19)
!956 = !DILocation(line: 233, column: 14, scope: !955)
!957 = !DILocation(line: 233, column: 12, scope: !955)
!958 = !DILocation(line: 234, column: 2, scope: !955)
!959 = !DILocation(line: 236, column: 12, scope: !937)
!960 = !DILocation(line: 236, column: 10, scope: !937)
!961 = !DILocation(line: 238, column: 6, scope: !962)
!962 = distinct !DILexicalBlock(scope: !937, file: !3, line: 238, column: 6)
!963 = !DILocation(line: 238, column: 6, scope: !937)
!964 = !DILocation(line: 242, column: 2, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !3, line: 238, column: 15)
!966 = !DILocation(line: 246, column: 6, scope: !967)
!967 = distinct !DILexicalBlock(scope: !937, file: !3, line: 246, column: 6)
!968 = !DILocation(line: 246, column: 38, scope: !967)
!969 = !DILocation(line: 246, column: 35, scope: !967)
!970 = !DILocation(line: 246, column: 6, scope: !937)
!971 = !DILocation(line: 250, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !3, line: 250, column: 7)
!973 = distinct !DILexicalBlock(scope: !967, file: !3, line: 246, column: 48)
!974 = !DILocation(line: 250, column: 28, scope: !972)
!975 = !DILocation(line: 250, column: 7, scope: !973)
!976 = !DILocation(line: 251, column: 31, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !3, line: 250, column: 50)
!978 = !DILocation(line: 252, column: 3, scope: !977)
!979 = !DILocation(line: 254, column: 20, scope: !973)
!980 = !DILocation(line: 254, column: 18, scope: !973)
!981 = !DILocation(line: 255, column: 20, scope: !973)
!982 = !DILocation(line: 255, column: 18, scope: !973)
!983 = !DILocation(line: 256, column: 32, scope: !973)
!984 = !DILocation(line: 257, column: 2, scope: !973)
!985 = !DILocation(line: 259, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !937, file: !3, line: 259, column: 6)
!987 = !DILocation(line: 259, column: 6, scope: !937)
!988 = !DILocation(line: 260, column: 3, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !3, line: 259, column: 16)
!990 = !DILocation(line: 261, column: 2, scope: !989)
!991 = !DILocation(line: 262, column: 1, scope: !937)
!992 = distinct !DISubprogram(name: "acpi_ex_start_trace_opcode", scope: !3, file: !3, line: 279, type: !993, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !181, !147}
!995 = !{!996, !997}
!996 = !DILocalVariable(name: "op", arg: 1, scope: !992, file: !3, line: 279, type: !181)
!997 = !DILocalVariable(name: "walk_state", arg: 2, scope: !992, file: !3, line: 280, type: !147)
!998 = !DILocation(line: 279, column: 53, scope: !992)
!999 = !DILocation(line: 280, column: 31, scope: !992)
!1000 = !DILocation(line: 285, column: 6, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !992, file: !3, line: 285, column: 6)
!1002 = !DILocation(line: 285, column: 46, scope: !1001)
!1003 = !DILocation(line: 286, column: 7, scope: !1001)
!1004 = !DILocation(line: 286, column: 28, scope: !1001)
!1005 = !DILocation(line: 285, column: 6, scope: !992)
!1006 = !DILocation(line: 289, column: 2, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 286, column: 50)
!1008 = !DILocation(line: 290, column: 1, scope: !992)
!1009 = distinct !DISubprogram(name: "acpi_ex_stop_trace_opcode", scope: !3, file: !3, line: 307, type: !993, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1010)
!1010 = !{!1011, !1012}
!1011 = !DILocalVariable(name: "op", arg: 1, scope: !1009, file: !3, line: 307, type: !181)
!1012 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1009, file: !3, line: 308, type: !147)
!1013 = !DILocation(line: 307, column: 52, scope: !1009)
!1014 = !DILocation(line: 308, column: 30, scope: !1009)
!1015 = !DILocation(line: 313, column: 6, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 313, column: 6)
!1017 = !DILocation(line: 313, column: 46, scope: !1016)
!1018 = !DILocation(line: 314, column: 7, scope: !1016)
!1019 = !DILocation(line: 314, column: 28, scope: !1016)
!1020 = !DILocation(line: 313, column: 6, scope: !1009)
!1021 = !DILocation(line: 317, column: 2, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 314, column: 50)
!1023 = !DILocation(line: 318, column: 1, scope: !1009)
!1024 = !DISubprogram(name: "strcmp", scope: !1025, file: !1025, line: 88, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!1028, !1029, !1029}
!1028 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!1031 = !DISubprogram(name: "kfree", scope: !1032, file: !1032, line: 227, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
