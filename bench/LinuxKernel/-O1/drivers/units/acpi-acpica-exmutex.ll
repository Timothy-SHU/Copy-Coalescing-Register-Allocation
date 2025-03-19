; ModuleID = 'drivers/acpi/acpica/exmutex.c'
source_filename = "drivers/acpi/acpica/exmutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_mutex = type { ptr, i8, i8, i16, i8, i8, i16, ptr, i64, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_thread_state = type { ptr, i8, i8, i16, i16, i8, ptr, ptr, i64 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }

@acpi_gbl_global_lock_mutex = external dso_local global ptr, align 8
@_acpi_module_name = internal constant [8 x i8] c"exmutex\00", align 1, !dbg !0
@.str = private unnamed_addr constant [47 x i8] c"Cannot acquire Mutex [%4.4s], null thread info\00", align 1, !dbg !16
@.str.1 = private unnamed_addr constant [66 x i8] c"Cannot acquire Mutex [%4.4s], current SyncLevel is too large (%u)\00", align 1, !dbg !22
@.str.2 = private unnamed_addr constant [43 x i8] c"Cannot release Mutex [%4.4s], not acquired\00", align 1, !dbg !27
@.str.3 = private unnamed_addr constant [47 x i8] c"Cannot release Mutex [%4.4s], null thread info\00", align 1, !dbg !32
@.str.4 = private unnamed_addr constant [61 x i8] c"Thread %u cannot release Mutex [%4.4s] acquired by thread %u\00", align 1, !dbg !34
@.str.5 = private unnamed_addr constant [70 x i8] c"Cannot release Mutex [%4.4s], SyncLevel mismatch: mutex %u current %u\00", align 1, !dbg !39

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_unlink_mutex(ptr noundef %obj_desc) #0 align 16 !dbg !57 {
entry:
  %obj_desc.addr = alloca ptr, align 8
  %thread = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !825, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 8, ptr %thread) #4, !dbg !828
  call void @llvm.dbg.declare(metadata ptr %thread, metadata !826, metadata !DIExpression()), !dbg !829
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !830
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, ptr %0, i32 0, i32 9, !dbg !831
  %1 = load ptr, ptr %owner_thread, align 8, !dbg !831
  store ptr %1, ptr %thread, align 8, !dbg !829
  %2 = load ptr, ptr %thread, align 8, !dbg !832
  %tobool = icmp ne ptr %2, null, !dbg !832
  br i1 %tobool, label %if.end, label %if.then, !dbg !834

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !835

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !837
  %next = getelementptr inbounds %struct.acpi_object_mutex, ptr %3, i32 0, i32 11, !dbg !839
  %4 = load ptr, ptr %next, align 8, !dbg !839
  %tobool1 = icmp ne ptr %4, null, !dbg !837
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !840

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !841
  %prev = getelementptr inbounds %struct.acpi_object_mutex, ptr %5, i32 0, i32 10, !dbg !843
  %6 = load ptr, ptr %prev, align 8, !dbg !843
  %7 = load ptr, ptr %obj_desc.addr, align 8, !dbg !844
  %next3 = getelementptr inbounds %struct.acpi_object_mutex, ptr %7, i32 0, i32 11, !dbg !845
  %8 = load ptr, ptr %next3, align 8, !dbg !845
  %prev4 = getelementptr inbounds %struct.acpi_object_mutex, ptr %8, i32 0, i32 10, !dbg !846
  store ptr %6, ptr %prev4, align 8, !dbg !847
  br label %if.end5, !dbg !848

if.end5:                                          ; preds = %if.then2, %if.end
  %9 = load ptr, ptr %obj_desc.addr, align 8, !dbg !849
  %prev6 = getelementptr inbounds %struct.acpi_object_mutex, ptr %9, i32 0, i32 10, !dbg !851
  %10 = load ptr, ptr %prev6, align 8, !dbg !851
  %tobool7 = icmp ne ptr %10, null, !dbg !849
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !852

if.then8:                                         ; preds = %if.end5
  %11 = load ptr, ptr %obj_desc.addr, align 8, !dbg !853
  %next9 = getelementptr inbounds %struct.acpi_object_mutex, ptr %11, i32 0, i32 11, !dbg !855
  %12 = load ptr, ptr %next9, align 8, !dbg !855
  %13 = load ptr, ptr %obj_desc.addr, align 8, !dbg !856
  %prev10 = getelementptr inbounds %struct.acpi_object_mutex, ptr %13, i32 0, i32 10, !dbg !857
  %14 = load ptr, ptr %prev10, align 8, !dbg !857
  %next11 = getelementptr inbounds %struct.acpi_object_mutex, ptr %14, i32 0, i32 11, !dbg !858
  store ptr %12, ptr %next11, align 8, !dbg !859
  %15 = load ptr, ptr %obj_desc.addr, align 8, !dbg !860
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %15, i32 0, i32 13, !dbg !861
  %16 = load i8, ptr %original_sync_level, align 8, !dbg !861
  %17 = load ptr, ptr %obj_desc.addr, align 8, !dbg !862
  %prev12 = getelementptr inbounds %struct.acpi_object_mutex, ptr %17, i32 0, i32 10, !dbg !863
  %18 = load ptr, ptr %prev12, align 8, !dbg !863
  %original_sync_level13 = getelementptr inbounds %struct.acpi_object_mutex, ptr %18, i32 0, i32 13, !dbg !864
  store i8 %16, ptr %original_sync_level13, align 8, !dbg !865
  br label %if.end15, !dbg !866

if.else:                                          ; preds = %if.end5
  %19 = load ptr, ptr %obj_desc.addr, align 8, !dbg !867
  %next14 = getelementptr inbounds %struct.acpi_object_mutex, ptr %19, i32 0, i32 11, !dbg !869
  %20 = load ptr, ptr %next14, align 8, !dbg !869
  %21 = load ptr, ptr %thread, align 8, !dbg !870
  %acquired_mutex_list = getelementptr inbounds %struct.acpi_thread_state, ptr %21, i32 0, i32 7, !dbg !871
  store ptr %20, ptr %acquired_mutex_list, align 8, !dbg !872
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !873
  br label %cleanup, !dbg !873

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %thread) #4, !dbg !873
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !873

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_acquire_mutex_object(i16 noundef zeroext %timeout, ptr noundef %obj_desc, i64 noundef %thread_id) #0 align 16 !dbg !874 {
entry:
  %retval = alloca i32, align 4
  %timeout.addr = alloca i16, align 2
  %obj_desc.addr = alloca ptr, align 8
  %thread_id.addr = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %timeout, ptr %timeout.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %timeout.addr, metadata !878, metadata !DIExpression()), !dbg !882
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !879, metadata !DIExpression()), !dbg !883
  store i64 %thread_id, ptr %thread_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread_id.addr, metadata !880, metadata !DIExpression()), !dbg !884
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !885
  call void @llvm.dbg.declare(metadata ptr %status, metadata !881, metadata !DIExpression()), !dbg !886
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !887
  %tobool = icmp ne ptr %0, null, !dbg !887
  br i1 %tobool, label %if.end, label %if.then, !dbg !889

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !890

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !892
  %thread_id1 = getelementptr inbounds %struct.acpi_object_mutex, ptr %1, i32 0, i32 8, !dbg !894
  %2 = load i64, ptr %thread_id1, align 8, !dbg !894
  %3 = load i64, ptr %thread_id.addr, align 8, !dbg !895
  %cmp = icmp eq i64 %2, %3, !dbg !896
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !897

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !898
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, ptr %4, i32 0, i32 6, !dbg !900
  %5 = load i16, ptr %acquisition_depth, align 2, !dbg !901
  %inc = add i16 %5, 1, !dbg !901
  store i16 %inc, ptr %acquisition_depth, align 2, !dbg !901
  store i32 0, ptr %retval, align 4, !dbg !902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !902

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !903
  %7 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !905
  %cmp4 = icmp eq ptr %6, %7, !dbg !906
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !907

if.then5:                                         ; preds = %if.end3
  %8 = load i16, ptr %timeout.addr, align 2, !dbg !908
  %call = call i32 @acpi_ev_acquire_global_lock(i16 noundef zeroext %8) #5, !dbg !910
  store i32 %call, ptr %status, align 4, !dbg !911
  br label %if.end7, !dbg !912

if.else:                                          ; preds = %if.end3
  %9 = load ptr, ptr %obj_desc.addr, align 8, !dbg !913
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %9, i32 0, i32 7, !dbg !915
  %10 = load ptr, ptr %os_mutex, align 8, !dbg !915
  %11 = load i16, ptr %timeout.addr, align 2, !dbg !916
  %call6 = call i32 @acpi_ex_system_wait_mutex(ptr noundef %10, i16 noundef zeroext %11) #5, !dbg !917
  store i32 %call6, ptr %status, align 4, !dbg !918
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %12 = load i32, ptr %status, align 4, !dbg !919
  %tobool8 = icmp ne i32 %12, 0, !dbg !919
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !921

if.then9:                                         ; preds = %if.end7
  %13 = load i32, ptr %status, align 4, !dbg !922
  store i32 %13, ptr %retval, align 4, !dbg !922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !922

if.end10:                                         ; preds = %if.end7
  %14 = load i64, ptr %thread_id.addr, align 8, !dbg !924
  %15 = load ptr, ptr %obj_desc.addr, align 8, !dbg !925
  %thread_id11 = getelementptr inbounds %struct.acpi_object_mutex, ptr %15, i32 0, i32 8, !dbg !926
  store i64 %14, ptr %thread_id11, align 8, !dbg !927
  %16 = load ptr, ptr %obj_desc.addr, align 8, !dbg !928
  %acquisition_depth12 = getelementptr inbounds %struct.acpi_object_mutex, ptr %16, i32 0, i32 6, !dbg !929
  store i16 1, ptr %acquisition_depth12, align 2, !dbg !930
  %17 = load ptr, ptr %obj_desc.addr, align 8, !dbg !931
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %17, i32 0, i32 13, !dbg !932
  store i8 0, ptr %original_sync_level, align 8, !dbg !933
  %18 = load ptr, ptr %obj_desc.addr, align 8, !dbg !934
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, ptr %18, i32 0, i32 9, !dbg !935
  store ptr null, ptr %owner_thread, align 8, !dbg !936
  store i32 0, ptr %retval, align 4, !dbg !937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !938
  %19 = load i32, ptr %retval, align 4, !dbg !938
  ret i32 %19, !dbg !938
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !939 dso_local i32 @acpi_ev_acquire_global_lock(i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !943 dso_local i32 @acpi_ex_system_wait_mutex(ptr noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_acquire_mutex(ptr noundef %time_desc, ptr noundef %obj_desc, ptr noundef %walk_state) #0 align 16 !dbg !947 {
entry:
  %retval = alloca i32, align 4
  %time_desc.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %time_desc, ptr %time_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time_desc.addr, metadata !951, metadata !DIExpression()), !dbg !955
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !952, metadata !DIExpression()), !dbg !956
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !953, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %status, metadata !954, metadata !DIExpression()), !dbg !959
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !960
  %tobool = icmp ne ptr %0, null, !dbg !960
  br i1 %tobool, label %if.end, label %if.then, !dbg !962

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !963

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !965
  %thread = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 49, !dbg !967
  %2 = load ptr, ptr %thread, align 8, !dbg !967
  %tobool1 = icmp ne ptr %2, null, !dbg !965
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !968

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !969
  %node = getelementptr inbounds %struct.acpi_object_mutex, ptr %3, i32 0, i32 12, !dbg !969
  %4 = load ptr, ptr %node, align 8, !dbg !969
  %call = call ptr @acpi_ut_get_node_name(ptr noundef %4) #5, !dbg !969
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 206, ptr noundef @.str, ptr noundef %call) #5, !dbg !969
  store i32 12303, ptr %retval, align 4, !dbg !971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !971

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !972
  %thread4 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 49, !dbg !974
  %6 = load ptr, ptr %thread4, align 8, !dbg !974
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, ptr %6, i32 0, i32 5, !dbg !975
  %7 = load i8, ptr %current_sync_level, align 2, !dbg !975
  %conv = zext i8 %7 to i32, !dbg !972
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !976
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %8, i32 0, i32 5, !dbg !977
  %9 = load i8, ptr %sync_level, align 1, !dbg !977
  %conv5 = zext i8 %9 to i32, !dbg !976
  %cmp = icmp sgt i32 %conv, %conv5, !dbg !978
  br i1 %cmp, label %if.then7, label %if.end13, !dbg !979

if.then7:                                         ; preds = %if.end3
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !980
  %node8 = getelementptr inbounds %struct.acpi_object_mutex, ptr %10, i32 0, i32 12, !dbg !980
  %11 = load ptr, ptr %node8, align 8, !dbg !980
  %call9 = call ptr @acpi_ut_get_node_name(ptr noundef %11) #5, !dbg !980
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !980
  %thread10 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 49, !dbg !980
  %13 = load ptr, ptr %thread10, align 8, !dbg !980
  %current_sync_level11 = getelementptr inbounds %struct.acpi_thread_state, ptr %13, i32 0, i32 5, !dbg !980
  %14 = load i8, ptr %current_sync_level11, align 2, !dbg !980
  %conv12 = zext i8 %14 to i32, !dbg !980
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 217, ptr noundef @.str.1, ptr noundef %call9, i32 noundef %conv12) #5, !dbg !980
  store i32 12309, ptr %retval, align 4, !dbg !982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !982

