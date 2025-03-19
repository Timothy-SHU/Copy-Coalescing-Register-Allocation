; ModuleID = 'drivers/acpi/acpica/dswstate.c'
source_filename = "drivers/acpi/acpica/dswstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_result_values = type { ptr, i8, i8, i16, i16, [8 x ptr] }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }
%struct.acpi_thread_state = type { ptr, i8, i8, i16, i16, i8, ptr, ptr, i64 }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }

@_acpi_module_name = internal constant [9 x i8] c"dswstate\00", align 1, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"No results on result stack\00", align 1, !dbg !40
@.str.1 = private unnamed_addr constant [33 x i8] c"No result state for result stack\00", align 1, !dbg !46
@.str.2 = private unnamed_addr constant [32 x i8] c"Result stack is empty! State=%p\00", align 1, !dbg !51
@.str.3 = private unnamed_addr constant [44 x i8] c"No result objects on result stack, State=%p\00", align 1, !dbg !56
@.str.4 = private unnamed_addr constant [21 x i8] c"Result stack is full\00", align 1, !dbg !61
@.str.5 = private unnamed_addr constant [34 x i8] c"Failed to extend the result stack\00", align 1, !dbg !66
@.str.6 = private unnamed_addr constant [33 x i8] c"No free elements in result stack\00", align 1, !dbg !71
@.str.7 = private unnamed_addr constant [34 x i8] c"No result stack frame during push\00", align 1, !dbg !73
@.str.8 = private unnamed_addr constant [29 x i8] c"Null Object! State=%p Num=%u\00", align 1, !dbg !75
@.str.9 = private unnamed_addr constant [47 x i8] c"Object stack overflow! Obj=%p State=%p #Ops=%u\00", align 1, !dbg !80
@.str.10 = private unnamed_addr constant [50 x i8] c"Object stack underflow! Count=%X State=%p #Ops=%u\00", align 1, !dbg !85
@.str.11 = private unnamed_addr constant [29 x i8] c"%p is not a valid walk state\00", align 1, !dbg !90
@.str.12 = private unnamed_addr constant [31 x i8] c"%p walk still has a scope list\00", align 1, !dbg !92
@.str.13 = private unnamed_addr constant [39 x i8] c"Result stack overflow: State=%p Num=%u\00", align 1, !dbg !97
@.str.14 = private unnamed_addr constant [31 x i8] c"Insufficient result stack size\00", align 1, !dbg !102
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.15 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !104

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_result_pop(ptr noundef %object, ptr noundef %walk_state) #0 align 16 !dbg !119 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  %state = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !886, metadata !DIExpression()), !dbg !891
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !887, metadata !DIExpression()), !dbg !892
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !893
  call void @llvm.dbg.declare(metadata ptr %index, metadata !888, metadata !DIExpression()), !dbg !894
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #13, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %state, metadata !889, metadata !DIExpression()), !dbg !896
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %status, metadata !890, metadata !DIExpression()), !dbg !898
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !899
  %results = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 44, !dbg !900
  %1 = load ptr, ptr %results, align 8, !dbg !900
  store ptr %1, ptr %state, align 8, !dbg !901
  %2 = load ptr, ptr %state, align 8, !dbg !902
  %tobool = icmp ne ptr %2, null, !dbg !902
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !904

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !905
  %result_count = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 15, !dbg !906
  %4 = load i8, ptr %result_count, align 1, !dbg !906
  %tobool1 = icmp ne i8 %4, 0, !dbg !905
  br i1 %tobool1, label %if.end, label %if.then, !dbg !907

if.then:                                          ; preds = %land.lhs.true
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 52, ptr noundef @.str) #14, !dbg !908
  store i32 12303, ptr %retval, align 4, !dbg !910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !910

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %state, align 8, !dbg !911
  %tobool2 = icmp ne ptr %5, null, !dbg !911
  br i1 %tobool2, label %if.end7, label %land.lhs.true3, !dbg !913

land.lhs.true3:                                   ; preds = %if.end
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !914
  %result_count4 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 15, !dbg !915
  %7 = load i8, ptr %result_count4, align 1, !dbg !915
  %conv = zext i8 %7 to i32, !dbg !914
  %tobool5 = icmp ne i32 %conv, 0, !dbg !914
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !916

if.then6:                                         ; preds = %land.lhs.true3
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 57, ptr noundef @.str.1) #14, !dbg !917
  store i32 12303, ptr %retval, align 4, !dbg !919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !919

if.end7:                                          ; preds = %land.lhs.true3, %if.end
  %8 = load ptr, ptr %state, align 8, !dbg !920
  %tobool8 = icmp ne ptr %8, null, !dbg !920
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !922

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !923
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 64, ptr noundef @.str.2, ptr noundef %9) #14, !dbg !923
  store i32 12306, ptr %retval, align 4, !dbg !925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !925

if.end10:                                         ; preds = %if.end7
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !926
  %result_count11 = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 15, !dbg !927
  %11 = load i8, ptr %result_count11, align 1, !dbg !928
  %dec = add i8 %11, -1, !dbg !928
  store i8 %dec, ptr %result_count11, align 1, !dbg !928
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !929
  %result_count12 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 15, !dbg !930
  %13 = load i8, ptr %result_count12, align 1, !dbg !930
  %conv13 = zext i8 %13 to i32, !dbg !931
  %rem = urem i32 %conv13, 8, !dbg !932
  store i32 %rem, ptr %index, align 4, !dbg !933
  %14 = load ptr, ptr %state, align 8, !dbg !934
  %obj_desc = getelementptr inbounds %struct.acpi_result_values, ptr %14, i32 0, i32 5, !dbg !935
  %15 = load i32, ptr %index, align 4, !dbg !936
  %idxprom = zext i32 %15 to i64, !dbg !934
  %arrayidx = getelementptr [8 x ptr], ptr %obj_desc, i64 0, i64 %idxprom, !dbg !934
  %16 = load ptr, ptr %arrayidx, align 8, !dbg !934
  %17 = load ptr, ptr %object.addr, align 8, !dbg !937
  store ptr %16, ptr %17, align 8, !dbg !938
  %18 = load ptr, ptr %object.addr, align 8, !dbg !939
  %19 = load ptr, ptr %18, align 8, !dbg !941
  %tobool14 = icmp ne ptr %19, null, !dbg !941
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !942

if.then15:                                        ; preds = %if.end10
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !943
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 76, ptr noundef @.str.3, ptr noundef %20) #14, !dbg !943
  store i32 12306, ptr %retval, align 4, !dbg !945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !945

if.end16:                                         ; preds = %if.end10
  %21 = load ptr, ptr %state, align 8, !dbg !946
  %obj_desc17 = getelementptr inbounds %struct.acpi_result_values, ptr %21, i32 0, i32 5, !dbg !947
  %22 = load i32, ptr %index, align 4, !dbg !948
  %idxprom18 = zext i32 %22 to i64, !dbg !946
  %arrayidx19 = getelementptr [8 x ptr], ptr %obj_desc17, i64 0, i64 %idxprom18, !dbg !946
  store ptr null, ptr %arrayidx19, align 8, !dbg !949
  %23 = load i32, ptr %index, align 4, !dbg !950
  %cmp = icmp eq i32 %23, 0, !dbg !952
  br i1 %cmp, label %if.then21, label %if.end25, !dbg !953

if.then21:                                        ; preds = %if.end16
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !954
  %call = call i32 @acpi_ds_result_stack_pop(ptr noundef %24) #14, !dbg !956
  store i32 %call, ptr %status, align 4, !dbg !957
  %25 = load i32, ptr %status, align 4, !dbg !958
  %tobool22 = icmp ne i32 %25, 0, !dbg !958
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !960

if.then23:                                        ; preds = %if.then21
  %26 = load i32, ptr %status, align 4, !dbg !961
  store i32 %26, ptr %retval, align 4, !dbg !963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !963

if.end24:                                         ; preds = %if.then21
  br label %if.end25, !dbg !964

if.end25:                                         ; preds = %if.end24, %if.end16
  store i32 0, ptr %retval, align 4, !dbg !965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !965

cleanup:                                          ; preds = %if.end25, %if.then23, %if.then15, %if.then9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !966
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #13, !dbg !966
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !966
  %27 = load i32, ptr %retval, align 4, !dbg !966
  ret i32 %27, !dbg !966
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !967 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ds_result_stack_pop(ptr noundef %walk_state) #0 align 16 !dbg !972 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !974, metadata !DIExpression()), !dbg !976
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #13, !dbg !977
  call void @llvm.dbg.declare(metadata ptr %state, metadata !975, metadata !DIExpression()), !dbg !978
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !979
  %results = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 44, !dbg !981
  %1 = load ptr, ptr %results, align 8, !dbg !981
  %cmp = icmp eq ptr %1, null, !dbg !982
  br i1 %cmp, label %if.then, label %if.end, !dbg !983

if.then:                                          ; preds = %entry
  store i32 12290, ptr %retval, align 4, !dbg !984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !984

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !986
  %result_size = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 14, !dbg !988
  %3 = load i8, ptr %result_size, align 8, !dbg !988
  %conv = zext i8 %3 to i32, !dbg !986
  %cmp1 = icmp slt i32 %conv, 8, !dbg !989
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !990

if.then3:                                         ; preds = %if.end
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 244, ptr noundef @.str.14) #14, !dbg !991
  store i32 12303, ptr %retval, align 4, !dbg !993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !993

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !994
  %results5 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 44, !dbg !995
  %call = call ptr @acpi_ut_pop_generic_state(ptr noundef %results5) #14, !dbg !996
  store ptr %call, ptr %state, align 8, !dbg !997
  %5 = load ptr, ptr %state, align 8, !dbg !998
  call void @acpi_ut_delete_generic_state(ptr noundef %5) #14, !dbg !999
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1000
  %result_size6 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 14, !dbg !1001
  %7 = load i8, ptr %result_size6, align 8, !dbg !1002
  %conv7 = zext i8 %7 to i32, !dbg !1002
  %sub = sub i32 %conv7, 8, !dbg !1002
  %conv8 = trunc i32 %sub to i8, !dbg !1002
  store i8 %conv8, ptr %result_size6, align 8, !dbg !1002
  store i32 0, ptr %retval, align 4, !dbg !1003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1003

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #13, !dbg !1004
  %8 = load i32, ptr %retval, align 4, !dbg !1004
  ret i32 %8, !dbg !1004
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_result_push(ptr noundef %object, ptr noundef %walk_state) #0 align 16 !dbg !1005 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %status = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1009, metadata !DIExpression()), !dbg !1014
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1010, metadata !DIExpression()), !dbg !1015
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #13, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %state, metadata !1011, metadata !DIExpression()), !dbg !1017
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1012, metadata !DIExpression()), !dbg !1019
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1013, metadata !DIExpression()), !dbg !1021
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1022
  %result_count = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 15, !dbg !1024
  %1 = load i8, ptr %result_count, align 1, !dbg !1024
  %conv = zext i8 %1 to i32, !dbg !1022
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1025
  %result_size = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 14, !dbg !1026
  %3 = load i8, ptr %result_size, align 8, !dbg !1026
  %conv1 = zext i8 %3 to i32, !dbg !1025
  %cmp = icmp sgt i32 %conv, %conv1, !dbg !1027
  br i1 %cmp, label %if.then, label %if.else, !dbg !1028

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 122, ptr noundef @.str.4) #14, !dbg !1029
  store i32 12303, ptr %retval, align 4, !dbg !1031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1031

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1032
  %result_count3 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 15, !dbg !1034
  %5 = load i8, ptr %result_count3, align 1, !dbg !1034
  %conv4 = zext i8 %5 to i32, !dbg !1032
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1035
  %result_size5 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 14, !dbg !1036
  %7 = load i8, ptr %result_size5, align 8, !dbg !1036
  %conv6 = zext i8 %7 to i32, !dbg !1035
  %cmp7 = icmp eq i32 %conv4, %conv6, !dbg !1037
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !1038

if.then9:                                         ; preds = %if.else
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1039
  %call = call i32 @acpi_ds_result_stack_push(ptr noundef %8) #14, !dbg !1041
  store i32 %call, ptr %status, align 4, !dbg !1042
  %9 = load i32, ptr %status, align 4, !dbg !1043
  %tobool = icmp ne i32 %9, 0, !dbg !1043
  br i1 %tobool, label %if.then10, label %if.end, !dbg !1045

if.then10:                                        ; preds = %if.then9
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 130, ptr noundef @.str.5) #14, !dbg !1046
  %10 = load i32, ptr %status, align 4, !dbg !1048
  store i32 %10, ptr %retval, align 4, !dbg !1049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1049

if.end:                                           ; preds = %if.then9
  br label %if.end11, !dbg !1050

if.end11:                                         ; preds = %if.end, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1051
  %result_count13 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 15, !dbg !1053
  %12 = load i8, ptr %result_count13, align 1, !dbg !1053
  %conv14 = zext i8 %12 to i32, !dbg !1051
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1054
  %result_size15 = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 14, !dbg !1055
  %14 = load i8, ptr %result_size15, align 8, !dbg !1055
  %conv16 = zext i8 %14 to i32, !dbg !1054
  %cmp17 = icmp slt i32 %conv14, %conv16, !dbg !1056
  br i1 %cmp17, label %if.end20, label %if.then19, !dbg !1057

if.then19:                                        ; preds = %if.end12
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 137, ptr noundef @.str.6) #14, !dbg !1058
  store i32 12303, ptr %retval, align 4, !dbg !1060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1060

if.end20:                                         ; preds = %if.end12
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1061
  %results = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 44, !dbg !1062
  %16 = load ptr, ptr %results, align 8, !dbg !1062
  store ptr %16, ptr %state, align 8, !dbg !1063
  %17 = load ptr, ptr %state, align 8, !dbg !1064
  %tobool21 = icmp ne ptr %17, null, !dbg !1064
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1066

if.then22:                                        ; preds = %if.end20
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 143, ptr noundef @.str.7) #14, !dbg !1067
  store i32 12303, ptr %retval, align 4, !dbg !1069
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1069

if.end23:                                         ; preds = %if.end20
  %18 = load ptr, ptr %object.addr, align 8, !dbg !1070
  %tobool24 = icmp ne ptr %18, null, !dbg !1070
  br i1 %tobool24, label %if.end28, label %if.then25, !dbg !1072

if.then25:                                        ; preds = %if.end23
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1073
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !1073
  %result_count26 = getelementptr inbounds %struct.acpi_walk_state, ptr %20, i32 0, i32 15, !dbg !1073
  %21 = load i8, ptr %result_count26, align 1, !dbg !1073
  %conv27 = zext i8 %21 to i32, !dbg !1073
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 148, ptr noundef @.str.8, ptr noundef %19, i32 noundef %conv27) #14, !dbg !1073
  store i32 4097, ptr %retval, align 4, !dbg !1075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1075

if.end28:                                         ; preds = %if.end23
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1076
  %result_count29 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 15, !dbg !1077
  %23 = load i8, ptr %result_count29, align 1, !dbg !1077
  %conv30 = zext i8 %23 to i32, !dbg !1078
  %rem = urem i32 %conv30, 8, !dbg !1079
  store i32 %rem, ptr %index, align 4, !dbg !1080
  %24 = load ptr, ptr %object.addr, align 8, !dbg !1081
  %25 = load ptr, ptr %state, align 8, !dbg !1082
  %obj_desc = getelementptr inbounds %struct.acpi_result_values, ptr %25, i32 0, i32 5, !dbg !1083
  %26 = load i32, ptr %index, align 4, !dbg !1084
  %idxprom = zext i32 %26 to i64, !dbg !1082
  %arrayidx = getelementptr [8 x ptr], ptr %obj_desc, i64 0, i64 %idxprom, !dbg !1082
  store ptr %24, ptr %arrayidx, align 8, !dbg !1085
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1086
  %result_count31 = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 15, !dbg !1087
  %28 = load i8, ptr %result_count31, align 1, !dbg !1088
  %inc = add i8 %28, 1, !dbg !1088
  store i8 %inc, ptr %result_count31, align 1, !dbg !1088
  store i32 0, ptr %retval, align 4, !dbg !1089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1089

cleanup:                                          ; preds = %if.end28, %if.then25, %if.then22, %if.then19, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #13, !dbg !1090
  %29 = load i32, ptr %retval, align 4, !dbg !1090
  ret i32 %29, !dbg !1090
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ds_result_stack_push(ptr noundef %walk_state) #0 align 16 !dbg !1091 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1093, metadata !DIExpression()), !dbg !1095
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #13, !dbg !1096
  call void @llvm.dbg.declare(metadata ptr %state, metadata !1094, metadata !DIExpression()), !dbg !1097
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1098
  %result_size = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 14, !dbg !1100
  %1 = load i8, ptr %result_size, align 8, !dbg !1100
  %conv = zext i8 %1 to i32, !dbg !1101
  %add = add i32 %conv, 8, !dbg !1102
  %cmp = icmp ugt i32 %add, 255, !dbg !1103
  br i1 %cmp, label %if.then, label %if.end, !dbg !1104

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1105
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1105
  %result_size2 = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 14, !dbg !1105
  %4 = load i8, ptr %result_size2, align 8, !dbg !1105
  %conv3 = zext i8 %4 to i32, !dbg !1105
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 193, ptr noundef @.str.13, ptr noundef %2, i32 noundef %conv3) #14, !dbg !1105
  store i32 12, ptr %retval, align 4, !dbg !1107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

if.end:                                           ; preds = %entry
  %call = call ptr @acpi_ut_create_generic_state() #14, !dbg !1108
  store ptr %call, ptr %state, align 8, !dbg !1109
  %5 = load ptr, ptr %state, align 8, !dbg !1110
  %tobool = icmp ne ptr %5, null, !dbg !1110
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !1112

if.then4:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !1113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1113

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %state, align 8, !dbg !1115
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, ptr %6, i32 0, i32 1, !dbg !1116
  store i8 9, ptr %descriptor_type, align 8, !dbg !1117
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1118
  %results = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 44, !dbg !1119
  %8 = load ptr, ptr %state, align 8, !dbg !1120
  call void @acpi_ut_push_generic_state(ptr noundef %results, ptr noundef %8) #14, !dbg !1121
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !1122
  %result_size6 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 14, !dbg !1123
  %10 = load i8, ptr %result_size6, align 8, !dbg !1124
  %conv7 = zext i8 %10 to i32, !dbg !1124
  %add8 = add i32 %conv7, 8, !dbg !1124
  %conv9 = trunc i32 %add8 to i8, !dbg !1124
  store i8 %conv9, ptr %result_size6, align 8, !dbg !1124
  store i32 0, ptr %retval, align 4, !dbg !1125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1125

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #13, !dbg !1126
  %11 = load i32, ptr %retval, align 4, !dbg !1126
  ret i32 %11, !dbg !1126
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_obj_stack_push(ptr noundef %object, ptr noundef %walk_state) #0 align 16 !dbg !1127 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1131, metadata !DIExpression()), !dbg !1133
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1132, metadata !DIExpression()), !dbg !1134
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1135
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 5, !dbg !1137
  %1 = load i8, ptr %num_operands, align 1, !dbg !1137
  %conv = zext i8 %1 to i32, !dbg !1135
  %cmp = icmp sge i32 %conv, 8, !dbg !1138
  br i1 %cmp, label %if.then, label %if.end, !dbg !1139

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8, !dbg !1140
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1140
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1140
  %num_operands2 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 5, !dbg !1140
  %5 = load i8, ptr %num_operands2, align 1, !dbg !1140
  %conv3 = zext i8 %5 to i32, !dbg !1140
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 283, ptr noundef @.str.9, ptr noundef %2, ptr noundef %3, i32 noundef %conv3) #14, !dbg !1140
  store i32 12, ptr %retval, align 4, !dbg !1142
  br label %return, !dbg !1142

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %object.addr, align 8, !dbg !1143
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1144
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 28, !dbg !1145
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1146
  %operand_index = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 6, !dbg !1147
  %9 = load i8, ptr %operand_index, align 2, !dbg !1147
  %idxprom = zext i8 %9 to i64, !dbg !1144
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !1144
  store ptr %6, ptr %arrayidx, align 8, !dbg !1148
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !1149
  %num_operands4 = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 5, !dbg !1150
  %11 = load i8, ptr %num_operands4, align 1, !dbg !1151
  %inc = add i8 %11, 1, !dbg !1151
  store i8 %inc, ptr %num_operands4, align 1, !dbg !1151
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1152
  %operand_index5 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 6, !dbg !1153
  %13 = load i8, ptr %operand_index5, align 2, !dbg !1154
  %inc6 = add i8 %13, 1, !dbg !1154
  store i8 %inc6, ptr %operand_index5, align 2, !dbg !1154
  store i32 0, ptr %retval, align 4, !dbg !1155
  br label %return, !dbg !1155

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !1156
  ret i32 %14, !dbg !1156
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_obj_stack_pop(i32 noundef %pop_count, ptr noundef %walk_state) #0 align 16 !dbg !1157 {
entry:
  %retval = alloca i32, align 4
  %pop_count.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pop_count, ptr %pop_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pop_count.addr, metadata !1161, metadata !DIExpression()), !dbg !1164
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1162, metadata !DIExpression()), !dbg !1165
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1166
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1163, metadata !DIExpression()), !dbg !1167
  store i32 0, ptr %i, align 4, !dbg !1168
  br label %for.cond, !dbg !1170

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1171
  %1 = load i32, ptr %pop_count.addr, align 4, !dbg !1173
  %cmp = icmp ult i32 %0, %1, !dbg !1174
  br i1 %cmp, label %for.body, label %for.end, !dbg !1175

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1176
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 5, !dbg !1179
  %3 = load i8, ptr %num_operands, align 1, !dbg !1179
  %conv = zext i8 %3 to i32, !dbg !1176
  %cmp1 = icmp eq i32 %conv, 0, !dbg !1180
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1181

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %pop_count.addr, align 4, !dbg !1182
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1182
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1182
  %num_operands3 = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 5, !dbg !1182
  %7 = load i8, ptr %num_operands3, align 1, !dbg !1182
  %conv4 = zext i8 %7 to i32, !dbg !1182
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 334, ptr noundef @.str.10, i32 noundef %4, ptr noundef %5, i32 noundef %conv4) #14, !dbg !1182
  store i32 13, ptr %retval, align 4, !dbg !1184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1184

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1185
  %num_operands5 = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 5, !dbg !1186
  %9 = load i8, ptr %num_operands5, align 1, !dbg !1187
  %dec = add i8 %9, -1, !dbg !1187
  store i8 %dec, ptr %num_operands5, align 1, !dbg !1187
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !1188
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 28, !dbg !1189
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1190
  %num_operands6 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 5, !dbg !1191
  %12 = load i8, ptr %num_operands6, align 1, !dbg !1191
  %idxprom = zext i8 %12 to i64, !dbg !1188
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !1188
  store ptr null, ptr %arrayidx, align 8, !dbg !1192
  br label %for.inc, !dbg !1193

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !dbg !1194
  %inc = add i32 %13, 1, !dbg !1194
  store i32 %inc, ptr %i, align 4, !dbg !1194
  br label %for.cond, !dbg !1195, !llvm.loop !1196

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1200

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1201
  %14 = load i32, ptr %retval, align 4, !dbg !1201
  ret i32 %14, !dbg !1201
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_obj_stack_pop_and_delete(i32 noundef %pop_count, ptr noundef %walk_state) #0 align 16 !dbg !1202 {
entry:
  %pop_count.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pop_count, ptr %pop_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pop_count.addr, metadata !1206, metadata !DIExpression()), !dbg !1210
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1207, metadata !DIExpression()), !dbg !1211
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1208, metadata !DIExpression()), !dbg !1213
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1214
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1209, metadata !DIExpression()), !dbg !1215
  %0 = load i32, ptr %pop_count.addr, align 4, !dbg !1216
  %cmp = icmp eq i32 %0, 0, !dbg !1218
  br i1 %cmp, label %if.then, label %if.end, !dbg !1219

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1220

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %pop_count.addr, align 4, !dbg !1222
  %sub = sub i32 %1, 1, !dbg !1224
  store i32 %sub, ptr %i, align 4, !dbg !1225
  br label %for.cond, !dbg !1226

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !1227
  %cmp1 = icmp sge i32 %2, 0, !dbg !1229
  br i1 %cmp1, label %for.body, label %for.end, !dbg !1230

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1231
  %num_operands = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 5, !dbg !1234
  %4 = load i8, ptr %num_operands, align 1, !dbg !1234
  %conv = zext i8 %4 to i32, !dbg !1231
  %cmp2 = icmp eq i32 %conv, 0, !dbg !1235
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1236

