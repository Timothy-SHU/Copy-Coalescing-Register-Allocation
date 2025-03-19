; ModuleID = 'drivers/acpi/acpica/evmisc.c'
source_filename = "drivers/acpi/acpica/evmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_global_notify_handler = type { ptr, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_notify_common = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr }
%struct.acpi_common_state = type { ptr, i8, i8, i16, i16 }
%struct.acpi_notify_info = type { ptr, i8, i8, i16, i16, i8, ptr, ptr, ptr }
%struct.acpi_object_notify_handler = type { ptr, i8, i8, i16, i8, ptr, i32, ptr, ptr, [2 x ptr] }

@acpi_gbl_global_notify = external dso_local global [2 x %struct.acpi_global_notify_handler], align 16
@acpi_gbl_events_initialized = external dso_local global i8, align 1
@_acpi_module_name = internal constant [7 x i8] c"evmisc\00", align 1, !dbg !0
@.str = private unnamed_addr constant [33 x i8] c"Could not disable fixed event %u\00", align 1, !dbg !794
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not disable GPEs in GPE block\00", align 1, !dbg !799
@.str.2 = private unnamed_addr constant [37 x i8] c"Could not remove Global Lock handler\00", align 1, !dbg !804
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not remove SCI handler\00", align 1, !dbg !809
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not delete GPE handlers\00", align 1, !dbg !814
@acpi_gbl_original_mode = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"AcpiDisable failed\00", align 1, !dbg !819

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ev_is_notify_object(ptr noundef %node) #0 align 16 !dbg !835 {
entry:
  %retval = alloca i8, align 1
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !839, metadata !DIExpression()), !dbg !840
  %0 = load ptr, ptr %node.addr, align 8, !dbg !841
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 2, !dbg !842
  %1 = load i8, ptr %type, align 1, !dbg !842
  %conv = zext i8 %1 to i32, !dbg !841
  switch i32 %conv, label %sw.default [
    i32 6, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ], !dbg !843

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i8 1, ptr %retval, align 1, !dbg !844
  br label %return, !dbg !844

sw.default:                                       ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !846
  br label %return, !dbg !846

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i8, ptr %retval, align 1, !dbg !847
  ret i8 %2, !dbg !847
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_queue_notify_request(ptr noundef %node, i32 noundef %notify_value) #0 align 16 !dbg !848 {
entry:
  %retval = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %notify_value.addr = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %handler_list_head = alloca ptr, align 8
  %info = alloca ptr, align 8
  %handler_list_id = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !852, metadata !DIExpression()), !dbg !859
  store i32 %notify_value, ptr %notify_value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %notify_value.addr, metadata !853, metadata !DIExpression()), !dbg !860
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !854, metadata !DIExpression()), !dbg !862
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_list_head) #4, !dbg !863
  call void @llvm.dbg.declare(metadata ptr %handler_list_head, metadata !855, metadata !DIExpression()), !dbg !864
  store ptr null, ptr %handler_list_head, align 8, !dbg !864
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #4, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %info, metadata !856, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 1, ptr %handler_list_id) #4, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %handler_list_id, metadata !857, metadata !DIExpression()), !dbg !868
  store i8 0, ptr %handler_list_id, align 1, !dbg !868
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !869
  call void @llvm.dbg.declare(metadata ptr %status, metadata !858, metadata !DIExpression()), !dbg !870
  store i32 0, ptr %status, align 4, !dbg !870
  %0 = load ptr, ptr %node.addr, align 8, !dbg !871
  %call = call zeroext i8 @acpi_ev_is_notify_object(ptr noundef %0) #5, !dbg !873
  %tobool = icmp ne i8 %call, 0, !dbg !873
  br i1 %tobool, label %if.end, label %if.then, !dbg !874

if.then:                                          ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !875

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %notify_value.addr, align 4, !dbg !877
  %cmp = icmp ule i32 %1, 127, !dbg !879
  br i1 %cmp, label %if.then1, label %if.else, !dbg !880

if.then1:                                         ; preds = %if.end
  store i8 0, ptr %handler_list_id, align 1, !dbg !881
  br label %if.end2, !dbg !883

if.else:                                          ; preds = %if.end
  store i8 1, ptr %handler_list_id, align 1, !dbg !884
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %2 = load ptr, ptr %node.addr, align 8, !dbg !886
  %call3 = call ptr @acpi_ns_get_attached_object(ptr noundef %2) #5, !dbg !887
  store ptr %call3, ptr %obj_desc, align 8, !dbg !888
  %3 = load ptr, ptr %obj_desc, align 8, !dbg !889
  %tobool4 = icmp ne ptr %3, null, !dbg !889
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !891

if.then5:                                         ; preds = %if.end2
  %4 = load ptr, ptr %obj_desc, align 8, !dbg !892
  %notify_list = getelementptr inbounds %struct.acpi_object_notify_common, ptr %4, i32 0, i32 5, !dbg !894
  %5 = load i8, ptr %handler_list_id, align 1, !dbg !895
  %idxprom = zext i8 %5 to i64, !dbg !892
  %arrayidx = getelementptr [2 x ptr], ptr %notify_list, i64 0, i64 %idxprom, !dbg !892
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !892
  store ptr %6, ptr %handler_list_head, align 8, !dbg !896
  br label %if.end6, !dbg !897

if.end6:                                          ; preds = %if.then5, %if.end2
  %7 = load i8, ptr %handler_list_id, align 1, !dbg !898
  %idxprom7 = zext i8 %7 to i64, !dbg !900
  %arrayidx8 = getelementptr [2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 %idxprom7, !dbg !900
  %handler = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %arrayidx8, i32 0, i32 0, !dbg !901
  %8 = load ptr, ptr %handler, align 16, !dbg !901
  %tobool9 = icmp ne ptr %8, null, !dbg !900
  br i1 %tobool9, label %if.end12, label %land.lhs.true, !dbg !902

land.lhs.true:                                    ; preds = %if.end6
  %9 = load ptr, ptr %handler_list_head, align 8, !dbg !903
  %tobool10 = icmp ne ptr %9, null, !dbg !903
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !904

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !905

if.end12:                                         ; preds = %land.lhs.true, %if.end6
  %call13 = call ptr @acpi_ut_create_generic_state() #5, !dbg !907
  store ptr %call13, ptr %info, align 8, !dbg !908
  %10 = load ptr, ptr %info, align 8, !dbg !909
  %tobool14 = icmp ne ptr %10, null, !dbg !909
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !911

if.then15:                                        ; preds = %if.end12
  store i32 4, ptr %retval, align 4, !dbg !912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !912

if.end16:                                         ; preds = %if.end12
  %11 = load ptr, ptr %info, align 8, !dbg !914
  %descriptor_type = getelementptr inbounds %struct.acpi_common_state, ptr %11, i32 0, i32 1, !dbg !915
  store i8 10, ptr %descriptor_type, align 8, !dbg !916
  %12 = load ptr, ptr %node.addr, align 8, !dbg !917
  %13 = load ptr, ptr %info, align 8, !dbg !918
  %node17 = getelementptr inbounds %struct.acpi_notify_info, ptr %13, i32 0, i32 6, !dbg !919
  store ptr %12, ptr %node17, align 8, !dbg !920
  %14 = load i32, ptr %notify_value.addr, align 4, !dbg !921
  %conv = trunc i32 %14 to i16, !dbg !922
  %15 = load ptr, ptr %info, align 8, !dbg !923
  %value = getelementptr inbounds %struct.acpi_notify_info, ptr %15, i32 0, i32 3, !dbg !924
  store i16 %conv, ptr %value, align 2, !dbg !925
  %16 = load i8, ptr %handler_list_id, align 1, !dbg !926
  %17 = load ptr, ptr %info, align 8, !dbg !927
  %handler_list_id18 = getelementptr inbounds %struct.acpi_notify_info, ptr %17, i32 0, i32 5, !dbg !928
  store i8 %16, ptr %handler_list_id18, align 2, !dbg !929
  %18 = load ptr, ptr %handler_list_head, align 8, !dbg !930
  %19 = load ptr, ptr %info, align 8, !dbg !931
  %handler_list_head19 = getelementptr inbounds %struct.acpi_notify_info, ptr %19, i32 0, i32 7, !dbg !932
  store ptr %18, ptr %handler_list_head19, align 8, !dbg !933
  %20 = load i8, ptr %handler_list_id, align 1, !dbg !934
  %idxprom20 = zext i8 %20 to i64, !dbg !935
  %arrayidx21 = getelementptr [2 x %struct.acpi_global_notify_handler], ptr @acpi_gbl_global_notify, i64 0, i64 %idxprom20, !dbg !935
  %21 = load ptr, ptr %info, align 8, !dbg !936
  %global = getelementptr inbounds %struct.acpi_notify_info, ptr %21, i32 0, i32 8, !dbg !937
  store ptr %arrayidx21, ptr %global, align 8, !dbg !938
  %22 = load ptr, ptr %info, align 8, !dbg !939
  %call22 = call i32 @acpi_os_execute(i32 noundef 1, ptr noundef @acpi_ev_notify_dispatch, ptr noundef %22) #5, !dbg !940
  store i32 %call22, ptr %status, align 4, !dbg !941
  %23 = load i32, ptr %status, align 4, !dbg !942
  %tobool23 = icmp ne i32 %23, 0, !dbg !942
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !944

if.then24:                                        ; preds = %if.end16
  %24 = load ptr, ptr %info, align 8, !dbg !945
  call void @acpi_ut_delete_generic_state(ptr noundef %24) #5, !dbg !947
  br label %if.end25, !dbg !948

if.end25:                                         ; preds = %if.then24, %if.end16
  %25 = load i32, ptr %status, align 4, !dbg !949
  store i32 %25, ptr %retval, align 4, !dbg !950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !950

cleanup:                                          ; preds = %if.end25, %if.then15, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 1, ptr %handler_list_id) #4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_list_head) #4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !951
  %26 = load i32, ptr %retval, align 4, !dbg !951
  ret i32 %26, !dbg !951
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !952 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !956 dso_local ptr @acpi_ut_create_generic_state() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !960 dso_local i32 @acpi_os_execute(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ev_notify_dispatch(ptr noundef %context) #0 align 16 !dbg !968 {
entry:
  %context.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %handler_obj = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !970, metadata !DIExpression()), !dbg !973
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #4, !dbg !974
  call void @llvm.dbg.declare(metadata ptr %info, metadata !971, metadata !DIExpression()), !dbg !975
  %0 = load ptr, ptr %context.addr, align 8, !dbg !976
  store ptr %0, ptr %info, align 8, !dbg !975
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #4, !dbg !977
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !972, metadata !DIExpression()), !dbg !978
  %1 = load ptr, ptr %info, align 8, !dbg !979
  %global = getelementptr inbounds %struct.acpi_notify_info, ptr %1, i32 0, i32 8, !dbg !981
  %2 = load ptr, ptr %global, align 8, !dbg !981
  %handler = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %2, i32 0, i32 0, !dbg !982
  %3 = load ptr, ptr %handler, align 8, !dbg !982
  %tobool = icmp ne ptr %3, null, !dbg !979
  br i1 %tobool, label %if.then, label %if.end, !dbg !983

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %info, align 8, !dbg !984
  %global1 = getelementptr inbounds %struct.acpi_notify_info, ptr %4, i32 0, i32 8, !dbg !986
  %5 = load ptr, ptr %global1, align 8, !dbg !986
  %handler2 = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %5, i32 0, i32 0, !dbg !987
  %6 = load ptr, ptr %handler2, align 8, !dbg !987
  %7 = load ptr, ptr %info, align 8, !dbg !988
  %node = getelementptr inbounds %struct.acpi_notify_info, ptr %7, i32 0, i32 6, !dbg !989
  %8 = load ptr, ptr %node, align 8, !dbg !989
  %9 = load ptr, ptr %info, align 8, !dbg !990
  %value = getelementptr inbounds %struct.acpi_notify_info, ptr %9, i32 0, i32 3, !dbg !991
  %10 = load i16, ptr %value, align 2, !dbg !991
  %conv = zext i16 %10 to i32, !dbg !990
  %11 = load ptr, ptr %info, align 8, !dbg !992
  %global3 = getelementptr inbounds %struct.acpi_notify_info, ptr %11, i32 0, i32 8, !dbg !993
  %12 = load ptr, ptr %global3, align 8, !dbg !993
  %context4 = getelementptr inbounds %struct.acpi_global_notify_handler, ptr %12, i32 0, i32 1, !dbg !994
  %13 = load ptr, ptr %context4, align 8, !dbg !994
  call void %6(ptr noundef %8, i32 noundef %conv, ptr noundef %13) #5, !dbg !984
  br label %if.end, !dbg !995

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %info, align 8, !dbg !996
  %handler_list_head = getelementptr inbounds %struct.acpi_notify_info, ptr %14, i32 0, i32 7, !dbg !997
  %15 = load ptr, ptr %handler_list_head, align 8, !dbg !997
  store ptr %15, ptr %handler_obj, align 8, !dbg !998
  br label %while.cond, !dbg !999

