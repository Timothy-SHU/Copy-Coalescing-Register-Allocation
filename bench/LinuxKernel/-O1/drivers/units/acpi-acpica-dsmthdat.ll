; ModuleID = 'drivers/acpi/acpica/dsmthdat.c'
source_filename = "drivers/acpi/acpica/dsmthdat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [5 x i8] c"__A0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"__L0\00", align 1, !dbg !7
@_acpi_module_name = internal constant [9 x i8] c"dsmthdat\00", align 1, !dbg !9
@.str.2 = private unnamed_addr constant [35 x i8] c"Local index %u is invalid (max %u)\00", align 1, !dbg !813
@.str.3 = private unnamed_addr constant [33 x i8] c"Arg index %u is invalid (max %u)\00", align 1, !dbg !818
@.str.4 = private unnamed_addr constant [19 x i8] c"Type %u is invalid\00", align 1, !dbg !823
@.str.5 = private unnamed_addr constant [31 x i8] c"Null object descriptor pointer\00", align 1, !dbg !828
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Uninitialized Arg[%u] at node %p\00", align 1, !dbg !833
@.str.7 = private unnamed_addr constant [29 x i8] c"Not a Arg/Local opcode: 0x%X\00", align 1, !dbg !835

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_method_data_init(ptr noundef %walk_state) #0 align 16 !dbg !851 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !855, metadata !DIExpression()), !dbg !857
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !858
  call void @llvm.dbg.declare(metadata ptr %i, metadata !856, metadata !DIExpression()), !dbg !859
  store i32 0, ptr %i, align 4, !dbg !860
  br label %for.cond, !dbg !862

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !863
  %cmp = icmp ult i32 %0, 7, !dbg !865
  br i1 %cmp, label %for.body, label %for.end, !dbg !866

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @.str, align 4, !dbg !867
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !867
  %arguments = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 26, !dbg !867
  %3 = load i32, ptr %i, align 4, !dbg !867
  %idxprom = zext i32 %3 to i64, !dbg !867
  %arrayidx = getelementptr [7 x %struct.acpi_namespace_node], ptr %arguments, i64 0, i64 %idxprom, !dbg !867
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx, i32 0, i32 4, !dbg !867
  store i32 %1, ptr %name, align 4, !dbg !867
  %4 = load i32, ptr %i, align 4, !dbg !869
  %shl = shl i32 %4, 24, !dbg !870
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !871
  %arguments1 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 26, !dbg !872
  %6 = load i32, ptr %i, align 4, !dbg !873
  %idxprom2 = zext i32 %6 to i64, !dbg !871
  %arrayidx3 = getelementptr [7 x %struct.acpi_namespace_node], ptr %arguments1, i64 0, i64 %idxprom2, !dbg !871
  %name4 = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx3, i32 0, i32 4, !dbg !874
  %7 = load i32, ptr %name4, align 4, !dbg !875
  %or = or i32 %7, %shl, !dbg !875
  store i32 %or, ptr %name4, align 4, !dbg !875
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !876
  %arguments5 = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 26, !dbg !877
  %9 = load i32, ptr %i, align 4, !dbg !878
  %idxprom6 = zext i32 %9 to i64, !dbg !876
  %arrayidx7 = getelementptr [7 x %struct.acpi_namespace_node], ptr %arguments5, i64 0, i64 %idxprom6, !dbg !876
  %descriptor_type = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx7, i32 0, i32 1, !dbg !879
  store i8 15, ptr %descriptor_type, align 8, !dbg !880
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !881
  %arguments8 = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 26, !dbg !882
  %11 = load i32, ptr %i, align 4, !dbg !883
  %idxprom9 = zext i32 %11 to i64, !dbg !881
  %arrayidx10 = getelementptr [7 x %struct.acpi_namespace_node], ptr %arguments8, i64 0, i64 %idxprom9, !dbg !881
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx10, i32 0, i32 2, !dbg !884
  store i8 0, ptr %type, align 1, !dbg !885
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !886
  %arguments11 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 26, !dbg !887
  %13 = load i32, ptr %i, align 4, !dbg !888
  %idxprom12 = zext i32 %13 to i64, !dbg !886
  %arrayidx13 = getelementptr [7 x %struct.acpi_namespace_node], ptr %arguments11, i64 0, i64 %idxprom12, !dbg !886
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx13, i32 0, i32 3, !dbg !889
  store i16 4, ptr %flags, align 2, !dbg !890
  br label %for.inc, !dbg !891

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4, !dbg !892
  %inc = add i32 %14, 1, !dbg !892
  store i32 %inc, ptr %i, align 4, !dbg !892
  br label %for.cond, !dbg !893, !llvm.loop !894

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !898
  br label %for.cond14, !dbg !900

for.cond14:                                       ; preds = %for.inc38, %for.end
  %15 = load i32, ptr %i, align 4, !dbg !901
  %cmp15 = icmp ult i32 %15, 8, !dbg !903
  br i1 %cmp15, label %for.body16, label %for.end40, !dbg !904

for.body16:                                       ; preds = %for.cond14
  %16 = load i32, ptr @.str.1, align 4, !dbg !905
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !905
  %local_variables = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 27, !dbg !905
  %18 = load i32, ptr %i, align 4, !dbg !905
  %idxprom17 = zext i32 %18 to i64, !dbg !905
  %arrayidx18 = getelementptr [8 x %struct.acpi_namespace_node], ptr %local_variables, i64 0, i64 %idxprom17, !dbg !905
  %name19 = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx18, i32 0, i32 4, !dbg !905
  store i32 %16, ptr %name19, align 4, !dbg !905
  %19 = load i32, ptr %i, align 4, !dbg !907
  %shl20 = shl i32 %19, 24, !dbg !908
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !909
  %local_variables21 = getelementptr inbounds %struct.acpi_walk_state, ptr %20, i32 0, i32 27, !dbg !910
  %21 = load i32, ptr %i, align 4, !dbg !911
  %idxprom22 = zext i32 %21 to i64, !dbg !909
  %arrayidx23 = getelementptr [8 x %struct.acpi_namespace_node], ptr %local_variables21, i64 0, i64 %idxprom22, !dbg !909
  %name24 = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx23, i32 0, i32 4, !dbg !912
  %22 = load i32, ptr %name24, align 4, !dbg !913
  %or25 = or i32 %22, %shl20, !dbg !913
  store i32 %or25, ptr %name24, align 4, !dbg !913
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !914
  %local_variables26 = getelementptr inbounds %struct.acpi_walk_state, ptr %23, i32 0, i32 27, !dbg !915
  %24 = load i32, ptr %i, align 4, !dbg !916
  %idxprom27 = zext i32 %24 to i64, !dbg !914
  %arrayidx28 = getelementptr [8 x %struct.acpi_namespace_node], ptr %local_variables26, i64 0, i64 %idxprom27, !dbg !914
  %descriptor_type29 = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx28, i32 0, i32 1, !dbg !917
  store i8 15, ptr %descriptor_type29, align 8, !dbg !918
  %25 = load ptr, ptr %walk_state.addr, align 8, !dbg !919
  %local_variables30 = getelementptr inbounds %struct.acpi_walk_state, ptr %25, i32 0, i32 27, !dbg !920
  %26 = load i32, ptr %i, align 4, !dbg !921
  %idxprom31 = zext i32 %26 to i64, !dbg !919
  %arrayidx32 = getelementptr [8 x %struct.acpi_namespace_node], ptr %local_variables30, i64 0, i64 %idxprom31, !dbg !919
  %type33 = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx32, i32 0, i32 2, !dbg !922
  store i8 0, ptr %type33, align 1, !dbg !923
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !924
  %local_variables34 = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 27, !dbg !925
  %28 = load i32, ptr %i, align 4, !dbg !926
  %idxprom35 = zext i32 %28 to i64, !dbg !924
  %arrayidx36 = getelementptr [8 x %struct.acpi_namespace_node], ptr %local_variables34, i64 0, i64 %idxprom35, !dbg !924
  %flags37 = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx36, i32 0, i32 3, !dbg !927
  store i16 8, ptr %flags37, align 2, !dbg !928
  br label %for.inc38, !dbg !929

for.inc38:                                        ; preds = %for.body16
  %29 = load i32, ptr %i, align 4, !dbg !930
  %inc39 = add i32 %29, 1, !dbg !930
  store i32 %inc39, ptr %i, align 4, !dbg !930
  br label %for.cond14, !dbg !931, !llvm.loop !932

for.end40:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !934
  ret void, !dbg !934
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_method_data_delete_all(ptr noundef %walk_state) #0 align 16 !dbg !935 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !937, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %index, metadata !938, metadata !DIExpression()), !dbg !941
  store i32 0, ptr %index, align 4, !dbg !942
  br label %for.cond, !dbg !944

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %index, align 4, !dbg !945
  %cmp = icmp ult i32 %0, 8, !dbg !947
  br i1 %cmp, label %for.body, label %for.end, !dbg !948

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !949
  %local_variables = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 27, !dbg !952
  %2 = load i32, ptr %index, align 4, !dbg !953
  %idxprom = zext i32 %2 to i64, !dbg !949
  %arrayidx = getelementptr [8 x %struct.acpi_namespace_node], ptr %local_variables, i64 0, i64 %idxprom, !dbg !949
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx, i32 0, i32 0, !dbg !954
  %3 = load ptr, ptr %object, align 8, !dbg !954
  %tobool = icmp ne ptr %3, null, !dbg !949
  br i1 %tobool, label %if.then, label %if.end, !dbg !955

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !956
  %local_variables1 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 27, !dbg !958
  %5 = load i32, ptr %index, align 4, !dbg !959
  %idxprom2 = zext i32 %5 to i64, !dbg !956
  %arrayidx3 = getelementptr [8 x %struct.acpi_namespace_node], ptr %local_variables1, i64 0, i64 %idxprom2, !dbg !956
  call void @acpi_ns_detach_object(ptr noundef %arrayidx3) #5, !dbg !960
  br label %if.end, !dbg !961

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !962

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %index, align 4, !dbg !963
  %inc = add i32 %6, 1, !dbg !963
  store i32 %inc, ptr %index, align 4, !dbg !963
  br label %for.cond, !dbg !964, !llvm.loop !965

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %index, align 4, !dbg !967
  br label %for.cond4, !dbg !969

for.cond4:                                        ; preds = %for.inc16, %for.end
  %7 = load i32, ptr %index, align 4, !dbg !970
  %cmp5 = icmp ult i32 %7, 7, !dbg !972
  br i1 %cmp5, label %for.body6, label %for.end18, !dbg !973

for.body6:                                        ; preds = %for.cond4
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !974
  %arguments = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 26, !dbg !977
  %9 = load i32, ptr %index, align 4, !dbg !978
  %idxprom7 = zext i32 %9 to i64, !dbg !974
  %arrayidx8 = getelementptr [7 x %struct.acpi_namespace_node], ptr %arguments, i64 0, i64 %idxprom7, !dbg !974
  %object9 = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx8, i32 0, i32 0, !dbg !979
  %10 = load ptr, ptr %object9, align 8, !dbg !979
  %tobool10 = icmp ne ptr %10, null, !dbg !974
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !980

if.then11:                                        ; preds = %for.body6
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !981
  %arguments12 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 26, !dbg !983
  %12 = load i32, ptr %index, align 4, !dbg !984
  %idxprom13 = zext i32 %12 to i64, !dbg !981
  %arrayidx14 = getelementptr [7 x %struct.acpi_namespace_node], ptr %arguments12, i64 0, i64 %idxprom13, !dbg !981
  call void @acpi_ns_detach_object(ptr noundef %arrayidx14) #5, !dbg !985
  br label %if.end15, !dbg !986

if.end15:                                         ; preds = %if.then11, %for.body6
  br label %for.inc16, !dbg !987

for.inc16:                                        ; preds = %if.end15
  %13 = load i32, ptr %index, align 4, !dbg !988
  %inc17 = add i32 %13, 1, !dbg !988
  store i32 %inc17, ptr %index, align 4, !dbg !988
  br label %for.cond4, !dbg !989, !llvm.loop !990

for.end18:                                        ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4, !dbg !992
  ret void, !dbg !992
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !993 dso_local void @acpi_ns_detach_object(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_method_data_init_args(ptr noundef %params, i32 noundef %max_param_count, ptr noundef %walk_state) #0 align 16 !dbg !997 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca ptr, align 8
  %max_param_count.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !1001, metadata !DIExpression()), !dbg !1006
  store i32 %max_param_count, ptr %max_param_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_param_count.addr, metadata !1002, metadata !DIExpression()), !dbg !1007
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1003, metadata !DIExpression()), !dbg !1008
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1004, metadata !DIExpression()), !dbg !1010
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #4, !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1005, metadata !DIExpression()), !dbg !1012
  store i32 0, ptr %index, align 4, !dbg !1012
  %0 = load ptr, ptr %params.addr, align 8, !dbg !1013
  %tobool = icmp ne ptr %0, null, !dbg !1013
  br i1 %tobool, label %if.end, label %if.then, !dbg !1015

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1016

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !1018

while.cond:                                       ; preds = %if.end7, %if.end
  %1 = load i32, ptr %index, align 4, !dbg !1019
  %cmp = icmp ult i32 %1, 7, !dbg !1020
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !1021

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32, ptr %index, align 4, !dbg !1022
  %3 = load i32, ptr %max_param_count.addr, align 4, !dbg !1023
  %cmp1 = icmp ult i32 %2, %3, !dbg !1024
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !1025

land.rhs:                                         ; preds = %land.lhs.true
  %4 = load ptr, ptr %params.addr, align 8, !dbg !1026
  %5 = load i32, ptr %index, align 4, !dbg !1027
  %idxprom = zext i32 %5 to i64, !dbg !1026
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !1026
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1026
  %tobool2 = icmp ne ptr %6, null, !dbg !1025
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool2, %land.rhs ], !dbg !1028
  br i1 %7, label %while.body, label %while.end, !dbg !1018

