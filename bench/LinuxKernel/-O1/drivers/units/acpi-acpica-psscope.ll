; ModuleID = 'drivers/acpi/acpica/psscope.c'
source_filename = "drivers/acpi/acpica/psscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_pscope_state = type { ptr, i8, i8, i16, i16, i32, ptr, ptr, ptr, i32 }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ps_get_parent_scope(ptr noundef %parser_state) #0 align 16 !dbg !30 {
entry:
  %parser_state.addr = alloca ptr, align 8
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !798, metadata !DIExpression()), !dbg !799
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !800
  %scope = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 7, !dbg !801
  %1 = load ptr, ptr %scope, align 8, !dbg !801
  %op = getelementptr inbounds %struct.acpi_pscope_state, ptr %1, i32 0, i32 6, !dbg !802
  %2 = load ptr, ptr %op, align 8, !dbg !802
  ret ptr %2, !dbg !803
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ps_has_completed_scope(ptr noundef %parser_state) #0 align 16 !dbg !804 {
entry:
  %parser_state.addr = alloca ptr, align 8
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !808, metadata !DIExpression()), !dbg !809
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !810
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 1, !dbg !811
  %1 = load ptr, ptr %aml, align 8, !dbg !811
  %2 = load ptr, ptr %parser_state.addr, align 8, !dbg !812
  %scope = getelementptr inbounds %struct.acpi_parse_state, ptr %2, i32 0, i32 7, !dbg !813
  %3 = load ptr, ptr %scope, align 8, !dbg !813
  %arg_end = getelementptr inbounds %struct.acpi_pscope_state, ptr %3, i32 0, i32 7, !dbg !814
  %4 = load ptr, ptr %arg_end, align 8, !dbg !814
  %cmp = icmp uge ptr %1, %4, !dbg !815
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !816

lor.rhs:                                          ; preds = %entry
  %5 = load ptr, ptr %parser_state.addr, align 8, !dbg !817
  %scope1 = getelementptr inbounds %struct.acpi_parse_state, ptr %5, i32 0, i32 7, !dbg !818
  %6 = load ptr, ptr %scope1, align 8, !dbg !818
  %arg_count = getelementptr inbounds %struct.acpi_pscope_state, ptr %6, i32 0, i32 5, !dbg !819
  %7 = load i32, ptr %arg_count, align 8, !dbg !819
  %tobool = icmp ne i32 %7, 0, !dbg !820
  %lnot = xor i1 %tobool, true, !dbg !820
  br label %lor.end, !dbg !816

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32, !dbg !816
  %conv = trunc i32 %lor.ext to i8, !dbg !821
  ret i8 %conv, !dbg !822
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_init_scope(ptr noundef %parser_state, ptr noundef %root_op) #0 align 16 !dbg !823 {
entry:
  %retval = alloca i32, align 4
  %parser_state.addr = alloca ptr, align 8
  %root_op.addr = alloca ptr, align 8
  %scope = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !827, metadata !DIExpression()), !dbg !830
  store ptr %root_op, ptr %root_op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root_op.addr, metadata !828, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope) #4, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %scope, metadata !829, metadata !DIExpression()), !dbg !833
  %call = call ptr @acpi_ut_create_generic_state() #5, !dbg !834
  store ptr %call, ptr %scope, align 8, !dbg !835
  %0 = load ptr, ptr %scope, align 8, !dbg !836
  %tobool = icmp ne ptr %0, null, !dbg !836
  br i1 %tobool, label %if.end, label %if.then, !dbg !838

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !839

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %scope, align 8, !dbg !841
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, ptr %1, i32 0, i32 1, !dbg !842
  store i8 6, ptr %descriptor_type, align 8, !dbg !843
  %2 = load ptr, ptr %root_op.addr, align 8, !dbg !844
  %3 = load ptr, ptr %scope, align 8, !dbg !845
  %op = getelementptr inbounds %struct.acpi_pscope_state, ptr %3, i32 0, i32 6, !dbg !846
  store ptr %2, ptr %op, align 8, !dbg !847
  %4 = load ptr, ptr %scope, align 8, !dbg !848
  %arg_count = getelementptr inbounds %struct.acpi_pscope_state, ptr %4, i32 0, i32 5, !dbg !849
  store i32 -1, ptr %arg_count, align 8, !dbg !850
  %5 = load ptr, ptr %parser_state.addr, align 8, !dbg !851
  %aml_end = getelementptr inbounds %struct.acpi_parse_state, ptr %5, i32 0, i32 2, !dbg !852
  %6 = load ptr, ptr %aml_end, align 8, !dbg !852
  %7 = load ptr, ptr %scope, align 8, !dbg !853
  %arg_end = getelementptr inbounds %struct.acpi_pscope_state, ptr %7, i32 0, i32 7, !dbg !854
  store ptr %6, ptr %arg_end, align 8, !dbg !855
  %8 = load ptr, ptr %parser_state.addr, align 8, !dbg !856
  %aml_end1 = getelementptr inbounds %struct.acpi_parse_state, ptr %8, i32 0, i32 2, !dbg !857
  %9 = load ptr, ptr %aml_end1, align 8, !dbg !857
  %10 = load ptr, ptr %scope, align 8, !dbg !858
  %pkg_end = getelementptr inbounds %struct.acpi_pscope_state, ptr %10, i32 0, i32 8, !dbg !859
  store ptr %9, ptr %pkg_end, align 8, !dbg !860
  %11 = load ptr, ptr %scope, align 8, !dbg !861
  %12 = load ptr, ptr %parser_state.addr, align 8, !dbg !862
  %scope2 = getelementptr inbounds %struct.acpi_parse_state, ptr %12, i32 0, i32 7, !dbg !863
  store ptr %11, ptr %scope2, align 8, !dbg !864
  %13 = load ptr, ptr %root_op.addr, align 8, !dbg !865
  %14 = load ptr, ptr %parser_state.addr, align 8, !dbg !866
  %start_op = getelementptr inbounds %struct.acpi_parse_state, ptr %14, i32 0, i32 5, !dbg !867
  store ptr %13, ptr %start_op, align 8, !dbg !868
  store i32 0, ptr %retval, align 4, !dbg !869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !869

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope) #4, !dbg !870
  %15 = load i32, ptr %retval, align 4, !dbg !870
  ret i32 %15, !dbg !870
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !871 dso_local ptr @acpi_ut_create_generic_state() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_push_scope(ptr noundef %parser_state, ptr noundef %op, i32 noundef %remaining_args, i32 noundef %arg_count) #0 align 16 !dbg !875 {
entry:
  %retval = alloca i32, align 4
  %parser_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %remaining_args.addr = alloca i32, align 4
  %arg_count.addr = alloca i32, align 4
  %scope = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !879, metadata !DIExpression()), !dbg !884
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !880, metadata !DIExpression()), !dbg !885
  store i32 %remaining_args, ptr %remaining_args.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %remaining_args.addr, metadata !881, metadata !DIExpression()), !dbg !886
  store i32 %arg_count, ptr %arg_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %arg_count.addr, metadata !882, metadata !DIExpression()), !dbg !887
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope) #4, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %scope, metadata !883, metadata !DIExpression()), !dbg !889
  %call = call ptr @acpi_ut_create_generic_state() #5, !dbg !890
  store ptr %call, ptr %scope, align 8, !dbg !891
  %0 = load ptr, ptr %scope, align 8, !dbg !892
  %tobool = icmp ne ptr %0, null, !dbg !892
  br i1 %tobool, label %if.end, label %if.then, !dbg !894

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !895

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %scope, align 8, !dbg !897
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, ptr %1, i32 0, i32 1, !dbg !898
  store i8 7, ptr %descriptor_type, align 8, !dbg !899
  %2 = load ptr, ptr %op.addr, align 8, !dbg !900
  %3 = load ptr, ptr %scope, align 8, !dbg !901
  %op1 = getelementptr inbounds %struct.acpi_pscope_state, ptr %3, i32 0, i32 6, !dbg !902
  store ptr %2, ptr %op1, align 8, !dbg !903
  %4 = load i32, ptr %remaining_args.addr, align 4, !dbg !904
  %5 = load ptr, ptr %scope, align 8, !dbg !905
  %arg_list = getelementptr inbounds %struct.acpi_pscope_state, ptr %5, i32 0, i32 9, !dbg !906
  store i32 %4, ptr %arg_list, align 8, !dbg !907
  %6 = load i32, ptr %arg_count.addr, align 4, !dbg !908
  %7 = load ptr, ptr %scope, align 8, !dbg !909
  %arg_count2 = getelementptr inbounds %struct.acpi_pscope_state, ptr %7, i32 0, i32 5, !dbg !910
  store i32 %6, ptr %arg_count2, align 8, !dbg !911
  %8 = load ptr, ptr %parser_state.addr, align 8, !dbg !912
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, ptr %8, i32 0, i32 4, !dbg !913
  %9 = load ptr, ptr %pkg_end, align 8, !dbg !913
  %10 = load ptr, ptr %scope, align 8, !dbg !914
  %pkg_end3 = getelementptr inbounds %struct.acpi_pscope_state, ptr %10, i32 0, i32 8, !dbg !915
  store ptr %9, ptr %pkg_end3, align 8, !dbg !916
  %11 = load ptr, ptr %parser_state.addr, align 8, !dbg !917
  %scope4 = getelementptr inbounds %struct.acpi_parse_state, ptr %11, i32 0, i32 7, !dbg !918
  %12 = load ptr, ptr %scope, align 8, !dbg !919
  call void @acpi_ut_push_generic_state(ptr noundef %scope4, ptr noundef %12) #5, !dbg !920
  %13 = load i32, ptr %arg_count.addr, align 4, !dbg !921
  %cmp = icmp eq i32 %13, -1, !dbg !923
  br i1 %cmp, label %if.then5, label %if.else, !dbg !924

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %parser_state.addr, align 8, !dbg !925
  %pkg_end6 = getelementptr inbounds %struct.acpi_parse_state, ptr %14, i32 0, i32 4, !dbg !927
  %15 = load ptr, ptr %pkg_end6, align 8, !dbg !927
  %16 = load ptr, ptr %scope, align 8, !dbg !928
  %arg_end = getelementptr inbounds %struct.acpi_pscope_state, ptr %16, i32 0, i32 7, !dbg !929
  store ptr %15, ptr %arg_end, align 8, !dbg !930
  br label %if.end8, !dbg !931

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %scope, align 8, !dbg !932
  %arg_end7 = getelementptr inbounds %struct.acpi_pscope_state, ptr %17, i32 0, i32 7, !dbg !934
  store ptr inttoptr (i64 -1 to ptr), ptr %arg_end7, align 8, !dbg !935
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  store i32 0, ptr %retval, align 4, !dbg !936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !936

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope) #4, !dbg !937
  %18 = load i32, ptr %retval, align 4, !dbg !937
  ret i32 %18, !dbg !937
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !938 dso_local void @acpi_ut_push_generic_state(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ps_pop_scope(ptr noundef %parser_state, ptr noundef %op, ptr noundef %arg_list, ptr noundef %arg_count) #0 align 16 !dbg !942 {
entry:
  %parser_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %arg_list.addr = alloca ptr, align 8
  %arg_count.addr = alloca ptr, align 8
  %scope = alloca ptr, align 8
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !947, metadata !DIExpression()), !dbg !952
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !948, metadata !DIExpression()), !dbg !953
  store ptr %arg_list, ptr %arg_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg_list.addr, metadata !949, metadata !DIExpression()), !dbg !954
  store ptr %arg_count, ptr %arg_count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg_count.addr, metadata !950, metadata !DIExpression()), !dbg !955
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope) #4, !dbg !956
  call void @llvm.dbg.declare(metadata ptr %scope, metadata !951, metadata !DIExpression()), !dbg !957
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !958
  %scope1 = getelementptr inbounds %struct.acpi_parse_state, ptr %0, i32 0, i32 7, !dbg !959
  %1 = load ptr, ptr %scope1, align 8, !dbg !959
  store ptr %1, ptr %scope, align 8, !dbg !957
  %2 = load ptr, ptr %scope, align 8, !dbg !960
  %next = getelementptr inbounds %struct.acpi_common_state, ptr %2, i32 0, i32 0, !dbg !962
  %3 = load ptr, ptr %next, align 8, !dbg !962
  %tobool = icmp ne ptr %3, null, !dbg !960
  br i1 %tobool, label %if.then, label %if.else, !dbg !963

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %parser_state.addr, align 8, !dbg !964
  %scope2 = getelementptr inbounds %struct.acpi_parse_state, ptr %4, i32 0, i32 7, !dbg !966
  %call = call ptr @acpi_ut_pop_generic_state(ptr noundef %scope2) #5, !dbg !967
  store ptr %call, ptr %scope, align 8, !dbg !968
  %5 = load ptr, ptr %scope, align 8, !dbg !969
  %op3 = getelementptr inbounds %struct.acpi_pscope_state, ptr %5, i32 0, i32 6, !dbg !970
  %6 = load ptr, ptr %op3, align 8, !dbg !970
  %7 = load ptr, ptr %op.addr, align 8, !dbg !971
  store ptr %6, ptr %7, align 8, !dbg !972
  %8 = load ptr, ptr %scope, align 8, !dbg !973
  %arg_list4 = getelementptr inbounds %struct.acpi_pscope_state, ptr %8, i32 0, i32 9, !dbg !974
  %9 = load i32, ptr %arg_list4, align 8, !dbg !974
  %10 = load ptr, ptr %arg_list.addr, align 8, !dbg !975
  store i32 %9, ptr %10, align 4, !dbg !976
  %11 = load ptr, ptr %scope, align 8, !dbg !977
  %arg_count5 = getelementptr inbounds %struct.acpi_pscope_state, ptr %11, i32 0, i32 5, !dbg !978
  %12 = load i32, ptr %arg_count5, align 8, !dbg !978
  %13 = load ptr, ptr %arg_count.addr, align 8, !dbg !979
  store i32 %12, ptr %13, align 4, !dbg !980
  %14 = load ptr, ptr %scope, align 8, !dbg !981
  %pkg_end = getelementptr inbounds %struct.acpi_pscope_state, ptr %14, i32 0, i32 8, !dbg !982
  %15 = load ptr, ptr %pkg_end, align 8, !dbg !982
  %16 = load ptr, ptr %parser_state.addr, align 8, !dbg !983
  %pkg_end6 = getelementptr inbounds %struct.acpi_parse_state, ptr %16, i32 0, i32 4, !dbg !984
  store ptr %15, ptr %pkg_end6, align 8, !dbg !985
  %17 = load ptr, ptr %scope, align 8, !dbg !986
  call void @acpi_ut_delete_generic_state(ptr noundef %17) #5, !dbg !987
  br label %if.end, !dbg !988