while.cond:                                       ; preds = %while.body, %if.end
  %16 = load ptr, ptr %handler_obj, align 8, !dbg !1000
  %tobool5 = icmp ne ptr %16, null, !dbg !999
  br i1 %tobool5, label %while.body, label %while.end, !dbg !999

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %handler_obj, align 8, !dbg !1001
  %handler6 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %17, i32 0, i32 7, !dbg !1003
  %18 = load ptr, ptr %handler6, align 8, !dbg !1003
  %19 = load ptr, ptr %info, align 8, !dbg !1004
  %node7 = getelementptr inbounds %struct.acpi_notify_info, ptr %19, i32 0, i32 6, !dbg !1005
  %20 = load ptr, ptr %node7, align 8, !dbg !1005
  %21 = load ptr, ptr %info, align 8, !dbg !1006
  %value8 = getelementptr inbounds %struct.acpi_notify_info, ptr %21, i32 0, i32 3, !dbg !1007
  %22 = load i16, ptr %value8, align 2, !dbg !1007
  %conv9 = zext i16 %22 to i32, !dbg !1006
  %23 = load ptr, ptr %handler_obj, align 8, !dbg !1008
  %context10 = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %23, i32 0, i32 8, !dbg !1009
  %24 = load ptr, ptr %context10, align 8, !dbg !1009
  call void %18(ptr noundef %20, i32 noundef %conv9, ptr noundef %24) #5, !dbg !1001
  %25 = load ptr, ptr %handler_obj, align 8, !dbg !1010
  %next = getelementptr inbounds %struct.acpi_object_notify_handler, ptr %25, i32 0, i32 9, !dbg !1011
  %26 = load ptr, ptr %info, align 8, !dbg !1012
  %handler_list_id = getelementptr inbounds %struct.acpi_notify_info, ptr %26, i32 0, i32 5, !dbg !1013
  %27 = load i8, ptr %handler_list_id, align 2, !dbg !1013
  %idxprom = zext i8 %27 to i64, !dbg !1010
  %arrayidx = getelementptr [2 x ptr], ptr %next, i64 0, i64 %idxprom, !dbg !1010
  %28 = load ptr, ptr %arrayidx, align 8, !dbg !1010
  store ptr %28, ptr %handler_obj, align 8, !dbg !1014
  br label %while.cond, !dbg !999, !llvm.loop !1015

while.end:                                        ; preds = %while.cond
  %29 = load ptr, ptr %info, align 8, !dbg !1019
  call void @acpi_ut_delete_generic_state(ptr noundef %29) #5, !dbg !1020
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #4, !dbg !1021
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #4, !dbg !1021
  ret void, !dbg !1021
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1022 dso_local void @acpi_ut_delete_generic_state(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ev_terminate() #0 align 16 !dbg !1025 {
entry:
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !1031
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1029, metadata !DIExpression()), !dbg !1032
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1030, metadata !DIExpression()), !dbg !1034
  %0 = load i8, ptr @acpi_gbl_events_initialized, align 1, !dbg !1035
  %tobool = icmp ne i8 %0, 0, !dbg !1035
  br i1 %tobool, label %if.then, label %if.end11, !dbg !1037

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1038
  br label %for.cond, !dbg !1041

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4, !dbg !1042
  %cmp = icmp ult i32 %1, 5, !dbg !1044
  br i1 %cmp, label %for.body, label %for.end, !dbg !1045

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !1046
  %call = call i32 @acpi_disable_event(i32 noundef %2, i32 noundef 0) #5, !dbg !1048
  store i32 %call, ptr %status, align 4, !dbg !1049
  %3 = load i32, ptr %status, align 4, !dbg !1050
  %tobool1 = icmp ne i32 %3, 0, !dbg !1050
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1052

if.then2:                                         ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !1053
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 224, ptr noundef @.str, i32 noundef %4) #5, !dbg !1053
  br label %if.end, !dbg !1055

if.end:                                           ; preds = %if.then2, %for.body
  br label %for.inc, !dbg !1056

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !1057
  %inc = add i32 %5, 1, !dbg !1057
  store i32 %inc, ptr %i, align 4, !dbg !1057
  br label %for.cond, !dbg !1058, !llvm.loop !1059

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @acpi_ev_walk_gpe_list(ptr noundef @acpi_hw_disable_gpe_block, ptr noundef null) #5, !dbg !1061
  store i32 %call3, ptr %status, align 4, !dbg !1062
  %6 = load i32, ptr %status, align 4, !dbg !1063
  %tobool4 = icmp ne i32 %6, 0, !dbg !1063
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1065

if.then5:                                         ; preds = %for.end
  %7 = load i32, ptr %status, align 4, !dbg !1066
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 234, i32 noundef %7, ptr noundef @.str.1) #5, !dbg !1066
  br label %if.end6, !dbg !1068

if.end6:                                          ; preds = %if.then5, %for.end
  %call7 = call i32 @acpi_ev_remove_global_lock_handler() #5, !dbg !1069
  store i32 %call7, ptr %status, align 4, !dbg !1070
  %8 = load i32, ptr %status, align 4, !dbg !1071
  %tobool8 = icmp ne i32 %8, 0, !dbg !1071
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1073

if.then9:                                         ; preds = %if.end6
  %9 = load i32, ptr %status, align 4, !dbg !1074
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 240, i32 noundef %9, ptr noundef @.str.2) #5, !dbg !1074
  br label %if.end10, !dbg !1076

if.end10:                                         ; preds = %if.then9, %if.end6
  store i8 0, ptr @acpi_gbl_events_initialized, align 1, !dbg !1077
  br label %if.end11, !dbg !1078

if.end11:                                         ; preds = %if.end10, %entry
  %call12 = call i32 @acpi_ev_remove_all_sci_handlers() #5, !dbg !1079
  store i32 %call12, ptr %status, align 4, !dbg !1080
  %10 = load i32, ptr %status, align 4, !dbg !1081
  %tobool13 = icmp ne i32 %10, 0, !dbg !1081
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1083

if.then14:                                        ; preds = %if.end11
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 251, ptr noundef @.str.3) #5, !dbg !1084
  br label %if.end15, !dbg !1086

if.end15:                                         ; preds = %if.then14, %if.end11
  %call16 = call i32 @acpi_ev_walk_gpe_list(ptr noundef @acpi_ev_delete_gpe_handlers, ptr noundef null) #5, !dbg !1087
  store i32 %call16, ptr %status, align 4, !dbg !1088
  %11 = load i32, ptr %status, align 4, !dbg !1089
  %tobool17 = icmp ne i32 %11, 0, !dbg !1089
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1091

if.then18:                                        ; preds = %if.end15
  %12 = load i32, ptr %status, align 4, !dbg !1092
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 258, i32 noundef %12, ptr noundef @.str.4) #5, !dbg !1092
  br label %if.end19, !dbg !1094

if.end19:                                         ; preds = %if.then18, %if.end15
  %13 = load i32, ptr @acpi_gbl_original_mode, align 4, !dbg !1095
  %cmp20 = icmp eq i32 %13, 2, !dbg !1097
  br i1 %cmp20, label %if.then21, label %if.end26, !dbg !1098