if.end13:                                         ; preds = %if.end3
  %15 = load ptr, ptr %time_desc.addr, align 8, !dbg !983
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %15, i32 0, i32 6, !dbg !984
  %16 = load i64, ptr %value, align 8, !dbg !984
  %conv14 = trunc i64 %16 to i16, !dbg !985
  %17 = load ptr, ptr %obj_desc.addr, align 8, !dbg !986
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !987
  %thread15 = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 49, !dbg !988
  %19 = load ptr, ptr %thread15, align 8, !dbg !988
  %thread_id = getelementptr inbounds %struct.acpi_thread_state, ptr %19, i32 0, i32 8, !dbg !989
  %20 = load i64, ptr %thread_id, align 8, !dbg !989
  %call16 = call i32 @acpi_ex_acquire_mutex_object(i16 noundef zeroext %conv14, ptr noundef %17, i64 noundef %20) #5, !dbg !990
  store i32 %call16, ptr %status, align 4, !dbg !991
  %21 = load i32, ptr %status, align 4, !dbg !992
  %tobool17 = icmp ne i32 %21, 0, !dbg !992
  br i1 %tobool17, label %if.end29, label %land.lhs.true, !dbg !994

land.lhs.true:                                    ; preds = %if.end13
  %22 = load ptr, ptr %obj_desc.addr, align 8, !dbg !995
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, ptr %22, i32 0, i32 6, !dbg !996
  %23 = load i16, ptr %acquisition_depth, align 2, !dbg !996
  %conv18 = zext i16 %23 to i32, !dbg !995
  %cmp19 = icmp eq i32 %conv18, 1, !dbg !997
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !998

if.then21:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !999
  %thread22 = getelementptr inbounds %struct.acpi_walk_state, ptr %24, i32 0, i32 49, !dbg !1001
  %25 = load ptr, ptr %thread22, align 8, !dbg !1001
  %26 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1002
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, ptr %26, i32 0, i32 9, !dbg !1003
  store ptr %25, ptr %owner_thread, align 8, !dbg !1004
  %27 = load ptr, ptr %walk_state.addr, align 8, !dbg !1005
  %thread23 = getelementptr inbounds %struct.acpi_walk_state, ptr %27, i32 0, i32 49, !dbg !1006
  %28 = load ptr, ptr %thread23, align 8, !dbg !1006
  %current_sync_level24 = getelementptr inbounds %struct.acpi_thread_state, ptr %28, i32 0, i32 5, !dbg !1007
  %29 = load i8, ptr %current_sync_level24, align 2, !dbg !1007
  %30 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1008
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %30, i32 0, i32 13, !dbg !1009
  store i8 %29, ptr %original_sync_level, align 8, !dbg !1010
  %31 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1011
  %sync_level25 = getelementptr inbounds %struct.acpi_object_mutex, ptr %31, i32 0, i32 5, !dbg !1012
  %32 = load i8, ptr %sync_level25, align 1, !dbg !1012
  %33 = load ptr, ptr %walk_state.addr, align 8, !dbg !1013
  %thread26 = getelementptr inbounds %struct.acpi_walk_state, ptr %33, i32 0, i32 49, !dbg !1014
  %34 = load ptr, ptr %thread26, align 8, !dbg !1014
  %current_sync_level27 = getelementptr inbounds %struct.acpi_thread_state, ptr %34, i32 0, i32 5, !dbg !1015
  store i8 %32, ptr %current_sync_level27, align 2, !dbg !1016
  %35 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1017
  %36 = load ptr, ptr %walk_state.addr, align 8, !dbg !1018
  %thread28 = getelementptr inbounds %struct.acpi_walk_state, ptr %36, i32 0, i32 49, !dbg !1019
  %37 = load ptr, ptr %thread28, align 8, !dbg !1019
  call void @acpi_ex_link_mutex(ptr noundef %35, ptr noundef %37) #5, !dbg !1020
  br label %if.end29, !dbg !1021

if.end29:                                         ; preds = %if.then21, %land.lhs.true, %if.end13
  %38 = load i32, ptr %status, align 4, !dbg !1022
  store i32 %38, ptr %retval, align 4, !dbg !1022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1022

cleanup:                                          ; preds = %if.end29, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1023
  %39 = load i32, ptr %retval, align 4, !dbg !1023
  ret i32 %39, !dbg !1023
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1024 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1029 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ex_link_mutex(ptr noundef %obj_desc, ptr noundef %thread) #0 align 16 !dbg !1033 {
entry:
  %obj_desc.addr = alloca ptr, align 8
  %thread.addr = alloca ptr, align 8
  %list_head = alloca ptr, align 8
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1037, metadata !DIExpression()), !dbg !1040
  store ptr %thread, ptr %thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread.addr, metadata !1038, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_head) #4, !dbg !1042
  call void @llvm.dbg.declare(metadata ptr %list_head, metadata !1039, metadata !DIExpression()), !dbg !1043
  %0 = load ptr, ptr %thread.addr, align 8, !dbg !1044
  %acquired_mutex_list = getelementptr inbounds %struct.acpi_thread_state, ptr %0, i32 0, i32 7, !dbg !1045
  %1 = load ptr, ptr %acquired_mutex_list, align 8, !dbg !1045
  store ptr %1, ptr %list_head, align 8, !dbg !1046
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1047
  %prev = getelementptr inbounds %struct.acpi_object_mutex, ptr %2, i32 0, i32 10, !dbg !1048
  store ptr null, ptr %prev, align 8, !dbg !1049
  %3 = load ptr, ptr %list_head, align 8, !dbg !1050
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1051
  %next = getelementptr inbounds %struct.acpi_object_mutex, ptr %4, i32 0, i32 11, !dbg !1052
  store ptr %3, ptr %next, align 8, !dbg !1053
  %5 = load ptr, ptr %list_head, align 8, !dbg !1054
  %tobool = icmp ne ptr %5, null, !dbg !1054
  br i1 %tobool, label %if.then, label %if.end, !dbg !1056

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1057
  %7 = load ptr, ptr %list_head, align 8, !dbg !1059
  %prev1 = getelementptr inbounds %struct.acpi_object_mutex, ptr %7, i32 0, i32 10, !dbg !1060
  store ptr %6, ptr %prev1, align 8, !dbg !1061
  br label %if.end, !dbg !1062

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1063
  %9 = load ptr, ptr %thread.addr, align 8, !dbg !1064
  %acquired_mutex_list2 = getelementptr inbounds %struct.acpi_thread_state, ptr %9, i32 0, i32 7, !dbg !1065
  store ptr %8, ptr %acquired_mutex_list2, align 8, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_head) #4, !dbg !1067
  ret void, !dbg !1067
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_release_mutex_object(ptr noundef %obj_desc) #0 align 16 !dbg !1068 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1072, metadata !DIExpression()), !dbg !1074
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1075
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1073, metadata !DIExpression()), !dbg !1076
  store i32 0, ptr %status, align 4, !dbg !1076
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1077
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, ptr %0, i32 0, i32 6, !dbg !1079
  %1 = load i16, ptr %acquisition_depth, align 2, !dbg !1079
  %conv = zext i16 %1 to i32, !dbg !1077
  %cmp = icmp eq i32 %conv, 0, !dbg !1080
  br i1 %cmp, label %if.then, label %if.end, !dbg !1081

if.then:                                          ; preds = %entry
  store i32 20, ptr %retval, align 4, !dbg !1082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1082

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1084
  %acquisition_depth2 = getelementptr inbounds %struct.acpi_object_mutex, ptr %2, i32 0, i32 6, !dbg !1085
  %3 = load i16, ptr %acquisition_depth2, align 2, !dbg !1086
  %dec = add i16 %3, -1, !dbg !1086
  store i16 %dec, ptr %acquisition_depth2, align 2, !dbg !1086
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1087
  %acquisition_depth3 = getelementptr inbounds %struct.acpi_object_mutex, ptr %4, i32 0, i32 6, !dbg !1089
  %5 = load i16, ptr %acquisition_depth3, align 2, !dbg !1089
  %conv4 = zext i16 %5 to i32, !dbg !1087
  %cmp5 = icmp ne i32 %conv4, 0, !dbg !1090
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1091

if.then7:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1092

if.end8:                                          ; preds = %if.end
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1094
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, ptr %6, i32 0, i32 9, !dbg !1096
  %7 = load ptr, ptr %owner_thread, align 8, !dbg !1096
  %tobool = icmp ne ptr %7, null, !dbg !1094
  br i1 %tobool, label %if.then9, label %if.end11, !dbg !1097

if.then9:                                         ; preds = %if.end8
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1098
  call void @acpi_ex_unlink_mutex(ptr noundef %8) #5, !dbg !1100
  %9 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1101
  %owner_thread10 = getelementptr inbounds %struct.acpi_object_mutex, ptr %9, i32 0, i32 9, !dbg !1102
  store ptr null, ptr %owner_thread10, align 8, !dbg !1103
  br label %if.end11, !dbg !1104

if.end11:                                         ; preds = %if.then9, %if.end8
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1105
  %11 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !1107
  %cmp12 = icmp eq ptr %10, %11, !dbg !1108
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !1109

if.then14:                                        ; preds = %if.end11
  %call = call i32 @acpi_ev_release_global_lock() #5, !dbg !1110
  store i32 %call, ptr %status, align 4, !dbg !1112
  br label %if.end16, !dbg !1113

if.else:                                          ; preds = %if.end11
  %12 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1114
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %12, i32 0, i32 7, !dbg !1114
  %13 = load ptr, ptr %os_mutex, align 8, !dbg !1114
  %call15 = call i32 @acpi_os_signal_semaphore(ptr noundef %13, i32 noundef 1) #5, !dbg !1114
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then14
  %14 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1116
  %thread_id = getelementptr inbounds %struct.acpi_object_mutex, ptr %14, i32 0, i32 8, !dbg !1117
  store i64 0, ptr %thread_id, align 8, !dbg !1118
  %15 = load i32, ptr %status, align 4, !dbg !1119
  store i32 %15, ptr %retval, align 4, !dbg !1119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1119

cleanup:                                          ; preds = %if.end16, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1120
  %16 = load i32, ptr %retval, align 4, !dbg !1120
  ret i32 %16, !dbg !1120
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1121 dso_local i32 @acpi_ev_release_global_lock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1124 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_release_mutex(ptr noundef %obj_desc, ptr noundef %walk_state) #0 align 16 !dbg !1128 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %previous_sync_level = alloca i8, align 1
  %owner_thread = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1132, metadata !DIExpression()), !dbg !1137
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1133, metadata !DIExpression()), !dbg !1138
  call void @llvm.lifetime.start.p0(i64 1, ptr %previous_sync_level) #4, !dbg !1139
  call void @llvm.dbg.declare(metadata ptr %previous_sync_level, metadata !1134, metadata !DIExpression()), !dbg !1140
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner_thread) #4, !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %owner_thread, metadata !1135, metadata !DIExpression()), !dbg !1142
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1136, metadata !DIExpression()), !dbg !1144
  store i32 0, ptr %status, align 4, !dbg !1144
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1145
  %tobool = icmp ne ptr %0, null, !dbg !1145
  br i1 %tobool, label %if.end, label %if.then, !dbg !1147

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1148

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1150
  %owner_thread1 = getelementptr inbounds %struct.acpi_object_mutex, ptr %1, i32 0, i32 9, !dbg !1151
  %2 = load ptr, ptr %owner_thread1, align 8, !dbg !1151
  store ptr %2, ptr %owner_thread, align 8, !dbg !1152
  %3 = load ptr, ptr %owner_thread, align 8, !dbg !1153
  %tobool2 = icmp ne ptr %3, null, !dbg !1153
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1155

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1156
  %node = getelementptr inbounds %struct.acpi_object_mutex, ptr %4, i32 0, i32 12, !dbg !1156
  %5 = load ptr, ptr %node, align 8, !dbg !1156
  %call = call ptr @acpi_ut_get_node_name(ptr noundef %5) #5, !dbg !1156
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 357, ptr noundef @.str.2, ptr noundef %call) #5, !dbg !1156
  store i32 12310, ptr %retval, align 4, !dbg !1158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1158

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1159
  %thread = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 49, !dbg !1161
  %7 = load ptr, ptr %thread, align 8, !dbg !1161
  %tobool5 = icmp ne ptr %7, null, !dbg !1159
  br i1 %tobool5, label %if.end9, label %if.then6, !dbg !1162

if.then6:                                         ; preds = %if.end4
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1163
  %node7 = getelementptr inbounds %struct.acpi_object_mutex, ptr %8, i32 0, i32 12, !dbg !1163
  %9 = load ptr, ptr %node7, align 8, !dbg !1163
  %call8 = call ptr @acpi_ut_get_node_name(ptr noundef %9) #5, !dbg !1163
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 366, ptr noundef @.str.3, ptr noundef %call8) #5, !dbg !1163
  store i32 12303, ptr %retval, align 4, !dbg !1165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1165