while.body:                                       ; preds = %land.end
  %8 = load i32, ptr %index, align 4, !dbg !1029
  %9 = load ptr, ptr %params.addr, align 8, !dbg !1031
  %10 = load i32, ptr %index, align 4, !dbg !1032
  %idxprom3 = zext i32 %10 to i64, !dbg !1031
  %arrayidx4 = getelementptr ptr, ptr %9, i64 %idxprom3, !dbg !1031
  %11 = load ptr, ptr %arrayidx4, align 8, !dbg !1031
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1033
  %call = call i32 @acpi_ds_method_data_set_value(i8 noundef zeroext 1, i32 noundef %8, ptr noundef %11, ptr noundef %12) #5, !dbg !1034
  store i32 %call, ptr %status, align 4, !dbg !1035
  %13 = load i32, ptr %status, align 4, !dbg !1036
  %tobool5 = icmp ne i32 %13, 0, !dbg !1036
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1038

if.then6:                                         ; preds = %while.body
  %14 = load i32, ptr %status, align 4, !dbg !1039
  store i32 %14, ptr %retval, align 4, !dbg !1039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1039

if.end7:                                          ; preds = %while.body
  %15 = load i32, ptr %index, align 4, !dbg !1041
  %inc = add i32 %15, 1, !dbg !1041
  store i32 %inc, ptr %index, align 4, !dbg !1041
  br label %while.cond, !dbg !1018, !llvm.loop !1042

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !1044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1044

cleanup:                                          ; preds = %while.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #4, !dbg !1045
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1045
  %16 = load i32, ptr %retval, align 4, !dbg !1045
  ret i32 %16, !dbg !1045
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ds_method_data_set_value(i8 noundef zeroext %type, i32 noundef %index, ptr noundef %object, ptr noundef %walk_state) #0 align 16 !dbg !1046 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1050, metadata !DIExpression()), !dbg !1056
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1051, metadata !DIExpression()), !dbg !1057
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1052, metadata !DIExpression()), !dbg !1058
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1053, metadata !DIExpression()), !dbg !1059
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1060
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1054, metadata !DIExpression()), !dbg !1061
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1055, metadata !DIExpression()), !dbg !1063
  %0 = load i8, ptr %type.addr, align 1, !dbg !1064
  %1 = load i32, ptr %index.addr, align 4, !dbg !1065
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1066
  %call = call i32 @acpi_ds_method_data_get_node(i8 noundef zeroext %0, i32 noundef %1, ptr noundef %2, ptr noundef %node) #5, !dbg !1067
  store i32 %call, ptr %status, align 4, !dbg !1068
  %3 = load i32, ptr %status, align 4, !dbg !1069
  %tobool = icmp ne i32 %3, 0, !dbg !1069
  br i1 %tobool, label %if.then, label %if.end, !dbg !1071

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %status, align 4, !dbg !1072
  store i32 %4, ptr %retval, align 4, !dbg !1072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1072

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %object.addr, align 8, !dbg !1074
  call void @acpi_ut_add_reference(ptr noundef %5) #5, !dbg !1075
  %6 = load ptr, ptr %object.addr, align 8, !dbg !1076
  %7 = load ptr, ptr %node, align 8, !dbg !1077
  %object1 = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 0, !dbg !1078
  store ptr %6, ptr %object1, align 8, !dbg !1079
  %8 = load i32, ptr %status, align 4, !dbg !1080
  store i32 %8, ptr %retval, align 4, !dbg !1080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1080

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1081
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1081
  %9 = load i32, ptr %retval, align 4, !dbg !1081
  ret i32 %9, !dbg !1081
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_method_data_get_node(i8 noundef zeroext %type, i32 noundef %index, ptr noundef %walk_state, ptr noundef %node) #0 align 16 !dbg !1082 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1087, metadata !DIExpression()), !dbg !1091
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1088, metadata !DIExpression()), !dbg !1092
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1089, metadata !DIExpression()), !dbg !1093
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1090, metadata !DIExpression()), !dbg !1094
  %0 = load i8, ptr %type.addr, align 1, !dbg !1095
  %conv = zext i8 %0 to i32, !dbg !1095
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !1096

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %index.addr, align 4, !dbg !1097
  %cmp = icmp ugt i32 %1, 7, !dbg !1100
  br i1 %cmp, label %if.then, label %if.end, !dbg !1101

if.then:                                          ; preds = %sw.bb
  %2 = load i32, ptr %index.addr, align 4, !dbg !1102
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 227, ptr noundef @.str.2, i32 noundef %2, i32 noundef 7) #5, !dbg !1102
  store i32 12312, ptr %retval, align 4, !dbg !1104
  br label %return, !dbg !1104

if.end:                                           ; preds = %sw.bb
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1105
  %local_variables = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 27, !dbg !1106
  %4 = load i32, ptr %index.addr, align 4, !dbg !1107
  %idxprom = zext i32 %4 to i64, !dbg !1105
  %arrayidx = getelementptr [8 x %struct.acpi_namespace_node], ptr %local_variables, i64 0, i64 %idxprom, !dbg !1105
  %5 = load ptr, ptr %node.addr, align 8, !dbg !1108
  store ptr %arrayidx, ptr %5, align 8, !dbg !1109
  br label %sw.epilog, !dbg !1110

sw.bb2:                                           ; preds = %entry
  %6 = load i32, ptr %index.addr, align 4, !dbg !1111
  %cmp3 = icmp ugt i32 %6, 6, !dbg !1113
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1114

if.then5:                                         ; preds = %sw.bb2
  %7 = load i32, ptr %index.addr, align 4, !dbg !1115
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 241, ptr noundef @.str.3, i32 noundef %7, i32 noundef 6) #5, !dbg !1115
  store i32 12312, ptr %retval, align 4, !dbg !1117
  br label %return, !dbg !1117

if.end6:                                          ; preds = %sw.bb2
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1118
  %arguments = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 26, !dbg !1119
  %9 = load i32, ptr %index.addr, align 4, !dbg !1120
  %idxprom7 = zext i32 %9 to i64, !dbg !1118
  %arrayidx8 = getelementptr [7 x %struct.acpi_namespace_node], ptr %arguments, i64 0, i64 %idxprom7, !dbg !1118
  %10 = load ptr, ptr %node.addr, align 8, !dbg !1121
  store ptr %arrayidx8, ptr %10, align 8, !dbg !1122
  br label %sw.epilog, !dbg !1123

sw.default:                                       ; preds = %entry
  %11 = load i8, ptr %type.addr, align 1, !dbg !1124
  %conv9 = zext i8 %11 to i32, !dbg !1124
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 254, ptr noundef @.str.4, i32 noundef %conv9) #5, !dbg !1124
  store i32 8, ptr %retval, align 4, !dbg !1125
  br label %return, !dbg !1125

sw.epilog:                                        ; preds = %if.end6, %if.end
  store i32 0, ptr %retval, align 4, !dbg !1126
  br label %return, !dbg !1126

return:                                           ; preds = %sw.epilog, %sw.default, %if.then5, %if.then
  %12 = load i32, ptr %retval, align 4, !dbg !1127
  ret i32 %12, !dbg !1127
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1128 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_method_data_get_value(i8 noundef zeroext %type, i32 noundef %index, ptr noundef %walk_state, ptr noundef %dest_desc) #0 align 16 !dbg !1133 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %dest_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %object = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1137, metadata !DIExpression()), !dbg !1144
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1138, metadata !DIExpression()), !dbg !1145
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1139, metadata !DIExpression()), !dbg !1146
  store ptr %dest_desc, ptr %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_desc.addr, metadata !1140, metadata !DIExpression()), !dbg !1147
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1141, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1142, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #4, !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %object, metadata !1143, metadata !DIExpression()), !dbg !1153
  %0 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1154
  %tobool = icmp ne ptr %0, null, !dbg !1154
  br i1 %tobool, label %if.end, label %if.then, !dbg !1156

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 347, ptr noundef @.str.5) #5, !dbg !1157
  store i32 4097, ptr %retval, align 4, !dbg !1159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1159

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %type.addr, align 1, !dbg !1160
  %2 = load i32, ptr %index.addr, align 4, !dbg !1161
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1162
  %call = call i32 @acpi_ds_method_data_get_node(i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %node) #5, !dbg !1163
  store i32 %call, ptr %status, align 4, !dbg !1164
  %4 = load i32, ptr %status, align 4, !dbg !1165
  %tobool1 = icmp ne i32 %4, 0, !dbg !1165
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1167

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %status, align 4, !dbg !1168
  store i32 %5, ptr %retval, align 4, !dbg !1168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1168

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %node, align 8, !dbg !1170
  %object4 = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 0, !dbg !1171
  %7 = load ptr, ptr %object4, align 8, !dbg !1171
  store ptr %7, ptr %object, align 8, !dbg !1172
  %8 = load ptr, ptr %object, align 8, !dbg !1173
  %tobool5 = icmp ne ptr %8, null, !dbg !1173
  br i1 %tobool5, label %if.end17, label %if.then6, !dbg !1175

if.then6:                                         ; preds = %if.end3
  %9 = load i8, ptr @acpi_gbl_enable_interpreter_slack, align 1, !dbg !1176
  %tobool7 = icmp ne i8 %9, 0, !dbg !1176
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1179

if.then8:                                         ; preds = %if.then6
  %call9 = call ptr @acpi_ut_create_integer_object(i64 noundef 0) #5, !dbg !1180
  store ptr %call9, ptr %object, align 8, !dbg !1182
  %10 = load ptr, ptr %object, align 8, !dbg !1183
  %tobool10 = icmp ne ptr %10, null, !dbg !1183
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1185

if.then11:                                        ; preds = %if.then8
  store i32 4, ptr %retval, align 4, !dbg !1186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1186

if.end12:                                         ; preds = %if.then8
  %11 = load ptr, ptr %object, align 8, !dbg !1188
  %12 = load ptr, ptr %node, align 8, !dbg !1189
  %object13 = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 0, !dbg !1190
  store ptr %11, ptr %object13, align 8, !dbg !1191
  br label %if.end16, !dbg !1192

if.else:                                          ; preds = %if.then6
  %13 = load i8, ptr %type.addr, align 1, !dbg !1193
  %conv = zext i8 %13 to i32, !dbg !1193
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
  ], !dbg !1194

sw.bb:                                            ; preds = %if.else
  %14 = load i32, ptr %index.addr, align 4, !dbg !1195
  %15 = load ptr, ptr %node, align 8, !dbg !1195
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 390, ptr noundef @.str.6, i32 noundef %14, ptr noundef %15) #5, !dbg !1195
  store i32 12294, ptr %retval, align 4, !dbg !1197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1197

sw.bb14:                                          ; preds = %if.else
  store i32 12293, ptr %retval, align 4, !dbg !1198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1198

sw.default:                                       ; preds = %if.else
  %16 = load i8, ptr %type.addr, align 1, !dbg !1199
  %conv15 = zext i8 %16 to i32, !dbg !1199
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 405, ptr noundef @.str.7, i32 noundef %conv15) #5, !dbg !1199
  store i32 12303, ptr %retval, align 4, !dbg !1200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1200

if.end16:                                         ; preds = %if.end12
  br label %if.end17, !dbg !1201

if.end17:                                         ; preds = %if.end16, %if.end3
  %17 = load ptr, ptr %object, align 8, !dbg !1202
  %18 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1203
  store ptr %17, ptr %18, align 8, !dbg !1204
  %19 = load ptr, ptr %object, align 8, !dbg !1205
  call void @acpi_ut_add_reference(ptr noundef %19) #5, !dbg !1206
  store i32 0, ptr %retval, align 4, !dbg !1207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1207

cleanup:                                          ; preds = %if.end17, %sw.default, %sw.bb14, %sw.bb, %if.then11, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #4, !dbg !1208
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1208
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1208
  %20 = load i32, ptr %retval, align 4, !dbg !1208
  ret i32 %20, !dbg !1208
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1209 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1213 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_store_object_to_local(i8 noundef zeroext %type, i32 noundef %index, ptr noundef %obj_desc, ptr noundef %walk_state) #0 align 16 !dbg !1216 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %current_obj_desc = alloca ptr, align 8
  %new_obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1218, metadata !DIExpression()), !dbg !1226
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1219, metadata !DIExpression()), !dbg !1227
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1220, metadata !DIExpression()), !dbg !1228
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1221, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1222, metadata !DIExpression()), !dbg !1231
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1232
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1223, metadata !DIExpression()), !dbg !1233
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_obj_desc) #4, !dbg !1234
  call void @llvm.dbg.declare(metadata ptr %current_obj_desc, metadata !1224, metadata !DIExpression()), !dbg !1235
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_obj_desc) #4, !dbg !1236
  call void @llvm.dbg.declare(metadata ptr %new_obj_desc, metadata !1225, metadata !DIExpression()), !dbg !1237
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1238
  %tobool = icmp ne ptr %0, null, !dbg !1238
  br i1 %tobool, label %if.end, label %if.then, !dbg !1240

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1241

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %type.addr, align 1, !dbg !1243
  %2 = load i32, ptr %index.addr, align 4, !dbg !1244
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1245
  %call = call i32 @acpi_ds_method_data_get_node(i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %node) #5, !dbg !1246
  store i32 %call, ptr %status, align 4, !dbg !1247
  %4 = load i32, ptr %status, align 4, !dbg !1248
  %tobool1 = icmp ne i32 %4, 0, !dbg !1248
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1250

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %status, align 4, !dbg !1251
  store i32 %5, ptr %retval, align 4, !dbg !1251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1251

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %node, align 8, !dbg !1253
  %call4 = call ptr @acpi_ns_get_attached_object(ptr noundef %6) #5, !dbg !1254
  store ptr %call4, ptr %current_obj_desc, align 8, !dbg !1255
  %7 = load ptr, ptr %current_obj_desc, align 8, !dbg !1256
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1258
  %cmp = icmp eq ptr %7, %8, !dbg !1259
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1260