if.then21:                                        ; preds = %if.end19
  %call22 = call i32 @acpi_disable() #5, !dbg !1099
  store i32 %call22, ptr %status, align 4, !dbg !1101
  %14 = load i32, ptr %status, align 4, !dbg !1102
  %tobool23 = icmp ne i32 %14, 0, !dbg !1102
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1104

if.then24:                                        ; preds = %if.then21
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 267, ptr noundef @.str.5) #5, !dbg !1105
  br label %if.end25, !dbg !1107

if.end25:                                         ; preds = %if.then24, %if.then21
  br label %if.end26, !dbg !1108

if.end26:                                         ; preds = %if.end25, %if.end19
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1109
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1109
  ret void, !dbg !1109
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1110 dso_local i32 @acpi_disable_event(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1114 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1118 dso_local i32 @acpi_ev_walk_gpe_list(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_hw_disable_gpe_block(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1126 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1129 dso_local i32 @acpi_ev_remove_global_lock_handler() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1132 dso_local i32 @acpi_ev_remove_all_sci_handlers() #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_delete_gpe_handlers(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1133 dso_local i32 @acpi_disable() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1134 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!826, !827, !828, !829, !830, !831, !832, !833}
!llvm.ident = !{!834}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !824, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evmisc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evmisc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evmisc.ll drivers/acpi/acpica/evmisc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !16, globals: !793, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evmisc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7386b8d0063f0a4341eb07a9b85b8ea")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 20, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "OSL_GLOBAL_LOCK_HANDLER", value: 0)
!10 = !DIEnumerator(name: "OSL_NOTIFY_HANDLER", value: 1)
!11 = !DIEnumerator(name: "OSL_GPE_HANDLER", value: 2)
!12 = !DIEnumerator(name: "OSL_DEBUGGER_MAIN_THREAD", value: 3)
!13 = !DIEnumerator(name: "OSL_DEBUGGER_EXEC_THREAD", value: 4)
!14 = !DIEnumerator(name: "OSL_EC_POLL_HANDLER", value: 5)
!15 = !DIEnumerator(name: "OSL_EC_BURST_HANDLER", value: 6)
!16 = !{!17, !23, !19, !26, !27}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !18, line: 421, baseType: !19)
!18 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !20, line: 21, baseType: !21)
!20 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !22, line: 27, baseType: !7)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !20, line: 19, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !22, line: 24, baseType: !25)
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !29, line: 679, size: 640, elements: !30)
!29 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!30 = !{!31, !42, !720, !729, !738, !751, !765, !766, !776}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !28, file: !29, line: 680, baseType: !32, size: 128)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !29, line: 575, size: 128, elements: !33)
!33 = !{!34, !35, !39, !40, !41}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !29, line: 576, baseType: !26, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !32, file: !29, line: 576, baseType: !36, size: 8, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !20, line: 17, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !22, line: 21, baseType: !38)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !29, line: 576, baseType: !36, size: 8, offset: 72)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !29, line: 576, baseType: !23, size: 16, offset: 80)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !32, file: !29, line: 576, baseType: !23, size: 16, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !28, file: !29, line: 681, baseType: !43, size: 384)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !29, line: 604, size: 384, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !717, !718, !719}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !43, file: !29, line: 605, baseType: !26, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !43, file: !29, line: 605, baseType: !36, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !29, line: 605, baseType: !36, size: 8, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !29, line: 605, baseType: !23, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !43, file: !29, line: 605, baseType: !23, size: 16, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !43, file: !29, line: 606, baseType: !23, size: 16, offset: 112)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !43, file: !29, line: 607, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !29, line: 891, size: 1600, elements: !54)
!54 = !{!55, !660, !676}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !53, file: !29, line: 892, baseType: !56, size: 448)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !29, line: 844, size: 448, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !64, !65, !650, !659}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !56, file: !29, line: 845, baseType: !52, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !29, line: 845, baseType: !36, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !29, line: 845, baseType: !36, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !56, file: !29, line: 845, baseType: !23, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !56, file: !29, line: 845, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !29, line: 845, baseType: !52, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !56, file: !29, line: 845, baseType: !66, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !29, line: 133, size: 384, elements: !68)
!68 = !{!69, !634, !635, !636, !637, !646, !647, !648, !649}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !67, file: !29, line: 134, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !72, line: 369, size: 576, elements: !73)
!72 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!73 = !{!74, !82, !98, !110, !123, !137, !146, !278, !295, !311, !324, !403, !415, !429, !439, !457, !479, !498, !517, !536, !553, !580, !597, !610, !624, !633}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !71, file: !72, line: 370, baseType: !75, size: 128)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !72, line: 73, size: 128, elements: !76)
!76 = !{!77, !78, !79, !80, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !72, line: 74, baseType: !70, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !72, line: 74, baseType: !36, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !72, line: 74, baseType: !36, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !72, line: 74, baseType: !23, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !72, line: 74, baseType: !36, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !71, file: !72, line: 371, baseType: !83, size: 192)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !72, line: 76, size: 192, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !94}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !83, file: !72, line: 77, baseType: !70, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !72, line: 77, baseType: !36, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !72, line: 77, baseType: !36, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !83, file: !72, line: 77, baseType: !23, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !72, line: 77, baseType: !36, size: 8, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !83, file: !72, line: 77, baseType: !91, size: 24, offset: 104)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 3)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !83, file: !72, line: 78, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !20, line: 23, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !22, line: 31, baseType: !97)
!97 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !71, file: !72, line: 372, baseType: !99, size: 256)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !72, line: 93, size: 256, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !109}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !99, file: !72, line: 94, baseType: !70, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !99, file: !72, line: 94, baseType: !36, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !72, line: 94, baseType: !36, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !99, file: !72, line: 94, baseType: !23, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !72, line: 94, baseType: !36, size: 8, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !99, file: !72, line: 94, baseType: !107, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !99, file: !72, line: 94, baseType: !19, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !71, file: !72, line: 373, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !72, line: 97, size: 384, elements: !112)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !111, file: !72, line: 98, baseType: !70, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !111, file: !72, line: 98, baseType: !36, size: 8, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !72, line: 98, baseType: !36, size: 8, offset: 72)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !111, file: !72, line: 98, baseType: !23, size: 16, offset: 80)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !72, line: 98, baseType: !36, size: 8, offset: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !111, file: !72, line: 98, baseType: !63, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !111, file: !72, line: 98, baseType: !19, size: 32, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !111, file: !72, line: 99, baseType: !19, size: 32, offset: 224)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !111, file: !72, line: 100, baseType: !63, size: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !72, line: 101, baseType: !66, size: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !71, file: !72, line: 374, baseType: !124, size: 384)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !72, line: 104, size: 384, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132, !134, !135, !136}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !72, line: 105, baseType: !70, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !72, line: 105, baseType: !36, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !72, line: 105, baseType: !36, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !72, line: 105, baseType: !23, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !72, line: 105, baseType: !36, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !124, file: !72, line: 105, baseType: !66, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !124, file: !72, line: 106, baseType: !133, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !124, file: !72, line: 107, baseType: !63, size: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !124, file: !72, line: 108, baseType: !19, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !124, file: !72, line: 109, baseType: !19, size: 32, offset: 352)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !71, file: !72, line: 375, baseType: !138, size: 192)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !72, line: 118, size: 192, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !72, line: 119, baseType: !70, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !72, line: 119, baseType: !36, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !72, line: 119, baseType: !36, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !72, line: 119, baseType: !23, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !72, line: 119, baseType: !36, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !138, file: !72, line: 119, baseType: !26, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !71, file: !72, line: 376, baseType: !147, size: 448)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !72, line: 144, size: 448, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !275, !276, !277}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !147, file: !72, line: 145, baseType: !70, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !147, file: !72, line: 145, baseType: !36, size: 8, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !147, file: !72, line: 145, baseType: !36, size: 8, offset: 72)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !147, file: !72, line: 145, baseType: !23, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !72, line: 145, baseType: !36, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !147, file: !72, line: 145, baseType: !36, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !147, file: !72, line: 146, baseType: !36, size: 8, offset: 112)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !147, file: !72, line: 147, baseType: !36, size: 8, offset: 120)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !147, file: !72, line: 148, baseType: !70, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !147, file: !72, line: 149, baseType: !70, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !147, file: !72, line: 150, baseType: !63, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !147, file: !72, line: 154, baseType: !161, size: 64, offset: 320)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !72, line: 151, size: 64, elements: !162)
!162 = !{!163, !274}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !161, file: !72, line: 152, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !29, line: 248, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!17, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !170, line: 37, size: 9024, elements: !171)
!170 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !207, !208, !209, !210, !211, !215, !219, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !246, !247, !248, !249, !250, !251, !252, !253, !266, !272}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 38, baseType: !168, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !169, file: !170, line: 39, baseType: !36, size: 8, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !169, file: !170, line: 40, baseType: !36, size: 8, offset: 72)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !169, file: !170, line: 41, baseType: !23, size: 16, offset: 80)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !169, file: !170, line: 42, baseType: !36, size: 8, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !169, file: !170, line: 43, baseType: !36, size: 8, offset: 104)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !169, file: !170, line: 44, baseType: !36, size: 8, offset: 112)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !169, file: !170, line: 45, baseType: !180, size: 16, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !18, line: 445, baseType: !23)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !169, file: !170, line: 46, baseType: !36, size: 8, offset: 144)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !169, file: !170, line: 47, baseType: !36, size: 8, offset: 152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !169, file: !170, line: 48, baseType: !36, size: 8, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !169, file: !170, line: 49, baseType: !36, size: 8, offset: 168)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !169, file: !170, line: 50, baseType: !36, size: 8, offset: 176)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !169, file: !170, line: 51, baseType: !36, size: 8, offset: 184)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !169, file: !170, line: 52, baseType: !36, size: 8, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !169, file: !170, line: 53, baseType: !36, size: 8, offset: 200)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !169, file: !170, line: 54, baseType: !63, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !169, file: !170, line: 55, baseType: !19, size: 32, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !169, file: !170, line: 56, baseType: !19, size: 32, offset: 352)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !169, file: !170, line: 57, baseType: !19, size: 32, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !169, file: !170, line: 58, baseType: !19, size: 32, offset: 416)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !169, file: !170, line: 60, baseType: !195, size: 640, offset: 448)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !29, line: 909, size: 640, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !195, file: !29, line: 910, baseType: !63, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !195, file: !29, line: 911, baseType: !63, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !195, file: !29, line: 912, baseType: !63, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !195, file: !29, line: 913, baseType: !63, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !195, file: !29, line: 914, baseType: !63, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !195, file: !29, line: 915, baseType: !52, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !195, file: !29, line: 916, baseType: !66, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !195, file: !29, line: 917, baseType: !27, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !195, file: !29, line: 918, baseType: !52, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !195, file: !29, line: 919, baseType: !19, size: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !169, file: !170, line: 61, baseType: !19, size: 32, offset: 1088)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !169, file: !170, line: 62, baseType: !19, size: 32, offset: 1120)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !169, file: !170, line: 63, baseType: !23, size: 16, offset: 1152)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !169, file: !170, line: 64, baseType: !36, size: 8, offset: 1168)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !169, file: !170, line: 66, baseType: !212, size: 2688, offset: 1216)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2688, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 7)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !169, file: !170, line: 67, baseType: !216, size: 3072, offset: 3904)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3072, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 8)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !169, file: !170, line: 68, baseType: !220, size: 576, offset: 6976)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 576, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 9)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !169, file: !170, line: 69, baseType: !133, size: 64, offset: 7552)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !169, file: !170, line: 71, baseType: !63, size: 64, offset: 7616)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !169, file: !170, line: 72, baseType: !133, size: 64, offset: 7680)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !169, file: !170, line: 73, baseType: !27, size: 64, offset: 7744)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !169, file: !170, line: 74, baseType: !66, size: 64, offset: 7808)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !169, file: !170, line: 75, baseType: !70, size: 64, offset: 7872)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !169, file: !170, line: 76, baseType: !66, size: 64, offset: 7936)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !169, file: !170, line: 77, baseType: !52, size: 64, offset: 8000)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !169, file: !170, line: 78, baseType: !70, size: 64, offset: 8064)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !169, file: !170, line: 79, baseType: !66, size: 64, offset: 8128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !169, file: !170, line: 80, baseType: !107, size: 64, offset: 8192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !169, file: !170, line: 81, baseType: !52, size: 64, offset: 8256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !169, file: !170, line: 82, baseType: !236, size: 64, offset: 8320)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !29, line: 718, size: 128, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !238, file: !29, line: 722, baseType: !19, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !238, file: !29, line: 723, baseType: !19, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !29, line: 724, baseType: !23, size: 16, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !238, file: !29, line: 725, baseType: !36, size: 8, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !238, file: !29, line: 726, baseType: !36, size: 8, offset: 88)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !238, file: !29, line: 727, baseType: !36, size: 8, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !169, file: !170, line: 83, baseType: !52, size: 64, offset: 8384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !169, file: !170, line: 84, baseType: !70, size: 64, offset: 8448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !169, file: !170, line: 85, baseType: !27, size: 64, offset: 8512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !169, file: !170, line: 86, baseType: !70, size: 64, offset: 8576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !169, file: !170, line: 87, baseType: !27, size: 64, offset: 8640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !169, file: !170, line: 88, baseType: !52, size: 64, offset: 8704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !169, file: !170, line: 89, baseType: !52, size: 64, offset: 8768)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !169, file: !170, line: 90, baseType: !254, size: 64, offset: 8832)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !29, line: 634, size: 320, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !29, line: 635, baseType: !26, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !255, file: !29, line: 635, baseType: !36, size: 8, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !29, line: 635, baseType: !36, size: 8, offset: 72)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !255, file: !29, line: 635, baseType: !23, size: 16, offset: 80)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !255, file: !29, line: 635, baseType: !23, size: 16, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !255, file: !29, line: 636, baseType: !36, size: 8, offset: 112)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !255, file: !29, line: 637, baseType: !168, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !255, file: !29, line: 638, baseType: !70, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !255, file: !29, line: 639, baseType: !95, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !169, file: !170, line: 91, baseType: !267, size: 64, offset: 8896)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !29, line: 652, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!17, !168, !271}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !169, file: !170, line: 92, baseType: !273, size: 64, offset: 8960)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !29, line: 656, baseType: !165)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !161, file: !72, line: 153, baseType: !70, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !147, file: !72, line: 156, baseType: !19, size: 32, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !147, file: !72, line: 157, baseType: !180, size: 16, offset: 416)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !147, file: !72, line: 158, baseType: !36, size: 8, offset: 432)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !71, file: !72, line: 377, baseType: !279, size: 576)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !72, line: 122, size: 576, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !279, file: !72, line: 123, baseType: !70, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !72, line: 123, baseType: !36, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !279, file: !72, line: 123, baseType: !36, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !279, file: !72, line: 123, baseType: !23, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !72, line: 123, baseType: !36, size: 8, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !279, file: !72, line: 123, baseType: !36, size: 8, offset: 104)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !279, file: !72, line: 124, baseType: !23, size: 16, offset: 112)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !279, file: !72, line: 125, baseType: !26, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !279, file: !72, line: 126, baseType: !95, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !279, file: !72, line: 127, baseType: !254, size: 64, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !279, file: !72, line: 128, baseType: !70, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !72, line: 129, baseType: !70, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !72, line: 130, baseType: !66, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !279, file: !72, line: 131, baseType: !36, size: 8, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !71, file: !72, line: 378, baseType: !296, size: 512)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !72, line: 134, size: 512, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !309, !310}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !296, file: !72, line: 135, baseType: !70, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !72, line: 135, baseType: !36, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !72, line: 135, baseType: !36, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !296, file: !72, line: 135, baseType: !23, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !72, line: 135, baseType: !36, size: 8, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !296, file: !72, line: 135, baseType: !36, size: 8, offset: 104)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !296, file: !72, line: 136, baseType: !66, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !296, file: !72, line: 137, baseType: !70, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !72, line: 138, baseType: !70, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !296, file: !72, line: 139, baseType: !308, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !18, line: 129, baseType: !95)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !296, file: !72, line: 140, baseType: !19, size: 32, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !296, file: !72, line: 141, baseType: !26, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !71, file: !72, line: 379, baseType: !312, size: 320)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !72, line: 185, size: 320, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !323}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !312, file: !72, line: 186, baseType: !70, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !312, file: !72, line: 186, baseType: !36, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !312, file: !72, line: 186, baseType: !36, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !312, file: !72, line: 186, baseType: !23, size: 16, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !72, line: 186, baseType: !36, size: 8, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !312, file: !72, line: 186, baseType: !320, size: 128, offset: 128)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 2)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !312, file: !72, line: 186, baseType: !70, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !71, file: !72, line: 380, baseType: !325, size: 384)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !72, line: 188, size: 384, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !325, file: !72, line: 189, baseType: !70, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !72, line: 189, baseType: !36, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !325, file: !72, line: 189, baseType: !36, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !325, file: !72, line: 189, baseType: !23, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !72, line: 189, baseType: !36, size: 8, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !325, file: !72, line: 190, baseType: !320, size: 128, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !325, file: !72, line: 190, baseType: !70, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !325, file: !72, line: 190, baseType: !335, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !29, line: 480, size: 576, elements: !337)
!337 = !{!338, !339, !340, !341, !349, !364, !397, !398, !399, !400, !401, !402}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !336, file: !29, line: 481, baseType: !66, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !336, file: !29, line: 482, baseType: !335, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !29, line: 483, baseType: !335, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !336, file: !29, line: 484, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !29, line: 497, size: 256, elements: !344)
!344 = !{!345, !346, !347, !348}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !343, file: !29, line: 498, baseType: !342, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !29, line: 499, baseType: !342, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !343, file: !29, line: 500, baseType: !335, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !343, file: !29, line: 501, baseType: !19, size: 32, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !336, file: !29, line: 485, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !29, line: 466, size: 320, elements: !352)
!352 = !{!353, !358, !359, !360, !361, !362, !363}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !351, file: !29, line: 467, baseType: !354, size: 128)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !29, line: 459, size: 128, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !354, file: !29, line: 460, baseType: !36, size: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !354, file: !29, line: 461, baseType: !95, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !351, file: !29, line: 468, baseType: !354, size: 128, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !351, file: !29, line: 469, baseType: !23, size: 16, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !351, file: !29, line: 470, baseType: !36, size: 8, offset: 272)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !351, file: !29, line: 471, baseType: !36, size: 8, offset: 280)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !351, file: !29, line: 472, baseType: !36, size: 8, offset: 288)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !351, file: !29, line: 473, baseType: !36, size: 8, offset: 296)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !336, file: !29, line: 486, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !29, line: 448, size: 192, elements: !367)
!367 = !{!368, !392, !393, !394, !395, !396}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !366, file: !29, line: 449, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !29, line: 438, size: 64, elements: !370)
!370 = !{!371, !372, !386}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !369, file: !29, line: 439, baseType: !66, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !369, file: !29, line: 440, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !29, line: 419, size: 256, elements: !375)
!375 = !{!376, !382, !383, !384, !385}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !374, file: !29, line: 420, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !18, line: 1058, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!19, !381, !19, !26}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !18, line: 424, baseType: !26)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !374, file: !29, line: 421, baseType: !26, size: 64, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !374, file: !29, line: 422, baseType: !66, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !374, file: !29, line: 423, baseType: !36, size: 8, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !374, file: !29, line: 424, baseType: !36, size: 8, offset: 200)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !369, file: !29, line: 441, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !29, line: 429, size: 128, elements: !389)
!389 = !{!390, !391}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !388, file: !29, line: 430, baseType: !66, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !29, line: 431, baseType: !387, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !366, file: !29, line: 450, baseType: !350, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !29, line: 451, baseType: !36, size: 8, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !366, file: !29, line: 452, baseType: !36, size: 8, offset: 136)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !366, file: !29, line: 453, baseType: !36, size: 8, offset: 144)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !366, file: !29, line: 454, baseType: !36, size: 8, offset: 152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !336, file: !29, line: 487, baseType: !95, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !336, file: !29, line: 488, baseType: !19, size: 32, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !336, file: !29, line: 489, baseType: !23, size: 16, offset: 480)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !336, file: !29, line: 490, baseType: !23, size: 16, offset: 496)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !336, file: !29, line: 491, baseType: !36, size: 8, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !336, file: !29, line: 492, baseType: !36, size: 8, offset: 520)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !71, file: !72, line: 381, baseType: !404, size: 384)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !72, line: 193, size: 384, elements: !405)
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !404, file: !72, line: 194, baseType: !70, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !404, file: !72, line: 194, baseType: !36, size: 8, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !404, file: !72, line: 194, baseType: !36, size: 8, offset: 72)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !404, file: !72, line: 194, baseType: !23, size: 16, offset: 80)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !404, file: !72, line: 194, baseType: !36, size: 8, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !404, file: !72, line: 194, baseType: !320, size: 128, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !404, file: !72, line: 194, baseType: !70, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !404, file: !72, line: 194, baseType: !19, size: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !404, file: !72, line: 195, baseType: !19, size: 32, offset: 352)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !71, file: !72, line: 382, baseType: !416, size: 384)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !72, line: 198, size: 384, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423, !424, !425, !426, !427}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !416, file: !72, line: 199, baseType: !70, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !416, file: !72, line: 199, baseType: !36, size: 8, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !72, line: 199, baseType: !36, size: 8, offset: 72)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !416, file: !72, line: 199, baseType: !23, size: 16, offset: 80)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !72, line: 199, baseType: !36, size: 8, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !416, file: !72, line: 201, baseType: !36, size: 8, offset: 104)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !416, file: !72, line: 202, baseType: !36, size: 8, offset: 112)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !416, file: !72, line: 203, baseType: !320, size: 128, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !416, file: !72, line: 203, baseType: !70, size: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !416, file: !72, line: 203, baseType: !428, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !18, line: 128, baseType: !95)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !71, file: !72, line: 383, baseType: !430, size: 320)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !72, line: 206, size: 320, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !430, file: !72, line: 207, baseType: !70, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !430, file: !72, line: 207, baseType: !36, size: 8, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !72, line: 207, baseType: !36, size: 8, offset: 72)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !430, file: !72, line: 207, baseType: !23, size: 16, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !72, line: 207, baseType: !36, size: 8, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !430, file: !72, line: 207, baseType: !320, size: 128, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !430, file: !72, line: 207, baseType: !70, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !71, file: !72, line: 384, baseType: !440, size: 384)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !72, line: 234, size: 384, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !440, file: !72, line: 235, baseType: !70, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !440, file: !72, line: 235, baseType: !36, size: 8, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !440, file: !72, line: 235, baseType: !36, size: 8, offset: 72)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !440, file: !72, line: 235, baseType: !23, size: 16, offset: 80)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !72, line: 235, baseType: !36, size: 8, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !440, file: !72, line: 235, baseType: !36, size: 8, offset: 104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !440, file: !72, line: 235, baseType: !36, size: 8, offset: 112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !440, file: !72, line: 235, baseType: !36, size: 8, offset: 120)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !72, line: 235, baseType: !66, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !440, file: !72, line: 235, baseType: !19, size: 32, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !440, file: !72, line: 235, baseType: !19, size: 32, offset: 224)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !440, file: !72, line: 235, baseType: !19, size: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !440, file: !72, line: 235, baseType: !36, size: 8, offset: 288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !440, file: !72, line: 235, baseType: !36, size: 8, offset: 296)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !440, file: !72, line: 235, baseType: !70, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !71, file: !72, line: 385, baseType: !458, size: 576)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !72, line: 238, size: 576, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !458, file: !72, line: 239, baseType: !70, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !458, file: !72, line: 239, baseType: !36, size: 8, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !458, file: !72, line: 239, baseType: !36, size: 8, offset: 72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !458, file: !72, line: 239, baseType: !23, size: 16, offset: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !72, line: 239, baseType: !36, size: 8, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !458, file: !72, line: 239, baseType: !36, size: 8, offset: 104)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !458, file: !72, line: 239, baseType: !36, size: 8, offset: 112)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !458, file: !72, line: 239, baseType: !36, size: 8, offset: 120)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !458, file: !72, line: 239, baseType: !66, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !458, file: !72, line: 239, baseType: !19, size: 32, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !458, file: !72, line: 239, baseType: !19, size: 32, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !458, file: !72, line: 239, baseType: !19, size: 32, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !458, file: !72, line: 239, baseType: !36, size: 8, offset: 288)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !458, file: !72, line: 239, baseType: !36, size: 8, offset: 296)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !458, file: !72, line: 239, baseType: !23, size: 16, offset: 304)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !458, file: !72, line: 240, baseType: !70, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !458, file: !72, line: 241, baseType: !63, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !458, file: !72, line: 242, baseType: !23, size: 16, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !458, file: !72, line: 243, baseType: !63, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !71, file: !72, line: 386, baseType: !480, size: 384)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !72, line: 263, size: 384, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !72, line: 264, baseType: !70, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !72, line: 264, baseType: !36, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !72, line: 264, baseType: !36, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !72, line: 264, baseType: !23, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !72, line: 264, baseType: !36, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !480, file: !72, line: 264, baseType: !36, size: 8, offset: 104)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !480, file: !72, line: 264, baseType: !36, size: 8, offset: 112)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !480, file: !72, line: 264, baseType: !36, size: 8, offset: 120)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !480, file: !72, line: 264, baseType: !66, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !480, file: !72, line: 264, baseType: !19, size: 32, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !480, file: !72, line: 264, baseType: !19, size: 32, offset: 224)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !480, file: !72, line: 264, baseType: !19, size: 32, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !480, file: !72, line: 264, baseType: !36, size: 8, offset: 288)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !480, file: !72, line: 264, baseType: !36, size: 8, offset: 296)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !480, file: !72, line: 264, baseType: !36, size: 8, offset: 304)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !480, file: !72, line: 265, baseType: !70, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !71, file: !72, line: 387, baseType: !499, size: 448)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !72, line: 246, size: 448, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !499, file: !72, line: 247, baseType: !70, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !72, line: 247, baseType: !36, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !72, line: 247, baseType: !36, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !499, file: !72, line: 247, baseType: !23, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !72, line: 247, baseType: !36, size: 8, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !499, file: !72, line: 247, baseType: !36, size: 8, offset: 104)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !499, file: !72, line: 247, baseType: !36, size: 8, offset: 112)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !499, file: !72, line: 247, baseType: !36, size: 8, offset: 120)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !499, file: !72, line: 247, baseType: !66, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !499, file: !72, line: 247, baseType: !19, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !499, file: !72, line: 247, baseType: !19, size: 32, offset: 224)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !499, file: !72, line: 247, baseType: !19, size: 32, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !499, file: !72, line: 247, baseType: !36, size: 8, offset: 288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !499, file: !72, line: 247, baseType: !36, size: 8, offset: 296)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !499, file: !72, line: 247, baseType: !70, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !499, file: !72, line: 248, baseType: !70, size: 64, offset: 384)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !71, file: !72, line: 388, baseType: !518, size: 448)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !72, line: 251, size: 448, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !518, file: !72, line: 252, baseType: !70, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !518, file: !72, line: 252, baseType: !36, size: 8, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !72, line: 252, baseType: !36, size: 8, offset: 72)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !518, file: !72, line: 252, baseType: !23, size: 16, offset: 80)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !72, line: 252, baseType: !36, size: 8, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !518, file: !72, line: 252, baseType: !36, size: 8, offset: 104)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !518, file: !72, line: 252, baseType: !36, size: 8, offset: 112)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !518, file: !72, line: 252, baseType: !36, size: 8, offset: 120)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !518, file: !72, line: 252, baseType: !66, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !518, file: !72, line: 252, baseType: !19, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !518, file: !72, line: 252, baseType: !19, size: 32, offset: 224)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !518, file: !72, line: 252, baseType: !19, size: 32, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !518, file: !72, line: 252, baseType: !36, size: 8, offset: 288)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !518, file: !72, line: 252, baseType: !36, size: 8, offset: 296)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !518, file: !72, line: 257, baseType: !70, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !518, file: !72, line: 258, baseType: !70, size: 64, offset: 384)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !71, file: !72, line: 389, baseType: !537, size: 512)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !72, line: 274, size: 512, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !551, !552}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !537, file: !72, line: 275, baseType: !70, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !537, file: !72, line: 275, baseType: !36, size: 8, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !72, line: 275, baseType: !36, size: 8, offset: 72)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !537, file: !72, line: 275, baseType: !23, size: 16, offset: 80)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !72, line: 275, baseType: !36, size: 8, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !537, file: !72, line: 275, baseType: !66, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !537, file: !72, line: 276, baseType: !19, size: 32, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !537, file: !72, line: 277, baseType: !547, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !18, line: 1061, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !381, !19, !26}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !537, file: !72, line: 278, baseType: !26, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !537, file: !72, line: 279, baseType: !320, size: 128, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !71, file: !72, line: 390, baseType: !554, size: 576)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !72, line: 282, size: 576, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !569, !570, !571, !572, !578, !579}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !554, file: !72, line: 283, baseType: !70, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !554, file: !72, line: 283, baseType: !36, size: 8, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !554, file: !72, line: 283, baseType: !36, size: 8, offset: 72)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !554, file: !72, line: 283, baseType: !23, size: 16, offset: 80)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !72, line: 283, baseType: !36, size: 8, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !554, file: !72, line: 283, baseType: !36, size: 8, offset: 104)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !554, file: !72, line: 284, baseType: !36, size: 8, offset: 112)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !554, file: !72, line: 285, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !18, line: 1093, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!17, !19, !308, !19, !568, !26, !26}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !554, file: !72, line: 286, baseType: !66, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !554, file: !72, line: 287, baseType: !26, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !554, file: !72, line: 288, baseType: !26, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !554, file: !72, line: 289, baseType: !573, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !18, line: 1126, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!17, !381, !19, !26, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !554, file: !72, line: 290, baseType: !70, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !72, line: 291, baseType: !70, size: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !71, file: !72, line: 391, baseType: !581, size: 512)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !72, line: 309, size: 512, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !72, line: 310, baseType: !70, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !72, line: 310, baseType: !36, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !72, line: 310, baseType: !36, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !72, line: 310, baseType: !23, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !72, line: 310, baseType: !36, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !581, file: !72, line: 310, baseType: !36, size: 8, offset: 104)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !581, file: !72, line: 311, baseType: !36, size: 8, offset: 112)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !581, file: !72, line: 312, baseType: !36, size: 8, offset: 120)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !581, file: !72, line: 313, baseType: !26, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !581, file: !72, line: 314, baseType: !66, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !581, file: !72, line: 315, baseType: !133, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !581, file: !72, line: 316, baseType: !63, size: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !581, file: !72, line: 317, baseType: !63, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !581, file: !72, line: 318, baseType: !19, size: 32, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !71, file: !72, line: 392, baseType: !598, size: 448)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !72, line: 342, size: 448, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !72, line: 343, baseType: !70, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !72, line: 343, baseType: !36, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !72, line: 343, baseType: !36, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !72, line: 343, baseType: !23, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !72, line: 343, baseType: !36, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !598, file: !72, line: 343, baseType: !66, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !598, file: !72, line: 344, baseType: !66, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !598, file: !72, line: 345, baseType: !26, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !598, file: !72, line: 346, baseType: !63, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !598, file: !72, line: 347, baseType: !19, size: 32, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !71, file: !72, line: 393, baseType: !611, size: 256)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !72, line: 352, size: 256, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !623}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !72, line: 353, baseType: !70, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !72, line: 353, baseType: !36, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !72, line: 353, baseType: !36, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !72, line: 353, baseType: !23, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !72, line: 353, baseType: !36, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !611, file: !72, line: 353, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !18, line: 1064, baseType: !620)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !381, !26}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !611, file: !72, line: 354, baseType: !26, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !71, file: !72, line: 394, baseType: !625, size: 192)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !72, line: 359, size: 192, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !625, file: !72, line: 360, baseType: !70, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !625, file: !72, line: 360, baseType: !36, size: 8, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !625, file: !72, line: 360, baseType: !36, size: 8, offset: 72)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !625, file: !72, line: 360, baseType: !23, size: 16, offset: 80)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !72, line: 360, baseType: !36, size: 8, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !625, file: !72, line: 360, baseType: !70, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !71, file: !72, line: 401, baseType: !67, size: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !67, file: !29, line: 135, baseType: !36, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !29, line: 136, baseType: !36, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !29, line: 137, baseType: !23, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !29, line: 138, baseType: !638, size: 32, offset: 96)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !639, line: 328, size: 32, elements: !640)
!639 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!640 = !{!641, !642}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !638, file: !639, line: 329, baseType: !19, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !638, file: !639, line: 330, baseType: !643, size: 32)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 32, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 4)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !67, file: !29, line: 139, baseType: !66, size: 64, offset: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !67, file: !29, line: 140, baseType: !66, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !67, file: !29, line: 141, baseType: !66, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !67, file: !29, line: 142, baseType: !180, size: 16, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !56, file: !29, line: 845, baseType: !651, size: 64, offset: 320)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !29, line: 732, size: 64, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !651, file: !29, line: 733, baseType: !95, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !651, file: !29, line: 734, baseType: !19, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !651, file: !29, line: 735, baseType: !107, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !651, file: !29, line: 736, baseType: !63, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !651, file: !29, line: 737, baseType: !107, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !651, file: !29, line: 738, baseType: !52, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !56, file: !29, line: 845, baseType: !36, size: 8, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !53, file: !29, line: 893, baseType: !661, size: 640)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !29, line: 851, size: 640, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !661, file: !29, line: 852, baseType: !52, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !29, line: 852, baseType: !36, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !29, line: 852, baseType: !36, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !661, file: !29, line: 852, baseType: !23, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !661, file: !29, line: 852, baseType: !63, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !661, file: !29, line: 852, baseType: !52, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !29, line: 852, baseType: !66, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !29, line: 852, baseType: !651, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !661, file: !29, line: 852, baseType: !36, size: 8, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !661, file: !29, line: 852, baseType: !107, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !661, file: !29, line: 853, baseType: !63, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !661, file: !29, line: 854, baseType: !19, size: 32, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !29, line: 855, baseType: !19, size: 32, offset: 608)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !53, file: !29, line: 894, baseType: !677, size: 1600)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !29, line: 862, size: 1600, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !677, file: !29, line: 863, baseType: !52, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !29, line: 863, baseType: !36, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !29, line: 863, baseType: !36, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !677, file: !29, line: 863, baseType: !23, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !677, file: !29, line: 863, baseType: !63, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !677, file: !29, line: 863, baseType: !52, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !29, line: 863, baseType: !66, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !29, line: 863, baseType: !651, size: 64, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !677, file: !29, line: 863, baseType: !36, size: 8, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !677, file: !29, line: 863, baseType: !52, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !677, file: !29, line: 864, baseType: !52, size: 64, offset: 512)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !677, file: !29, line: 865, baseType: !107, size: 64, offset: 576)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !677, file: !29, line: 866, baseType: !36, size: 8, offset: 640)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !677, file: !29, line: 867, baseType: !107, size: 64, offset: 704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !677, file: !29, line: 868, baseType: !107, size: 64, offset: 768)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !677, file: !29, line: 869, baseType: !107, size: 64, offset: 832)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !677, file: !29, line: 870, baseType: !643, size: 32, offset: 896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !677, file: !29, line: 871, baseType: !19, size: 32, offset: 928)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !677, file: !29, line: 872, baseType: !19, size: 32, offset: 960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !677, file: !29, line: 873, baseType: !19, size: 32, offset: 992)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !677, file: !29, line: 874, baseType: !19, size: 32, offset: 1024)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !677, file: !29, line: 875, baseType: !19, size: 32, offset: 1056)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !677, file: !29, line: 876, baseType: !19, size: 32, offset: 1088)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !677, file: !29, line: 877, baseType: !19, size: 32, offset: 1120)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !677, file: !29, line: 878, baseType: !19, size: 32, offset: 1152)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !677, file: !29, line: 879, baseType: !19, size: 32, offset: 1184)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !677, file: !29, line: 880, baseType: !19, size: 32, offset: 1216)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !677, file: !29, line: 881, baseType: !19, size: 32, offset: 1248)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !677, file: !29, line: 882, baseType: !19, size: 32, offset: 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !677, file: !29, line: 883, baseType: !19, size: 32, offset: 1312)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !677, file: !29, line: 884, baseType: !23, size: 16, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !677, file: !29, line: 885, baseType: !36, size: 8, offset: 1360)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !677, file: !29, line: 886, baseType: !36, size: 8, offset: 1368)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !677, file: !29, line: 887, baseType: !36, size: 8, offset: 1376)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !677, file: !29, line: 888, baseType: !714, size: 160, offset: 1384)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 160, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 20)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !43, file: !29, line: 608, baseType: !63, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !43, file: !29, line: 609, baseType: !63, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !43, file: !29, line: 610, baseType: !95, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !28, file: !29, line: 682, baseType: !721, size: 192)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !29, line: 582, size: 192, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !29, line: 583, baseType: !26, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !721, file: !29, line: 583, baseType: !36, size: 8, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !29, line: 583, baseType: !36, size: 8, offset: 72)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !721, file: !29, line: 583, baseType: !23, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !721, file: !29, line: 583, baseType: !23, size: 16, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !721, file: !29, line: 584, baseType: !70, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !28, file: !29, line: 683, baseType: !730, size: 192)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !29, line: 616, size: 192, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !29, line: 617, baseType: !26, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !29, line: 617, baseType: !36, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !29, line: 617, baseType: !36, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !730, file: !29, line: 617, baseType: !23, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !730, file: !29, line: 617, baseType: !23, size: 16, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !29, line: 618, baseType: !66, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !28, file: !29, line: 684, baseType: !739, size: 448)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !29, line: 621, size: 448, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !739, file: !29, line: 622, baseType: !26, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !29, line: 622, baseType: !36, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !29, line: 622, baseType: !36, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !739, file: !29, line: 622, baseType: !23, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !739, file: !29, line: 622, baseType: !23, size: 16, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !739, file: !29, line: 623, baseType: !19, size: 32, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !739, file: !29, line: 624, baseType: !52, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !739, file: !29, line: 625, baseType: !63, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !739, file: !29, line: 626, baseType: !63, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !739, file: !29, line: 627, baseType: !19, size: 32, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !28, file: !29, line: 685, baseType: !752, size: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !29, line: 590, size: 512, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !752, file: !29, line: 591, baseType: !26, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !29, line: 591, baseType: !36, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !29, line: 591, baseType: !36, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !752, file: !29, line: 591, baseType: !23, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !752, file: !29, line: 591, baseType: !23, size: 16, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !752, file: !29, line: 592, baseType: !19, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !752, file: !29, line: 593, baseType: !70, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !752, file: !29, line: 594, baseType: !70, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !752, file: !29, line: 595, baseType: !168, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !752, file: !29, line: 596, baseType: !26, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !752, file: !29, line: 597, baseType: !19, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !28, file: !29, line: 686, baseType: !255, size: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !28, file: !29, line: 687, baseType: !767, size: 640)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !29, line: 646, size: 640, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !29, line: 647, baseType: !26, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !29, line: 647, baseType: !36, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !29, line: 647, baseType: !36, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !767, file: !29, line: 647, baseType: !23, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !767, file: !29, line: 647, baseType: !23, size: 16, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !767, file: !29, line: 648, baseType: !775, size: 512, offset: 128)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 512, elements: !217)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !28, file: !29, line: 688, baseType: !777, size: 320)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !29, line: 669, size: 320, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !29, line: 670, baseType: !26, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !777, file: !29, line: 670, baseType: !36, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !29, line: 670, baseType: !36, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !777, file: !29, line: 670, baseType: !23, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !777, file: !29, line: 670, baseType: !23, size: 16, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !777, file: !29, line: 671, baseType: !36, size: 8, offset: 112)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !777, file: !29, line: 672, baseType: !66, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !777, file: !29, line: 673, baseType: !70, size: 64, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !777, file: !29, line: 674, baseType: !788, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !29, line: 660, size: 128, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !789, file: !29, line: 661, baseType: !547, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !789, file: !29, line: 662, baseType: !26, size: 64, offset: 64)
!793 = !{!794, !799, !804, !809, !814, !819, !0}
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !3, line: 224, type: !796, isLocal: true, isDefinition: true)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 264, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 33)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !801, isLocal: true, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 288, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 36)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !806, isLocal: true, isDefinition: true)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 296, elements: !807)
!807 = !{!808}
!808 = !DISubrange(count: 37)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 232, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 29)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !816, isLocal: true, isDefinition: true)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 240, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 30)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !821, isLocal: true, isDefinition: true)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 152, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 19)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !825, size: 56, elements: !213)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!826 = !{i32 7, !"Dwarf Version", i32 5}
!827 = !{i32 2, !"Debug Info Version", i32 3}
!828 = !{i32 1, !"wchar_size", i32 2}
!829 = !{i32 8, !"cf-protection-branch", i32 1}
!830 = !{i32 4, !"function_return_thunk_extern", i32 1}
!831 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!832 = !{i32 1, !"Code Model", i32 2}
!833 = !{i32 1, !"override-stack-alignment", i32 8}
!834 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!835 = distinct !DISubprogram(name: "acpi_ev_is_notify_object", scope: !3, file: !3, line: 35, type: !836, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{!36, !66}
!838 = !{!839}
!839 = !DILocalVariable(name: "node", arg: 1, scope: !835, file: !3, line: 35, type: !66)
!840 = !DILocation(line: 35, column: 57, scope: !835)
!841 = !DILocation(line: 38, column: 10, scope: !835)
!842 = !DILocation(line: 38, column: 16, scope: !835)
!843 = !DILocation(line: 38, column: 2, scope: !835)
!844 = !DILocation(line: 45, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !835, file: !3, line: 38, column: 22)
!846 = !DILocation(line: 49, column: 3, scope: !845)
!847 = !DILocation(line: 51, column: 1, scope: !835)
!848 = distinct !DISubprogram(name: "acpi_ev_queue_notify_request", scope: !3, file: !3, line: 68, type: !849, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!17, !66, !19}
!851 = !{!852, !853, !854, !855, !856, !857, !858}
!852 = !DILocalVariable(name: "node", arg: 1, scope: !848, file: !3, line: 68, type: !66)
!853 = !DILocalVariable(name: "notify_value", arg: 2, scope: !848, file: !3, line: 68, type: !19)
!854 = !DILocalVariable(name: "obj_desc", scope: !848, file: !3, line: 70, type: !70)
!855 = !DILocalVariable(name: "handler_list_head", scope: !848, file: !3, line: 71, type: !70)
!856 = !DILocalVariable(name: "info", scope: !848, file: !3, line: 72, type: !27)
!857 = !DILocalVariable(name: "handler_list_id", scope: !848, file: !3, line: 73, type: !36)
!858 = !DILocalVariable(name: "status", scope: !848, file: !3, line: 74, type: !17)
!859 = !DILocation(line: 68, column: 58, scope: !848)
!860 = !DILocation(line: 68, column: 68, scope: !848)
!861 = !DILocation(line: 70, column: 2, scope: !848)
!862 = !DILocation(line: 70, column: 29, scope: !848)
!863 = !DILocation(line: 71, column: 2, scope: !848)
!864 = !DILocation(line: 71, column: 29, scope: !848)
!865 = !DILocation(line: 72, column: 2, scope: !848)
!866 = !DILocation(line: 72, column: 28, scope: !848)
!867 = !DILocation(line: 73, column: 2, scope: !848)
!868 = !DILocation(line: 73, column: 5, scope: !848)
!869 = !DILocation(line: 74, column: 2, scope: !848)
!870 = !DILocation(line: 74, column: 14, scope: !848)
!871 = !DILocation(line: 80, column: 32, scope: !872)
!872 = distinct !DILexicalBlock(scope: !848, file: !3, line: 80, column: 6)
!873 = !DILocation(line: 80, column: 7, scope: !872)
!874 = !DILocation(line: 80, column: 6, scope: !848)
!875 = !DILocation(line: 81, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 80, column: 39)
!877 = !DILocation(line: 86, column: 6, scope: !878)
!878 = distinct !DILexicalBlock(scope: !848, file: !3, line: 86, column: 6)
!879 = !DILocation(line: 86, column: 19, scope: !878)
!880 = !DILocation(line: 86, column: 6, scope: !848)
!881 = !DILocation(line: 87, column: 19, scope: !882)
!882 = distinct !DILexicalBlock(scope: !878, file: !3, line: 86, column: 43)
!883 = !DILocation(line: 88, column: 2, scope: !882)
!884 = !DILocation(line: 89, column: 19, scope: !885)
!885 = distinct !DILexicalBlock(scope: !878, file: !3, line: 88, column: 9)
!886 = !DILocation(line: 94, column: 41, scope: !848)
!887 = !DILocation(line: 94, column: 13, scope: !848)
!888 = !DILocation(line: 94, column: 11, scope: !848)
!889 = !DILocation(line: 95, column: 6, scope: !890)
!890 = distinct !DILexicalBlock(scope: !848, file: !3, line: 95, column: 6)
!891 = !DILocation(line: 95, column: 6, scope: !848)
!892 = !DILocation(line: 100, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 95, column: 16)
!894 = !DILocation(line: 100, column: 31, scope: !893)
!895 = !DILocation(line: 100, column: 43, scope: !893)
!896 = !DILocation(line: 99, column: 21, scope: !893)
!897 = !DILocation(line: 101, column: 2, scope: !893)
!898 = !DILocation(line: 107, column: 30, scope: !899)
!899 = distinct !DILexicalBlock(scope: !848, file: !3, line: 107, column: 6)
!900 = !DILocation(line: 107, column: 7, scope: !899)
!901 = !DILocation(line: 107, column: 47, scope: !899)
!902 = !DILocation(line: 108, column: 6, scope: !899)
!903 = !DILocation(line: 108, column: 10, scope: !899)
!904 = !DILocation(line: 107, column: 6, scope: !848)
!905 = !DILocation(line: 114, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !899, file: !3, line: 108, column: 29)
!907 = !DILocation(line: 119, column: 9, scope: !848)
!908 = !DILocation(line: 119, column: 7, scope: !848)
!909 = !DILocation(line: 120, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !848, file: !3, line: 120, column: 6)
!911 = !DILocation(line: 120, column: 6, scope: !848)
!912 = !DILocation(line: 121, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 120, column: 13)
!914 = !DILocation(line: 124, column: 2, scope: !848)
!915 = !DILocation(line: 124, column: 15, scope: !848)
!916 = !DILocation(line: 124, column: 31, scope: !848)
!917 = !DILocation(line: 126, column: 22, scope: !848)
!918 = !DILocation(line: 126, column: 2, scope: !848)
!919 = !DILocation(line: 126, column: 15, scope: !848)
!920 = !DILocation(line: 126, column: 20, scope: !848)
!921 = !DILocation(line: 127, column: 28, scope: !848)
!922 = !DILocation(line: 127, column: 23, scope: !848)
!923 = !DILocation(line: 127, column: 2, scope: !848)
!924 = !DILocation(line: 127, column: 15, scope: !848)
!925 = !DILocation(line: 127, column: 21, scope: !848)
!926 = !DILocation(line: 128, column: 33, scope: !848)
!927 = !DILocation(line: 128, column: 2, scope: !848)
!928 = !DILocation(line: 128, column: 15, scope: !848)
!929 = !DILocation(line: 128, column: 31, scope: !848)
!930 = !DILocation(line: 129, column: 35, scope: !848)
!931 = !DILocation(line: 129, column: 2, scope: !848)
!932 = !DILocation(line: 129, column: 15, scope: !848)
!933 = !DILocation(line: 129, column: 33, scope: !848)
!934 = !DILocation(line: 130, column: 48, scope: !848)
!935 = !DILocation(line: 130, column: 25, scope: !848)
!936 = !DILocation(line: 130, column: 2, scope: !848)
!937 = !DILocation(line: 130, column: 15, scope: !848)
!938 = !DILocation(line: 130, column: 22, scope: !848)
!939 = !DILocation(line: 140, column: 31, scope: !848)
!940 = !DILocation(line: 139, column: 11, scope: !848)
!941 = !DILocation(line: 139, column: 9, scope: !848)
!942 = !DILocation(line: 141, column: 6, scope: !943)
!943 = distinct !DILexicalBlock(scope: !848, file: !3, line: 141, column: 6)
!944 = !DILocation(line: 141, column: 6, scope: !848)
!945 = !DILocation(line: 142, column: 32, scope: !946)
!946 = distinct !DILexicalBlock(scope: !943, file: !3, line: 141, column: 28)
!947 = !DILocation(line: 142, column: 3, scope: !946)
!948 = !DILocation(line: 143, column: 2, scope: !946)
!949 = !DILocation(line: 145, column: 10, scope: !848)
!950 = !DILocation(line: 145, column: 2, scope: !848)
!951 = !DILocation(line: 146, column: 1, scope: !848)
!952 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !953, file: !953, line: 298, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!954 = !DISubroutineType(types: !955)
!955 = !{!70, !66}
!956 = !DISubprogram(name: "acpi_ut_create_generic_state", scope: !957, file: !957, line: 513, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!958 = !DISubroutineType(types: !959)
!959 = !{!27}
!960 = !DISubprogram(name: "acpi_os_execute", scope: !6, file: !6, line: 247, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubroutineType(types: !962)
!962 = !{!17, !963, !964, !26}
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_execute_type", file: !6, line: 28, baseType: !5)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_osd_exec_callback", file: !18, line: 1038, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !26}
!968 = distinct !DISubprogram(name: "acpi_ev_notify_dispatch", scope: !3, file: !3, line: 161, type: !966, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !969)
!969 = !{!970, !971, !972}
!970 = !DILocalVariable(name: "context", arg: 1, scope: !968, file: !3, line: 161, type: !26)
!971 = !DILocalVariable(name: "info", scope: !968, file: !3, line: 163, type: !27)
!972 = !DILocalVariable(name: "handler_obj", scope: !968, file: !3, line: 164, type: !70)
!973 = !DILocation(line: 161, column: 61, scope: !968)
!974 = !DILocation(line: 163, column: 2, scope: !968)
!975 = !DILocation(line: 163, column: 28, scope: !968)
!976 = !DILocation(line: 163, column: 63, scope: !968)
!977 = !DILocation(line: 164, column: 2, scope: !968)
!978 = !DILocation(line: 164, column: 29, scope: !968)
!979 = !DILocation(line: 170, column: 6, scope: !980)
!980 = distinct !DILexicalBlock(scope: !968, file: !3, line: 170, column: 6)
!981 = !DILocation(line: 170, column: 19, scope: !980)
!982 = !DILocation(line: 170, column: 27, scope: !980)
!983 = !DILocation(line: 170, column: 6, scope: !968)
!984 = !DILocation(line: 171, column: 3, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !3, line: 170, column: 36)
!986 = !DILocation(line: 171, column: 16, scope: !985)
!987 = !DILocation(line: 171, column: 24, scope: !985)
!988 = !DILocation(line: 171, column: 32, scope: !985)
!989 = !DILocation(line: 171, column: 45, scope: !985)
!990 = !DILocation(line: 172, column: 11, scope: !985)
!991 = !DILocation(line: 172, column: 24, scope: !985)
!992 = !DILocation(line: 173, column: 11, scope: !985)
!993 = !DILocation(line: 173, column: 24, scope: !985)
!994 = !DILocation(line: 173, column: 32, scope: !985)
!995 = !DILocation(line: 174, column: 2, scope: !985)
!996 = !DILocation(line: 178, column: 16, scope: !968)
!997 = !DILocation(line: 178, column: 29, scope: !968)
!998 = !DILocation(line: 178, column: 14, scope: !968)
!999 = !DILocation(line: 179, column: 2, scope: !968)
!1000 = !DILocation(line: 179, column: 9, scope: !968)
!1001 = !DILocation(line: 180, column: 3, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !968, file: !3, line: 179, column: 22)
!1003 = !DILocation(line: 180, column: 23, scope: !1002)
!1004 = !DILocation(line: 180, column: 31, scope: !1002)
!1005 = !DILocation(line: 180, column: 44, scope: !1002)
!1006 = !DILocation(line: 181, column: 10, scope: !1002)
!1007 = !DILocation(line: 181, column: 23, scope: !1002)
!1008 = !DILocation(line: 182, column: 10, scope: !1002)
!1009 = !DILocation(line: 182, column: 30, scope: !1002)
!1010 = !DILocation(line: 185, column: 7, scope: !1002)
!1011 = !DILocation(line: 185, column: 27, scope: !1002)
!1012 = !DILocation(line: 185, column: 32, scope: !1002)
!1013 = !DILocation(line: 185, column: 45, scope: !1002)
!1014 = !DILocation(line: 184, column: 15, scope: !1002)
!1015 = distinct !{!1015, !999, !1016, !1017, !1018}
!1016 = !DILocation(line: 186, column: 2, scope: !968)
!1017 = !{!"llvm.loop.mustprogress"}
!1018 = !{!"llvm.loop.unroll.disable"}
!1019 = !DILocation(line: 190, column: 31, scope: !968)
!1020 = !DILocation(line: 190, column: 2, scope: !968)
!1021 = !DILocation(line: 191, column: 1, scope: !968)
!1022 = !DISubprogram(name: "acpi_ut_delete_generic_state", scope: !957, file: !957, line: 531, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !27}
!1025 = distinct !DISubprogram(name: "acpi_ev_terminate", scope: !3, file: !3, line: 206, type: !1026, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1028)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null}
!1028 = !{!1029, !1030}
!1029 = !DILocalVariable(name: "i", scope: !1025, file: !3, line: 208, type: !19)
!1030 = !DILocalVariable(name: "status", scope: !1025, file: !3, line: 209, type: !17)
!1031 = !DILocation(line: 208, column: 2, scope: !1025)
!1032 = !DILocation(line: 208, column: 6, scope: !1025)
!1033 = !DILocation(line: 209, column: 2, scope: !1025)
!1034 = !DILocation(line: 209, column: 14, scope: !1025)
!1035 = !DILocation(line: 213, column: 6, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 213, column: 6)
!1037 = !DILocation(line: 213, column: 6, scope: !1025)
!1038 = !DILocation(line: 221, column: 10, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 221, column: 3)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 213, column: 35)
!1041 = !DILocation(line: 221, column: 8, scope: !1039)
!1042 = !DILocation(line: 221, column: 15, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 221, column: 3)
!1044 = !DILocation(line: 221, column: 17, scope: !1043)
!1045 = !DILocation(line: 221, column: 3, scope: !1039)
!1046 = !DILocation(line: 222, column: 32, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 221, column: 47)
!1048 = !DILocation(line: 222, column: 13, scope: !1047)
!1049 = !DILocation(line: 222, column: 11, scope: !1047)
!1050 = !DILocation(line: 223, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 223, column: 8)
!1052 = !DILocation(line: 223, column: 8, scope: !1047)
!1053 = !DILocation(line: 224, column: 5, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 223, column: 30)
!1055 = !DILocation(line: 227, column: 4, scope: !1054)
!1056 = !DILocation(line: 228, column: 3, scope: !1047)
!1057 = !DILocation(line: 221, column: 43, scope: !1043)
!1058 = !DILocation(line: 221, column: 3, scope: !1043)
!1059 = distinct !{!1059, !1045, !1060, !1017, !1018}
!1060 = !DILocation(line: 228, column: 3, scope: !1039)
!1061 = !DILocation(line: 232, column: 12, scope: !1040)
!1062 = !DILocation(line: 232, column: 10, scope: !1040)
!1063 = !DILocation(line: 233, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 233, column: 7)
!1065 = !DILocation(line: 233, column: 7, scope: !1040)
!1066 = !DILocation(line: 234, column: 4, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 233, column: 29)
!1068 = !DILocation(line: 236, column: 3, scope: !1067)
!1069 = !DILocation(line: 238, column: 12, scope: !1040)
!1070 = !DILocation(line: 238, column: 10, scope: !1040)
!1071 = !DILocation(line: 239, column: 7, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 239, column: 7)
!1073 = !DILocation(line: 239, column: 7, scope: !1040)
!1074 = !DILocation(line: 240, column: 4, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 239, column: 29)
!1076 = !DILocation(line: 242, column: 3, scope: !1075)
!1077 = !DILocation(line: 244, column: 31, scope: !1040)
!1078 = !DILocation(line: 245, column: 2, scope: !1040)
!1079 = !DILocation(line: 249, column: 11, scope: !1025)
!1080 = !DILocation(line: 249, column: 9, scope: !1025)
!1081 = !DILocation(line: 250, column: 6, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 250, column: 6)
!1083 = !DILocation(line: 250, column: 6, scope: !1025)
!1084 = !DILocation(line: 251, column: 3, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 250, column: 28)
!1086 = !DILocation(line: 252, column: 2, scope: !1085)
!1087 = !DILocation(line: 256, column: 11, scope: !1025)
!1088 = !DILocation(line: 256, column: 9, scope: !1025)
!1089 = !DILocation(line: 257, column: 6, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 257, column: 6)
!1091 = !DILocation(line: 257, column: 6, scope: !1025)
!1092 = !DILocation(line: 258, column: 3, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 257, column: 28)
!1094 = !DILocation(line: 260, column: 2, scope: !1093)
!1095 = !DILocation(line: 264, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 264, column: 6)
!1097 = !DILocation(line: 264, column: 29, scope: !1096)
!1098 = !DILocation(line: 264, column: 6, scope: !1025)
!1099 = !DILocation(line: 265, column: 12, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 264, column: 54)
!1101 = !DILocation(line: 265, column: 10, scope: !1100)
!1102 = !DILocation(line: 266, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 266, column: 7)
!1104 = !DILocation(line: 266, column: 7, scope: !1100)
!1105 = !DILocation(line: 267, column: 4, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 266, column: 29)
!1107 = !DILocation(line: 268, column: 3, scope: !1106)
!1108 = !DILocation(line: 269, column: 2, scope: !1100)
!1109 = !DILocation(line: 271, column: 1, scope: !1025)
!1110 = !DISubprogram(name: "acpi_disable_event", scope: !1111, file: !1111, line: 708, type: !1112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1111 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!17, !19, !19}
!1114 = !DISubprogram(name: "acpi_error", scope: !1111, file: !1111, line: 901, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !1117, !19, !1117, null}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!1118 = !DISubprogram(name: "acpi_ev_walk_gpe_list", scope: !1119, file: !1119, line: 133, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!17, !1122, !26}
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_callback", file: !29, line: 519, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!17, !342, !335, !26}
!1126 = !DISubprogram(name: "acpi_exception", scope: !1111, file: !1111, line: 906, type: !1127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !1117, !19, !17, !1117, null}
!1129 = !DISubprogram(name: "acpi_ev_remove_global_lock_handler", scope: !1119, file: !1119, line: 56, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!17}
!1132 = !DISubprogram(name: "acpi_ev_remove_all_sci_handlers", scope: !1119, file: !1119, line: 249, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1133 = !DISubprogram(name: "acpi_disable", scope: !1111, file: !1111, line: 422, type: !1130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DISubprogram(name: "acpi_warning", scope: !1111, file: !1111, line: 912, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