if.end9:                                          ; preds = %if.end4
  %10 = load ptr, ptr %owner_thread, align 8, !dbg !1166
  %thread_id = getelementptr inbounds %struct.acpi_thread_state, ptr %10, i32 0, i32 8, !dbg !1168
  %11 = load i64, ptr %thread_id, align 8, !dbg !1168
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1169
  %thread10 = getelementptr inbounds %struct.acpi_walk_state, ptr %12, i32 0, i32 49, !dbg !1170
  %13 = load ptr, ptr %thread10, align 8, !dbg !1170
  %thread_id11 = getelementptr inbounds %struct.acpi_thread_state, ptr %13, i32 0, i32 8, !dbg !1171
  %14 = load i64, ptr %thread_id11, align 8, !dbg !1171
  %cmp = icmp ne i64 %11, %14, !dbg !1172
  br i1 %cmp, label %land.lhs.true, label %if.end20, !dbg !1173

land.lhs.true:                                    ; preds = %if.end9
  %15 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1174
  %16 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !1175
  %cmp12 = icmp ne ptr %15, %16, !dbg !1176
  br i1 %cmp12, label %if.then13, label %if.end20, !dbg !1177

if.then13:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1178
  %thread14 = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 49, !dbg !1178
  %18 = load ptr, ptr %thread14, align 8, !dbg !1178
  %thread_id15 = getelementptr inbounds %struct.acpi_thread_state, ptr %18, i32 0, i32 8, !dbg !1178
  %19 = load i64, ptr %thread_id15, align 8, !dbg !1178
  %conv = trunc i64 %19 to i32, !dbg !1178
  %20 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1178
  %node16 = getelementptr inbounds %struct.acpi_object_mutex, ptr %20, i32 0, i32 12, !dbg !1178
  %21 = load ptr, ptr %node16, align 8, !dbg !1178
  %call17 = call ptr @acpi_ut_get_node_name(ptr noundef %21) #5, !dbg !1178
  %22 = load ptr, ptr %owner_thread, align 8, !dbg !1178
  %thread_id18 = getelementptr inbounds %struct.acpi_thread_state, ptr %22, i32 0, i32 8, !dbg !1178
  %23 = load i64, ptr %thread_id18, align 8, !dbg !1178
  %conv19 = trunc i64 %23 to i32, !dbg !1178
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 378, ptr noundef @.str.4, i32 noundef %conv, ptr noundef %call17, i32 noundef %conv19) #5, !dbg !1178
  store i32 12308, ptr %retval, align 4, !dbg !1180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1180

if.end20:                                         ; preds = %land.lhs.true, %if.end9
  %24 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1181
  %sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %24, i32 0, i32 5, !dbg !1183
  %25 = load i8, ptr %sync_level, align 1, !dbg !1183
  %conv21 = zext i8 %25 to i32, !dbg !1181
  %26 = load ptr, ptr %owner_thread, align 8, !dbg !1184
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, ptr %26, i32 0, i32 5, !dbg !1185
  %27 = load i8, ptr %current_sync_level, align 2, !dbg !1185
  %conv22 = zext i8 %27 to i32, !dbg !1184
  %cmp23 = icmp ne i32 %conv21, %conv22, !dbg !1186
  br i1 %cmp23, label %if.then25, label %if.end33, !dbg !1187

if.then25:                                        ; preds = %if.end20
  %28 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1188
  %node26 = getelementptr inbounds %struct.acpi_object_mutex, ptr %28, i32 0, i32 12, !dbg !1188
  %29 = load ptr, ptr %node26, align 8, !dbg !1188
  %call27 = call ptr @acpi_ut_get_node_name(ptr noundef %29) #5, !dbg !1188
  %30 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1188
  %sync_level28 = getelementptr inbounds %struct.acpi_object_mutex, ptr %30, i32 0, i32 5, !dbg !1188
  %31 = load i8, ptr %sync_level28, align 1, !dbg !1188
  %conv29 = zext i8 %31 to i32, !dbg !1188
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !1188
  %thread30 = getelementptr inbounds %struct.acpi_walk_state, ptr %32, i32 0, i32 49, !dbg !1188
  %33 = load ptr, ptr %thread30, align 8, !dbg !1188
  %current_sync_level31 = getelementptr inbounds %struct.acpi_thread_state, ptr %33, i32 0, i32 5, !dbg !1188
  %34 = load i8, ptr %current_sync_level31, align 2, !dbg !1188
  %conv32 = zext i8 %34 to i32, !dbg !1188
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 394, ptr noundef @.str.5, ptr noundef %call27, i32 noundef %conv29, i32 noundef %conv32) #5, !dbg !1188
  store i32 12309, ptr %retval, align 4, !dbg !1190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1190

if.end33:                                         ; preds = %if.end20
  %35 = load ptr, ptr %owner_thread, align 8, !dbg !1191
  %acquired_mutex_list = getelementptr inbounds %struct.acpi_thread_state, ptr %35, i32 0, i32 7, !dbg !1192
  %36 = load ptr, ptr %acquired_mutex_list, align 8, !dbg !1192
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %36, i32 0, i32 13, !dbg !1193
  %37 = load i8, ptr %original_sync_level, align 8, !dbg !1193
  store i8 %37, ptr %previous_sync_level, align 1, !dbg !1194
  %38 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1195
  %call34 = call i32 @acpi_ex_release_mutex_object(ptr noundef %38) #5, !dbg !1196
  store i32 %call34, ptr %status, align 4, !dbg !1197
  %39 = load i32, ptr %status, align 4, !dbg !1198
  %tobool35 = icmp ne i32 %39, 0, !dbg !1198
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1200

if.then36:                                        ; preds = %if.end33
  %40 = load i32, ptr %status, align 4, !dbg !1201
  store i32 %40, ptr %retval, align 4, !dbg !1201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1201

if.end37:                                         ; preds = %if.end33
  %41 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1203
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, ptr %41, i32 0, i32 6, !dbg !1205
  %42 = load i16, ptr %acquisition_depth, align 2, !dbg !1205
  %conv38 = zext i16 %42 to i32, !dbg !1203
  %cmp39 = icmp eq i32 %conv38, 0, !dbg !1206
  br i1 %cmp39, label %if.then41, label %if.end43, !dbg !1207

if.then41:                                        ; preds = %if.end37
  %43 = load i8, ptr %previous_sync_level, align 1, !dbg !1208
  %44 = load ptr, ptr %owner_thread, align 8, !dbg !1210
  %current_sync_level42 = getelementptr inbounds %struct.acpi_thread_state, ptr %44, i32 0, i32 5, !dbg !1211
  store i8 %43, ptr %current_sync_level42, align 2, !dbg !1212
  br label %if.end43, !dbg !1213

if.end43:                                         ; preds = %if.then41, %if.end37
  %45 = load i32, ptr %status, align 4, !dbg !1214
  store i32 %45, ptr %retval, align 4, !dbg !1214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1214

cleanup:                                          ; preds = %if.end43, %if.then36, %if.then25, %if.then13, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1215
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner_thread) #4, !dbg !1215
  call void @llvm.lifetime.end.p0(i64 1, ptr %previous_sync_level) #4, !dbg !1215
  %46 = load i32, ptr %retval, align 4, !dbg !1215
  ret i32 %46, !dbg !1215
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_release_all_mutexes(ptr noundef %thread) #0 align 16 !dbg !1216 {
entry:
  %thread.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  store ptr %thread, ptr %thread.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %thread.addr, metadata !1220, metadata !DIExpression()), !dbg !1223
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4, !dbg !1224
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1221, metadata !DIExpression()), !dbg !1225
  %0 = load ptr, ptr %thread.addr, align 8, !dbg !1226
  %acquired_mutex_list = getelementptr inbounds %struct.acpi_thread_state, ptr %0, i32 0, i32 7, !dbg !1227
  %1 = load ptr, ptr %acquired_mutex_list, align 8, !dbg !1227
  store ptr %1, ptr %next, align 8, !dbg !1225
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1222, metadata !DIExpression()), !dbg !1229
  br label %while.cond, !dbg !1230

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %next, align 8, !dbg !1231
  %tobool = icmp ne ptr %2, null, !dbg !1230
  br i1 %tobool, label %while.body, label %while.end, !dbg !1230

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %next, align 8, !dbg !1232
  store ptr %3, ptr %obj_desc, align 8, !dbg !1234
  %4 = load ptr, ptr %obj_desc, align 8, !dbg !1235
  %5 = load ptr, ptr @acpi_gbl_global_lock_mutex, align 8, !dbg !1237
  %cmp = icmp eq ptr %4, %5, !dbg !1238
  br i1 %cmp, label %if.then, label %if.else, !dbg !1239

if.then:                                          ; preds = %while.body
  %call = call i32 @acpi_ev_release_global_lock() #5, !dbg !1240
  br label %if.end, !dbg !1242