if.else:                                          ; preds = %entry
  %18 = load ptr, ptr %op.addr, align 8, !dbg !989
  store ptr null, ptr %18, align 8, !dbg !991
  %19 = load ptr, ptr %arg_list.addr, align 8, !dbg !992
  store i32 0, ptr %19, align 4, !dbg !993
  %20 = load ptr, ptr %arg_count.addr, align 8, !dbg !994
  store i32 0, ptr %20, align 4, !dbg !995
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope) #4, !dbg !996
  ret void, !dbg !996
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !997 dso_local ptr @acpi_ut_pop_generic_state(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1000 dso_local void @acpi_ut_delete_generic_state(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ps_cleanup_scope(ptr noundef %parser_state) #0 align 16 !dbg !1003 {
entry:
  %parser_state.addr = alloca ptr, align 8
  %scope = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parser_state, ptr %parser_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parser_state.addr, metadata !1007, metadata !DIExpression()), !dbg !1009
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope) #4, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %scope, metadata !1008, metadata !DIExpression()), !dbg !1011
  %0 = load ptr, ptr %parser_state.addr, align 8, !dbg !1012
  %tobool = icmp ne ptr %0, null, !dbg !1012
  br i1 %tobool, label %if.end, label %if.then, !dbg !1014

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1015

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1017

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load ptr, ptr %parser_state.addr, align 8, !dbg !1018
  %scope1 = getelementptr inbounds %struct.acpi_parse_state, ptr %1, i32 0, i32 7, !dbg !1019
  %2 = load ptr, ptr %scope1, align 8, !dbg !1019
  %tobool2 = icmp ne ptr %2, null, !dbg !1017
  br i1 %tobool2, label %while.body, label %while.end, !dbg !1017

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %parser_state.addr, align 8, !dbg !1020
  %scope3 = getelementptr inbounds %struct.acpi_parse_state, ptr %3, i32 0, i32 7, !dbg !1022
  %call = call ptr @acpi_ut_pop_generic_state(ptr noundef %scope3) #5, !dbg !1023
  store ptr %call, ptr %scope, align 8, !dbg !1024
  %4 = load ptr, ptr %scope, align 8, !dbg !1025
  call void @acpi_ut_delete_generic_state(ptr noundef %4) #5, !dbg !1026
  br label %while.cond, !dbg !1017, !llvm.loop !1027

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1031

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope) #4, !dbg !1032
  ret void, !dbg !1032
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.psscope.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22psscope\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/psscope.ll drivers/acpi/acpica/psscope.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/psscope.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d9e15e2904c5167df2ac5d306515f68")
!2 = !{!3, !8, !10, !13, !14, !17, !18}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !4, line: 17, baseType: !5)
!4 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !9, line: 421, baseType: !10)
!9 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !4, line: 21, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !6, line: 27, baseType: !12)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !9, line: 127, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !4, line: 23, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !6, line: 31, baseType: !20)
!20 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 8, !"cf-protection-branch", i32 1}
!25 = !{i32 4, !"function_return_thunk_extern", i32 1}
!26 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!27 = !{i32 1, !"Code Model", i32 2}
!28 = !{i32 1, !"override-stack-alignment", i32 8}
!29 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!30 = distinct !DISubprogram(name: "acpi_ps_get_parent_scope", scope: !1, file: !1, line: 28, type: !31, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !797)
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !796}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !35, line: 891, size: 1600, elements: !36)
!35 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!36 = !{!37, !739, !755}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !34, file: !35, line: 892, baseType: !38, size: 448)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !35, line: 844, size: 448, elements: !39)
!39 = !{!40, !41, !42, !43, !47, !49, !50, !729, !738}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !38, file: !35, line: 845, baseType: !33, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !35, line: 845, baseType: !3, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !35, line: 845, baseType: !3, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !38, file: !35, line: 845, baseType: !44, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !4, line: 19, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !6, line: 24, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !38, file: !35, line: 845, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !38, file: !35, line: 845, baseType: !33, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !38, file: !35, line: 845, baseType: !51, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !35, line: 133, size: 384, elements: !53)
!53 = !{!54, !713, !714, !715, !716, !725, !726, !727, !728}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !52, file: !35, line: 134, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !57, line: 369, size: 576, elements: !58)
!57 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!58 = !{!59, !67, !80, !92, !105, !119, !128, !362, !379, !395, !408, !486, !498, !512, !522, !540, !562, !581, !600, !619, !632, !659, !676, !689, !703, !712}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !56, file: !57, line: 370, baseType: !60, size: 128)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !57, line: 73, size: 128, elements: !61)
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !60, file: !57, line: 74, baseType: !55, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !60, file: !57, line: 74, baseType: !3, size: 8, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !57, line: 74, baseType: !3, size: 8, offset: 72)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !60, file: !57, line: 74, baseType: !44, size: 16, offset: 80)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !57, line: 74, baseType: !3, size: 8, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !56, file: !57, line: 371, baseType: !68, size: 192)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !57, line: 76, size: 192, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !79}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !57, line: 77, baseType: !55, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !57, line: 77, baseType: !3, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !57, line: 77, baseType: !3, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !57, line: 77, baseType: !44, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !57, line: 77, baseType: !3, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !68, file: !57, line: 77, baseType: !76, size: 24, offset: 104)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 24, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !68, file: !57, line: 78, baseType: !18, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !56, file: !57, line: 372, baseType: !81, size: 256)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !57, line: 93, size: 256, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !91}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !81, file: !57, line: 94, baseType: !55, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !57, line: 94, baseType: !3, size: 8, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !57, line: 94, baseType: !3, size: 8, offset: 72)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !81, file: !57, line: 94, baseType: !44, size: 16, offset: 80)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !57, line: 94, baseType: !3, size: 8, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !81, file: !57, line: 94, baseType: !89, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !81, file: !57, line: 94, baseType: !10, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !56, file: !57, line: 373, baseType: !93, size: 384)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !57, line: 97, size: 384, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !57, line: 98, baseType: !55, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !57, line: 98, baseType: !3, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !57, line: 98, baseType: !3, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !57, line: 98, baseType: !44, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !57, line: 98, baseType: !3, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !93, file: !57, line: 98, baseType: !48, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !93, file: !57, line: 98, baseType: !10, size: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !93, file: !57, line: 99, baseType: !10, size: 32, offset: 224)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !93, file: !57, line: 100, baseType: !48, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !57, line: 101, baseType: !51, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !56, file: !57, line: 374, baseType: !106, size: 384)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !57, line: 104, size: 384, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !116, !117, !118}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !106, file: !57, line: 105, baseType: !55, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !106, file: !57, line: 105, baseType: !3, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !57, line: 105, baseType: !3, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !106, file: !57, line: 105, baseType: !44, size: 16, offset: 80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !57, line: 105, baseType: !3, size: 8, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !106, file: !57, line: 105, baseType: !51, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !106, file: !57, line: 106, baseType: !115, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !106, file: !57, line: 107, baseType: !48, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !106, file: !57, line: 108, baseType: !10, size: 32, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !106, file: !57, line: 109, baseType: !10, size: 32, offset: 352)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !56, file: !57, line: 375, baseType: !120, size: 192)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !57, line: 118, size: 192, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !57, line: 119, baseType: !55, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !57, line: 119, baseType: !3, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !57, line: 119, baseType: !3, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !57, line: 119, baseType: !44, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !57, line: 119, baseType: !3, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !120, file: !57, line: 119, baseType: !13, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !56, file: !57, line: 376, baseType: !129, size: 448)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !57, line: 144, size: 448, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !359, !360, !361}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !57, line: 145, baseType: !55, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !57, line: 145, baseType: !3, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !57, line: 145, baseType: !3, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !57, line: 145, baseType: !44, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !57, line: 145, baseType: !3, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !129, file: !57, line: 145, baseType: !3, size: 8, offset: 104)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !129, file: !57, line: 146, baseType: !3, size: 8, offset: 112)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !129, file: !57, line: 147, baseType: !3, size: 8, offset: 120)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !129, file: !57, line: 148, baseType: !55, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !129, file: !57, line: 149, baseType: !55, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !129, file: !57, line: 150, baseType: !48, size: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !129, file: !57, line: 154, baseType: !143, size: 64, offset: 320)
!143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !57, line: 151, size: 64, elements: !144)
!144 = !{!145, !358}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !143, file: !57, line: 152, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !35, line: 248, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!8, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !152, line: 37, size: 9024, elements: !153)
!152 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !304, !305, !306, !307, !308, !312, !314, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !341, !342, !343, !344, !345, !346, !347, !348, !350, !356}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !152, line: 38, baseType: !150, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !151, file: !152, line: 39, baseType: !3, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !151, file: !152, line: 40, baseType: !3, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !151, file: !152, line: 41, baseType: !44, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !151, file: !152, line: 42, baseType: !3, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !151, file: !152, line: 43, baseType: !3, size: 8, offset: 104)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !151, file: !152, line: 44, baseType: !3, size: 8, offset: 112)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !151, file: !152, line: 45, baseType: !162, size: 16, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !9, line: 445, baseType: !44)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !151, file: !152, line: 46, baseType: !3, size: 8, offset: 144)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !151, file: !152, line: 47, baseType: !3, size: 8, offset: 152)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !151, file: !152, line: 48, baseType: !3, size: 8, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !151, file: !152, line: 49, baseType: !3, size: 8, offset: 168)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !151, file: !152, line: 50, baseType: !3, size: 8, offset: 176)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !151, file: !152, line: 51, baseType: !3, size: 8, offset: 184)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !151, file: !152, line: 52, baseType: !3, size: 8, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !151, file: !152, line: 53, baseType: !3, size: 8, offset: 200)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !151, file: !152, line: 54, baseType: !48, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !151, file: !152, line: 55, baseType: !10, size: 32, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !151, file: !152, line: 56, baseType: !10, size: 32, offset: 352)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !151, file: !152, line: 57, baseType: !10, size: 32, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !151, file: !152, line: 58, baseType: !10, size: 32, offset: 416)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !151, file: !152, line: 60, baseType: !177, size: 640, offset: 448)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !35, line: 909, size: 640, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !302, !303}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !177, file: !35, line: 910, baseType: !48, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !177, file: !35, line: 911, baseType: !48, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !177, file: !35, line: 912, baseType: !48, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !177, file: !35, line: 913, baseType: !48, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !177, file: !35, line: 914, baseType: !48, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !177, file: !35, line: 915, baseType: !33, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !177, file: !35, line: 916, baseType: !51, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !177, file: !35, line: 917, baseType: !187, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !35, line: 679, size: 640, elements: !189)
!189 = !{!190, !198, !211, !220, !229, !242, !256, !268, !280}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !188, file: !35, line: 680, baseType: !191, size: 128)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !35, line: 575, size: 128, elements: !192)
!192 = !{!193, !194, !195, !196, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !191, file: !35, line: 576, baseType: !13, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !191, file: !35, line: 576, baseType: !3, size: 8, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !35, line: 576, baseType: !3, size: 8, offset: 72)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !191, file: !35, line: 576, baseType: !44, size: 16, offset: 80)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !191, file: !35, line: 576, baseType: !44, size: 16, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !188, file: !35, line: 681, baseType: !199, size: 384)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !35, line: 604, size: 384, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !35, line: 605, baseType: !13, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !35, line: 605, baseType: !3, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !35, line: 605, baseType: !3, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !35, line: 605, baseType: !44, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !199, file: !35, line: 605, baseType: !44, size: 16, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !199, file: !35, line: 606, baseType: !44, size: 16, offset: 112)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !199, file: !35, line: 607, baseType: !33, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !199, file: !35, line: 608, baseType: !48, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !199, file: !35, line: 609, baseType: !48, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !199, file: !35, line: 610, baseType: !18, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !188, file: !35, line: 682, baseType: !212, size: 192)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !35, line: 582, size: 192, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !35, line: 583, baseType: !13, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !212, file: !35, line: 583, baseType: !3, size: 8, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !35, line: 583, baseType: !3, size: 8, offset: 72)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !212, file: !35, line: 583, baseType: !44, size: 16, offset: 80)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !212, file: !35, line: 583, baseType: !44, size: 16, offset: 96)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !212, file: !35, line: 584, baseType: !55, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !188, file: !35, line: 683, baseType: !221, size: 192)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !35, line: 616, size: 192, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !35, line: 617, baseType: !13, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !221, file: !35, line: 617, baseType: !3, size: 8, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !35, line: 617, baseType: !3, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !35, line: 617, baseType: !44, size: 16, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !221, file: !35, line: 617, baseType: !44, size: 16, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !221, file: !35, line: 618, baseType: !51, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !188, file: !35, line: 684, baseType: !230, size: 448)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !35, line: 621, size: 448, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !35, line: 622, baseType: !13, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !230, file: !35, line: 622, baseType: !3, size: 8, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !35, line: 622, baseType: !3, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !230, file: !35, line: 622, baseType: !44, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !230, file: !35, line: 622, baseType: !44, size: 16, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !230, file: !35, line: 623, baseType: !10, size: 32, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !230, file: !35, line: 624, baseType: !33, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !230, file: !35, line: 625, baseType: !48, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !230, file: !35, line: 626, baseType: !48, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !230, file: !35, line: 627, baseType: !10, size: 32, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !188, file: !35, line: 685, baseType: !243, size: 512)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !35, line: 590, size: 512, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !35, line: 591, baseType: !13, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !243, file: !35, line: 591, baseType: !3, size: 8, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !35, line: 591, baseType: !3, size: 8, offset: 72)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !243, file: !35, line: 591, baseType: !44, size: 16, offset: 80)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !243, file: !35, line: 591, baseType: !44, size: 16, offset: 96)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !243, file: !35, line: 592, baseType: !10, size: 32, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !243, file: !35, line: 593, baseType: !55, size: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !243, file: !35, line: 594, baseType: !55, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !243, file: !35, line: 595, baseType: !150, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !243, file: !35, line: 596, baseType: !13, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !243, file: !35, line: 597, baseType: !10, size: 32, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !188, file: !35, line: 686, baseType: !257, size: 320)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !35, line: 634, size: 320, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !35, line: 635, baseType: !13, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !35, line: 635, baseType: !3, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !35, line: 635, baseType: !3, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !257, file: !35, line: 635, baseType: !44, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !257, file: !35, line: 635, baseType: !44, size: 16, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !257, file: !35, line: 636, baseType: !3, size: 8, offset: 112)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !257, file: !35, line: 637, baseType: !150, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !257, file: !35, line: 638, baseType: !55, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !257, file: !35, line: 639, baseType: !18, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !188, file: !35, line: 687, baseType: !269, size: 640)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !35, line: 646, size: 640, elements: !270)
!270 = !{!271, !272, !273, !274, !275, !276}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !35, line: 647, baseType: !13, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !35, line: 647, baseType: !3, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !35, line: 647, baseType: !3, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !35, line: 647, baseType: !44, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !35, line: 647, baseType: !44, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !269, file: !35, line: 648, baseType: !277, size: 512, offset: 128)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 512, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !188, file: !35, line: 688, baseType: !281, size: 320)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !35, line: 669, size: 320, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !35, line: 670, baseType: !13, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !35, line: 670, baseType: !3, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !35, line: 670, baseType: !3, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !35, line: 670, baseType: !44, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !35, line: 670, baseType: !44, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !281, file: !35, line: 671, baseType: !3, size: 8, offset: 112)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !281, file: !35, line: 672, baseType: !51, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !281, file: !35, line: 673, baseType: !55, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !281, file: !35, line: 674, baseType: !292, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !35, line: 660, size: 128, elements: !294)
!294 = !{!295, !301}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !293, file: !35, line: 661, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !9, line: 1061, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300, !10, !13}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !9, line: 424, baseType: !13)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !293, file: !35, line: 662, baseType: !13, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !177, file: !35, line: 918, baseType: !33, size: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !177, file: !35, line: 919, baseType: !10, size: 32, offset: 576)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !151, file: !152, line: 61, baseType: !10, size: 32, offset: 1088)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !151, file: !152, line: 62, baseType: !10, size: 32, offset: 1120)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !151, file: !152, line: 63, baseType: !44, size: 16, offset: 1152)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !151, file: !152, line: 64, baseType: !3, size: 8, offset: 1168)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !151, file: !152, line: 66, baseType: !309, size: 2688, offset: 1216)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2688, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 7)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !151, file: !152, line: 67, baseType: !313, size: 3072, offset: 3904)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 3072, elements: !278)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !151, file: !152, line: 68, baseType: !315, size: 576, offset: 6976)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 576, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 9)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !151, file: !152, line: 69, baseType: !115, size: 64, offset: 7552)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !151, file: !152, line: 71, baseType: !48, size: 64, offset: 7616)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !151, file: !152, line: 72, baseType: !115, size: 64, offset: 7680)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !151, file: !152, line: 73, baseType: !187, size: 64, offset: 7744)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !151, file: !152, line: 74, baseType: !51, size: 64, offset: 7808)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !151, file: !152, line: 75, baseType: !55, size: 64, offset: 7872)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !151, file: !152, line: 76, baseType: !51, size: 64, offset: 7936)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !151, file: !152, line: 77, baseType: !33, size: 64, offset: 8000)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !151, file: !152, line: 78, baseType: !55, size: 64, offset: 8064)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !151, file: !152, line: 79, baseType: !51, size: 64, offset: 8128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !151, file: !152, line: 80, baseType: !89, size: 64, offset: 8192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !151, file: !152, line: 81, baseType: !33, size: 64, offset: 8256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !151, file: !152, line: 82, baseType: !331, size: 64, offset: 8320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !35, line: 718, size: 128, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !333, file: !35, line: 722, baseType: !10, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !333, file: !35, line: 723, baseType: !10, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !35, line: 724, baseType: !44, size: 16, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !333, file: !35, line: 725, baseType: !3, size: 8, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !333, file: !35, line: 726, baseType: !3, size: 8, offset: 88)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !333, file: !35, line: 727, baseType: !3, size: 8, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !151, file: !152, line: 83, baseType: !33, size: 64, offset: 8384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !151, file: !152, line: 84, baseType: !55, size: 64, offset: 8448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !151, file: !152, line: 85, baseType: !187, size: 64, offset: 8512)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !151, file: !152, line: 86, baseType: !55, size: 64, offset: 8576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !151, file: !152, line: 87, baseType: !187, size: 64, offset: 8640)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !151, file: !152, line: 88, baseType: !33, size: 64, offset: 8704)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !151, file: !152, line: 89, baseType: !33, size: 64, offset: 8768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !151, file: !152, line: 90, baseType: !349, size: 64, offset: 8832)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !151, file: !152, line: 91, baseType: !351, size: 64, offset: 8896)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !35, line: 652, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!8, !150, !355}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !151, file: !152, line: 92, baseType: !357, size: 64, offset: 8960)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !35, line: 656, baseType: !147)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !143, file: !57, line: 153, baseType: !55, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !129, file: !57, line: 156, baseType: !10, size: 32, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !129, file: !57, line: 157, baseType: !162, size: 16, offset: 416)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !129, file: !57, line: 158, baseType: !3, size: 8, offset: 432)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !56, file: !57, line: 377, baseType: !363, size: 576)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !57, line: 122, size: 576, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !363, file: !57, line: 123, baseType: !55, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !363, file: !57, line: 123, baseType: !3, size: 8, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !363, file: !57, line: 123, baseType: !3, size: 8, offset: 72)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !363, file: !57, line: 123, baseType: !44, size: 16, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !57, line: 123, baseType: !3, size: 8, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !363, file: !57, line: 123, baseType: !3, size: 8, offset: 104)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !363, file: !57, line: 124, baseType: !44, size: 16, offset: 112)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !363, file: !57, line: 125, baseType: !13, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !363, file: !57, line: 126, baseType: !18, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !363, file: !57, line: 127, baseType: !349, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !363, file: !57, line: 128, baseType: !55, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !57, line: 129, baseType: !55, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !363, file: !57, line: 130, baseType: !51, size: 64, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !363, file: !57, line: 131, baseType: !3, size: 8, offset: 512)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !56, file: !57, line: 378, baseType: !380, size: 512)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !57, line: 134, size: 512, elements: !381)
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !393, !394}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !380, file: !57, line: 135, baseType: !55, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !380, file: !57, line: 135, baseType: !3, size: 8, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !380, file: !57, line: 135, baseType: !3, size: 8, offset: 72)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !380, file: !57, line: 135, baseType: !44, size: 16, offset: 80)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !57, line: 135, baseType: !3, size: 8, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !380, file: !57, line: 135, baseType: !3, size: 8, offset: 104)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !380, file: !57, line: 136, baseType: !51, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !380, file: !57, line: 137, baseType: !55, size: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !57, line: 138, baseType: !55, size: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !380, file: !57, line: 139, baseType: !392, size: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !9, line: 129, baseType: !18)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !380, file: !57, line: 140, baseType: !10, size: 32, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !380, file: !57, line: 141, baseType: !13, size: 64, offset: 448)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !56, file: !57, line: 379, baseType: !396, size: 320)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !57, line: 185, size: 320, elements: !397)
!397 = !{!398, !399, !400, !401, !402, !403, !407}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !396, file: !57, line: 186, baseType: !55, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !396, file: !57, line: 186, baseType: !3, size: 8, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !396, file: !57, line: 186, baseType: !3, size: 8, offset: 72)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !396, file: !57, line: 186, baseType: !44, size: 16, offset: 80)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !57, line: 186, baseType: !3, size: 8, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !396, file: !57, line: 186, baseType: !404, size: 128, offset: 128)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 2)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !396, file: !57, line: 186, baseType: !55, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !56, file: !57, line: 380, baseType: !409, size: 384)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !57, line: 188, size: 384, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !409, file: !57, line: 189, baseType: !55, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !409, file: !57, line: 189, baseType: !3, size: 8, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !57, line: 189, baseType: !3, size: 8, offset: 72)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !409, file: !57, line: 189, baseType: !44, size: 16, offset: 80)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !57, line: 189, baseType: !3, size: 8, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !409, file: !57, line: 190, baseType: !404, size: 128, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !409, file: !57, line: 190, baseType: !55, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !409, file: !57, line: 190, baseType: !419, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !35, line: 480, size: 576, elements: !421)
!421 = !{!422, !423, !424, !425, !433, !448, !480, !481, !482, !483, !484, !485}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !420, file: !35, line: 481, baseType: !51, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !420, file: !35, line: 482, baseType: !419, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !420, file: !35, line: 483, baseType: !419, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !420, file: !35, line: 484, baseType: !426, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !35, line: 497, size: 256, elements: !428)
!428 = !{!429, !430, !431, !432}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !427, file: !35, line: 498, baseType: !426, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !35, line: 499, baseType: !426, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !427, file: !35, line: 500, baseType: !419, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !427, file: !35, line: 501, baseType: !10, size: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !420, file: !35, line: 485, baseType: !434, size: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !35, line: 466, size: 320, elements: !436)
!436 = !{!437, !442, !443, !444, !445, !446, !447}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !435, file: !35, line: 467, baseType: !438, size: 128)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !35, line: 459, size: 128, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !438, file: !35, line: 460, baseType: !3, size: 8)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !438, file: !35, line: 461, baseType: !18, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !435, file: !35, line: 468, baseType: !438, size: 128, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !435, file: !35, line: 469, baseType: !44, size: 16, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !435, file: !35, line: 470, baseType: !3, size: 8, offset: 272)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !435, file: !35, line: 471, baseType: !3, size: 8, offset: 280)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !435, file: !35, line: 472, baseType: !3, size: 8, offset: 288)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !435, file: !35, line: 473, baseType: !3, size: 8, offset: 296)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !420, file: !35, line: 486, baseType: !449, size: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !35, line: 448, size: 192, elements: !451)
!451 = !{!452, !475, !476, !477, !478, !479}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !450, file: !35, line: 449, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !35, line: 438, size: 64, elements: !454)
!454 = !{!455, !456, !469}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !453, file: !35, line: 439, baseType: !51, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !453, file: !35, line: 440, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !35, line: 419, size: 256, elements: !459)
!459 = !{!460, !465, !466, !467, !468}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !458, file: !35, line: 420, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !9, line: 1058, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!10, !300, !10, !13}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !458, file: !35, line: 421, baseType: !13, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !458, file: !35, line: 422, baseType: !51, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !458, file: !35, line: 423, baseType: !3, size: 8, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !458, file: !35, line: 424, baseType: !3, size: 8, offset: 200)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !453, file: !35, line: 441, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !35, line: 429, size: 128, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !471, file: !35, line: 430, baseType: !51, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !35, line: 431, baseType: !470, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !450, file: !35, line: 450, baseType: !434, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !35, line: 451, baseType: !3, size: 8, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !450, file: !35, line: 452, baseType: !3, size: 8, offset: 136)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !450, file: !35, line: 453, baseType: !3, size: 8, offset: 144)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !450, file: !35, line: 454, baseType: !3, size: 8, offset: 152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !420, file: !35, line: 487, baseType: !18, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !420, file: !35, line: 488, baseType: !10, size: 32, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !420, file: !35, line: 489, baseType: !44, size: 16, offset: 480)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !420, file: !35, line: 490, baseType: !44, size: 16, offset: 496)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !420, file: !35, line: 491, baseType: !3, size: 8, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !420, file: !35, line: 492, baseType: !3, size: 8, offset: 520)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !56, file: !57, line: 381, baseType: !487, size: 384)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !57, line: 193, size: 384, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !57, line: 194, baseType: !55, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !57, line: 194, baseType: !3, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !57, line: 194, baseType: !3, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !57, line: 194, baseType: !44, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !57, line: 194, baseType: !3, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !487, file: !57, line: 194, baseType: !404, size: 128, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !487, file: !57, line: 194, baseType: !55, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !487, file: !57, line: 194, baseType: !10, size: 32, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !487, file: !57, line: 195, baseType: !10, size: 32, offset: 352)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !56, file: !57, line: 382, baseType: !499, size: 384)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !57, line: 198, size: 384, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !499, file: !57, line: 199, baseType: !55, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !57, line: 199, baseType: !3, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !57, line: 199, baseType: !3, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !499, file: !57, line: 199, baseType: !44, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !57, line: 199, baseType: !3, size: 8, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !499, file: !57, line: 201, baseType: !3, size: 8, offset: 104)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !499, file: !57, line: 202, baseType: !3, size: 8, offset: 112)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !499, file: !57, line: 203, baseType: !404, size: 128, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !499, file: !57, line: 203, baseType: !55, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !499, file: !57, line: 203, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !9, line: 128, baseType: !18)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !56, file: !57, line: 383, baseType: !513, size: 320)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !57, line: 206, size: 320, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !513, file: !57, line: 207, baseType: !55, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !513, file: !57, line: 207, baseType: !3, size: 8, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !513, file: !57, line: 207, baseType: !3, size: 8, offset: 72)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !513, file: !57, line: 207, baseType: !44, size: 16, offset: 80)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !57, line: 207, baseType: !3, size: 8, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !513, file: !57, line: 207, baseType: !404, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !513, file: !57, line: 207, baseType: !55, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !56, file: !57, line: 384, baseType: !523, size: 384)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !57, line: 234, size: 384, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !523, file: !57, line: 235, baseType: !55, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !523, file: !57, line: 235, baseType: !3, size: 8, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !57, line: 235, baseType: !3, size: 8, offset: 72)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !523, file: !57, line: 235, baseType: !44, size: 16, offset: 80)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !57, line: 235, baseType: !3, size: 8, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !523, file: !57, line: 235, baseType: !3, size: 8, offset: 104)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !523, file: !57, line: 235, baseType: !3, size: 8, offset: 112)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !523, file: !57, line: 235, baseType: !3, size: 8, offset: 120)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !523, file: !57, line: 235, baseType: !51, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !523, file: !57, line: 235, baseType: !10, size: 32, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !523, file: !57, line: 235, baseType: !10, size: 32, offset: 224)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !523, file: !57, line: 235, baseType: !10, size: 32, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !523, file: !57, line: 235, baseType: !3, size: 8, offset: 288)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !523, file: !57, line: 235, baseType: !3, size: 8, offset: 296)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !523, file: !57, line: 235, baseType: !55, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !56, file: !57, line: 385, baseType: !541, size: 576)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !57, line: 238, size: 576, elements: !542)
!542 = !{!543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !541, file: !57, line: 239, baseType: !55, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !541, file: !57, line: 239, baseType: !3, size: 8, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !541, file: !57, line: 239, baseType: !3, size: 8, offset: 72)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !541, file: !57, line: 239, baseType: !44, size: 16, offset: 80)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !541, file: !57, line: 239, baseType: !3, size: 8, offset: 96)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !541, file: !57, line: 239, baseType: !3, size: 8, offset: 104)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !541, file: !57, line: 239, baseType: !3, size: 8, offset: 112)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !541, file: !57, line: 239, baseType: !3, size: 8, offset: 120)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !541, file: !57, line: 239, baseType: !51, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !541, file: !57, line: 239, baseType: !10, size: 32, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !541, file: !57, line: 239, baseType: !10, size: 32, offset: 224)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !541, file: !57, line: 239, baseType: !10, size: 32, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !541, file: !57, line: 239, baseType: !3, size: 8, offset: 288)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !541, file: !57, line: 239, baseType: !3, size: 8, offset: 296)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !541, file: !57, line: 239, baseType: !44, size: 16, offset: 304)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !541, file: !57, line: 240, baseType: !55, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !541, file: !57, line: 241, baseType: !48, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !541, file: !57, line: 242, baseType: !44, size: 16, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !541, file: !57, line: 243, baseType: !48, size: 64, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !56, file: !57, line: 386, baseType: !563, size: 384)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !57, line: 263, size: 384, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !57, line: 264, baseType: !55, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !57, line: 264, baseType: !3, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !57, line: 264, baseType: !3, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !57, line: 264, baseType: !44, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !57, line: 264, baseType: !3, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !563, file: !57, line: 264, baseType: !3, size: 8, offset: 104)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !563, file: !57, line: 264, baseType: !3, size: 8, offset: 112)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !563, file: !57, line: 264, baseType: !3, size: 8, offset: 120)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !563, file: !57, line: 264, baseType: !51, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !563, file: !57, line: 264, baseType: !10, size: 32, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !563, file: !57, line: 264, baseType: !10, size: 32, offset: 224)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !563, file: !57, line: 264, baseType: !10, size: 32, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !563, file: !57, line: 264, baseType: !3, size: 8, offset: 288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !563, file: !57, line: 264, baseType: !3, size: 8, offset: 296)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !563, file: !57, line: 264, baseType: !3, size: 8, offset: 304)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !563, file: !57, line: 265, baseType: !55, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !56, file: !57, line: 387, baseType: !582, size: 448)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !57, line: 246, size: 448, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !582, file: !57, line: 247, baseType: !55, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !582, file: !57, line: 247, baseType: !3, size: 8, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !582, file: !57, line: 247, baseType: !3, size: 8, offset: 72)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !582, file: !57, line: 247, baseType: !44, size: 16, offset: 80)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !57, line: 247, baseType: !3, size: 8, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !582, file: !57, line: 247, baseType: !3, size: 8, offset: 104)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !582, file: !57, line: 247, baseType: !3, size: 8, offset: 112)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !582, file: !57, line: 247, baseType: !3, size: 8, offset: 120)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !582, file: !57, line: 247, baseType: !51, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !582, file: !57, line: 247, baseType: !10, size: 32, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !582, file: !57, line: 247, baseType: !10, size: 32, offset: 224)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !582, file: !57, line: 247, baseType: !10, size: 32, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !582, file: !57, line: 247, baseType: !3, size: 8, offset: 288)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !582, file: !57, line: 247, baseType: !3, size: 8, offset: 296)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !582, file: !57, line: 247, baseType: !55, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !582, file: !57, line: 248, baseType: !55, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !56, file: !57, line: 388, baseType: !601, size: 448)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !57, line: 251, size: 448, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !57, line: 252, baseType: !55, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !57, line: 252, baseType: !3, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !57, line: 252, baseType: !3, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !57, line: 252, baseType: !44, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !57, line: 252, baseType: !3, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !601, file: !57, line: 252, baseType: !3, size: 8, offset: 104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !601, file: !57, line: 252, baseType: !3, size: 8, offset: 112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !601, file: !57, line: 252, baseType: !3, size: 8, offset: 120)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !57, line: 252, baseType: !51, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !601, file: !57, line: 252, baseType: !10, size: 32, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !601, file: !57, line: 252, baseType: !10, size: 32, offset: 224)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !601, file: !57, line: 252, baseType: !10, size: 32, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !601, file: !57, line: 252, baseType: !3, size: 8, offset: 288)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !601, file: !57, line: 252, baseType: !3, size: 8, offset: 296)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !601, file: !57, line: 257, baseType: !55, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !601, file: !57, line: 258, baseType: !55, size: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !56, file: !57, line: 389, baseType: !620, size: 512)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !57, line: 274, size: 512, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !57, line: 275, baseType: !55, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !57, line: 275, baseType: !3, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !57, line: 275, baseType: !3, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !57, line: 275, baseType: !44, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !57, line: 275, baseType: !3, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !57, line: 275, baseType: !51, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !620, file: !57, line: 276, baseType: !10, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !620, file: !57, line: 277, baseType: !296, size: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !620, file: !57, line: 278, baseType: !13, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !57, line: 279, baseType: !404, size: 128, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !56, file: !57, line: 390, baseType: !633, size: 576)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !57, line: 282, size: 576, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !648, !649, !650, !651, !657, !658}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !57, line: 283, baseType: !55, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !57, line: 283, baseType: !3, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !57, line: 283, baseType: !3, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !57, line: 283, baseType: !44, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !57, line: 283, baseType: !3, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !633, file: !57, line: 283, baseType: !3, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !633, file: !57, line: 284, baseType: !3, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !633, file: !57, line: 285, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !9, line: 1093, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!8, !10, !392, !10, !647, !13, !13}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !57, line: 286, baseType: !51, size: 64, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !633, file: !57, line: 287, baseType: !13, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !633, file: !57, line: 288, baseType: !13, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !633, file: !57, line: 289, baseType: !652, size: 64, offset: 384)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !9, line: 1126, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!8, !300, !10, !13, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !633, file: !57, line: 290, baseType: !55, size: 64, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !633, file: !57, line: 291, baseType: !55, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !56, file: !57, line: 391, baseType: !660, size: 512)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !57, line: 309, size: 512, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !57, line: 310, baseType: !55, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !57, line: 310, baseType: !3, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !57, line: 310, baseType: !3, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !57, line: 310, baseType: !44, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !57, line: 310, baseType: !3, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !660, file: !57, line: 310, baseType: !3, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !660, file: !57, line: 311, baseType: !3, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !660, file: !57, line: 312, baseType: !3, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !660, file: !57, line: 313, baseType: !13, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !57, line: 314, baseType: !51, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !660, file: !57, line: 315, baseType: !115, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !660, file: !57, line: 316, baseType: !48, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !660, file: !57, line: 317, baseType: !48, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !57, line: 318, baseType: !10, size: 32, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !56, file: !57, line: 392, baseType: !677, size: 448)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !57, line: 342, size: 448, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !57, line: 343, baseType: !55, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !57, line: 343, baseType: !3, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !57, line: 343, baseType: !3, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !57, line: 343, baseType: !44, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !57, line: 343, baseType: !3, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !677, file: !57, line: 343, baseType: !51, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !677, file: !57, line: 344, baseType: !51, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !677, file: !57, line: 345, baseType: !13, size: 64, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !677, file: !57, line: 346, baseType: !48, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !677, file: !57, line: 347, baseType: !10, size: 32, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !56, file: !57, line: 393, baseType: !690, size: 256)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !57, line: 352, size: 256, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !702}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !57, line: 353, baseType: !55, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !57, line: 353, baseType: !3, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !57, line: 353, baseType: !3, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !57, line: 353, baseType: !44, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !57, line: 353, baseType: !3, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !690, file: !57, line: 353, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !9, line: 1064, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !300, !13}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !690, file: !57, line: 354, baseType: !13, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !56, file: !57, line: 394, baseType: !704, size: 192)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !57, line: 359, size: 192, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !704, file: !57, line: 360, baseType: !55, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !57, line: 360, baseType: !3, size: 8, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !57, line: 360, baseType: !3, size: 8, offset: 72)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !704, file: !57, line: 360, baseType: !44, size: 16, offset: 80)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !57, line: 360, baseType: !3, size: 8, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !57, line: 360, baseType: !55, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !56, file: !57, line: 401, baseType: !52, size: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !35, line: 135, baseType: !3, size: 8, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !35, line: 136, baseType: !3, size: 8, offset: 72)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !35, line: 137, baseType: !44, size: 16, offset: 80)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !52, file: !35, line: 138, baseType: !717, size: 32, offset: 96)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !718, line: 328, size: 32, elements: !719)
!718 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !717, file: !718, line: 329, baseType: !10, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !717, file: !718, line: 330, baseType: !722, size: 32)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 32, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 4)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !52, file: !35, line: 139, baseType: !51, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !52, file: !35, line: 140, baseType: !51, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !52, file: !35, line: 141, baseType: !51, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !52, file: !35, line: 142, baseType: !162, size: 16, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !35, line: 845, baseType: !730, size: 64, offset: 320)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !35, line: 732, size: 64, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !730, file: !35, line: 733, baseType: !18, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !730, file: !35, line: 734, baseType: !10, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !730, file: !35, line: 735, baseType: !89, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !730, file: !35, line: 736, baseType: !48, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !730, file: !35, line: 737, baseType: !89, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !730, file: !35, line: 738, baseType: !33, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !38, file: !35, line: 845, baseType: !3, size: 8, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !34, file: !35, line: 893, baseType: !740, size: 640)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !35, line: 851, size: 640, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !740, file: !35, line: 852, baseType: !33, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !740, file: !35, line: 852, baseType: !3, size: 8, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !35, line: 852, baseType: !3, size: 8, offset: 72)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !740, file: !35, line: 852, baseType: !44, size: 16, offset: 80)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !740, file: !35, line: 852, baseType: !48, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !740, file: !35, line: 852, baseType: !33, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !740, file: !35, line: 852, baseType: !51, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !740, file: !35, line: 852, baseType: !730, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !740, file: !35, line: 852, baseType: !3, size: 8, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !740, file: !35, line: 852, baseType: !89, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !740, file: !35, line: 853, baseType: !48, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !740, file: !35, line: 854, baseType: !10, size: 32, offset: 576)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !740, file: !35, line: 855, baseType: !10, size: 32, offset: 608)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !34, file: !35, line: 894, baseType: !756, size: 1600)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !35, line: 862, size: 1600, elements: !757)
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !756, file: !35, line: 863, baseType: !33, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !756, file: !35, line: 863, baseType: !3, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !35, line: 863, baseType: !3, size: 8, offset: 72)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !756, file: !35, line: 863, baseType: !44, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !756, file: !35, line: 863, baseType: !48, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !35, line: 863, baseType: !33, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !756, file: !35, line: 863, baseType: !51, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !756, file: !35, line: 863, baseType: !730, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !756, file: !35, line: 863, baseType: !3, size: 8, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !756, file: !35, line: 863, baseType: !33, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !756, file: !35, line: 864, baseType: !33, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !756, file: !35, line: 865, baseType: !89, size: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !756, file: !35, line: 866, baseType: !3, size: 8, offset: 640)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !756, file: !35, line: 867, baseType: !89, size: 64, offset: 704)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !756, file: !35, line: 868, baseType: !89, size: 64, offset: 768)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !756, file: !35, line: 869, baseType: !89, size: 64, offset: 832)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !756, file: !35, line: 870, baseType: !722, size: 32, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !756, file: !35, line: 871, baseType: !10, size: 32, offset: 928)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !756, file: !35, line: 872, baseType: !10, size: 32, offset: 960)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !756, file: !35, line: 873, baseType: !10, size: 32, offset: 992)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !756, file: !35, line: 874, baseType: !10, size: 32, offset: 1024)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !756, file: !35, line: 875, baseType: !10, size: 32, offset: 1056)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !756, file: !35, line: 876, baseType: !10, size: 32, offset: 1088)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !756, file: !35, line: 877, baseType: !10, size: 32, offset: 1120)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !756, file: !35, line: 878, baseType: !10, size: 32, offset: 1152)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !756, file: !35, line: 879, baseType: !10, size: 32, offset: 1184)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !756, file: !35, line: 880, baseType: !10, size: 32, offset: 1216)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !756, file: !35, line: 881, baseType: !10, size: 32, offset: 1248)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !756, file: !35, line: 882, baseType: !10, size: 32, offset: 1280)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !756, file: !35, line: 883, baseType: !10, size: 32, offset: 1312)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !756, file: !35, line: 884, baseType: !44, size: 16, offset: 1344)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !756, file: !35, line: 885, baseType: !3, size: 8, offset: 1360)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !756, file: !35, line: 886, baseType: !3, size: 8, offset: 1368)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !756, file: !35, line: 887, baseType: !3, size: 8, offset: 1376)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !756, file: !35, line: 888, baseType: !793, size: 160, offset: 1384)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 160, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 20)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!797 = !{!798}
!798 = !DILocalVariable(name: "parser_state", arg: 1, scope: !30, file: !1, line: 29, type: !796)
!799 = !DILocation(line: 29, column: 10, scope: !30)
!800 = !DILocation(line: 32, column: 10, scope: !30)
!801 = !DILocation(line: 32, column: 24, scope: !30)
!802 = !DILocation(line: 32, column: 43, scope: !30)
!803 = !DILocation(line: 32, column: 2, scope: !30)
!804 = distinct !DISubprogram(name: "acpi_ps_has_completed_scope", scope: !1, file: !1, line: 49, type: !805, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{!3, !796}
!807 = !{!808}
!808 = !DILocalVariable(name: "parser_state", arg: 1, scope: !804, file: !1, line: 49, type: !796)
!809 = !DILocation(line: 49, column: 58, scope: !804)
!810 = !DILocation(line: 53, column: 5, scope: !804)
!811 = !DILocation(line: 53, column: 19, scope: !804)
!812 = !DILocation(line: 53, column: 26, scope: !804)
!813 = !DILocation(line: 53, column: 40, scope: !804)
!814 = !DILocation(line: 53, column: 59, scope: !804)
!815 = !DILocation(line: 53, column: 23, scope: !804)
!816 = !DILocation(line: 54, column: 5, scope: !804)
!817 = !DILocation(line: 54, column: 9, scope: !804)
!818 = !DILocation(line: 54, column: 23, scope: !804)
!819 = !DILocation(line: 54, column: 42, scope: !804)
!820 = !DILocation(line: 54, column: 8, scope: !804)
!821 = !DILocation(line: 52, column: 10, scope: !804)
!822 = !DILocation(line: 52, column: 2, scope: !804)
!823 = distinct !DISubprogram(name: "acpi_ps_init_scope", scope: !1, file: !1, line: 71, type: !824, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!8, !796, !33}
!826 = !{!827, !828, !829}
!827 = !DILocalVariable(name: "parser_state", arg: 1, scope: !823, file: !1, line: 71, type: !796)
!828 = !DILocalVariable(name: "root_op", arg: 2, scope: !823, file: !1, line: 72, type: !33)
!829 = !DILocalVariable(name: "scope", scope: !823, file: !1, line: 74, type: !187)
!830 = !DILocation(line: 71, column: 46, scope: !823)
!831 = !DILocation(line: 72, column: 32, scope: !823)
!832 = !DILocation(line: 74, column: 2, scope: !823)
!833 = !DILocation(line: 74, column: 28, scope: !823)
!834 = !DILocation(line: 78, column: 10, scope: !823)
!835 = !DILocation(line: 78, column: 8, scope: !823)
!836 = !DILocation(line: 79, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !823, file: !1, line: 79, column: 6)
!838 = !DILocation(line: 79, column: 6, scope: !823)
!839 = !DILocation(line: 80, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !1, line: 79, column: 14)
!841 = !DILocation(line: 83, column: 2, scope: !823)
!842 = !DILocation(line: 83, column: 16, scope: !823)
!843 = !DILocation(line: 83, column: 32, scope: !823)
!844 = !DILocation(line: 84, column: 26, scope: !823)
!845 = !DILocation(line: 84, column: 2, scope: !823)
!846 = !DILocation(line: 84, column: 21, scope: !823)
!847 = !DILocation(line: 84, column: 24, scope: !823)
!848 = !DILocation(line: 85, column: 2, scope: !823)
!849 = !DILocation(line: 85, column: 21, scope: !823)
!850 = !DILocation(line: 85, column: 31, scope: !823)
!851 = !DILocation(line: 86, column: 31, scope: !823)
!852 = !DILocation(line: 86, column: 45, scope: !823)
!853 = !DILocation(line: 86, column: 2, scope: !823)
!854 = !DILocation(line: 86, column: 21, scope: !823)
!855 = !DILocation(line: 86, column: 29, scope: !823)
!856 = !DILocation(line: 87, column: 31, scope: !823)
!857 = !DILocation(line: 87, column: 45, scope: !823)
!858 = !DILocation(line: 87, column: 2, scope: !823)
!859 = !DILocation(line: 87, column: 21, scope: !823)
!860 = !DILocation(line: 87, column: 29, scope: !823)
!861 = !DILocation(line: 89, column: 24, scope: !823)
!862 = !DILocation(line: 89, column: 2, scope: !823)
!863 = !DILocation(line: 89, column: 16, scope: !823)
!864 = !DILocation(line: 89, column: 22, scope: !823)
!865 = !DILocation(line: 90, column: 27, scope: !823)
!866 = !DILocation(line: 90, column: 2, scope: !823)
!867 = !DILocation(line: 90, column: 16, scope: !823)
!868 = !DILocation(line: 90, column: 25, scope: !823)
!869 = !DILocation(line: 92, column: 2, scope: !823)
!870 = !DILocation(line: 93, column: 1, scope: !823)
!871 = !DISubprogram(name: "acpi_ut_create_generic_state", scope: !872, file: !872, line: 513, type: !873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!873 = !DISubroutineType(types: !874)
!874 = !{!187}
!875 = distinct !DISubprogram(name: "acpi_ps_push_scope", scope: !1, file: !1, line: 111, type: !876, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !878)
!876 = !DISubroutineType(types: !877)
!877 = !{!8, !796, !33, !10, !10}
!878 = !{!879, !880, !881, !882, !883}
!879 = !DILocalVariable(name: "parser_state", arg: 1, scope: !875, file: !1, line: 111, type: !796)
!880 = !DILocalVariable(name: "op", arg: 2, scope: !875, file: !1, line: 112, type: !33)
!881 = !DILocalVariable(name: "remaining_args", arg: 3, scope: !875, file: !1, line: 113, type: !10)
!882 = !DILocalVariable(name: "arg_count", arg: 4, scope: !875, file: !1, line: 113, type: !10)
!883 = !DILocalVariable(name: "scope", scope: !875, file: !1, line: 115, type: !187)
!884 = !DILocation(line: 111, column: 45, scope: !875)
!885 = !DILocation(line: 112, column: 31, scope: !875)
!886 = !DILocation(line: 113, column: 10, scope: !875)
!887 = !DILocation(line: 113, column: 30, scope: !875)
!888 = !DILocation(line: 115, column: 2, scope: !875)
!889 = !DILocation(line: 115, column: 28, scope: !875)
!890 = !DILocation(line: 119, column: 10, scope: !875)
!891 = !DILocation(line: 119, column: 8, scope: !875)
!892 = !DILocation(line: 120, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !875, file: !1, line: 120, column: 6)
!894 = !DILocation(line: 120, column: 6, scope: !875)
!895 = !DILocation(line: 121, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !893, file: !1, line: 120, column: 14)
!897 = !DILocation(line: 124, column: 2, scope: !875)
!898 = !DILocation(line: 124, column: 16, scope: !875)
!899 = !DILocation(line: 124, column: 32, scope: !875)
!900 = !DILocation(line: 125, column: 26, scope: !875)
!901 = !DILocation(line: 125, column: 2, scope: !875)
!902 = !DILocation(line: 125, column: 21, scope: !875)
!903 = !DILocation(line: 125, column: 24, scope: !875)
!904 = !DILocation(line: 126, column: 32, scope: !875)
!905 = !DILocation(line: 126, column: 2, scope: !875)
!906 = !DILocation(line: 126, column: 21, scope: !875)
!907 = !DILocation(line: 126, column: 30, scope: !875)
!908 = !DILocation(line: 127, column: 33, scope: !875)
!909 = !DILocation(line: 127, column: 2, scope: !875)
!910 = !DILocation(line: 127, column: 21, scope: !875)
!911 = !DILocation(line: 127, column: 31, scope: !875)
!912 = !DILocation(line: 128, column: 31, scope: !875)
!913 = !DILocation(line: 128, column: 45, scope: !875)
!914 = !DILocation(line: 128, column: 2, scope: !875)
!915 = !DILocation(line: 128, column: 21, scope: !875)
!916 = !DILocation(line: 128, column: 29, scope: !875)
!917 = !DILocation(line: 132, column: 30, scope: !875)
!918 = !DILocation(line: 132, column: 44, scope: !875)
!919 = !DILocation(line: 132, column: 51, scope: !875)
!920 = !DILocation(line: 132, column: 2, scope: !875)
!921 = !DILocation(line: 134, column: 6, scope: !922)
!922 = distinct !DILexicalBlock(scope: !875, file: !1, line: 134, column: 6)
!923 = !DILocation(line: 134, column: 16, scope: !922)
!924 = !DILocation(line: 134, column: 6, scope: !875)
!925 = !DILocation(line: 138, column: 32, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !1, line: 134, column: 34)
!927 = !DILocation(line: 138, column: 46, scope: !926)
!928 = !DILocation(line: 138, column: 3, scope: !926)
!929 = !DILocation(line: 138, column: 22, scope: !926)
!930 = !DILocation(line: 138, column: 30, scope: !926)
!931 = !DILocation(line: 139, column: 2, scope: !926)
!932 = !DILocation(line: 142, column: 3, scope: !933)
!933 = distinct !DILexicalBlock(scope: !922, file: !1, line: 139, column: 9)
!934 = !DILocation(line: 142, column: 22, scope: !933)
!935 = !DILocation(line: 142, column: 30, scope: !933)
!936 = !DILocation(line: 145, column: 2, scope: !875)
!937 = !DILocation(line: 146, column: 1, scope: !875)
!938 = !DISubprogram(name: "acpi_ut_push_generic_state", scope: !872, file: !872, line: 507, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !941, !187}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!942 = distinct !DISubprogram(name: "acpi_ps_pop_scope", scope: !1, file: !1, line: 165, type: !943, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !946)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !796, !355, !945, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!946 = !{!947, !948, !949, !950, !951}
!947 = !DILocalVariable(name: "parser_state", arg: 1, scope: !942, file: !1, line: 165, type: !796)
!948 = !DILocalVariable(name: "op", arg: 2, scope: !942, file: !1, line: 166, type: !355)
!949 = !DILocalVariable(name: "arg_list", arg: 3, scope: !942, file: !1, line: 166, type: !945)
!950 = !DILocalVariable(name: "arg_count", arg: 4, scope: !942, file: !1, line: 166, type: !945)
!951 = !DILocalVariable(name: "scope", scope: !942, file: !1, line: 168, type: !187)
!952 = !DILocation(line: 165, column: 44, scope: !942)
!953 = !DILocation(line: 166, column: 31, scope: !942)
!954 = !DILocation(line: 166, column: 41, scope: !942)
!955 = !DILocation(line: 166, column: 57, scope: !942)
!956 = !DILocation(line: 168, column: 2, scope: !942)
!957 = !DILocation(line: 168, column: 28, scope: !942)
!958 = !DILocation(line: 168, column: 36, scope: !942)
!959 = !DILocation(line: 168, column: 50, scope: !942)
!960 = !DILocation(line: 174, column: 6, scope: !961)
!961 = distinct !DILexicalBlock(scope: !942, file: !1, line: 174, column: 6)
!962 = !DILocation(line: 174, column: 20, scope: !961)
!963 = !DILocation(line: 174, column: 6, scope: !942)
!964 = !DILocation(line: 175, column: 38, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !1, line: 174, column: 26)
!966 = !DILocation(line: 175, column: 52, scope: !965)
!967 = !DILocation(line: 175, column: 11, scope: !965)
!968 = !DILocation(line: 175, column: 9, scope: !965)
!969 = !DILocation(line: 179, column: 9, scope: !965)
!970 = !DILocation(line: 179, column: 28, scope: !965)
!971 = !DILocation(line: 179, column: 4, scope: !965)
!972 = !DILocation(line: 179, column: 7, scope: !965)
!973 = !DILocation(line: 180, column: 15, scope: !965)
!974 = !DILocation(line: 180, column: 34, scope: !965)
!975 = !DILocation(line: 180, column: 4, scope: !965)
!976 = !DILocation(line: 180, column: 13, scope: !965)
!977 = !DILocation(line: 181, column: 16, scope: !965)
!978 = !DILocation(line: 181, column: 35, scope: !965)
!979 = !DILocation(line: 181, column: 4, scope: !965)
!980 = !DILocation(line: 181, column: 14, scope: !965)
!981 = !DILocation(line: 182, column: 27, scope: !965)
!982 = !DILocation(line: 182, column: 46, scope: !965)
!983 = !DILocation(line: 182, column: 3, scope: !965)
!984 = !DILocation(line: 182, column: 17, scope: !965)
!985 = !DILocation(line: 182, column: 25, scope: !965)
!986 = !DILocation(line: 186, column: 32, scope: !965)
!987 = !DILocation(line: 186, column: 3, scope: !965)
!988 = !DILocation(line: 187, column: 2, scope: !965)
!989 = !DILocation(line: 190, column: 4, scope: !990)
!990 = distinct !DILexicalBlock(scope: !961, file: !1, line: 187, column: 9)
!991 = !DILocation(line: 190, column: 7, scope: !990)
!992 = !DILocation(line: 191, column: 4, scope: !990)
!993 = !DILocation(line: 191, column: 13, scope: !990)
!994 = !DILocation(line: 192, column: 4, scope: !990)
!995 = !DILocation(line: 192, column: 14, scope: !990)
!996 = !DILocation(line: 198, column: 1, scope: !942)
!997 = !DISubprogram(name: "acpi_ut_pop_generic_state", scope: !872, file: !872, line: 510, type: !998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DISubroutineType(types: !999)
!999 = !{!187, !941}
!1000 = !DISubprogram(name: "acpi_ut_delete_generic_state", scope: !872, file: !872, line: 531, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !187}
!1003 = distinct !DISubprogram(name: "acpi_ps_cleanup_scope", scope: !1, file: !1, line: 213, type: !1004, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !796}
!1006 = !{!1007, !1008}
!1007 = !DILocalVariable(name: "parser_state", arg: 1, scope: !1003, file: !1, line: 213, type: !796)
!1008 = !DILocalVariable(name: "scope", scope: !1003, file: !1, line: 215, type: !187)
!1009 = !DILocation(line: 213, column: 53, scope: !1003)
!1010 = !DILocation(line: 215, column: 2, scope: !1003)
!1011 = !DILocation(line: 215, column: 28, scope: !1003)
!1012 = !DILocation(line: 219, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 219, column: 6)
!1014 = !DILocation(line: 219, column: 6, scope: !1003)
!1015 = !DILocation(line: 220, column: 3, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 219, column: 21)
!1017 = !DILocation(line: 225, column: 2, scope: !1003)
!1018 = !DILocation(line: 225, column: 9, scope: !1003)
!1019 = !DILocation(line: 225, column: 23, scope: !1003)
!1020 = !DILocation(line: 226, column: 38, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 225, column: 30)
!1022 = !DILocation(line: 226, column: 52, scope: !1021)
!1023 = !DILocation(line: 226, column: 11, scope: !1021)
!1024 = !DILocation(line: 226, column: 9, scope: !1021)
!1025 = !DILocation(line: 227, column: 32, scope: !1021)
!1026 = !DILocation(line: 227, column: 3, scope: !1021)
!1027 = distinct !{!1027, !1017, !1028, !1029, !1030}
!1028 = !DILocation(line: 228, column: 2, scope: !1003)
!1029 = !{!"llvm.loop.mustprogress"}
!1030 = !{!"llvm.loop.unroll.disable"}
!1031 = !DILocation(line: 230, column: 2, scope: !1003)
!1032 = !DILocation(line: 231, column: 1, scope: !1003)