if.then5:                                         ; preds = %if.end3
  %9 = load i32, ptr %status, align 4, !dbg !1261
  store i32 %9, ptr %retval, align 4, !dbg !1261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1261

if.end6:                                          ; preds = %if.end3
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1263
  store ptr %10, ptr %new_obj_desc, align 8, !dbg !1264
  %11 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1265
  %reference_count = getelementptr inbounds %struct.acpi_object_common, ptr %11, i32 0, i32 3, !dbg !1267
  %12 = load i16, ptr %reference_count, align 2, !dbg !1267
  %conv = zext i16 %12 to i32, !dbg !1265
  %cmp7 = icmp sgt i32 %conv, 1, !dbg !1268
  br i1 %cmp7, label %if.then9, label %if.end14, !dbg !1269

if.then9:                                         ; preds = %if.end6
  %13 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1270
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1272
  %call10 = call i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef %13, ptr noundef %new_obj_desc, ptr noundef %14) #5, !dbg !1273
  store i32 %call10, ptr %status, align 4, !dbg !1274
  %15 = load i32, ptr %status, align 4, !dbg !1275
  %tobool11 = icmp ne i32 %15, 0, !dbg !1275
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1277

if.then12:                                        ; preds = %if.then9
  %16 = load i32, ptr %status, align 4, !dbg !1278
  store i32 %16, ptr %retval, align 4, !dbg !1278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1278

if.end13:                                         ; preds = %if.then9
  br label %if.end14, !dbg !1280

if.end14:                                         ; preds = %if.end13, %if.end6
  %17 = load ptr, ptr %current_obj_desc, align 8, !dbg !1281
  %tobool15 = icmp ne ptr %17, null, !dbg !1281
  br i1 %tobool15, label %if.then16, label %if.end40, !dbg !1283

if.then16:                                        ; preds = %if.end14
  %18 = load i8, ptr %type.addr, align 1, !dbg !1284
  %conv17 = zext i8 %18 to i32, !dbg !1284
  %cmp18 = icmp eq i32 %conv17, 1, !dbg !1287
  br i1 %cmp18, label %if.then20, label %if.end39, !dbg !1288

if.then20:                                        ; preds = %if.then16
  %19 = load ptr, ptr %current_obj_desc, align 8, !dbg !1289
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %19, i32 0, i32 1, !dbg !1289
  %20 = load i8, ptr %descriptor_type, align 8, !dbg !1289
  %conv21 = zext i8 %20 to i32, !dbg !1289
  %cmp22 = icmp eq i32 %conv21, 14, !dbg !1292
  br i1 %cmp22, label %land.lhs.true, label %if.end38, !dbg !1293

land.lhs.true:                                    ; preds = %if.then20
  %21 = load ptr, ptr %current_obj_desc, align 8, !dbg !1294
  %type24 = getelementptr inbounds %struct.acpi_object_common, ptr %21, i32 0, i32 2, !dbg !1295
  %22 = load i8, ptr %type24, align 1, !dbg !1295
  %conv25 = zext i8 %22 to i32, !dbg !1294
  %cmp26 = icmp eq i32 %conv25, 20, !dbg !1296
  br i1 %cmp26, label %land.lhs.true28, label %if.end38, !dbg !1297

land.lhs.true28:                                  ; preds = %land.lhs.true
  %23 = load ptr, ptr %current_obj_desc, align 8, !dbg !1298
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %23, i32 0, i32 5, !dbg !1299
  %24 = load i8, ptr %class, align 1, !dbg !1299
  %conv29 = zext i8 %24 to i32, !dbg !1298
  %cmp30 = icmp eq i32 %conv29, 2, !dbg !1300
  br i1 %cmp30, label %if.then32, label %if.end38, !dbg !1301

if.then32:                                        ; preds = %land.lhs.true28
  %25 = load ptr, ptr %new_obj_desc, align 8, !dbg !1302
  %26 = load ptr, ptr %current_obj_desc, align 8, !dbg !1304
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %26, i32 0, i32 8, !dbg !1305
  %27 = load ptr, ptr %object, align 8, !dbg !1305
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1306
  %call33 = call i32 @acpi_ex_store_object_to_node(ptr noundef %25, ptr noundef %27, ptr noundef %28, i8 noundef zeroext 0) #5, !dbg !1307
  store i32 %call33, ptr %status, align 4, !dbg !1308
  %29 = load ptr, ptr %new_obj_desc, align 8, !dbg !1309
  %30 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1311
  %cmp34 = icmp ne ptr %29, %30, !dbg !1312
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !1313

if.then36:                                        ; preds = %if.then32
  %31 = load ptr, ptr %new_obj_desc, align 8, !dbg !1314
  call void @acpi_ut_remove_reference(ptr noundef %31) #5, !dbg !1316
  br label %if.end37, !dbg !1317

if.end37:                                         ; preds = %if.then36, %if.then32
  %32 = load i32, ptr %status, align 4, !dbg !1318
  store i32 %32, ptr %retval, align 4, !dbg !1318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1318

if.end38:                                         ; preds = %land.lhs.true28, %land.lhs.true, %if.then20
  br label %if.end39, !dbg !1319

if.end39:                                         ; preds = %if.end38, %if.then16
  %33 = load i8, ptr %type.addr, align 1, !dbg !1320
  %34 = load i32, ptr %index.addr, align 4, !dbg !1321
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1322
  call void @acpi_ds_method_data_delete_value(i8 noundef zeroext %33, i32 noundef %34, ptr noundef %35) #5, !dbg !1323
  br label %if.end40, !dbg !1324

if.end40:                                         ; preds = %if.end39, %if.end14
  %36 = load i8, ptr %type.addr, align 1, !dbg !1325
  %37 = load i32, ptr %index.addr, align 4, !dbg !1326
  %38 = load ptr, ptr %new_obj_desc, align 8, !dbg !1327
  %39 = load ptr, ptr %walk_state.addr, align 8, !dbg !1328
  %call41 = call i32 @acpi_ds_method_data_set_value(i8 noundef zeroext %36, i32 noundef %37, ptr noundef %38, ptr noundef %39) #5, !dbg !1329
  store i32 %call41, ptr %status, align 4, !dbg !1330
  %40 = load ptr, ptr %new_obj_desc, align 8, !dbg !1331
  %41 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1333
  %cmp42 = icmp ne ptr %40, %41, !dbg !1334
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1335

if.then44:                                        ; preds = %if.end40
  %42 = load ptr, ptr %new_obj_desc, align 8, !dbg !1336
  call void @acpi_ut_remove_reference(ptr noundef %42) #5, !dbg !1338
  br label %if.end45, !dbg !1339

if.end45:                                         ; preds = %if.then44, %if.end40
  %43 = load i32, ptr %status, align 4, !dbg !1340
  store i32 %43, ptr %retval, align 4, !dbg !1340
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1340

cleanup:                                          ; preds = %if.end45, %if.end37, %if.then12, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_obj_desc) #4, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_obj_desc) #4, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1341
  %44 = load i32, ptr %retval, align 4, !dbg !1341
  ret i32 %44, !dbg !1341
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1342 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1345 dso_local i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1348 dso_local i32 @acpi_ex_store_object_to_node(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1352 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ds_method_data_delete_value(i8 noundef zeroext %type, i32 noundef %index, ptr noundef %walk_state) #0 align 16 !dbg !1353 {
entry:
  %type.addr = alloca i8, align 1
  %index.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %object = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1357, metadata !DIExpression()), !dbg !1363
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1358, metadata !DIExpression()), !dbg !1364
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1359, metadata !DIExpression()), !dbg !1365
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1366
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1360, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1361, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 8, ptr %object) #4, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %object, metadata !1362, metadata !DIExpression()), !dbg !1371
  %0 = load i8, ptr %type.addr, align 1, !dbg !1372
  %1 = load i32, ptr %index.addr, align 4, !dbg !1373
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1374
  %call = call i32 @acpi_ds_method_data_get_node(i8 noundef zeroext %0, i32 noundef %1, ptr noundef %2, ptr noundef %node) #5, !dbg !1375
  store i32 %call, ptr %status, align 4, !dbg !1376
  %3 = load i32, ptr %status, align 4, !dbg !1377
  %tobool = icmp ne i32 %3, 0, !dbg !1377
  br i1 %tobool, label %if.then, label %if.end, !dbg !1379

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1380

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node, align 8, !dbg !1382
  %call1 = call ptr @acpi_ns_get_attached_object(ptr noundef %4) #5, !dbg !1383
  store ptr %call1, ptr %object, align 8, !dbg !1384
  %5 = load ptr, ptr %node, align 8, !dbg !1385
  %object2 = getelementptr inbounds %struct.acpi_namespace_node, ptr %5, i32 0, i32 0, !dbg !1386
  store ptr null, ptr %object2, align 8, !dbg !1387
  %6 = load ptr, ptr %object, align 8, !dbg !1388
  %tobool3 = icmp ne ptr %6, null, !dbg !1390
  br i1 %tobool3, label %land.lhs.true, label %if.end6, !dbg !1391

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %object, align 8, !dbg !1392
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %7, i32 0, i32 1, !dbg !1392
  %8 = load i8, ptr %descriptor_type, align 8, !dbg !1392
  %conv = zext i8 %8 to i32, !dbg !1392
  %cmp = icmp eq i32 %conv, 14, !dbg !1393
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !1394

if.then5:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %object, align 8, !dbg !1395
  call void @acpi_ut_remove_reference(ptr noundef %9) #5, !dbg !1397
  br label %if.end6, !dbg !1398