if.then4:                                         ; preds = %for.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1237

if.end5:                                          ; preds = %for.body
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1239
  %num_operands6 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 5, !dbg !1240
  %6 = load i8, ptr %num_operands6, align 1, !dbg !1241
  %dec = add i8 %6, -1, !dbg !1241
  store i8 %dec, ptr %num_operands6, align 1, !dbg !1241
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1242
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 28, !dbg !1243
  %8 = load i32, ptr %i, align 4, !dbg !1244
  %idxprom = sext i32 %8 to i64, !dbg !1242
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 %idxprom, !dbg !1242
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !1242
  store ptr %9, ptr %obj_desc, align 8, !dbg !1245
  %10 = load ptr, ptr %obj_desc, align 8, !dbg !1246
  %tobool = icmp ne ptr %10, null, !dbg !1246
  br i1 %tobool, label %if.then7, label %if.end14, !dbg !1248

if.then7:                                         ; preds = %if.end5
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1249
  %operands8 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 28, !dbg !1251
  %12 = load i32, ptr %i, align 4, !dbg !1252
  %idxprom9 = sext i32 %12 to i64, !dbg !1249
  %arrayidx10 = getelementptr [9 x ptr], ptr %operands8, i64 0, i64 %idxprom9, !dbg !1249
  %13 = load ptr, ptr %arrayidx10, align 8, !dbg !1249
  call void @acpi_ut_remove_reference(ptr noundef %13) #14, !dbg !1253
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1254
  %operands11 = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 28, !dbg !1255
  %15 = load i32, ptr %i, align 4, !dbg !1256
  %idxprom12 = sext i32 %15 to i64, !dbg !1254
  %arrayidx13 = getelementptr [9 x ptr], ptr %operands11, i64 0, i64 %idxprom12, !dbg !1254
  store ptr null, ptr %arrayidx13, align 8, !dbg !1257
  br label %if.end14, !dbg !1258

if.end14:                                         ; preds = %if.then7, %if.end5
  br label %for.inc, !dbg !1259

for.inc:                                          ; preds = %if.end14
  %16 = load i32, ptr %i, align 4, !dbg !1260
  %dec15 = add i32 %16, -1, !dbg !1260
  store i32 %dec15, ptr %i, align 4, !dbg !1260
  br label %for.cond, !dbg !1261, !llvm.loop !1262

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1264
  br label %cleanup, !dbg !1264

cleanup:                                          ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1264
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1264

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1265 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ds_get_current_walk_state(ptr noundef %thread) #0 align 16 !dbg !1269 {
entry:
  %retval = alloca ptr, align 8
  %thread.addr = alloca ptr, align 8
  store ptr %thread, ptr %thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread.addr, metadata !1273, metadata !DIExpression()), !dbg !1274
  %0 = load ptr, ptr %thread.addr, align 8, !dbg !1275
  %tobool = icmp ne ptr %0, null, !dbg !1275
  br i1 %tobool, label %if.end, label %if.then, !dbg !1277

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1278
  br label %return, !dbg !1278

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %thread.addr, align 8, !dbg !1280
  %walk_state_list = getelementptr inbounds %struct.acpi_thread_state, ptr %1, i32 0, i32 6, !dbg !1281
  %2 = load ptr, ptr %walk_state_list, align 8, !dbg !1281
  store ptr %2, ptr %retval, align 8, !dbg !1282
  br label %return, !dbg !1282

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1283
  ret ptr %3, !dbg !1283
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_push_walk_state(ptr noundef %walk_state, ptr noundef %thread) #0 align 16 !dbg !1284 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %thread.addr = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1288, metadata !DIExpression()), !dbg !1290
  store ptr %thread, ptr %thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread.addr, metadata !1289, metadata !DIExpression()), !dbg !1291
  %0 = load ptr, ptr %thread.addr, align 8, !dbg !1292
  %walk_state_list = getelementptr inbounds %struct.acpi_thread_state, ptr %0, i32 0, i32 6, !dbg !1293
  %1 = load ptr, ptr %walk_state_list, align 8, !dbg !1293
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1294
  %next = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 0, !dbg !1295
  store ptr %1, ptr %next, align 8, !dbg !1296
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1297
  %4 = load ptr, ptr %thread.addr, align 8, !dbg !1298
  %walk_state_list1 = getelementptr inbounds %struct.acpi_thread_state, ptr %4, i32 0, i32 6, !dbg !1299
  store ptr %3, ptr %walk_state_list1, align 8, !dbg !1300
  ret void, !dbg !1301
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ds_pop_walk_state(ptr noundef %thread) #0 align 16 !dbg !1302 {
entry:
  %thread.addr = alloca ptr, align 8
  %walk_state = alloca ptr, align 8
  store ptr %thread, ptr %thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread.addr, metadata !1304, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk_state) #13, !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %walk_state, metadata !1305, metadata !DIExpression()), !dbg !1308
  %0 = load ptr, ptr %thread.addr, align 8, !dbg !1309
  %walk_state_list = getelementptr inbounds %struct.acpi_thread_state, ptr %0, i32 0, i32 6, !dbg !1310
  %1 = load ptr, ptr %walk_state_list, align 8, !dbg !1310
  store ptr %1, ptr %walk_state, align 8, !dbg !1311
  %2 = load ptr, ptr %walk_state, align 8, !dbg !1312
  %tobool = icmp ne ptr %2, null, !dbg !1312
  br i1 %tobool, label %if.then, label %if.end, !dbg !1314

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %walk_state, align 8, !dbg !1315
  %next = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 0, !dbg !1317
  %4 = load ptr, ptr %next, align 8, !dbg !1317
  %5 = load ptr, ptr %thread.addr, align 8, !dbg !1318
  %walk_state_list1 = getelementptr inbounds %struct.acpi_thread_state, ptr %5, i32 0, i32 6, !dbg !1319
  store ptr %4, ptr %walk_state_list1, align 8, !dbg !1320
  br label %if.end, !dbg !1321

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %walk_state, align 8, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk_state) #13, !dbg !1323
  ret ptr %6, !dbg !1322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ds_create_walk_state(i16 noundef zeroext %owner_id, ptr noundef %origin, ptr noundef %method_desc, ptr noundef %thread) #0 align 16 !dbg !1324 {
entry:
  %retval = alloca ptr, align 8
  %owner_id.addr = alloca i16, align 2
  %origin.addr = alloca ptr, align 8
  %method_desc.addr = alloca ptr, align 8
  %thread.addr = alloca ptr, align 8
  %walk_state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %owner_id, ptr %owner_id.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %owner_id.addr, metadata !1328, metadata !DIExpression()), !dbg !1333
  store ptr %origin, ptr %origin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !1329, metadata !DIExpression()), !dbg !1334
  store ptr %method_desc, ptr %method_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method_desc.addr, metadata !1330, metadata !DIExpression()), !dbg !1335
  store ptr %thread, ptr %thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread.addr, metadata !1331, metadata !DIExpression()), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 8, ptr %walk_state) #13, !dbg !1337
  call void @llvm.dbg.declare(metadata ptr %walk_state, metadata !1332, metadata !DIExpression()), !dbg !1338
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 1128) #14, !dbg !1339
  store ptr %call, ptr %walk_state, align 8, !dbg !1340
  %0 = load ptr, ptr %walk_state, align 8, !dbg !1341
  %tobool = icmp ne ptr %0, null, !dbg !1341
  br i1 %tobool, label %if.end, label %if.then, !dbg !1343

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1344

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %walk_state, align 8, !dbg !1346
  %descriptor_type = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 1, !dbg !1347
  store i8 12, ptr %descriptor_type, align 8, !dbg !1348
  %2 = load ptr, ptr %method_desc.addr, align 8, !dbg !1349
  %3 = load ptr, ptr %walk_state, align 8, !dbg !1350
  %method_desc1 = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 37, !dbg !1351
  store ptr %2, ptr %method_desc1, align 8, !dbg !1352
  %4 = load i16, ptr %owner_id.addr, align 2, !dbg !1353
  %5 = load ptr, ptr %walk_state, align 8, !dbg !1354
  %owner_id2 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 7, !dbg !1355
  store i16 %4, ptr %owner_id2, align 8, !dbg !1356
  %6 = load ptr, ptr %origin.addr, align 8, !dbg !1357
  %7 = load ptr, ptr %walk_state, align 8, !dbg !1358
  %origin3 = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 42, !dbg !1359
  store ptr %6, ptr %origin3, align 8, !dbg !1360
  %8 = load ptr, ptr %thread.addr, align 8, !dbg !1361
  %9 = load ptr, ptr %walk_state, align 8, !dbg !1362
  %thread4 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 49, !dbg !1363
  store ptr %8, ptr %thread4, align 8, !dbg !1364
  %10 = load ptr, ptr %origin.addr, align 8, !dbg !1365
  %11 = load ptr, ptr %walk_state, align 8, !dbg !1366
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 21, !dbg !1367
  %start_op = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 5, !dbg !1368
  store ptr %10, ptr %start_op, align 8, !dbg !1369
  %12 = load ptr, ptr %walk_state, align 8, !dbg !1370
  call void @acpi_ds_method_data_init(ptr noundef %12) #14, !dbg !1371
  %13 = load ptr, ptr %thread.addr, align 8, !dbg !1372
  %tobool5 = icmp ne ptr %13, null, !dbg !1372
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !1374

if.then6:                                         ; preds = %if.end
  %14 = load ptr, ptr %walk_state, align 8, !dbg !1375
  %15 = load ptr, ptr %thread.addr, align 8, !dbg !1377
  call void @acpi_ds_push_walk_state(ptr noundef %14, ptr noundef %15) #14, !dbg !1378
  br label %if.end7, !dbg !1379

if.end7:                                          ; preds = %if.then6, %if.end
  %16 = load ptr, ptr %walk_state, align 8, !dbg !1380
  store ptr %16, ptr %retval, align 8, !dbg !1380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1380

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %walk_state) #13, !dbg !1381
  %17 = load ptr, ptr %retval, align 8, !dbg !1381
  ret ptr %17, !dbg !1381
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1382 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1387, metadata !DIExpression()), !dbg !1398
  %0 = load i64, ptr %size.addr, align 8, !dbg !1399
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1388, metadata !DIExpression()), !dbg !1400
  br label %do.body, !dbg !1400

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1390, metadata !DIExpression()), !dbg !1401
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1393, metadata !DIExpression()), !dbg !1401
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1401
  %conv = zext i1 %cmp to i32, !dbg !1401
  store i32 1, ptr %tmp, align 4, !dbg !1401
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1402
  %1 = load i32, ptr %tmp, align 4, !dbg !1401
  %call = call i64 @arch_local_save_flags() #14, !dbg !1402
  store i64 %call, ptr %_flags, align 8, !dbg !1402
  br label %do.cond, !dbg !1402

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1402

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1394, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1397, metadata !DIExpression()), !dbg !1403
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1403
  %conv6 = zext i1 %cmp5 to i32, !dbg !1403
  store i32 1, ptr %tmp7, align 4, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1404
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1404
  %2 = load i32, ptr %tmp7, align 4, !dbg !1403
  %3 = load i64, ptr %_flags, align 8, !dbg !1404
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1404
  store i32 %call9, ptr %tmp8, align 4, !dbg !1404
  %4 = load i32, ptr %tmp8, align 4, !dbg !1404
  store i32 %4, ptr %tmp1, align 4, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1405
  %5 = load i32, ptr %tmp1, align 4, !dbg !1400
  %tobool = icmp ne i32 %5, 0, !dbg !1405
  %6 = zext i1 %tobool to i64, !dbg !1405
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1405
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1406
  ret ptr %call10, !dbg !1407
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1408 dso_local void @acpi_ds_method_data_init(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ds_init_aml_walk(ptr noundef %walk_state, ptr noundef %op, ptr noundef %method_node, ptr noundef %aml_start, i32 noundef %aml_length, ptr noundef %info, i8 noundef zeroext %pass_number) #0 align 16 !dbg !1412 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %method_node.addr = alloca ptr, align 8
  %aml_start.addr = alloca ptr, align 8
  %aml_length.addr = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %pass_number.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %parser_state = alloca ptr, align 8
  %extra_op = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1480, metadata !DIExpression()), !dbg !1491
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1481, metadata !DIExpression()), !dbg !1492
  store ptr %method_node, ptr %method_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %method_node.addr, metadata !1482, metadata !DIExpression()), !dbg !1493
  store ptr %aml_start, ptr %aml_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml_start.addr, metadata !1483, metadata !DIExpression()), !dbg !1494
  store i32 %aml_length, ptr %aml_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %aml_length.addr, metadata !1484, metadata !DIExpression()), !dbg !1495
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1485, metadata !DIExpression()), !dbg !1496
  store i8 %pass_number, ptr %pass_number.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %pass_number.addr, metadata !1486, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1498
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1487, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0(i64 8, ptr %parser_state) #13, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %parser_state, metadata !1488, metadata !DIExpression()), !dbg !1501
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1502
  %parser_state1 = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 21, !dbg !1503
  store ptr %parser_state1, ptr %parser_state, align 8, !dbg !1501
  call void @llvm.lifetime.start.p0(i64 8, ptr %extra_op) #13, !dbg !1504
  call void @llvm.dbg.declare(metadata ptr %extra_op, metadata !1490, metadata !DIExpression()), !dbg !1505
  %1 = load ptr, ptr %aml_start.addr, align 8, !dbg !1506
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1507
  %parser_state2 = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 21, !dbg !1508
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state2, i32 0, i32 4, !dbg !1509
  store ptr %1, ptr %pkg_end, align 8, !dbg !1510
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1511
  %parser_state3 = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 21, !dbg !1512
  %aml_end = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state3, i32 0, i32 2, !dbg !1513
  store ptr %1, ptr %aml_end, align 8, !dbg !1514
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1515
  %parser_state4 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 21, !dbg !1516
  %aml_start5 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state4, i32 0, i32 0, !dbg !1517
  store ptr %1, ptr %aml_start5, align 8, !dbg !1518
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !1519
  %parser_state6 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 21, !dbg !1520
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state6, i32 0, i32 1, !dbg !1521
  store ptr %1, ptr %aml, align 8, !dbg !1522
  %6 = load i32, ptr %aml_length.addr, align 4, !dbg !1523
  %cmp = icmp ne i32 %6, 0, !dbg !1525
  br i1 %cmp, label %if.then, label %if.end, !dbg !1526

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %aml_length.addr, align 4, !dbg !1527
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1529
  %parser_state7 = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 21, !dbg !1530
  %aml_end8 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state7, i32 0, i32 2, !dbg !1531
  %9 = load ptr, ptr %aml_end8, align 8, !dbg !1532
  %idx.ext = zext i32 %7 to i64, !dbg !1532
  %add.ptr = getelementptr i8, ptr %9, i64 %idx.ext, !dbg !1532
  store ptr %add.ptr, ptr %aml_end8, align 8, !dbg !1532
  %10 = load i32, ptr %aml_length.addr, align 4, !dbg !1533
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !1534
  %parser_state9 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 21, !dbg !1535
  %pkg_end10 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state9, i32 0, i32 4, !dbg !1536
  %12 = load ptr, ptr %pkg_end10, align 8, !dbg !1537
  %idx.ext11 = zext i32 %10 to i64, !dbg !1537
  %add.ptr12 = getelementptr i8, ptr %12, i64 %idx.ext11, !dbg !1537
  store ptr %add.ptr12, ptr %pkg_end10, align 8, !dbg !1537
  br label %if.end, !dbg !1538

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !1539
  %next_op = getelementptr inbounds %struct.acpi_walk_state, ptr %13, i32 0, i32 48, !dbg !1540
  store ptr null, ptr %next_op, align 8, !dbg !1541
  %14 = load i8, ptr %pass_number.addr, align 1, !dbg !1542
  %15 = load ptr, ptr %walk_state.addr, align 8, !dbg !1543
  %pass_number13 = getelementptr inbounds %struct.acpi_walk_state, ptr %15, i32 0, i32 12, !dbg !1544
  store i8 %14, ptr %pass_number13, align 2, !dbg !1545
  %16 = load ptr, ptr %info.addr, align 8, !dbg !1546
  %tobool = icmp ne ptr %16, null, !dbg !1546
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !1548

if.then14:                                        ; preds = %if.end
  %17 = load ptr, ptr %info.addr, align 8, !dbg !1549
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %17, i32 0, i32 2, !dbg !1551
  %18 = load ptr, ptr %parameters, align 8, !dbg !1551
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1552
  %params = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 29, !dbg !1553
  store ptr %18, ptr %params, align 8, !dbg !1554
  %20 = load ptr, ptr %info.addr, align 8, !dbg !1555
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, ptr %20, i32 0, i32 7, !dbg !1556
  %21 = load ptr, ptr %walk_state.addr, align 8, !dbg !1557
  %caller_return_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %21, i32 0, i32 31, !dbg !1558
  store ptr %return_object, ptr %caller_return_desc, align 8, !dbg !1559
  br label %if.end15, !dbg !1560

if.end15:                                         ; preds = %if.then14, %if.end
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1561
  %parser_state16 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 21, !dbg !1562
  %23 = load ptr, ptr %op.addr, align 8, !dbg !1563
  %call = call i32 @acpi_ps_init_scope(ptr noundef %parser_state16, ptr noundef %23) #14, !dbg !1564
  store i32 %call, ptr %status, align 4, !dbg !1565
  %24 = load i32, ptr %status, align 4, !dbg !1566
  %tobool17 = icmp ne i32 %24, 0, !dbg !1566
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1568

if.then18:                                        ; preds = %if.end15
  %25 = load i32, ptr %status, align 4, !dbg !1569
  store i32 %25, ptr %retval, align 4, !dbg !1569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1569

if.end19:                                         ; preds = %if.end15
  %26 = load ptr, ptr %method_node.addr, align 8, !dbg !1571
  %tobool20 = icmp ne ptr %26, null, !dbg !1571
  br i1 %tobool20, label %if.then21, label %if.else, !dbg !1573

if.then21:                                        ; preds = %if.end19
  %27 = load ptr, ptr %method_node.addr, align 8, !dbg !1574
  %28 = load ptr, ptr %walk_state.addr, align 8, !dbg !1576
  %parser_state22 = getelementptr inbounds %struct.acpi_walk_state, ptr %28, i32 0, i32 21, !dbg !1577
  %start_node = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state22, i32 0, i32 6, !dbg !1578
  store ptr %27, ptr %start_node, align 8, !dbg !1579
  %29 = load ptr, ptr %walk_state.addr, align 8, !dbg !1580
  %walk_type = getelementptr inbounds %struct.acpi_walk_state, ptr %29, i32 0, i32 2, !dbg !1581
  store i8 1, ptr %walk_type, align 1, !dbg !1582
  %30 = load ptr, ptr %method_node.addr, align 8, !dbg !1583
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !1584
  %method_node23 = getelementptr inbounds %struct.acpi_walk_state, ptr %31, i32 0, i32 38, !dbg !1585
  store ptr %30, ptr %method_node23, align 8, !dbg !1586
  %32 = load ptr, ptr %method_node.addr, align 8, !dbg !1587
  %call24 = call ptr @acpi_ns_get_attached_object(ptr noundef %32) #14, !dbg !1588
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !1589
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %33, i32 0, i32 37, !dbg !1590
  store ptr %call24, ptr %method_desc, align 8, !dbg !1591
  %34 = load ptr, ptr %method_node.addr, align 8, !dbg !1592
  %35 = load ptr, ptr %walk_state.addr, align 8, !dbg !1593
  %call25 = call i32 @acpi_ds_scope_stack_push(ptr noundef %34, i32 noundef 8, ptr noundef %35) #14, !dbg !1594
  store i32 %call25, ptr %status, align 4, !dbg !1595
  %36 = load i32, ptr %status, align 4, !dbg !1596
  %tobool26 = icmp ne i32 %36, 0, !dbg !1596
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1598