if.else:                                          ; preds = %while.body
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !1243
  %os_mutex = getelementptr inbounds %struct.acpi_object_mutex, ptr %6, i32 0, i32 7, !dbg !1243
  %7 = load ptr, ptr %os_mutex, align 8, !dbg !1243
  %call1 = call i32 @acpi_os_signal_semaphore(ptr noundef %7, i32 noundef 1) #5, !dbg !1243
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1245
  %original_sync_level = getelementptr inbounds %struct.acpi_object_mutex, ptr %8, i32 0, i32 13, !dbg !1246
  %9 = load i8, ptr %original_sync_level, align 8, !dbg !1246
  %10 = load ptr, ptr %thread.addr, align 8, !dbg !1247
  %current_sync_level = getelementptr inbounds %struct.acpi_thread_state, ptr %10, i32 0, i32 5, !dbg !1248
  store i8 %9, ptr %current_sync_level, align 2, !dbg !1249
  %11 = load ptr, ptr %obj_desc, align 8, !dbg !1250
  %next2 = getelementptr inbounds %struct.acpi_object_mutex, ptr %11, i32 0, i32 11, !dbg !1251
  %12 = load ptr, ptr %next2, align 8, !dbg !1251
  store ptr %12, ptr %next, align 8, !dbg !1252
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !1253
  %prev = getelementptr inbounds %struct.acpi_object_mutex, ptr %13, i32 0, i32 10, !dbg !1254
  store ptr null, ptr %prev, align 8, !dbg !1255
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !1256
  %next3 = getelementptr inbounds %struct.acpi_object_mutex, ptr %14, i32 0, i32 11, !dbg !1257
  store ptr null, ptr %next3, align 8, !dbg !1258
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !1259
  %acquisition_depth = getelementptr inbounds %struct.acpi_object_mutex, ptr %15, i32 0, i32 6, !dbg !1260
  store i16 0, ptr %acquisition_depth, align 2, !dbg !1261
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !1262
  %owner_thread = getelementptr inbounds %struct.acpi_object_mutex, ptr %16, i32 0, i32 9, !dbg !1263
  store ptr null, ptr %owner_thread, align 8, !dbg !1264
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1265
  %thread_id = getelementptr inbounds %struct.acpi_object_mutex, ptr %17, i32 0, i32 8, !dbg !1266
  store i64 0, ptr %thread_id, align 8, !dbg !1267
  br label %while.cond, !dbg !1230, !llvm.loop !1268

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1272
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4, !dbg !1272
  ret void, !dbg !1272
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exmutex.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exmutex\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exmutex.ll drivers/acpi/acpica/exmutex.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exmutex.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78dac0b4b78ec5ebbade8c8baf8fafa8")
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
!15 = !{!16, !22, !27, !32, !34, !39, !0}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 376, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !{!21}
!21 = !DISubrange(count: 47)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 528, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 66)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !3, line: 357, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 344, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 43)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !18, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 488, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 61)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 560, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 70)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !46)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!46 = !{!47}
!47 = !DISubrange(count: 8)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"cf-protection-branch", i32 1}
!52 = !{i32 4, !"function_return_thunk_extern", i32 1}
!53 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!54 = !{i32 1, !"Code Model", i32 2}
!55 = !{i32 1, !"override-stack-alignment", i32 8}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = distinct !DISubprogram(name: "acpi_ex_unlink_mutex", scope: !3, file: !3, line: 35, type: !58, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !62, line: 369, size: 576, elements: !63)
!62 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!63 = !{!64, !75, !91, !102, !138, !152, !162, !473, !490, !506, !519, !597, !609, !623, !633, !651, !673, !692, !711, !730, !743, !770, !787, !800, !814, !823}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !61, file: !62, line: 370, baseType: !65, size: 128)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !62, line: 73, size: 128, elements: !66)
!66 = !{!67, !68, !72, !73, !74}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !62, line: 74, baseType: !60, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !62, line: 74, baseType: !69, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !62, line: 74, baseType: !69, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !62, line: 74, baseType: !12, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !62, line: 74, baseType: !69, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !61, file: !62, line: 371, baseType: !76, size: 192)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !62, line: 76, size: 192, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !87}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !76, file: !62, line: 77, baseType: !60, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !76, file: !62, line: 77, baseType: !69, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !62, line: 77, baseType: !69, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !76, file: !62, line: 77, baseType: !12, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !62, line: 77, baseType: !69, size: 8, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !76, file: !62, line: 77, baseType: !84, size: 24, offset: 104)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 24, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 3)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !76, file: !62, line: 78, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !90)
!90 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !61, file: !62, line: 372, baseType: !92, size: 256)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !62, line: 93, size: 256, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !101}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !92, file: !62, line: 94, baseType: !60, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !92, file: !62, line: 94, baseType: !69, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !62, line: 94, baseType: !69, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !92, file: !62, line: 94, baseType: !12, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !62, line: 94, baseType: !69, size: 8, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !92, file: !62, line: 94, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !92, file: !62, line: 94, baseType: !7, size: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !61, file: !62, line: 373, baseType: !103, size: 384)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !62, line: 97, size: 384, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !112, !113, !114, !115}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !62, line: 98, baseType: !60, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !62, line: 98, baseType: !69, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !62, line: 98, baseType: !69, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !62, line: 98, baseType: !12, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !62, line: 98, baseType: !69, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !103, file: !62, line: 98, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !103, file: !62, line: 98, baseType: !7, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !103, file: !62, line: 99, baseType: !7, size: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !103, file: !62, line: 100, baseType: !111, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !62, line: 101, baseType: !116, size: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !118, line: 133, size: 384, elements: !119)
!118 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!119 = !{!120, !121, !122, !123, !124, !133, !134, !135, !136}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !117, file: !118, line: 134, baseType: !60, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !118, line: 135, baseType: !69, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !118, line: 136, baseType: !69, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !118, line: 137, baseType: !12, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !118, line: 138, baseType: !125, size: 32, offset: 96)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !126, line: 328, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !125, file: !126, line: 329, baseType: !7, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !125, file: !126, line: 330, baseType: !130, size: 32)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 4)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !117, file: !118, line: 139, baseType: !116, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !117, file: !118, line: 140, baseType: !116, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !117, file: !118, line: 141, baseType: !116, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !117, file: !118, line: 142, baseType: !137, size: 16, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !12)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !61, file: !62, line: 374, baseType: !139, size: 384)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !62, line: 104, size: 384, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !149, !150, !151}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !62, line: 105, baseType: !60, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !62, line: 105, baseType: !69, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !62, line: 105, baseType: !69, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !62, line: 105, baseType: !12, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !62, line: 105, baseType: !69, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !62, line: 105, baseType: !116, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !139, file: !62, line: 106, baseType: !148, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !62, line: 107, baseType: !111, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !62, line: 108, baseType: !7, size: 32, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !139, file: !62, line: 109, baseType: !7, size: 32, offset: 352)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !61, file: !62, line: 375, baseType: !153, size: 192)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !62, line: 118, size: 192, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !153, file: !62, line: 119, baseType: !60, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !153, file: !62, line: 119, baseType: !69, size: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !62, line: 119, baseType: !69, size: 8, offset: 72)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !153, file: !62, line: 119, baseType: !12, size: 16, offset: 80)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !62, line: 119, baseType: !69, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !153, file: !62, line: 119, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !61, file: !62, line: 376, baseType: !163, size: 448)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !62, line: 144, size: 448, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !470, !471, !472}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !163, file: !62, line: 145, baseType: !60, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !62, line: 145, baseType: !69, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !62, line: 145, baseType: !69, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !163, file: !62, line: 145, baseType: !12, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !62, line: 145, baseType: !69, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !163, file: !62, line: 145, baseType: !69, size: 8, offset: 104)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !163, file: !62, line: 146, baseType: !69, size: 8, offset: 112)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !163, file: !62, line: 147, baseType: !69, size: 8, offset: 120)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !163, file: !62, line: 148, baseType: !60, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !62, line: 149, baseType: !60, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !163, file: !62, line: 150, baseType: !111, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !163, file: !62, line: 154, baseType: !177, size: 64, offset: 320)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !62, line: 151, size: 64, elements: !178)
!178 = !{!179, !469}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !177, file: !62, line: 152, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !118, line: 248, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!5, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !186, line: 37, size: 9024, elements: !187)
!186 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !415, !416, !417, !418, !419, !423, !425, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !452, !453, !454, !455, !456, !457, !458, !459, !461, !467}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !186, line: 38, baseType: !184, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !186, line: 39, baseType: !69, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !185, file: !186, line: 40, baseType: !69, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !185, file: !186, line: 41, baseType: !12, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !185, file: !186, line: 42, baseType: !69, size: 8, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !185, file: !186, line: 43, baseType: !69, size: 8, offset: 104)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !185, file: !186, line: 44, baseType: !69, size: 8, offset: 112)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !185, file: !186, line: 45, baseType: !137, size: 16, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !185, file: !186, line: 46, baseType: !69, size: 8, offset: 144)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !185, file: !186, line: 47, baseType: !69, size: 8, offset: 152)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !185, file: !186, line: 48, baseType: !69, size: 8, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !185, file: !186, line: 49, baseType: !69, size: 8, offset: 168)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !185, file: !186, line: 50, baseType: !69, size: 8, offset: 176)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !185, file: !186, line: 51, baseType: !69, size: 8, offset: 184)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !185, file: !186, line: 52, baseType: !69, size: 8, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !185, file: !186, line: 53, baseType: !69, size: 8, offset: 200)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !186, line: 54, baseType: !111, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !185, file: !186, line: 55, baseType: !7, size: 32, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !185, file: !186, line: 56, baseType: !7, size: 32, offset: 352)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !185, file: !186, line: 57, baseType: !7, size: 32, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !185, file: !186, line: 58, baseType: !7, size: 32, offset: 416)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !185, file: !186, line: 60, baseType: !210, size: 640, offset: 448)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !118, line: 909, size: 640, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !298, !299, !413, !414}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !210, file: !118, line: 910, baseType: !111, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !210, file: !118, line: 911, baseType: !111, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !210, file: !118, line: 912, baseType: !111, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !210, file: !118, line: 913, baseType: !111, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !210, file: !118, line: 914, baseType: !111, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !210, file: !118, line: 915, baseType: !218, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !118, line: 891, size: 1600, elements: !220)
!220 = !{!221, !241, !257}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !219, file: !118, line: 892, baseType: !222, size: 448)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !118, line: 844, size: 448, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !240}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !222, file: !118, line: 845, baseType: !218, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !222, file: !118, line: 845, baseType: !69, size: 8, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !118, line: 845, baseType: !69, size: 8, offset: 72)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !222, file: !118, line: 845, baseType: !12, size: 16, offset: 80)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !118, line: 845, baseType: !111, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !118, line: 845, baseType: !218, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !222, file: !118, line: 845, baseType: !116, size: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !222, file: !118, line: 845, baseType: !232, size: 64, offset: 320)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !118, line: 732, size: 64, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !232, file: !118, line: 733, baseType: !88, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !232, file: !118, line: 734, baseType: !7, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !232, file: !118, line: 735, baseType: !100, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !232, file: !118, line: 736, baseType: !111, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !232, file: !118, line: 737, baseType: !100, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !232, file: !118, line: 738, baseType: !218, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !222, file: !118, line: 845, baseType: !69, size: 8, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !219, file: !118, line: 893, baseType: !242, size: 640)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !118, line: 851, size: 640, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !242, file: !118, line: 852, baseType: !218, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !242, file: !118, line: 852, baseType: !69, size: 8, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !118, line: 852, baseType: !69, size: 8, offset: 72)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !242, file: !118, line: 852, baseType: !12, size: 16, offset: 80)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !242, file: !118, line: 852, baseType: !111, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !118, line: 852, baseType: !218, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !242, file: !118, line: 852, baseType: !116, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !242, file: !118, line: 852, baseType: !232, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !242, file: !118, line: 852, baseType: !69, size: 8, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !242, file: !118, line: 852, baseType: !100, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !242, file: !118, line: 853, baseType: !111, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !242, file: !118, line: 854, baseType: !7, size: 32, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !118, line: 855, baseType: !7, size: 32, offset: 608)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !219, file: !118, line: 894, baseType: !258, size: 1600)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !118, line: 862, size: 1600, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !258, file: !118, line: 863, baseType: !218, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !258, file: !118, line: 863, baseType: !69, size: 8, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !258, file: !118, line: 863, baseType: !69, size: 8, offset: 72)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !258, file: !118, line: 863, baseType: !12, size: 16, offset: 80)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !258, file: !118, line: 863, baseType: !111, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !118, line: 863, baseType: !218, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !258, file: !118, line: 863, baseType: !116, size: 64, offset: 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !258, file: !118, line: 863, baseType: !232, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !258, file: !118, line: 863, baseType: !69, size: 8, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !258, file: !118, line: 863, baseType: !218, size: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !258, file: !118, line: 864, baseType: !218, size: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !258, file: !118, line: 865, baseType: !100, size: 64, offset: 576)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !258, file: !118, line: 866, baseType: !69, size: 8, offset: 640)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !258, file: !118, line: 867, baseType: !100, size: 64, offset: 704)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !258, file: !118, line: 868, baseType: !100, size: 64, offset: 768)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !258, file: !118, line: 869, baseType: !100, size: 64, offset: 832)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !258, file: !118, line: 870, baseType: !130, size: 32, offset: 896)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !258, file: !118, line: 871, baseType: !7, size: 32, offset: 928)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !258, file: !118, line: 872, baseType: !7, size: 32, offset: 960)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !258, file: !118, line: 873, baseType: !7, size: 32, offset: 992)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !258, file: !118, line: 874, baseType: !7, size: 32, offset: 1024)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !258, file: !118, line: 875, baseType: !7, size: 32, offset: 1056)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !258, file: !118, line: 876, baseType: !7, size: 32, offset: 1088)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !258, file: !118, line: 877, baseType: !7, size: 32, offset: 1120)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !258, file: !118, line: 878, baseType: !7, size: 32, offset: 1152)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !258, file: !118, line: 879, baseType: !7, size: 32, offset: 1184)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !258, file: !118, line: 880, baseType: !7, size: 32, offset: 1216)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !258, file: !118, line: 881, baseType: !7, size: 32, offset: 1248)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !258, file: !118, line: 882, baseType: !7, size: 32, offset: 1280)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !258, file: !118, line: 883, baseType: !7, size: 32, offset: 1312)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !258, file: !118, line: 884, baseType: !12, size: 16, offset: 1344)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !258, file: !118, line: 885, baseType: !69, size: 8, offset: 1360)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !258, file: !118, line: 886, baseType: !69, size: 8, offset: 1368)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !258, file: !118, line: 887, baseType: !69, size: 8, offset: 1376)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !258, file: !118, line: 888, baseType: !295, size: 160, offset: 1384)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 20)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !210, file: !118, line: 916, baseType: !116, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !210, file: !118, line: 917, baseType: !300, size: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !118, line: 679, size: 640, elements: !302)
!302 = !{!303, !311, !324, !333, !342, !355, !369, !381, !391}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !301, file: !118, line: 680, baseType: !304, size: 128)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !118, line: 575, size: 128, elements: !305)
!305 = !{!306, !307, !308, !309, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !118, line: 576, baseType: !161, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !304, file: !118, line: 576, baseType: !69, size: 8, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !118, line: 576, baseType: !69, size: 8, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !304, file: !118, line: 576, baseType: !12, size: 16, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !304, file: !118, line: 576, baseType: !12, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !301, file: !118, line: 681, baseType: !312, size: 384)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !118, line: 604, size: 384, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !323}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !118, line: 605, baseType: !161, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !312, file: !118, line: 605, baseType: !69, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !118, line: 605, baseType: !69, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !312, file: !118, line: 605, baseType: !12, size: 16, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !118, line: 605, baseType: !12, size: 16, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !312, file: !118, line: 606, baseType: !12, size: 16, offset: 112)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !312, file: !118, line: 607, baseType: !218, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !312, file: !118, line: 608, baseType: !111, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !312, file: !118, line: 609, baseType: !111, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !312, file: !118, line: 610, baseType: !88, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !301, file: !118, line: 682, baseType: !325, size: 192)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !118, line: 582, size: 192, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !118, line: 583, baseType: !161, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !118, line: 583, baseType: !69, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !118, line: 583, baseType: !69, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !118, line: 583, baseType: !12, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !118, line: 583, baseType: !12, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !325, file: !118, line: 584, baseType: !60, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !301, file: !118, line: 683, baseType: !334, size: 192)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !118, line: 616, size: 192, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !118, line: 617, baseType: !161, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !118, line: 617, baseType: !69, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !118, line: 617, baseType: !69, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !118, line: 617, baseType: !12, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !118, line: 617, baseType: !12, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !334, file: !118, line: 618, baseType: !116, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !301, file: !118, line: 684, baseType: !343, size: 448)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !118, line: 621, size: 448, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !118, line: 622, baseType: !161, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !118, line: 622, baseType: !69, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !118, line: 622, baseType: !69, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !343, file: !118, line: 622, baseType: !12, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !118, line: 622, baseType: !12, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !343, file: !118, line: 623, baseType: !7, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !343, file: !118, line: 624, baseType: !218, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !343, file: !118, line: 625, baseType: !111, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !343, file: !118, line: 626, baseType: !111, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !343, file: !118, line: 627, baseType: !7, size: 32, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !301, file: !118, line: 685, baseType: !356, size: 512)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !118, line: 590, size: 512, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !118, line: 591, baseType: !161, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !118, line: 591, baseType: !69, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !118, line: 591, baseType: !69, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !118, line: 591, baseType: !12, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !118, line: 591, baseType: !12, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !356, file: !118, line: 592, baseType: !7, size: 32, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !356, file: !118, line: 593, baseType: !60, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !356, file: !118, line: 594, baseType: !60, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !356, file: !118, line: 595, baseType: !184, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !356, file: !118, line: 596, baseType: !161, size: 64, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !356, file: !118, line: 597, baseType: !7, size: 32, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !301, file: !118, line: 686, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !118, line: 634, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !118, line: 635, baseType: !161, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !370, file: !118, line: 635, baseType: !69, size: 8, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !118, line: 635, baseType: !69, size: 8, offset: 72)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !370, file: !118, line: 635, baseType: !12, size: 16, offset: 80)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !118, line: 635, baseType: !12, size: 16, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !370, file: !118, line: 636, baseType: !69, size: 8, offset: 112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !370, file: !118, line: 637, baseType: !184, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !370, file: !118, line: 638, baseType: !60, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !370, file: !118, line: 639, baseType: !88, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !301, file: !118, line: 687, baseType: !382, size: 640)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !118, line: 646, size: 640, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !118, line: 647, baseType: !161, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !382, file: !118, line: 647, baseType: !69, size: 8, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !118, line: 647, baseType: !69, size: 8, offset: 72)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !382, file: !118, line: 647, baseType: !12, size: 16, offset: 80)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !382, file: !118, line: 647, baseType: !12, size: 16, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !382, file: !118, line: 648, baseType: !390, size: 512, offset: 128)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 512, elements: !46)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !301, file: !118, line: 688, baseType: !392, size: 320)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !118, line: 669, size: 320, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !399, !400, !401, !402}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !392, file: !118, line: 670, baseType: !161, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !392, file: !118, line: 670, baseType: !69, size: 8, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !118, line: 670, baseType: !69, size: 8, offset: 72)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !392, file: !118, line: 670, baseType: !12, size: 16, offset: 80)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !392, file: !118, line: 670, baseType: !12, size: 16, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !392, file: !118, line: 671, baseType: !69, size: 8, offset: 112)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !392, file: !118, line: 672, baseType: !116, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !392, file: !118, line: 673, baseType: !60, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !392, file: !118, line: 674, baseType: !403, size: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !118, line: 660, size: 128, elements: !405)
!405 = !{!406, !412}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !404, file: !118, line: 661, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411, !7, !161}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !161)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !404, file: !118, line: 662, baseType: !161, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !210, file: !118, line: 918, baseType: !218, size: 64, offset: 512)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !210, file: !118, line: 919, baseType: !7, size: 32, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !185, file: !186, line: 61, baseType: !7, size: 32, offset: 1088)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !185, file: !186, line: 62, baseType: !7, size: 32, offset: 1120)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !185, file: !186, line: 63, baseType: !12, size: 16, offset: 1152)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !185, file: !186, line: 64, baseType: !69, size: 8, offset: 1168)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !185, file: !186, line: 66, baseType: !420, size: 2688, offset: 1216)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 2688, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 7)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !185, file: !186, line: 67, baseType: !424, size: 3072, offset: 3904)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 3072, elements: !46)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !185, file: !186, line: 68, baseType: !426, size: 576, offset: 6976)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 576, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 9)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !185, file: !186, line: 69, baseType: !148, size: 64, offset: 7552)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !185, file: !186, line: 71, baseType: !111, size: 64, offset: 7616)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !185, file: !186, line: 72, baseType: !148, size: 64, offset: 7680)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !185, file: !186, line: 73, baseType: !300, size: 64, offset: 7744)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !185, file: !186, line: 74, baseType: !116, size: 64, offset: 7808)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !185, file: !186, line: 75, baseType: !60, size: 64, offset: 7872)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !185, file: !186, line: 76, baseType: !116, size: 64, offset: 7936)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !185, file: !186, line: 77, baseType: !218, size: 64, offset: 8000)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !185, file: !186, line: 78, baseType: !60, size: 64, offset: 8064)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !185, file: !186, line: 79, baseType: !116, size: 64, offset: 8128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !185, file: !186, line: 80, baseType: !100, size: 64, offset: 8192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !185, file: !186, line: 81, baseType: !218, size: 64, offset: 8256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !185, file: !186, line: 82, baseType: !442, size: 64, offset: 8320)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !118, line: 718, size: 128, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !444, file: !118, line: 722, baseType: !7, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !444, file: !118, line: 723, baseType: !7, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !118, line: 724, baseType: !12, size: 16, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !444, file: !118, line: 725, baseType: !69, size: 8, offset: 80)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !444, file: !118, line: 726, baseType: !69, size: 8, offset: 88)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !444, file: !118, line: 727, baseType: !69, size: 8, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !185, file: !186, line: 83, baseType: !218, size: 64, offset: 8384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !185, file: !186, line: 84, baseType: !60, size: 64, offset: 8448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !185, file: !186, line: 85, baseType: !300, size: 64, offset: 8512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !185, file: !186, line: 86, baseType: !60, size: 64, offset: 8576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !185, file: !186, line: 87, baseType: !300, size: 64, offset: 8640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !185, file: !186, line: 88, baseType: !218, size: 64, offset: 8704)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !185, file: !186, line: 89, baseType: !218, size: 64, offset: 8768)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !185, file: !186, line: 90, baseType: !460, size: 64, offset: 8832)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !185, file: !186, line: 91, baseType: !462, size: 64, offset: 8896)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !118, line: 652, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!5, !184, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !185, file: !186, line: 92, baseType: !468, size: 64, offset: 8960)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !118, line: 656, baseType: !181)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !177, file: !62, line: 153, baseType: !60, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !163, file: !62, line: 156, baseType: !7, size: 32, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !163, file: !62, line: 157, baseType: !137, size: 16, offset: 416)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !163, file: !62, line: 158, baseType: !69, size: 8, offset: 432)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !61, file: !62, line: 377, baseType: !474, size: 576)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !62, line: 122, size: 576, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !62, line: 123, baseType: !60, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !62, line: 123, baseType: !69, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !62, line: 123, baseType: !69, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !62, line: 123, baseType: !12, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !62, line: 123, baseType: !69, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !474, file: !62, line: 123, baseType: !69, size: 8, offset: 104)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !474, file: !62, line: 124, baseType: !12, size: 16, offset: 112)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !474, file: !62, line: 125, baseType: !161, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !474, file: !62, line: 126, baseType: !88, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !474, file: !62, line: 127, baseType: !460, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !474, file: !62, line: 128, baseType: !60, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !62, line: 129, baseType: !60, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !62, line: 130, baseType: !116, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !474, file: !62, line: 131, baseType: !69, size: 8, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !61, file: !62, line: 378, baseType: !491, size: 512)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !62, line: 134, size: 512, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !504, !505}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !491, file: !62, line: 135, baseType: !60, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !491, file: !62, line: 135, baseType: !69, size: 8, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !491, file: !62, line: 135, baseType: !69, size: 8, offset: 72)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !491, file: !62, line: 135, baseType: !12, size: 16, offset: 80)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !62, line: 135, baseType: !69, size: 8, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !491, file: !62, line: 135, baseType: !69, size: 8, offset: 104)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !491, file: !62, line: 136, baseType: !116, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !491, file: !62, line: 137, baseType: !60, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !62, line: 138, baseType: !60, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !491, file: !62, line: 139, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !88)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !491, file: !62, line: 140, baseType: !7, size: 32, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !491, file: !62, line: 141, baseType: !161, size: 64, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !61, file: !62, line: 379, baseType: !507, size: 320)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !62, line: 185, size: 320, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514, !518}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !507, file: !62, line: 186, baseType: !60, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !507, file: !62, line: 186, baseType: !69, size: 8, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !507, file: !62, line: 186, baseType: !69, size: 8, offset: 72)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !507, file: !62, line: 186, baseType: !12, size: 16, offset: 80)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !62, line: 186, baseType: !69, size: 8, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !507, file: !62, line: 186, baseType: !515, size: 128, offset: 128)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 128, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 2)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !507, file: !62, line: 186, baseType: !60, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !61, file: !62, line: 380, baseType: !520, size: 384)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !62, line: 188, size: 384, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !520, file: !62, line: 189, baseType: !60, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !520, file: !62, line: 189, baseType: !69, size: 8, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !520, file: !62, line: 189, baseType: !69, size: 8, offset: 72)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !520, file: !62, line: 189, baseType: !12, size: 16, offset: 80)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !62, line: 189, baseType: !69, size: 8, offset: 96)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !520, file: !62, line: 190, baseType: !515, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !520, file: !62, line: 190, baseType: !60, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !520, file: !62, line: 190, baseType: !530, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !118, line: 480, size: 576, elements: !532)
!532 = !{!533, !534, !535, !536, !544, !559, !591, !592, !593, !594, !595, !596}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !531, file: !118, line: 481, baseType: !116, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !531, file: !118, line: 482, baseType: !530, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !118, line: 483, baseType: !530, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !531, file: !118, line: 484, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !118, line: 497, size: 256, elements: !539)
!539 = !{!540, !541, !542, !543}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !538, file: !118, line: 498, baseType: !537, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !118, line: 499, baseType: !537, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !538, file: !118, line: 500, baseType: !530, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !538, file: !118, line: 501, baseType: !7, size: 32, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !531, file: !118, line: 485, baseType: !545, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !118, line: 466, size: 320, elements: !547)
!547 = !{!548, !553, !554, !555, !556, !557, !558}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !546, file: !118, line: 467, baseType: !549, size: 128)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !118, line: 459, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !549, file: !118, line: 460, baseType: !69, size: 8)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !549, file: !118, line: 461, baseType: !88, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !546, file: !118, line: 468, baseType: !549, size: 128, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !546, file: !118, line: 469, baseType: !12, size: 16, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !546, file: !118, line: 470, baseType: !69, size: 8, offset: 272)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !546, file: !118, line: 471, baseType: !69, size: 8, offset: 280)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !546, file: !118, line: 472, baseType: !69, size: 8, offset: 288)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !546, file: !118, line: 473, baseType: !69, size: 8, offset: 296)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !531, file: !118, line: 486, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !118, line: 448, size: 192, elements: !562)
!562 = !{!563, !586, !587, !588, !589, !590}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !561, file: !118, line: 449, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !118, line: 438, size: 64, elements: !565)
!565 = !{!566, !567, !580}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !564, file: !118, line: 439, baseType: !116, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !564, file: !118, line: 440, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !118, line: 419, size: 256, elements: !570)
!570 = !{!571, !576, !577, !578, !579}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !569, file: !118, line: 420, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!7, !411, !7, !161}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !569, file: !118, line: 421, baseType: !161, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !569, file: !118, line: 422, baseType: !116, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !569, file: !118, line: 423, baseType: !69, size: 8, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !569, file: !118, line: 424, baseType: !69, size: 8, offset: 200)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !564, file: !118, line: 441, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !118, line: 429, size: 128, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !582, file: !118, line: 430, baseType: !116, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !582, file: !118, line: 431, baseType: !581, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !561, file: !118, line: 450, baseType: !545, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !118, line: 451, baseType: !69, size: 8, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !561, file: !118, line: 452, baseType: !69, size: 8, offset: 136)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !561, file: !118, line: 453, baseType: !69, size: 8, offset: 144)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !561, file: !118, line: 454, baseType: !69, size: 8, offset: 152)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !531, file: !118, line: 487, baseType: !88, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !531, file: !118, line: 488, baseType: !7, size: 32, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !531, file: !118, line: 489, baseType: !12, size: 16, offset: 480)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !531, file: !118, line: 490, baseType: !12, size: 16, offset: 496)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !531, file: !118, line: 491, baseType: !69, size: 8, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !531, file: !118, line: 492, baseType: !69, size: 8, offset: 520)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !61, file: !62, line: 381, baseType: !598, size: 384)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !62, line: 193, size: 384, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606, !607, !608}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !62, line: 194, baseType: !60, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !62, line: 194, baseType: !69, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !62, line: 194, baseType: !69, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !62, line: 194, baseType: !12, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !62, line: 194, baseType: !69, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !598, file: !62, line: 194, baseType: !515, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !598, file: !62, line: 194, baseType: !60, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !598, file: !62, line: 194, baseType: !7, size: 32, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !598, file: !62, line: 195, baseType: !7, size: 32, offset: 352)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !61, file: !62, line: 382, baseType: !610, size: 384)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !62, line: 198, size: 384, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !610, file: !62, line: 199, baseType: !60, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !610, file: !62, line: 199, baseType: !69, size: 8, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !610, file: !62, line: 199, baseType: !69, size: 8, offset: 72)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !610, file: !62, line: 199, baseType: !12, size: 16, offset: 80)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !610, file: !62, line: 199, baseType: !69, size: 8, offset: 96)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !610, file: !62, line: 201, baseType: !69, size: 8, offset: 104)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !610, file: !62, line: 202, baseType: !69, size: 8, offset: 112)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !610, file: !62, line: 203, baseType: !515, size: 128, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !610, file: !62, line: 203, baseType: !60, size: 64, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !610, file: !62, line: 203, baseType: !622, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !88)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !61, file: !62, line: 383, baseType: !624, size: 320)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !62, line: 206, size: 320, elements: !625)
!625 = !{!626, !627, !628, !629, !630, !631, !632}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !624, file: !62, line: 207, baseType: !60, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !624, file: !62, line: 207, baseType: !69, size: 8, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !624, file: !62, line: 207, baseType: !69, size: 8, offset: 72)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !624, file: !62, line: 207, baseType: !12, size: 16, offset: 80)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !62, line: 207, baseType: !69, size: 8, offset: 96)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !624, file: !62, line: 207, baseType: !515, size: 128, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !624, file: !62, line: 207, baseType: !60, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !61, file: !62, line: 384, baseType: !634, size: 384)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !62, line: 234, size: 384, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !634, file: !62, line: 235, baseType: !60, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !634, file: !62, line: 235, baseType: !69, size: 8, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !62, line: 235, baseType: !69, size: 8, offset: 72)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !634, file: !62, line: 235, baseType: !12, size: 16, offset: 80)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !62, line: 235, baseType: !69, size: 8, offset: 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !634, file: !62, line: 235, baseType: !69, size: 8, offset: 104)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !634, file: !62, line: 235, baseType: !69, size: 8, offset: 112)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !634, file: !62, line: 235, baseType: !69, size: 8, offset: 120)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !634, file: !62, line: 235, baseType: !116, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !634, file: !62, line: 235, baseType: !7, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !634, file: !62, line: 235, baseType: !7, size: 32, offset: 224)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !634, file: !62, line: 235, baseType: !7, size: 32, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !634, file: !62, line: 235, baseType: !69, size: 8, offset: 288)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !634, file: !62, line: 235, baseType: !69, size: 8, offset: 296)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !634, file: !62, line: 235, baseType: !60, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !61, file: !62, line: 385, baseType: !652, size: 576)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !62, line: 238, size: 576, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !62, line: 239, baseType: !60, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !62, line: 239, baseType: !69, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !62, line: 239, baseType: !69, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !62, line: 239, baseType: !12, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !62, line: 239, baseType: !69, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !62, line: 239, baseType: !69, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !62, line: 239, baseType: !69, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !62, line: 239, baseType: !69, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !62, line: 239, baseType: !116, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !62, line: 239, baseType: !7, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !62, line: 239, baseType: !7, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !62, line: 239, baseType: !7, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !62, line: 239, baseType: !69, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !62, line: 239, baseType: !69, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !652, file: !62, line: 239, baseType: !12, size: 16, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !652, file: !62, line: 240, baseType: !60, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !652, file: !62, line: 241, baseType: !111, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !652, file: !62, line: 242, baseType: !12, size: 16, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !652, file: !62, line: 243, baseType: !111, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !61, file: !62, line: 386, baseType: !674, size: 384)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !62, line: 263, size: 384, elements: !675)
!675 = !{!676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !674, file: !62, line: 264, baseType: !60, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !674, file: !62, line: 264, baseType: !69, size: 8, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !674, file: !62, line: 264, baseType: !69, size: 8, offset: 72)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !674, file: !62, line: 264, baseType: !12, size: 16, offset: 80)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !62, line: 264, baseType: !69, size: 8, offset: 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !674, file: !62, line: 264, baseType: !69, size: 8, offset: 104)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !674, file: !62, line: 264, baseType: !69, size: 8, offset: 112)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !674, file: !62, line: 264, baseType: !69, size: 8, offset: 120)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !674, file: !62, line: 264, baseType: !116, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !674, file: !62, line: 264, baseType: !7, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !674, file: !62, line: 264, baseType: !7, size: 32, offset: 224)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !674, file: !62, line: 264, baseType: !7, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !674, file: !62, line: 264, baseType: !69, size: 8, offset: 288)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !674, file: !62, line: 264, baseType: !69, size: 8, offset: 296)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !674, file: !62, line: 264, baseType: !69, size: 8, offset: 304)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !674, file: !62, line: 265, baseType: !60, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !61, file: !62, line: 387, baseType: !693, size: 448)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !62, line: 246, size: 448, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !693, file: !62, line: 247, baseType: !60, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !62, line: 247, baseType: !69, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !62, line: 247, baseType: !69, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !693, file: !62, line: 247, baseType: !12, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !62, line: 247, baseType: !69, size: 8, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !693, file: !62, line: 247, baseType: !69, size: 8, offset: 104)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !693, file: !62, line: 247, baseType: !69, size: 8, offset: 112)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !693, file: !62, line: 247, baseType: !69, size: 8, offset: 120)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !693, file: !62, line: 247, baseType: !116, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !693, file: !62, line: 247, baseType: !7, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !693, file: !62, line: 247, baseType: !7, size: 32, offset: 224)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !693, file: !62, line: 247, baseType: !7, size: 32, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !693, file: !62, line: 247, baseType: !69, size: 8, offset: 288)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !693, file: !62, line: 247, baseType: !69, size: 8, offset: 296)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !693, file: !62, line: 247, baseType: !60, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !693, file: !62, line: 248, baseType: !60, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !61, file: !62, line: 388, baseType: !712, size: 448)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !62, line: 251, size: 448, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !712, file: !62, line: 252, baseType: !60, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !712, file: !62, line: 252, baseType: !69, size: 8, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !62, line: 252, baseType: !69, size: 8, offset: 72)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !712, file: !62, line: 252, baseType: !12, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !62, line: 252, baseType: !69, size: 8, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !712, file: !62, line: 252, baseType: !69, size: 8, offset: 104)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !712, file: !62, line: 252, baseType: !69, size: 8, offset: 112)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !712, file: !62, line: 252, baseType: !69, size: 8, offset: 120)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !712, file: !62, line: 252, baseType: !116, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !712, file: !62, line: 252, baseType: !7, size: 32, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !712, file: !62, line: 252, baseType: !7, size: 32, offset: 224)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !712, file: !62, line: 252, baseType: !7, size: 32, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !712, file: !62, line: 252, baseType: !69, size: 8, offset: 288)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !712, file: !62, line: 252, baseType: !69, size: 8, offset: 296)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !712, file: !62, line: 257, baseType: !60, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !712, file: !62, line: 258, baseType: !60, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !61, file: !62, line: 389, baseType: !731, size: 512)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !62, line: 274, size: 512, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !731, file: !62, line: 275, baseType: !60, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !731, file: !62, line: 275, baseType: !69, size: 8, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !731, file: !62, line: 275, baseType: !69, size: 8, offset: 72)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !731, file: !62, line: 275, baseType: !12, size: 16, offset: 80)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !62, line: 275, baseType: !69, size: 8, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !731, file: !62, line: 275, baseType: !116, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !731, file: !62, line: 276, baseType: !7, size: 32, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !731, file: !62, line: 277, baseType: !407, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !731, file: !62, line: 278, baseType: !161, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !62, line: 279, baseType: !515, size: 128, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !61, file: !62, line: 390, baseType: !744, size: 576)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !62, line: 282, size: 576, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !759, !760, !761, !762, !768, !769}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !62, line: 283, baseType: !60, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !62, line: 283, baseType: !69, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !62, line: 283, baseType: !69, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !62, line: 283, baseType: !12, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !62, line: 283, baseType: !69, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !744, file: !62, line: 283, baseType: !69, size: 8, offset: 104)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !744, file: !62, line: 284, baseType: !69, size: 8, offset: 112)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !744, file: !62, line: 285, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!5, !7, !503, !7, !758, !161, !161}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !744, file: !62, line: 286, baseType: !116, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !744, file: !62, line: 287, baseType: !161, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !744, file: !62, line: 288, baseType: !161, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !744, file: !62, line: 289, baseType: !763, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!5, !411, !7, !161, !767}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !744, file: !62, line: 290, baseType: !60, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !62, line: 291, baseType: !60, size: 64, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !61, file: !62, line: 391, baseType: !771, size: 512)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !62, line: 309, size: 512, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !771, file: !62, line: 310, baseType: !60, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !771, file: !62, line: 310, baseType: !69, size: 8, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !62, line: 310, baseType: !69, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !771, file: !62, line: 310, baseType: !12, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !62, line: 310, baseType: !69, size: 8, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !771, file: !62, line: 310, baseType: !69, size: 8, offset: 104)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !771, file: !62, line: 311, baseType: !69, size: 8, offset: 112)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !771, file: !62, line: 312, baseType: !69, size: 8, offset: 120)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !771, file: !62, line: 313, baseType: !161, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !771, file: !62, line: 314, baseType: !116, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !771, file: !62, line: 315, baseType: !148, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !771, file: !62, line: 316, baseType: !111, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !771, file: !62, line: 317, baseType: !111, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !771, file: !62, line: 318, baseType: !7, size: 32, offset: 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !61, file: !62, line: 392, baseType: !788, size: 448)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !62, line: 342, size: 448, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !788, file: !62, line: 343, baseType: !60, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !788, file: !62, line: 343, baseType: !69, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !62, line: 343, baseType: !69, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !788, file: !62, line: 343, baseType: !12, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !62, line: 343, baseType: !69, size: 8, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !788, file: !62, line: 343, baseType: !116, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !788, file: !62, line: 344, baseType: !116, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !788, file: !62, line: 345, baseType: !161, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !788, file: !62, line: 346, baseType: !111, size: 64, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !788, file: !62, line: 347, baseType: !7, size: 32, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !61, file: !62, line: 393, baseType: !801, size: 256)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !62, line: 352, size: 256, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !808, !813}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !801, file: !62, line: 353, baseType: !60, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !801, file: !62, line: 353, baseType: !69, size: 8, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !801, file: !62, line: 353, baseType: !69, size: 8, offset: 72)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !801, file: !62, line: 353, baseType: !12, size: 16, offset: 80)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !801, file: !62, line: 353, baseType: !69, size: 8, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !801, file: !62, line: 353, baseType: !809, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !411, !161}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !801, file: !62, line: 354, baseType: !161, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !61, file: !62, line: 394, baseType: !815, size: 192)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !62, line: 359, size: 192, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !822}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !815, file: !62, line: 360, baseType: !60, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !815, file: !62, line: 360, baseType: !69, size: 8, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !62, line: 360, baseType: !69, size: 8, offset: 72)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !815, file: !62, line: 360, baseType: !12, size: 16, offset: 80)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !62, line: 360, baseType: !69, size: 8, offset: 96)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !815, file: !62, line: 360, baseType: !60, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !61, file: !62, line: 401, baseType: !117, size: 384)
!824 = !{!825, !826}
!825 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !57, file: !3, line: 35, type: !60)
!826 = !DILocalVariable(name: "thread", scope: !57, file: !3, line: 37, type: !460)
!827 = !DILocation(line: 35, column: 54, scope: !57)
!828 = !DILocation(line: 37, column: 2, scope: !57)
!829 = !DILocation(line: 37, column: 28, scope: !57)
!830 = !DILocation(line: 37, column: 37, scope: !57)
!831 = !DILocation(line: 37, column: 53, scope: !57)
!832 = !DILocation(line: 39, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !57, file: !3, line: 39, column: 6)
!834 = !DILocation(line: 39, column: 6, scope: !57)
!835 = !DILocation(line: 40, column: 3, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !3, line: 39, column: 15)
!837 = !DILocation(line: 45, column: 6, scope: !838)
!838 = distinct !DILexicalBlock(scope: !57, file: !3, line: 45, column: 6)
!839 = !DILocation(line: 45, column: 22, scope: !838)
!840 = !DILocation(line: 45, column: 6, scope: !57)
!841 = !DILocation(line: 46, column: 40, scope: !842)
!842 = distinct !DILexicalBlock(scope: !838, file: !3, line: 45, column: 28)
!843 = !DILocation(line: 46, column: 56, scope: !842)
!844 = !DILocation(line: 46, column: 4, scope: !842)
!845 = !DILocation(line: 46, column: 20, scope: !842)
!846 = !DILocation(line: 46, column: 33, scope: !842)
!847 = !DILocation(line: 46, column: 38, scope: !842)
!848 = !DILocation(line: 47, column: 2, scope: !842)
!849 = !DILocation(line: 49, column: 6, scope: !850)
!850 = distinct !DILexicalBlock(scope: !57, file: !3, line: 49, column: 6)
!851 = !DILocation(line: 49, column: 22, scope: !850)
!852 = !DILocation(line: 49, column: 6, scope: !57)
!853 = !DILocation(line: 50, column: 40, scope: !854)
!854 = distinct !DILexicalBlock(scope: !850, file: !3, line: 49, column: 28)
!855 = !DILocation(line: 50, column: 56, scope: !854)
!856 = !DILocation(line: 50, column: 4, scope: !854)
!857 = !DILocation(line: 50, column: 20, scope: !854)
!858 = !DILocation(line: 50, column: 33, scope: !854)
!859 = !DILocation(line: 50, column: 38, scope: !854)
!860 = !DILocation(line: 59, column: 7, scope: !854)
!861 = !DILocation(line: 59, column: 23, scope: !854)
!862 = !DILocation(line: 58, column: 4, scope: !854)
!863 = !DILocation(line: 58, column: 20, scope: !854)
!864 = !DILocation(line: 58, column: 33, scope: !854)
!865 = !DILocation(line: 58, column: 53, scope: !854)
!866 = !DILocation(line: 60, column: 2, scope: !854)
!867 = !DILocation(line: 61, column: 33, scope: !868)
!868 = distinct !DILexicalBlock(scope: !850, file: !3, line: 60, column: 9)
!869 = !DILocation(line: 61, column: 49, scope: !868)
!870 = !DILocation(line: 61, column: 3, scope: !868)
!871 = !DILocation(line: 61, column: 11, scope: !868)
!872 = !DILocation(line: 61, column: 31, scope: !868)
!873 = !DILocation(line: 63, column: 1, scope: !57)
!874 = distinct !DISubprogram(name: "acpi_ex_acquire_mutex_object", scope: !3, file: !3, line: 126, type: !875, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !877)
!875 = !DISubroutineType(types: !876)
!876 = !{!5, !12, !60, !88}
!877 = !{!878, !879, !880, !881}
!878 = !DILocalVariable(name: "timeout", arg: 1, scope: !874, file: !3, line: 126, type: !12)
!879 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !874, file: !3, line: 127, type: !60)
!880 = !DILocalVariable(name: "thread_id", arg: 3, scope: !874, file: !3, line: 128, type: !88)
!881 = !DILocalVariable(name: "status", scope: !874, file: !3, line: 130, type: !5)
!882 = !DILocation(line: 126, column: 34, scope: !874)
!883 = !DILocation(line: 127, column: 36, scope: !874)
!884 = !DILocation(line: 128, column: 24, scope: !874)
!885 = !DILocation(line: 130, column: 2, scope: !874)
!886 = !DILocation(line: 130, column: 14, scope: !874)
!887 = !DILocation(line: 134, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !874, file: !3, line: 134, column: 6)
!889 = !DILocation(line: 134, column: 6, scope: !874)
!890 = !DILocation(line: 135, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 134, column: 17)
!892 = !DILocation(line: 140, column: 6, scope: !893)
!893 = distinct !DILexicalBlock(scope: !874, file: !3, line: 140, column: 6)
!894 = !DILocation(line: 140, column: 22, scope: !893)
!895 = !DILocation(line: 140, column: 35, scope: !893)
!896 = !DILocation(line: 140, column: 32, scope: !893)
!897 = !DILocation(line: 140, column: 6, scope: !874)
!898 = !DILocation(line: 145, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !893, file: !3, line: 140, column: 46)
!900 = !DILocation(line: 145, column: 19, scope: !899)
!901 = !DILocation(line: 145, column: 36, scope: !899)
!902 = !DILocation(line: 146, column: 3, scope: !899)
!903 = !DILocation(line: 151, column: 6, scope: !904)
!904 = distinct !DILexicalBlock(scope: !874, file: !3, line: 151, column: 6)
!905 = !DILocation(line: 151, column: 18, scope: !904)
!906 = !DILocation(line: 151, column: 15, scope: !904)
!907 = !DILocation(line: 151, column: 6, scope: !874)
!908 = !DILocation(line: 152, column: 40, scope: !909)
!909 = distinct !DILexicalBlock(scope: !904, file: !3, line: 151, column: 46)
!910 = !DILocation(line: 152, column: 12, scope: !909)
!911 = !DILocation(line: 152, column: 10, scope: !909)
!912 = !DILocation(line: 153, column: 2, scope: !909)
!913 = !DILocation(line: 155, column: 33, scope: !914)
!914 = distinct !DILexicalBlock(scope: !904, file: !3, line: 153, column: 9)
!915 = !DILocation(line: 155, column: 49, scope: !914)
!916 = !DILocation(line: 156, column: 12, scope: !914)
!917 = !DILocation(line: 155, column: 7, scope: !914)
!918 = !DILocation(line: 154, column: 10, scope: !914)
!919 = !DILocation(line: 159, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !874, file: !3, line: 159, column: 6)
!921 = !DILocation(line: 159, column: 6, scope: !874)
!922 = !DILocation(line: 163, column: 3, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 159, column: 28)
!924 = !DILocation(line: 168, column: 30, scope: !874)
!925 = !DILocation(line: 168, column: 2, scope: !874)
!926 = !DILocation(line: 168, column: 18, scope: !874)
!927 = !DILocation(line: 168, column: 28, scope: !874)
!928 = !DILocation(line: 169, column: 2, scope: !874)
!929 = !DILocation(line: 169, column: 18, scope: !874)
!930 = !DILocation(line: 169, column: 36, scope: !874)
!931 = !DILocation(line: 170, column: 2, scope: !874)
!932 = !DILocation(line: 170, column: 18, scope: !874)
!933 = !DILocation(line: 170, column: 38, scope: !874)
!934 = !DILocation(line: 171, column: 2, scope: !874)
!935 = !DILocation(line: 171, column: 18, scope: !874)
!936 = !DILocation(line: 171, column: 31, scope: !874)
!937 = !DILocation(line: 173, column: 2, scope: !874)
!938 = !DILocation(line: 174, column: 1, scope: !874)
!939 = !DISubprogram(name: "acpi_ev_acquire_global_lock", scope: !940, file: !940, line: 52, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!941 = !DISubroutineType(types: !942)
!942 = !{!5, !12}
!943 = !DISubprogram(name: "acpi_ex_system_wait_mutex", scope: !944, file: !944, line: 315, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!944 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!945 = !DISubroutineType(types: !946)
!946 = !{!5, !161, !12}
!947 = distinct !DISubprogram(name: "acpi_ex_acquire_mutex", scope: !3, file: !3, line: 191, type: !948, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!5, !60, !60, !184}
!950 = !{!951, !952, !953, !954}
!951 = !DILocalVariable(name: "time_desc", arg: 1, scope: !947, file: !3, line: 191, type: !60)
!952 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !947, file: !3, line: 192, type: !60)
!953 = !DILocalVariable(name: "walk_state", arg: 3, scope: !947, file: !3, line: 193, type: !184)
!954 = !DILocalVariable(name: "status", scope: !947, file: !3, line: 195, type: !5)
!955 = !DILocation(line: 191, column: 50, scope: !947)
!956 = !DILocation(line: 192, column: 36, scope: !947)
!957 = !DILocation(line: 193, column: 33, scope: !947)
!958 = !DILocation(line: 195, column: 2, scope: !947)
!959 = !DILocation(line: 195, column: 14, scope: !947)
!960 = !DILocation(line: 199, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !947, file: !3, line: 199, column: 6)
!962 = !DILocation(line: 199, column: 6, scope: !947)
!963 = !DILocation(line: 200, column: 3, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 199, column: 17)
!965 = !DILocation(line: 205, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !947, file: !3, line: 205, column: 6)
!967 = !DILocation(line: 205, column: 19, scope: !966)
!968 = !DILocation(line: 205, column: 6, scope: !947)
!969 = !DILocation(line: 206, column: 3, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !3, line: 205, column: 27)
!971 = !DILocation(line: 209, column: 3, scope: !970)
!972 = !DILocation(line: 216, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !947, file: !3, line: 216, column: 6)
!974 = !DILocation(line: 216, column: 18, scope: !973)
!975 = !DILocation(line: 216, column: 26, scope: !973)
!976 = !DILocation(line: 216, column: 47, scope: !973)
!977 = !DILocation(line: 216, column: 63, scope: !973)
!978 = !DILocation(line: 216, column: 45, scope: !973)
!979 = !DILocation(line: 216, column: 6, scope: !947)
!980 = !DILocation(line: 217, column: 3, scope: !981)
!981 = distinct !DILexicalBlock(scope: !973, file: !3, line: 216, column: 75)
!982 = !DILocation(line: 222, column: 3, scope: !981)
!983 = !DILocation(line: 233, column: 45, scope: !947)
!984 = !DILocation(line: 233, column: 64, scope: !947)
!985 = !DILocation(line: 233, column: 40, scope: !947)
!986 = !DILocation(line: 234, column: 12, scope: !947)
!987 = !DILocation(line: 235, column: 12, scope: !947)
!988 = !DILocation(line: 235, column: 24, scope: !947)
!989 = !DILocation(line: 235, column: 32, scope: !947)
!990 = !DILocation(line: 233, column: 11, scope: !947)
!991 = !DILocation(line: 233, column: 9, scope: !947)
!992 = !DILocation(line: 237, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !947, file: !3, line: 237, column: 6)
!994 = !DILocation(line: 237, column: 27, scope: !993)
!995 = !DILocation(line: 237, column: 30, scope: !993)
!996 = !DILocation(line: 237, column: 46, scope: !993)
!997 = !DILocation(line: 237, column: 64, scope: !993)
!998 = !DILocation(line: 237, column: 6, scope: !947)
!999 = !DILocation(line: 241, column: 34, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !993, file: !3, line: 237, column: 70)
!1001 = !DILocation(line: 241, column: 46, scope: !1000)
!1002 = !DILocation(line: 241, column: 3, scope: !1000)
!1003 = !DILocation(line: 241, column: 19, scope: !1000)
!1004 = !DILocation(line: 241, column: 32, scope: !1000)
!1005 = !DILocation(line: 243, column: 7, scope: !1000)
!1006 = !DILocation(line: 243, column: 19, scope: !1000)
!1007 = !DILocation(line: 243, column: 27, scope: !1000)
!1008 = !DILocation(line: 242, column: 3, scope: !1000)
!1009 = !DILocation(line: 242, column: 19, scope: !1000)
!1010 = !DILocation(line: 242, column: 39, scope: !1000)
!1011 = !DILocation(line: 245, column: 7, scope: !1000)
!1012 = !DILocation(line: 245, column: 23, scope: !1000)
!1013 = !DILocation(line: 244, column: 3, scope: !1000)
!1014 = !DILocation(line: 244, column: 15, scope: !1000)
!1015 = !DILocation(line: 244, column: 23, scope: !1000)
!1016 = !DILocation(line: 244, column: 42, scope: !1000)
!1017 = !DILocation(line: 249, column: 22, scope: !1000)
!1018 = !DILocation(line: 249, column: 32, scope: !1000)
!1019 = !DILocation(line: 249, column: 44, scope: !1000)
!1020 = !DILocation(line: 249, column: 3, scope: !1000)
!1021 = !DILocation(line: 250, column: 2, scope: !1000)
!1022 = !DILocation(line: 258, column: 2, scope: !947)
!1023 = !DILocation(line: 259, column: 1, scope: !947)
!1024 = !DISubprogram(name: "acpi_error", scope: !1025, file: !1025, line: 901, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !1028, !7, !1028, null}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!1029 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1030, file: !1030, line: 227, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1028, !161}
!1033 = distinct !DISubprogram(name: "acpi_ex_link_mutex", scope: !3, file: !3, line: 79, type: !1034, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1036)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !60, !460}
!1036 = !{!1037, !1038, !1039}
!1037 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1033, file: !3, line: 79, type: !60)
!1038 = !DILocalVariable(name: "thread", arg: 2, scope: !1033, file: !3, line: 80, type: !460)
!1039 = !DILocalVariable(name: "list_head", scope: !1033, file: !3, line: 82, type: !60)
!1040 = !DILocation(line: 79, column: 47, scope: !1033)
!1041 = !DILocation(line: 80, column: 32, scope: !1033)
!1042 = !DILocation(line: 82, column: 2, scope: !1033)
!1043 = !DILocation(line: 82, column: 29, scope: !1033)
!1044 = !DILocation(line: 84, column: 14, scope: !1033)
!1045 = !DILocation(line: 84, column: 22, scope: !1033)
!1046 = !DILocation(line: 84, column: 12, scope: !1033)
!1047 = !DILocation(line: 88, column: 2, scope: !1033)
!1048 = !DILocation(line: 88, column: 18, scope: !1033)
!1049 = !DILocation(line: 88, column: 23, scope: !1033)
!1050 = !DILocation(line: 89, column: 25, scope: !1033)
!1051 = !DILocation(line: 89, column: 2, scope: !1033)
!1052 = !DILocation(line: 89, column: 18, scope: !1033)
!1053 = !DILocation(line: 89, column: 23, scope: !1033)
!1054 = !DILocation(line: 93, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 93, column: 6)
!1056 = !DILocation(line: 93, column: 6, scope: !1033)
!1057 = !DILocation(line: 94, column: 27, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 93, column: 17)
!1059 = !DILocation(line: 94, column: 3, scope: !1058)
!1060 = !DILocation(line: 94, column: 20, scope: !1058)
!1061 = !DILocation(line: 94, column: 25, scope: !1058)
!1062 = !DILocation(line: 95, column: 2, scope: !1058)
!1063 = !DILocation(line: 99, column: 32, scope: !1033)
!1064 = !DILocation(line: 99, column: 2, scope: !1033)
!1065 = !DILocation(line: 99, column: 10, scope: !1033)
!1066 = !DILocation(line: 99, column: 30, scope: !1033)
!1067 = !DILocation(line: 100, column: 1, scope: !1033)
!1068 = distinct !DISubprogram(name: "acpi_ex_release_mutex_object", scope: !3, file: !3, line: 283, type: !1069, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!5, !60}
!1071 = !{!1072, !1073}
!1072 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1068, file: !3, line: 283, type: !60)
!1073 = !DILocalVariable(name: "status", scope: !1068, file: !3, line: 285, type: !5)
!1074 = !DILocation(line: 283, column: 69, scope: !1068)
!1075 = !DILocation(line: 285, column: 2, scope: !1068)
!1076 = !DILocation(line: 285, column: 14, scope: !1068)
!1077 = !DILocation(line: 289, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 289, column: 6)
!1079 = !DILocation(line: 289, column: 22, scope: !1078)
!1080 = !DILocation(line: 289, column: 40, scope: !1078)
!1081 = !DILocation(line: 289, column: 6, scope: !1068)
!1082 = !DILocation(line: 290, column: 3, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 289, column: 46)
!1084 = !DILocation(line: 295, column: 2, scope: !1068)
!1085 = !DILocation(line: 295, column: 18, scope: !1068)
!1086 = !DILocation(line: 295, column: 35, scope: !1068)
!1087 = !DILocation(line: 296, column: 6, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 296, column: 6)
!1089 = !DILocation(line: 296, column: 22, scope: !1088)
!1090 = !DILocation(line: 296, column: 40, scope: !1088)
!1091 = !DILocation(line: 296, column: 6, scope: !1068)
!1092 = !DILocation(line: 300, column: 3, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 296, column: 46)
!1094 = !DILocation(line: 303, column: 6, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 303, column: 6)
!1096 = !DILocation(line: 303, column: 22, scope: !1095)
!1097 = !DILocation(line: 303, column: 6, scope: !1068)
!1098 = !DILocation(line: 307, column: 24, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 303, column: 36)
!1100 = !DILocation(line: 307, column: 3, scope: !1099)
!1101 = !DILocation(line: 308, column: 3, scope: !1099)
!1102 = !DILocation(line: 308, column: 19, scope: !1099)
!1103 = !DILocation(line: 308, column: 32, scope: !1099)
!1104 = !DILocation(line: 309, column: 2, scope: !1099)
!1105 = !DILocation(line: 313, column: 6, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 313, column: 6)
!1107 = !DILocation(line: 313, column: 18, scope: !1106)
!1108 = !DILocation(line: 313, column: 15, scope: !1106)
!1109 = !DILocation(line: 313, column: 6, scope: !1068)
!1110 = !DILocation(line: 314, column: 12, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 313, column: 46)
!1112 = !DILocation(line: 314, column: 10, scope: !1111)
!1113 = !DILocation(line: 315, column: 2, scope: !1111)
!1114 = !DILocation(line: 316, column: 3, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 315, column: 9)
!1116 = !DILocation(line: 321, column: 2, scope: !1068)
!1117 = !DILocation(line: 321, column: 18, scope: !1068)
!1118 = !DILocation(line: 321, column: 28, scope: !1068)
!1119 = !DILocation(line: 322, column: 2, scope: !1068)
!1120 = !DILocation(line: 323, column: 1, scope: !1068)
!1121 = !DISubprogram(name: "acpi_ev_release_global_lock", scope: !940, file: !940, line: 54, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!5}
!1124 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !1125, file: !1125, line: 140, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1125 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!5, !161, !7}
!1128 = distinct !DISubprogram(name: "acpi_ex_release_mutex", scope: !3, file: !3, line: 339, type: !1129, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!5, !60, !184}
!1131 = !{!1132, !1133, !1134, !1135, !1136}
!1132 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1128, file: !3, line: 339, type: !60)
!1133 = !DILocalVariable(name: "walk_state", arg: 2, scope: !1128, file: !3, line: 340, type: !184)
!1134 = !DILocalVariable(name: "previous_sync_level", scope: !1128, file: !3, line: 342, type: !69)
!1135 = !DILocalVariable(name: "owner_thread", scope: !1128, file: !3, line: 343, type: !460)
!1136 = !DILocalVariable(name: "status", scope: !1128, file: !3, line: 344, type: !5)
!1137 = !DILocation(line: 339, column: 50, scope: !1128)
!1138 = !DILocation(line: 340, column: 33, scope: !1128)
!1139 = !DILocation(line: 342, column: 2, scope: !1128)
!1140 = !DILocation(line: 342, column: 5, scope: !1128)
!1141 = !DILocation(line: 343, column: 2, scope: !1128)
!1142 = !DILocation(line: 343, column: 28, scope: !1128)
!1143 = !DILocation(line: 344, column: 2, scope: !1128)
!1144 = !DILocation(line: 344, column: 14, scope: !1128)
!1145 = !DILocation(line: 348, column: 7, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 348, column: 6)
!1147 = !DILocation(line: 348, column: 6, scope: !1128)
!1148 = !DILocation(line: 349, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 348, column: 17)
!1150 = !DILocation(line: 352, column: 17, scope: !1128)
!1151 = !DILocation(line: 352, column: 33, scope: !1128)
!1152 = !DILocation(line: 352, column: 15, scope: !1128)
!1153 = !DILocation(line: 356, column: 7, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 356, column: 6)
!1155 = !DILocation(line: 356, column: 6, scope: !1128)
!1156 = !DILocation(line: 357, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 356, column: 21)
!1158 = !DILocation(line: 360, column: 3, scope: !1157)
!1159 = !DILocation(line: 365, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 365, column: 6)
!1161 = !DILocation(line: 365, column: 19, scope: !1160)
!1162 = !DILocation(line: 365, column: 6, scope: !1128)
!1163 = !DILocation(line: 366, column: 3, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 365, column: 27)
!1165 = !DILocation(line: 369, column: 3, scope: !1164)
!1166 = !DILocation(line: 376, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 376, column: 6)
!1168 = !DILocation(line: 376, column: 21, scope: !1167)
!1169 = !DILocation(line: 376, column: 34, scope: !1167)
!1170 = !DILocation(line: 376, column: 46, scope: !1167)
!1171 = !DILocation(line: 376, column: 54, scope: !1167)
!1172 = !DILocation(line: 376, column: 31, scope: !1167)
!1173 = !DILocation(line: 376, column: 65, scope: !1167)
!1174 = !DILocation(line: 377, column: 7, scope: !1167)
!1175 = !DILocation(line: 377, column: 19, scope: !1167)
!1176 = !DILocation(line: 377, column: 16, scope: !1167)
!1177 = !DILocation(line: 376, column: 6, scope: !1128)
!1178 = !DILocation(line: 378, column: 3, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 377, column: 48)
!1180 = !DILocation(line: 383, column: 3, scope: !1179)
!1181 = !DILocation(line: 393, column: 6, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 393, column: 6)
!1183 = !DILocation(line: 393, column: 22, scope: !1182)
!1184 = !DILocation(line: 393, column: 36, scope: !1182)
!1185 = !DILocation(line: 393, column: 50, scope: !1182)
!1186 = !DILocation(line: 393, column: 33, scope: !1182)
!1187 = !DILocation(line: 393, column: 6, scope: !1128)
!1188 = !DILocation(line: 394, column: 3, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 393, column: 70)
!1190 = !DILocation(line: 400, column: 3, scope: !1189)
!1191 = !DILocation(line: 409, column: 6, scope: !1128)
!1192 = !DILocation(line: 409, column: 20, scope: !1128)
!1193 = !DILocation(line: 409, column: 47, scope: !1128)
!1194 = !DILocation(line: 408, column: 22, scope: !1128)
!1195 = !DILocation(line: 420, column: 40, scope: !1128)
!1196 = !DILocation(line: 420, column: 11, scope: !1128)
!1197 = !DILocation(line: 420, column: 9, scope: !1128)
!1198 = !DILocation(line: 421, column: 6, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 421, column: 6)
!1200 = !DILocation(line: 421, column: 6, scope: !1128)
!1201 = !DILocation(line: 422, column: 3, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 421, column: 28)
!1203 = !DILocation(line: 425, column: 6, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 425, column: 6)
!1205 = !DILocation(line: 425, column: 22, scope: !1204)
!1206 = !DILocation(line: 425, column: 40, scope: !1204)
!1207 = !DILocation(line: 425, column: 6, scope: !1128)
!1208 = !DILocation(line: 429, column: 38, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 425, column: 46)
!1210 = !DILocation(line: 429, column: 3, scope: !1209)
!1211 = !DILocation(line: 429, column: 17, scope: !1209)
!1212 = !DILocation(line: 429, column: 36, scope: !1209)
!1213 = !DILocation(line: 430, column: 2, scope: !1209)
!1214 = !DILocation(line: 440, column: 2, scope: !1128)
!1215 = !DILocation(line: 441, column: 1, scope: !1128)
!1216 = distinct !DISubprogram(name: "acpi_ex_release_all_mutexes", scope: !3, file: !3, line: 461, type: !1217, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1219)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !460}
!1219 = !{!1220, !1221, !1222}
!1220 = !DILocalVariable(name: "thread", arg: 1, scope: !1216, file: !3, line: 461, type: !460)
!1221 = !DILocalVariable(name: "next", scope: !1216, file: !3, line: 463, type: !60)
!1222 = !DILocalVariable(name: "obj_desc", scope: !1216, file: !3, line: 464, type: !60)
!1223 = !DILocation(line: 461, column: 60, scope: !1216)
!1224 = !DILocation(line: 463, column: 2, scope: !1216)
!1225 = !DILocation(line: 463, column: 29, scope: !1216)
!1226 = !DILocation(line: 463, column: 36, scope: !1216)
!1227 = !DILocation(line: 463, column: 44, scope: !1216)
!1228 = !DILocation(line: 464, column: 2, scope: !1216)
!1229 = !DILocation(line: 464, column: 29, scope: !1216)
!1230 = !DILocation(line: 470, column: 2, scope: !1216)
!1231 = !DILocation(line: 470, column: 9, scope: !1216)
!1232 = !DILocation(line: 471, column: 14, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 470, column: 15)
!1234 = !DILocation(line: 471, column: 12, scope: !1233)
!1235 = !DILocation(line: 480, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 480, column: 7)
!1237 = !DILocation(line: 480, column: 19, scope: !1236)
!1238 = !DILocation(line: 480, column: 16, scope: !1236)
!1239 = !DILocation(line: 480, column: 7, scope: !1233)
!1240 = !DILocation(line: 484, column: 10, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 480, column: 47)
!1242 = !DILocation(line: 485, column: 3, scope: !1241)
!1243 = !DILocation(line: 486, column: 4, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 485, column: 10)
!1245 = !DILocation(line: 492, column: 7, scope: !1233)
!1246 = !DILocation(line: 492, column: 23, scope: !1233)
!1247 = !DILocation(line: 491, column: 3, scope: !1233)
!1248 = !DILocation(line: 491, column: 11, scope: !1233)
!1249 = !DILocation(line: 491, column: 30, scope: !1233)
!1250 = !DILocation(line: 496, column: 10, scope: !1233)
!1251 = !DILocation(line: 496, column: 26, scope: !1233)
!1252 = !DILocation(line: 496, column: 8, scope: !1233)
!1253 = !DILocation(line: 498, column: 3, scope: !1233)
!1254 = !DILocation(line: 498, column: 19, scope: !1233)
!1255 = !DILocation(line: 498, column: 24, scope: !1233)
!1256 = !DILocation(line: 499, column: 3, scope: !1233)
!1257 = !DILocation(line: 499, column: 19, scope: !1233)
!1258 = !DILocation(line: 499, column: 24, scope: !1233)
!1259 = !DILocation(line: 500, column: 3, scope: !1233)
!1260 = !DILocation(line: 500, column: 19, scope: !1233)
!1261 = !DILocation(line: 500, column: 37, scope: !1233)
!1262 = !DILocation(line: 501, column: 3, scope: !1233)
!1263 = !DILocation(line: 501, column: 19, scope: !1233)
!1264 = !DILocation(line: 501, column: 32, scope: !1233)
!1265 = !DILocation(line: 502, column: 3, scope: !1233)
!1266 = !DILocation(line: 502, column: 19, scope: !1233)
!1267 = !DILocation(line: 502, column: 29, scope: !1233)
!1268 = distinct !{!1268, !1230, !1269, !1270, !1271}
!1269 = !DILocation(line: 503, column: 2, scope: !1216)
!1270 = !{!"llvm.loop.mustprogress"}
!1271 = !{!"llvm.loop.unroll.disable"}
!1272 = !DILocation(line: 506, column: 1, scope: !1216)