if.end6:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1399

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %object) #4, !dbg !1400
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1400
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1400
  ret void, !dbg !1400
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!842, !843, !844, !845, !846, !847, !848, !849}
!llvm.ident = !{!850}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/dsmthdat.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0203bbd1012bc1733d118ca9d74079d1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !11, file: !2, line: 15, type: !840, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dsmthdat.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dsmthdat\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dsmthdat.ll drivers/acpi/acpica/dsmthdat.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !25, globals: !812, splitDebugInlining: false, nameTableKind: None)
!12 = !{!13}
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 323, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24}
!17 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!18 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!19 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!20 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!21 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!22 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!23 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!24 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!25 = !{!26, !31, !32, !34, !37}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !28, line: 21, baseType: !29)
!28 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !15)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !33, line: 421, baseType: !27)
!33 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !28, line: 23, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !36)
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !14, line: 434, size: 1600, elements: !39)
!39 = !{!40, !48, !810, !811}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !38, file: !14, line: 435, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !14, line: 429, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !41, file: !14, line: 430, baseType: !31, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !14, line: 431, baseType: !45, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !28, line: 17, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !30, line: 21, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !38, file: !14, line: 436, baseType: !49, size: 576)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !14, line: 369, size: 576, elements: !50)
!50 = !{!51, !63, !76, !87, !123, !137, !146, !459, !476, !492, !505, !583, !595, !609, !619, !637, !659, !678, !697, !716, !729, !756, !773, !786, !800, !809}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !49, file: !14, line: 370, baseType: !52, size: 128)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !14, line: 73, size: 128, elements: !53)
!53 = !{!54, !56, !57, !58, !62}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !14, line: 74, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !14, line: 74, baseType: !45, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !14, line: 74, baseType: !45, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !14, line: 74, baseType: !59, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !28, line: 19, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !61)
!61 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !14, line: 74, baseType: !45, size: 8, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !49, file: !14, line: 371, baseType: !64, size: 192)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !14, line: 76, size: 192, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !75}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !14, line: 77, baseType: !55, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !14, line: 77, baseType: !45, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !14, line: 77, baseType: !45, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !14, line: 77, baseType: !59, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !14, line: 77, baseType: !45, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !64, file: !14, line: 77, baseType: !72, size: 24, offset: 104)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !64, file: !14, line: 78, baseType: !34, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !49, file: !14, line: 372, baseType: !77, size: 256)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !14, line: 93, size: 256, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !86}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !14, line: 94, baseType: !55, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !14, line: 94, baseType: !45, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !14, line: 94, baseType: !45, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !14, line: 94, baseType: !59, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !14, line: 94, baseType: !45, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !14, line: 94, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !14, line: 94, baseType: !27, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !49, file: !14, line: 373, baseType: !88, size: 384)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !14, line: 97, size: 384, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !97, !98, !99, !100}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !88, file: !14, line: 98, baseType: !55, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !14, line: 98, baseType: !45, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !14, line: 98, baseType: !45, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !88, file: !14, line: 98, baseType: !59, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !14, line: 98, baseType: !45, size: 8, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !88, file: !14, line: 98, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !88, file: !14, line: 98, baseType: !27, size: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !88, file: !14, line: 99, baseType: !27, size: 32, offset: 224)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !88, file: !14, line: 100, baseType: !96, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !14, line: 101, baseType: !101, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !103, line: 133, size: 384, elements: !104)
!103 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!104 = !{!105, !106, !107, !108, !109, !118, !119, !120, !121}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !102, file: !103, line: 134, baseType: !55, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !103, line: 135, baseType: !45, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !103, line: 136, baseType: !45, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !103, line: 137, baseType: !59, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 138, baseType: !110, size: 32, offset: 96)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !111, line: 328, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !110, file: !111, line: 329, baseType: !27, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !110, file: !111, line: 330, baseType: !115, size: 32)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 4)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !103, line: 139, baseType: !101, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !102, file: !103, line: 140, baseType: !101, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !102, file: !103, line: 141, baseType: !101, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !102, file: !103, line: 142, baseType: !122, size: 16, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !33, line: 445, baseType: !59)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !49, file: !14, line: 374, baseType: !124, size: 384)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !14, line: 104, size: 384, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !134, !135, !136}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !14, line: 105, baseType: !55, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !14, line: 105, baseType: !45, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !14, line: 105, baseType: !45, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !14, line: 105, baseType: !59, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !14, line: 105, baseType: !45, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !14, line: 105, baseType: !101, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !124, file: !14, line: 106, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !124, file: !14, line: 107, baseType: !96, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !124, file: !14, line: 108, baseType: !27, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !124, file: !14, line: 109, baseType: !27, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !49, file: !14, line: 375, baseType: !138, size: 192)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !14, line: 118, size: 192, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !14, line: 119, baseType: !55, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !14, line: 119, baseType: !45, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !14, line: 119, baseType: !45, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !14, line: 119, baseType: !59, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !14, line: 119, baseType: !45, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !138, file: !14, line: 119, baseType: !31, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !49, file: !14, line: 376, baseType: !147, size: 448)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !14, line: 144, size: 448, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !456, !457, !458}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !14, line: 145, baseType: !55, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !14, line: 145, baseType: !45, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !14, line: 145, baseType: !45, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !14, line: 145, baseType: !59, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !14, line: 145, baseType: !45, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !147, file: !14, line: 145, baseType: !45, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !147, file: !14, line: 146, baseType: !45, size: 8, offset: 112)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !147, file: !14, line: 147, baseType: !45, size: 8, offset: 120)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !147, file: !14, line: 148, baseType: !55, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !14, line: 149, baseType: !55, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !14, line: 150, baseType: !96, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !147, file: !14, line: 154, baseType: !161, size: 64, offset: 320)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !14, line: 151, size: 64, elements: !162)
!162 = !{!163, !455}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !161, file: !14, line: 152, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !103, line: 248, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!32, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !170, line: 37, size: 9024, elements: !171)
!170 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !401, !402, !403, !404, !405, !409, !411, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !438, !439, !440, !441, !442, !443, !444, !445, !447, !453}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 38, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !169, file: !170, line: 39, baseType: !45, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !169, file: !170, line: 40, baseType: !45, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !169, file: !170, line: 41, baseType: !59, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !169, file: !170, line: 42, baseType: !45, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !169, file: !170, line: 43, baseType: !45, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !169, file: !170, line: 44, baseType: !45, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !169, file: !170, line: 45, baseType: !122, size: 16, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !169, file: !170, line: 46, baseType: !45, size: 8, offset: 144)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !169, file: !170, line: 47, baseType: !45, size: 8, offset: 152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !169, file: !170, line: 48, baseType: !45, size: 8, offset: 160)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !169, file: !170, line: 49, baseType: !45, size: 8, offset: 168)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !169, file: !170, line: 50, baseType: !45, size: 8, offset: 176)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !169, file: !170, line: 51, baseType: !45, size: 8, offset: 184)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !169, file: !170, line: 52, baseType: !45, size: 8, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !169, file: !170, line: 53, baseType: !45, size: 8, offset: 200)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !169, file: !170, line: 54, baseType: !96, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !169, file: !170, line: 55, baseType: !27, size: 32, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !169, file: !170, line: 56, baseType: !27, size: 32, offset: 352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !169, file: !170, line: 57, baseType: !27, size: 32, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !169, file: !170, line: 58, baseType: !27, size: 32, offset: 416)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !169, file: !170, line: 60, baseType: !194, size: 640, offset: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !103, line: 909, size: 640, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !282, !283, !399, !400}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !194, file: !103, line: 910, baseType: !96, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !194, file: !103, line: 911, baseType: !96, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !194, file: !103, line: 912, baseType: !96, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !194, file: !103, line: 913, baseType: !96, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !194, file: !103, line: 914, baseType: !96, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !194, file: !103, line: 915, baseType: !202, size: 64, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !103, line: 891, size: 1600, elements: !204)
!204 = !{!205, !225, !241}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !203, file: !103, line: 892, baseType: !206, size: 448)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !103, line: 844, size: 448, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !224}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !206, file: !103, line: 845, baseType: !202, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !103, line: 845, baseType: !45, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !103, line: 845, baseType: !45, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !206, file: !103, line: 845, baseType: !59, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !206, file: !103, line: 845, baseType: !96, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !103, line: 845, baseType: !202, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !206, file: !103, line: 845, baseType: !101, size: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !103, line: 845, baseType: !216, size: 64, offset: 320)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !103, line: 732, size: 64, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !216, file: !103, line: 733, baseType: !34, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !216, file: !103, line: 734, baseType: !27, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !216, file: !103, line: 735, baseType: !85, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !216, file: !103, line: 736, baseType: !96, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !103, line: 737, baseType: !85, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !216, file: !103, line: 738, baseType: !202, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !206, file: !103, line: 845, baseType: !45, size: 8, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !203, file: !103, line: 893, baseType: !226, size: 640)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !103, line: 851, size: 640, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !103, line: 852, baseType: !202, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !226, file: !103, line: 852, baseType: !45, size: 8, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !103, line: 852, baseType: !45, size: 8, offset: 72)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !226, file: !103, line: 852, baseType: !59, size: 16, offset: 80)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !226, file: !103, line: 852, baseType: !96, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !103, line: 852, baseType: !202, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !103, line: 852, baseType: !101, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !226, file: !103, line: 852, baseType: !216, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !226, file: !103, line: 852, baseType: !45, size: 8, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !226, file: !103, line: 852, baseType: !85, size: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !226, file: !103, line: 853, baseType: !96, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !226, file: !103, line: 854, baseType: !27, size: 32, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !103, line: 855, baseType: !27, size: 32, offset: 608)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !203, file: !103, line: 894, baseType: !242, size: 1600)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !103, line: 862, size: 1600, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !103, line: 863, baseType: !202, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !242, file: !103, line: 863, baseType: !45, size: 8, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !103, line: 863, baseType: !45, size: 8, offset: 72)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !242, file: !103, line: 863, baseType: !59, size: 16, offset: 80)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !242, file: !103, line: 863, baseType: !96, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !103, line: 863, baseType: !202, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !242, file: !103, line: 863, baseType: !101, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !242, file: !103, line: 863, baseType: !216, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !242, file: !103, line: 863, baseType: !45, size: 8, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !242, file: !103, line: 863, baseType: !202, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !242, file: !103, line: 864, baseType: !202, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !242, file: !103, line: 865, baseType: !85, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !242, file: !103, line: 866, baseType: !45, size: 8, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !242, file: !103, line: 867, baseType: !85, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !242, file: !103, line: 868, baseType: !85, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !242, file: !103, line: 869, baseType: !85, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !242, file: !103, line: 870, baseType: !115, size: 32, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !242, file: !103, line: 871, baseType: !27, size: 32, offset: 928)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !242, file: !103, line: 872, baseType: !27, size: 32, offset: 960)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !242, file: !103, line: 873, baseType: !27, size: 32, offset: 992)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !242, file: !103, line: 874, baseType: !27, size: 32, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !242, file: !103, line: 875, baseType: !27, size: 32, offset: 1056)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !242, file: !103, line: 876, baseType: !27, size: 32, offset: 1088)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !242, file: !103, line: 877, baseType: !27, size: 32, offset: 1120)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !242, file: !103, line: 878, baseType: !27, size: 32, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !242, file: !103, line: 879, baseType: !27, size: 32, offset: 1184)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !242, file: !103, line: 880, baseType: !27, size: 32, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !242, file: !103, line: 881, baseType: !27, size: 32, offset: 1248)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !242, file: !103, line: 882, baseType: !27, size: 32, offset: 1280)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !242, file: !103, line: 883, baseType: !27, size: 32, offset: 1312)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !242, file: !103, line: 884, baseType: !59, size: 16, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !242, file: !103, line: 885, baseType: !45, size: 8, offset: 1360)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !242, file: !103, line: 886, baseType: !45, size: 8, offset: 1368)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !242, file: !103, line: 887, baseType: !45, size: 8, offset: 1376)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !242, file: !103, line: 888, baseType: !279, size: 160, offset: 1384)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 20)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !194, file: !103, line: 916, baseType: !101, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !194, file: !103, line: 917, baseType: !284, size: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !103, line: 679, size: 640, elements: !286)
!286 = !{!287, !295, !308, !317, !326, !339, !353, !365, !377}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !285, file: !103, line: 680, baseType: !288, size: 128)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !103, line: 575, size: 128, elements: !289)
!289 = !{!290, !291, !292, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !103, line: 576, baseType: !31, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !103, line: 576, baseType: !45, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !103, line: 576, baseType: !45, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !103, line: 576, baseType: !59, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !103, line: 576, baseType: !59, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !285, file: !103, line: 681, baseType: !296, size: 384)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !103, line: 604, size: 384, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !103, line: 605, baseType: !31, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !103, line: 605, baseType: !45, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !103, line: 605, baseType: !45, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !103, line: 605, baseType: !59, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !103, line: 605, baseType: !59, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !296, file: !103, line: 606, baseType: !59, size: 16, offset: 112)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !296, file: !103, line: 607, baseType: !202, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !296, file: !103, line: 608, baseType: !96, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !296, file: !103, line: 609, baseType: !96, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !296, file: !103, line: 610, baseType: !34, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !285, file: !103, line: 682, baseType: !309, size: 192)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !103, line: 582, size: 192, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !103, line: 583, baseType: !31, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !103, line: 583, baseType: !45, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !103, line: 583, baseType: !45, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !103, line: 583, baseType: !59, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !309, file: !103, line: 583, baseType: !59, size: 16, offset: 96)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !309, file: !103, line: 584, baseType: !55, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !285, file: !103, line: 683, baseType: !318, size: 192)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !103, line: 616, size: 192, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !103, line: 617, baseType: !31, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !103, line: 617, baseType: !45, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !103, line: 617, baseType: !45, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !103, line: 617, baseType: !59, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !318, file: !103, line: 617, baseType: !59, size: 16, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !318, file: !103, line: 618, baseType: !101, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !285, file: !103, line: 684, baseType: !327, size: 448)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !103, line: 621, size: 448, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !103, line: 622, baseType: !31, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !103, line: 622, baseType: !45, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !103, line: 622, baseType: !45, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !103, line: 622, baseType: !59, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !103, line: 622, baseType: !59, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !327, file: !103, line: 623, baseType: !27, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !327, file: !103, line: 624, baseType: !202, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !327, file: !103, line: 625, baseType: !96, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !327, file: !103, line: 626, baseType: !96, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !327, file: !103, line: 627, baseType: !27, size: 32, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !285, file: !103, line: 685, baseType: !340, size: 512)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !103, line: 590, size: 512, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !103, line: 591, baseType: !31, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !103, line: 591, baseType: !45, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !103, line: 591, baseType: !45, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !103, line: 591, baseType: !59, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !103, line: 591, baseType: !59, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !340, file: !103, line: 592, baseType: !27, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !340, file: !103, line: 593, baseType: !55, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !340, file: !103, line: 594, baseType: !55, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !340, file: !103, line: 595, baseType: !168, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !340, file: !103, line: 596, baseType: !31, size: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !340, file: !103, line: 597, baseType: !27, size: 32, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !285, file: !103, line: 686, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !103, line: 634, size: 320, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !103, line: 635, baseType: !31, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !103, line: 635, baseType: !45, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !103, line: 635, baseType: !45, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !103, line: 635, baseType: !59, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !103, line: 635, baseType: !59, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !354, file: !103, line: 636, baseType: !45, size: 8, offset: 112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !354, file: !103, line: 637, baseType: !168, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !354, file: !103, line: 638, baseType: !55, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !354, file: !103, line: 639, baseType: !34, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !285, file: !103, line: 687, baseType: !366, size: 640)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !103, line: 646, size: 640, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !103, line: 647, baseType: !31, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !103, line: 647, baseType: !45, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !103, line: 647, baseType: !45, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !103, line: 647, baseType: !59, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !103, line: 647, baseType: !59, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !366, file: !103, line: 648, baseType: !374, size: 512, offset: 128)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 512, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !285, file: !103, line: 688, baseType: !378, size: 320)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !103, line: 669, size: 320, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !103, line: 670, baseType: !31, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !103, line: 670, baseType: !45, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !103, line: 670, baseType: !45, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !378, file: !103, line: 670, baseType: !59, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !378, file: !103, line: 670, baseType: !59, size: 16, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !378, file: !103, line: 671, baseType: !45, size: 8, offset: 112)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !378, file: !103, line: 672, baseType: !101, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !378, file: !103, line: 673, baseType: !55, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !378, file: !103, line: 674, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !103, line: 660, size: 128, elements: !391)
!391 = !{!392, !398}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !390, file: !103, line: 661, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !33, line: 1061, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397, !27, !31}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !33, line: 424, baseType: !31)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !390, file: !103, line: 662, baseType: !31, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !194, file: !103, line: 918, baseType: !202, size: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !194, file: !103, line: 919, baseType: !27, size: 32, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !169, file: !170, line: 61, baseType: !27, size: 32, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !169, file: !170, line: 62, baseType: !27, size: 32, offset: 1120)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !169, file: !170, line: 63, baseType: !59, size: 16, offset: 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !169, file: !170, line: 64, baseType: !45, size: 8, offset: 1168)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !169, file: !170, line: 66, baseType: !406, size: 2688, offset: 1216)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 2688, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 7)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !169, file: !170, line: 67, baseType: !410, size: 3072, offset: 3904)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 3072, elements: !375)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !169, file: !170, line: 68, baseType: !412, size: 576, offset: 6976)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 576, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 9)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !169, file: !170, line: 69, baseType: !133, size: 64, offset: 7552)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !169, file: !170, line: 71, baseType: !96, size: 64, offset: 7616)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !169, file: !170, line: 72, baseType: !133, size: 64, offset: 7680)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !169, file: !170, line: 73, baseType: !284, size: 64, offset: 7744)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !169, file: !170, line: 74, baseType: !101, size: 64, offset: 7808)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !169, file: !170, line: 75, baseType: !55, size: 64, offset: 7872)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !169, file: !170, line: 76, baseType: !101, size: 64, offset: 7936)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !169, file: !170, line: 77, baseType: !202, size: 64, offset: 8000)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !169, file: !170, line: 78, baseType: !55, size: 64, offset: 8064)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !169, file: !170, line: 79, baseType: !101, size: 64, offset: 8128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !169, file: !170, line: 80, baseType: !85, size: 64, offset: 8192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !169, file: !170, line: 81, baseType: !202, size: 64, offset: 8256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !169, file: !170, line: 82, baseType: !428, size: 64, offset: 8320)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !103, line: 718, size: 128, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !430, file: !103, line: 722, baseType: !27, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !430, file: !103, line: 723, baseType: !27, size: 32, offset: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !103, line: 724, baseType: !59, size: 16, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !430, file: !103, line: 725, baseType: !45, size: 8, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !430, file: !103, line: 726, baseType: !45, size: 8, offset: 88)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !103, line: 727, baseType: !45, size: 8, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !169, file: !170, line: 83, baseType: !202, size: 64, offset: 8384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !169, file: !170, line: 84, baseType: !55, size: 64, offset: 8448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !169, file: !170, line: 85, baseType: !284, size: 64, offset: 8512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !169, file: !170, line: 86, baseType: !55, size: 64, offset: 8576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !169, file: !170, line: 87, baseType: !284, size: 64, offset: 8640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !169, file: !170, line: 88, baseType: !202, size: 64, offset: 8704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !169, file: !170, line: 89, baseType: !202, size: 64, offset: 8768)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !169, file: !170, line: 90, baseType: !446, size: 64, offset: 8832)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !169, file: !170, line: 91, baseType: !448, size: 64, offset: 8896)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !103, line: 652, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!32, !168, !452}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !169, file: !170, line: 92, baseType: !454, size: 64, offset: 8960)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !103, line: 656, baseType: !165)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !161, file: !14, line: 153, baseType: !55, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !14, line: 156, baseType: !27, size: 32, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !14, line: 157, baseType: !122, size: 16, offset: 416)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !147, file: !14, line: 158, baseType: !45, size: 8, offset: 432)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !49, file: !14, line: 377, baseType: !460, size: 576)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !14, line: 122, size: 576, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !460, file: !14, line: 123, baseType: !55, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !460, file: !14, line: 123, baseType: !45, size: 8, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !460, file: !14, line: 123, baseType: !45, size: 8, offset: 72)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !460, file: !14, line: 123, baseType: !59, size: 16, offset: 80)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !460, file: !14, line: 123, baseType: !45, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !460, file: !14, line: 123, baseType: !45, size: 8, offset: 104)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !460, file: !14, line: 124, baseType: !59, size: 16, offset: 112)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !460, file: !14, line: 125, baseType: !31, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !460, file: !14, line: 126, baseType: !34, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !460, file: !14, line: 127, baseType: !446, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !460, file: !14, line: 128, baseType: !55, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !14, line: 129, baseType: !55, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !14, line: 130, baseType: !101, size: 64, offset: 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !460, file: !14, line: 131, baseType: !45, size: 8, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !49, file: !14, line: 378, baseType: !477, size: 512)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !14, line: 134, size: 512, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !490, !491}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !477, file: !14, line: 135, baseType: !55, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !477, file: !14, line: 135, baseType: !45, size: 8, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !477, file: !14, line: 135, baseType: !45, size: 8, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !477, file: !14, line: 135, baseType: !59, size: 16, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !14, line: 135, baseType: !45, size: 8, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !477, file: !14, line: 135, baseType: !45, size: 8, offset: 104)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !14, line: 136, baseType: !101, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !477, file: !14, line: 137, baseType: !55, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !14, line: 138, baseType: !55, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !477, file: !14, line: 139, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !33, line: 129, baseType: !34)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !477, file: !14, line: 140, baseType: !27, size: 32, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !477, file: !14, line: 141, baseType: !31, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !49, file: !14, line: 379, baseType: !493, size: 320)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !14, line: 185, size: 320, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !504}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !493, file: !14, line: 186, baseType: !55, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !493, file: !14, line: 186, baseType: !45, size: 8, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !493, file: !14, line: 186, baseType: !45, size: 8, offset: 72)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !493, file: !14, line: 186, baseType: !59, size: 16, offset: 80)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !14, line: 186, baseType: !45, size: 8, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !493, file: !14, line: 186, baseType: !501, size: 128, offset: 128)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 2)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !14, line: 186, baseType: !55, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !49, file: !14, line: 380, baseType: !506, size: 384)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !14, line: 188, size: 384, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !506, file: !14, line: 189, baseType: !55, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !506, file: !14, line: 189, baseType: !45, size: 8, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !14, line: 189, baseType: !45, size: 8, offset: 72)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !506, file: !14, line: 189, baseType: !59, size: 16, offset: 80)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !14, line: 189, baseType: !45, size: 8, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !506, file: !14, line: 190, baseType: !501, size: 128, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !506, file: !14, line: 190, baseType: !55, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !506, file: !14, line: 190, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !103, line: 480, size: 576, elements: !518)
!518 = !{!519, !520, !521, !522, !530, !545, !577, !578, !579, !580, !581, !582}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !517, file: !103, line: 481, baseType: !101, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !517, file: !103, line: 482, baseType: !516, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !103, line: 483, baseType: !516, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !517, file: !103, line: 484, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !103, line: 497, size: 256, elements: !525)
!525 = !{!526, !527, !528, !529}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !524, file: !103, line: 498, baseType: !523, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !103, line: 499, baseType: !523, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !524, file: !103, line: 500, baseType: !516, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !524, file: !103, line: 501, baseType: !27, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !517, file: !103, line: 485, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !103, line: 466, size: 320, elements: !533)
!533 = !{!534, !539, !540, !541, !542, !543, !544}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !532, file: !103, line: 467, baseType: !535, size: 128)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !103, line: 459, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !535, file: !103, line: 460, baseType: !45, size: 8)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !535, file: !103, line: 461, baseType: !34, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !532, file: !103, line: 468, baseType: !535, size: 128, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !532, file: !103, line: 469, baseType: !59, size: 16, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !532, file: !103, line: 470, baseType: !45, size: 8, offset: 272)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !532, file: !103, line: 471, baseType: !45, size: 8, offset: 280)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !532, file: !103, line: 472, baseType: !45, size: 8, offset: 288)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !532, file: !103, line: 473, baseType: !45, size: 8, offset: 296)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !517, file: !103, line: 486, baseType: !546, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !103, line: 448, size: 192, elements: !548)
!548 = !{!549, !572, !573, !574, !575, !576}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !547, file: !103, line: 449, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !103, line: 438, size: 64, elements: !551)
!551 = !{!552, !553, !566}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !550, file: !103, line: 439, baseType: !101, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !550, file: !103, line: 440, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !103, line: 419, size: 256, elements: !556)
!556 = !{!557, !562, !563, !564, !565}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !555, file: !103, line: 420, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !33, line: 1058, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!27, !397, !27, !31}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !555, file: !103, line: 421, baseType: !31, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !555, file: !103, line: 422, baseType: !101, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !555, file: !103, line: 423, baseType: !45, size: 8, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !555, file: !103, line: 424, baseType: !45, size: 8, offset: 200)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !550, file: !103, line: 441, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !103, line: 429, size: 128, elements: !569)
!569 = !{!570, !571}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !568, file: !103, line: 430, baseType: !101, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !568, file: !103, line: 431, baseType: !567, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !547, file: !103, line: 450, baseType: !531, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !103, line: 451, baseType: !45, size: 8, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !547, file: !103, line: 452, baseType: !45, size: 8, offset: 136)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !547, file: !103, line: 453, baseType: !45, size: 8, offset: 144)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !547, file: !103, line: 454, baseType: !45, size: 8, offset: 152)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !517, file: !103, line: 487, baseType: !34, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !517, file: !103, line: 488, baseType: !27, size: 32, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !517, file: !103, line: 489, baseType: !59, size: 16, offset: 480)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !517, file: !103, line: 490, baseType: !59, size: 16, offset: 496)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !517, file: !103, line: 491, baseType: !45, size: 8, offset: 512)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !517, file: !103, line: 492, baseType: !45, size: 8, offset: 520)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !49, file: !14, line: 381, baseType: !584, size: 384)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !14, line: 193, size: 384, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !14, line: 194, baseType: !55, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !14, line: 194, baseType: !45, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !14, line: 194, baseType: !45, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !14, line: 194, baseType: !59, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !14, line: 194, baseType: !45, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !14, line: 194, baseType: !501, size: 128, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !14, line: 194, baseType: !55, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !584, file: !14, line: 194, baseType: !27, size: 32, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !584, file: !14, line: 195, baseType: !27, size: 32, offset: 352)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !49, file: !14, line: 382, baseType: !596, size: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !14, line: 198, size: 384, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !596, file: !14, line: 199, baseType: !55, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !14, line: 199, baseType: !45, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !14, line: 199, baseType: !45, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !596, file: !14, line: 199, baseType: !59, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !14, line: 199, baseType: !45, size: 8, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !596, file: !14, line: 201, baseType: !45, size: 8, offset: 104)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !596, file: !14, line: 202, baseType: !45, size: 8, offset: 112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !596, file: !14, line: 203, baseType: !501, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !596, file: !14, line: 203, baseType: !55, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !596, file: !14, line: 203, baseType: !608, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !33, line: 128, baseType: !34)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !49, file: !14, line: 383, baseType: !610, size: 320)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !14, line: 206, size: 320, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !610, file: !14, line: 207, baseType: !55, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !14, line: 207, baseType: !45, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !14, line: 207, baseType: !45, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !610, file: !14, line: 207, baseType: !59, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !14, line: 207, baseType: !45, size: 8, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !610, file: !14, line: 207, baseType: !501, size: 128, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !610, file: !14, line: 207, baseType: !55, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !49, file: !14, line: 384, baseType: !620, size: 384)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !14, line: 234, size: 384, elements: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !620, file: !14, line: 235, baseType: !55, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !620, file: !14, line: 235, baseType: !45, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !620, file: !14, line: 235, baseType: !45, size: 8, offset: 72)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !620, file: !14, line: 235, baseType: !59, size: 16, offset: 80)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !14, line: 235, baseType: !45, size: 8, offset: 96)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !620, file: !14, line: 235, baseType: !45, size: 8, offset: 104)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !620, file: !14, line: 235, baseType: !45, size: 8, offset: 112)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !620, file: !14, line: 235, baseType: !45, size: 8, offset: 120)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !620, file: !14, line: 235, baseType: !101, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !620, file: !14, line: 235, baseType: !27, size: 32, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !620, file: !14, line: 235, baseType: !27, size: 32, offset: 224)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !620, file: !14, line: 235, baseType: !27, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !620, file: !14, line: 235, baseType: !45, size: 8, offset: 288)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !620, file: !14, line: 235, baseType: !45, size: 8, offset: 296)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !620, file: !14, line: 235, baseType: !55, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !49, file: !14, line: 385, baseType: !638, size: 576)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !14, line: 238, size: 576, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !14, line: 239, baseType: !55, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !14, line: 239, baseType: !45, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !14, line: 239, baseType: !45, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !14, line: 239, baseType: !59, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !14, line: 239, baseType: !45, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !638, file: !14, line: 239, baseType: !45, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !638, file: !14, line: 239, baseType: !45, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !638, file: !14, line: 239, baseType: !45, size: 8, offset: 120)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !14, line: 239, baseType: !101, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !638, file: !14, line: 239, baseType: !27, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !638, file: !14, line: 239, baseType: !27, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !638, file: !14, line: 239, baseType: !27, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !638, file: !14, line: 239, baseType: !45, size: 8, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !638, file: !14, line: 239, baseType: !45, size: 8, offset: 296)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !638, file: !14, line: 239, baseType: !59, size: 16, offset: 304)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !638, file: !14, line: 240, baseType: !55, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !638, file: !14, line: 241, baseType: !96, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !638, file: !14, line: 242, baseType: !59, size: 16, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !638, file: !14, line: 243, baseType: !96, size: 64, offset: 512)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !49, file: !14, line: 386, baseType: !660, size: 384)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !14, line: 263, size: 384, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !14, line: 264, baseType: !55, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !14, line: 264, baseType: !45, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !14, line: 264, baseType: !45, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !14, line: 264, baseType: !59, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !14, line: 264, baseType: !45, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !660, file: !14, line: 264, baseType: !45, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !660, file: !14, line: 264, baseType: !45, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !660, file: !14, line: 264, baseType: !45, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !14, line: 264, baseType: !101, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !660, file: !14, line: 264, baseType: !27, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !660, file: !14, line: 264, baseType: !27, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !14, line: 264, baseType: !27, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !660, file: !14, line: 264, baseType: !45, size: 8, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !660, file: !14, line: 264, baseType: !45, size: 8, offset: 296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !660, file: !14, line: 264, baseType: !45, size: 8, offset: 304)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !660, file: !14, line: 265, baseType: !55, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !49, file: !14, line: 387, baseType: !679, size: 448)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !14, line: 246, size: 448, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !679, file: !14, line: 247, baseType: !55, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !14, line: 247, baseType: !45, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !14, line: 247, baseType: !45, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !679, file: !14, line: 247, baseType: !59, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !14, line: 247, baseType: !45, size: 8, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !679, file: !14, line: 247, baseType: !45, size: 8, offset: 104)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !679, file: !14, line: 247, baseType: !45, size: 8, offset: 112)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !679, file: !14, line: 247, baseType: !45, size: 8, offset: 120)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !14, line: 247, baseType: !101, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !679, file: !14, line: 247, baseType: !27, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !679, file: !14, line: 247, baseType: !27, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !679, file: !14, line: 247, baseType: !27, size: 32, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !679, file: !14, line: 247, baseType: !45, size: 8, offset: 288)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !679, file: !14, line: 247, baseType: !45, size: 8, offset: 296)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !679, file: !14, line: 247, baseType: !55, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !679, file: !14, line: 248, baseType: !55, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !49, file: !14, line: 388, baseType: !698, size: 448)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !14, line: 251, size: 448, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !698, file: !14, line: 252, baseType: !55, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !14, line: 252, baseType: !45, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !14, line: 252, baseType: !45, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !698, file: !14, line: 252, baseType: !59, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !14, line: 252, baseType: !45, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !698, file: !14, line: 252, baseType: !45, size: 8, offset: 104)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !698, file: !14, line: 252, baseType: !45, size: 8, offset: 112)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !698, file: !14, line: 252, baseType: !45, size: 8, offset: 120)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !14, line: 252, baseType: !101, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !698, file: !14, line: 252, baseType: !27, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !698, file: !14, line: 252, baseType: !27, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !698, file: !14, line: 252, baseType: !27, size: 32, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !698, file: !14, line: 252, baseType: !45, size: 8, offset: 288)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !698, file: !14, line: 252, baseType: !45, size: 8, offset: 296)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !698, file: !14, line: 257, baseType: !55, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !698, file: !14, line: 258, baseType: !55, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !49, file: !14, line: 389, baseType: !717, size: 512)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !14, line: 274, size: 512, elements: !718)
!718 = !{!719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !717, file: !14, line: 275, baseType: !55, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !717, file: !14, line: 275, baseType: !45, size: 8, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !14, line: 275, baseType: !45, size: 8, offset: 72)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !717, file: !14, line: 275, baseType: !59, size: 16, offset: 80)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !14, line: 275, baseType: !45, size: 8, offset: 96)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !717, file: !14, line: 275, baseType: !101, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !717, file: !14, line: 276, baseType: !27, size: 32, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !717, file: !14, line: 277, baseType: !393, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !717, file: !14, line: 278, baseType: !31, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !717, file: !14, line: 279, baseType: !501, size: 128, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !49, file: !14, line: 390, baseType: !730, size: 576)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !14, line: 282, size: 576, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !745, !746, !747, !748, !754, !755}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !730, file: !14, line: 283, baseType: !55, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !14, line: 283, baseType: !45, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !14, line: 283, baseType: !45, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !730, file: !14, line: 283, baseType: !59, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !14, line: 283, baseType: !45, size: 8, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !730, file: !14, line: 283, baseType: !45, size: 8, offset: 104)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !730, file: !14, line: 284, baseType: !45, size: 8, offset: 112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !730, file: !14, line: 285, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !33, line: 1093, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!32, !27, !489, !27, !744, !31, !31}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !14, line: 286, baseType: !101, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !730, file: !14, line: 287, baseType: !31, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !730, file: !14, line: 288, baseType: !31, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !730, file: !14, line: 289, baseType: !749, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !33, line: 1126, baseType: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!32, !397, !27, !31, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !730, file: !14, line: 290, baseType: !55, size: 64, offset: 448)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !14, line: 291, baseType: !55, size: 64, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !49, file: !14, line: 391, baseType: !757, size: 512)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !14, line: 309, size: 512, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !757, file: !14, line: 310, baseType: !55, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !14, line: 310, baseType: !45, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !14, line: 310, baseType: !45, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !757, file: !14, line: 310, baseType: !59, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !14, line: 310, baseType: !45, size: 8, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !757, file: !14, line: 310, baseType: !45, size: 8, offset: 104)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !757, file: !14, line: 311, baseType: !45, size: 8, offset: 112)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !757, file: !14, line: 312, baseType: !45, size: 8, offset: 120)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !757, file: !14, line: 313, baseType: !31, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !757, file: !14, line: 314, baseType: !101, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !757, file: !14, line: 315, baseType: !133, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !757, file: !14, line: 316, baseType: !96, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !757, file: !14, line: 317, baseType: !96, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !757, file: !14, line: 318, baseType: !27, size: 32, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !49, file: !14, line: 392, baseType: !774, size: 448)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !14, line: 342, size: 448, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !14, line: 343, baseType: !55, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !14, line: 343, baseType: !45, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !14, line: 343, baseType: !45, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !14, line: 343, baseType: !59, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !14, line: 343, baseType: !45, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !774, file: !14, line: 343, baseType: !101, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !774, file: !14, line: 344, baseType: !101, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !774, file: !14, line: 345, baseType: !31, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !774, file: !14, line: 346, baseType: !96, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !774, file: !14, line: 347, baseType: !27, size: 32, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !49, file: !14, line: 393, baseType: !787, size: 256)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !14, line: 352, size: 256, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794, !799}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !787, file: !14, line: 353, baseType: !55, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !787, file: !14, line: 353, baseType: !45, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !14, line: 353, baseType: !45, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !787, file: !14, line: 353, baseType: !59, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !14, line: 353, baseType: !45, size: 8, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !787, file: !14, line: 353, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !33, line: 1064, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !397, !31}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !787, file: !14, line: 354, baseType: !31, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !49, file: !14, line: 394, baseType: !801, size: 192)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !14, line: 359, size: 192, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !808}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !801, file: !14, line: 360, baseType: !55, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !801, file: !14, line: 360, baseType: !45, size: 8, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !801, file: !14, line: 360, baseType: !45, size: 8, offset: 72)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !801, file: !14, line: 360, baseType: !59, size: 16, offset: 80)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !14, line: 360, baseType: !45, size: 8, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !14, line: 360, baseType: !55, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !49, file: !14, line: 401, baseType: !102, size: 384)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !38, file: !14, line: 437, baseType: !102, size: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !38, file: !14, line: 438, baseType: !203, size: 1600)
!812 = !{!0, !7, !813, !818, !823, !828, !833, !835, !9}
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !815, isLocal: true, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 35)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 33)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !2, line: 254, type: !825, isLocal: true, isDefinition: true)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 19)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !2, line: 347, type: !830, isLocal: true, isDefinition: true)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 31)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !2, line: 390, type: !820, isLocal: true, isDefinition: true)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 29)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 72, elements: !413)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!842 = !{i32 7, !"Dwarf Version", i32 5}
!843 = !{i32 2, !"Debug Info Version", i32 3}
!844 = !{i32 1, !"wchar_size", i32 2}
!845 = !{i32 8, !"cf-protection-branch", i32 1}
!846 = !{i32 4, !"function_return_thunk_extern", i32 1}
!847 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!848 = !{i32 1, !"Code Model", i32 2}
!849 = !{i32 1, !"override-stack-alignment", i32 8}
!850 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!851 = distinct !DISubprogram(name: "acpi_ds_method_data_init", scope: !2, file: !2, line: 55, type: !852, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !168}
!854 = !{!855, !856}
!855 = !DILocalVariable(name: "walk_state", arg: 1, scope: !851, file: !2, line: 55, type: !168)
!856 = !DILocalVariable(name: "i", scope: !851, file: !2, line: 57, type: !27)
!857 = !DILocation(line: 55, column: 55, scope: !851)
!858 = !DILocation(line: 57, column: 2, scope: !851)
!859 = !DILocation(line: 57, column: 6, scope: !851)
!860 = !DILocation(line: 63, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !851, file: !2, line: 63, column: 2)
!862 = !DILocation(line: 63, column: 7, scope: !861)
!863 = !DILocation(line: 63, column: 14, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !2, line: 63, column: 2)
!865 = !DILocation(line: 63, column: 16, scope: !864)
!866 = !DILocation(line: 63, column: 2, scope: !861)
!867 = !DILocation(line: 64, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !2, line: 63, column: 45)
!869 = !DILocation(line: 67, column: 45, scope: !868)
!870 = !DILocation(line: 67, column: 47, scope: !868)
!871 = !DILocation(line: 67, column: 3, scope: !868)
!872 = !DILocation(line: 67, column: 15, scope: !868)
!873 = !DILocation(line: 67, column: 25, scope: !868)
!874 = !DILocation(line: 67, column: 28, scope: !868)
!875 = !DILocation(line: 67, column: 41, scope: !868)
!876 = !DILocation(line: 68, column: 3, scope: !868)
!877 = !DILocation(line: 68, column: 15, scope: !868)
!878 = !DILocation(line: 68, column: 25, scope: !868)
!879 = !DILocation(line: 68, column: 28, scope: !868)
!880 = !DILocation(line: 68, column: 44, scope: !868)
!881 = !DILocation(line: 69, column: 3, scope: !868)
!882 = !DILocation(line: 69, column: 15, scope: !868)
!883 = !DILocation(line: 69, column: 25, scope: !868)
!884 = !DILocation(line: 69, column: 28, scope: !868)
!885 = !DILocation(line: 69, column: 33, scope: !868)
!886 = !DILocation(line: 70, column: 3, scope: !868)
!887 = !DILocation(line: 70, column: 15, scope: !868)
!888 = !DILocation(line: 70, column: 25, scope: !868)
!889 = !DILocation(line: 70, column: 28, scope: !868)
!890 = !DILocation(line: 70, column: 34, scope: !868)
!891 = !DILocation(line: 71, column: 2, scope: !868)
!892 = !DILocation(line: 63, column: 41, scope: !864)
!893 = !DILocation(line: 63, column: 2, scope: !864)
!894 = distinct !{!894, !866, !895, !896, !897}
!895 = !DILocation(line: 71, column: 2, scope: !861)
!896 = !{!"llvm.loop.mustprogress"}
!897 = !{!"llvm.loop.unroll.disable"}
!898 = !DILocation(line: 75, column: 9, scope: !899)
!899 = distinct !DILexicalBlock(scope: !851, file: !2, line: 75, column: 2)
!900 = !DILocation(line: 75, column: 7, scope: !899)
!901 = !DILocation(line: 75, column: 14, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !2, line: 75, column: 2)
!903 = !DILocation(line: 75, column: 16, scope: !902)
!904 = !DILocation(line: 75, column: 2, scope: !899)
!905 = !DILocation(line: 76, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !2, line: 75, column: 47)
!907 = !DILocation(line: 79, column: 51, scope: !906)
!908 = !DILocation(line: 79, column: 53, scope: !906)
!909 = !DILocation(line: 79, column: 3, scope: !906)
!910 = !DILocation(line: 79, column: 15, scope: !906)
!911 = !DILocation(line: 79, column: 31, scope: !906)
!912 = !DILocation(line: 79, column: 34, scope: !906)
!913 = !DILocation(line: 79, column: 47, scope: !906)
!914 = !DILocation(line: 80, column: 3, scope: !906)
!915 = !DILocation(line: 80, column: 15, scope: !906)
!916 = !DILocation(line: 80, column: 31, scope: !906)
!917 = !DILocation(line: 80, column: 34, scope: !906)
!918 = !DILocation(line: 80, column: 50, scope: !906)
!919 = !DILocation(line: 82, column: 3, scope: !906)
!920 = !DILocation(line: 82, column: 15, scope: !906)
!921 = !DILocation(line: 82, column: 31, scope: !906)
!922 = !DILocation(line: 82, column: 34, scope: !906)
!923 = !DILocation(line: 82, column: 39, scope: !906)
!924 = !DILocation(line: 83, column: 3, scope: !906)
!925 = !DILocation(line: 83, column: 15, scope: !906)
!926 = !DILocation(line: 83, column: 31, scope: !906)
!927 = !DILocation(line: 83, column: 34, scope: !906)
!928 = !DILocation(line: 83, column: 40, scope: !906)
!929 = !DILocation(line: 84, column: 2, scope: !906)
!930 = !DILocation(line: 75, column: 43, scope: !902)
!931 = !DILocation(line: 75, column: 2, scope: !902)
!932 = distinct !{!932, !904, !933, !896, !897}
!933 = !DILocation(line: 84, column: 2, scope: !899)
!934 = !DILocation(line: 87, column: 1, scope: !851)
!935 = distinct !DISubprogram(name: "acpi_ds_method_data_delete_all", scope: !2, file: !2, line: 102, type: !852, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !936)
!936 = !{!937, !938}
!937 = !DILocalVariable(name: "walk_state", arg: 1, scope: !935, file: !2, line: 102, type: !168)
!938 = !DILocalVariable(name: "index", scope: !935, file: !2, line: 104, type: !27)
!939 = !DILocation(line: 102, column: 61, scope: !935)
!940 = !DILocation(line: 104, column: 2, scope: !935)
!941 = !DILocation(line: 104, column: 6, scope: !935)
!942 = !DILocation(line: 110, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !935, file: !2, line: 110, column: 2)
!944 = !DILocation(line: 110, column: 7, scope: !943)
!945 = !DILocation(line: 110, column: 18, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !2, line: 110, column: 2)
!947 = !DILocation(line: 110, column: 24, scope: !946)
!948 = !DILocation(line: 110, column: 2, scope: !943)
!949 = !DILocation(line: 111, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !2, line: 111, column: 7)
!951 = distinct !DILexicalBlock(scope: !946, file: !2, line: 110, column: 59)
!952 = !DILocation(line: 111, column: 19, scope: !950)
!953 = !DILocation(line: 111, column: 35, scope: !950)
!954 = !DILocation(line: 111, column: 42, scope: !950)
!955 = !DILocation(line: 111, column: 7, scope: !951)
!956 = !DILocation(line: 119, column: 27, scope: !957)
!957 = distinct !DILexicalBlock(scope: !950, file: !2, line: 111, column: 50)
!958 = !DILocation(line: 120, column: 12, scope: !957)
!959 = !DILocation(line: 120, column: 28, scope: !957)
!960 = !DILocation(line: 119, column: 4, scope: !957)
!961 = !DILocation(line: 121, column: 3, scope: !957)
!962 = !DILocation(line: 122, column: 2, scope: !951)
!963 = !DILocation(line: 110, column: 55, scope: !946)
!964 = !DILocation(line: 110, column: 2, scope: !946)
!965 = distinct !{!965, !948, !966, !896, !897}
!966 = !DILocation(line: 122, column: 2, scope: !943)
!967 = !DILocation(line: 126, column: 13, scope: !968)
!968 = distinct !DILexicalBlock(scope: !935, file: !2, line: 126, column: 2)
!969 = !DILocation(line: 126, column: 7, scope: !968)
!970 = !DILocation(line: 126, column: 18, scope: !971)
!971 = distinct !DILexicalBlock(scope: !968, file: !2, line: 126, column: 2)
!972 = !DILocation(line: 126, column: 24, scope: !971)
!973 = !DILocation(line: 126, column: 2, scope: !968)
!974 = !DILocation(line: 127, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !2, line: 127, column: 7)
!976 = distinct !DILexicalBlock(scope: !971, file: !2, line: 126, column: 57)
!977 = !DILocation(line: 127, column: 19, scope: !975)
!978 = !DILocation(line: 127, column: 29, scope: !975)
!979 = !DILocation(line: 127, column: 36, scope: !975)
!980 = !DILocation(line: 127, column: 7, scope: !976)
!981 = !DILocation(line: 134, column: 27, scope: !982)
!982 = distinct !DILexicalBlock(scope: !975, file: !2, line: 127, column: 44)
!983 = !DILocation(line: 134, column: 39, scope: !982)
!984 = !DILocation(line: 134, column: 49, scope: !982)
!985 = !DILocation(line: 134, column: 4, scope: !982)
!986 = !DILocation(line: 135, column: 3, scope: !982)
!987 = !DILocation(line: 136, column: 2, scope: !976)
!988 = !DILocation(line: 126, column: 53, scope: !971)
!989 = !DILocation(line: 126, column: 2, scope: !971)
!990 = distinct !{!990, !973, !991, !896, !897}
!991 = !DILocation(line: 136, column: 2, scope: !968)
!992 = !DILocation(line: 139, column: 1, scope: !935)
!993 = !DISubprogram(name: "acpi_ns_detach_object", scope: !994, file: !994, line: 140, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!995 = !DISubroutineType(types: !996)
!996 = !{null, !101}
!997 = distinct !DISubprogram(name: "acpi_ds_method_data_init_args", scope: !2, file: !2, line: 158, type: !998, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{!32, !133, !27, !168}
!1000 = !{!1001, !1002, !1003, !1004, !1005}
!1001 = !DILocalVariable(name: "params", arg: 1, scope: !997, file: !2, line: 158, type: !133)
!1002 = !DILocalVariable(name: "max_param_count", arg: 2, scope: !997, file: !2, line: 159, type: !27)
!1003 = !DILocalVariable(name: "walk_state", arg: 3, scope: !997, file: !2, line: 160, type: !168)
!1004 = !DILocalVariable(name: "status", scope: !997, file: !2, line: 162, type: !32)
!1005 = !DILocalVariable(name: "index", scope: !997, file: !2, line: 163, type: !27)
!1006 = !DILocation(line: 158, column: 59, scope: !997)
!1007 = !DILocation(line: 159, column: 14, scope: !997)
!1008 = !DILocation(line: 160, column: 34, scope: !997)
!1009 = !DILocation(line: 162, column: 2, scope: !997)
!1010 = !DILocation(line: 162, column: 14, scope: !997)
!1011 = !DILocation(line: 163, column: 2, scope: !997)
!1012 = !DILocation(line: 163, column: 6, scope: !997)
!1013 = !DILocation(line: 167, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !997, file: !2, line: 167, column: 6)
!1015 = !DILocation(line: 167, column: 6, scope: !997)
!1016 = !DILocation(line: 170, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 167, column: 15)
!1018 = !DILocation(line: 175, column: 2, scope: !997)
!1019 = !DILocation(line: 175, column: 10, scope: !997)
!1020 = !DILocation(line: 175, column: 16, scope: !997)
!1021 = !DILocation(line: 175, column: 40, scope: !997)
!1022 = !DILocation(line: 176, column: 10, scope: !997)
!1023 = !DILocation(line: 176, column: 18, scope: !997)
!1024 = !DILocation(line: 176, column: 16, scope: !997)
!1025 = !DILocation(line: 176, column: 35, scope: !997)
!1026 = !DILocation(line: 176, column: 38, scope: !997)
!1027 = !DILocation(line: 176, column: 45, scope: !997)
!1028 = !DILocation(line: 0, scope: !997)
!1029 = !DILocation(line: 183, column: 56, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !997, file: !2, line: 176, column: 53)
!1031 = !DILocation(line: 184, column: 9, scope: !1030)
!1032 = !DILocation(line: 184, column: 16, scope: !1030)
!1033 = !DILocation(line: 184, column: 24, scope: !1030)
!1034 = !DILocation(line: 183, column: 7, scope: !1030)
!1035 = !DILocation(line: 182, column: 10, scope: !1030)
!1036 = !DILocation(line: 185, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 185, column: 7)
!1038 = !DILocation(line: 185, column: 7, scope: !1030)
!1039 = !DILocation(line: 186, column: 4, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 185, column: 29)
!1041 = !DILocation(line: 189, column: 8, scope: !1030)
!1042 = distinct !{!1042, !1018, !1043, !896, !897}
!1043 = !DILocation(line: 190, column: 2, scope: !997)
!1044 = !DILocation(line: 193, column: 2, scope: !997)
!1045 = !DILocation(line: 194, column: 1, scope: !997)
!1046 = distinct !DISubprogram(name: "acpi_ds_method_data_set_value", scope: !2, file: !2, line: 279, type: !1047, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!32, !45, !27, !55, !168}
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055}
!1050 = !DILocalVariable(name: "type", arg: 1, scope: !1046, file: !2, line: 279, type: !45)
!1051 = !DILocalVariable(name: "index", arg: 2, scope: !1046, file: !2, line: 280, type: !27)
!1052 = !DILocalVariable(name: "object", arg: 3, scope: !1046, file: !2, line: 281, type: !55)
!1053 = !DILocalVariable(name: "walk_state", arg: 4, scope: !1046, file: !2, line: 282, type: !168)
!1054 = !DILocalVariable(name: "status", scope: !1046, file: !2, line: 284, type: !32)
!1055 = !DILocalVariable(name: "node", scope: !1046, file: !2, line: 285, type: !101)
!1056 = !DILocation(line: 279, column: 34, scope: !1046)
!1057 = !DILocation(line: 280, column: 14, scope: !1046)
!1058 = !DILocation(line: 281, column: 37, scope: !1046)
!1059 = !DILocation(line: 282, column: 34, scope: !1046)
!1060 = !DILocation(line: 284, column: 2, scope: !1046)
!1061 = !DILocation(line: 284, column: 14, scope: !1046)
!1062 = !DILocation(line: 285, column: 2, scope: !1046)
!1063 = !DILocation(line: 285, column: 30, scope: !1046)
!1064 = !DILocation(line: 296, column: 40, scope: !1046)
!1065 = !DILocation(line: 296, column: 46, scope: !1046)
!1066 = !DILocation(line: 296, column: 53, scope: !1046)
!1067 = !DILocation(line: 296, column: 11, scope: !1046)
!1068 = !DILocation(line: 296, column: 9, scope: !1046)
!1069 = !DILocation(line: 297, column: 6, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 297, column: 6)
!1071 = !DILocation(line: 297, column: 6, scope: !1046)
!1072 = !DILocation(line: 298, column: 3, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 297, column: 28)
!1074 = !DILocation(line: 307, column: 24, scope: !1046)
!1075 = !DILocation(line: 307, column: 2, scope: !1046)
!1076 = !DILocation(line: 311, column: 17, scope: !1046)
!1077 = !DILocation(line: 311, column: 2, scope: !1046)
!1078 = !DILocation(line: 311, column: 8, scope: !1046)
!1079 = !DILocation(line: 311, column: 15, scope: !1046)
!1080 = !DILocation(line: 312, column: 2, scope: !1046)
!1081 = !DILocation(line: 313, column: 1, scope: !1046)
!1082 = distinct !DISubprogram(name: "acpi_ds_method_data_get_node", scope: !2, file: !2, line: 213, type: !1083, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1086)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!32, !45, !27, !168, !1085}
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1086 = !{!1087, !1088, !1089, !1090}
!1087 = !DILocalVariable(name: "type", arg: 1, scope: !1082, file: !2, line: 213, type: !45)
!1088 = !DILocalVariable(name: "index", arg: 2, scope: !1082, file: !2, line: 214, type: !27)
!1089 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1082, file: !2, line: 215, type: !168)
!1090 = !DILocalVariable(name: "node", arg: 4, scope: !1082, file: !2, line: 216, type: !1085)
!1091 = !DILocation(line: 213, column: 33, scope: !1082)
!1092 = !DILocation(line: 214, column: 13, scope: !1082)
!1093 = !DILocation(line: 215, column: 33, scope: !1082)
!1094 = !DILocation(line: 216, column: 38, scope: !1082)
!1095 = !DILocation(line: 223, column: 10, scope: !1082)
!1096 = !DILocation(line: 223, column: 2, scope: !1082)
!1097 = !DILocation(line: 226, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 226, column: 7)
!1099 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 223, column: 16)
!1100 = !DILocation(line: 226, column: 13, scope: !1098)
!1101 = !DILocation(line: 226, column: 7, scope: !1099)
!1102 = !DILocation(line: 227, column: 4, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 226, column: 38)
!1104 = !DILocation(line: 230, column: 4, scope: !1103)
!1105 = !DILocation(line: 235, column: 12, scope: !1099)
!1106 = !DILocation(line: 235, column: 24, scope: !1099)
!1107 = !DILocation(line: 235, column: 40, scope: !1099)
!1108 = !DILocation(line: 235, column: 4, scope: !1099)
!1109 = !DILocation(line: 235, column: 9, scope: !1099)
!1110 = !DILocation(line: 236, column: 3, scope: !1099)
!1111 = !DILocation(line: 240, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 240, column: 7)
!1113 = !DILocation(line: 240, column: 13, scope: !1112)
!1114 = !DILocation(line: 240, column: 7, scope: !1099)
!1115 = !DILocation(line: 241, column: 4, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 240, column: 36)
!1117 = !DILocation(line: 244, column: 4, scope: !1116)
!1118 = !DILocation(line: 249, column: 12, scope: !1099)
!1119 = !DILocation(line: 249, column: 24, scope: !1099)
!1120 = !DILocation(line: 249, column: 34, scope: !1099)
!1121 = !DILocation(line: 249, column: 4, scope: !1099)
!1122 = !DILocation(line: 249, column: 9, scope: !1099)
!1123 = !DILocation(line: 250, column: 3, scope: !1099)
!1124 = !DILocation(line: 254, column: 3, scope: !1099)
!1125 = !DILocation(line: 255, column: 3, scope: !1099)
!1126 = !DILocation(line: 258, column: 2, scope: !1082)
!1127 = !DILocation(line: 259, column: 1, scope: !1082)
!1128 = !DISubprogram(name: "acpi_error", scope: !1129, file: !1129, line: 901, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1129 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1130 = !DISubroutineType(types: !1131)
!1131 = !{null, !1132, !27, !1132, null}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!1133 = distinct !DISubprogram(name: "acpi_ds_method_data_get_value", scope: !2, file: !2, line: 333, type: !1134, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1136)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!32, !45, !27, !168, !133}
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1137 = !DILocalVariable(name: "type", arg: 1, scope: !1133, file: !2, line: 333, type: !45)
!1138 = !DILocalVariable(name: "index", arg: 2, scope: !1133, file: !2, line: 334, type: !27)
!1139 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1133, file: !2, line: 335, type: !168)
!1140 = !DILocalVariable(name: "dest_desc", arg: 4, scope: !1133, file: !2, line: 336, type: !133)
!1141 = !DILocalVariable(name: "status", scope: !1133, file: !2, line: 338, type: !32)
!1142 = !DILocalVariable(name: "node", scope: !1133, file: !2, line: 339, type: !101)
!1143 = !DILocalVariable(name: "object", scope: !1133, file: !2, line: 340, type: !55)
!1144 = !DILocation(line: 333, column: 34, scope: !1133)
!1145 = !DILocation(line: 334, column: 14, scope: !1133)
!1146 = !DILocation(line: 335, column: 34, scope: !1133)
!1147 = !DILocation(line: 336, column: 38, scope: !1133)
!1148 = !DILocation(line: 338, column: 2, scope: !1133)
!1149 = !DILocation(line: 338, column: 14, scope: !1133)
!1150 = !DILocation(line: 339, column: 2, scope: !1133)
!1151 = !DILocation(line: 339, column: 30, scope: !1133)
!1152 = !DILocation(line: 340, column: 2, scope: !1133)
!1153 = !DILocation(line: 340, column: 29, scope: !1133)
!1154 = !DILocation(line: 346, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 346, column: 6)
!1156 = !DILocation(line: 346, column: 6, scope: !1133)
!1157 = !DILocation(line: 347, column: 3, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 346, column: 18)
!1159 = !DILocation(line: 348, column: 3, scope: !1158)
!1160 = !DILocation(line: 353, column: 40, scope: !1133)
!1161 = !DILocation(line: 353, column: 46, scope: !1133)
!1162 = !DILocation(line: 353, column: 53, scope: !1133)
!1163 = !DILocation(line: 353, column: 11, scope: !1133)
!1164 = !DILocation(line: 353, column: 9, scope: !1133)
!1165 = !DILocation(line: 354, column: 6, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 354, column: 6)
!1167 = !DILocation(line: 354, column: 6, scope: !1133)
!1168 = !DILocation(line: 355, column: 3, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 354, column: 28)
!1170 = !DILocation(line: 360, column: 11, scope: !1133)
!1171 = !DILocation(line: 360, column: 17, scope: !1133)
!1172 = !DILocation(line: 360, column: 9, scope: !1133)
!1173 = !DILocation(line: 364, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 364, column: 6)
!1175 = !DILocation(line: 364, column: 6, scope: !1133)
!1176 = !DILocation(line: 375, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 375, column: 7)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 364, column: 15)
!1179 = !DILocation(line: 375, column: 7, scope: !1178)
!1180 = !DILocation(line: 376, column: 13, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 375, column: 42)
!1182 = !DILocation(line: 376, column: 11, scope: !1181)
!1183 = !DILocation(line: 377, column: 9, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 377, column: 8)
!1185 = !DILocation(line: 377, column: 8, scope: !1181)
!1186 = !DILocation(line: 378, column: 5, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 377, column: 17)
!1188 = !DILocation(line: 381, column: 19, scope: !1181)
!1189 = !DILocation(line: 381, column: 4, scope: !1181)
!1190 = !DILocation(line: 381, column: 10, scope: !1181)
!1191 = !DILocation(line: 381, column: 17, scope: !1181)
!1192 = !DILocation(line: 382, column: 3, scope: !1181)
!1193 = !DILocation(line: 387, column: 12, scope: !1177)
!1194 = !DILocation(line: 387, column: 4, scope: !1177)
!1195 = !DILocation(line: 390, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 387, column: 18)
!1197 = !DILocation(line: 394, column: 5, scope: !1196)
!1198 = !DILocation(line: 401, column: 5, scope: !1196)
!1199 = !DILocation(line: 405, column: 5, scope: !1196)
!1200 = !DILocation(line: 408, column: 5, scope: !1196)
!1201 = !DILocation(line: 410, column: 2, scope: !1178)
!1202 = !DILocation(line: 416, column: 15, scope: !1133)
!1203 = !DILocation(line: 416, column: 3, scope: !1133)
!1204 = !DILocation(line: 416, column: 13, scope: !1133)
!1205 = !DILocation(line: 417, column: 24, scope: !1133)
!1206 = !DILocation(line: 417, column: 2, scope: !1133)
!1207 = !DILocation(line: 419, column: 2, scope: !1133)
!1208 = !DILocation(line: 420, column: 1, scope: !1133)
!1209 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !1210, file: !1210, line: 455, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!55, !34}
!1213 = !DISubprogram(name: "acpi_ut_add_reference", scope: !1210, file: !1210, line: 367, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !55}
!1216 = distinct !DISubprogram(name: "acpi_ds_store_object_to_local", scope: !2, file: !2, line: 498, type: !1047, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1218 = !DILocalVariable(name: "type", arg: 1, scope: !1216, file: !2, line: 498, type: !45)
!1219 = !DILocalVariable(name: "index", arg: 2, scope: !1216, file: !2, line: 499, type: !27)
!1220 = !DILocalVariable(name: "obj_desc", arg: 3, scope: !1216, file: !2, line: 500, type: !55)
!1221 = !DILocalVariable(name: "walk_state", arg: 4, scope: !1216, file: !2, line: 501, type: !168)
!1222 = !DILocalVariable(name: "status", scope: !1216, file: !2, line: 503, type: !32)
!1223 = !DILocalVariable(name: "node", scope: !1216, file: !2, line: 504, type: !101)
!1224 = !DILocalVariable(name: "current_obj_desc", scope: !1216, file: !2, line: 505, type: !55)
!1225 = !DILocalVariable(name: "new_obj_desc", scope: !1216, file: !2, line: 506, type: !55)
!1226 = !DILocation(line: 498, column: 34, scope: !1216)
!1227 = !DILocation(line: 499, column: 14, scope: !1216)
!1228 = !DILocation(line: 500, column: 37, scope: !1216)
!1229 = !DILocation(line: 501, column: 34, scope: !1216)
!1230 = !DILocation(line: 503, column: 2, scope: !1216)
!1231 = !DILocation(line: 503, column: 14, scope: !1216)
!1232 = !DILocation(line: 504, column: 2, scope: !1216)
!1233 = !DILocation(line: 504, column: 30, scope: !1216)
!1234 = !DILocation(line: 505, column: 2, scope: !1216)
!1235 = !DILocation(line: 505, column: 29, scope: !1216)
!1236 = !DILocation(line: 506, column: 2, scope: !1216)
!1237 = !DILocation(line: 506, column: 29, scope: !1216)
!1238 = !DILocation(line: 514, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 514, column: 6)
!1240 = !DILocation(line: 514, column: 6, scope: !1216)
!1241 = !DILocation(line: 515, column: 3, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !2, line: 514, column: 17)
!1243 = !DILocation(line: 520, column: 40, scope: !1216)
!1244 = !DILocation(line: 520, column: 46, scope: !1216)
!1245 = !DILocation(line: 520, column: 53, scope: !1216)
!1246 = !DILocation(line: 520, column: 11, scope: !1216)
!1247 = !DILocation(line: 520, column: 9, scope: !1216)
!1248 = !DILocation(line: 521, column: 6, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 521, column: 6)
!1250 = !DILocation(line: 521, column: 6, scope: !1216)
!1251 = !DILocation(line: 522, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 521, column: 28)
!1253 = !DILocation(line: 525, column: 49, scope: !1216)
!1254 = !DILocation(line: 525, column: 21, scope: !1216)
!1255 = !DILocation(line: 525, column: 19, scope: !1216)
!1256 = !DILocation(line: 526, column: 6, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 526, column: 6)
!1258 = !DILocation(line: 526, column: 26, scope: !1257)
!1259 = !DILocation(line: 526, column: 23, scope: !1257)
!1260 = !DILocation(line: 526, column: 6, scope: !1216)
!1261 = !DILocation(line: 529, column: 3, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !2, line: 526, column: 36)
!1263 = !DILocation(line: 539, column: 17, scope: !1216)
!1264 = !DILocation(line: 539, column: 15, scope: !1216)
!1265 = !DILocation(line: 540, column: 6, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 540, column: 6)
!1267 = !DILocation(line: 540, column: 23, scope: !1266)
!1268 = !DILocation(line: 540, column: 39, scope: !1266)
!1269 = !DILocation(line: 540, column: 6, scope: !1216)
!1270 = !DILocation(line: 542, column: 39, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 540, column: 44)
!1272 = !DILocation(line: 543, column: 11, scope: !1271)
!1273 = !DILocation(line: 542, column: 7, scope: !1271)
!1274 = !DILocation(line: 541, column: 10, scope: !1271)
!1275 = !DILocation(line: 544, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 544, column: 7)
!1277 = !DILocation(line: 544, column: 7, scope: !1271)
!1278 = !DILocation(line: 545, column: 4, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 544, column: 29)
!1280 = !DILocation(line: 547, column: 2, scope: !1271)
!1281 = !DILocation(line: 555, column: 6, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 555, column: 6)
!1283 = !DILocation(line: 555, column: 6, scope: !1216)
!1284 = !DILocation(line: 572, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !2, line: 572, column: 7)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 555, column: 24)
!1287 = !DILocation(line: 572, column: 12, scope: !1285)
!1288 = !DILocation(line: 572, column: 7, scope: !1286)
!1289 = !DILocation(line: 577, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 577, column: 8)
!1291 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 572, column: 34)
!1292 = !DILocation(line: 577, column: 52, scope: !1290)
!1293 = !DILocation(line: 578, column: 33, scope: !1290)
!1294 = !DILocation(line: 579, column: 9, scope: !1290)
!1295 = !DILocation(line: 579, column: 34, scope: !1290)
!1296 = !DILocation(line: 579, column: 39, scope: !1290)
!1297 = !DILocation(line: 580, column: 36, scope: !1290)
!1298 = !DILocation(line: 581, column: 9, scope: !1290)
!1299 = !DILocation(line: 581, column: 37, scope: !1290)
!1300 = !DILocation(line: 581, column: 43, scope: !1290)
!1301 = !DILocation(line: 577, column: 8, scope: !1291)
!1302 = !DILocation(line: 594, column: 38, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 582, column: 31)
!1304 = !DILocation(line: 595, column: 10, scope: !1303)
!1305 = !DILocation(line: 597, column: 10, scope: !1303)
!1306 = !DILocation(line: 598, column: 10, scope: !1303)
!1307 = !DILocation(line: 594, column: 9, scope: !1303)
!1308 = !DILocation(line: 593, column: 12, scope: !1303)
!1309 = !DILocation(line: 603, column: 9, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 603, column: 9)
!1311 = !DILocation(line: 603, column: 25, scope: !1310)
!1312 = !DILocation(line: 603, column: 22, scope: !1310)
!1313 = !DILocation(line: 603, column: 9, scope: !1303)
!1314 = !DILocation(line: 604, column: 31, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 603, column: 35)
!1316 = !DILocation(line: 604, column: 6, scope: !1315)
!1317 = !DILocation(line: 605, column: 5, scope: !1315)
!1318 = !DILocation(line: 607, column: 5, scope: !1303)
!1319 = !DILocation(line: 609, column: 3, scope: !1291)
!1320 = !DILocation(line: 613, column: 36, scope: !1286)
!1321 = !DILocation(line: 613, column: 42, scope: !1286)
!1322 = !DILocation(line: 613, column: 49, scope: !1286)
!1323 = !DILocation(line: 613, column: 3, scope: !1286)
!1324 = !DILocation(line: 614, column: 2, scope: !1286)
!1325 = !DILocation(line: 622, column: 36, scope: !1216)
!1326 = !DILocation(line: 622, column: 42, scope: !1216)
!1327 = !DILocation(line: 622, column: 49, scope: !1216)
!1328 = !DILocation(line: 623, column: 8, scope: !1216)
!1329 = !DILocation(line: 622, column: 6, scope: !1216)
!1330 = !DILocation(line: 621, column: 9, scope: !1216)
!1331 = !DILocation(line: 627, column: 6, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 627, column: 6)
!1333 = !DILocation(line: 627, column: 22, scope: !1332)
!1334 = !DILocation(line: 627, column: 19, scope: !1332)
!1335 = !DILocation(line: 627, column: 6, scope: !1216)
!1336 = !DILocation(line: 628, column: 28, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 627, column: 32)
!1338 = !DILocation(line: 628, column: 3, scope: !1337)
!1339 = !DILocation(line: 629, column: 2, scope: !1337)
!1340 = !DILocation(line: 631, column: 2, scope: !1216)
!1341 = !DILocation(line: 632, column: 1, scope: !1216)
!1342 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !994, file: !994, line: 298, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!55, !101}
!1345 = !DISubprogram(name: "acpi_ut_copy_iobject_to_iobject", scope: !1210, file: !1210, line: 281, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!32, !55, !133, !168}
!1348 = !DISubprogram(name: "acpi_ex_store_object_to_node", scope: !1349, file: !1349, line: 412, type: !1350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1349 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!32, !55, !101, !168, !45}
!1352 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1210, file: !1210, line: 369, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = distinct !DISubprogram(name: "acpi_ds_method_data_delete_value", scope: !2, file: !2, line: 439, type: !1354, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !45, !27, !168}
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362}
!1357 = !DILocalVariable(name: "type", arg: 1, scope: !1353, file: !2, line: 439, type: !45)
!1358 = !DILocalVariable(name: "index", arg: 2, scope: !1353, file: !2, line: 440, type: !27)
!1359 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1353, file: !2, line: 440, type: !168)
!1360 = !DILocalVariable(name: "status", scope: !1353, file: !2, line: 442, type: !32)
!1361 = !DILocalVariable(name: "node", scope: !1353, file: !2, line: 443, type: !101)
!1362 = !DILocalVariable(name: "object", scope: !1353, file: !2, line: 444, type: !55)
!1363 = !DILocation(line: 439, column: 37, scope: !1353)
!1364 = !DILocation(line: 440, column: 10, scope: !1353)
!1365 = !DILocation(line: 440, column: 41, scope: !1353)
!1366 = !DILocation(line: 442, column: 2, scope: !1353)
!1367 = !DILocation(line: 442, column: 14, scope: !1353)
!1368 = !DILocation(line: 443, column: 2, scope: !1353)
!1369 = !DILocation(line: 443, column: 30, scope: !1353)
!1370 = !DILocation(line: 444, column: 2, scope: !1353)
!1371 = !DILocation(line: 444, column: 29, scope: !1353)
!1372 = !DILocation(line: 450, column: 40, scope: !1353)
!1373 = !DILocation(line: 450, column: 46, scope: !1353)
!1374 = !DILocation(line: 450, column: 53, scope: !1353)
!1375 = !DILocation(line: 450, column: 11, scope: !1353)
!1376 = !DILocation(line: 450, column: 9, scope: !1353)
!1377 = !DILocation(line: 451, column: 6, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 451, column: 6)
!1379 = !DILocation(line: 451, column: 6, scope: !1353)
!1380 = !DILocation(line: 452, column: 3, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 451, column: 28)
!1382 = !DILocation(line: 457, column: 39, scope: !1353)
!1383 = !DILocation(line: 457, column: 11, scope: !1353)
!1384 = !DILocation(line: 457, column: 9, scope: !1353)
!1385 = !DILocation(line: 464, column: 2, scope: !1353)
!1386 = !DILocation(line: 464, column: 8, scope: !1353)
!1387 = !DILocation(line: 464, column: 15, scope: !1353)
!1388 = !DILocation(line: 466, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 466, column: 6)
!1390 = !DILocation(line: 466, column: 6, scope: !1389)
!1391 = !DILocation(line: 466, column: 15, scope: !1389)
!1392 = !DILocation(line: 467, column: 7, scope: !1389)
!1393 = !DILocation(line: 467, column: 40, scope: !1389)
!1394 = !DILocation(line: 466, column: 6, scope: !1353)
!1395 = !DILocation(line: 473, column: 28, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 467, column: 68)
!1397 = !DILocation(line: 473, column: 3, scope: !1396)
!1398 = !DILocation(line: 474, column: 2, scope: !1396)
!1399 = !DILocation(line: 476, column: 2, scope: !1353)
!1400 = !DILocation(line: 477, column: 1, scope: !1353)