if.then27:                                        ; preds = %if.then21
  %37 = load i32, ptr %status, align 4, !dbg !1599
  store i32 %37, ptr %retval, align 4, !dbg !1599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1599

if.end28:                                         ; preds = %if.then21
  %38 = load ptr, ptr %walk_state.addr, align 8, !dbg !1601
  %params29 = getelementptr inbounds %struct.acpi_walk_state, ptr %38, i32 0, i32 29, !dbg !1602
  %39 = load ptr, ptr %params29, align 8, !dbg !1602
  %40 = load ptr, ptr %walk_state.addr, align 8, !dbg !1603
  %call30 = call i32 @acpi_ds_method_data_init_args(ptr noundef %39, i32 noundef 7, ptr noundef %40) #14, !dbg !1604
  store i32 %call30, ptr %status, align 4, !dbg !1605
  %41 = load i32, ptr %status, align 4, !dbg !1606
  %tobool31 = icmp ne i32 %41, 0, !dbg !1606
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1608

if.then32:                                        ; preds = %if.end28
  %42 = load i32, ptr %status, align 4, !dbg !1609
  store i32 %42, ptr %retval, align 4, !dbg !1609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1609

if.end33:                                         ; preds = %if.end28
  br label %if.end53, !dbg !1611

if.else:                                          ; preds = %if.end19
  %43 = load ptr, ptr %parser_state, align 8, !dbg !1612
  %start_op = getelementptr inbounds %struct.acpi_parse_state, ptr %43, i32 0, i32 5, !dbg !1614
  %44 = load ptr, ptr %start_op, align 8, !dbg !1614
  store ptr %44, ptr %extra_op, align 8, !dbg !1615
  br label %while.cond, !dbg !1616

while.cond:                                       ; preds = %while.body, %if.else
  %45 = load ptr, ptr %extra_op, align 8, !dbg !1617
  %tobool34 = icmp ne ptr %45, null, !dbg !1617
  br i1 %tobool34, label %land.rhs, label %land.end, !dbg !1618

land.rhs:                                         ; preds = %while.cond
  %46 = load ptr, ptr %extra_op, align 8, !dbg !1619
  %node = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %46, i32 0, i32 6, !dbg !1620
  %47 = load ptr, ptr %node, align 8, !dbg !1620
  %tobool35 = icmp ne ptr %47, null, !dbg !1621
  %lnot = xor i1 %tobool35, true, !dbg !1621
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %48 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1622
  br i1 %48, label %while.body, label %while.end, !dbg !1616

while.body:                                       ; preds = %land.end
  %49 = load ptr, ptr %extra_op, align 8, !dbg !1623
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %49, i32 0, i32 0, !dbg !1625
  %50 = load ptr, ptr %parent, align 8, !dbg !1625
  store ptr %50, ptr %extra_op, align 8, !dbg !1626
  br label %while.cond, !dbg !1616, !llvm.loop !1627

while.end:                                        ; preds = %land.end
  %51 = load ptr, ptr %extra_op, align 8, !dbg !1629
  %tobool36 = icmp ne ptr %51, null, !dbg !1629
  br i1 %tobool36, label %if.else39, label %if.then37, !dbg !1631

if.then37:                                        ; preds = %while.end
  %52 = load ptr, ptr %parser_state, align 8, !dbg !1632
  %start_node38 = getelementptr inbounds %struct.acpi_parse_state, ptr %52, i32 0, i32 6, !dbg !1634
  store ptr null, ptr %start_node38, align 8, !dbg !1635
  br label %if.end42, !dbg !1636

if.else39:                                        ; preds = %while.end
  %53 = load ptr, ptr %extra_op, align 8, !dbg !1637
  %node40 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %53, i32 0, i32 6, !dbg !1639
  %54 = load ptr, ptr %node40, align 8, !dbg !1639
  %55 = load ptr, ptr %parser_state, align 8, !dbg !1640
  %start_node41 = getelementptr inbounds %struct.acpi_parse_state, ptr %55, i32 0, i32 6, !dbg !1641
  store ptr %54, ptr %start_node41, align 8, !dbg !1642
  br label %if.end42

if.end42:                                         ; preds = %if.else39, %if.then37
  %56 = load ptr, ptr %parser_state, align 8, !dbg !1643
  %start_node43 = getelementptr inbounds %struct.acpi_parse_state, ptr %56, i32 0, i32 6, !dbg !1645
  %57 = load ptr, ptr %start_node43, align 8, !dbg !1645
  %tobool44 = icmp ne ptr %57, null, !dbg !1643
  br i1 %tobool44, label %if.then45, label %if.end52, !dbg !1646

if.then45:                                        ; preds = %if.end42
  %58 = load ptr, ptr %parser_state, align 8, !dbg !1647
  %start_node46 = getelementptr inbounds %struct.acpi_parse_state, ptr %58, i32 0, i32 6, !dbg !1649
  %59 = load ptr, ptr %start_node46, align 8, !dbg !1649
  %60 = load ptr, ptr %parser_state, align 8, !dbg !1650
  %start_node47 = getelementptr inbounds %struct.acpi_parse_state, ptr %60, i32 0, i32 6, !dbg !1651
  %61 = load ptr, ptr %start_node47, align 8, !dbg !1651
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %61, i32 0, i32 2, !dbg !1652
  %62 = load i8, ptr %type, align 1, !dbg !1652
  %conv = zext i8 %62 to i32, !dbg !1650
  %63 = load ptr, ptr %walk_state.addr, align 8, !dbg !1653
  %call48 = call i32 @acpi_ds_scope_stack_push(ptr noundef %59, i32 noundef %conv, ptr noundef %63) #14, !dbg !1654
  store i32 %call48, ptr %status, align 4, !dbg !1655
  %64 = load i32, ptr %status, align 4, !dbg !1656
  %tobool49 = icmp ne i32 %64, 0, !dbg !1656
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !1658

if.then50:                                        ; preds = %if.then45
  %65 = load i32, ptr %status, align 4, !dbg !1659
  store i32 %65, ptr %retval, align 4, !dbg !1659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1659

if.end51:                                         ; preds = %if.then45
  br label %if.end52, !dbg !1661

if.end52:                                         ; preds = %if.end51, %if.end42
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end33
  %66 = load ptr, ptr %walk_state.addr, align 8, !dbg !1662
  %67 = load i8, ptr %pass_number.addr, align 1, !dbg !1663
  %conv54 = zext i8 %67 to i32, !dbg !1663
  %call55 = call i32 @acpi_ds_init_callbacks(ptr noundef %66, i32 noundef %conv54) #14, !dbg !1664
  store i32 %call55, ptr %status, align 4, !dbg !1665
  %68 = load i32, ptr %status, align 4, !dbg !1666
  store i32 %68, ptr %retval, align 4, !dbg !1666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1666

cleanup:                                          ; preds = %if.end53, %if.then50, %if.then32, %if.then27, %if.then18
  call void @llvm.lifetime.end.p0(i64 8, ptr %extra_op) #13, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 8, ptr %parser_state) #13, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1667
  %69 = load i32, ptr %retval, align 4, !dbg !1667
  ret i32 %69, !dbg !1667
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1668 dso_local i32 @acpi_ps_init_scope(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1672 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1676 dso_local i32 @acpi_ds_scope_stack_push(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1680 dso_local i32 @acpi_ds_method_data_init_args(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1683 dso_local i32 @acpi_ds_init_callbacks(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ds_delete_walk_state(ptr noundef %walk_state) #0 align 16 !dbg !1686 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1688, metadata !DIExpression()), !dbg !1690
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #13, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %state, metadata !1689, metadata !DIExpression()), !dbg !1692
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1693
  %tobool = icmp ne ptr %0, null, !dbg !1693
  br i1 %tobool, label %if.end, label %if.then, !dbg !1695

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1696

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1698
  %descriptor_type = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 1, !dbg !1700
  %2 = load i8, ptr %descriptor_type, align 8, !dbg !1700
  %conv = zext i8 %2 to i32, !dbg !1698
  %cmp = icmp ne i32 %conv, 12, !dbg !1701
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1702

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1703
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 686, ptr noundef @.str.11, ptr noundef %3) #14, !dbg !1703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1705

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1706
  %parser_state = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 21, !dbg !1708
  %scope = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 7, !dbg !1709
  %5 = load ptr, ptr %scope, align 8, !dbg !1709
  %tobool4 = icmp ne ptr %5, null, !dbg !1706
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !1710

if.then5:                                         ; preds = %if.end3
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1711
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 694, ptr noundef @.str.12, ptr noundef %6) #14, !dbg !1711
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !1713
  %parser_state6 = getelementptr inbounds %struct.acpi_walk_state, ptr %7, i32 0, i32 21, !dbg !1714
  call void @acpi_ps_cleanup_scope(ptr noundef %parser_state6) #14, !dbg !1715
  br label %if.end7, !dbg !1716

if.end7:                                          ; preds = %if.then5, %if.end3
  br label %while.cond, !dbg !1717

while.cond:                                       ; preds = %while.body, %if.end7
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1718
  %control_state = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 32, !dbg !1719
  %9 = load ptr, ptr %control_state, align 8, !dbg !1719
  %tobool8 = icmp ne ptr %9, null, !dbg !1717
  br i1 %tobool8, label %while.body, label %while.end, !dbg !1717

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !1720
  %control_state9 = getelementptr inbounds %struct.acpi_walk_state, ptr %10, i32 0, i32 32, !dbg !1722
  %11 = load ptr, ptr %control_state9, align 8, !dbg !1722
  store ptr %11, ptr %state, align 8, !dbg !1723
  %12 = load ptr, ptr %state, align 8, !dbg !1724
  %next = getelementptr inbounds %struct.acpi_common_state, ptr %12, i32 0, i32 0, !dbg !1725
  %13 = load ptr, ptr %next, align 8, !dbg !1725
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1726
  %control_state10 = getelementptr inbounds %struct.acpi_walk_state, ptr %14, i32 0, i32 32, !dbg !1727
  store ptr %13, ptr %control_state10, align 8, !dbg !1728
  %15 = load ptr, ptr %state, align 8, !dbg !1729
  call void @acpi_ut_delete_generic_state(ptr noundef %15) #14, !dbg !1730
  br label %while.cond, !dbg !1717, !llvm.loop !1731

while.end:                                        ; preds = %while.cond
  br label %while.cond11, !dbg !1733

while.cond11:                                     ; preds = %while.body13, %while.end
  %16 = load ptr, ptr %walk_state.addr, align 8, !dbg !1734
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %16, i32 0, i32 46, !dbg !1735
  %17 = load ptr, ptr %scope_info, align 8, !dbg !1735
  %tobool12 = icmp ne ptr %17, null, !dbg !1733
  br i1 %tobool12, label %while.body13, label %while.end17, !dbg !1733

while.body13:                                     ; preds = %while.cond11
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !1736
  %scope_info14 = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 46, !dbg !1738
  %19 = load ptr, ptr %scope_info14, align 8, !dbg !1738
  store ptr %19, ptr %state, align 8, !dbg !1739
  %20 = load ptr, ptr %state, align 8, !dbg !1740
  %next15 = getelementptr inbounds %struct.acpi_common_state, ptr %20, i32 0, i32 0, !dbg !1741
  %21 = load ptr, ptr %next15, align 8, !dbg !1741
  %22 = load ptr, ptr %walk_state.addr, align 8, !dbg !1742
  %scope_info16 = getelementptr inbounds %struct.acpi_walk_state, ptr %22, i32 0, i32 46, !dbg !1743
  store ptr %21, ptr %scope_info16, align 8, !dbg !1744
  %23 = load ptr, ptr %state, align 8, !dbg !1745
  call void @acpi_ut_delete_generic_state(ptr noundef %23) #14, !dbg !1746
  br label %while.cond11, !dbg !1733, !llvm.loop !1747

while.end17:                                      ; preds = %while.cond11
  br label %while.cond18, !dbg !1749

while.cond18:                                     ; preds = %while.body20, %while.end17
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !1750
  %results = getelementptr inbounds %struct.acpi_walk_state, ptr %24, i32 0, i32 44, !dbg !1751
  %25 = load ptr, ptr %results, align 8, !dbg !1751
  %tobool19 = icmp ne ptr %25, null, !dbg !1749
  br i1 %tobool19, label %while.body20, label %while.end24, !dbg !1749

while.body20:                                     ; preds = %while.cond18
  %26 = load ptr, ptr %walk_state.addr, align 8, !dbg !1752
  %results21 = getelementptr inbounds %struct.acpi_walk_state, ptr %26, i32 0, i32 44, !dbg !1754
  %27 = load ptr, ptr %results21, align 8, !dbg !1754
  store ptr %27, ptr %state, align 8, !dbg !1755
  %28 = load ptr, ptr %state, align 8, !dbg !1756
  %next22 = getelementptr inbounds %struct.acpi_common_state, ptr %28, i32 0, i32 0, !dbg !1757
  %29 = load ptr, ptr %next22, align 8, !dbg !1757
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !1758
  %results23 = getelementptr inbounds %struct.acpi_walk_state, ptr %30, i32 0, i32 44, !dbg !1759
  store ptr %29, ptr %results23, align 8, !dbg !1760
  %31 = load ptr, ptr %state, align 8, !dbg !1761
  call void @acpi_ut_delete_generic_state(ptr noundef %31) #14, !dbg !1762
  br label %while.cond18, !dbg !1749, !llvm.loop !1763

while.end24:                                      ; preds = %while.cond18
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !1765
  call void @acpi_os_free(ptr noundef %32) #14, !dbg !1765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1766

cleanup:                                          ; preds = %while.end24, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #13, !dbg !1767
  ret void, !dbg !1767
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1768 dso_local void @acpi_ps_cleanup_scope(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1771 dso_local void @acpi_ut_delete_generic_state(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1774 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1778, metadata !DIExpression()), !dbg !1779
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1780
  call void @kfree(ptr noundef %0) #14, !dbg !1781
  ret void, !dbg !1782
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1783 dso_local ptr @acpi_ut_create_generic_state() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1786 dso_local void @acpi_ut_push_generic_state(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1790 dso_local ptr @acpi_ut_pop_generic_state(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1793 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1801, metadata !DIExpression()), !dbg !1803
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1802, metadata !DIExpression()), !dbg !1804
  %0 = load i64, ptr %size.addr, align 8, !dbg !1805
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1806
  %or = or i32 %1, 256, !dbg !1807
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1808
  ret ptr %call, !dbg !1809
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1810 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1814
  ret i64 %call, !dbg !1815
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1816 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1820, metadata !DIExpression()), !dbg !1821
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1822
  %and = and i64 %0, 512, !dbg !1823
  %tobool = icmp ne i64 %and, 0, !dbg !1824
  %lnot = xor i1 %tobool, true, !dbg !1824
  %lnot.ext = zext i1 %lnot to i32, !dbg !1824
  ret i32 %lnot.ext, !dbg !1825
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1826 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1828, metadata !DIExpression()), !dbg !1833
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1829, metadata !DIExpression()), !dbg !1834
  %0 = load i64, ptr %size.addr, align 8, !dbg !1835
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1836
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1837

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1838
  %tobool = icmp ne i64 %2, 0, !dbg !1838
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1839

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1840
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1830, metadata !DIExpression()), !dbg !1841
  %3 = load i64, ptr %size.addr, align 8, !dbg !1842
  %cmp = icmp ugt i64 %3, 8192, !dbg !1844
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1845

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1846
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1847
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1848
  store ptr %call, ptr %retval, align 8, !dbg !1849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1849

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1850
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1850
  store i32 %call2, ptr %index, align 4, !dbg !1851
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1852
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1853
  %9 = ptrtoint ptr %8 to i64, !dbg !1853
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1854
  %idxprom = zext i32 %call3 to i64, !dbg !1855
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1855
  %10 = load i32, ptr %index, align 4, !dbg !1856
  %idxprom4 = zext i32 %10 to i64, !dbg !1855
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1855
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1855
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1857
  %13 = load i64, ptr %size.addr, align 8, !dbg !1858
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1859
  store ptr %call6, ptr %retval, align 8, !dbg !1860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1860

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1861
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1862
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1863
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1864
  store ptr %call8, ptr %retval, align 8, !dbg !1865
  br label %return, !dbg !1865

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1866
  ret ptr %16, !dbg !1866
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1867 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1868 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1874, metadata !DIExpression()), !dbg !1876
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1875, metadata !DIExpression()), !dbg !1877
  %0 = load i64, ptr %size.addr, align 8, !dbg !1878
  %tobool = icmp ne i64 %0, 0, !dbg !1878
  br i1 %tobool, label %if.end, label %if.then, !dbg !1880

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1881
  br label %return, !dbg !1881

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1882
  %cmp = icmp ule i64 %1, 8, !dbg !1884
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1885

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1886
  br label %return, !dbg !1886

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1887
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1889
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1890

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1891
  %cmp4 = icmp ule i64 %3, 96, !dbg !1892
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1893

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1894
  br label %return, !dbg !1894

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1895
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1897
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1898

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1899
  %cmp9 = icmp ule i64 %5, 192, !dbg !1900
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1901

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1902
  br label %return, !dbg !1902

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1903
  %cmp12 = icmp ule i64 %6, 8, !dbg !1905
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1906

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1907
  br label %return, !dbg !1907

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1908
  %cmp15 = icmp ule i64 %7, 16, !dbg !1910
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1911

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1912
  br label %return, !dbg !1912

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1913
  %cmp18 = icmp ule i64 %8, 32, !dbg !1915
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1916

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1917
  br label %return, !dbg !1917

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1918
  %cmp21 = icmp ule i64 %9, 64, !dbg !1920
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1921

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1922
  br label %return, !dbg !1922

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1923
  %cmp24 = icmp ule i64 %10, 128, !dbg !1925
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1926

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1927
  br label %return, !dbg !1927

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1928
  %cmp27 = icmp ule i64 %11, 256, !dbg !1930
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1931

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1932
  br label %return, !dbg !1932

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1933
  %cmp30 = icmp ule i64 %12, 512, !dbg !1935
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1936

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1937
  br label %return, !dbg !1937

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1938
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1940
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1941

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1942
  br label %return, !dbg !1942

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1943
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1945
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1946

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1947
  br label %return, !dbg !1947

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1948
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1950
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1951

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1952
  br label %return, !dbg !1952

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1953
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1955
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1956

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1957
  br label %return, !dbg !1957

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1958
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1960
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1961

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1962
  br label %return, !dbg !1962

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1963
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1965
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1966

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1967
  br label %return, !dbg !1967

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1968
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1970
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1971

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1972
  br label %return, !dbg !1972

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1973
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1975
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1976

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1977
  br label %return, !dbg !1977

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1978
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1980
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1981

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1982
  br label %return, !dbg !1982

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1983
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1985
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1986

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1987
  br label %return, !dbg !1987

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1988
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1990
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1991

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1992
  br label %return, !dbg !1992

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1993
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1995
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1996

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1997
  br label %return, !dbg !1997

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1998, !range !2000, !noundef !2001
  %tobool69 = trunc i8 %25 to i1, !dbg !1998
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2002

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2003

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !2004, !srcloc !2007
  unreachable, !dbg !2004

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2008

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2009

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2010

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2012

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2010

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.15, i32 480, i32 0, i64 12) #13, !dbg !2014, !srcloc !2016
  br label %do.end75, !dbg !2014

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2010

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2017
  br label %return, !dbg !2017

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2018
  ret i32 %26, !dbg !2018
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2019 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !2025 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2029, metadata !DIExpression()), !dbg !2031
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2030, metadata !DIExpression()), !dbg !2032
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2033
  %and = and i32 %0, 17, !dbg !2033
  %cmp = icmp eq i32 %and, 0, !dbg !2033
  %lnot = xor i1 %cmp, true, !dbg !2033
  %lnot1 = xor i1 %lnot, true, !dbg !2033
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2033
  %conv = sext i32 %lnot.ext to i64, !dbg !2033
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2033
  %tobool = icmp ne i64 %expval, 0, !dbg !2033
  br i1 %tobool, label %if.then, label %if.end, !dbg !2035

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2036
  br label %return, !dbg !2036

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2037
  %and2 = and i32 %1, 1, !dbg !2039
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2039
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2040

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2041
  br label %return, !dbg !2041

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2042
  br label %return, !dbg !2042

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2044
  ret i32 %2, !dbg !2044
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2045 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2046 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !2049 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !2054, !srcloc !2055
  %0 = load i64, ptr %flags, align 8, !dbg !2056
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !2057
  ret i64 %0, !dbg !2058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2059 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !106, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.dswstate.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22dswstate\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/dswstate.ll drivers/acpi/acpica/dswstate.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !39, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/dswstate.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb519cf358e84afc253d618ebb88f3cd")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !24, !28, !31, !35, !36, !38}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !25, line: 20, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !27, line: 26, baseType: !30)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !34)
!34 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !{!40, !46, !51, !56, !61, !66, !71, !73, !75, !80, !85, !90, !92, !0, !97, !102, !104}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 216, elements: !44)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !{!45}
!45 = !DISubrange(count: 27)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 264, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 33)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 32)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 352, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 44)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 168, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 21)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 130, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 272, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 34)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !48, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !68, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 232, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 29)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 283, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 376, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 47)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 400, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 50)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 686, type: !77, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !3, line: 694, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 248, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 31)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 312, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 39)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !94, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !63, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 72, elements: !108)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!108 = !{!109}
!109 = !DISubrange(count: 9)
!110 = !{i32 7, !"Dwarf Version", i32 5}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 8, !"cf-protection-branch", i32 1}
!114 = !{i32 4, !"function_return_thunk_extern", i32 1}
!115 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!116 = !{i32 1, !"Code Model", i32 2}
!117 = !{i32 1, !"override-stack-alignment", i32 8}
!118 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!119 = distinct !DISubprogram(name: "acpi_ds_result_pop", scope: !3, file: !3, line: 38, type: !120, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !885)
!120 = !DISubroutineType(types: !121)
!121 = !{!22, !122, !245}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !125, line: 369, size: 576, elements: !126)
!125 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!126 = !{!127, !141, !154, !165, !201, !214, !223, !534, !551, !567, !580, !658, !670, !684, !694, !712, !734, !753, !772, !791, !804, !831, !848, !861, !875, !884}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !124, file: !125, line: 370, baseType: !128, size: 128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !125, line: 73, size: 128, elements: !129)
!129 = !{!130, !131, !135, !136, !140}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !128, file: !125, line: 74, baseType: !123, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !125, line: 74, baseType: !132, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !134)
!134 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !125, line: 74, baseType: !132, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !128, file: !125, line: 74, baseType: !137, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !139)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !125, line: 74, baseType: !132, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !124, file: !125, line: 371, baseType: !142, size: 192)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !125, line: 76, size: 192, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !153}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !142, file: !125, line: 77, baseType: !123, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !125, line: 77, baseType: !132, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !125, line: 77, baseType: !132, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !142, file: !125, line: 77, baseType: !137, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !125, line: 77, baseType: !132, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !142, file: !125, line: 77, baseType: !150, size: 24, offset: 104)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 24, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 3)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !142, file: !125, line: 78, baseType: !32, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !124, file: !125, line: 372, baseType: !155, size: 256)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !125, line: 93, size: 256, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162, !164}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !155, file: !125, line: 94, baseType: !123, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !155, file: !125, line: 94, baseType: !132, size: 8, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !155, file: !125, line: 94, baseType: !132, size: 8, offset: 72)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !155, file: !125, line: 94, baseType: !137, size: 16, offset: 80)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !155, file: !125, line: 94, baseType: !132, size: 8, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !155, file: !125, line: 94, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !155, file: !125, line: 94, baseType: !24, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !124, file: !125, line: 373, baseType: !166, size: 384)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !125, line: 97, size: 384, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !175, !176, !177, !178}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !166, file: !125, line: 98, baseType: !123, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !166, file: !125, line: 98, baseType: !132, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !125, line: 98, baseType: !132, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !166, file: !125, line: 98, baseType: !137, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !125, line: 98, baseType: !132, size: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !166, file: !125, line: 98, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !166, file: !125, line: 98, baseType: !24, size: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !166, file: !125, line: 99, baseType: !24, size: 32, offset: 224)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !166, file: !125, line: 100, baseType: !174, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !166, file: !125, line: 101, baseType: !179, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !181, line: 133, size: 384, elements: !182)
!181 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!182 = !{!183, !184, !185, !186, !187, !196, !197, !198, !199}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !180, file: !181, line: 134, baseType: !123, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !180, file: !181, line: 135, baseType: !132, size: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !180, file: !181, line: 136, baseType: !132, size: 8, offset: 72)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !180, file: !181, line: 137, baseType: !137, size: 16, offset: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !180, file: !181, line: 138, baseType: !188, size: 32, offset: 96)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !189, line: 328, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !188, file: !189, line: 329, baseType: !24, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !188, file: !189, line: 330, baseType: !193, size: 32)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 4)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !180, file: !181, line: 139, baseType: !179, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !180, file: !181, line: 140, baseType: !179, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !180, file: !181, line: 141, baseType: !179, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !180, file: !181, line: 142, baseType: !200, size: 16, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !23, line: 445, baseType: !137)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !124, file: !125, line: 374, baseType: !202, size: 384)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !125, line: 104, size: 384, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !202, file: !125, line: 105, baseType: !123, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !125, line: 105, baseType: !132, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !202, file: !125, line: 105, baseType: !132, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !202, file: !125, line: 105, baseType: !137, size: 16, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !125, line: 105, baseType: !132, size: 8, offset: 96)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !202, file: !125, line: 105, baseType: !179, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !202, file: !125, line: 106, baseType: !122, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !202, file: !125, line: 107, baseType: !174, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !202, file: !125, line: 108, baseType: !24, size: 32, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !202, file: !125, line: 109, baseType: !24, size: 32, offset: 352)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !124, file: !125, line: 375, baseType: !215, size: 192)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !125, line: 118, size: 192, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !215, file: !125, line: 119, baseType: !123, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !125, line: 119, baseType: !132, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !215, file: !125, line: 119, baseType: !132, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !215, file: !125, line: 119, baseType: !137, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !125, line: 119, baseType: !132, size: 8, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !215, file: !125, line: 119, baseType: !35, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !124, file: !125, line: 376, baseType: !224, size: 448)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !125, line: 144, size: 448, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !531, !532, !533}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !224, file: !125, line: 145, baseType: !123, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !224, file: !125, line: 145, baseType: !132, size: 8, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !224, file: !125, line: 145, baseType: !132, size: 8, offset: 72)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !224, file: !125, line: 145, baseType: !137, size: 16, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !125, line: 145, baseType: !132, size: 8, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !224, file: !125, line: 145, baseType: !132, size: 8, offset: 104)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !224, file: !125, line: 146, baseType: !132, size: 8, offset: 112)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !224, file: !125, line: 147, baseType: !132, size: 8, offset: 120)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !224, file: !125, line: 148, baseType: !123, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !125, line: 149, baseType: !123, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !224, file: !125, line: 150, baseType: !174, size: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !224, file: !125, line: 154, baseType: !238, size: 64, offset: 320)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !125, line: 151, size: 64, elements: !239)
!239 = !{!240, !530}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !238, file: !125, line: 152, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !181, line: 248, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!22, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !247, line: 37, size: 9024, elements: !248)
!247 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !478, !479, !480, !481, !482, !486, !488, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !513, !514, !515, !516, !517, !518, !519, !520, !522, !528}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !247, line: 38, baseType: !245, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !246, file: !247, line: 39, baseType: !132, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !246, file: !247, line: 40, baseType: !132, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !246, file: !247, line: 41, baseType: !137, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !246, file: !247, line: 42, baseType: !132, size: 8, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !246, file: !247, line: 43, baseType: !132, size: 8, offset: 104)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !246, file: !247, line: 44, baseType: !132, size: 8, offset: 112)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !246, file: !247, line: 45, baseType: !200, size: 16, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !246, file: !247, line: 46, baseType: !132, size: 8, offset: 144)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !246, file: !247, line: 47, baseType: !132, size: 8, offset: 152)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !246, file: !247, line: 48, baseType: !132, size: 8, offset: 160)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !246, file: !247, line: 49, baseType: !132, size: 8, offset: 168)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !246, file: !247, line: 50, baseType: !132, size: 8, offset: 176)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !246, file: !247, line: 51, baseType: !132, size: 8, offset: 184)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !246, file: !247, line: 52, baseType: !132, size: 8, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !246, file: !247, line: 53, baseType: !132, size: 8, offset: 200)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !246, file: !247, line: 54, baseType: !174, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !246, file: !247, line: 55, baseType: !24, size: 32, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !246, file: !247, line: 56, baseType: !24, size: 32, offset: 352)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !246, file: !247, line: 57, baseType: !24, size: 32, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !246, file: !247, line: 58, baseType: !24, size: 32, offset: 416)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !246, file: !247, line: 60, baseType: !271, size: 640, offset: 448)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !181, line: 909, size: 640, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !359, !360, !476, !477}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !271, file: !181, line: 910, baseType: !174, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !271, file: !181, line: 911, baseType: !174, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !271, file: !181, line: 912, baseType: !174, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !271, file: !181, line: 913, baseType: !174, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !271, file: !181, line: 914, baseType: !174, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !271, file: !181, line: 915, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !181, line: 891, size: 1600, elements: !281)
!281 = !{!282, !302, !318}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !280, file: !181, line: 892, baseType: !283, size: 448)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !181, line: 844, size: 448, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !301}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !283, file: !181, line: 845, baseType: !279, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !181, line: 845, baseType: !132, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !181, line: 845, baseType: !132, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !283, file: !181, line: 845, baseType: !137, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !283, file: !181, line: 845, baseType: !174, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !181, line: 845, baseType: !279, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !283, file: !181, line: 845, baseType: !179, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !181, line: 845, baseType: !293, size: 64, offset: 320)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !181, line: 732, size: 64, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !293, file: !181, line: 733, baseType: !32, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !293, file: !181, line: 734, baseType: !24, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !293, file: !181, line: 735, baseType: !163, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !293, file: !181, line: 736, baseType: !174, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !181, line: 737, baseType: !163, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !293, file: !181, line: 738, baseType: !279, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !283, file: !181, line: 845, baseType: !132, size: 8, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !280, file: !181, line: 893, baseType: !303, size: 640)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !181, line: 851, size: 640, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !303, file: !181, line: 852, baseType: !279, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !181, line: 852, baseType: !132, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !181, line: 852, baseType: !132, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !303, file: !181, line: 852, baseType: !137, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !303, file: !181, line: 852, baseType: !174, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !181, line: 852, baseType: !279, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !303, file: !181, line: 852, baseType: !179, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !181, line: 852, baseType: !293, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !303, file: !181, line: 852, baseType: !132, size: 8, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !303, file: !181, line: 852, baseType: !163, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !303, file: !181, line: 853, baseType: !174, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !303, file: !181, line: 854, baseType: !24, size: 32, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !181, line: 855, baseType: !24, size: 32, offset: 608)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !280, file: !181, line: 894, baseType: !319, size: 1600)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !181, line: 862, size: 1600, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !319, file: !181, line: 863, baseType: !279, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !181, line: 863, baseType: !132, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !181, line: 863, baseType: !132, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !319, file: !181, line: 863, baseType: !137, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !319, file: !181, line: 863, baseType: !174, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !181, line: 863, baseType: !279, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !319, file: !181, line: 863, baseType: !179, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !181, line: 863, baseType: !293, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !319, file: !181, line: 863, baseType: !132, size: 8, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !319, file: !181, line: 863, baseType: !279, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !319, file: !181, line: 864, baseType: !279, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !319, file: !181, line: 865, baseType: !163, size: 64, offset: 576)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !319, file: !181, line: 866, baseType: !132, size: 8, offset: 640)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !319, file: !181, line: 867, baseType: !163, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !319, file: !181, line: 868, baseType: !163, size: 64, offset: 768)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !319, file: !181, line: 869, baseType: !163, size: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !319, file: !181, line: 870, baseType: !193, size: 32, offset: 896)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !319, file: !181, line: 871, baseType: !24, size: 32, offset: 928)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !319, file: !181, line: 872, baseType: !24, size: 32, offset: 960)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !319, file: !181, line: 873, baseType: !24, size: 32, offset: 992)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !319, file: !181, line: 874, baseType: !24, size: 32, offset: 1024)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !319, file: !181, line: 875, baseType: !24, size: 32, offset: 1056)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !319, file: !181, line: 876, baseType: !24, size: 32, offset: 1088)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !319, file: !181, line: 877, baseType: !24, size: 32, offset: 1120)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !319, file: !181, line: 878, baseType: !24, size: 32, offset: 1152)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !319, file: !181, line: 879, baseType: !24, size: 32, offset: 1184)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !319, file: !181, line: 880, baseType: !24, size: 32, offset: 1216)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !319, file: !181, line: 881, baseType: !24, size: 32, offset: 1248)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !319, file: !181, line: 882, baseType: !24, size: 32, offset: 1280)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !319, file: !181, line: 883, baseType: !24, size: 32, offset: 1312)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !319, file: !181, line: 884, baseType: !137, size: 16, offset: 1344)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !319, file: !181, line: 885, baseType: !132, size: 8, offset: 1360)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !319, file: !181, line: 886, baseType: !132, size: 8, offset: 1368)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !319, file: !181, line: 887, baseType: !132, size: 8, offset: 1376)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !319, file: !181, line: 888, baseType: !356, size: 160, offset: 1384)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !357)
!357 = !{!358}
!358 = !DISubrange(count: 20)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !271, file: !181, line: 916, baseType: !179, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !271, file: !181, line: 917, baseType: !361, size: 64, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !181, line: 679, size: 640, elements: !363)
!363 = !{!364, !372, !385, !394, !403, !416, !430, !442, !454}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !362, file: !181, line: 680, baseType: !365, size: 128)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !181, line: 575, size: 128, elements: !366)
!366 = !{!367, !368, !369, !370, !371}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !181, line: 576, baseType: !35, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !365, file: !181, line: 576, baseType: !132, size: 8, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !181, line: 576, baseType: !132, size: 8, offset: 72)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !181, line: 576, baseType: !137, size: 16, offset: 80)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !365, file: !181, line: 576, baseType: !137, size: 16, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !362, file: !181, line: 681, baseType: !373, size: 384)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !181, line: 604, size: 384, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !181, line: 605, baseType: !35, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !373, file: !181, line: 605, baseType: !132, size: 8, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !181, line: 605, baseType: !132, size: 8, offset: 72)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !373, file: !181, line: 605, baseType: !137, size: 16, offset: 80)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !181, line: 605, baseType: !137, size: 16, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !373, file: !181, line: 606, baseType: !137, size: 16, offset: 112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !373, file: !181, line: 607, baseType: !279, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !373, file: !181, line: 608, baseType: !174, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !373, file: !181, line: 609, baseType: !174, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !373, file: !181, line: 610, baseType: !32, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !362, file: !181, line: 682, baseType: !386, size: 192)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !181, line: 582, size: 192, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !181, line: 583, baseType: !35, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !181, line: 583, baseType: !132, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !181, line: 583, baseType: !132, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !386, file: !181, line: 583, baseType: !137, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !386, file: !181, line: 583, baseType: !137, size: 16, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !386, file: !181, line: 584, baseType: !123, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !362, file: !181, line: 683, baseType: !395, size: 192)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !181, line: 616, size: 192, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !181, line: 617, baseType: !35, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !395, file: !181, line: 617, baseType: !132, size: 8, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !181, line: 617, baseType: !132, size: 8, offset: 72)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !395, file: !181, line: 617, baseType: !137, size: 16, offset: 80)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !395, file: !181, line: 617, baseType: !137, size: 16, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !395, file: !181, line: 618, baseType: !179, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !362, file: !181, line: 684, baseType: !404, size: 448)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !181, line: 621, size: 448, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !404, file: !181, line: 622, baseType: !35, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !404, file: !181, line: 622, baseType: !132, size: 8, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !181, line: 622, baseType: !132, size: 8, offset: 72)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !404, file: !181, line: 622, baseType: !137, size: 16, offset: 80)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !404, file: !181, line: 622, baseType: !137, size: 16, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !404, file: !181, line: 623, baseType: !24, size: 32, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !404, file: !181, line: 624, baseType: !279, size: 64, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !404, file: !181, line: 625, baseType: !174, size: 64, offset: 256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !404, file: !181, line: 626, baseType: !174, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !404, file: !181, line: 627, baseType: !24, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !362, file: !181, line: 685, baseType: !417, size: 512)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !181, line: 590, size: 512, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !181, line: 591, baseType: !35, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !417, file: !181, line: 591, baseType: !132, size: 8, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !181, line: 591, baseType: !132, size: 8, offset: 72)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !417, file: !181, line: 591, baseType: !137, size: 16, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !417, file: !181, line: 591, baseType: !137, size: 16, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !417, file: !181, line: 592, baseType: !24, size: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !417, file: !181, line: 593, baseType: !123, size: 64, offset: 192)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !417, file: !181, line: 594, baseType: !123, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !417, file: !181, line: 595, baseType: !245, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !417, file: !181, line: 596, baseType: !35, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !417, file: !181, line: 597, baseType: !24, size: 32, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !362, file: !181, line: 686, baseType: !431, size: 320)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !181, line: 634, size: 320, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !439, !440, !441}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !431, file: !181, line: 635, baseType: !35, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !431, file: !181, line: 635, baseType: !132, size: 8, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !181, line: 635, baseType: !132, size: 8, offset: 72)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !431, file: !181, line: 635, baseType: !137, size: 16, offset: 80)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !431, file: !181, line: 635, baseType: !137, size: 16, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !431, file: !181, line: 636, baseType: !132, size: 8, offset: 112)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !431, file: !181, line: 637, baseType: !245, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !431, file: !181, line: 638, baseType: !123, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !431, file: !181, line: 639, baseType: !32, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !362, file: !181, line: 687, baseType: !443, size: 640)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !181, line: 646, size: 640, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !443, file: !181, line: 647, baseType: !35, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !443, file: !181, line: 647, baseType: !132, size: 8, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !181, line: 647, baseType: !132, size: 8, offset: 72)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !443, file: !181, line: 647, baseType: !137, size: 16, offset: 80)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !443, file: !181, line: 647, baseType: !137, size: 16, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !443, file: !181, line: 648, baseType: !451, size: 512, offset: 128)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 512, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 8)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !362, file: !181, line: 688, baseType: !455, size: 320)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !181, line: 669, size: 320, elements: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !465}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !455, file: !181, line: 670, baseType: !35, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !455, file: !181, line: 670, baseType: !132, size: 8, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !181, line: 670, baseType: !132, size: 8, offset: 72)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !455, file: !181, line: 670, baseType: !137, size: 16, offset: 80)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !455, file: !181, line: 670, baseType: !137, size: 16, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !455, file: !181, line: 671, baseType: !132, size: 8, offset: 112)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !455, file: !181, line: 672, baseType: !179, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !455, file: !181, line: 673, baseType: !123, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !455, file: !181, line: 674, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !181, line: 660, size: 128, elements: !468)
!468 = !{!469, !475}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !467, file: !181, line: 661, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !23, line: 1061, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474, !24, !35}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !23, line: 424, baseType: !35)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !467, file: !181, line: 662, baseType: !35, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !271, file: !181, line: 918, baseType: !279, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !271, file: !181, line: 919, baseType: !24, size: 32, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !246, file: !247, line: 61, baseType: !24, size: 32, offset: 1088)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !246, file: !247, line: 62, baseType: !24, size: 32, offset: 1120)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !246, file: !247, line: 63, baseType: !137, size: 16, offset: 1152)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !246, file: !247, line: 64, baseType: !132, size: 8, offset: 1168)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !246, file: !247, line: 66, baseType: !483, size: 2688, offset: 1216)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 2688, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 7)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !246, file: !247, line: 67, baseType: !487, size: 3072, offset: 3904)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 3072, elements: !452)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !246, file: !247, line: 68, baseType: !489, size: 576, offset: 6976)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 576, elements: !108)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !246, file: !247, line: 69, baseType: !122, size: 64, offset: 7552)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !246, file: !247, line: 71, baseType: !174, size: 64, offset: 7616)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !246, file: !247, line: 72, baseType: !122, size: 64, offset: 7680)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !246, file: !247, line: 73, baseType: !361, size: 64, offset: 7744)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !246, file: !247, line: 74, baseType: !179, size: 64, offset: 7808)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !246, file: !247, line: 75, baseType: !123, size: 64, offset: 7872)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !246, file: !247, line: 76, baseType: !179, size: 64, offset: 7936)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !246, file: !247, line: 77, baseType: !279, size: 64, offset: 8000)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !246, file: !247, line: 78, baseType: !123, size: 64, offset: 8064)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !246, file: !247, line: 79, baseType: !179, size: 64, offset: 8128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !246, file: !247, line: 80, baseType: !163, size: 64, offset: 8192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !246, file: !247, line: 81, baseType: !279, size: 64, offset: 8256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !246, file: !247, line: 82, baseType: !503, size: 64, offset: 8320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !181, line: 718, size: 128, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !505, file: !181, line: 722, baseType: !24, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !505, file: !181, line: 723, baseType: !24, size: 32, offset: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !505, file: !181, line: 724, baseType: !137, size: 16, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !505, file: !181, line: 725, baseType: !132, size: 8, offset: 80)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !505, file: !181, line: 726, baseType: !132, size: 8, offset: 88)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !505, file: !181, line: 727, baseType: !132, size: 8, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !246, file: !247, line: 83, baseType: !279, size: 64, offset: 8384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !246, file: !247, line: 84, baseType: !123, size: 64, offset: 8448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !246, file: !247, line: 85, baseType: !361, size: 64, offset: 8512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !246, file: !247, line: 86, baseType: !123, size: 64, offset: 8576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !246, file: !247, line: 87, baseType: !361, size: 64, offset: 8640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !246, file: !247, line: 88, baseType: !279, size: 64, offset: 8704)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !246, file: !247, line: 89, baseType: !279, size: 64, offset: 8768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !246, file: !247, line: 90, baseType: !521, size: 64, offset: 8832)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !246, file: !247, line: 91, baseType: !523, size: 64, offset: 8896)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !181, line: 652, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!22, !245, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !246, file: !247, line: 92, baseType: !529, size: 64, offset: 8960)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !181, line: 656, baseType: !242)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !238, file: !125, line: 153, baseType: !123, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !224, file: !125, line: 156, baseType: !24, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !224, file: !125, line: 157, baseType: !200, size: 16, offset: 416)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !224, file: !125, line: 158, baseType: !132, size: 8, offset: 432)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !124, file: !125, line: 377, baseType: !535, size: 576)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !125, line: 122, size: 576, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !535, file: !125, line: 123, baseType: !123, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !535, file: !125, line: 123, baseType: !132, size: 8, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !535, file: !125, line: 123, baseType: !132, size: 8, offset: 72)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !535, file: !125, line: 123, baseType: !137, size: 16, offset: 80)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !125, line: 123, baseType: !132, size: 8, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !535, file: !125, line: 123, baseType: !132, size: 8, offset: 104)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !535, file: !125, line: 124, baseType: !137, size: 16, offset: 112)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !535, file: !125, line: 125, baseType: !35, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !535, file: !125, line: 126, baseType: !32, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !535, file: !125, line: 127, baseType: !521, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !535, file: !125, line: 128, baseType: !123, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !125, line: 129, baseType: !123, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !535, file: !125, line: 130, baseType: !179, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !535, file: !125, line: 131, baseType: !132, size: 8, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !124, file: !125, line: 378, baseType: !552, size: 512)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !125, line: 134, size: 512, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !565, !566}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !552, file: !125, line: 135, baseType: !123, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !552, file: !125, line: 135, baseType: !132, size: 8, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !125, line: 135, baseType: !132, size: 8, offset: 72)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !552, file: !125, line: 135, baseType: !137, size: 16, offset: 80)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !125, line: 135, baseType: !132, size: 8, offset: 96)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !552, file: !125, line: 135, baseType: !132, size: 8, offset: 104)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !552, file: !125, line: 136, baseType: !179, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !552, file: !125, line: 137, baseType: !123, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !552, file: !125, line: 138, baseType: !123, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !552, file: !125, line: 139, baseType: !564, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !552, file: !125, line: 140, baseType: !24, size: 32, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !552, file: !125, line: 141, baseType: !35, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !124, file: !125, line: 379, baseType: !568, size: 320)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !125, line: 185, size: 320, elements: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !579}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !568, file: !125, line: 186, baseType: !123, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !568, file: !125, line: 186, baseType: !132, size: 8, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !568, file: !125, line: 186, baseType: !132, size: 8, offset: 72)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !568, file: !125, line: 186, baseType: !137, size: 16, offset: 80)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !125, line: 186, baseType: !132, size: 8, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !568, file: !125, line: 186, baseType: !576, size: 128, offset: 128)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 2)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !568, file: !125, line: 186, baseType: !123, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !124, file: !125, line: 380, baseType: !581, size: 384)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !125, line: 188, size: 384, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !125, line: 189, baseType: !123, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !125, line: 189, baseType: !132, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !125, line: 189, baseType: !132, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !125, line: 189, baseType: !137, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !125, line: 189, baseType: !132, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !581, file: !125, line: 190, baseType: !576, size: 128, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !581, file: !125, line: 190, baseType: !123, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !581, file: !125, line: 190, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !181, line: 480, size: 576, elements: !593)
!593 = !{!594, !595, !596, !597, !605, !620, !652, !653, !654, !655, !656, !657}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !592, file: !181, line: 481, baseType: !179, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !592, file: !181, line: 482, baseType: !591, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !181, line: 483, baseType: !591, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !592, file: !181, line: 484, baseType: !598, size: 64, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !181, line: 497, size: 256, elements: !600)
!600 = !{!601, !602, !603, !604}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !599, file: !181, line: 498, baseType: !598, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !599, file: !181, line: 499, baseType: !598, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !599, file: !181, line: 500, baseType: !591, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !599, file: !181, line: 501, baseType: !24, size: 32, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !592, file: !181, line: 485, baseType: !606, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !181, line: 466, size: 320, elements: !608)
!608 = !{!609, !614, !615, !616, !617, !618, !619}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !607, file: !181, line: 467, baseType: !610, size: 128)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !181, line: 459, size: 128, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !610, file: !181, line: 460, baseType: !132, size: 8)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !610, file: !181, line: 461, baseType: !32, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !607, file: !181, line: 468, baseType: !610, size: 128, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !607, file: !181, line: 469, baseType: !137, size: 16, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !607, file: !181, line: 470, baseType: !132, size: 8, offset: 272)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !607, file: !181, line: 471, baseType: !132, size: 8, offset: 280)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !607, file: !181, line: 472, baseType: !132, size: 8, offset: 288)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !607, file: !181, line: 473, baseType: !132, size: 8, offset: 296)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !592, file: !181, line: 486, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !181, line: 448, size: 192, elements: !623)
!623 = !{!624, !647, !648, !649, !650, !651}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !622, file: !181, line: 449, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !181, line: 438, size: 64, elements: !626)
!626 = !{!627, !628, !641}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !625, file: !181, line: 439, baseType: !179, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !625, file: !181, line: 440, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !181, line: 419, size: 256, elements: !631)
!631 = !{!632, !637, !638, !639, !640}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !630, file: !181, line: 420, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !23, line: 1058, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!24, !474, !24, !35}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !630, file: !181, line: 421, baseType: !35, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !630, file: !181, line: 422, baseType: !179, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !630, file: !181, line: 423, baseType: !132, size: 8, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !630, file: !181, line: 424, baseType: !132, size: 8, offset: 200)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !625, file: !181, line: 441, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !181, line: 429, size: 128, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !643, file: !181, line: 430, baseType: !179, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !643, file: !181, line: 431, baseType: !642, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !622, file: !181, line: 450, baseType: !606, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !181, line: 451, baseType: !132, size: 8, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !622, file: !181, line: 452, baseType: !132, size: 8, offset: 136)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !622, file: !181, line: 453, baseType: !132, size: 8, offset: 144)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !622, file: !181, line: 454, baseType: !132, size: 8, offset: 152)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !592, file: !181, line: 487, baseType: !32, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !592, file: !181, line: 488, baseType: !24, size: 32, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !592, file: !181, line: 489, baseType: !137, size: 16, offset: 480)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !592, file: !181, line: 490, baseType: !137, size: 16, offset: 496)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !592, file: !181, line: 491, baseType: !132, size: 8, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !592, file: !181, line: 492, baseType: !132, size: 8, offset: 520)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !124, file: !125, line: 381, baseType: !659, size: 384)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !125, line: 193, size: 384, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !659, file: !125, line: 194, baseType: !123, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !659, file: !125, line: 194, baseType: !132, size: 8, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !659, file: !125, line: 194, baseType: !132, size: 8, offset: 72)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !659, file: !125, line: 194, baseType: !137, size: 16, offset: 80)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !125, line: 194, baseType: !132, size: 8, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !659, file: !125, line: 194, baseType: !576, size: 128, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !659, file: !125, line: 194, baseType: !123, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !659, file: !125, line: 194, baseType: !24, size: 32, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !659, file: !125, line: 195, baseType: !24, size: 32, offset: 352)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !124, file: !125, line: 382, baseType: !671, size: 384)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !125, line: 198, size: 384, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !125, line: 199, baseType: !123, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !125, line: 199, baseType: !132, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !125, line: 199, baseType: !132, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !125, line: 199, baseType: !137, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !125, line: 199, baseType: !132, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !671, file: !125, line: 201, baseType: !132, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !671, file: !125, line: 202, baseType: !132, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !671, file: !125, line: 203, baseType: !576, size: 128, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !671, file: !125, line: 203, baseType: !123, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !671, file: !125, line: 203, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !23, line: 128, baseType: !32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !124, file: !125, line: 383, baseType: !685, size: 320)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !125, line: 206, size: 320, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !685, file: !125, line: 207, baseType: !123, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !125, line: 207, baseType: !132, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !685, file: !125, line: 207, baseType: !132, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !685, file: !125, line: 207, baseType: !137, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !125, line: 207, baseType: !132, size: 8, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !685, file: !125, line: 207, baseType: !576, size: 128, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !685, file: !125, line: 207, baseType: !123, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !124, file: !125, line: 384, baseType: !695, size: 384)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !125, line: 234, size: 384, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !695, file: !125, line: 235, baseType: !123, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !695, file: !125, line: 235, baseType: !132, size: 8, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !695, file: !125, line: 235, baseType: !132, size: 8, offset: 72)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !695, file: !125, line: 235, baseType: !137, size: 16, offset: 80)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !125, line: 235, baseType: !132, size: 8, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !695, file: !125, line: 235, baseType: !132, size: 8, offset: 104)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !695, file: !125, line: 235, baseType: !132, size: 8, offset: 112)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !695, file: !125, line: 235, baseType: !132, size: 8, offset: 120)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !695, file: !125, line: 235, baseType: !179, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !695, file: !125, line: 235, baseType: !24, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !695, file: !125, line: 235, baseType: !24, size: 32, offset: 224)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !695, file: !125, line: 235, baseType: !24, size: 32, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !695, file: !125, line: 235, baseType: !132, size: 8, offset: 288)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !695, file: !125, line: 235, baseType: !132, size: 8, offset: 296)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !695, file: !125, line: 235, baseType: !123, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !124, file: !125, line: 385, baseType: !713, size: 576)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !125, line: 238, size: 576, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !713, file: !125, line: 239, baseType: !123, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !125, line: 239, baseType: !132, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !125, line: 239, baseType: !132, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !713, file: !125, line: 239, baseType: !137, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !125, line: 239, baseType: !132, size: 8, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !713, file: !125, line: 239, baseType: !132, size: 8, offset: 104)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !713, file: !125, line: 239, baseType: !132, size: 8, offset: 112)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !713, file: !125, line: 239, baseType: !132, size: 8, offset: 120)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !125, line: 239, baseType: !179, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !713, file: !125, line: 239, baseType: !24, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !713, file: !125, line: 239, baseType: !24, size: 32, offset: 224)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !713, file: !125, line: 239, baseType: !24, size: 32, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !713, file: !125, line: 239, baseType: !132, size: 8, offset: 288)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !713, file: !125, line: 239, baseType: !132, size: 8, offset: 296)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !713, file: !125, line: 239, baseType: !137, size: 16, offset: 304)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !713, file: !125, line: 240, baseType: !123, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !713, file: !125, line: 241, baseType: !174, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !713, file: !125, line: 242, baseType: !137, size: 16, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !713, file: !125, line: 243, baseType: !174, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !124, file: !125, line: 386, baseType: !735, size: 384)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !125, line: 263, size: 384, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !735, file: !125, line: 264, baseType: !123, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !735, file: !125, line: 264, baseType: !132, size: 8, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !735, file: !125, line: 264, baseType: !132, size: 8, offset: 72)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !735, file: !125, line: 264, baseType: !137, size: 16, offset: 80)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !735, file: !125, line: 264, baseType: !132, size: 8, offset: 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !735, file: !125, line: 264, baseType: !132, size: 8, offset: 104)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !735, file: !125, line: 264, baseType: !132, size: 8, offset: 112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !735, file: !125, line: 264, baseType: !132, size: 8, offset: 120)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !125, line: 264, baseType: !179, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !735, file: !125, line: 264, baseType: !24, size: 32, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !735, file: !125, line: 264, baseType: !24, size: 32, offset: 224)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !735, file: !125, line: 264, baseType: !24, size: 32, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !735, file: !125, line: 264, baseType: !132, size: 8, offset: 288)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !735, file: !125, line: 264, baseType: !132, size: 8, offset: 296)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !735, file: !125, line: 264, baseType: !132, size: 8, offset: 304)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !735, file: !125, line: 265, baseType: !123, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !124, file: !125, line: 387, baseType: !754, size: 448)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !125, line: 246, size: 448, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !754, file: !125, line: 247, baseType: !123, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !125, line: 247, baseType: !132, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !125, line: 247, baseType: !132, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !754, file: !125, line: 247, baseType: !137, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !125, line: 247, baseType: !132, size: 8, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !754, file: !125, line: 247, baseType: !132, size: 8, offset: 104)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !754, file: !125, line: 247, baseType: !132, size: 8, offset: 112)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !754, file: !125, line: 247, baseType: !132, size: 8, offset: 120)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !754, file: !125, line: 247, baseType: !179, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !754, file: !125, line: 247, baseType: !24, size: 32, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !754, file: !125, line: 247, baseType: !24, size: 32, offset: 224)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !754, file: !125, line: 247, baseType: !24, size: 32, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !754, file: !125, line: 247, baseType: !132, size: 8, offset: 288)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !754, file: !125, line: 247, baseType: !132, size: 8, offset: 296)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !754, file: !125, line: 247, baseType: !123, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !754, file: !125, line: 248, baseType: !123, size: 64, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !124, file: !125, line: 388, baseType: !773, size: 448)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !125, line: 251, size: 448, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !773, file: !125, line: 252, baseType: !123, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !773, file: !125, line: 252, baseType: !132, size: 8, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !773, file: !125, line: 252, baseType: !132, size: 8, offset: 72)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !773, file: !125, line: 252, baseType: !137, size: 16, offset: 80)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !125, line: 252, baseType: !132, size: 8, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !773, file: !125, line: 252, baseType: !132, size: 8, offset: 104)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !773, file: !125, line: 252, baseType: !132, size: 8, offset: 112)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !773, file: !125, line: 252, baseType: !132, size: 8, offset: 120)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !773, file: !125, line: 252, baseType: !179, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !773, file: !125, line: 252, baseType: !24, size: 32, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !773, file: !125, line: 252, baseType: !24, size: 32, offset: 224)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !773, file: !125, line: 252, baseType: !24, size: 32, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !773, file: !125, line: 252, baseType: !132, size: 8, offset: 288)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !773, file: !125, line: 252, baseType: !132, size: 8, offset: 296)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !773, file: !125, line: 257, baseType: !123, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !773, file: !125, line: 258, baseType: !123, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !124, file: !125, line: 389, baseType: !792, size: 512)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !125, line: 274, size: 512, elements: !793)
!793 = !{!794, !795, !796, !797, !798, !799, !800, !801, !802, !803}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !792, file: !125, line: 275, baseType: !123, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !792, file: !125, line: 275, baseType: !132, size: 8, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !125, line: 275, baseType: !132, size: 8, offset: 72)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !792, file: !125, line: 275, baseType: !137, size: 16, offset: 80)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !792, file: !125, line: 275, baseType: !132, size: 8, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !792, file: !125, line: 275, baseType: !179, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !792, file: !125, line: 276, baseType: !24, size: 32, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !792, file: !125, line: 277, baseType: !470, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !792, file: !125, line: 278, baseType: !35, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !792, file: !125, line: 279, baseType: !576, size: 128, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !124, file: !125, line: 390, baseType: !805, size: 576)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !125, line: 282, size: 576, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !820, !821, !822, !823, !829, !830}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !805, file: !125, line: 283, baseType: !123, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !805, file: !125, line: 283, baseType: !132, size: 8, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !805, file: !125, line: 283, baseType: !132, size: 8, offset: 72)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !805, file: !125, line: 283, baseType: !137, size: 16, offset: 80)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !125, line: 283, baseType: !132, size: 8, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !805, file: !125, line: 283, baseType: !132, size: 8, offset: 104)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !805, file: !125, line: 284, baseType: !132, size: 8, offset: 112)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !805, file: !125, line: 285, baseType: !815, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !23, line: 1093, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!22, !24, !564, !24, !819, !35, !35}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !805, file: !125, line: 286, baseType: !179, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !805, file: !125, line: 287, baseType: !35, size: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !805, file: !125, line: 288, baseType: !35, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !805, file: !125, line: 289, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !23, line: 1126, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!22, !474, !24, !35, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !805, file: !125, line: 290, baseType: !123, size: 64, offset: 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !805, file: !125, line: 291, baseType: !123, size: 64, offset: 512)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !124, file: !125, line: 391, baseType: !832, size: 512)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !125, line: 309, size: 512, elements: !833)
!833 = !{!834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !832, file: !125, line: 310, baseType: !123, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !832, file: !125, line: 310, baseType: !132, size: 8, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !832, file: !125, line: 310, baseType: !132, size: 8, offset: 72)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !832, file: !125, line: 310, baseType: !137, size: 16, offset: 80)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !832, file: !125, line: 310, baseType: !132, size: 8, offset: 96)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !832, file: !125, line: 310, baseType: !132, size: 8, offset: 104)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !832, file: !125, line: 311, baseType: !132, size: 8, offset: 112)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !832, file: !125, line: 312, baseType: !132, size: 8, offset: 120)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !832, file: !125, line: 313, baseType: !35, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !832, file: !125, line: 314, baseType: !179, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !832, file: !125, line: 315, baseType: !122, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !832, file: !125, line: 316, baseType: !174, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !832, file: !125, line: 317, baseType: !174, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !832, file: !125, line: 318, baseType: !24, size: 32, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !124, file: !125, line: 392, baseType: !849, size: 448)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !125, line: 342, size: 448, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859, !860}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !849, file: !125, line: 343, baseType: !123, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !849, file: !125, line: 343, baseType: !132, size: 8, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !849, file: !125, line: 343, baseType: !132, size: 8, offset: 72)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !849, file: !125, line: 343, baseType: !137, size: 16, offset: 80)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !125, line: 343, baseType: !132, size: 8, offset: 96)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !849, file: !125, line: 343, baseType: !179, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !849, file: !125, line: 344, baseType: !179, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !849, file: !125, line: 345, baseType: !35, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !849, file: !125, line: 346, baseType: !174, size: 64, offset: 320)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !849, file: !125, line: 347, baseType: !24, size: 32, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !124, file: !125, line: 393, baseType: !862, size: 256)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !125, line: 352, size: 256, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !869, !874}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !862, file: !125, line: 353, baseType: !123, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !862, file: !125, line: 353, baseType: !132, size: 8, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !862, file: !125, line: 353, baseType: !132, size: 8, offset: 72)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !862, file: !125, line: 353, baseType: !137, size: 16, offset: 80)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !862, file: !125, line: 353, baseType: !132, size: 8, offset: 96)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !862, file: !125, line: 353, baseType: !870, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !23, line: 1064, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !474, !35}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !862, file: !125, line: 354, baseType: !35, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !124, file: !125, line: 394, baseType: !876, size: 192)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !125, line: 359, size: 192, elements: !877)
!877 = !{!878, !879, !880, !881, !882, !883}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !876, file: !125, line: 360, baseType: !123, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !876, file: !125, line: 360, baseType: !132, size: 8, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !125, line: 360, baseType: !132, size: 8, offset: 72)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !876, file: !125, line: 360, baseType: !137, size: 16, offset: 80)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !125, line: 360, baseType: !132, size: 8, offset: 96)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !876, file: !125, line: 360, baseType: !123, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !125, line: 401, baseType: !180, size: 384)
!885 = !{!886, !887, !888, !889, !890}
!886 = !DILocalVariable(name: "object", arg: 1, scope: !119, file: !3, line: 38, type: !122)
!887 = !DILocalVariable(name: "walk_state", arg: 2, scope: !119, file: !3, line: 39, type: !245)
!888 = !DILocalVariable(name: "index", scope: !119, file: !3, line: 41, type: !24)
!889 = !DILocalVariable(name: "state", scope: !119, file: !3, line: 42, type: !361)
!890 = !DILocalVariable(name: "status", scope: !119, file: !3, line: 43, type: !22)
!891 = !DILocation(line: 38, column: 48, scope: !119)
!892 = !DILocation(line: 39, column: 30, scope: !119)
!893 = !DILocation(line: 41, column: 2, scope: !119)
!894 = !DILocation(line: 41, column: 6, scope: !119)
!895 = !DILocation(line: 42, column: 2, scope: !119)
!896 = !DILocation(line: 42, column: 28, scope: !119)
!897 = !DILocation(line: 43, column: 2, scope: !119)
!898 = !DILocation(line: 43, column: 14, scope: !119)
!899 = !DILocation(line: 47, column: 10, scope: !119)
!900 = !DILocation(line: 47, column: 22, scope: !119)
!901 = !DILocation(line: 47, column: 8, scope: !119)
!902 = !DILocation(line: 51, column: 6, scope: !903)
!903 = distinct !DILexicalBlock(scope: !119, file: !3, line: 51, column: 6)
!904 = !DILocation(line: 51, column: 12, scope: !903)
!905 = !DILocation(line: 51, column: 16, scope: !903)
!906 = !DILocation(line: 51, column: 28, scope: !903)
!907 = !DILocation(line: 51, column: 6, scope: !119)
!908 = !DILocation(line: 52, column: 3, scope: !909)
!909 = distinct !DILexicalBlock(scope: !903, file: !3, line: 51, column: 42)
!910 = !DILocation(line: 53, column: 3, scope: !909)
!911 = !DILocation(line: 56, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !119, file: !3, line: 56, column: 6)
!913 = !DILocation(line: 56, column: 13, scope: !912)
!914 = !DILocation(line: 56, column: 16, scope: !912)
!915 = !DILocation(line: 56, column: 28, scope: !912)
!916 = !DILocation(line: 56, column: 6, scope: !119)
!917 = !DILocation(line: 57, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !912, file: !3, line: 56, column: 42)
!919 = !DILocation(line: 58, column: 3, scope: !918)
!920 = !DILocation(line: 63, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !119, file: !3, line: 63, column: 6)
!922 = !DILocation(line: 63, column: 6, scope: !119)
!923 = !DILocation(line: 64, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !3, line: 63, column: 14)
!925 = !DILocation(line: 66, column: 3, scope: !924)
!926 = !DILocation(line: 71, column: 2, scope: !119)
!927 = !DILocation(line: 71, column: 14, scope: !119)
!928 = !DILocation(line: 71, column: 26, scope: !119)
!929 = !DILocation(line: 72, column: 15, scope: !119)
!930 = !DILocation(line: 72, column: 27, scope: !119)
!931 = !DILocation(line: 72, column: 10, scope: !119)
!932 = !DILocation(line: 72, column: 40, scope: !119)
!933 = !DILocation(line: 72, column: 8, scope: !119)
!934 = !DILocation(line: 74, column: 12, scope: !119)
!935 = !DILocation(line: 74, column: 27, scope: !119)
!936 = !DILocation(line: 74, column: 36, scope: !119)
!937 = !DILocation(line: 74, column: 3, scope: !119)
!938 = !DILocation(line: 74, column: 10, scope: !119)
!939 = !DILocation(line: 75, column: 8, scope: !940)
!940 = distinct !DILexicalBlock(scope: !119, file: !3, line: 75, column: 6)
!941 = !DILocation(line: 75, column: 7, scope: !940)
!942 = !DILocation(line: 75, column: 6, scope: !119)
!943 = !DILocation(line: 76, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !3, line: 75, column: 16)
!945 = !DILocation(line: 79, column: 3, scope: !944)
!946 = !DILocation(line: 82, column: 2, scope: !119)
!947 = !DILocation(line: 82, column: 17, scope: !119)
!948 = !DILocation(line: 82, column: 26, scope: !119)
!949 = !DILocation(line: 82, column: 33, scope: !119)
!950 = !DILocation(line: 83, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !119, file: !3, line: 83, column: 6)
!952 = !DILocation(line: 83, column: 12, scope: !951)
!953 = !DILocation(line: 83, column: 6, scope: !119)
!954 = !DILocation(line: 84, column: 37, scope: !955)
!955 = distinct !DILexicalBlock(scope: !951, file: !3, line: 83, column: 18)
!956 = !DILocation(line: 84, column: 12, scope: !955)
!957 = !DILocation(line: 84, column: 10, scope: !955)
!958 = !DILocation(line: 85, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !3, line: 85, column: 7)
!960 = !DILocation(line: 85, column: 7, scope: !955)
!961 = !DILocation(line: 86, column: 12, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 85, column: 29)
!963 = !DILocation(line: 86, column: 4, scope: !962)
!964 = !DILocation(line: 88, column: 2, scope: !955)
!965 = !DILocation(line: 95, column: 2, scope: !119)
!966 = !DILocation(line: 96, column: 1, scope: !119)
!967 = !DISubprogram(name: "acpi_error", scope: !968, file: !968, line: 901, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!969 = !DISubroutineType(types: !970)
!970 = !{null, !971, !24, !971, null}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!972 = distinct !DISubprogram(name: "acpi_ds_result_stack_pop", scope: !3, file: !3, line: 228, type: !243, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !973)
!973 = !{!974, !975}
!974 = !DILocalVariable(name: "walk_state", arg: 1, scope: !972, file: !3, line: 228, type: !245)
!975 = !DILocalVariable(name: "state", scope: !972, file: !3, line: 230, type: !361)
!976 = !DILocation(line: 228, column: 69, scope: !972)
!977 = !DILocation(line: 230, column: 2, scope: !972)
!978 = !DILocation(line: 230, column: 28, scope: !972)
!979 = !DILocation(line: 236, column: 6, scope: !980)
!980 = distinct !DILexicalBlock(scope: !972, file: !3, line: 236, column: 6)
!981 = !DILocation(line: 236, column: 18, scope: !980)
!982 = !DILocation(line: 236, column: 26, scope: !980)
!983 = !DILocation(line: 236, column: 6, scope: !972)
!984 = !DILocation(line: 240, column: 3, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !3, line: 236, column: 35)
!986 = !DILocation(line: 243, column: 6, scope: !987)
!987 = distinct !DILexicalBlock(scope: !972, file: !3, line: 243, column: 6)
!988 = !DILocation(line: 243, column: 18, scope: !987)
!989 = !DILocation(line: 243, column: 30, scope: !987)
!990 = !DILocation(line: 243, column: 6, scope: !972)
!991 = !DILocation(line: 244, column: 3, scope: !992)
!992 = distinct !DILexicalBlock(scope: !987, file: !3, line: 243, column: 60)
!993 = !DILocation(line: 245, column: 3, scope: !992)
!994 = !DILocation(line: 248, column: 37, scope: !972)
!995 = !DILocation(line: 248, column: 49, scope: !972)
!996 = !DILocation(line: 248, column: 10, scope: !972)
!997 = !DILocation(line: 248, column: 8, scope: !972)
!998 = !DILocation(line: 249, column: 31, scope: !972)
!999 = !DILocation(line: 249, column: 2, scope: !972)
!1000 = !DILocation(line: 253, column: 2, scope: !972)
!1001 = !DILocation(line: 253, column: 14, scope: !972)
!1002 = !DILocation(line: 253, column: 26, scope: !972)
!1003 = !DILocation(line: 259, column: 2, scope: !972)
!1004 = !DILocation(line: 260, column: 1, scope: !972)
!1005 = distinct !DISubprogram(name: "acpi_ds_result_push", scope: !3, file: !3, line: 112, type: !1006, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1008)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!22, !123, !245}
!1008 = !{!1009, !1010, !1011, !1012, !1013}
!1009 = !DILocalVariable(name: "object", arg: 1, scope: !1005, file: !3, line: 112, type: !123)
!1010 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1005, file: !3, line: 113, type: !245)
!1011 = !DILocalVariable(name: "state", scope: !1005, file: !3, line: 115, type: !361)
!1012 = !DILocalVariable(name: "status", scope: !1005, file: !3, line: 116, type: !22)
!1013 = !DILocalVariable(name: "index", scope: !1005, file: !3, line: 117, type: !24)
!1014 = !DILocation(line: 112, column: 48, scope: !1005)
!1015 = !DILocation(line: 113, column: 31, scope: !1005)
!1016 = !DILocation(line: 115, column: 2, scope: !1005)
!1017 = !DILocation(line: 115, column: 28, scope: !1005)
!1018 = !DILocation(line: 116, column: 2, scope: !1005)
!1019 = !DILocation(line: 116, column: 14, scope: !1005)
!1020 = !DILocation(line: 117, column: 2, scope: !1005)
!1021 = !DILocation(line: 117, column: 6, scope: !1005)
!1022 = !DILocation(line: 121, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 121, column: 6)
!1024 = !DILocation(line: 121, column: 18, scope: !1023)
!1025 = !DILocation(line: 121, column: 33, scope: !1023)
!1026 = !DILocation(line: 121, column: 45, scope: !1023)
!1027 = !DILocation(line: 121, column: 31, scope: !1023)
!1028 = !DILocation(line: 121, column: 6, scope: !1005)
!1029 = !DILocation(line: 122, column: 3, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 121, column: 58)
!1031 = !DILocation(line: 123, column: 3, scope: !1030)
!1032 = !DILocation(line: 124, column: 13, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 124, column: 13)
!1034 = !DILocation(line: 124, column: 25, scope: !1033)
!1035 = !DILocation(line: 124, column: 41, scope: !1033)
!1036 = !DILocation(line: 124, column: 53, scope: !1033)
!1037 = !DILocation(line: 124, column: 38, scope: !1033)
!1038 = !DILocation(line: 124, column: 13, scope: !1023)
!1039 = !DILocation(line: 128, column: 38, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 124, column: 66)
!1041 = !DILocation(line: 128, column: 12, scope: !1040)
!1042 = !DILocation(line: 128, column: 10, scope: !1040)
!1043 = !DILocation(line: 129, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 129, column: 7)
!1045 = !DILocation(line: 129, column: 7, scope: !1040)
!1046 = !DILocation(line: 130, column: 4, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 129, column: 29)
!1048 = !DILocation(line: 132, column: 12, scope: !1047)
!1049 = !DILocation(line: 132, column: 4, scope: !1047)
!1050 = !DILocation(line: 134, column: 2, scope: !1040)
!1051 = !DILocation(line: 136, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 136, column: 6)
!1053 = !DILocation(line: 136, column: 20, scope: !1052)
!1054 = !DILocation(line: 136, column: 35, scope: !1052)
!1055 = !DILocation(line: 136, column: 47, scope: !1052)
!1056 = !DILocation(line: 136, column: 33, scope: !1052)
!1057 = !DILocation(line: 136, column: 6, scope: !1005)
!1058 = !DILocation(line: 137, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 136, column: 61)
!1060 = !DILocation(line: 138, column: 3, scope: !1059)
!1061 = !DILocation(line: 141, column: 10, scope: !1005)
!1062 = !DILocation(line: 141, column: 22, scope: !1005)
!1063 = !DILocation(line: 141, column: 8, scope: !1005)
!1064 = !DILocation(line: 142, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 142, column: 6)
!1066 = !DILocation(line: 142, column: 6, scope: !1005)
!1067 = !DILocation(line: 143, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 142, column: 14)
!1069 = !DILocation(line: 144, column: 3, scope: !1068)
!1070 = !DILocation(line: 147, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 147, column: 6)
!1072 = !DILocation(line: 147, column: 6, scope: !1005)
!1073 = !DILocation(line: 148, column: 3, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 147, column: 15)
!1075 = !DILocation(line: 151, column: 3, scope: !1074)
!1076 = !DILocation(line: 156, column: 15, scope: !1005)
!1077 = !DILocation(line: 156, column: 27, scope: !1005)
!1078 = !DILocation(line: 156, column: 10, scope: !1005)
!1079 = !DILocation(line: 156, column: 40, scope: !1005)
!1080 = !DILocation(line: 156, column: 8, scope: !1005)
!1081 = !DILocation(line: 157, column: 35, scope: !1005)
!1082 = !DILocation(line: 157, column: 2, scope: !1005)
!1083 = !DILocation(line: 157, column: 17, scope: !1005)
!1084 = !DILocation(line: 157, column: 26, scope: !1005)
!1085 = !DILocation(line: 157, column: 33, scope: !1005)
!1086 = !DILocation(line: 158, column: 2, scope: !1005)
!1087 = !DILocation(line: 158, column: 14, scope: !1005)
!1088 = !DILocation(line: 158, column: 26, scope: !1005)
!1089 = !DILocation(line: 168, column: 2, scope: !1005)
!1090 = !DILocation(line: 169, column: 1, scope: !1005)
!1091 = distinct !DISubprogram(name: "acpi_ds_result_stack_push", scope: !3, file: !3, line: 183, type: !243, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1092)
!1092 = !{!1093, !1094}
!1093 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1091, file: !3, line: 183, type: !245)
!1094 = !DILocalVariable(name: "state", scope: !1091, file: !3, line: 185, type: !361)
!1095 = !DILocation(line: 183, column: 70, scope: !1091)
!1096 = !DILocation(line: 185, column: 2, scope: !1091)
!1097 = !DILocation(line: 185, column: 28, scope: !1091)
!1098 = !DILocation(line: 191, column: 13, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 191, column: 6)
!1100 = !DILocation(line: 191, column: 25, scope: !1099)
!1101 = !DILocation(line: 191, column: 7, scope: !1099)
!1102 = !DILocation(line: 191, column: 37, scope: !1099)
!1103 = !DILocation(line: 191, column: 67, scope: !1099)
!1104 = !DILocation(line: 191, column: 6, scope: !1091)
!1105 = !DILocation(line: 193, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 192, column: 32)
!1107 = !DILocation(line: 195, column: 3, scope: !1106)
!1108 = !DILocation(line: 198, column: 10, scope: !1091)
!1109 = !DILocation(line: 198, column: 8, scope: !1091)
!1110 = !DILocation(line: 199, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 199, column: 6)
!1112 = !DILocation(line: 199, column: 6, scope: !1091)
!1113 = !DILocation(line: 200, column: 3, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 199, column: 14)
!1115 = !DILocation(line: 203, column: 2, scope: !1091)
!1116 = !DILocation(line: 203, column: 16, scope: !1091)
!1117 = !DILocation(line: 203, column: 32, scope: !1091)
!1118 = !DILocation(line: 204, column: 30, scope: !1091)
!1119 = !DILocation(line: 204, column: 42, scope: !1091)
!1120 = !DILocation(line: 204, column: 51, scope: !1091)
!1121 = !DILocation(line: 204, column: 2, scope: !1091)
!1122 = !DILocation(line: 208, column: 2, scope: !1091)
!1123 = !DILocation(line: 208, column: 14, scope: !1091)
!1124 = !DILocation(line: 208, column: 26, scope: !1091)
!1125 = !DILocation(line: 213, column: 2, scope: !1091)
!1126 = !DILocation(line: 214, column: 1, scope: !1091)
!1127 = distinct !DISubprogram(name: "acpi_ds_obj_stack_push", scope: !3, file: !3, line: 276, type: !1128, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1130)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!22, !35, !245}
!1130 = !{!1131, !1132}
!1131 = !DILocalVariable(name: "object", arg: 1, scope: !1127, file: !3, line: 276, type: !35)
!1132 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1127, file: !3, line: 276, type: !245)
!1133 = !DILocation(line: 276, column: 30, scope: !1127)
!1134 = !DILocation(line: 276, column: 62, scope: !1127)
!1135 = !DILocation(line: 282, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 282, column: 6)
!1137 = !DILocation(line: 282, column: 18, scope: !1136)
!1138 = !DILocation(line: 282, column: 31, scope: !1136)
!1139 = !DILocation(line: 282, column: 6, scope: !1127)
!1140 = !DILocation(line: 283, column: 3, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 282, column: 57)
!1142 = !DILocation(line: 286, column: 3, scope: !1141)
!1143 = !DILocation(line: 291, column: 52, scope: !1127)
!1144 = !DILocation(line: 291, column: 2, scope: !1127)
!1145 = !DILocation(line: 291, column: 14, scope: !1127)
!1146 = !DILocation(line: 291, column: 23, scope: !1127)
!1147 = !DILocation(line: 291, column: 35, scope: !1127)
!1148 = !DILocation(line: 291, column: 50, scope: !1127)
!1149 = !DILocation(line: 292, column: 2, scope: !1127)
!1150 = !DILocation(line: 292, column: 14, scope: !1127)
!1151 = !DILocation(line: 292, column: 26, scope: !1127)
!1152 = !DILocation(line: 296, column: 2, scope: !1127)
!1153 = !DILocation(line: 296, column: 14, scope: !1127)
!1154 = !DILocation(line: 296, column: 27, scope: !1127)
!1155 = !DILocation(line: 305, column: 2, scope: !1127)
!1156 = !DILocation(line: 306, column: 1, scope: !1127)
!1157 = distinct !DISubprogram(name: "acpi_ds_obj_stack_pop", scope: !3, file: !3, line: 323, type: !1158, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!22, !24, !245}
!1160 = !{!1161, !1162, !1163}
!1161 = !DILocalVariable(name: "pop_count", arg: 1, scope: !1157, file: !3, line: 323, type: !24)
!1162 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1157, file: !3, line: 323, type: !245)
!1163 = !DILocalVariable(name: "i", scope: !1157, file: !3, line: 325, type: !24)
!1164 = !DILocation(line: 323, column: 27, scope: !1157)
!1165 = !DILocation(line: 323, column: 62, scope: !1157)
!1166 = !DILocation(line: 325, column: 2, scope: !1157)
!1167 = !DILocation(line: 325, column: 6, scope: !1157)
!1168 = !DILocation(line: 329, column: 9, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 329, column: 2)
!1170 = !DILocation(line: 329, column: 7, scope: !1169)
!1171 = !DILocation(line: 329, column: 14, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 329, column: 2)
!1173 = !DILocation(line: 329, column: 18, scope: !1172)
!1174 = !DILocation(line: 329, column: 16, scope: !1172)
!1175 = !DILocation(line: 329, column: 2, scope: !1169)
!1176 = !DILocation(line: 333, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 333, column: 7)
!1178 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 329, column: 34)
!1179 = !DILocation(line: 333, column: 19, scope: !1177)
!1180 = !DILocation(line: 333, column: 32, scope: !1177)
!1181 = !DILocation(line: 333, column: 7, scope: !1178)
!1182 = !DILocation(line: 334, column: 4, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 333, column: 38)
!1184 = !DILocation(line: 338, column: 4, scope: !1183)
!1185 = !DILocation(line: 343, column: 3, scope: !1178)
!1186 = !DILocation(line: 343, column: 15, scope: !1178)
!1187 = !DILocation(line: 343, column: 27, scope: !1178)
!1188 = !DILocation(line: 344, column: 3, scope: !1178)
!1189 = !DILocation(line: 344, column: 15, scope: !1178)
!1190 = !DILocation(line: 344, column: 24, scope: !1178)
!1191 = !DILocation(line: 344, column: 36, scope: !1178)
!1192 = !DILocation(line: 344, column: 50, scope: !1178)
!1193 = !DILocation(line: 345, column: 2, scope: !1178)
!1194 = !DILocation(line: 329, column: 30, scope: !1172)
!1195 = !DILocation(line: 329, column: 2, scope: !1172)
!1196 = distinct !{!1196, !1175, !1197, !1198, !1199}
!1197 = !DILocation(line: 345, column: 2, scope: !1169)
!1198 = !{!"llvm.loop.mustprogress"}
!1199 = !{!"llvm.loop.unroll.disable"}
!1200 = !DILocation(line: 350, column: 2, scope: !1157)
!1201 = !DILocation(line: 351, column: 1, scope: !1157)
!1202 = distinct !DISubprogram(name: "acpi_ds_obj_stack_pop_and_delete", scope: !3, file: !3, line: 368, type: !1203, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !24, !245}
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DILocalVariable(name: "pop_count", arg: 1, scope: !1202, file: !3, line: 368, type: !24)
!1207 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1202, file: !3, line: 369, type: !245)
!1208 = !DILocalVariable(name: "i", scope: !1202, file: !3, line: 371, type: !28)
!1209 = !DILocalVariable(name: "obj_desc", scope: !1202, file: !3, line: 372, type: !123)
!1210 = !DILocation(line: 368, column: 38, scope: !1202)
!1211 = !DILocation(line: 369, column: 30, scope: !1202)
!1212 = !DILocation(line: 371, column: 2, scope: !1202)
!1213 = !DILocation(line: 371, column: 6, scope: !1202)
!1214 = !DILocation(line: 372, column: 2, scope: !1202)
!1215 = !DILocation(line: 372, column: 29, scope: !1202)
!1216 = !DILocation(line: 376, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 376, column: 6)
!1218 = !DILocation(line: 376, column: 16, scope: !1217)
!1219 = !DILocation(line: 376, column: 6, scope: !1202)
!1220 = !DILocation(line: 377, column: 3, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 376, column: 22)
!1222 = !DILocation(line: 380, column: 16, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 380, column: 2)
!1224 = !DILocation(line: 380, column: 26, scope: !1223)
!1225 = !DILocation(line: 380, column: 9, scope: !1223)
!1226 = !DILocation(line: 380, column: 7, scope: !1223)
!1227 = !DILocation(line: 380, column: 31, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 380, column: 2)
!1229 = !DILocation(line: 380, column: 33, scope: !1228)
!1230 = !DILocation(line: 380, column: 2, scope: !1223)
!1231 = !DILocation(line: 381, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 381, column: 7)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 380, column: 44)
!1234 = !DILocation(line: 381, column: 19, scope: !1232)
!1235 = !DILocation(line: 381, column: 32, scope: !1232)
!1236 = !DILocation(line: 381, column: 7, scope: !1233)
!1237 = !DILocation(line: 382, column: 4, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 381, column: 38)
!1239 = !DILocation(line: 387, column: 3, scope: !1233)
!1240 = !DILocation(line: 387, column: 15, scope: !1233)
!1241 = !DILocation(line: 387, column: 27, scope: !1233)
!1242 = !DILocation(line: 388, column: 14, scope: !1233)
!1243 = !DILocation(line: 388, column: 26, scope: !1233)
!1244 = !DILocation(line: 388, column: 35, scope: !1233)
!1245 = !DILocation(line: 388, column: 12, scope: !1233)
!1246 = !DILocation(line: 389, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 389, column: 7)
!1248 = !DILocation(line: 389, column: 7, scope: !1233)
!1249 = !DILocation(line: 390, column: 29, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 389, column: 17)
!1251 = !DILocation(line: 390, column: 41, scope: !1250)
!1252 = !DILocation(line: 390, column: 50, scope: !1250)
!1253 = !DILocation(line: 390, column: 4, scope: !1250)
!1254 = !DILocation(line: 391, column: 4, scope: !1250)
!1255 = !DILocation(line: 391, column: 16, scope: !1250)
!1256 = !DILocation(line: 391, column: 25, scope: !1250)
!1257 = !DILocation(line: 391, column: 28, scope: !1250)
!1258 = !DILocation(line: 392, column: 3, scope: !1250)
!1259 = !DILocation(line: 393, column: 2, scope: !1233)
!1260 = !DILocation(line: 380, column: 40, scope: !1228)
!1261 = !DILocation(line: 380, column: 2, scope: !1228)
!1262 = distinct !{!1262, !1230, !1263, !1198, !1199}
!1263 = !DILocation(line: 393, column: 2, scope: !1223)
!1264 = !DILocation(line: 397, column: 1, scope: !1202)
!1265 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1266, file: !1266, line: 369, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1266 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !123}
!1269 = distinct !DISubprogram(name: "acpi_ds_get_current_walk_state", scope: !3, file: !3, line: 412, type: !1270, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!245, !521}
!1272 = !{!1273}
!1273 = !DILocalVariable(name: "thread", arg: 1, scope: !1269, file: !3, line: 413, type: !521)
!1274 = !DILocation(line: 413, column: 15, scope: !1269)
!1275 = !DILocation(line: 417, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 417, column: 6)
!1277 = !DILocation(line: 417, column: 6, scope: !1269)
!1278 = !DILocation(line: 418, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 417, column: 15)
!1280 = !DILocation(line: 424, column: 10, scope: !1269)
!1281 = !DILocation(line: 424, column: 18, scope: !1269)
!1282 = !DILocation(line: 424, column: 2, scope: !1269)
!1283 = !DILocation(line: 425, column: 1, scope: !1269)
!1284 = distinct !DISubprogram(name: "acpi_ds_push_walk_state", scope: !3, file: !3, line: 441, type: !1285, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !245, !521}
!1287 = !{!1288, !1289}
!1288 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1284, file: !3, line: 441, type: !245)
!1289 = !DILocalVariable(name: "thread", arg: 2, scope: !1284, file: !3, line: 442, type: !521)
!1290 = !DILocation(line: 441, column: 49, scope: !1284)
!1291 = !DILocation(line: 442, column: 30, scope: !1284)
!1292 = !DILocation(line: 446, column: 21, scope: !1284)
!1293 = !DILocation(line: 446, column: 29, scope: !1284)
!1294 = !DILocation(line: 446, column: 2, scope: !1284)
!1295 = !DILocation(line: 446, column: 14, scope: !1284)
!1296 = !DILocation(line: 446, column: 19, scope: !1284)
!1297 = !DILocation(line: 447, column: 28, scope: !1284)
!1298 = !DILocation(line: 447, column: 2, scope: !1284)
!1299 = !DILocation(line: 447, column: 10, scope: !1284)
!1300 = !DILocation(line: 447, column: 26, scope: !1284)
!1301 = !DILocation(line: 449, column: 2, scope: !1284)
!1302 = distinct !DISubprogram(name: "acpi_ds_pop_walk_state", scope: !3, file: !3, line: 466, type: !1270, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1303)
!1303 = !{!1304, !1305}
!1304 = !DILocalVariable(name: "thread", arg: 1, scope: !1302, file: !3, line: 466, type: !521)
!1305 = !DILocalVariable(name: "walk_state", scope: !1302, file: !3, line: 468, type: !245)
!1306 = !DILocation(line: 466, column: 74, scope: !1302)
!1307 = !DILocation(line: 468, column: 2, scope: !1302)
!1308 = !DILocation(line: 468, column: 26, scope: !1302)
!1309 = !DILocation(line: 472, column: 15, scope: !1302)
!1310 = !DILocation(line: 472, column: 23, scope: !1302)
!1311 = !DILocation(line: 472, column: 13, scope: !1302)
!1312 = !DILocation(line: 474, column: 6, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 474, column: 6)
!1314 = !DILocation(line: 474, column: 6, scope: !1302)
!1315 = !DILocation(line: 478, column: 29, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 474, column: 18)
!1317 = !DILocation(line: 478, column: 41, scope: !1316)
!1318 = !DILocation(line: 478, column: 3, scope: !1316)
!1319 = !DILocation(line: 478, column: 11, scope: !1316)
!1320 = !DILocation(line: 478, column: 27, scope: !1316)
!1321 = !DILocation(line: 485, column: 2, scope: !1316)
!1322 = !DILocation(line: 487, column: 2, scope: !1302)
!1323 = !DILocation(line: 488, column: 1, scope: !1302)
!1324 = distinct !DISubprogram(name: "acpi_ds_create_walk_state", scope: !3, file: !3, line: 506, type: !1325, scopeLine: 513, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!245, !200, !279, !123, !521}
!1327 = !{!1328, !1329, !1330, !1331, !1332}
!1328 = !DILocalVariable(name: "owner_id", arg: 1, scope: !1324, file: !3, line: 506, type: !200)
!1329 = !DILocalVariable(name: "origin", arg: 2, scope: !1324, file: !3, line: 508, type: !279)
!1330 = !DILocalVariable(name: "method_desc", arg: 3, scope: !1324, file: !3, line: 510, type: !123)
!1331 = !DILocalVariable(name: "thread", arg: 4, scope: !1324, file: !3, line: 512, type: !521)
!1332 = !DILocalVariable(name: "walk_state", scope: !1324, file: !3, line: 514, type: !245)
!1333 = !DILocation(line: 506, column: 65, scope: !1324)
!1334 = !DILocation(line: 508, column: 10, scope: !1324)
!1335 = !DILocation(line: 510, column: 10, scope: !1324)
!1336 = !DILocation(line: 512, column: 10, scope: !1324)
!1337 = !DILocation(line: 514, column: 2, scope: !1324)
!1338 = !DILocation(line: 514, column: 26, scope: !1324)
!1339 = !DILocation(line: 518, column: 15, scope: !1324)
!1340 = !DILocation(line: 518, column: 13, scope: !1324)
!1341 = !DILocation(line: 519, column: 7, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 519, column: 6)
!1343 = !DILocation(line: 519, column: 6, scope: !1324)
!1344 = !DILocation(line: 520, column: 3, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 519, column: 19)
!1346 = !DILocation(line: 523, column: 2, scope: !1324)
!1347 = !DILocation(line: 523, column: 14, scope: !1324)
!1348 = !DILocation(line: 523, column: 30, scope: !1324)
!1349 = !DILocation(line: 524, column: 28, scope: !1324)
!1350 = !DILocation(line: 524, column: 2, scope: !1324)
!1351 = !DILocation(line: 524, column: 14, scope: !1324)
!1352 = !DILocation(line: 524, column: 26, scope: !1324)
!1353 = !DILocation(line: 525, column: 25, scope: !1324)
!1354 = !DILocation(line: 525, column: 2, scope: !1324)
!1355 = !DILocation(line: 525, column: 14, scope: !1324)
!1356 = !DILocation(line: 525, column: 23, scope: !1324)
!1357 = !DILocation(line: 526, column: 23, scope: !1324)
!1358 = !DILocation(line: 526, column: 2, scope: !1324)
!1359 = !DILocation(line: 526, column: 14, scope: !1324)
!1360 = !DILocation(line: 526, column: 21, scope: !1324)
!1361 = !DILocation(line: 527, column: 23, scope: !1324)
!1362 = !DILocation(line: 527, column: 2, scope: !1324)
!1363 = !DILocation(line: 527, column: 14, scope: !1324)
!1364 = !DILocation(line: 527, column: 21, scope: !1324)
!1365 = !DILocation(line: 529, column: 38, scope: !1324)
!1366 = !DILocation(line: 529, column: 2, scope: !1324)
!1367 = !DILocation(line: 529, column: 14, scope: !1324)
!1368 = !DILocation(line: 529, column: 27, scope: !1324)
!1369 = !DILocation(line: 529, column: 36, scope: !1324)
!1370 = !DILocation(line: 534, column: 27, scope: !1324)
!1371 = !DILocation(line: 534, column: 2, scope: !1324)
!1372 = !DILocation(line: 539, column: 6, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 539, column: 6)
!1374 = !DILocation(line: 539, column: 6, scope: !1324)
!1375 = !DILocation(line: 540, column: 27, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 539, column: 14)
!1377 = !DILocation(line: 540, column: 39, scope: !1376)
!1378 = !DILocation(line: 540, column: 3, scope: !1376)
!1379 = !DILocation(line: 541, column: 2, scope: !1376)
!1380 = !DILocation(line: 543, column: 2, scope: !1324)
!1381 = !DILocation(line: 544, column: 1, scope: !1324)
!1382 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1383, file: !1383, line: 55, type: !1384, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1383 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!35, !31}
!1386 = !{!1387, !1388, !1390, !1393, !1394, !1397}
!1387 = !DILocalVariable(name: "size", arg: 1, scope: !1382, file: !1383, line: 55, type: !31)
!1388 = !DILocalVariable(name: "_flags", scope: !1389, file: !1383, line: 57, type: !38)
!1389 = distinct !DILexicalBlock(scope: !1382, file: !1383, line: 57, column: 23)
!1390 = !DILocalVariable(name: "__dummy", scope: !1391, file: !1383, line: 57, type: !38)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !1383, line: 57, column: 23)
!1392 = distinct !DILexicalBlock(scope: !1389, file: !1383, line: 57, column: 23)
!1393 = !DILocalVariable(name: "__dummy2", scope: !1391, file: !1383, line: 57, type: !38)
!1394 = !DILocalVariable(name: "__dummy", scope: !1395, file: !1383, line: 57, type: !38)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !1383, line: 57, column: 23)
!1396 = distinct !DILexicalBlock(scope: !1389, file: !1383, line: 57, column: 23)
!1397 = !DILocalVariable(name: "__dummy2", scope: !1395, file: !1383, line: 57, type: !38)
!1398 = !DILocation(line: 55, column: 55, scope: !1382)
!1399 = !DILocation(line: 57, column: 17, scope: !1382)
!1400 = !DILocation(line: 57, column: 23, scope: !1389)
!1401 = !DILocation(line: 57, column: 23, scope: !1391)
!1402 = !DILocation(line: 57, column: 23, scope: !1392)
!1403 = !DILocation(line: 57, column: 23, scope: !1395)
!1404 = !DILocation(line: 57, column: 23, scope: !1396)
!1405 = !DILocation(line: 57, column: 23, scope: !1382)
!1406 = !DILocation(line: 57, column: 9, scope: !1382)
!1407 = !DILocation(line: 57, column: 2, scope: !1382)
!1408 = !DISubprogram(name: "acpi_ds_method_data_init", scope: !1409, file: !1409, line: 165, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1409 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !245}
!1412 = distinct !DISubprogram(name: "acpi_ds_init_aml_walk", scope: !3, file: !3, line: 565, type: !1413, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1479)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!22, !245, !279, !179, !174, !24, !1415, !132}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !247, line: 152, size: 704, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1416, file: !247, line: 155, baseType: !179, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1416, file: !247, line: 156, baseType: !971, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1416, file: !247, line: 157, baseType: !122, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1416, file: !247, line: 159, baseType: !179, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1416, file: !247, line: 160, baseType: !123, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1416, file: !247, line: 161, baseType: !163, size: 64, offset: 320)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1416, file: !247, line: 163, baseType: !1425, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !181, line: 351, size: 56, elements: !1428)
!1428 = !{!1429, !1435, !1444, !1452, !1461}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1427, file: !181, line: 352, baseType: !1430, size: 56)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !181, line: 295, size: 56, elements: !1431)
!1431 = !{!1432, !1433, !1434}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1430, file: !181, line: 296, baseType: !193, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1430, file: !181, line: 297, baseType: !137, size: 16, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1430, file: !181, line: 298, baseType: !132, size: 8, offset: 48)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1427, file: !181, line: 353, baseType: !1436, size: 56)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !181, line: 314, size: 56, elements: !1437)
!1437 = !{!1438, !1439, !1440, !1441, !1442, !1443}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1436, file: !181, line: 315, baseType: !132, size: 8)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1436, file: !181, line: 316, baseType: !132, size: 8, offset: 8)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1436, file: !181, line: 317, baseType: !132, size: 8, offset: 16)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1436, file: !181, line: 318, baseType: !132, size: 8, offset: 24)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1436, file: !181, line: 319, baseType: !132, size: 8, offset: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1436, file: !181, line: 320, baseType: !137, size: 16, offset: 40)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1427, file: !181, line: 354, baseType: !1445, size: 56)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !181, line: 325, size: 56, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1451}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1445, file: !181, line: 326, baseType: !132, size: 8)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1445, file: !181, line: 327, baseType: !132, size: 8, offset: 8)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1445, file: !181, line: 328, baseType: !1450, size: 32, offset: 16)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 32, elements: !194)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1445, file: !181, line: 329, baseType: !132, size: 8, offset: 48)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1427, file: !181, line: 355, baseType: !1453, size: 56)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !181, line: 334, size: 56, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1459, !1460}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1453, file: !181, line: 335, baseType: !132, size: 8)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1453, file: !181, line: 336, baseType: !132, size: 8, offset: 8)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1453, file: !181, line: 337, baseType: !1458, size: 16, offset: 16)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 16, elements: !577)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1453, file: !181, line: 338, baseType: !132, size: 8, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1453, file: !181, line: 339, baseType: !137, size: 16, offset: 40)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1427, file: !181, line: 356, baseType: !1462, size: 56)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !181, line: 342, size: 56, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1462, file: !181, line: 343, baseType: !132, size: 8)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1462, file: !181, line: 344, baseType: !132, size: 8, offset: 8)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1462, file: !181, line: 345, baseType: !132, size: 8, offset: 16)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1462, file: !181, line: 346, baseType: !132, size: 8, offset: 24)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1462, file: !181, line: 347, baseType: !132, size: 8, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1462, file: !181, line: 348, baseType: !137, size: 16, offset: 40)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1416, file: !247, line: 164, baseType: !123, size: 64, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1416, file: !247, line: 165, baseType: !123, size: 64, offset: 512)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1416, file: !247, line: 167, baseType: !24, size: 32, offset: 576)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1416, file: !247, line: 168, baseType: !24, size: 32, offset: 608)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1416, file: !247, line: 169, baseType: !137, size: 16, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1416, file: !247, line: 170, baseType: !137, size: 16, offset: 656)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1416, file: !247, line: 171, baseType: !132, size: 8, offset: 672)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1416, file: !247, line: 172, baseType: !132, size: 8, offset: 680)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1416, file: !247, line: 173, baseType: !132, size: 8, offset: 688)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1490}
!1480 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1412, file: !3, line: 565, type: !245)
!1481 = !DILocalVariable(name: "op", arg: 2, scope: !1412, file: !3, line: 566, type: !279)
!1482 = !DILocalVariable(name: "method_node", arg: 3, scope: !1412, file: !3, line: 567, type: !179)
!1483 = !DILocalVariable(name: "aml_start", arg: 4, scope: !1412, file: !3, line: 568, type: !174)
!1484 = !DILocalVariable(name: "aml_length", arg: 5, scope: !1412, file: !3, line: 569, type: !24)
!1485 = !DILocalVariable(name: "info", arg: 6, scope: !1412, file: !3, line: 570, type: !1415)
!1486 = !DILocalVariable(name: "pass_number", arg: 7, scope: !1412, file: !3, line: 570, type: !132)
!1487 = !DILocalVariable(name: "status", scope: !1412, file: !3, line: 572, type: !22)
!1488 = !DILocalVariable(name: "parser_state", scope: !1412, file: !3, line: 573, type: !1489)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1490 = !DILocalVariable(name: "extra_op", scope: !1412, file: !3, line: 574, type: !279)
!1491 = !DILocation(line: 565, column: 47, scope: !1412)
!1492 = !DILocation(line: 566, column: 34, scope: !1412)
!1493 = !DILocation(line: 567, column: 37, scope: !1412)
!1494 = !DILocation(line: 568, column: 14, scope: !1412)
!1495 = !DILocation(line: 569, column: 13, scope: !1412)
!1496 = !DILocation(line: 570, column: 36, scope: !1412)
!1497 = !DILocation(line: 570, column: 45, scope: !1412)
!1498 = !DILocation(line: 572, column: 2, scope: !1412)
!1499 = !DILocation(line: 572, column: 14, scope: !1412)
!1500 = !DILocation(line: 573, column: 2, scope: !1412)
!1501 = !DILocation(line: 573, column: 27, scope: !1412)
!1502 = !DILocation(line: 573, column: 43, scope: !1412)
!1503 = !DILocation(line: 573, column: 55, scope: !1412)
!1504 = !DILocation(line: 574, column: 2, scope: !1412)
!1505 = !DILocation(line: 574, column: 27, scope: !1412)
!1506 = !DILocation(line: 581, column: 41, scope: !1412)
!1507 = !DILocation(line: 581, column: 6, scope: !1412)
!1508 = !DILocation(line: 581, column: 18, scope: !1412)
!1509 = !DILocation(line: 581, column: 31, scope: !1412)
!1510 = !DILocation(line: 581, column: 39, scope: !1412)
!1511 = !DILocation(line: 580, column: 6, scope: !1412)
!1512 = !DILocation(line: 580, column: 18, scope: !1412)
!1513 = !DILocation(line: 580, column: 31, scope: !1412)
!1514 = !DILocation(line: 580, column: 39, scope: !1412)
!1515 = !DILocation(line: 579, column: 6, scope: !1412)
!1516 = !DILocation(line: 579, column: 18, scope: !1412)
!1517 = !DILocation(line: 579, column: 31, scope: !1412)
!1518 = !DILocation(line: 579, column: 41, scope: !1412)
!1519 = !DILocation(line: 578, column: 2, scope: !1412)
!1520 = !DILocation(line: 578, column: 14, scope: !1412)
!1521 = !DILocation(line: 578, column: 27, scope: !1412)
!1522 = !DILocation(line: 578, column: 31, scope: !1412)
!1523 = !DILocation(line: 583, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 583, column: 6)
!1525 = !DILocation(line: 583, column: 17, scope: !1524)
!1526 = !DILocation(line: 583, column: 6, scope: !1412)
!1527 = !DILocation(line: 584, column: 39, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 583, column: 23)
!1529 = !DILocation(line: 584, column: 3, scope: !1528)
!1530 = !DILocation(line: 584, column: 15, scope: !1528)
!1531 = !DILocation(line: 584, column: 28, scope: !1528)
!1532 = !DILocation(line: 584, column: 36, scope: !1528)
!1533 = !DILocation(line: 585, column: 39, scope: !1528)
!1534 = !DILocation(line: 585, column: 3, scope: !1528)
!1535 = !DILocation(line: 585, column: 15, scope: !1528)
!1536 = !DILocation(line: 585, column: 28, scope: !1528)
!1537 = !DILocation(line: 585, column: 36, scope: !1528)
!1538 = !DILocation(line: 586, column: 2, scope: !1528)
!1539 = !DILocation(line: 590, column: 2, scope: !1412)
!1540 = !DILocation(line: 590, column: 14, scope: !1412)
!1541 = !DILocation(line: 590, column: 22, scope: !1412)
!1542 = !DILocation(line: 591, column: 28, scope: !1412)
!1543 = !DILocation(line: 591, column: 2, scope: !1412)
!1544 = !DILocation(line: 591, column: 14, scope: !1412)
!1545 = !DILocation(line: 591, column: 26, scope: !1412)
!1546 = !DILocation(line: 593, column: 6, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 593, column: 6)
!1548 = !DILocation(line: 593, column: 6, scope: !1412)
!1549 = !DILocation(line: 594, column: 24, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 593, column: 12)
!1551 = !DILocation(line: 594, column: 30, scope: !1550)
!1552 = !DILocation(line: 594, column: 3, scope: !1550)
!1553 = !DILocation(line: 594, column: 15, scope: !1550)
!1554 = !DILocation(line: 594, column: 22, scope: !1550)
!1555 = !DILocation(line: 595, column: 37, scope: !1550)
!1556 = !DILocation(line: 595, column: 43, scope: !1550)
!1557 = !DILocation(line: 595, column: 3, scope: !1550)
!1558 = !DILocation(line: 595, column: 15, scope: !1550)
!1559 = !DILocation(line: 595, column: 34, scope: !1550)
!1560 = !DILocation(line: 596, column: 2, scope: !1550)
!1561 = !DILocation(line: 598, column: 31, scope: !1412)
!1562 = !DILocation(line: 598, column: 43, scope: !1412)
!1563 = !DILocation(line: 598, column: 57, scope: !1412)
!1564 = !DILocation(line: 598, column: 11, scope: !1412)
!1565 = !DILocation(line: 598, column: 9, scope: !1412)
!1566 = !DILocation(line: 599, column: 6, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 599, column: 6)
!1568 = !DILocation(line: 599, column: 6, scope: !1412)
!1569 = !DILocation(line: 600, column: 3, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 599, column: 28)
!1571 = !DILocation(line: 603, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 603, column: 6)
!1573 = !DILocation(line: 603, column: 6, scope: !1412)
!1574 = !DILocation(line: 604, column: 41, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 603, column: 19)
!1576 = !DILocation(line: 604, column: 3, scope: !1575)
!1577 = !DILocation(line: 604, column: 15, scope: !1575)
!1578 = !DILocation(line: 604, column: 28, scope: !1575)
!1579 = !DILocation(line: 604, column: 39, scope: !1575)
!1580 = !DILocation(line: 605, column: 3, scope: !1575)
!1581 = !DILocation(line: 605, column: 15, scope: !1575)
!1582 = !DILocation(line: 605, column: 25, scope: !1575)
!1583 = !DILocation(line: 606, column: 29, scope: !1575)
!1584 = !DILocation(line: 606, column: 3, scope: !1575)
!1585 = !DILocation(line: 606, column: 15, scope: !1575)
!1586 = !DILocation(line: 606, column: 27, scope: !1575)
!1587 = !DILocation(line: 608, column: 35, scope: !1575)
!1588 = !DILocation(line: 608, column: 7, scope: !1575)
!1589 = !DILocation(line: 607, column: 3, scope: !1575)
!1590 = !DILocation(line: 607, column: 15, scope: !1575)
!1591 = !DILocation(line: 607, column: 27, scope: !1575)
!1592 = !DILocation(line: 613, column: 32, scope: !1575)
!1593 = !DILocation(line: 614, column: 11, scope: !1575)
!1594 = !DILocation(line: 613, column: 7, scope: !1575)
!1595 = !DILocation(line: 612, column: 10, scope: !1575)
!1596 = !DILocation(line: 615, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 615, column: 7)
!1598 = !DILocation(line: 615, column: 7, scope: !1575)
!1599 = !DILocation(line: 616, column: 4, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 615, column: 29)
!1601 = !DILocation(line: 621, column: 42, scope: !1575)
!1602 = !DILocation(line: 621, column: 54, scope: !1575)
!1603 = !DILocation(line: 623, column: 14, scope: !1575)
!1604 = !DILocation(line: 621, column: 12, scope: !1575)
!1605 = !DILocation(line: 621, column: 10, scope: !1575)
!1606 = !DILocation(line: 624, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 624, column: 7)
!1608 = !DILocation(line: 624, column: 7, scope: !1575)
!1609 = !DILocation(line: 625, column: 4, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 624, column: 29)
!1611 = !DILocation(line: 627, column: 2, scope: !1575)
!1612 = !DILocation(line: 634, column: 14, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 627, column: 9)
!1614 = !DILocation(line: 634, column: 28, scope: !1613)
!1615 = !DILocation(line: 634, column: 12, scope: !1613)
!1616 = !DILocation(line: 635, column: 3, scope: !1613)
!1617 = !DILocation(line: 635, column: 10, scope: !1613)
!1618 = !DILocation(line: 635, column: 19, scope: !1613)
!1619 = !DILocation(line: 635, column: 23, scope: !1613)
!1620 = !DILocation(line: 635, column: 40, scope: !1613)
!1621 = !DILocation(line: 635, column: 22, scope: !1613)
!1622 = !DILocation(line: 0, scope: !1613)
!1623 = !DILocation(line: 636, column: 15, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 635, column: 46)
!1625 = !DILocation(line: 636, column: 32, scope: !1624)
!1626 = !DILocation(line: 636, column: 13, scope: !1624)
!1627 = distinct !{!1627, !1616, !1628, !1198, !1199}
!1628 = !DILocation(line: 637, column: 3, scope: !1613)
!1629 = !DILocation(line: 639, column: 8, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 639, column: 7)
!1631 = !DILocation(line: 639, column: 7, scope: !1613)
!1632 = !DILocation(line: 640, column: 4, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 639, column: 18)
!1634 = !DILocation(line: 640, column: 18, scope: !1633)
!1635 = !DILocation(line: 640, column: 29, scope: !1633)
!1636 = !DILocation(line: 641, column: 3, scope: !1633)
!1637 = !DILocation(line: 642, column: 31, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 641, column: 10)
!1639 = !DILocation(line: 642, column: 48, scope: !1638)
!1640 = !DILocation(line: 642, column: 4, scope: !1638)
!1641 = !DILocation(line: 642, column: 18, scope: !1638)
!1642 = !DILocation(line: 642, column: 29, scope: !1638)
!1643 = !DILocation(line: 645, column: 7, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 645, column: 7)
!1645 = !DILocation(line: 645, column: 21, scope: !1644)
!1646 = !DILocation(line: 645, column: 7, scope: !1613)
!1647 = !DILocation(line: 650, column: 33, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 645, column: 33)
!1649 = !DILocation(line: 650, column: 47, scope: !1648)
!1650 = !DILocation(line: 651, column: 12, scope: !1648)
!1651 = !DILocation(line: 651, column: 26, scope: !1648)
!1652 = !DILocation(line: 652, column: 12, scope: !1648)
!1653 = !DILocation(line: 652, column: 18, scope: !1648)
!1654 = !DILocation(line: 650, column: 8, scope: !1648)
!1655 = !DILocation(line: 649, column: 11, scope: !1648)
!1656 = !DILocation(line: 653, column: 8, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 653, column: 8)
!1658 = !DILocation(line: 653, column: 8, scope: !1648)
!1659 = !DILocation(line: 654, column: 5, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 653, column: 30)
!1661 = !DILocation(line: 656, column: 3, scope: !1648)
!1662 = !DILocation(line: 659, column: 34, scope: !1412)
!1663 = !DILocation(line: 659, column: 46, scope: !1412)
!1664 = !DILocation(line: 659, column: 11, scope: !1412)
!1665 = !DILocation(line: 659, column: 9, scope: !1412)
!1666 = !DILocation(line: 660, column: 2, scope: !1412)
!1667 = !DILocation(line: 661, column: 1, scope: !1412)
!1668 = !DISubprogram(name: "acpi_ps_init_scope", scope: !1669, file: !1669, line: 141, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1669 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!22, !1489, !279}
!1672 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1673, file: !1673, line: 298, type: !1674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1673 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!123, !179}
!1676 = !DISubprogram(name: "acpi_ds_scope_stack_push", scope: !1409, file: !1409, line: 277, type: !1677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!22, !179, !1679, !245}
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !23, line: 644, baseType: !24)
!1680 = !DISubprogram(name: "acpi_ds_method_data_init_args", scope: !1409, file: !1409, line: 155, type: !1681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!22, !122, !24, !245}
!1683 = !DISubprogram(name: "acpi_ds_init_callbacks", scope: !1409, file: !1409, line: 111, type: !1684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!22, !245, !24}
!1686 = distinct !DISubprogram(name: "acpi_ds_delete_walk_state", scope: !3, file: !3, line: 675, type: !1410, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1687)
!1687 = !{!1688, !1689}
!1688 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1686, file: !3, line: 675, type: !245)
!1689 = !DILocalVariable(name: "state", scope: !1686, file: !3, line: 677, type: !361)
!1690 = !DILocation(line: 675, column: 56, scope: !1686)
!1691 = !DILocation(line: 677, column: 2, scope: !1686)
!1692 = !DILocation(line: 677, column: 28, scope: !1686)
!1693 = !DILocation(line: 681, column: 7, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 681, column: 6)
!1695 = !DILocation(line: 681, column: 6, scope: !1686)
!1696 = !DILocation(line: 682, column: 3, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 681, column: 19)
!1698 = !DILocation(line: 685, column: 6, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 685, column: 6)
!1700 = !DILocation(line: 685, column: 18, scope: !1699)
!1701 = !DILocation(line: 685, column: 34, scope: !1699)
!1702 = !DILocation(line: 685, column: 6, scope: !1686)
!1703 = !DILocation(line: 686, column: 3, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 685, column: 58)
!1705 = !DILocation(line: 688, column: 3, scope: !1704)
!1706 = !DILocation(line: 693, column: 6, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 693, column: 6)
!1708 = !DILocation(line: 693, column: 18, scope: !1707)
!1709 = !DILocation(line: 693, column: 31, scope: !1707)
!1710 = !DILocation(line: 693, column: 6, scope: !1686)
!1711 = !DILocation(line: 694, column: 3, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 693, column: 38)
!1713 = !DILocation(line: 696, column: 26, scope: !1712)
!1714 = !DILocation(line: 696, column: 38, scope: !1712)
!1715 = !DILocation(line: 696, column: 3, scope: !1712)
!1716 = !DILocation(line: 697, column: 2, scope: !1712)
!1717 = !DILocation(line: 701, column: 2, scope: !1686)
!1718 = !DILocation(line: 701, column: 9, scope: !1686)
!1719 = !DILocation(line: 701, column: 21, scope: !1686)
!1720 = !DILocation(line: 702, column: 11, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 701, column: 36)
!1722 = !DILocation(line: 702, column: 23, scope: !1721)
!1723 = !DILocation(line: 702, column: 9, scope: !1721)
!1724 = !DILocation(line: 703, column: 31, scope: !1721)
!1725 = !DILocation(line: 703, column: 45, scope: !1721)
!1726 = !DILocation(line: 703, column: 3, scope: !1721)
!1727 = !DILocation(line: 703, column: 15, scope: !1721)
!1728 = !DILocation(line: 703, column: 29, scope: !1721)
!1729 = !DILocation(line: 705, column: 32, scope: !1721)
!1730 = !DILocation(line: 705, column: 3, scope: !1721)
!1731 = distinct !{!1731, !1717, !1732, !1198, !1199}
!1732 = !DILocation(line: 706, column: 2, scope: !1686)
!1733 = !DILocation(line: 710, column: 2, scope: !1686)
!1734 = !DILocation(line: 710, column: 9, scope: !1686)
!1735 = !DILocation(line: 710, column: 21, scope: !1686)
!1736 = !DILocation(line: 711, column: 11, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 710, column: 33)
!1738 = !DILocation(line: 711, column: 23, scope: !1737)
!1739 = !DILocation(line: 711, column: 9, scope: !1737)
!1740 = !DILocation(line: 712, column: 28, scope: !1737)
!1741 = !DILocation(line: 712, column: 42, scope: !1737)
!1742 = !DILocation(line: 712, column: 3, scope: !1737)
!1743 = !DILocation(line: 712, column: 15, scope: !1737)
!1744 = !DILocation(line: 712, column: 26, scope: !1737)
!1745 = !DILocation(line: 714, column: 32, scope: !1737)
!1746 = !DILocation(line: 714, column: 3, scope: !1737)
!1747 = distinct !{!1747, !1733, !1748, !1198, !1199}
!1748 = !DILocation(line: 715, column: 2, scope: !1686)
!1749 = !DILocation(line: 719, column: 2, scope: !1686)
!1750 = !DILocation(line: 719, column: 9, scope: !1686)
!1751 = !DILocation(line: 719, column: 21, scope: !1686)
!1752 = !DILocation(line: 720, column: 11, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 719, column: 30)
!1754 = !DILocation(line: 720, column: 23, scope: !1753)
!1755 = !DILocation(line: 720, column: 9, scope: !1753)
!1756 = !DILocation(line: 721, column: 25, scope: !1753)
!1757 = !DILocation(line: 721, column: 39, scope: !1753)
!1758 = !DILocation(line: 721, column: 3, scope: !1753)
!1759 = !DILocation(line: 721, column: 15, scope: !1753)
!1760 = !DILocation(line: 721, column: 23, scope: !1753)
!1761 = !DILocation(line: 723, column: 32, scope: !1753)
!1762 = !DILocation(line: 723, column: 3, scope: !1753)
!1763 = distinct !{!1763, !1749, !1764, !1198, !1199}
!1764 = !DILocation(line: 724, column: 2, scope: !1686)
!1765 = !DILocation(line: 726, column: 2, scope: !1686)
!1766 = !DILocation(line: 727, column: 2, scope: !1686)
!1767 = !DILocation(line: 728, column: 1, scope: !1686)
!1768 = !DISubprogram(name: "acpi_ps_cleanup_scope", scope: !1669, file: !1669, line: 158, type: !1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{null, !1489}
!1771 = !DISubprogram(name: "acpi_ut_delete_generic_state", scope: !1266, file: !1266, line: 531, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !361}
!1774 = distinct !DISubprogram(name: "acpi_os_free", scope: !1383, file: !1383, line: 60, type: !1775, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1777)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !35}
!1777 = !{!1778}
!1778 = !DILocalVariable(name: "memory", arg: 1, scope: !1774, file: !1383, line: 60, type: !35)
!1779 = !DILocation(line: 60, column: 39, scope: !1774)
!1780 = !DILocation(line: 62, column: 8, scope: !1774)
!1781 = !DILocation(line: 62, column: 2, scope: !1774)
!1782 = !DILocation(line: 63, column: 1, scope: !1774)
!1783 = !DISubprogram(name: "acpi_ut_create_generic_state", scope: !1266, file: !1266, line: 513, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!361}
!1786 = !DISubprogram(name: "acpi_ut_push_generic_state", scope: !1266, file: !1266, line: 507, type: !1787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{null, !1789, !361}
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!1790 = !DISubprogram(name: "acpi_ut_pop_generic_state", scope: !1266, file: !1266, line: 510, type: !1791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!361, !1789}
!1793 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1794, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1800)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!35, !1796, !36}
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !1797)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1798, line: 72, baseType: !1799)
!1798 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1798, line: 16, baseType: !38)
!1800 = !{!1801, !1802}
!1801 = !DILocalVariable(name: "size", arg: 1, scope: !1793, file: !12, line: 719, type: !1796)
!1802 = !DILocalVariable(name: "flags", arg: 2, scope: !1793, file: !12, line: 719, type: !36)
!1803 = !DILocation(line: 719, column: 52, scope: !1793)
!1804 = !DILocation(line: 719, column: 64, scope: !1793)
!1805 = !DILocation(line: 721, column: 17, scope: !1793)
!1806 = !DILocation(line: 721, column: 23, scope: !1793)
!1807 = !DILocation(line: 721, column: 29, scope: !1793)
!1808 = !DILocation(line: 721, column: 9, scope: !1793)
!1809 = !DILocation(line: 721, column: 2, scope: !1793)
!1810 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1811, file: !1811, line: 65, type: !1812, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1811 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!38}
!1814 = !DILocation(line: 67, column: 9, scope: !1810)
!1815 = !DILocation(line: 67, column: 2, scope: !1810)
!1816 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1811, file: !1811, line: 120, type: !1817, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!30, !38}
!1819 = !{!1820}
!1820 = !DILocalVariable(name: "flags", arg: 1, scope: !1816, file: !1811, line: 120, type: !38)
!1821 = !DILocation(line: 120, column: 67, scope: !1816)
!1822 = !DILocation(line: 122, column: 11, scope: !1816)
!1823 = !DILocation(line: 122, column: 17, scope: !1816)
!1824 = !DILocation(line: 122, column: 9, scope: !1816)
!1825 = !DILocation(line: 122, column: 2, scope: !1816)
!1826 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1794, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DILocalVariable(name: "size", arg: 1, scope: !1826, file: !12, line: 591, type: !1796)
!1829 = !DILocalVariable(name: "flags", arg: 2, scope: !1826, file: !12, line: 591, type: !36)
!1830 = !DILocalVariable(name: "index", scope: !1831, file: !12, line: 594, type: !7)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !12, line: 593, column: 42)
!1832 = distinct !DILexicalBlock(scope: !1826, file: !12, line: 593, column: 6)
!1833 = !DILocation(line: 591, column: 61, scope: !1826)
!1834 = !DILocation(line: 591, column: 73, scope: !1826)
!1835 = !DILocation(line: 593, column: 27, scope: !1832)
!1836 = !DILocation(line: 593, column: 6, scope: !1832)
!1837 = !DILocation(line: 593, column: 33, scope: !1832)
!1838 = !DILocation(line: 593, column: 36, scope: !1832)
!1839 = !DILocation(line: 593, column: 6, scope: !1826)
!1840 = !DILocation(line: 594, column: 3, scope: !1831)
!1841 = !DILocation(line: 594, column: 16, scope: !1831)
!1842 = !DILocation(line: 596, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1831, file: !12, line: 596, column: 7)
!1844 = !DILocation(line: 596, column: 12, scope: !1843)
!1845 = !DILocation(line: 596, column: 7, scope: !1831)
!1846 = !DILocation(line: 597, column: 25, scope: !1843)
!1847 = !DILocation(line: 597, column: 31, scope: !1843)
!1848 = !DILocation(line: 597, column: 11, scope: !1843)
!1849 = !DILocation(line: 597, column: 4, scope: !1843)
!1850 = !DILocation(line: 599, column: 11, scope: !1831)
!1851 = !DILocation(line: 599, column: 9, scope: !1831)
!1852 = !DILocation(line: 601, column: 33, scope: !1831)
!1853 = !DILocation(line: 601, column: 40, scope: !1831)
!1854 = !DILocation(line: 601, column: 20, scope: !1831)
!1855 = !DILocation(line: 601, column: 5, scope: !1831)
!1856 = !DILocation(line: 601, column: 51, scope: !1831)
!1857 = !DILocation(line: 602, column: 5, scope: !1831)
!1858 = !DILocation(line: 602, column: 12, scope: !1831)
!1859 = !DILocation(line: 600, column: 10, scope: !1831)
!1860 = !DILocation(line: 600, column: 3, scope: !1831)
!1861 = !DILocation(line: 603, column: 2, scope: !1832)
!1862 = !DILocation(line: 604, column: 19, scope: !1826)
!1863 = !DILocation(line: 604, column: 25, scope: !1826)
!1864 = !DILocation(line: 604, column: 9, scope: !1826)
!1865 = !DILocation(line: 604, column: 2, scope: !1826)
!1866 = !DILocation(line: 605, column: 1, scope: !1826)
!1867 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1868 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1869, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!7, !1796, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !1872)
!1872 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "size", arg: 1, scope: !1868, file: !12, line: 444, type: !1796)
!1875 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1868, file: !12, line: 445, type: !1871)
!1876 = !DILocation(line: 444, column: 60, scope: !1868)
!1877 = !DILocation(line: 445, column: 16, scope: !1868)
!1878 = !DILocation(line: 447, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 447, column: 6)
!1880 = !DILocation(line: 447, column: 6, scope: !1868)
!1881 = !DILocation(line: 448, column: 3, scope: !1879)
!1882 = !DILocation(line: 450, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 450, column: 6)
!1884 = !DILocation(line: 450, column: 11, scope: !1883)
!1885 = !DILocation(line: 450, column: 6, scope: !1868)
!1886 = !DILocation(line: 451, column: 3, scope: !1883)
!1887 = !DILocation(line: 453, column: 32, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 453, column: 6)
!1889 = !DILocation(line: 453, column: 37, scope: !1888)
!1890 = !DILocation(line: 453, column: 42, scope: !1888)
!1891 = !DILocation(line: 453, column: 45, scope: !1888)
!1892 = !DILocation(line: 453, column: 50, scope: !1888)
!1893 = !DILocation(line: 453, column: 6, scope: !1868)
!1894 = !DILocation(line: 454, column: 3, scope: !1888)
!1895 = !DILocation(line: 455, column: 32, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 455, column: 6)
!1897 = !DILocation(line: 455, column: 37, scope: !1896)
!1898 = !DILocation(line: 455, column: 43, scope: !1896)
!1899 = !DILocation(line: 455, column: 46, scope: !1896)
!1900 = !DILocation(line: 455, column: 51, scope: !1896)
!1901 = !DILocation(line: 455, column: 6, scope: !1868)
!1902 = !DILocation(line: 456, column: 3, scope: !1896)
!1903 = !DILocation(line: 457, column: 6, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 457, column: 6)
!1905 = !DILocation(line: 457, column: 11, scope: !1904)
!1906 = !DILocation(line: 457, column: 6, scope: !1868)
!1907 = !DILocation(line: 457, column: 26, scope: !1904)
!1908 = !DILocation(line: 458, column: 6, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 458, column: 6)
!1910 = !DILocation(line: 458, column: 11, scope: !1909)
!1911 = !DILocation(line: 458, column: 6, scope: !1868)
!1912 = !DILocation(line: 458, column: 26, scope: !1909)
!1913 = !DILocation(line: 459, column: 6, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 459, column: 6)
!1915 = !DILocation(line: 459, column: 11, scope: !1914)
!1916 = !DILocation(line: 459, column: 6, scope: !1868)
!1917 = !DILocation(line: 459, column: 26, scope: !1914)
!1918 = !DILocation(line: 460, column: 6, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 460, column: 6)
!1920 = !DILocation(line: 460, column: 11, scope: !1919)
!1921 = !DILocation(line: 460, column: 6, scope: !1868)
!1922 = !DILocation(line: 460, column: 26, scope: !1919)
!1923 = !DILocation(line: 461, column: 6, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 461, column: 6)
!1925 = !DILocation(line: 461, column: 11, scope: !1924)
!1926 = !DILocation(line: 461, column: 6, scope: !1868)
!1927 = !DILocation(line: 461, column: 26, scope: !1924)
!1928 = !DILocation(line: 462, column: 6, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 462, column: 6)
!1930 = !DILocation(line: 462, column: 11, scope: !1929)
!1931 = !DILocation(line: 462, column: 6, scope: !1868)
!1932 = !DILocation(line: 462, column: 26, scope: !1929)
!1933 = !DILocation(line: 463, column: 6, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 463, column: 6)
!1935 = !DILocation(line: 463, column: 11, scope: !1934)
!1936 = !DILocation(line: 463, column: 6, scope: !1868)
!1937 = !DILocation(line: 463, column: 26, scope: !1934)
!1938 = !DILocation(line: 464, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 464, column: 6)
!1940 = !DILocation(line: 464, column: 11, scope: !1939)
!1941 = !DILocation(line: 464, column: 6, scope: !1868)
!1942 = !DILocation(line: 464, column: 26, scope: !1939)
!1943 = !DILocation(line: 465, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 465, column: 6)
!1945 = !DILocation(line: 465, column: 11, scope: !1944)
!1946 = !DILocation(line: 465, column: 6, scope: !1868)
!1947 = !DILocation(line: 465, column: 26, scope: !1944)
!1948 = !DILocation(line: 466, column: 6, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 466, column: 6)
!1950 = !DILocation(line: 466, column: 11, scope: !1949)
!1951 = !DILocation(line: 466, column: 6, scope: !1868)
!1952 = !DILocation(line: 466, column: 26, scope: !1949)
!1953 = !DILocation(line: 467, column: 6, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 467, column: 6)
!1955 = !DILocation(line: 467, column: 11, scope: !1954)
!1956 = !DILocation(line: 467, column: 6, scope: !1868)
!1957 = !DILocation(line: 467, column: 26, scope: !1954)
!1958 = !DILocation(line: 468, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 468, column: 6)
!1960 = !DILocation(line: 468, column: 11, scope: !1959)
!1961 = !DILocation(line: 468, column: 6, scope: !1868)
!1962 = !DILocation(line: 468, column: 26, scope: !1959)
!1963 = !DILocation(line: 469, column: 6, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 469, column: 6)
!1965 = !DILocation(line: 469, column: 11, scope: !1964)
!1966 = !DILocation(line: 469, column: 6, scope: !1868)
!1967 = !DILocation(line: 469, column: 26, scope: !1964)
!1968 = !DILocation(line: 470, column: 6, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 470, column: 6)
!1970 = !DILocation(line: 470, column: 11, scope: !1969)
!1971 = !DILocation(line: 470, column: 6, scope: !1868)
!1972 = !DILocation(line: 470, column: 26, scope: !1969)
!1973 = !DILocation(line: 471, column: 6, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 471, column: 6)
!1975 = !DILocation(line: 471, column: 11, scope: !1974)
!1976 = !DILocation(line: 471, column: 6, scope: !1868)
!1977 = !DILocation(line: 471, column: 26, scope: !1974)
!1978 = !DILocation(line: 472, column: 6, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 472, column: 6)
!1980 = !DILocation(line: 472, column: 11, scope: !1979)
!1981 = !DILocation(line: 472, column: 6, scope: !1868)
!1982 = !DILocation(line: 472, column: 26, scope: !1979)
!1983 = !DILocation(line: 473, column: 6, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 473, column: 6)
!1985 = !DILocation(line: 473, column: 11, scope: !1984)
!1986 = !DILocation(line: 473, column: 6, scope: !1868)
!1987 = !DILocation(line: 473, column: 26, scope: !1984)
!1988 = !DILocation(line: 474, column: 6, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 474, column: 6)
!1990 = !DILocation(line: 474, column: 11, scope: !1989)
!1991 = !DILocation(line: 474, column: 6, scope: !1868)
!1992 = !DILocation(line: 474, column: 27, scope: !1989)
!1993 = !DILocation(line: 475, column: 6, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 475, column: 6)
!1995 = !DILocation(line: 475, column: 11, scope: !1994)
!1996 = !DILocation(line: 475, column: 6, scope: !1868)
!1997 = !DILocation(line: 475, column: 32, scope: !1994)
!1998 = !DILocation(line: 477, column: 50, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1868, file: !12, line: 477, column: 6)
!2000 = !{i8 0, i8 2}
!2001 = !{}
!2002 = !DILocation(line: 477, column: 6, scope: !1868)
!2003 = !DILocation(line: 478, column: 3, scope: !1999)
!2004 = !DILocation(line: 478, column: 3, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !12, line: 478, column: 3)
!2006 = distinct !DILexicalBlock(scope: !1999, file: !12, line: 478, column: 3)
!2007 = !{i32 -2143029883}
!2008 = !DILocation(line: 478, column: 3, scope: !2006)
!2009 = !DILocation(line: 480, column: 3, scope: !1999)
!2010 = !DILocation(line: 480, column: 3, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1999, file: !12, line: 480, column: 3)
!2012 = !DILocation(line: 480, column: 3, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2011, file: !12, line: 480, column: 3)
!2014 = !DILocation(line: 480, column: 3, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !12, line: 480, column: 3)
!2016 = !{i64 2151937616, i64 2151937645, i64 2151937691, i64 2151937749, i64 2151937803, i64 2151937857, i64 2151937912, i64 2151937943}
!2017 = !DILocation(line: 483, column: 2, scope: !1868)
!2018 = !DILocation(line: 484, column: 1, scope: !1868)
!2019 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !2020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!35, !2022, !36, !1796}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2024, line: 11, flags: DIFlagFwdDecl)
!2024 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2025 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !2026, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!11, !36, !38}
!2028 = !{!2029, !2030}
!2029 = !DILocalVariable(name: "flags", arg: 1, scope: !2025, file: !12, line: 401, type: !36)
!2030 = !DILocalVariable(name: "caller", arg: 2, scope: !2025, file: !12, line: 401, type: !38)
!2031 = !DILocation(line: 401, column: 67, scope: !2025)
!2032 = !DILocation(line: 401, column: 88, scope: !2025)
!2033 = !DILocation(line: 407, column: 6, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !12, line: 407, column: 6)
!2035 = !DILocation(line: 407, column: 6, scope: !2025)
!2036 = !DILocation(line: 413, column: 3, scope: !2034)
!2037 = !DILocation(line: 423, column: 38, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2025, file: !12, line: 423, column: 6)
!2039 = !DILocation(line: 423, column: 44, scope: !2038)
!2040 = !DILocation(line: 423, column: 6, scope: !2025)
!2041 = !DILocation(line: 424, column: 3, scope: !2038)
!2042 = !DILocation(line: 426, column: 3, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2025, file: !12, line: 425, column: 6)
!2044 = !DILocation(line: 429, column: 1, scope: !2025)
!2045 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2046 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !2047, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null}
!2049 = distinct !DISubprogram(name: "native_save_fl", scope: !1811, file: !1811, line: 17, type: !1812, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "flags", scope: !2049, file: !1811, line: 19, type: !38)
!2052 = !DILocation(line: 19, column: 2, scope: !2049)
!2053 = !DILocation(line: 19, column: 16, scope: !2049)
!2054 = !DILocation(line: 26, column: 2, scope: !2049)
!2055 = !{i64 1527535, i64 1527556}
!2056 = !DILocation(line: 32, column: 9, scope: !2049)
!2057 = !DILocation(line: 33, column: 1, scope: !2049)
!2058 = !DILocation(line: 32, column: 2, scope: !2049)
!2059 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !2062}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
