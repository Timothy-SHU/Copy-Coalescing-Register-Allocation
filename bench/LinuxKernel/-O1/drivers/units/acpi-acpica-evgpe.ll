; ModuleID = 'drivers/acpi/acpica/evgpe.c'
source_filename = "drivers/acpi/acpica/evgpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, ptr, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { ptr }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_block_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i8, i8 }
%struct.acpi_object_device = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr, ptr }
%struct.acpi_gpe_xrupt_info = type { ptr, ptr, ptr, i32 }
%struct.acpi_gpe_handler_info = type { ptr, ptr, ptr, i8, i8 }
%struct.acpi_gpe_notify_info = type { ptr, ptr }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }

@acpi_gbl_gpe_fadt_blocks = external dso_local global [2 x ptr], align 16
@acpi_gbl_gpe_lock = external dso_local global ptr, align 8
@acpi_gpe_count = external dso_local global i32, align 4
@acpi_gbl_global_event_handler = external dso_local global ptr, align 8
@acpi_gbl_global_event_handler_context = external dso_local global ptr, align 8
@_acpi_module_name = internal constant [6 x i8] c"evgpe\00", align 1, !dbg !0
@.str = private unnamed_addr constant [27 x i8] c"Unable to disable GPE %02X\00", align 1, !dbg !813
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to clear GPE %02X\00", align 1, !dbg !818
@.str.2 = private unnamed_addr constant [54 x i8] c"Unable to queue handler for GPE %02X - event disabled\00", align 1, !dbg !823
@.str.3 = private unnamed_addr constant [51 x i8] c"No handler or method for GPE %02X, disabling event\00", align 1, !dbg !828
@.str.4 = private unnamed_addr constant [36 x i8] c"while evaluating GPE method [%4.4s]\00", align 1, !dbg !833
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !838

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_update_gpe_enable_mask(ptr noundef %gpe_event_info) #0 align 16 !dbg !856 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca ptr, align 8
  %gpe_register_info = alloca ptr, align 8
  %register_bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !860, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #13, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !861, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_bit) #13, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %register_bit, metadata !862, metadata !DIExpression()), !dbg !867
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !868
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %0, i32 0, i32 1, !dbg !869
  %1 = load ptr, ptr %register_info, align 8, !dbg !869
  store ptr %1, ptr %gpe_register_info, align 8, !dbg !870
  %2 = load ptr, ptr %gpe_register_info, align 8, !dbg !871
  %tobool = icmp ne ptr %2, null, !dbg !871
  br i1 %tobool, label %if.end, label %if.then, !dbg !873

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !874

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !876
  %call = call i32 @acpi_hw_get_gpe_register_bit(ptr noundef %3) #14, !dbg !877
  store i32 %call, ptr %register_bit, align 4, !dbg !878
  %4 = load i32, ptr %register_bit, align 4, !dbg !879
  %not = xor i32 %4, -1, !dbg !879
  %5 = load ptr, ptr %gpe_register_info, align 8, !dbg !879
  %enable_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %5, i32 0, i32 4, !dbg !879
  %6 = load i8, ptr %enable_for_run, align 1, !dbg !879
  %conv = zext i8 %6 to i32, !dbg !879
  %and = and i32 %conv, %not, !dbg !879
  %conv1 = trunc i32 %and to i8, !dbg !879
  store i8 %conv1, ptr %enable_for_run, align 1, !dbg !879
  %7 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !880
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %7, i32 0, i32 4, !dbg !882
  %8 = load i8, ptr %runtime_count, align 2, !dbg !882
  %tobool2 = icmp ne i8 %8, 0, !dbg !880
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !883

if.then3:                                         ; preds = %if.end
  %9 = load i32, ptr %register_bit, align 4, !dbg !884
  %conv4 = trunc i32 %9 to i8, !dbg !884
  %conv5 = zext i8 %conv4 to i32, !dbg !884
  %10 = load ptr, ptr %gpe_register_info, align 8, !dbg !884
  %enable_for_run6 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %10, i32 0, i32 4, !dbg !884
  %11 = load i8, ptr %enable_for_run6, align 1, !dbg !884
  %conv7 = zext i8 %11 to i32, !dbg !884
  %or = or i32 %conv7, %conv5, !dbg !884
  %conv8 = trunc i32 %or to i8, !dbg !884
  store i8 %conv8, ptr %enable_for_run6, align 1, !dbg !884
  br label %if.end9, !dbg !886

if.end9:                                          ; preds = %if.then3, %if.end
  %12 = load ptr, ptr %gpe_register_info, align 8, !dbg !887
  %enable_for_run10 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %12, i32 0, i32 4, !dbg !888
  %13 = load i8, ptr %enable_for_run10, align 1, !dbg !888
  %14 = load ptr, ptr %gpe_register_info, align 8, !dbg !889
  %enable_mask = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %14, i32 0, i32 6, !dbg !890
  store i8 %13, ptr %enable_mask, align 1, !dbg !891
  store i32 0, ptr %retval, align 4, !dbg !892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !892

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_bit) #13, !dbg !893
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #13, !dbg !893
  %15 = load i32, ptr %retval, align 4, !dbg !893
  ret i32 %15, !dbg !893
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !894 dso_local i32 @acpi_hw_get_gpe_register_bit(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_enable_gpe(ptr noundef %gpe_event_info) #0 align 16 !dbg !898 {
entry:
  %gpe_event_info.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !900, metadata !DIExpression()), !dbg !902
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %status, metadata !901, metadata !DIExpression()), !dbg !904
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !905
  %call = call i32 @acpi_hw_low_set_gpe(ptr noundef %0, i32 noundef 0) #14, !dbg !906
  store i32 %call, ptr %status, align 4, !dbg !907
  %1 = load i32, ptr %status, align 4, !dbg !908
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !909
  ret i32 %1, !dbg !908
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !910 dso_local i32 @acpi_hw_low_set_gpe(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_mask_gpe(ptr noundef %gpe_event_info, i8 noundef zeroext %is_masked) #0 align 16 !dbg !913 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca ptr, align 8
  %is_masked.addr = alloca i8, align 1
  %gpe_register_info = alloca ptr, align 8
  %register_bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !917, metadata !DIExpression()), !dbg !921
  store i8 %is_masked, ptr %is_masked.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_masked.addr, metadata !918, metadata !DIExpression()), !dbg !922
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #13, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !919, metadata !DIExpression()), !dbg !924
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_bit) #13, !dbg !925
  call void @llvm.dbg.declare(metadata ptr %register_bit, metadata !920, metadata !DIExpression()), !dbg !926
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !927
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %0, i32 0, i32 1, !dbg !928
  %1 = load ptr, ptr %register_info, align 8, !dbg !928
  store ptr %1, ptr %gpe_register_info, align 8, !dbg !929
  %2 = load ptr, ptr %gpe_register_info, align 8, !dbg !930
  %tobool = icmp ne ptr %2, null, !dbg !930
  br i1 %tobool, label %if.end, label %if.then, !dbg !932

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !933

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !935
  %call = call i32 @acpi_hw_get_gpe_register_bit(ptr noundef %3) #14, !dbg !936
  store i32 %call, ptr %register_bit, align 4, !dbg !937
  %4 = load i8, ptr %is_masked.addr, align 1, !dbg !938
  %tobool1 = icmp ne i8 %4, 0, !dbg !938
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !940

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %register_bit, align 4, !dbg !941
  %6 = load ptr, ptr %gpe_register_info, align 8, !dbg !944
  %mask_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %6, i32 0, i32 5, !dbg !945
  %7 = load i8, ptr %mask_for_run, align 4, !dbg !945
  %conv = zext i8 %7 to i32, !dbg !944
  %and = and i32 %5, %conv, !dbg !946
  %tobool3 = icmp ne i32 %and, 0, !dbg !946
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !947

if.then4:                                         ; preds = %if.then2
  store i32 4097, ptr %retval, align 4, !dbg !948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !948

if.end5:                                          ; preds = %if.then2
  %8 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !950
  %call6 = call i32 @acpi_hw_low_set_gpe(ptr noundef %8, i32 noundef 1) #14, !dbg !951
  %9 = load i32, ptr %register_bit, align 4, !dbg !952
  %conv7 = trunc i32 %9 to i8, !dbg !952
  %conv8 = zext i8 %conv7 to i32, !dbg !952
  %10 = load ptr, ptr %gpe_register_info, align 8, !dbg !952
  %mask_for_run9 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %10, i32 0, i32 5, !dbg !952
  %11 = load i8, ptr %mask_for_run9, align 4, !dbg !952
  %conv10 = zext i8 %11 to i32, !dbg !952
  %or = or i32 %conv10, %conv8, !dbg !952
  %conv11 = trunc i32 %or to i8, !dbg !952
  store i8 %conv11, ptr %mask_for_run9, align 4, !dbg !952
  br label %if.end30, !dbg !953

if.else:                                          ; preds = %if.end
  %12 = load i32, ptr %register_bit, align 4, !dbg !954
  %13 = load ptr, ptr %gpe_register_info, align 8, !dbg !957
  %mask_for_run12 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %13, i32 0, i32 5, !dbg !958
  %14 = load i8, ptr %mask_for_run12, align 4, !dbg !958
  %conv13 = zext i8 %14 to i32, !dbg !957
  %and14 = and i32 %12, %conv13, !dbg !959
  %tobool15 = icmp ne i32 %and14, 0, !dbg !959
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !960

if.then16:                                        ; preds = %if.else
  store i32 4097, ptr %retval, align 4, !dbg !961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !961

if.end17:                                         ; preds = %if.else
  %15 = load i32, ptr %register_bit, align 4, !dbg !963
  %conv18 = trunc i32 %15 to i8, !dbg !963
  %conv19 = zext i8 %conv18 to i32, !dbg !963
  %not = xor i32 %conv19, -1, !dbg !963
  %16 = load ptr, ptr %gpe_register_info, align 8, !dbg !963
  %mask_for_run20 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %16, i32 0, i32 5, !dbg !963
  %17 = load i8, ptr %mask_for_run20, align 4, !dbg !963
  %conv21 = zext i8 %17 to i32, !dbg !963
  %and22 = and i32 %conv21, %not, !dbg !963
  %conv23 = trunc i32 %and22 to i8, !dbg !963
  store i8 %conv23, ptr %mask_for_run20, align 4, !dbg !963
  %18 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !964
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %18, i32 0, i32 4, !dbg !966
  %19 = load i8, ptr %runtime_count, align 2, !dbg !966
  %conv24 = zext i8 %19 to i32, !dbg !964
  %tobool25 = icmp ne i32 %conv24, 0, !dbg !964
  br i1 %tobool25, label %land.lhs.true, label %if.end29, !dbg !967

land.lhs.true:                                    ; preds = %if.end17
  %20 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !968
  %disable_for_dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %20, i32 0, i32 5, !dbg !969
  %21 = load i8, ptr %disable_for_dispatch, align 1, !dbg !969
  %tobool26 = icmp ne i8 %21, 0, !dbg !968
  br i1 %tobool26, label %if.end29, label %if.then27, !dbg !970

if.then27:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !971
  %call28 = call i32 @acpi_hw_low_set_gpe(ptr noundef %22, i32 noundef 0) #14, !dbg !973
  br label %if.end29, !dbg !974

if.end29:                                         ; preds = %if.then27, %land.lhs.true, %if.end17
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end5
  store i32 0, ptr %retval, align 4, !dbg !975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !975

cleanup:                                          ; preds = %if.end30, %if.then16, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_bit) #13, !dbg !976
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #13, !dbg !976
  %23 = load i32, ptr %retval, align 4, !dbg !976
  ret i32 %23, !dbg !976
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_add_gpe_reference(ptr noundef %gpe_event_info, i8 noundef zeroext %clear_on_enable) #0 align 16 !dbg !977 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca ptr, align 8
  %clear_on_enable.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !979, metadata !DIExpression()), !dbg !982
  store i8 %clear_on_enable, ptr %clear_on_enable.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %clear_on_enable.addr, metadata !980, metadata !DIExpression()), !dbg !983
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !984
  call void @llvm.dbg.declare(metadata ptr %status, metadata !981, metadata !DIExpression()), !dbg !985
  store i32 0, ptr %status, align 4, !dbg !985
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !986
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %0, i32 0, i32 4, !dbg !988
  %1 = load i8, ptr %runtime_count, align 2, !dbg !988
  %conv = zext i8 %1 to i32, !dbg !986
  %cmp = icmp eq i32 %conv, 255, !dbg !989
  br i1 %cmp, label %if.then, label %if.end, !dbg !990

if.then:                                          ; preds = %entry
  store i32 16, ptr %retval, align 4, !dbg !991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !991

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !993
  %runtime_count2 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %2, i32 0, i32 4, !dbg !994
  %3 = load i8, ptr %runtime_count2, align 2, !dbg !995
  %inc = add i8 %3, 1, !dbg !995
  store i8 %inc, ptr %runtime_count2, align 2, !dbg !995
  %4 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !996
  %runtime_count3 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %4, i32 0, i32 4, !dbg !998
  %5 = load i8, ptr %runtime_count3, align 2, !dbg !998
  %conv4 = zext i8 %5 to i32, !dbg !996
  %cmp5 = icmp eq i32 %conv4, 1, !dbg !999
  br i1 %cmp5, label %if.then7, label %if.end19, !dbg !1000

if.then7:                                         ; preds = %if.end
  %6 = load i8, ptr %clear_on_enable.addr, align 1, !dbg !1001
  %tobool = icmp ne i8 %6, 0, !dbg !1001
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !1004

if.then8:                                         ; preds = %if.then7
  %7 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1005
  %call = call i32 @acpi_hw_clear_gpe(ptr noundef %7) #14, !dbg !1007
  br label %if.end9, !dbg !1008

if.end9:                                          ; preds = %if.then8, %if.then7
  %8 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1009
  %call10 = call i32 @acpi_ev_update_gpe_enable_mask(ptr noundef %8) #14, !dbg !1010
  store i32 %call10, ptr %status, align 4, !dbg !1011
  %9 = load i32, ptr %status, align 4, !dbg !1012
  %tobool11 = icmp ne i32 %9, 0, !dbg !1012
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !1014

if.then12:                                        ; preds = %if.end9
  %10 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1015
  %call13 = call i32 @acpi_ev_enable_gpe(ptr noundef %10) #14, !dbg !1017
  store i32 %call13, ptr %status, align 4, !dbg !1018
  br label %if.end14, !dbg !1019

if.end14:                                         ; preds = %if.then12, %if.end9
  %11 = load i32, ptr %status, align 4, !dbg !1020
  %tobool15 = icmp ne i32 %11, 0, !dbg !1020
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !1022

if.then16:                                        ; preds = %if.end14
  %12 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1023
  %runtime_count17 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %12, i32 0, i32 4, !dbg !1025
  %13 = load i8, ptr %runtime_count17, align 2, !dbg !1026
  %dec = add i8 %13, -1, !dbg !1026
  store i8 %dec, ptr %runtime_count17, align 2, !dbg !1026
  br label %if.end18, !dbg !1027

if.end18:                                         ; preds = %if.then16, %if.end14
  br label %if.end19, !dbg !1028

if.end19:                                         ; preds = %if.end18, %if.end
  %14 = load i32, ptr %status, align 4, !dbg !1029
  store i32 %14, ptr %retval, align 4, !dbg !1029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1029

cleanup:                                          ; preds = %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1030
  %15 = load i32, ptr %retval, align 4, !dbg !1030
  ret i32 %15, !dbg !1030
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1031 dso_local i32 @acpi_hw_clear_gpe(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_remove_gpe_reference(ptr noundef %gpe_event_info) #0 align 16 !dbg !1032 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !1034, metadata !DIExpression()), !dbg !1036
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1035, metadata !DIExpression()), !dbg !1038
  store i32 0, ptr %status, align 4, !dbg !1038
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1039
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %0, i32 0, i32 4, !dbg !1041
  %1 = load i8, ptr %runtime_count, align 2, !dbg !1041
  %tobool = icmp ne i8 %1, 0, !dbg !1039
  br i1 %tobool, label %if.end, label %if.then, !dbg !1042

if.then:                                          ; preds = %entry
  store i32 16, ptr %retval, align 4, !dbg !1043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1043

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1045
  %runtime_count1 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %2, i32 0, i32 4, !dbg !1046
  %3 = load i8, ptr %runtime_count1, align 2, !dbg !1047
  %dec = add i8 %3, -1, !dbg !1047
  store i8 %dec, ptr %runtime_count1, align 2, !dbg !1047
  %4 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1048
  %runtime_count2 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %4, i32 0, i32 4, !dbg !1050
  %5 = load i8, ptr %runtime_count2, align 2, !dbg !1050
  %tobool3 = icmp ne i8 %5, 0, !dbg !1048
  br i1 %tobool3, label %if.end13, label %if.then4, !dbg !1051

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1052
  %call = call i32 @acpi_ev_update_gpe_enable_mask(ptr noundef %6) #14, !dbg !1054
  store i32 %call, ptr %status, align 4, !dbg !1055
  %7 = load i32, ptr %status, align 4, !dbg !1056
  %tobool5 = icmp ne i32 %7, 0, !dbg !1056
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !1058

if.then6:                                         ; preds = %if.then4
  %8 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1059
  %call7 = call i32 @acpi_hw_low_set_gpe(ptr noundef %8, i32 noundef 1) #14, !dbg !1061
  store i32 %call7, ptr %status, align 4, !dbg !1062
  br label %if.end8, !dbg !1063

if.end8:                                          ; preds = %if.then6, %if.then4
  %9 = load i32, ptr %status, align 4, !dbg !1064
  %tobool9 = icmp ne i32 %9, 0, !dbg !1064
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !1066

if.then10:                                        ; preds = %if.end8
  %10 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1067
  %runtime_count11 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %10, i32 0, i32 4, !dbg !1069
  %11 = load i8, ptr %runtime_count11, align 2, !dbg !1070
  %inc = add i8 %11, 1, !dbg !1070
  store i8 %inc, ptr %runtime_count11, align 2, !dbg !1070
  br label %if.end12, !dbg !1071

if.end12:                                         ; preds = %if.then10, %if.end8
  br label %if.end13, !dbg !1072

if.end13:                                         ; preds = %if.end12, %if.end
  %12 = load i32, ptr %status, align 4, !dbg !1073
  store i32 %12, ptr %retval, align 4, !dbg !1073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1073

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1074
  %13 = load i32, ptr %retval, align 4, !dbg !1074
  ret i32 %13, !dbg !1074
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ev_low_get_gpe_info(i32 noundef %gpe_number, ptr noundef %gpe_block) #0 align 16 !dbg !1075 {
entry:
  %retval = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %gpe_block.addr = alloca ptr, align 8
  %gpe_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1079, metadata !DIExpression()), !dbg !1082
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1080, metadata !DIExpression()), !dbg !1083
  call void @llvm.lifetime.start.p0(i64 4, ptr %gpe_index) #13, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %gpe_index, metadata !1081, metadata !DIExpression()), !dbg !1085
  %0 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1086
  %tobool = icmp ne ptr %0, null, !dbg !1086
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1088

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %gpe_number.addr, align 4, !dbg !1089
  %2 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1090
  %block_base_number = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %2, i32 0, i32 9, !dbg !1091
  %3 = load i16, ptr %block_base_number, align 2, !dbg !1091
  %conv = zext i16 %3 to i32, !dbg !1090
  %cmp = icmp ult i32 %1, %conv, !dbg !1092
  br i1 %cmp, label %if.then, label %if.end, !dbg !1093

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !1094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1094

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %gpe_number.addr, align 4, !dbg !1096
  %5 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1097
  %block_base_number2 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %5, i32 0, i32 9, !dbg !1098
  %6 = load i16, ptr %block_base_number2, align 2, !dbg !1098
  %conv3 = zext i16 %6 to i32, !dbg !1097
  %sub = sub i32 %4, %conv3, !dbg !1099
  store i32 %sub, ptr %gpe_index, align 4, !dbg !1100
  %7 = load i32, ptr %gpe_index, align 4, !dbg !1101
  %8 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1103
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %8, i32 0, i32 8, !dbg !1104
  %9 = load i16, ptr %gpe_count, align 4, !dbg !1104
  %conv4 = zext i16 %9 to i32, !dbg !1103
  %cmp5 = icmp uge i32 %7, %conv4, !dbg !1105
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1106

if.then7:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !1107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1107

if.end8:                                          ; preds = %if.end
  %10 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1109
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %10, i32 0, i32 5, !dbg !1110
  %11 = load ptr, ptr %event_info, align 8, !dbg !1110
  %12 = load i32, ptr %gpe_index, align 4, !dbg !1111
  %idxprom = zext i32 %12 to i64, !dbg !1109
  %arrayidx = getelementptr %struct.acpi_gpe_event_info, ptr %11, i64 %idxprom, !dbg !1109
  store ptr %arrayidx, ptr %retval, align 8, !dbg !1112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1112

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gpe_index) #13, !dbg !1113
  %13 = load ptr, ptr %retval, align 8, !dbg !1113
  ret ptr %13, !dbg !1113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ev_get_gpe_event_info(ptr noundef %gpe_device, i32 noundef %gpe_number) #0 align 16 !dbg !1114 {
entry:
  %retval = alloca ptr, align 8
  %gpe_device.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %gpe_info = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1118, metadata !DIExpression()), !dbg !1123
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1119, metadata !DIExpression()), !dbg !1124
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1120, metadata !DIExpression()), !dbg !1126
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_info) #13, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %gpe_info, metadata !1121, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1122, metadata !DIExpression()), !dbg !1130
  %0 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1131
  %tobool = icmp ne ptr %0, null, !dbg !1131
  br i1 %tobool, label %if.end3, label %if.then, !dbg !1133

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !1134
  br label %for.cond, !dbg !1137

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4, !dbg !1138
  %cmp = icmp ult i32 %1, 2, !dbg !1140
  br i1 %cmp, label %for.body, label %for.end, !dbg !1141

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %gpe_number.addr, align 4, !dbg !1142
  %3 = load i32, ptr %i, align 4, !dbg !1144
  %idxprom = zext i32 %3 to i64, !dbg !1145
  %arrayidx = getelementptr [2 x ptr], ptr @acpi_gbl_gpe_fadt_blocks, i64 0, i64 %idxprom, !dbg !1145
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1145
  %call = call ptr @acpi_ev_low_get_gpe_info(i32 noundef %2, ptr noundef %4) #14, !dbg !1146
  store ptr %call, ptr %gpe_info, align 8, !dbg !1147
  %5 = load ptr, ptr %gpe_info, align 8, !dbg !1148
  %tobool1 = icmp ne ptr %5, null, !dbg !1148
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1150

if.then2:                                         ; preds = %for.body
  %6 = load ptr, ptr %gpe_info, align 8, !dbg !1151
  store ptr %6, ptr %retval, align 8, !dbg !1153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1153

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1154

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !1155
  %inc = add i32 %7, 1, !dbg !1155
  store i32 %inc, ptr %i, align 4, !dbg !1155
  br label %for.cond, !dbg !1156, !llvm.loop !1157

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !1161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1161

if.end3:                                          ; preds = %entry
  %8 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1162
  %call4 = call ptr @acpi_ns_get_attached_object(ptr noundef %8) #14, !dbg !1163
  store ptr %call4, ptr %obj_desc, align 8, !dbg !1164
  %9 = load ptr, ptr %obj_desc, align 8, !dbg !1165
  %tobool5 = icmp ne ptr %9, null, !dbg !1165
  br i1 %tobool5, label %lor.lhs.false, label %if.then7, !dbg !1167

lor.lhs.false:                                    ; preds = %if.end3
  %10 = load ptr, ptr %obj_desc, align 8, !dbg !1168
  %gpe_block = getelementptr inbounds %struct.acpi_object_device, ptr %10, i32 0, i32 7, !dbg !1169
  %11 = load ptr, ptr %gpe_block, align 8, !dbg !1169
  %tobool6 = icmp ne ptr %11, null, !dbg !1168
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1170

if.then7:                                         ; preds = %lor.lhs.false, %if.end3
  store ptr null, ptr %retval, align 8, !dbg !1171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1171

if.end8:                                          ; preds = %lor.lhs.false
  %12 = load i32, ptr %gpe_number.addr, align 4, !dbg !1173
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !1174
  %gpe_block9 = getelementptr inbounds %struct.acpi_object_device, ptr %13, i32 0, i32 7, !dbg !1175
  %14 = load ptr, ptr %gpe_block9, align 8, !dbg !1175
  %call10 = call ptr @acpi_ev_low_get_gpe_info(i32 noundef %12, ptr noundef %14) #14, !dbg !1176
  store ptr %call10, ptr %retval, align 8, !dbg !1177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1177

cleanup:                                          ; preds = %if.end8, %if.then7, %for.end, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1178
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_info) #13, !dbg !1178
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1178
  %15 = load ptr, ptr %retval, align 8, !dbg !1178
  ret ptr %15, !dbg !1178
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1179 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_gpe_detect(ptr noundef %gpe_xrupt_list) #0 align 16 !dbg !1183 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_list.addr = alloca ptr, align 8
  %gpe_block = alloca ptr, align 8
  %gpe_device = alloca ptr, align 8
  %gpe_register_info = alloca ptr, align 8
  %gpe_event_info = alloca ptr, align 8
  %gpe_number = alloca i32, align 4
  %int_status = alloca i32, align 4
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_xrupt_list, ptr %gpe_xrupt_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_list.addr, metadata !1187, metadata !DIExpression()), !dbg !1197
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_block) #13, !dbg !1198
  call void @llvm.dbg.declare(metadata ptr %gpe_block, metadata !1188, metadata !DIExpression()), !dbg !1199
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_device) #13, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %gpe_device, metadata !1189, metadata !DIExpression()), !dbg !1201
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #13, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !1190, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1204
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1191, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 4, ptr %gpe_number) #13, !dbg !1206
  call void @llvm.dbg.declare(metadata ptr %gpe_number, metadata !1192, metadata !DIExpression()), !dbg !1207
  call void @llvm.lifetime.start.p0(i64 4, ptr %int_status) #13, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %int_status, metadata !1193, metadata !DIExpression()), !dbg !1209
  store i32 0, ptr %int_status, align 4, !dbg !1209
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1210
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1194, metadata !DIExpression()), !dbg !1211
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1195, metadata !DIExpression()), !dbg !1213
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13, !dbg !1214
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1196, metadata !DIExpression()), !dbg !1215
  %0 = load ptr, ptr %gpe_xrupt_list.addr, align 8, !dbg !1216
  %tobool = icmp ne ptr %0, null, !dbg !1216
  br i1 %tobool, label %if.end, label %if.then, !dbg !1218

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %int_status, align 4, !dbg !1219
  store i32 %1, ptr %retval, align 4, !dbg !1221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1221

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1222
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %2) #14, !dbg !1223
  store i64 %call, ptr %flags, align 8, !dbg !1224
  %3 = load ptr, ptr %gpe_xrupt_list.addr, align 8, !dbg !1225
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %3, i32 0, i32 2, !dbg !1226
  %4 = load ptr, ptr %gpe_block_list_head, align 8, !dbg !1226
  store ptr %4, ptr %gpe_block, align 8, !dbg !1227
  br label %while.cond, !dbg !1228

while.cond:                                       ; preds = %for.end20, %if.end
  %5 = load ptr, ptr %gpe_block, align 8, !dbg !1229
  %tobool1 = icmp ne ptr %5, null, !dbg !1228
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1228

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %gpe_block, align 8, !dbg !1230
  %node = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %6, i32 0, i32 0, !dbg !1232
  %7 = load ptr, ptr %node, align 8, !dbg !1232
  store ptr %7, ptr %gpe_device, align 8, !dbg !1233
  store i32 0, ptr %i, align 4, !dbg !1234
  br label %for.cond, !dbg !1236

for.cond:                                         ; preds = %for.inc18, %while.body
  %8 = load i32, ptr %i, align 4, !dbg !1237
  %9 = load ptr, ptr %gpe_block, align 8, !dbg !1239
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %9, i32 0, i32 7, !dbg !1240
  %10 = load i32, ptr %register_count, align 8, !dbg !1240
  %cmp = icmp ult i32 %8, %10, !dbg !1241
  br i1 %cmp, label %for.body, label %for.end20, !dbg !1242

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %gpe_block, align 8, !dbg !1243
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %11, i32 0, i32 4, !dbg !1245
  %12 = load ptr, ptr %register_info, align 8, !dbg !1245
  %13 = load i32, ptr %i, align 4, !dbg !1246
  %idxprom = zext i32 %13 to i64, !dbg !1243
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, ptr %12, i64 %idxprom, !dbg !1243
  store ptr %arrayidx, ptr %gpe_register_info, align 8, !dbg !1247
  %14 = load ptr, ptr %gpe_register_info, align 8, !dbg !1248
  %enable_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %14, i32 0, i32 4, !dbg !1250
  %15 = load i8, ptr %enable_for_run, align 1, !dbg !1250
  %conv = zext i8 %15 to i32, !dbg !1248
  %16 = load ptr, ptr %gpe_register_info, align 8, !dbg !1251
  %enable_for_wake = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %16, i32 0, i32 3, !dbg !1252
  %17 = load i8, ptr %enable_for_wake, align 2, !dbg !1252
  %conv2 = zext i8 %17 to i32, !dbg !1251
  %or = or i32 %conv, %conv2, !dbg !1253
  %tobool3 = icmp ne i32 %or, 0, !dbg !1253
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1254

if.then4:                                         ; preds = %for.body
  br label %for.inc18, !dbg !1255

if.end5:                                          ; preds = %for.body
  store i32 0, ptr %j, align 4, !dbg !1257
  br label %for.cond6, !dbg !1259

for.cond6:                                        ; preds = %for.inc, %if.end5
  %18 = load i32, ptr %j, align 4, !dbg !1260
  %cmp7 = icmp ult i32 %18, 8, !dbg !1262
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !1263

for.body9:                                        ; preds = %for.cond6
  %19 = load ptr, ptr %gpe_block, align 8, !dbg !1264
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %19, i32 0, i32 5, !dbg !1266
  %20 = load ptr, ptr %event_info, align 8, !dbg !1266
  %21 = load i32, ptr %i, align 4, !dbg !1267
  %conv10 = zext i32 %21 to i64, !dbg !1268
  %mul = mul i64 %conv10, 8, !dbg !1269
  %22 = load i32, ptr %j, align 4, !dbg !1270
  %conv11 = zext i32 %22 to i64, !dbg !1270
  %add = add i64 %mul, %conv11, !dbg !1271
  %arrayidx12 = getelementptr %struct.acpi_gpe_event_info, ptr %20, i64 %add, !dbg !1264
  store ptr %arrayidx12, ptr %gpe_event_info, align 8, !dbg !1272
  %23 = load i32, ptr %j, align 4, !dbg !1273
  %24 = load ptr, ptr %gpe_register_info, align 8, !dbg !1274
  %base_gpe_number = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %24, i32 0, i32 2, !dbg !1275
  %25 = load i16, ptr %base_gpe_number, align 8, !dbg !1275
  %conv13 = zext i16 %25 to i32, !dbg !1274
  %add14 = add i32 %23, %conv13, !dbg !1276
  store i32 %add14, ptr %gpe_number, align 4, !dbg !1277
  %26 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1278
  %27 = load i64, ptr %flags, align 8, !dbg !1279
  call void @acpi_os_release_lock(ptr noundef %26, i64 noundef %27) #14, !dbg !1280
  %28 = load ptr, ptr %gpe_device, align 8, !dbg !1281
  %29 = load ptr, ptr %gpe_event_info, align 8, !dbg !1282
  %30 = load i32, ptr %gpe_number, align 4, !dbg !1283
  %call15 = call i32 @acpi_ev_detect_gpe(ptr noundef %28, ptr noundef %29, i32 noundef %30) #14, !dbg !1284
  %31 = load i32, ptr %int_status, align 4, !dbg !1285
  %or16 = or i32 %31, %call15, !dbg !1285
  store i32 %or16, ptr %int_status, align 4, !dbg !1285
  %32 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1286
  %call17 = call i64 @acpi_os_acquire_lock(ptr noundef %32) #14, !dbg !1287
  store i64 %call17, ptr %flags, align 8, !dbg !1288
  br label %for.inc, !dbg !1289

for.inc:                                          ; preds = %for.body9
  %33 = load i32, ptr %j, align 4, !dbg !1290
  %inc = add i32 %33, 1, !dbg !1290
  store i32 %inc, ptr %j, align 4, !dbg !1290
  br label %for.cond6, !dbg !1291, !llvm.loop !1292

for.end:                                          ; preds = %for.cond6
  br label %for.inc18, !dbg !1294

for.inc18:                                        ; preds = %for.end, %if.then4
  %34 = load i32, ptr %i, align 4, !dbg !1295
  %inc19 = add i32 %34, 1, !dbg !1295
  store i32 %inc19, ptr %i, align 4, !dbg !1295
  br label %for.cond, !dbg !1296, !llvm.loop !1297

for.end20:                                        ; preds = %for.cond
  %35 = load ptr, ptr %gpe_block, align 8, !dbg !1299
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %35, i32 0, i32 2, !dbg !1300
  %36 = load ptr, ptr %next, align 8, !dbg !1300
  store ptr %36, ptr %gpe_block, align 8, !dbg !1301
  br label %while.cond, !dbg !1228, !llvm.loop !1302

while.end:                                        ; preds = %while.cond
  %37 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1304
  %38 = load i64, ptr %flags, align 8, !dbg !1305
  call void @acpi_os_release_lock(ptr noundef %37, i64 noundef %38) #14, !dbg !1306
  %39 = load i32, ptr %int_status, align 4, !dbg !1307
  store i32 %39, ptr %retval, align 4, !dbg !1308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1308

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 4, ptr %int_status) #13, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 4, ptr %gpe_number) #13, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #13, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_device) #13, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_block) #13, !dbg !1309
  %40 = load i32, ptr %retval, align 4, !dbg !1309
  ret i32 %40, !dbg !1309
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1310 dso_local i64 @acpi_os_acquire_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1349 dso_local void @acpi_os_release_lock(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_detect_gpe(ptr noundef %gpe_device, ptr noundef %gpe_event_info, i32 noundef %gpe_number) #0 align 16 !dbg !1352 {
entry:
  %gpe_device.addr = alloca ptr, align 8
  %gpe_event_info.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %int_status = alloca i32, align 4
  %enabled_status_byte = alloca i8, align 1
  %status_reg = alloca i64, align 8
  %enable_reg = alloca i64, align 8
  %register_bit = alloca i32, align 4
  %gpe_register_info = alloca ptr, align 8
  %gpe_handler_info = alloca ptr, align 8
  %flags = alloca i64, align 8
  %status = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1356, metadata !DIExpression()), !dbg !1369
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !1357, metadata !DIExpression()), !dbg !1370
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1358, metadata !DIExpression()), !dbg !1371
  call void @llvm.lifetime.start.p0(i64 4, ptr %int_status) #13, !dbg !1372
  call void @llvm.dbg.declare(metadata ptr %int_status, metadata !1359, metadata !DIExpression()), !dbg !1373
  store i32 0, ptr %int_status, align 4, !dbg !1373
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled_status_byte) #13, !dbg !1374
  call void @llvm.dbg.declare(metadata ptr %enabled_status_byte, metadata !1360, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 8, ptr %status_reg) #13, !dbg !1376
  call void @llvm.dbg.declare(metadata ptr %status_reg, metadata !1361, metadata !DIExpression()), !dbg !1377
  call void @llvm.lifetime.start.p0(i64 8, ptr %enable_reg) #13, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %enable_reg, metadata !1362, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_bit) #13, !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %register_bit, metadata !1363, metadata !DIExpression()), !dbg !1381
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #13, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !1364, metadata !DIExpression()), !dbg !1383
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_handler_info) #13, !dbg !1384
  call void @llvm.dbg.declare(metadata ptr %gpe_handler_info, metadata !1365, metadata !DIExpression()), !dbg !1385
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1386
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1366, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1388
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1367, metadata !DIExpression()), !dbg !1389
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1390
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !1391
  store i64 %call, ptr %flags, align 8, !dbg !1392
  %1 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1393
  %tobool = icmp ne ptr %1, null, !dbg !1393
  br i1 %tobool, label %if.end4, label %if.then, !dbg !1395

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1396
  %3 = load i32, ptr %gpe_number.addr, align 4, !dbg !1398
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %2, i32 noundef %3) #14, !dbg !1399
  store ptr %call1, ptr %gpe_event_info.addr, align 8, !dbg !1400
  %4 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1401
  %tobool2 = icmp ne ptr %4, null, !dbg !1401
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !1403

if.then3:                                         ; preds = %if.then
  br label %error_exit, !dbg !1404

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !1405

if.end4:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1406
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %5, i32 0, i32 1, !dbg !1407
  %6 = load ptr, ptr %register_info, align 8, !dbg !1407
  store ptr %6, ptr %gpe_register_info, align 8, !dbg !1408
  %7 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1409
  %call5 = call i32 @acpi_hw_get_gpe_register_bit(ptr noundef %7) #14, !dbg !1410
  store i32 %call5, ptr %register_bit, align 4, !dbg !1411
  %8 = load ptr, ptr %gpe_register_info, align 8, !dbg !1412
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %8, i32 0, i32 1, !dbg !1413
  %call6 = call i32 @acpi_hw_gpe_read(ptr noundef %enable_reg, ptr noundef %enable_address) #14, !dbg !1414
  store i32 %call6, ptr %status, align 4, !dbg !1415
  %9 = load i32, ptr %status, align 4, !dbg !1416
  %tobool7 = icmp ne i32 %9, 0, !dbg !1416
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1418

if.then8:                                         ; preds = %if.end4
  br label %error_exit, !dbg !1419

if.end9:                                          ; preds = %if.end4
  %10 = load ptr, ptr %gpe_register_info, align 8, !dbg !1421
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %10, i32 0, i32 0, !dbg !1422
  %call10 = call i32 @acpi_hw_gpe_read(ptr noundef %status_reg, ptr noundef %status_address) #14, !dbg !1423
  store i32 %call10, ptr %status, align 4, !dbg !1424
  %11 = load i32, ptr %status, align 4, !dbg !1425
  %tobool11 = icmp ne i32 %11, 0, !dbg !1425
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1427

if.then12:                                        ; preds = %if.end9
  br label %error_exit, !dbg !1428

if.end13:                                         ; preds = %if.end9
  %12 = load i64, ptr %status_reg, align 8, !dbg !1430
  %13 = load i64, ptr %enable_reg, align 8, !dbg !1431
  %and = and i64 %12, %13, !dbg !1432
  %conv = trunc i64 %and to i8, !dbg !1433
  store i8 %conv, ptr %enabled_status_byte, align 1, !dbg !1434
  %14 = load i8, ptr %enabled_status_byte, align 1, !dbg !1435
  %conv14 = zext i8 %14 to i32, !dbg !1435
  %15 = load i32, ptr %register_bit, align 4, !dbg !1437
  %and15 = and i32 %conv14, %15, !dbg !1438
  %tobool16 = icmp ne i32 %and15, 0, !dbg !1438
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1439

if.then17:                                        ; preds = %if.end13
  br label %error_exit, !dbg !1440

if.end18:                                         ; preds = %if.end13
  %16 = load i32, ptr @acpi_gpe_count, align 4, !dbg !1442
  %inc = add i32 %16, 1, !dbg !1442
  store i32 %inc, ptr @acpi_gpe_count, align 4, !dbg !1442
  %17 = load ptr, ptr @acpi_gbl_global_event_handler, align 8, !dbg !1443
  %tobool19 = icmp ne ptr %17, null, !dbg !1443
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1445

if.then20:                                        ; preds = %if.end18
  %18 = load ptr, ptr @acpi_gbl_global_event_handler, align 8, !dbg !1446
  %19 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1448
  %20 = load i32, ptr %gpe_number.addr, align 4, !dbg !1449
  %21 = load ptr, ptr @acpi_gbl_global_event_handler_context, align 8, !dbg !1450
  call void %18(i32 noundef 0, ptr noundef %19, i32 noundef %20, ptr noundef %21) #14, !dbg !1446
  br label %if.end21, !dbg !1451

if.end21:                                         ; preds = %if.then20, %if.end18
  %22 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1452
  %flags22 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %22, i32 0, i32 2, !dbg !1452
  %23 = load i8, ptr %flags22, align 8, !dbg !1452
  %conv23 = zext i8 %23 to i32, !dbg !1452
  %and24 = and i32 %conv23, 7, !dbg !1452
  %conv25 = trunc i32 %and24 to i8, !dbg !1452
  %conv26 = zext i8 %conv25 to i32, !dbg !1452
  %cmp = icmp eq i32 %conv26, 4, !dbg !1454
  br i1 %cmp, label %if.then28, label %if.else, !dbg !1455

if.then28:                                        ; preds = %if.end21
  %24 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1456
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %24, i32 0, i32 0, !dbg !1458
  %25 = load ptr, ptr %dispatch, align 8, !dbg !1459
  store ptr %25, ptr %gpe_handler_info, align 8, !dbg !1460
  %26 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1461
  %27 = load i64, ptr %flags, align 8, !dbg !1462
  call void @acpi_os_release_lock(ptr noundef %26, i64 noundef %27) #14, !dbg !1463
  %28 = load ptr, ptr %gpe_handler_info, align 8, !dbg !1464
  %address = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %28, i32 0, i32 0, !dbg !1465
  %29 = load ptr, ptr %address, align 8, !dbg !1465
  %30 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1466
  %31 = load i32, ptr %gpe_number.addr, align 4, !dbg !1467
  %32 = load ptr, ptr %gpe_handler_info, align 8, !dbg !1468
  %context = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %32, i32 0, i32 1, !dbg !1469
  %33 = load ptr, ptr %context, align 8, !dbg !1469
  %call29 = call i32 %29(ptr noundef %30, i32 noundef %31, ptr noundef %33) #14, !dbg !1464
  %34 = load i32, ptr %int_status, align 4, !dbg !1470
  %or = or i32 %34, %call29, !dbg !1470
  store i32 %or, ptr %int_status, align 4, !dbg !1470
  %35 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1471
  %call30 = call i64 @acpi_os_acquire_lock(ptr noundef %35) #14, !dbg !1472
  store i64 %call30, ptr %flags, align 8, !dbg !1473
  br label %if.end33, !dbg !1474

if.else:                                          ; preds = %if.end21
  %36 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1475
  %37 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1477
  %38 = load i32, ptr %gpe_number.addr, align 4, !dbg !1478
  %call31 = call i32 @acpi_ev_gpe_dispatch(ptr noundef %36, ptr noundef %37, i32 noundef %38) #14, !dbg !1479
  %39 = load i32, ptr %int_status, align 4, !dbg !1480
  %or32 = or i32 %39, %call31, !dbg !1480
  store i32 %or32, ptr %int_status, align 4, !dbg !1480
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then28
  br label %error_exit, !dbg !1481

error_exit:                                       ; preds = %if.end33, %if.then17, %if.then12, %if.then8, %if.then3
  call void @llvm.dbg.label(metadata !1368), !dbg !1482
  %40 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1483
  %41 = load i64, ptr %flags, align 8, !dbg !1484
  call void @acpi_os_release_lock(ptr noundef %40, i64 noundef %41) #14, !dbg !1485
  %42 = load i32, ptr %int_status, align 4, !dbg !1486
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1487
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1487
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_handler_info) #13, !dbg !1487
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #13, !dbg !1487
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_bit) #13, !dbg !1487
  call void @llvm.lifetime.end.p0(i64 8, ptr %enable_reg) #13, !dbg !1487
  call void @llvm.lifetime.end.p0(i64 8, ptr %status_reg) #13, !dbg !1487
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled_status_byte) #13, !dbg !1487
  call void @llvm.lifetime.end.p0(i64 4, ptr %int_status) #13, !dbg !1487
  ret i32 %42, !dbg !1488
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_finish_gpe(ptr noundef %gpe_event_info) #0 align 16 !dbg !1489 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !1491, metadata !DIExpression()), !dbg !1493
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1494
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1492, metadata !DIExpression()), !dbg !1495
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1496
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %0, i32 0, i32 2, !dbg !1498
  %1 = load i8, ptr %flags, align 8, !dbg !1498
  %conv = zext i8 %1 to i32, !dbg !1496
  %and = and i32 %conv, 8, !dbg !1499
  %cmp = icmp eq i32 %and, 8, !dbg !1500
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1501

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1502
  %call = call i32 @acpi_hw_clear_gpe(ptr noundef %2) #14, !dbg !1504
  store i32 %call, ptr %status, align 4, !dbg !1505
  %3 = load i32, ptr %status, align 4, !dbg !1506
  %tobool = icmp ne i32 %3, 0, !dbg !1506
  br i1 %tobool, label %if.then2, label %if.end, !dbg !1508

if.then2:                                         ; preds = %if.then
  %4 = load i32, ptr %status, align 4, !dbg !1509
  store i32 %4, ptr %retval, align 4, !dbg !1511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1511

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !1512

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1513
  %call4 = call i32 @acpi_hw_low_set_gpe(ptr noundef %5, i32 noundef 2) #14, !dbg !1514
  %6 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1515
  %disable_for_dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %6, i32 0, i32 5, !dbg !1516
  store i8 0, ptr %disable_for_dispatch, align 1, !dbg !1517
  store i32 0, ptr %retval, align 4, !dbg !1518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1518

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1519
  %7 = load i32, ptr %retval, align 4, !dbg !1519
  ret i32 %7, !dbg !1519
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1520 dso_local i32 @acpi_hw_gpe_read(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_gpe_dispatch(ptr noundef %gpe_device, ptr noundef %gpe_event_info, i32 noundef %gpe_number) #0 align 16 !dbg !1524 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca ptr, align 8
  %gpe_event_info.addr = alloca ptr, align 8
  %gpe_number.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %return_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1526, metadata !DIExpression()), !dbg !1531
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !1527, metadata !DIExpression()), !dbg !1532
  store i32 %gpe_number, ptr %gpe_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_number.addr, metadata !1528, metadata !DIExpression()), !dbg !1533
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1534
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1529, metadata !DIExpression()), !dbg !1535
  call void @llvm.lifetime.start.p0(i64 4, ptr %return_value) #13, !dbg !1536
  call void @llvm.dbg.declare(metadata ptr %return_value, metadata !1530, metadata !DIExpression()), !dbg !1537
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1538
  %call = call i32 @acpi_hw_low_set_gpe(ptr noundef %0, i32 noundef 1) #14, !dbg !1539
  store i32 %call, ptr %status, align 4, !dbg !1540
  %1 = load i32, ptr %status, align 4, !dbg !1541
  %tobool = icmp ne i32 %1, 0, !dbg !1541
  br i1 %tobool, label %if.then, label %if.end, !dbg !1543

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1544
  %3 = load i32, ptr %gpe_number.addr, align 4, !dbg !1544
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 767, i32 noundef %2, ptr noundef @.str, i32 noundef %3) #14, !dbg !1544
  store i32 0, ptr %retval, align 4, !dbg !1546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1546

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1547
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %4, i32 0, i32 2, !dbg !1549
  %5 = load i8, ptr %flags, align 8, !dbg !1549
  %conv = zext i8 %5 to i32, !dbg !1547
  %and = and i32 %conv, 8, !dbg !1550
  %cmp = icmp eq i32 %and, 0, !dbg !1551
  br i1 %cmp, label %if.then2, label %if.end8, !dbg !1552

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1553
  %call3 = call i32 @acpi_hw_clear_gpe(ptr noundef %6) #14, !dbg !1555
  store i32 %call3, ptr %status, align 4, !dbg !1556
  %7 = load i32, ptr %status, align 4, !dbg !1557
  %tobool4 = icmp ne i32 %7, 0, !dbg !1557
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !1559

if.then5:                                         ; preds = %if.then2
  %8 = load i32, ptr %status, align 4, !dbg !1560
  %9 = load i32, ptr %gpe_number.addr, align 4, !dbg !1560
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 780, i32 noundef %8, ptr noundef @.str.1, i32 noundef %9) #14, !dbg !1560
  %10 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1562
  %call6 = call i32 @acpi_hw_low_set_gpe(ptr noundef %10, i32 noundef 2) #14, !dbg !1563
  store i32 0, ptr %retval, align 4, !dbg !1564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1564

if.end7:                                          ; preds = %if.then2
  br label %if.end8, !dbg !1565

if.end8:                                          ; preds = %if.end7, %if.end
  %11 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1566
  %disable_for_dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %11, i32 0, i32 5, !dbg !1567
  store i8 1, ptr %disable_for_dispatch, align 1, !dbg !1568
  %12 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1569
  %flags9 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %12, i32 0, i32 2, !dbg !1569
  %13 = load i8, ptr %flags9, align 8, !dbg !1569
  %conv10 = zext i8 %13 to i32, !dbg !1569
  %and11 = and i32 %conv10, 7, !dbg !1569
  %conv12 = trunc i32 %and11 to i8, !dbg !1569
  %conv13 = zext i8 %conv12 to i32, !dbg !1569
  switch i32 %conv13, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb21
    i32 3, label %sw.bb21
  ], !dbg !1570

sw.bb:                                            ; preds = %if.end8
  %14 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1571
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %14, i32 0, i32 0, !dbg !1573
  %15 = load ptr, ptr %dispatch, align 8, !dbg !1574
  %address = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %15, i32 0, i32 0, !dbg !1575
  %16 = load ptr, ptr %address, align 8, !dbg !1575
  %17 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1576
  %18 = load i32, ptr %gpe_number.addr, align 4, !dbg !1577
  %19 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1578
  %dispatch14 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %19, i32 0, i32 0, !dbg !1579
  %20 = load ptr, ptr %dispatch14, align 8, !dbg !1580
  %context = getelementptr inbounds %struct.acpi_gpe_handler_info, ptr %20, i32 0, i32 1, !dbg !1581
  %21 = load ptr, ptr %context, align 8, !dbg !1581
  %call15 = call i32 %16(ptr noundef %17, i32 noundef %18, ptr noundef %21) #14, !dbg !1571
  store i32 %call15, ptr %return_value, align 4, !dbg !1582
  %22 = load i32, ptr %return_value, align 4, !dbg !1583
  %and16 = and i32 %22, 128, !dbg !1585
  %tobool17 = icmp ne i32 %and16, 0, !dbg !1585
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !1586

if.then18:                                        ; preds = %sw.bb
  %23 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1587
  %call19 = call i32 @acpi_ev_finish_gpe(ptr noundef %23) #14, !dbg !1589
  br label %if.end20, !dbg !1590

if.end20:                                         ; preds = %if.then18, %sw.bb
  br label %sw.epilog, !dbg !1591

sw.bb21:                                          ; preds = %if.end8, %if.end8
  %24 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1592
  %call22 = call i32 @acpi_os_execute(i32 noundef 2, ptr noundef @acpi_ev_asynch_execute_gpe_method, ptr noundef %24) #14, !dbg !1593
  store i32 %call22, ptr %status, align 4, !dbg !1594
  %25 = load i32, ptr %status, align 4, !dbg !1595
  %tobool23 = icmp ne i32 %25, 0, !dbg !1595
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !1597

if.then24:                                        ; preds = %sw.bb21
  %26 = load i32, ptr %status, align 4, !dbg !1598
  %27 = load i32, ptr %gpe_number.addr, align 4, !dbg !1598
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 827, i32 noundef %26, ptr noundef @.str.2, i32 noundef %27) #14, !dbg !1598
  br label %if.end25, !dbg !1600

if.end25:                                         ; preds = %if.then24, %sw.bb21
  br label %sw.epilog, !dbg !1601

sw.default:                                       ; preds = %if.end8
  %28 = load i32, ptr %gpe_number.addr, align 4, !dbg !1602
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 839, ptr noundef @.str.3, i32 noundef %28) #14, !dbg !1602
  br label %sw.epilog, !dbg !1603

sw.epilog:                                        ; preds = %sw.default, %if.end25, %if.end20
  store i32 1, ptr %retval, align 4, !dbg !1604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1604

cleanup:                                          ; preds = %sw.epilog, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %return_value) #13, !dbg !1605
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1605
  %29 = load i32, ptr %retval, align 4, !dbg !1605
  ret i32 %29, !dbg !1605
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1606 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1611 dso_local i32 @acpi_os_execute(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ev_asynch_execute_gpe_method(ptr noundef %context) #0 align 16 !dbg !1619 {
entry:
  %context.addr = alloca ptr, align 8
  %gpe_event_info = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca ptr, align 8
  %notify = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1621, metadata !DIExpression()), !dbg !1691
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1692
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1622, metadata !DIExpression()), !dbg !1693
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1694
  store ptr %0, ptr %gpe_event_info, align 8, !dbg !1693
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1623, metadata !DIExpression()), !dbg !1696
  store i32 0, ptr %status, align 4, !dbg !1696
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !1697
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1624, metadata !DIExpression()), !dbg !1698
  call void @llvm.lifetime.start.p0(i64 8, ptr %notify) #13, !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %notify, metadata !1689, metadata !DIExpression()), !dbg !1700
  %1 = load ptr, ptr %gpe_event_info, align 8, !dbg !1701
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %1, i32 0, i32 2, !dbg !1701
  %2 = load i8, ptr %flags, align 8, !dbg !1701
  %conv = zext i8 %2 to i32, !dbg !1701
  %and = and i32 %conv, 7, !dbg !1701
  %conv1 = trunc i32 %and to i8, !dbg !1701
  %conv2 = zext i8 %conv1 to i32, !dbg !1701
  switch i32 %conv2, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !1702

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1703
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %3, i32 0, i32 0, !dbg !1705
  %4 = load ptr, ptr %dispatch, align 8, !dbg !1706
  store ptr %4, ptr %notify, align 8, !dbg !1707
  br label %while.cond, !dbg !1708

while.cond:                                       ; preds = %while.body, %sw.bb
  %5 = load i32, ptr %status, align 4, !dbg !1709
  %tobool = icmp ne i32 %5, 0, !dbg !1709
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !1710

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %notify, align 8, !dbg !1711
  %tobool3 = icmp ne ptr %6, null, !dbg !1710
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ], !dbg !1712
  br i1 %7, label %while.body, label %while.end, !dbg !1708

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %notify, align 8, !dbg !1713
  %device_node = getelementptr inbounds %struct.acpi_gpe_notify_info, ptr %8, i32 0, i32 0, !dbg !1715
  %9 = load ptr, ptr %device_node, align 8, !dbg !1715
  %call = call i32 @acpi_ev_queue_notify_request(ptr noundef %9, i32 noundef 2) #14, !dbg !1716
  store i32 %call, ptr %status, align 4, !dbg !1717
  %10 = load ptr, ptr %notify, align 8, !dbg !1718
  %next = getelementptr inbounds %struct.acpi_gpe_notify_info, ptr %10, i32 0, i32 1, !dbg !1719
  %11 = load ptr, ptr %next, align 8, !dbg !1719
  store ptr %11, ptr %notify, align 8, !dbg !1720
  br label %while.cond, !dbg !1708, !llvm.loop !1721

while.end:                                        ; preds = %land.end
  br label %sw.epilog, !dbg !1723

sw.bb4:                                           ; preds = %entry
  %call5 = call ptr @acpi_os_allocate_zeroed(i64 noundef 88) #14, !dbg !1724
  store ptr %call5, ptr %info, align 8, !dbg !1725
  %12 = load ptr, ptr %info, align 8, !dbg !1726
  %tobool6 = icmp ne ptr %12, null, !dbg !1726
  br i1 %tobool6, label %if.else, label %if.then, !dbg !1728

if.then:                                          ; preds = %sw.bb4
  store i32 4, ptr %status, align 4, !dbg !1729
  br label %if.end, !dbg !1731

if.else:                                          ; preds = %sw.bb4
  %13 = load ptr, ptr %gpe_event_info, align 8, !dbg !1732
  %dispatch7 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %13, i32 0, i32 0, !dbg !1734
  %14 = load ptr, ptr %dispatch7, align 8, !dbg !1735
  %15 = load ptr, ptr %info, align 8, !dbg !1736
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %15, i32 0, i32 0, !dbg !1737
  store ptr %14, ptr %prefix_node, align 8, !dbg !1738
  %16 = load ptr, ptr %info, align 8, !dbg !1739
  %flags8 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %16, i32 0, i32 15, !dbg !1740
  store i8 1, ptr %flags8, align 2, !dbg !1741
  %17 = load ptr, ptr %info, align 8, !dbg !1742
  %call9 = call i32 @acpi_ns_evaluate(ptr noundef %17) #14, !dbg !1743
  store i32 %call9, ptr %status, align 4, !dbg !1744
  %18 = load ptr, ptr %info, align 8, !dbg !1745
  call void @acpi_os_free(ptr noundef %18) #14, !dbg !1745
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, ptr %status, align 4, !dbg !1746
  %tobool10 = icmp ne i32 %19, 0, !dbg !1746
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !1748

if.then11:                                        ; preds = %if.end
  %20 = load i32, ptr %status, align 4, !dbg !1749
  %21 = load ptr, ptr %gpe_event_info, align 8, !dbg !1749
  %dispatch12 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %21, i32 0, i32 0, !dbg !1749
  %22 = load ptr, ptr %dispatch12, align 8, !dbg !1749
  %call13 = call ptr @acpi_ut_get_node_name(ptr noundef %22) #14, !dbg !1749
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 511, i32 noundef %20, ptr noundef @.str.4, ptr noundef %call13) #14, !dbg !1749
  br label %if.end14, !dbg !1751

if.end14:                                         ; preds = %if.then11, %if.end
  br label %sw.epilog, !dbg !1752

sw.default:                                       ; preds = %entry
  br label %error_exit, !dbg !1753

sw.epilog:                                        ; preds = %if.end14, %while.end
  %23 = load ptr, ptr %gpe_event_info, align 8, !dbg !1754
  %call15 = call i32 @acpi_os_execute(i32 noundef 1, ptr noundef @acpi_ev_asynch_enable_gpe, ptr noundef %23) #14, !dbg !1755
  store i32 %call15, ptr %status, align 4, !dbg !1756
  %24 = load i32, ptr %status, align 4, !dbg !1757
  %tobool16 = icmp ne i32 %24, 0, !dbg !1757
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1759

if.then17:                                        ; preds = %sw.epilog
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1760

if.end18:                                         ; preds = %sw.epilog
  br label %error_exit, !dbg !1757

error_exit:                                       ; preds = %if.end18, %sw.default
  call void @llvm.dbg.label(metadata !1690), !dbg !1762
  %25 = load ptr, ptr %gpe_event_info, align 8, !dbg !1763
  call void @acpi_ev_asynch_enable_gpe(ptr noundef %25) #14, !dbg !1764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1765

cleanup:                                          ; preds = %error_exit, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %notify) #13, !dbg !1766
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !1766
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1766
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1766
  ret void, !dbg !1766
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1767 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1770 dso_local i32 @acpi_ev_queue_notify_request(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1774 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1779, metadata !DIExpression()), !dbg !1790
  %0 = load i64, ptr %size.addr, align 8, !dbg !1791
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1792
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1780, metadata !DIExpression()), !dbg !1792
  br label %do.body, !dbg !1792

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1793
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1782, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1793
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1785, metadata !DIExpression()), !dbg !1793
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1793
  %conv = zext i1 %cmp to i32, !dbg !1793
  store i32 1, ptr %tmp, align 4, !dbg !1793
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1794
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1794
  %1 = load i32, ptr %tmp, align 4, !dbg !1793
  %call = call i64 @arch_local_save_flags() #14, !dbg !1794
  store i64 %call, ptr %_flags, align 8, !dbg !1794
  br label %do.cond, !dbg !1794

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1794

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1795
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1786, metadata !DIExpression()), !dbg !1795
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1795
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1789, metadata !DIExpression()), !dbg !1795
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1795
  %conv6 = zext i1 %cmp5 to i32, !dbg !1795
  store i32 1, ptr %tmp7, align 4, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1796
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1796
  %2 = load i32, ptr %tmp7, align 4, !dbg !1795
  %3 = load i64, ptr %_flags, align 8, !dbg !1796
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1796
  store i32 %call9, ptr %tmp8, align 4, !dbg !1796
  %4 = load i32, ptr %tmp8, align 4, !dbg !1796
  store i32 %4, ptr %tmp1, align 4, !dbg !1794
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1797
  %5 = load i32, ptr %tmp1, align 4, !dbg !1792
  %tobool = icmp ne i32 %5, 0, !dbg !1797
  %6 = zext i1 %tobool to i64, !dbg !1797
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1797
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1798
  ret ptr %call10, !dbg !1799
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1800 dso_local i32 @acpi_ns_evaluate(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1803 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1805, metadata !DIExpression()), !dbg !1806
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1807
  call void @kfree(ptr noundef %0) #14, !dbg !1808
  ret void, !dbg !1809
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1810 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ev_asynch_enable_gpe(ptr noundef %context) #0 align 16 !dbg !1814 {
entry:
  %context.addr = alloca ptr, align 8
  %gpe_event_info = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1816, metadata !DIExpression()), !dbg !1819
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1820
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1817, metadata !DIExpression()), !dbg !1821
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1822
  store ptr %0, ptr %gpe_event_info, align 8, !dbg !1821
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1823
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1818, metadata !DIExpression()), !dbg !1824
  %1 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1825
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %1) #14, !dbg !1826
  store i64 %call, ptr %flags, align 8, !dbg !1827
  %2 = load ptr, ptr %gpe_event_info, align 8, !dbg !1828
  %call1 = call i32 @acpi_ev_finish_gpe(ptr noundef %2) #14, !dbg !1829
  %3 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1830
  %4 = load i64, ptr %flags, align 8, !dbg !1831
  call void @acpi_os_release_lock(ptr noundef %3, i64 noundef %4) #14, !dbg !1832
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1833
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1833
  ret void, !dbg !1833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1834 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1842, metadata !DIExpression()), !dbg !1844
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1843, metadata !DIExpression()), !dbg !1845
  %0 = load i64, ptr %size.addr, align 8, !dbg !1846
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1847
  %or = or i32 %1, 256, !dbg !1848
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1849
  ret ptr %call, !dbg !1850
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1851 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1855
  ret i64 %call, !dbg !1856
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1857 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1861, metadata !DIExpression()), !dbg !1862
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1863
  %and = and i64 %0, 512, !dbg !1864
  %tobool = icmp ne i64 %and, 0, !dbg !1865
  %lnot = xor i1 %tobool, true, !dbg !1865
  %lnot.ext = zext i1 %lnot to i32, !dbg !1865
  ret i32 %lnot.ext, !dbg !1866
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1867 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1869, metadata !DIExpression()), !dbg !1874
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1870, metadata !DIExpression()), !dbg !1875
  %0 = load i64, ptr %size.addr, align 8, !dbg !1876
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1877
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1878

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1879
  %tobool = icmp ne i64 %2, 0, !dbg !1879
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1880

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1881
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1871, metadata !DIExpression()), !dbg !1882
  %3 = load i64, ptr %size.addr, align 8, !dbg !1883
  %cmp = icmp ugt i64 %3, 8192, !dbg !1885
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1886

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1887
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1888
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1889
  store ptr %call, ptr %retval, align 8, !dbg !1890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1890

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1891
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1891
  store i32 %call2, ptr %index, align 4, !dbg !1892
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1893
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1894
  %9 = ptrtoint ptr %8 to i64, !dbg !1894
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1895
  %idxprom = zext i32 %call3 to i64, !dbg !1896
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1896
  %10 = load i32, ptr %index, align 4, !dbg !1897
  %idxprom4 = zext i32 %10 to i64, !dbg !1896
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1896
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1896
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1898
  %13 = load i64, ptr %size.addr, align 8, !dbg !1899
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1900
  store ptr %call6, ptr %retval, align 8, !dbg !1901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1901

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1902
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1903
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1904
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1905
  store ptr %call8, ptr %retval, align 8, !dbg !1906
  br label %return, !dbg !1906

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1907
  ret ptr %16, !dbg !1907
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1908 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1909 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1915, metadata !DIExpression()), !dbg !1917
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1916, metadata !DIExpression()), !dbg !1918
  %0 = load i64, ptr %size.addr, align 8, !dbg !1919
  %tobool = icmp ne i64 %0, 0, !dbg !1919
  br i1 %tobool, label %if.end, label %if.then, !dbg !1921

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1922
  br label %return, !dbg !1922

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1923
  %cmp = icmp ule i64 %1, 8, !dbg !1925
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1926

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1927
  br label %return, !dbg !1927

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1928
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1930
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1931

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1932
  %cmp4 = icmp ule i64 %3, 96, !dbg !1933
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1934

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1935
  br label %return, !dbg !1935

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1936
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1938
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1939

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1940
  %cmp9 = icmp ule i64 %5, 192, !dbg !1941
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1942

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1943
  br label %return, !dbg !1943

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1944
  %cmp12 = icmp ule i64 %6, 8, !dbg !1946
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1947

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1948
  br label %return, !dbg !1948

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1949
  %cmp15 = icmp ule i64 %7, 16, !dbg !1951
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1952

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1953
  br label %return, !dbg !1953

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1954
  %cmp18 = icmp ule i64 %8, 32, !dbg !1956
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1957

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1958
  br label %return, !dbg !1958

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1959
  %cmp21 = icmp ule i64 %9, 64, !dbg !1961
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1962

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1963
  br label %return, !dbg !1963

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1964
  %cmp24 = icmp ule i64 %10, 128, !dbg !1966
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1967

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1968
  br label %return, !dbg !1968

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1969
  %cmp27 = icmp ule i64 %11, 256, !dbg !1971
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1972

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1973
  br label %return, !dbg !1973

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1974
  %cmp30 = icmp ule i64 %12, 512, !dbg !1976
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1977

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1978
  br label %return, !dbg !1978

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1979
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1981
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1982

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1983
  br label %return, !dbg !1983

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1984
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1986
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1987

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1988
  br label %return, !dbg !1988

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1989
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1991
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1992

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1993
  br label %return, !dbg !1993

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1994
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1996
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1997

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1998
  br label %return, !dbg !1998

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1999
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2001
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2002

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2003
  br label %return, !dbg !2003

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2004
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2006
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2007

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2008
  br label %return, !dbg !2008

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2009
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2011
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2012

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2013
  br label %return, !dbg !2013

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2014
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2016
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2017

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2018
  br label %return, !dbg !2018

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2019
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2021
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2022

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2023
  br label %return, !dbg !2023

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2024
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2026
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2027

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2028
  br label %return, !dbg !2028

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2029
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2031
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2032

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2033
  br label %return, !dbg !2033

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2034
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2036
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2037

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2038
  br label %return, !dbg !2038

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2039, !range !2041, !noundef !2042
  %tobool69 = trunc i8 %25 to i1, !dbg !2039
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2043

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2044

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !2045, !srcloc !2048
  unreachable, !dbg !2045

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2049

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2050

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2051

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2053

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2051

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #13, !dbg !2055, !srcloc !2057
  br label %do.end75, !dbg !2055

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2051

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2058
  br label %return, !dbg !2058

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2059
  ret i32 %26, !dbg !2059
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2060 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !2066 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2070, metadata !DIExpression()), !dbg !2072
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2071, metadata !DIExpression()), !dbg !2073
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2074
  %and = and i32 %0, 17, !dbg !2074
  %cmp = icmp eq i32 %and, 0, !dbg !2074
  %lnot = xor i1 %cmp, true, !dbg !2074
  %lnot1 = xor i1 %lnot, true, !dbg !2074
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2074
  %conv = sext i32 %lnot.ext to i64, !dbg !2074
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2074
  %tobool = icmp ne i64 %expval, 0, !dbg !2074
  br i1 %tobool, label %if.then, label %if.end, !dbg !2076

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2077
  br label %return, !dbg !2077

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2078
  %and2 = and i32 %1, 1, !dbg !2080
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2080
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2081

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2082
  br label %return, !dbg !2082

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2083
  br label %return, !dbg !2083

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2085
  ret i32 %2, !dbg !2085
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2086 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2087 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !2090 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2092, metadata !DIExpression()), !dbg !2094
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !2095, !srcloc !2096
  %0 = load i64, ptr %flags, align 8, !dbg !2097
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !2098
  ret i64 %0, !dbg !2099
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2100 dso_local void @kfree(ptr noundef) #3

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
!llvm.module.flags = !{!847, !848, !849, !850, !851, !852, !853, !854}
!llvm.ident = !{!855}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !843, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evgpe.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evgpe\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evgpe.ll drivers/acpi/acpica/evgpe.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !812, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evgpe.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42bbbd1ff0994d5560a0b63ab733f2d1")
!4 = !{!5, !16, !21}
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
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !22, line: 364, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!23 = !{!24, !25, !26, !27, !28, !29, !30}
!24 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!25 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!26 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!28 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!29 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!30 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!31 = !{!32, !38, !41, !808, !809, !811}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !33, line: 421, baseType: !34)
!33 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !35, line: 21, baseType: !36)
!35 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !37, line: 27, baseType: !7)
!37 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !35, line: 17, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !37, line: 21, baseType: !40)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !43, line: 133, size: 384, elements: !44)
!43 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!44 = !{!45, !795, !796, !797, !798, !804, !805, !806, !807}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !42, file: !43, line: 134, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !48, line: 369, size: 576, elements: !49)
!48 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!49 = !{!50, !61, !77, !89, !103, !117, !127, !444, !461, !477, !490, !568, !580, !594, !604, !622, !644, !663, !682, !701, !714, !741, !758, !771, !785, !794}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !47, file: !48, line: 370, baseType: !51, size: 128)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !48, line: 73, size: 128, elements: !52)
!52 = !{!53, !54, !55, !56, !60}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !51, file: !48, line: 74, baseType: !46, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !48, line: 74, baseType: !38, size: 8, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !48, line: 74, baseType: !38, size: 8, offset: 72)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !51, file: !48, line: 74, baseType: !57, size: 16, offset: 80)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !35, line: 19, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !37, line: 24, baseType: !59)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !48, line: 74, baseType: !38, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !47, file: !48, line: 371, baseType: !62, size: 192)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !48, line: 76, size: 192, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !73}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !62, file: !48, line: 77, baseType: !46, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !62, file: !48, line: 77, baseType: !38, size: 8, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !48, line: 77, baseType: !38, size: 8, offset: 72)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !62, file: !48, line: 77, baseType: !57, size: 16, offset: 80)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !48, line: 77, baseType: !38, size: 8, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !62, file: !48, line: 77, baseType: !70, size: 24, offset: 104)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !62, file: !48, line: 78, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !35, line: 23, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !37, line: 31, baseType: !76)
!76 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !47, file: !48, line: 372, baseType: !78, size: 256)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !48, line: 93, size: 256, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !88}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !78, file: !48, line: 94, baseType: !46, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !78, file: !48, line: 94, baseType: !38, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !48, line: 94, baseType: !38, size: 8, offset: 72)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !78, file: !48, line: 94, baseType: !57, size: 16, offset: 80)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !48, line: 94, baseType: !38, size: 8, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !78, file: !48, line: 94, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !78, file: !48, line: 94, baseType: !34, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !47, file: !48, line: 373, baseType: !90, size: 384)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !48, line: 97, size: 384, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !99, !100, !101, !102}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !90, file: !48, line: 98, baseType: !46, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !48, line: 98, baseType: !38, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !48, line: 98, baseType: !38, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !90, file: !48, line: 98, baseType: !57, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !48, line: 98, baseType: !38, size: 8, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !90, file: !48, line: 98, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !90, file: !48, line: 98, baseType: !34, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !90, file: !48, line: 99, baseType: !34, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !90, file: !48, line: 100, baseType: !98, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !90, file: !48, line: 101, baseType: !41, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !47, file: !48, line: 374, baseType: !104, size: 384)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !48, line: 104, size: 384, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !114, !115, !116}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !104, file: !48, line: 105, baseType: !46, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !104, file: !48, line: 105, baseType: !38, size: 8, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !48, line: 105, baseType: !38, size: 8, offset: 72)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !104, file: !48, line: 105, baseType: !57, size: 16, offset: 80)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !48, line: 105, baseType: !38, size: 8, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !48, line: 105, baseType: !41, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !104, file: !48, line: 106, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !104, file: !48, line: 107, baseType: !98, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !104, file: !48, line: 108, baseType: !34, size: 32, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !104, file: !48, line: 109, baseType: !34, size: 32, offset: 352)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !47, file: !48, line: 375, baseType: !118, size: 192)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !48, line: 118, size: 192, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !48, line: 119, baseType: !46, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !48, line: 119, baseType: !38, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !48, line: 119, baseType: !38, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !48, line: 119, baseType: !57, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !48, line: 119, baseType: !38, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !118, file: !48, line: 119, baseType: !126, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !47, file: !48, line: 376, baseType: !128, size: 448)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !48, line: 144, size: 448, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !441, !442, !443}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !128, file: !48, line: 145, baseType: !46, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !128, file: !48, line: 145, baseType: !38, size: 8, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !48, line: 145, baseType: !38, size: 8, offset: 72)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !128, file: !48, line: 145, baseType: !57, size: 16, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !128, file: !48, line: 145, baseType: !38, size: 8, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !128, file: !48, line: 145, baseType: !38, size: 8, offset: 104)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !128, file: !48, line: 146, baseType: !38, size: 8, offset: 112)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !128, file: !48, line: 147, baseType: !38, size: 8, offset: 120)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !128, file: !48, line: 148, baseType: !46, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !128, file: !48, line: 149, baseType: !46, size: 64, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !128, file: !48, line: 150, baseType: !98, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !128, file: !48, line: 154, baseType: !142, size: 64, offset: 320)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !48, line: 151, size: 64, elements: !143)
!143 = !{!144, !440}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !142, file: !48, line: 152, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !43, line: 248, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!32, !149}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !151, line: 37, size: 9024, elements: !152)
!151 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !386, !387, !388, !389, !390, !394, !396, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !423, !424, !425, !426, !427, !428, !429, !430, !432, !438}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !151, line: 38, baseType: !149, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !151, line: 39, baseType: !38, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !150, file: !151, line: 40, baseType: !38, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !150, file: !151, line: 41, baseType: !57, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !150, file: !151, line: 42, baseType: !38, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !150, file: !151, line: 43, baseType: !38, size: 8, offset: 104)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !150, file: !151, line: 44, baseType: !38, size: 8, offset: 112)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !150, file: !151, line: 45, baseType: !161, size: 16, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !33, line: 445, baseType: !57)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !150, file: !151, line: 46, baseType: !38, size: 8, offset: 144)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !150, file: !151, line: 47, baseType: !38, size: 8, offset: 152)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !150, file: !151, line: 48, baseType: !38, size: 8, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !150, file: !151, line: 49, baseType: !38, size: 8, offset: 168)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !150, file: !151, line: 50, baseType: !38, size: 8, offset: 176)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !150, file: !151, line: 51, baseType: !38, size: 8, offset: 184)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !150, file: !151, line: 52, baseType: !38, size: 8, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !150, file: !151, line: 53, baseType: !38, size: 8, offset: 200)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !150, file: !151, line: 54, baseType: !98, size: 64, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !150, file: !151, line: 55, baseType: !34, size: 32, offset: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !150, file: !151, line: 56, baseType: !34, size: 32, offset: 352)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !150, file: !151, line: 57, baseType: !34, size: 32, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !150, file: !151, line: 58, baseType: !34, size: 32, offset: 416)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !150, file: !151, line: 60, baseType: !176, size: 640, offset: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !43, line: 909, size: 640, elements: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !267, !268, !384, !385}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !176, file: !43, line: 910, baseType: !98, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !176, file: !43, line: 911, baseType: !98, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !176, file: !43, line: 912, baseType: !98, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !176, file: !43, line: 913, baseType: !98, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !176, file: !43, line: 914, baseType: !98, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !176, file: !43, line: 915, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !43, line: 891, size: 1600, elements: !186)
!186 = !{!187, !207, !223}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !185, file: !43, line: 892, baseType: !188, size: 448)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !43, line: 844, size: 448, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !206}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !43, line: 845, baseType: !184, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !43, line: 845, baseType: !38, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !43, line: 845, baseType: !38, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !188, file: !43, line: 845, baseType: !57, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !43, line: 845, baseType: !98, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !43, line: 845, baseType: !184, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !188, file: !43, line: 845, baseType: !41, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !43, line: 845, baseType: !198, size: 64, offset: 320)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !43, line: 732, size: 64, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !198, file: !43, line: 733, baseType: !74, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !198, file: !43, line: 734, baseType: !34, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !198, file: !43, line: 735, baseType: !86, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !198, file: !43, line: 736, baseType: !98, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !43, line: 737, baseType: !86, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !198, file: !43, line: 738, baseType: !184, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !188, file: !43, line: 845, baseType: !38, size: 8, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !185, file: !43, line: 893, baseType: !208, size: 640)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !43, line: 851, size: 640, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !43, line: 852, baseType: !184, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !208, file: !43, line: 852, baseType: !38, size: 8, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !43, line: 852, baseType: !38, size: 8, offset: 72)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !208, file: !43, line: 852, baseType: !57, size: 16, offset: 80)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !208, file: !43, line: 852, baseType: !98, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !43, line: 852, baseType: !184, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !43, line: 852, baseType: !41, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !208, file: !43, line: 852, baseType: !198, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !208, file: !43, line: 852, baseType: !38, size: 8, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !208, file: !43, line: 852, baseType: !86, size: 64, offset: 448)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !208, file: !43, line: 853, baseType: !98, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !208, file: !43, line: 854, baseType: !34, size: 32, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !43, line: 855, baseType: !34, size: 32, offset: 608)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !185, file: !43, line: 894, baseType: !224, size: 1600)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !43, line: 862, size: 1600, elements: !225)
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !224, file: !43, line: 863, baseType: !184, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !224, file: !43, line: 863, baseType: !38, size: 8, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !43, line: 863, baseType: !38, size: 8, offset: 72)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !224, file: !43, line: 863, baseType: !57, size: 16, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !224, file: !43, line: 863, baseType: !98, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !43, line: 863, baseType: !184, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !43, line: 863, baseType: !41, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !224, file: !43, line: 863, baseType: !198, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !224, file: !43, line: 863, baseType: !38, size: 8, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !224, file: !43, line: 863, baseType: !184, size: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !224, file: !43, line: 864, baseType: !184, size: 64, offset: 512)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !224, file: !43, line: 865, baseType: !86, size: 64, offset: 576)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !224, file: !43, line: 866, baseType: !38, size: 8, offset: 640)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !224, file: !43, line: 867, baseType: !86, size: 64, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !224, file: !43, line: 868, baseType: !86, size: 64, offset: 768)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !224, file: !43, line: 869, baseType: !86, size: 64, offset: 832)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !224, file: !43, line: 870, baseType: !243, size: 32, offset: 896)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 32, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 4)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !224, file: !43, line: 871, baseType: !34, size: 32, offset: 928)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !224, file: !43, line: 872, baseType: !34, size: 32, offset: 960)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !224, file: !43, line: 873, baseType: !34, size: 32, offset: 992)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !224, file: !43, line: 874, baseType: !34, size: 32, offset: 1024)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !224, file: !43, line: 875, baseType: !34, size: 32, offset: 1056)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !224, file: !43, line: 876, baseType: !34, size: 32, offset: 1088)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !224, file: !43, line: 877, baseType: !34, size: 32, offset: 1120)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !224, file: !43, line: 878, baseType: !34, size: 32, offset: 1152)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !224, file: !43, line: 879, baseType: !34, size: 32, offset: 1184)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !224, file: !43, line: 880, baseType: !34, size: 32, offset: 1216)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !224, file: !43, line: 881, baseType: !34, size: 32, offset: 1248)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !224, file: !43, line: 882, baseType: !34, size: 32, offset: 1280)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !224, file: !43, line: 883, baseType: !34, size: 32, offset: 1312)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !224, file: !43, line: 884, baseType: !57, size: 16, offset: 1344)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !224, file: !43, line: 885, baseType: !38, size: 8, offset: 1360)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !224, file: !43, line: 886, baseType: !38, size: 8, offset: 1368)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !224, file: !43, line: 887, baseType: !38, size: 8, offset: 1376)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !224, file: !43, line: 888, baseType: !264, size: 160, offset: 1384)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 160, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 20)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !176, file: !43, line: 916, baseType: !41, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !176, file: !43, line: 917, baseType: !269, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !43, line: 679, size: 640, elements: !271)
!271 = !{!272, !280, !293, !302, !311, !324, !338, !350, !362}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !270, file: !43, line: 680, baseType: !273, size: 128)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !43, line: 575, size: 128, elements: !274)
!274 = !{!275, !276, !277, !278, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !43, line: 576, baseType: !126, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !273, file: !43, line: 576, baseType: !38, size: 8, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !43, line: 576, baseType: !38, size: 8, offset: 72)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !273, file: !43, line: 576, baseType: !57, size: 16, offset: 80)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !273, file: !43, line: 576, baseType: !57, size: 16, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !270, file: !43, line: 681, baseType: !281, size: 384)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !43, line: 604, size: 384, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !43, line: 605, baseType: !126, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !43, line: 605, baseType: !38, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !43, line: 605, baseType: !38, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !43, line: 605, baseType: !57, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !43, line: 605, baseType: !57, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !281, file: !43, line: 606, baseType: !57, size: 16, offset: 112)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !281, file: !43, line: 607, baseType: !184, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !281, file: !43, line: 608, baseType: !98, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !281, file: !43, line: 609, baseType: !98, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !281, file: !43, line: 610, baseType: !74, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !270, file: !43, line: 682, baseType: !294, size: 192)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !43, line: 582, size: 192, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !43, line: 583, baseType: !126, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !294, file: !43, line: 583, baseType: !38, size: 8, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !43, line: 583, baseType: !38, size: 8, offset: 72)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !294, file: !43, line: 583, baseType: !57, size: 16, offset: 80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !294, file: !43, line: 583, baseType: !57, size: 16, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !294, file: !43, line: 584, baseType: !46, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !270, file: !43, line: 683, baseType: !303, size: 192)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !43, line: 616, size: 192, elements: !304)
!304 = !{!305, !306, !307, !308, !309, !310}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !43, line: 617, baseType: !126, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !43, line: 617, baseType: !38, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !43, line: 617, baseType: !38, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !43, line: 617, baseType: !57, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !43, line: 617, baseType: !57, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !303, file: !43, line: 618, baseType: !41, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !270, file: !43, line: 684, baseType: !312, size: 448)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !43, line: 621, size: 448, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !323}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !43, line: 622, baseType: !126, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !312, file: !43, line: 622, baseType: !38, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !43, line: 622, baseType: !38, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !312, file: !43, line: 622, baseType: !57, size: 16, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !43, line: 622, baseType: !57, size: 16, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !312, file: !43, line: 623, baseType: !34, size: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !312, file: !43, line: 624, baseType: !184, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !312, file: !43, line: 625, baseType: !98, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !312, file: !43, line: 626, baseType: !98, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !312, file: !43, line: 627, baseType: !34, size: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !270, file: !43, line: 685, baseType: !325, size: 512)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !43, line: 590, size: 512, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !43, line: 591, baseType: !126, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !43, line: 591, baseType: !38, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !43, line: 591, baseType: !38, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !43, line: 591, baseType: !57, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !43, line: 591, baseType: !57, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !325, file: !43, line: 592, baseType: !34, size: 32, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !325, file: !43, line: 593, baseType: !46, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !325, file: !43, line: 594, baseType: !46, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !325, file: !43, line: 595, baseType: !149, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !325, file: !43, line: 596, baseType: !126, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !325, file: !43, line: 597, baseType: !34, size: 32, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !270, file: !43, line: 686, baseType: !339, size: 320)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !43, line: 634, size: 320, elements: !340)
!340 = !{!341, !342, !343, !344, !345, !346, !347, !348, !349}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !339, file: !43, line: 635, baseType: !126, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !339, file: !43, line: 635, baseType: !38, size: 8, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !339, file: !43, line: 635, baseType: !38, size: 8, offset: 72)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !339, file: !43, line: 635, baseType: !57, size: 16, offset: 80)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !43, line: 635, baseType: !57, size: 16, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !339, file: !43, line: 636, baseType: !38, size: 8, offset: 112)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !339, file: !43, line: 637, baseType: !149, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !339, file: !43, line: 638, baseType: !46, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !339, file: !43, line: 639, baseType: !74, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !270, file: !43, line: 687, baseType: !351, size: 640)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !43, line: 646, size: 640, elements: !352)
!352 = !{!353, !354, !355, !356, !357, !358}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !43, line: 647, baseType: !126, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !351, file: !43, line: 647, baseType: !38, size: 8, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !43, line: 647, baseType: !38, size: 8, offset: 72)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !351, file: !43, line: 647, baseType: !57, size: 16, offset: 80)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !351, file: !43, line: 647, baseType: !57, size: 16, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !351, file: !43, line: 648, baseType: !359, size: 512, offset: 128)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 512, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 8)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !270, file: !43, line: 688, baseType: !363, size: 320)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !43, line: 669, size: 320, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !43, line: 670, baseType: !126, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !363, file: !43, line: 670, baseType: !38, size: 8, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !43, line: 670, baseType: !38, size: 8, offset: 72)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !363, file: !43, line: 670, baseType: !57, size: 16, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !363, file: !43, line: 670, baseType: !57, size: 16, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !363, file: !43, line: 671, baseType: !38, size: 8, offset: 112)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !363, file: !43, line: 672, baseType: !41, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !363, file: !43, line: 673, baseType: !46, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !363, file: !43, line: 674, baseType: !374, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !43, line: 660, size: 128, elements: !376)
!376 = !{!377, !383}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !375, file: !43, line: 661, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !33, line: 1061, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382, !34, !126}
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !33, line: 424, baseType: !126)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !375, file: !43, line: 662, baseType: !126, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !176, file: !43, line: 918, baseType: !184, size: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !176, file: !43, line: 919, baseType: !34, size: 32, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !150, file: !151, line: 61, baseType: !34, size: 32, offset: 1088)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !150, file: !151, line: 62, baseType: !34, size: 32, offset: 1120)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !150, file: !151, line: 63, baseType: !57, size: 16, offset: 1152)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !150, file: !151, line: 64, baseType: !38, size: 8, offset: 1168)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !150, file: !151, line: 66, baseType: !391, size: 2688, offset: 1216)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2688, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 7)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !150, file: !151, line: 67, baseType: !395, size: 3072, offset: 3904)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 3072, elements: !360)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !150, file: !151, line: 68, baseType: !397, size: 576, offset: 6976)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 576, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 9)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !150, file: !151, line: 69, baseType: !113, size: 64, offset: 7552)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !150, file: !151, line: 71, baseType: !98, size: 64, offset: 7616)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !150, file: !151, line: 72, baseType: !113, size: 64, offset: 7680)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !150, file: !151, line: 73, baseType: !269, size: 64, offset: 7744)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !150, file: !151, line: 74, baseType: !41, size: 64, offset: 7808)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !150, file: !151, line: 75, baseType: !46, size: 64, offset: 7872)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !150, file: !151, line: 76, baseType: !41, size: 64, offset: 7936)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !150, file: !151, line: 77, baseType: !184, size: 64, offset: 8000)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !150, file: !151, line: 78, baseType: !46, size: 64, offset: 8064)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !150, file: !151, line: 79, baseType: !41, size: 64, offset: 8128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !150, file: !151, line: 80, baseType: !86, size: 64, offset: 8192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !150, file: !151, line: 81, baseType: !184, size: 64, offset: 8256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !150, file: !151, line: 82, baseType: !413, size: 64, offset: 8320)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !43, line: 718, size: 128, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !415, file: !43, line: 722, baseType: !34, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !415, file: !43, line: 723, baseType: !34, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !415, file: !43, line: 724, baseType: !57, size: 16, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !415, file: !43, line: 725, baseType: !38, size: 8, offset: 80)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !415, file: !43, line: 726, baseType: !38, size: 8, offset: 88)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !415, file: !43, line: 727, baseType: !38, size: 8, offset: 96)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !150, file: !151, line: 83, baseType: !184, size: 64, offset: 8384)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !150, file: !151, line: 84, baseType: !46, size: 64, offset: 8448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !150, file: !151, line: 85, baseType: !269, size: 64, offset: 8512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !150, file: !151, line: 86, baseType: !46, size: 64, offset: 8576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !150, file: !151, line: 87, baseType: !269, size: 64, offset: 8640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !150, file: !151, line: 88, baseType: !184, size: 64, offset: 8704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !150, file: !151, line: 89, baseType: !184, size: 64, offset: 8768)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !150, file: !151, line: 90, baseType: !431, size: 64, offset: 8832)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !150, file: !151, line: 91, baseType: !433, size: 64, offset: 8896)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !43, line: 652, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!32, !149, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !150, file: !151, line: 92, baseType: !439, size: 64, offset: 8960)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !43, line: 656, baseType: !146)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !142, file: !48, line: 153, baseType: !46, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !128, file: !48, line: 156, baseType: !34, size: 32, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !128, file: !48, line: 157, baseType: !161, size: 16, offset: 416)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !128, file: !48, line: 158, baseType: !38, size: 8, offset: 432)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !47, file: !48, line: 377, baseType: !445, size: 576)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !48, line: 122, size: 576, elements: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !445, file: !48, line: 123, baseType: !46, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !445, file: !48, line: 123, baseType: !38, size: 8, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !445, file: !48, line: 123, baseType: !38, size: 8, offset: 72)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !445, file: !48, line: 123, baseType: !57, size: 16, offset: 80)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !445, file: !48, line: 123, baseType: !38, size: 8, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !445, file: !48, line: 123, baseType: !38, size: 8, offset: 104)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !445, file: !48, line: 124, baseType: !57, size: 16, offset: 112)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !445, file: !48, line: 125, baseType: !126, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !445, file: !48, line: 126, baseType: !74, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !445, file: !48, line: 127, baseType: !431, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !445, file: !48, line: 128, baseType: !46, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !445, file: !48, line: 129, baseType: !46, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !445, file: !48, line: 130, baseType: !41, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !445, file: !48, line: 131, baseType: !38, size: 8, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !47, file: !48, line: 378, baseType: !462, size: 512)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !48, line: 134, size: 512, elements: !463)
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !475, !476}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !462, file: !48, line: 135, baseType: !46, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !462, file: !48, line: 135, baseType: !38, size: 8, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !462, file: !48, line: 135, baseType: !38, size: 8, offset: 72)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !462, file: !48, line: 135, baseType: !57, size: 16, offset: 80)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !462, file: !48, line: 135, baseType: !38, size: 8, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !462, file: !48, line: 135, baseType: !38, size: 8, offset: 104)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !462, file: !48, line: 136, baseType: !41, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !462, file: !48, line: 137, baseType: !46, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !462, file: !48, line: 138, baseType: !46, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !462, file: !48, line: 139, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !33, line: 129, baseType: !74)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !462, file: !48, line: 140, baseType: !34, size: 32, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !462, file: !48, line: 141, baseType: !126, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !47, file: !48, line: 379, baseType: !478, size: 320)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !48, line: 185, size: 320, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !489}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !478, file: !48, line: 186, baseType: !46, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !478, file: !48, line: 186, baseType: !38, size: 8, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !48, line: 186, baseType: !38, size: 8, offset: 72)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !478, file: !48, line: 186, baseType: !57, size: 16, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !48, line: 186, baseType: !38, size: 8, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !478, file: !48, line: 186, baseType: !486, size: 128, offset: 128)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 2)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !478, file: !48, line: 186, baseType: !46, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !47, file: !48, line: 380, baseType: !491, size: 384)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !48, line: 188, size: 384, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !491, file: !48, line: 189, baseType: !46, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !491, file: !48, line: 189, baseType: !38, size: 8, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !491, file: !48, line: 189, baseType: !38, size: 8, offset: 72)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !491, file: !48, line: 189, baseType: !57, size: 16, offset: 80)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !48, line: 189, baseType: !38, size: 8, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !491, file: !48, line: 190, baseType: !486, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !491, file: !48, line: 190, baseType: !46, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !491, file: !48, line: 190, baseType: !501, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !43, line: 480, size: 576, elements: !503)
!503 = !{!504, !505, !506, !507, !515, !530, !562, !563, !564, !565, !566, !567}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !43, line: 481, baseType: !41, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !502, file: !43, line: 482, baseType: !501, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !43, line: 483, baseType: !501, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !502, file: !43, line: 484, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !43, line: 497, size: 256, elements: !510)
!510 = !{!511, !512, !513, !514}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !43, line: 498, baseType: !508, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !43, line: 499, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !509, file: !43, line: 500, baseType: !501, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !509, file: !43, line: 501, baseType: !34, size: 32, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !502, file: !43, line: 485, baseType: !516, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !43, line: 466, size: 320, elements: !518)
!518 = !{!519, !524, !525, !526, !527, !528, !529}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !517, file: !43, line: 467, baseType: !520, size: 128)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !43, line: 459, size: 128, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !520, file: !43, line: 460, baseType: !38, size: 8)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !520, file: !43, line: 461, baseType: !74, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !517, file: !43, line: 468, baseType: !520, size: 128, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !517, file: !43, line: 469, baseType: !57, size: 16, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !517, file: !43, line: 470, baseType: !38, size: 8, offset: 272)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !517, file: !43, line: 471, baseType: !38, size: 8, offset: 280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !517, file: !43, line: 472, baseType: !38, size: 8, offset: 288)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !517, file: !43, line: 473, baseType: !38, size: 8, offset: 296)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !502, file: !43, line: 486, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !43, line: 448, size: 192, elements: !533)
!533 = !{!534, !557, !558, !559, !560, !561}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !532, file: !43, line: 449, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !43, line: 438, size: 64, elements: !536)
!536 = !{!537, !538, !551}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !535, file: !43, line: 439, baseType: !41, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !535, file: !43, line: 440, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !43, line: 419, size: 256, elements: !541)
!541 = !{!542, !547, !548, !549, !550}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !540, file: !43, line: 420, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !33, line: 1058, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!34, !382, !34, !126}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !540, file: !43, line: 421, baseType: !126, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !540, file: !43, line: 422, baseType: !41, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !540, file: !43, line: 423, baseType: !38, size: 8, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !540, file: !43, line: 424, baseType: !38, size: 8, offset: 200)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !535, file: !43, line: 441, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !43, line: 429, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !553, file: !43, line: 430, baseType: !41, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !43, line: 431, baseType: !552, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !532, file: !43, line: 450, baseType: !516, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !43, line: 451, baseType: !38, size: 8, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !532, file: !43, line: 452, baseType: !38, size: 8, offset: 136)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !532, file: !43, line: 453, baseType: !38, size: 8, offset: 144)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !532, file: !43, line: 454, baseType: !38, size: 8, offset: 152)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !502, file: !43, line: 487, baseType: !74, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !502, file: !43, line: 488, baseType: !34, size: 32, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !502, file: !43, line: 489, baseType: !57, size: 16, offset: 480)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !502, file: !43, line: 490, baseType: !57, size: 16, offset: 496)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !502, file: !43, line: 491, baseType: !38, size: 8, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !502, file: !43, line: 492, baseType: !38, size: 8, offset: 520)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !47, file: !48, line: 381, baseType: !569, size: 384)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !48, line: 193, size: 384, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !48, line: 194, baseType: !46, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !48, line: 194, baseType: !38, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !48, line: 194, baseType: !38, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !48, line: 194, baseType: !57, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !48, line: 194, baseType: !38, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !48, line: 194, baseType: !486, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !48, line: 194, baseType: !46, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !569, file: !48, line: 194, baseType: !34, size: 32, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !569, file: !48, line: 195, baseType: !34, size: 32, offset: 352)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !47, file: !48, line: 382, baseType: !581, size: 384)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !48, line: 198, size: 384, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !48, line: 199, baseType: !46, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !48, line: 199, baseType: !38, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !48, line: 199, baseType: !38, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !48, line: 199, baseType: !57, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !48, line: 199, baseType: !38, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !581, file: !48, line: 201, baseType: !38, size: 8, offset: 104)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !581, file: !48, line: 202, baseType: !38, size: 8, offset: 112)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !581, file: !48, line: 203, baseType: !486, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !581, file: !48, line: 203, baseType: !46, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !581, file: !48, line: 203, baseType: !593, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !33, line: 128, baseType: !74)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !47, file: !48, line: 383, baseType: !595, size: 320)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !48, line: 206, size: 320, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !595, file: !48, line: 207, baseType: !46, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !595, file: !48, line: 207, baseType: !38, size: 8, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !48, line: 207, baseType: !38, size: 8, offset: 72)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !595, file: !48, line: 207, baseType: !57, size: 16, offset: 80)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !48, line: 207, baseType: !38, size: 8, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !595, file: !48, line: 207, baseType: !486, size: 128, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !595, file: !48, line: 207, baseType: !46, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !47, file: !48, line: 384, baseType: !605, size: 384)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !48, line: 234, size: 384, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !605, file: !48, line: 235, baseType: !46, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !605, file: !48, line: 235, baseType: !38, size: 8, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !48, line: 235, baseType: !38, size: 8, offset: 72)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !605, file: !48, line: 235, baseType: !57, size: 16, offset: 80)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !48, line: 235, baseType: !38, size: 8, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !605, file: !48, line: 235, baseType: !38, size: 8, offset: 104)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !605, file: !48, line: 235, baseType: !38, size: 8, offset: 112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !605, file: !48, line: 235, baseType: !38, size: 8, offset: 120)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !605, file: !48, line: 235, baseType: !41, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !605, file: !48, line: 235, baseType: !34, size: 32, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !605, file: !48, line: 235, baseType: !34, size: 32, offset: 224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !605, file: !48, line: 235, baseType: !34, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !605, file: !48, line: 235, baseType: !38, size: 8, offset: 288)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !605, file: !48, line: 235, baseType: !38, size: 8, offset: 296)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !605, file: !48, line: 235, baseType: !46, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !47, file: !48, line: 385, baseType: !623, size: 576)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !48, line: 238, size: 576, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !48, line: 239, baseType: !46, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !48, line: 239, baseType: !38, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !48, line: 239, baseType: !38, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !48, line: 239, baseType: !57, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !48, line: 239, baseType: !38, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !623, file: !48, line: 239, baseType: !38, size: 8, offset: 104)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !623, file: !48, line: 239, baseType: !38, size: 8, offset: 112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !623, file: !48, line: 239, baseType: !38, size: 8, offset: 120)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !48, line: 239, baseType: !41, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !623, file: !48, line: 239, baseType: !34, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !623, file: !48, line: 239, baseType: !34, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !623, file: !48, line: 239, baseType: !34, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !623, file: !48, line: 239, baseType: !38, size: 8, offset: 288)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !623, file: !48, line: 239, baseType: !38, size: 8, offset: 296)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !623, file: !48, line: 239, baseType: !57, size: 16, offset: 304)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !623, file: !48, line: 240, baseType: !46, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !623, file: !48, line: 241, baseType: !98, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !623, file: !48, line: 242, baseType: !57, size: 16, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !623, file: !48, line: 243, baseType: !98, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !47, file: !48, line: 386, baseType: !645, size: 384)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !48, line: 263, size: 384, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !48, line: 264, baseType: !46, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !48, line: 264, baseType: !38, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !48, line: 264, baseType: !38, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !48, line: 264, baseType: !57, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !48, line: 264, baseType: !38, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !645, file: !48, line: 264, baseType: !38, size: 8, offset: 104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !645, file: !48, line: 264, baseType: !38, size: 8, offset: 112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !645, file: !48, line: 264, baseType: !38, size: 8, offset: 120)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !48, line: 264, baseType: !41, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !645, file: !48, line: 264, baseType: !34, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !645, file: !48, line: 264, baseType: !34, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !48, line: 264, baseType: !34, size: 32, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !645, file: !48, line: 264, baseType: !38, size: 8, offset: 288)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !645, file: !48, line: 264, baseType: !38, size: 8, offset: 296)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !645, file: !48, line: 264, baseType: !38, size: 8, offset: 304)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !645, file: !48, line: 265, baseType: !46, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !47, file: !48, line: 387, baseType: !664, size: 448)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !48, line: 246, size: 448, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !664, file: !48, line: 247, baseType: !46, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !664, file: !48, line: 247, baseType: !38, size: 8, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !48, line: 247, baseType: !38, size: 8, offset: 72)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !664, file: !48, line: 247, baseType: !57, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !48, line: 247, baseType: !38, size: 8, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !664, file: !48, line: 247, baseType: !38, size: 8, offset: 104)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !664, file: !48, line: 247, baseType: !38, size: 8, offset: 112)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !664, file: !48, line: 247, baseType: !38, size: 8, offset: 120)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !664, file: !48, line: 247, baseType: !41, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !664, file: !48, line: 247, baseType: !34, size: 32, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !664, file: !48, line: 247, baseType: !34, size: 32, offset: 224)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !664, file: !48, line: 247, baseType: !34, size: 32, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !664, file: !48, line: 247, baseType: !38, size: 8, offset: 288)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !664, file: !48, line: 247, baseType: !38, size: 8, offset: 296)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !664, file: !48, line: 247, baseType: !46, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !664, file: !48, line: 248, baseType: !46, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !47, file: !48, line: 388, baseType: !683, size: 448)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !48, line: 251, size: 448, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !683, file: !48, line: 252, baseType: !46, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !683, file: !48, line: 252, baseType: !38, size: 8, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !48, line: 252, baseType: !38, size: 8, offset: 72)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !683, file: !48, line: 252, baseType: !57, size: 16, offset: 80)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !48, line: 252, baseType: !38, size: 8, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !683, file: !48, line: 252, baseType: !38, size: 8, offset: 104)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !683, file: !48, line: 252, baseType: !38, size: 8, offset: 112)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !683, file: !48, line: 252, baseType: !38, size: 8, offset: 120)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !48, line: 252, baseType: !41, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !683, file: !48, line: 252, baseType: !34, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !683, file: !48, line: 252, baseType: !34, size: 32, offset: 224)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !683, file: !48, line: 252, baseType: !34, size: 32, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !683, file: !48, line: 252, baseType: !38, size: 8, offset: 288)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !683, file: !48, line: 252, baseType: !38, size: 8, offset: 296)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !683, file: !48, line: 257, baseType: !46, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !683, file: !48, line: 258, baseType: !46, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !47, file: !48, line: 389, baseType: !702, size: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !48, line: 274, size: 512, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !702, file: !48, line: 275, baseType: !46, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !48, line: 275, baseType: !38, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !48, line: 275, baseType: !38, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !702, file: !48, line: 275, baseType: !57, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !48, line: 275, baseType: !38, size: 8, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !702, file: !48, line: 275, baseType: !41, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !702, file: !48, line: 276, baseType: !34, size: 32, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !702, file: !48, line: 277, baseType: !378, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !702, file: !48, line: 278, baseType: !126, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !48, line: 279, baseType: !486, size: 128, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !47, file: !48, line: 390, baseType: !715, size: 576)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !48, line: 282, size: 576, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !730, !731, !732, !733, !739, !740}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !48, line: 283, baseType: !46, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !48, line: 283, baseType: !38, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !48, line: 283, baseType: !38, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !48, line: 283, baseType: !57, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !48, line: 283, baseType: !38, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !715, file: !48, line: 283, baseType: !38, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !715, file: !48, line: 284, baseType: !38, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !715, file: !48, line: 285, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !33, line: 1093, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!32, !34, !474, !34, !729, !126, !126}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !48, line: 286, baseType: !41, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !715, file: !48, line: 287, baseType: !126, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !715, file: !48, line: 288, baseType: !126, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !715, file: !48, line: 289, baseType: !734, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !33, line: 1126, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!32, !382, !34, !126, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !715, file: !48, line: 290, baseType: !46, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !48, line: 291, baseType: !46, size: 64, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !47, file: !48, line: 391, baseType: !742, size: 512)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !48, line: 309, size: 512, elements: !743)
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !742, file: !48, line: 310, baseType: !46, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !742, file: !48, line: 310, baseType: !38, size: 8, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !742, file: !48, line: 310, baseType: !38, size: 8, offset: 72)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !742, file: !48, line: 310, baseType: !57, size: 16, offset: 80)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !742, file: !48, line: 310, baseType: !38, size: 8, offset: 96)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !742, file: !48, line: 310, baseType: !38, size: 8, offset: 104)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !742, file: !48, line: 311, baseType: !38, size: 8, offset: 112)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !742, file: !48, line: 312, baseType: !38, size: 8, offset: 120)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !742, file: !48, line: 313, baseType: !126, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !742, file: !48, line: 314, baseType: !41, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !742, file: !48, line: 315, baseType: !113, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !742, file: !48, line: 316, baseType: !98, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !742, file: !48, line: 317, baseType: !98, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !742, file: !48, line: 318, baseType: !34, size: 32, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !47, file: !48, line: 392, baseType: !759, size: 448)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !48, line: 342, size: 448, elements: !760)
!760 = !{!761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !759, file: !48, line: 343, baseType: !46, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !759, file: !48, line: 343, baseType: !38, size: 8, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !48, line: 343, baseType: !38, size: 8, offset: 72)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !759, file: !48, line: 343, baseType: !57, size: 16, offset: 80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !759, file: !48, line: 343, baseType: !38, size: 8, offset: 96)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !759, file: !48, line: 343, baseType: !41, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !759, file: !48, line: 344, baseType: !41, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !759, file: !48, line: 345, baseType: !126, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !759, file: !48, line: 346, baseType: !98, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !759, file: !48, line: 347, baseType: !34, size: 32, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !47, file: !48, line: 393, baseType: !772, size: 256)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !48, line: 352, size: 256, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !784}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !772, file: !48, line: 353, baseType: !46, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !772, file: !48, line: 353, baseType: !38, size: 8, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !772, file: !48, line: 353, baseType: !38, size: 8, offset: 72)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !772, file: !48, line: 353, baseType: !57, size: 16, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !48, line: 353, baseType: !38, size: 8, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !772, file: !48, line: 353, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !33, line: 1064, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !382, !126}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !772, file: !48, line: 354, baseType: !126, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !47, file: !48, line: 394, baseType: !786, size: 192)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !48, line: 359, size: 192, elements: !787)
!787 = !{!788, !789, !790, !791, !792, !793}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !786, file: !48, line: 360, baseType: !46, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !786, file: !48, line: 360, baseType: !38, size: 8, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !786, file: !48, line: 360, baseType: !38, size: 8, offset: 72)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !786, file: !48, line: 360, baseType: !57, size: 16, offset: 80)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !786, file: !48, line: 360, baseType: !38, size: 8, offset: 96)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !786, file: !48, line: 360, baseType: !46, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !47, file: !48, line: 401, baseType: !42, size: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !42, file: !43, line: 135, baseType: !38, size: 8, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !43, line: 136, baseType: !38, size: 8, offset: 72)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !42, file: !43, line: 137, baseType: !57, size: 16, offset: 80)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !42, file: !43, line: 138, baseType: !799, size: 32, offset: 96)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !800, line: 328, size: 32, elements: !801)
!800 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !799, file: !800, line: 329, baseType: !34, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !799, file: !800, line: 330, baseType: !243, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !42, file: !43, line: 139, baseType: !41, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !42, file: !43, line: 140, baseType: !41, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !42, file: !43, line: 141, baseType: !41, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !42, file: !43, line: 142, baseType: !161, size: 16, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !33, line: 127, baseType: !74)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !810, line: 154, baseType: !7)
!810 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!811 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!812 = !{!813, !818, !823, !828, !0, !833, !838}
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 767, type: !815, isLocal: true, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 216, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 27)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 780, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 200, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 25)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 827, type: !825, isLocal: true, isDefinition: true)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 432, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 54)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !3, line: 839, type: !830, isLocal: true, isDefinition: true)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 408, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 51)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !3, line: 511, type: !835, isLocal: true, isDefinition: true)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 288, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 36)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !22, line: 480, type: !840, isLocal: true, isDefinition: true)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 168, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 21)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 48, elements: !845)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!845 = !{!846}
!846 = !DISubrange(count: 6)
!847 = !{i32 7, !"Dwarf Version", i32 5}
!848 = !{i32 2, !"Debug Info Version", i32 3}
!849 = !{i32 1, !"wchar_size", i32 2}
!850 = !{i32 8, !"cf-protection-branch", i32 1}
!851 = !{i32 4, !"function_return_thunk_extern", i32 1}
!852 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!853 = !{i32 1, !"Code Model", i32 2}
!854 = !{i32 1, !"override-stack-alignment", i32 8}
!855 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!856 = distinct !DISubprogram(name: "acpi_ev_update_gpe_enable_mask", scope: !3, file: !3, line: 37, type: !857, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!32, !531}
!859 = !{!860, !861, !862}
!860 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !856, file: !3, line: 37, type: !531)
!861 = !DILocalVariable(name: "gpe_register_info", scope: !856, file: !3, line: 39, type: !516)
!862 = !DILocalVariable(name: "register_bit", scope: !856, file: !3, line: 40, type: !34)
!863 = !DILocation(line: 37, column: 60, scope: !856)
!864 = !DILocation(line: 39, column: 2, scope: !856)
!865 = !DILocation(line: 39, column: 33, scope: !856)
!866 = !DILocation(line: 40, column: 2, scope: !856)
!867 = !DILocation(line: 40, column: 6, scope: !856)
!868 = !DILocation(line: 44, column: 22, scope: !856)
!869 = !DILocation(line: 44, column: 38, scope: !856)
!870 = !DILocation(line: 44, column: 20, scope: !856)
!871 = !DILocation(line: 45, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !856, file: !3, line: 45, column: 6)
!873 = !DILocation(line: 45, column: 6, scope: !856)
!874 = !DILocation(line: 46, column: 3, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 45, column: 26)
!876 = !DILocation(line: 49, column: 46, scope: !856)
!877 = !DILocation(line: 49, column: 17, scope: !856)
!878 = !DILocation(line: 49, column: 15, scope: !856)
!879 = !DILocation(line: 53, column: 2, scope: !856)
!880 = !DILocation(line: 57, column: 6, scope: !881)
!881 = distinct !DILexicalBlock(scope: !856, file: !3, line: 57, column: 6)
!882 = !DILocation(line: 57, column: 22, scope: !881)
!883 = !DILocation(line: 57, column: 6, scope: !856)
!884 = !DILocation(line: 58, column: 3, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !3, line: 57, column: 37)
!886 = !DILocation(line: 60, column: 2, scope: !885)
!887 = !DILocation(line: 62, column: 35, scope: !856)
!888 = !DILocation(line: 62, column: 54, scope: !856)
!889 = !DILocation(line: 62, column: 2, scope: !856)
!890 = !DILocation(line: 62, column: 21, scope: !856)
!891 = !DILocation(line: 62, column: 33, scope: !856)
!892 = !DILocation(line: 63, column: 2, scope: !856)
!893 = !DILocation(line: 64, column: 1, scope: !856)
!894 = !DISubprogram(name: "acpi_hw_get_gpe_register_bit", scope: !895, file: !895, line: 85, type: !896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!895 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!896 = !DISubroutineType(types: !897)
!897 = !{!34, !531}
!898 = distinct !DISubprogram(name: "acpi_ev_enable_gpe", scope: !3, file: !3, line: 78, type: !857, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !899)
!899 = !{!900, !901}
!900 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !898, file: !3, line: 78, type: !531)
!901 = !DILocalVariable(name: "status", scope: !898, file: !3, line: 80, type: !32)
!902 = !DILocation(line: 78, column: 60, scope: !898)
!903 = !DILocation(line: 80, column: 2, scope: !898)
!904 = !DILocation(line: 80, column: 14, scope: !898)
!905 = !DILocation(line: 86, column: 31, scope: !898)
!906 = !DILocation(line: 86, column: 11, scope: !898)
!907 = !DILocation(line: 86, column: 9, scope: !898)
!908 = !DILocation(line: 87, column: 2, scope: !898)
!909 = !DILocation(line: 88, column: 1, scope: !898)
!910 = !DISubprogram(name: "acpi_hw_low_set_gpe", scope: !895, file: !895, line: 88, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!911 = !DISubroutineType(types: !912)
!912 = !{!32, !531, !34}
!913 = distinct !DISubprogram(name: "acpi_ev_mask_gpe", scope: !3, file: !3, line: 104, type: !914, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !916)
!914 = !DISubroutineType(types: !915)
!915 = !{!32, !531, !38}
!916 = !{!917, !918, !919, !920}
!917 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !913, file: !3, line: 104, type: !531)
!918 = !DILocalVariable(name: "is_masked", arg: 2, scope: !913, file: !3, line: 104, type: !38)
!919 = !DILocalVariable(name: "gpe_register_info", scope: !913, file: !3, line: 106, type: !516)
!920 = !DILocalVariable(name: "register_bit", scope: !913, file: !3, line: 107, type: !34)
!921 = !DILocation(line: 104, column: 46, scope: !913)
!922 = !DILocation(line: 104, column: 65, scope: !913)
!923 = !DILocation(line: 106, column: 2, scope: !913)
!924 = !DILocation(line: 106, column: 33, scope: !913)
!925 = !DILocation(line: 107, column: 2, scope: !913)
!926 = !DILocation(line: 107, column: 6, scope: !913)
!927 = !DILocation(line: 111, column: 22, scope: !913)
!928 = !DILocation(line: 111, column: 38, scope: !913)
!929 = !DILocation(line: 111, column: 20, scope: !913)
!930 = !DILocation(line: 112, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !913, file: !3, line: 112, column: 6)
!932 = !DILocation(line: 112, column: 6, scope: !913)
!933 = !DILocation(line: 113, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !3, line: 112, column: 26)
!935 = !DILocation(line: 116, column: 46, scope: !913)
!936 = !DILocation(line: 116, column: 17, scope: !913)
!937 = !DILocation(line: 116, column: 15, scope: !913)
!938 = !DILocation(line: 120, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !913, file: !3, line: 120, column: 6)
!940 = !DILocation(line: 120, column: 6, scope: !913)
!941 = !DILocation(line: 121, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 121, column: 7)
!943 = distinct !DILexicalBlock(scope: !939, file: !3, line: 120, column: 17)
!944 = !DILocation(line: 121, column: 22, scope: !942)
!945 = !DILocation(line: 121, column: 41, scope: !942)
!946 = !DILocation(line: 121, column: 20, scope: !942)
!947 = !DILocation(line: 121, column: 7, scope: !943)
!948 = !DILocation(line: 122, column: 4, scope: !949)
!949 = distinct !DILexicalBlock(scope: !942, file: !3, line: 121, column: 55)
!950 = !DILocation(line: 125, column: 29, scope: !943)
!951 = !DILocation(line: 125, column: 9, scope: !943)
!952 = !DILocation(line: 126, column: 3, scope: !943)
!953 = !DILocation(line: 127, column: 2, scope: !943)
!954 = !DILocation(line: 128, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 128, column: 7)
!956 = distinct !DILexicalBlock(scope: !939, file: !3, line: 127, column: 9)
!957 = !DILocation(line: 128, column: 24, scope: !955)
!958 = !DILocation(line: 128, column: 43, scope: !955)
!959 = !DILocation(line: 128, column: 22, scope: !955)
!960 = !DILocation(line: 128, column: 7, scope: !956)
!961 = !DILocation(line: 129, column: 4, scope: !962)
!962 = distinct !DILexicalBlock(scope: !955, file: !3, line: 128, column: 58)
!963 = !DILocation(line: 132, column: 3, scope: !956)
!964 = !DILocation(line: 134, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !956, file: !3, line: 134, column: 7)
!966 = !DILocation(line: 134, column: 23, scope: !965)
!967 = !DILocation(line: 135, column: 7, scope: !965)
!968 = !DILocation(line: 135, column: 11, scope: !965)
!969 = !DILocation(line: 135, column: 27, scope: !965)
!970 = !DILocation(line: 134, column: 7, scope: !956)
!971 = !DILocation(line: 136, column: 30, scope: !972)
!972 = distinct !DILexicalBlock(scope: !965, file: !3, line: 135, column: 49)
!973 = !DILocation(line: 136, column: 10, scope: !972)
!974 = !DILocation(line: 138, column: 3, scope: !972)
!975 = !DILocation(line: 141, column: 2, scope: !913)
!976 = !DILocation(line: 142, column: 1, scope: !913)
!977 = distinct !DISubprogram(name: "acpi_ev_add_gpe_reference", scope: !3, file: !3, line: 159, type: !914, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!978 = !{!979, !980, !981}
!979 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !977, file: !3, line: 159, type: !531)
!980 = !DILocalVariable(name: "clear_on_enable", arg: 2, scope: !977, file: !3, line: 160, type: !38)
!981 = !DILocalVariable(name: "status", scope: !977, file: !3, line: 162, type: !32)
!982 = !DILocation(line: 159, column: 55, scope: !977)
!983 = !DILocation(line: 160, column: 9, scope: !977)
!984 = !DILocation(line: 162, column: 2, scope: !977)
!985 = !DILocation(line: 162, column: 14, scope: !977)
!986 = !DILocation(line: 166, column: 6, scope: !987)
!987 = distinct !DILexicalBlock(scope: !977, file: !3, line: 166, column: 6)
!988 = !DILocation(line: 166, column: 22, scope: !987)
!989 = !DILocation(line: 166, column: 36, scope: !987)
!990 = !DILocation(line: 166, column: 6, scope: !977)
!991 = !DILocation(line: 167, column: 3, scope: !992)
!992 = distinct !DILexicalBlock(scope: !987, file: !3, line: 166, column: 55)
!993 = !DILocation(line: 170, column: 2, scope: !977)
!994 = !DILocation(line: 170, column: 18, scope: !977)
!995 = !DILocation(line: 170, column: 31, scope: !977)
!996 = !DILocation(line: 171, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !977, file: !3, line: 171, column: 6)
!998 = !DILocation(line: 171, column: 22, scope: !997)
!999 = !DILocation(line: 171, column: 36, scope: !997)
!1000 = !DILocation(line: 171, column: 6, scope: !977)
!1001 = !DILocation(line: 175, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 175, column: 7)
!1003 = distinct !DILexicalBlock(scope: !997, file: !3, line: 171, column: 42)
!1004 = !DILocation(line: 175, column: 7, scope: !1003)
!1005 = !DILocation(line: 176, column: 28, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 175, column: 24)
!1007 = !DILocation(line: 176, column: 10, scope: !1006)
!1008 = !DILocation(line: 177, column: 3, scope: !1006)
!1009 = !DILocation(line: 179, column: 43, scope: !1003)
!1010 = !DILocation(line: 179, column: 12, scope: !1003)
!1011 = !DILocation(line: 179, column: 10, scope: !1003)
!1012 = !DILocation(line: 180, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 180, column: 7)
!1014 = !DILocation(line: 180, column: 7, scope: !1003)
!1015 = !DILocation(line: 181, column: 32, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 180, column: 29)
!1017 = !DILocation(line: 181, column: 13, scope: !1016)
!1018 = !DILocation(line: 181, column: 11, scope: !1016)
!1019 = !DILocation(line: 182, column: 3, scope: !1016)
!1020 = !DILocation(line: 184, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 184, column: 7)
!1022 = !DILocation(line: 184, column: 7, scope: !1003)
!1023 = !DILocation(line: 185, column: 4, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 184, column: 29)
!1025 = !DILocation(line: 185, column: 20, scope: !1024)
!1026 = !DILocation(line: 185, column: 33, scope: !1024)
!1027 = !DILocation(line: 186, column: 3, scope: !1024)
!1028 = !DILocation(line: 187, column: 2, scope: !1003)
!1029 = !DILocation(line: 189, column: 2, scope: !977)
!1030 = !DILocation(line: 190, column: 1, scope: !977)
!1031 = !DISubprogram(name: "acpi_hw_clear_gpe", scope: !895, file: !895, line: 94, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = distinct !DISubprogram(name: "acpi_ev_remove_gpe_reference", scope: !3, file: !3, line: 206, type: !857, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1033)
!1033 = !{!1034, !1035}
!1034 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !1032, file: !3, line: 206, type: !531)
!1035 = !DILocalVariable(name: "status", scope: !1032, file: !3, line: 208, type: !32)
!1036 = !DILocation(line: 206, column: 58, scope: !1032)
!1037 = !DILocation(line: 208, column: 2, scope: !1032)
!1038 = !DILocation(line: 208, column: 14, scope: !1032)
!1039 = !DILocation(line: 212, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 212, column: 6)
!1041 = !DILocation(line: 212, column: 23, scope: !1040)
!1042 = !DILocation(line: 212, column: 6, scope: !1032)
!1043 = !DILocation(line: 213, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 212, column: 38)
!1045 = !DILocation(line: 216, column: 2, scope: !1032)
!1046 = !DILocation(line: 216, column: 18, scope: !1032)
!1047 = !DILocation(line: 216, column: 31, scope: !1032)
!1048 = !DILocation(line: 217, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 217, column: 6)
!1050 = !DILocation(line: 217, column: 23, scope: !1049)
!1051 = !DILocation(line: 217, column: 6, scope: !1032)
!1052 = !DILocation(line: 221, column: 43, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 217, column: 38)
!1054 = !DILocation(line: 221, column: 12, scope: !1053)
!1055 = !DILocation(line: 221, column: 10, scope: !1053)
!1056 = !DILocation(line: 222, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 222, column: 7)
!1058 = !DILocation(line: 222, column: 7, scope: !1053)
!1059 = !DILocation(line: 224, column: 28, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 222, column: 29)
!1061 = !DILocation(line: 224, column: 8, scope: !1060)
!1062 = !DILocation(line: 223, column: 11, scope: !1060)
!1063 = !DILocation(line: 226, column: 3, scope: !1060)
!1064 = !DILocation(line: 228, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 228, column: 7)
!1066 = !DILocation(line: 228, column: 7, scope: !1053)
!1067 = !DILocation(line: 229, column: 4, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 228, column: 29)
!1069 = !DILocation(line: 229, column: 20, scope: !1068)
!1070 = !DILocation(line: 229, column: 33, scope: !1068)
!1071 = !DILocation(line: 230, column: 3, scope: !1068)
!1072 = !DILocation(line: 231, column: 2, scope: !1053)
!1073 = !DILocation(line: 233, column: 2, scope: !1032)
!1074 = !DILocation(line: 234, column: 1, scope: !1032)
!1075 = distinct !DISubprogram(name: "acpi_ev_low_get_gpe_info", scope: !3, file: !3, line: 251, type: !1076, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!531, !34, !501}
!1078 = !{!1079, !1080, !1081}
!1079 = !DILocalVariable(name: "gpe_number", arg: 1, scope: !1075, file: !3, line: 251, type: !34)
!1080 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1075, file: !3, line: 253, type: !501)
!1081 = !DILocalVariable(name: "gpe_index", scope: !1075, file: !3, line: 255, type: !34)
!1082 = !DILocation(line: 251, column: 58, scope: !1075)
!1083 = !DILocation(line: 253, column: 13, scope: !1075)
!1084 = !DILocation(line: 255, column: 2, scope: !1075)
!1085 = !DILocation(line: 255, column: 6, scope: !1075)
!1086 = !DILocation(line: 261, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 261, column: 6)
!1088 = !DILocation(line: 261, column: 17, scope: !1087)
!1089 = !DILocation(line: 261, column: 21, scope: !1087)
!1090 = !DILocation(line: 261, column: 34, scope: !1087)
!1091 = !DILocation(line: 261, column: 45, scope: !1087)
!1092 = !DILocation(line: 261, column: 32, scope: !1087)
!1093 = !DILocation(line: 261, column: 6, scope: !1075)
!1094 = !DILocation(line: 262, column: 3, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 261, column: 65)
!1096 = !DILocation(line: 265, column: 14, scope: !1075)
!1097 = !DILocation(line: 265, column: 27, scope: !1075)
!1098 = !DILocation(line: 265, column: 38, scope: !1075)
!1099 = !DILocation(line: 265, column: 25, scope: !1075)
!1100 = !DILocation(line: 265, column: 12, scope: !1075)
!1101 = !DILocation(line: 266, column: 6, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 266, column: 6)
!1103 = !DILocation(line: 266, column: 19, scope: !1102)
!1104 = !DILocation(line: 266, column: 30, scope: !1102)
!1105 = !DILocation(line: 266, column: 16, scope: !1102)
!1106 = !DILocation(line: 266, column: 6, scope: !1075)
!1107 = !DILocation(line: 267, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 266, column: 41)
!1109 = !DILocation(line: 270, column: 11, scope: !1075)
!1110 = !DILocation(line: 270, column: 22, scope: !1075)
!1111 = !DILocation(line: 270, column: 33, scope: !1075)
!1112 = !DILocation(line: 270, column: 2, scope: !1075)
!1113 = !DILocation(line: 271, column: 1, scope: !1075)
!1114 = distinct !DISubprogram(name: "acpi_ev_get_gpe_event_info", scope: !3, file: !3, line: 291, type: !1115, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1117)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!531, !382, !34}
!1117 = !{!1118, !1119, !1120, !1121, !1122}
!1118 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1114, file: !3, line: 291, type: !382)
!1119 = !DILocalVariable(name: "gpe_number", arg: 2, scope: !1114, file: !3, line: 292, type: !34)
!1120 = !DILocalVariable(name: "obj_desc", scope: !1114, file: !3, line: 294, type: !46)
!1121 = !DILocalVariable(name: "gpe_info", scope: !1114, file: !3, line: 295, type: !531)
!1122 = !DILocalVariable(name: "i", scope: !1114, file: !3, line: 296, type: !34)
!1123 = !DILocation(line: 291, column: 68, scope: !1114)
!1124 = !DILocation(line: 292, column: 18, scope: !1114)
!1125 = !DILocation(line: 294, column: 2, scope: !1114)
!1126 = !DILocation(line: 294, column: 29, scope: !1114)
!1127 = !DILocation(line: 295, column: 2, scope: !1114)
!1128 = !DILocation(line: 295, column: 30, scope: !1114)
!1129 = !DILocation(line: 296, column: 2, scope: !1114)
!1130 = !DILocation(line: 296, column: 6, scope: !1114)
!1131 = !DILocation(line: 302, column: 7, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 302, column: 6)
!1133 = !DILocation(line: 302, column: 6, scope: !1114)
!1134 = !DILocation(line: 306, column: 10, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 306, column: 3)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 302, column: 19)
!1137 = !DILocation(line: 306, column: 8, scope: !1135)
!1138 = !DILocation(line: 306, column: 15, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 306, column: 3)
!1140 = !DILocation(line: 306, column: 17, scope: !1139)
!1141 = !DILocation(line: 306, column: 3, scope: !1135)
!1142 = !DILocation(line: 307, column: 40, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 306, column: 45)
!1144 = !DILocation(line: 309, column: 13, scope: !1143)
!1145 = !DILocation(line: 308, column: 12, scope: !1143)
!1146 = !DILocation(line: 307, column: 15, scope: !1143)
!1147 = !DILocation(line: 307, column: 13, scope: !1143)
!1148 = !DILocation(line: 310, column: 8, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 310, column: 8)
!1150 = !DILocation(line: 310, column: 8, scope: !1143)
!1151 = !DILocation(line: 311, column: 13, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 310, column: 18)
!1153 = !DILocation(line: 311, column: 5, scope: !1152)
!1154 = !DILocation(line: 313, column: 3, scope: !1143)
!1155 = !DILocation(line: 306, column: 41, scope: !1139)
!1156 = !DILocation(line: 306, column: 3, scope: !1139)
!1157 = distinct !{!1157, !1141, !1158, !1159, !1160}
!1158 = !DILocation(line: 313, column: 3, scope: !1135)
!1159 = !{!"llvm.loop.mustprogress"}
!1160 = !{!"llvm.loop.unroll.disable"}
!1161 = !DILocation(line: 317, column: 3, scope: !1136)
!1162 = !DILocation(line: 324, column: 13, scope: !1114)
!1163 = !DILocation(line: 323, column: 6, scope: !1114)
!1164 = !DILocation(line: 322, column: 11, scope: !1114)
!1165 = !DILocation(line: 325, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 325, column: 6)
!1167 = !DILocation(line: 325, column: 16, scope: !1166)
!1168 = !DILocation(line: 325, column: 20, scope: !1166)
!1169 = !DILocation(line: 325, column: 37, scope: !1166)
!1170 = !DILocation(line: 325, column: 6, scope: !1114)
!1171 = !DILocation(line: 326, column: 3, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 325, column: 48)
!1173 = !DILocation(line: 330, column: 4, scope: !1114)
!1174 = !DILocation(line: 330, column: 16, scope: !1114)
!1175 = !DILocation(line: 330, column: 33, scope: !1114)
!1176 = !DILocation(line: 329, column: 10, scope: !1114)
!1177 = !DILocation(line: 329, column: 2, scope: !1114)
!1178 = !DILocation(line: 331, column: 1, scope: !1114)
!1179 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1180, file: !1180, line: 298, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1180 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!46, !41}
!1183 = distinct !DISubprogram(name: "acpi_ev_gpe_detect", scope: !3, file: !3, line: 347, type: !1184, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!34, !508}
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1187 = !DILocalVariable(name: "gpe_xrupt_list", arg: 1, scope: !1183, file: !3, line: 347, type: !508)
!1188 = !DILocalVariable(name: "gpe_block", scope: !1183, file: !3, line: 349, type: !501)
!1189 = !DILocalVariable(name: "gpe_device", scope: !1183, file: !3, line: 350, type: !41)
!1190 = !DILocalVariable(name: "gpe_register_info", scope: !1183, file: !3, line: 351, type: !516)
!1191 = !DILocalVariable(name: "gpe_event_info", scope: !1183, file: !3, line: 352, type: !531)
!1192 = !DILocalVariable(name: "gpe_number", scope: !1183, file: !3, line: 353, type: !34)
!1193 = !DILocalVariable(name: "int_status", scope: !1183, file: !3, line: 354, type: !34)
!1194 = !DILocalVariable(name: "flags", scope: !1183, file: !3, line: 355, type: !811)
!1195 = !DILocalVariable(name: "i", scope: !1183, file: !3, line: 356, type: !34)
!1196 = !DILocalVariable(name: "j", scope: !1183, file: !3, line: 357, type: !34)
!1197 = !DILocation(line: 347, column: 52, scope: !1183)
!1198 = !DILocation(line: 349, column: 2, scope: !1183)
!1199 = !DILocation(line: 349, column: 30, scope: !1183)
!1200 = !DILocation(line: 350, column: 2, scope: !1183)
!1201 = !DILocation(line: 350, column: 30, scope: !1183)
!1202 = !DILocation(line: 351, column: 2, scope: !1183)
!1203 = !DILocation(line: 351, column: 33, scope: !1183)
!1204 = !DILocation(line: 352, column: 2, scope: !1183)
!1205 = !DILocation(line: 352, column: 30, scope: !1183)
!1206 = !DILocation(line: 353, column: 2, scope: !1183)
!1207 = !DILocation(line: 353, column: 6, scope: !1183)
!1208 = !DILocation(line: 354, column: 2, scope: !1183)
!1209 = !DILocation(line: 354, column: 6, scope: !1183)
!1210 = !DILocation(line: 355, column: 2, scope: !1183)
!1211 = !DILocation(line: 355, column: 17, scope: !1183)
!1212 = !DILocation(line: 356, column: 2, scope: !1183)
!1213 = !DILocation(line: 356, column: 6, scope: !1183)
!1214 = !DILocation(line: 357, column: 2, scope: !1183)
!1215 = !DILocation(line: 357, column: 6, scope: !1183)
!1216 = !DILocation(line: 363, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 363, column: 6)
!1218 = !DILocation(line: 363, column: 6, scope: !1183)
!1219 = !DILocation(line: 364, column: 11, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 363, column: 23)
!1221 = !DILocation(line: 364, column: 3, scope: !1220)
!1222 = !DILocation(line: 372, column: 31, scope: !1183)
!1223 = !DILocation(line: 372, column: 10, scope: !1183)
!1224 = !DILocation(line: 372, column: 8, scope: !1183)
!1225 = !DILocation(line: 376, column: 14, scope: !1183)
!1226 = !DILocation(line: 376, column: 30, scope: !1183)
!1227 = !DILocation(line: 376, column: 12, scope: !1183)
!1228 = !DILocation(line: 377, column: 2, scope: !1183)
!1229 = !DILocation(line: 377, column: 9, scope: !1183)
!1230 = !DILocation(line: 378, column: 16, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 377, column: 20)
!1232 = !DILocation(line: 378, column: 27, scope: !1231)
!1233 = !DILocation(line: 378, column: 14, scope: !1231)
!1234 = !DILocation(line: 384, column: 10, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 384, column: 3)
!1236 = !DILocation(line: 384, column: 8, scope: !1235)
!1237 = !DILocation(line: 384, column: 15, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 384, column: 3)
!1239 = !DILocation(line: 384, column: 19, scope: !1238)
!1240 = !DILocation(line: 384, column: 30, scope: !1238)
!1241 = !DILocation(line: 384, column: 17, scope: !1238)
!1242 = !DILocation(line: 384, column: 3, scope: !1235)
!1243 = !DILocation(line: 388, column: 25, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 384, column: 51)
!1245 = !DILocation(line: 388, column: 36, scope: !1244)
!1246 = !DILocation(line: 388, column: 50, scope: !1244)
!1247 = !DILocation(line: 388, column: 22, scope: !1244)
!1248 = !DILocation(line: 394, column: 10, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 394, column: 8)
!1250 = !DILocation(line: 394, column: 29, scope: !1249)
!1251 = !DILocation(line: 395, column: 10, scope: !1249)
!1252 = !DILocation(line: 395, column: 29, scope: !1249)
!1253 = !DILocation(line: 394, column: 44, scope: !1249)
!1254 = !DILocation(line: 394, column: 8, scope: !1244)
!1255 = !DILocation(line: 408, column: 5, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 395, column: 47)
!1257 = !DILocation(line: 413, column: 11, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 413, column: 4)
!1259 = !DILocation(line: 413, column: 9, scope: !1258)
!1260 = !DILocation(line: 413, column: 16, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 413, column: 4)
!1262 = !DILocation(line: 413, column: 18, scope: !1261)
!1263 = !DILocation(line: 413, column: 4, scope: !1258)
!1264 = !DILocation(line: 418, column: 10, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 413, column: 50)
!1266 = !DILocation(line: 419, column: 9, scope: !1265)
!1267 = !DILocation(line: 419, column: 32, scope: !1265)
!1268 = !DILocation(line: 419, column: 21, scope: !1265)
!1269 = !DILocation(line: 419, column: 34, scope: !1265)
!1270 = !DILocation(line: 420, column: 34, scope: !1265)
!1271 = !DILocation(line: 420, column: 32, scope: !1265)
!1272 = !DILocation(line: 417, column: 20, scope: !1265)
!1273 = !DILocation(line: 422, column: 9, scope: !1265)
!1274 = !DILocation(line: 422, column: 13, scope: !1265)
!1275 = !DILocation(line: 422, column: 32, scope: !1265)
!1276 = !DILocation(line: 422, column: 11, scope: !1265)
!1277 = !DILocation(line: 421, column: 16, scope: !1265)
!1278 = !DILocation(line: 423, column: 26, scope: !1265)
!1279 = !DILocation(line: 423, column: 45, scope: !1265)
!1280 = !DILocation(line: 423, column: 5, scope: !1265)
!1281 = !DILocation(line: 425, column: 28, scope: !1265)
!1282 = !DILocation(line: 426, column: 14, scope: !1265)
!1283 = !DILocation(line: 427, column: 14, scope: !1265)
!1284 = !DILocation(line: 425, column: 9, scope: !1265)
!1285 = !DILocation(line: 424, column: 16, scope: !1265)
!1286 = !DILocation(line: 428, column: 34, scope: !1265)
!1287 = !DILocation(line: 428, column: 13, scope: !1265)
!1288 = !DILocation(line: 428, column: 11, scope: !1265)
!1289 = !DILocation(line: 429, column: 4, scope: !1265)
!1290 = !DILocation(line: 413, column: 46, scope: !1261)
!1291 = !DILocation(line: 413, column: 4, scope: !1261)
!1292 = distinct !{!1292, !1263, !1293, !1159, !1160}
!1293 = !DILocation(line: 429, column: 4, scope: !1258)
!1294 = !DILocation(line: 430, column: 3, scope: !1244)
!1295 = !DILocation(line: 384, column: 47, scope: !1238)
!1296 = !DILocation(line: 384, column: 3, scope: !1238)
!1297 = distinct !{!1297, !1242, !1298, !1159, !1160}
!1298 = !DILocation(line: 430, column: 3, scope: !1235)
!1299 = !DILocation(line: 432, column: 15, scope: !1231)
!1300 = !DILocation(line: 432, column: 26, scope: !1231)
!1301 = !DILocation(line: 432, column: 13, scope: !1231)
!1302 = distinct !{!1302, !1228, !1303, !1159, !1160}
!1303 = !DILocation(line: 433, column: 2, scope: !1183)
!1304 = !DILocation(line: 435, column: 23, scope: !1183)
!1305 = !DILocation(line: 435, column: 42, scope: !1183)
!1306 = !DILocation(line: 435, column: 2, scope: !1183)
!1307 = !DILocation(line: 436, column: 10, scope: !1183)
!1308 = !DILocation(line: 436, column: 2, scope: !1183)
!1309 = !DILocation(line: 437, column: 1, scope: !1183)
!1310 = !DISubprogram(name: "acpi_os_acquire_lock", scope: !6, file: !6, line: 93, type: !1311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!811, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1315, line: 29, baseType: !1316)
!1315 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1315, line: 17, size: 32, elements: !1317)
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1315, line: 18, baseType: !1319, size: 32)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !1315, line: 18, size: 32, elements: !1320)
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1319, file: !1315, line: 19, baseType: !1322, size: 32)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1323, line: 14, size: 32, elements: !1324)
!1323 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1322, file: !1323, line: 15, baseType: !1326, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1327, line: 44, baseType: !1328)
!1327 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1327, line: 14, size: 32, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1328, file: !1327, line: 15, baseType: !1331, size: 32)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1328, file: !1327, line: 15, size: 32, elements: !1332)
!1332 = !{!1333, !1339, !1344}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1331, file: !1327, line: 16, baseType: !1334, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !810, line: 174, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !810, line: 172, size: 32, elements: !1336)
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1335, file: !810, line: 173, baseType: !1338, size: 32)
!1338 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1327, line: 24, baseType: !1340, size: 16)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1327, line: 24, size: 16, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1340, file: !1327, line: 25, baseType: !38, size: 8)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1340, file: !1327, line: 26, baseType: !38, size: 8, offset: 8)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1327, line: 28, baseType: !1345, size: 32)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1331, file: !1327, line: 28, size: 32, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1345, file: !1327, line: 29, baseType: !57, size: 16)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1345, file: !1327, line: 30, baseType: !57, size: 16, offset: 16)
!1349 = !DISubprogram(name: "acpi_os_release_lock", scope: !6, file: !6, line: 97, type: !1350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1313, !811}
!1352 = distinct !DISubprogram(name: "acpi_ev_detect_gpe", scope: !3, file: !3, line: 626, type: !1353, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!34, !41, !531, !34}
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1356 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1352, file: !3, line: 626, type: !41)
!1357 = !DILocalVariable(name: "gpe_event_info", arg: 2, scope: !1352, file: !3, line: 627, type: !531)
!1358 = !DILocalVariable(name: "gpe_number", arg: 3, scope: !1352, file: !3, line: 627, type: !34)
!1359 = !DILocalVariable(name: "int_status", scope: !1352, file: !3, line: 629, type: !34)
!1360 = !DILocalVariable(name: "enabled_status_byte", scope: !1352, file: !3, line: 630, type: !38)
!1361 = !DILocalVariable(name: "status_reg", scope: !1352, file: !3, line: 631, type: !74)
!1362 = !DILocalVariable(name: "enable_reg", scope: !1352, file: !3, line: 632, type: !74)
!1363 = !DILocalVariable(name: "register_bit", scope: !1352, file: !3, line: 633, type: !34)
!1364 = !DILocalVariable(name: "gpe_register_info", scope: !1352, file: !3, line: 634, type: !516)
!1365 = !DILocalVariable(name: "gpe_handler_info", scope: !1352, file: !3, line: 635, type: !539)
!1366 = !DILocalVariable(name: "flags", scope: !1352, file: !3, line: 636, type: !811)
!1367 = !DILocalVariable(name: "status", scope: !1352, file: !3, line: 637, type: !32)
!1368 = !DILabel(scope: !1352, name: "error_exit", file: !3, line: 727)
!1369 = !DILocation(line: 626, column: 48, scope: !1352)
!1370 = !DILocation(line: 627, column: 34, scope: !1352)
!1371 = !DILocation(line: 627, column: 54, scope: !1352)
!1372 = !DILocation(line: 629, column: 2, scope: !1352)
!1373 = !DILocation(line: 629, column: 6, scope: !1352)
!1374 = !DILocation(line: 630, column: 2, scope: !1352)
!1375 = !DILocation(line: 630, column: 5, scope: !1352)
!1376 = !DILocation(line: 631, column: 2, scope: !1352)
!1377 = !DILocation(line: 631, column: 6, scope: !1352)
!1378 = !DILocation(line: 632, column: 2, scope: !1352)
!1379 = !DILocation(line: 632, column: 6, scope: !1352)
!1380 = !DILocation(line: 633, column: 2, scope: !1352)
!1381 = !DILocation(line: 633, column: 6, scope: !1352)
!1382 = !DILocation(line: 634, column: 2, scope: !1352)
!1383 = !DILocation(line: 634, column: 33, scope: !1352)
!1384 = !DILocation(line: 635, column: 2, scope: !1352)
!1385 = !DILocation(line: 635, column: 32, scope: !1352)
!1386 = !DILocation(line: 636, column: 2, scope: !1352)
!1387 = !DILocation(line: 636, column: 17, scope: !1352)
!1388 = !DILocation(line: 637, column: 2, scope: !1352)
!1389 = !DILocation(line: 637, column: 14, scope: !1352)
!1390 = !DILocation(line: 641, column: 31, scope: !1352)
!1391 = !DILocation(line: 641, column: 10, scope: !1352)
!1392 = !DILocation(line: 641, column: 8, scope: !1352)
!1393 = !DILocation(line: 643, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 643, column: 6)
!1395 = !DILocation(line: 643, column: 6, scope: !1352)
!1396 = !DILocation(line: 644, column: 47, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 643, column: 23)
!1398 = !DILocation(line: 644, column: 59, scope: !1397)
!1399 = !DILocation(line: 644, column: 20, scope: !1397)
!1400 = !DILocation(line: 644, column: 18, scope: !1397)
!1401 = !DILocation(line: 645, column: 8, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 645, column: 7)
!1403 = !DILocation(line: 645, column: 7, scope: !1397)
!1404 = !DILocation(line: 646, column: 4, scope: !1402)
!1405 = !DILocation(line: 647, column: 2, scope: !1397)
!1406 = !DILocation(line: 651, column: 22, scope: !1352)
!1407 = !DILocation(line: 651, column: 38, scope: !1352)
!1408 = !DILocation(line: 651, column: 20, scope: !1352)
!1409 = !DILocation(line: 655, column: 46, scope: !1352)
!1410 = !DILocation(line: 655, column: 17, scope: !1352)
!1411 = !DILocation(line: 655, column: 15, scope: !1352)
!1412 = !DILocation(line: 659, column: 42, scope: !1352)
!1413 = !DILocation(line: 659, column: 61, scope: !1352)
!1414 = !DILocation(line: 659, column: 11, scope: !1352)
!1415 = !DILocation(line: 659, column: 9, scope: !1352)
!1416 = !DILocation(line: 660, column: 6, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 660, column: 6)
!1418 = !DILocation(line: 660, column: 6, scope: !1352)
!1419 = !DILocation(line: 661, column: 3, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 660, column: 28)
!1421 = !DILocation(line: 666, column: 42, scope: !1352)
!1422 = !DILocation(line: 666, column: 61, scope: !1352)
!1423 = !DILocation(line: 666, column: 11, scope: !1352)
!1424 = !DILocation(line: 666, column: 9, scope: !1352)
!1425 = !DILocation(line: 667, column: 6, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 667, column: 6)
!1427 = !DILocation(line: 667, column: 6, scope: !1352)
!1428 = !DILocation(line: 668, column: 3, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 667, column: 28)
!1430 = !DILocation(line: 682, column: 29, scope: !1352)
!1431 = !DILocation(line: 682, column: 42, scope: !1352)
!1432 = !DILocation(line: 682, column: 40, scope: !1352)
!1433 = !DILocation(line: 682, column: 24, scope: !1352)
!1434 = !DILocation(line: 682, column: 22, scope: !1352)
!1435 = !DILocation(line: 683, column: 8, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 683, column: 6)
!1437 = !DILocation(line: 683, column: 30, scope: !1436)
!1438 = !DILocation(line: 683, column: 28, scope: !1436)
!1439 = !DILocation(line: 683, column: 6, scope: !1352)
!1440 = !DILocation(line: 684, column: 3, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 683, column: 45)
!1442 = !DILocation(line: 689, column: 16, scope: !1352)
!1443 = !DILocation(line: 690, column: 6, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 690, column: 6)
!1445 = !DILocation(line: 690, column: 6, scope: !1352)
!1446 = !DILocation(line: 691, column: 3, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 690, column: 37)
!1448 = !DILocation(line: 692, column: 12, scope: !1447)
!1449 = !DILocation(line: 692, column: 24, scope: !1447)
!1450 = !DILocation(line: 693, column: 12, scope: !1447)
!1451 = !DILocation(line: 694, column: 2, scope: !1447)
!1452 = !DILocation(line: 698, column: 6, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 698, column: 6)
!1454 = !DILocation(line: 698, column: 52, scope: !1453)
!1455 = !DILocation(line: 698, column: 6, scope: !1352)
!1456 = !DILocation(line: 703, column: 22, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 699, column: 37)
!1458 = !DILocation(line: 703, column: 38, scope: !1457)
!1459 = !DILocation(line: 703, column: 47, scope: !1457)
!1460 = !DILocation(line: 703, column: 20, scope: !1457)
!1461 = !DILocation(line: 715, column: 24, scope: !1457)
!1462 = !DILocation(line: 715, column: 43, scope: !1457)
!1463 = !DILocation(line: 715, column: 3, scope: !1457)
!1464 = !DILocation(line: 717, column: 7, scope: !1457)
!1465 = !DILocation(line: 717, column: 25, scope: !1457)
!1466 = !DILocation(line: 717, column: 33, scope: !1457)
!1467 = !DILocation(line: 717, column: 45, scope: !1457)
!1468 = !DILocation(line: 718, column: 12, scope: !1457)
!1469 = !DILocation(line: 718, column: 30, scope: !1457)
!1470 = !DILocation(line: 716, column: 14, scope: !1457)
!1471 = !DILocation(line: 719, column: 32, scope: !1457)
!1472 = !DILocation(line: 719, column: 11, scope: !1457)
!1473 = !DILocation(line: 719, column: 9, scope: !1457)
!1474 = !DILocation(line: 720, column: 2, scope: !1457)
!1475 = !DILocation(line: 723, column: 38, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 720, column: 9)
!1477 = !DILocation(line: 724, column: 10, scope: !1476)
!1478 = !DILocation(line: 724, column: 26, scope: !1476)
!1479 = !DILocation(line: 723, column: 17, scope: !1476)
!1480 = !DILocation(line: 723, column: 14, scope: !1476)
!1481 = !DILocation(line: 699, column: 6, scope: !1453)
!1482 = !DILocation(line: 727, column: 1, scope: !1352)
!1483 = !DILocation(line: 728, column: 23, scope: !1352)
!1484 = !DILocation(line: 728, column: 42, scope: !1352)
!1485 = !DILocation(line: 728, column: 2, scope: !1352)
!1486 = !DILocation(line: 729, column: 10, scope: !1352)
!1487 = !DILocation(line: 730, column: 1, scope: !1352)
!1488 = !DILocation(line: 729, column: 2, scope: !1352)
!1489 = distinct !DISubprogram(name: "acpi_ev_finish_gpe", scope: !3, file: !3, line: 578, type: !857, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1490)
!1490 = !{!1491, !1492}
!1491 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !1489, file: !3, line: 578, type: !531)
!1492 = !DILocalVariable(name: "status", scope: !1489, file: !3, line: 580, type: !32)
!1493 = !DILocation(line: 578, column: 60, scope: !1489)
!1494 = !DILocation(line: 580, column: 2, scope: !1489)
!1495 = !DILocation(line: 580, column: 14, scope: !1489)
!1496 = !DILocation(line: 582, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 582, column: 6)
!1498 = !DILocation(line: 582, column: 23, scope: !1497)
!1499 = !DILocation(line: 582, column: 29, scope: !1497)
!1500 = !DILocation(line: 582, column: 57, scope: !1497)
!1501 = !DILocation(line: 582, column: 6, scope: !1489)
!1502 = !DILocation(line: 588, column: 30, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 583, column: 32)
!1504 = !DILocation(line: 588, column: 12, scope: !1503)
!1505 = !DILocation(line: 588, column: 10, scope: !1503)
!1506 = !DILocation(line: 589, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 589, column: 7)
!1508 = !DILocation(line: 589, column: 7, scope: !1503)
!1509 = !DILocation(line: 590, column: 12, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 589, column: 29)
!1511 = !DILocation(line: 590, column: 4, scope: !1510)
!1512 = !DILocation(line: 592, column: 2, scope: !1503)
!1513 = !DILocation(line: 599, column: 28, scope: !1489)
!1514 = !DILocation(line: 599, column: 8, scope: !1489)
!1515 = !DILocation(line: 600, column: 2, scope: !1489)
!1516 = !DILocation(line: 600, column: 18, scope: !1489)
!1517 = !DILocation(line: 600, column: 39, scope: !1489)
!1518 = !DILocation(line: 601, column: 2, scope: !1489)
!1519 = !DILocation(line: 602, column: 1, scope: !1489)
!1520 = !DISubprogram(name: "acpi_hw_gpe_read", scope: !895, file: !895, line: 81, type: !1521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!32, !729, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!1524 = distinct !DISubprogram(name: "acpi_ev_gpe_dispatch", scope: !3, file: !3, line: 748, type: !1353, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530}
!1526 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1524, file: !3, line: 748, type: !41)
!1527 = !DILocalVariable(name: "gpe_event_info", arg: 2, scope: !1524, file: !3, line: 749, type: !531)
!1528 = !DILocalVariable(name: "gpe_number", arg: 3, scope: !1524, file: !3, line: 749, type: !34)
!1529 = !DILocalVariable(name: "status", scope: !1524, file: !3, line: 751, type: !32)
!1530 = !DILocalVariable(name: "return_value", scope: !1524, file: !3, line: 752, type: !34)
!1531 = !DILocation(line: 748, column: 50, scope: !1524)
!1532 = !DILocation(line: 749, column: 36, scope: !1524)
!1533 = !DILocation(line: 749, column: 56, scope: !1524)
!1534 = !DILocation(line: 751, column: 2, scope: !1524)
!1535 = !DILocation(line: 751, column: 14, scope: !1524)
!1536 = !DILocation(line: 752, column: 2, scope: !1524)
!1537 = !DILocation(line: 752, column: 6, scope: !1524)
!1538 = !DILocation(line: 765, column: 31, scope: !1524)
!1539 = !DILocation(line: 765, column: 11, scope: !1524)
!1540 = !DILocation(line: 765, column: 9, scope: !1524)
!1541 = !DILocation(line: 766, column: 6, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 766, column: 6)
!1543 = !DILocation(line: 766, column: 6, scope: !1524)
!1544 = !DILocation(line: 767, column: 3, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 766, column: 28)
!1546 = !DILocation(line: 769, column: 3, scope: !1545)
!1547 = !DILocation(line: 776, column: 7, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 776, column: 6)
!1549 = !DILocation(line: 776, column: 23, scope: !1548)
!1550 = !DILocation(line: 776, column: 29, scope: !1548)
!1551 = !DILocation(line: 776, column: 57, scope: !1548)
!1552 = !DILocation(line: 776, column: 6, scope: !1524)
!1553 = !DILocation(line: 778, column: 30, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 777, column: 31)
!1555 = !DILocation(line: 778, column: 12, scope: !1554)
!1556 = !DILocation(line: 778, column: 10, scope: !1554)
!1557 = !DILocation(line: 779, column: 7, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 779, column: 7)
!1559 = !DILocation(line: 779, column: 7, scope: !1554)
!1560 = !DILocation(line: 780, column: 4, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 779, column: 29)
!1562 = !DILocation(line: 783, column: 30, scope: !1561)
!1563 = !DILocation(line: 783, column: 10, scope: !1561)
!1564 = !DILocation(line: 785, column: 4, scope: !1561)
!1565 = !DILocation(line: 787, column: 2, scope: !1554)
!1566 = !DILocation(line: 789, column: 2, scope: !1524)
!1567 = !DILocation(line: 789, column: 18, scope: !1524)
!1568 = !DILocation(line: 789, column: 39, scope: !1524)
!1569 = !DILocation(line: 798, column: 10, scope: !1524)
!1570 = !DILocation(line: 798, column: 2, scope: !1524)
!1571 = !DILocation(line: 804, column: 7, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 798, column: 57)
!1573 = !DILocation(line: 804, column: 23, scope: !1572)
!1574 = !DILocation(line: 804, column: 32, scope: !1572)
!1575 = !DILocation(line: 804, column: 41, scope: !1572)
!1576 = !DILocation(line: 804, column: 49, scope: !1572)
!1577 = !DILocation(line: 805, column: 14, scope: !1572)
!1578 = !DILocation(line: 806, column: 14, scope: !1572)
!1579 = !DILocation(line: 807, column: 14, scope: !1572)
!1580 = !DILocation(line: 807, column: 23, scope: !1572)
!1581 = !DILocation(line: 808, column: 14, scope: !1572)
!1582 = !DILocation(line: 803, column: 16, scope: !1572)
!1583 = !DILocation(line: 812, column: 7, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 812, column: 7)
!1585 = !DILocation(line: 812, column: 20, scope: !1584)
!1586 = !DILocation(line: 812, column: 7, scope: !1572)
!1587 = !DILocation(line: 813, column: 29, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 812, column: 41)
!1589 = !DILocation(line: 813, column: 10, scope: !1588)
!1590 = !DILocation(line: 814, column: 3, scope: !1588)
!1591 = !DILocation(line: 815, column: 3, scope: !1572)
!1592 = !DILocation(line: 825, column: 7, scope: !1572)
!1593 = !DILocation(line: 823, column: 12, scope: !1572)
!1594 = !DILocation(line: 823, column: 10, scope: !1572)
!1595 = !DILocation(line: 826, column: 7, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 826, column: 7)
!1597 = !DILocation(line: 826, column: 7, scope: !1572)
!1598 = !DILocation(line: 827, column: 4, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 826, column: 29)
!1600 = !DILocation(line: 830, column: 3, scope: !1599)
!1601 = !DILocation(line: 831, column: 3, scope: !1572)
!1602 = !DILocation(line: 839, column: 3, scope: !1572)
!1603 = !DILocation(line: 843, column: 3, scope: !1572)
!1604 = !DILocation(line: 846, column: 2, scope: !1524)
!1605 = !DILocation(line: 847, column: 1, scope: !1524)
!1606 = !DISubprogram(name: "acpi_exception", scope: !1607, file: !1607, line: 906, type: !1608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1607 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1608 = !DISubroutineType(types: !1609)
!1609 = !{null, !1610, !34, !32, !1610, null}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!1611 = !DISubprogram(name: "acpi_os_execute", scope: !6, file: !6, line: 247, type: !1612, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!32, !1614, !1615, !126}
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_execute_type", file: !6, line: 28, baseType: !5)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_osd_exec_callback", file: !33, line: 1038, baseType: !1616)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !126}
!1619 = distinct !DISubprogram(name: "acpi_ev_asynch_execute_gpe_method", scope: !3, file: !3, line: 455, type: !1617, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1689, !1690}
!1621 = !DILocalVariable(name: "context", arg: 1, scope: !1619, file: !3, line: 455, type: !126)
!1622 = !DILocalVariable(name: "gpe_event_info", scope: !1619, file: !3, line: 457, type: !531)
!1623 = !DILocalVariable(name: "status", scope: !1619, file: !3, line: 458, type: !32)
!1624 = !DILocalVariable(name: "info", scope: !1619, file: !3, line: 459, type: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !151, line: 152, size: 704, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1634, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1626, file: !151, line: 155, baseType: !41, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1626, file: !151, line: 156, baseType: !1610, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1626, file: !151, line: 157, baseType: !113, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1626, file: !151, line: 159, baseType: !41, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1626, file: !151, line: 160, baseType: !46, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1626, file: !151, line: 161, baseType: !86, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1626, file: !151, line: 163, baseType: !1635, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !43, line: 351, size: 56, elements: !1638)
!1638 = !{!1639, !1645, !1654, !1662, !1671}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1637, file: !43, line: 352, baseType: !1640, size: 56)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !43, line: 295, size: 56, elements: !1641)
!1641 = !{!1642, !1643, !1644}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1640, file: !43, line: 296, baseType: !243, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1640, file: !43, line: 297, baseType: !57, size: 16, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1640, file: !43, line: 298, baseType: !38, size: 8, offset: 48)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1637, file: !43, line: 353, baseType: !1646, size: 56)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !43, line: 314, size: 56, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1651, !1652, !1653}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1646, file: !43, line: 315, baseType: !38, size: 8)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1646, file: !43, line: 316, baseType: !38, size: 8, offset: 8)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1646, file: !43, line: 317, baseType: !38, size: 8, offset: 16)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1646, file: !43, line: 318, baseType: !38, size: 8, offset: 24)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1646, file: !43, line: 319, baseType: !38, size: 8, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1646, file: !43, line: 320, baseType: !57, size: 16, offset: 40)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1637, file: !43, line: 354, baseType: !1655, size: 56)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !43, line: 325, size: 56, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1661}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1655, file: !43, line: 326, baseType: !38, size: 8)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1655, file: !43, line: 327, baseType: !38, size: 8, offset: 8)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1655, file: !43, line: 328, baseType: !1660, size: 32, offset: 16)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !244)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1655, file: !43, line: 329, baseType: !38, size: 8, offset: 48)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1637, file: !43, line: 355, baseType: !1663, size: 56)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !43, line: 334, size: 56, elements: !1664)
!1664 = !{!1665, !1666, !1667, !1669, !1670}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1663, file: !43, line: 335, baseType: !38, size: 8)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1663, file: !43, line: 336, baseType: !38, size: 8, offset: 8)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1663, file: !43, line: 337, baseType: !1668, size: 16, offset: 16)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16, elements: !487)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1663, file: !43, line: 338, baseType: !38, size: 8, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1663, file: !43, line: 339, baseType: !57, size: 16, offset: 40)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1637, file: !43, line: 356, baseType: !1672, size: 56)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !43, line: 342, size: 56, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1672, file: !43, line: 343, baseType: !38, size: 8)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1672, file: !43, line: 344, baseType: !38, size: 8, offset: 8)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1672, file: !43, line: 345, baseType: !38, size: 8, offset: 16)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1672, file: !43, line: 346, baseType: !38, size: 8, offset: 24)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1672, file: !43, line: 347, baseType: !38, size: 8, offset: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1672, file: !43, line: 348, baseType: !57, size: 16, offset: 40)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1626, file: !151, line: 164, baseType: !46, size: 64, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1626, file: !151, line: 165, baseType: !46, size: 64, offset: 512)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1626, file: !151, line: 167, baseType: !34, size: 32, offset: 576)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1626, file: !151, line: 168, baseType: !34, size: 32, offset: 608)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1626, file: !151, line: 169, baseType: !57, size: 16, offset: 640)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1626, file: !151, line: 170, baseType: !57, size: 16, offset: 656)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1626, file: !151, line: 171, baseType: !38, size: 8, offset: 672)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1626, file: !151, line: 172, baseType: !38, size: 8, offset: 680)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1626, file: !151, line: 173, baseType: !38, size: 8, offset: 688)
!1689 = !DILocalVariable(name: "notify", scope: !1619, file: !3, line: 460, type: !552)
!1690 = !DILabel(scope: !1619, name: "error_exit", file: !3, line: 532)
!1691 = !DILocation(line: 455, column: 71, scope: !1619)
!1692 = !DILocation(line: 457, column: 2, scope: !1619)
!1693 = !DILocation(line: 457, column: 30, scope: !1619)
!1694 = !DILocation(line: 457, column: 47, scope: !1619)
!1695 = !DILocation(line: 458, column: 2, scope: !1619)
!1696 = !DILocation(line: 458, column: 14, scope: !1619)
!1697 = !DILocation(line: 459, column: 2, scope: !1619)
!1698 = !DILocation(line: 459, column: 29, scope: !1619)
!1699 = !DILocation(line: 460, column: 2, scope: !1619)
!1700 = !DILocation(line: 460, column: 31, scope: !1619)
!1701 = !DILocation(line: 466, column: 10, scope: !1619)
!1702 = !DILocation(line: 466, column: 2, scope: !1619)
!1703 = !DILocation(line: 479, column: 12, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 466, column: 57)
!1705 = !DILocation(line: 479, column: 28, scope: !1704)
!1706 = !DILocation(line: 479, column: 37, scope: !1704)
!1707 = !DILocation(line: 479, column: 10, scope: !1704)
!1708 = !DILocation(line: 480, column: 3, scope: !1704)
!1709 = !DILocation(line: 480, column: 10, scope: !1704)
!1710 = !DILocation(line: 480, column: 31, scope: !1704)
!1711 = !DILocation(line: 480, column: 34, scope: !1704)
!1712 = !DILocation(line: 0, scope: !1704)
!1713 = !DILocation(line: 482, column: 37, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 480, column: 42)
!1715 = !DILocation(line: 482, column: 45, scope: !1714)
!1716 = !DILocation(line: 482, column: 8, scope: !1714)
!1717 = !DILocation(line: 481, column: 11, scope: !1714)
!1718 = !DILocation(line: 485, column: 13, scope: !1714)
!1719 = !DILocation(line: 485, column: 21, scope: !1714)
!1720 = !DILocation(line: 485, column: 11, scope: !1714)
!1721 = distinct !{!1721, !1708, !1722, !1159, !1160}
!1722 = !DILocation(line: 486, column: 3, scope: !1704)
!1723 = !DILocation(line: 488, column: 3, scope: !1704)
!1724 = !DILocation(line: 494, column: 10, scope: !1704)
!1725 = !DILocation(line: 494, column: 8, scope: !1704)
!1726 = !DILocation(line: 495, column: 8, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 495, column: 7)
!1728 = !DILocation(line: 495, column: 7, scope: !1704)
!1729 = !DILocation(line: 496, column: 11, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 495, column: 14)
!1731 = !DILocation(line: 497, column: 3, scope: !1730)
!1732 = !DILocation(line: 503, column: 8, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 497, column: 10)
!1734 = !DILocation(line: 503, column: 24, scope: !1733)
!1735 = !DILocation(line: 503, column: 33, scope: !1733)
!1736 = !DILocation(line: 502, column: 4, scope: !1733)
!1737 = !DILocation(line: 502, column: 10, scope: !1733)
!1738 = !DILocation(line: 502, column: 22, scope: !1733)
!1739 = !DILocation(line: 504, column: 4, scope: !1733)
!1740 = !DILocation(line: 504, column: 10, scope: !1733)
!1741 = !DILocation(line: 504, column: 16, scope: !1733)
!1742 = !DILocation(line: 506, column: 30, scope: !1733)
!1743 = !DILocation(line: 506, column: 13, scope: !1733)
!1744 = !DILocation(line: 506, column: 11, scope: !1733)
!1745 = !DILocation(line: 507, column: 4, scope: !1733)
!1746 = !DILocation(line: 510, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 510, column: 7)
!1748 = !DILocation(line: 510, column: 7, scope: !1704)
!1749 = !DILocation(line: 511, column: 4, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 510, column: 29)
!1751 = !DILocation(line: 516, column: 3, scope: !1750)
!1752 = !DILocation(line: 517, column: 3, scope: !1704)
!1753 = !DILocation(line: 521, column: 3, scope: !1704)
!1754 = !DILocation(line: 527, column: 33, scope: !1619)
!1755 = !DILocation(line: 526, column: 11, scope: !1619)
!1756 = !DILocation(line: 526, column: 9, scope: !1619)
!1757 = !DILocation(line: 528, column: 6, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 528, column: 6)
!1759 = !DILocation(line: 528, column: 6, scope: !1619)
!1760 = !DILocation(line: 529, column: 3, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 528, column: 28)
!1762 = !DILocation(line: 532, column: 1, scope: !1619)
!1763 = !DILocation(line: 533, column: 28, scope: !1619)
!1764 = !DILocation(line: 533, column: 2, scope: !1619)
!1765 = !DILocation(line: 534, column: 2, scope: !1619)
!1766 = !DILocation(line: 535, column: 1, scope: !1619)
!1767 = !DISubprogram(name: "acpi_error", scope: !1607, file: !1607, line: 901, type: !1768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !1610, !34, !1610, null}
!1770 = !DISubprogram(name: "acpi_ev_queue_notify_request", scope: !1771, file: !1771, line: 44, type: !1772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1771 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!32, !41, !34}
!1774 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1775, file: !1775, line: 55, type: !1776, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1778)
!1775 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!126, !808}
!1778 = !{!1779, !1780, !1782, !1785, !1786, !1789}
!1779 = !DILocalVariable(name: "size", arg: 1, scope: !1774, file: !1775, line: 55, type: !808)
!1780 = !DILocalVariable(name: "_flags", scope: !1781, file: !1775, line: 57, type: !811)
!1781 = distinct !DILexicalBlock(scope: !1774, file: !1775, line: 57, column: 23)
!1782 = !DILocalVariable(name: "__dummy", scope: !1783, file: !1775, line: 57, type: !811)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !1775, line: 57, column: 23)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !1775, line: 57, column: 23)
!1785 = !DILocalVariable(name: "__dummy2", scope: !1783, file: !1775, line: 57, type: !811)
!1786 = !DILocalVariable(name: "__dummy", scope: !1787, file: !1775, line: 57, type: !811)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !1775, line: 57, column: 23)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !1775, line: 57, column: 23)
!1789 = !DILocalVariable(name: "__dummy2", scope: !1787, file: !1775, line: 57, type: !811)
!1790 = !DILocation(line: 55, column: 55, scope: !1774)
!1791 = !DILocation(line: 57, column: 17, scope: !1774)
!1792 = !DILocation(line: 57, column: 23, scope: !1781)
!1793 = !DILocation(line: 57, column: 23, scope: !1783)
!1794 = !DILocation(line: 57, column: 23, scope: !1784)
!1795 = !DILocation(line: 57, column: 23, scope: !1787)
!1796 = !DILocation(line: 57, column: 23, scope: !1788)
!1797 = !DILocation(line: 57, column: 23, scope: !1774)
!1798 = !DILocation(line: 57, column: 9, scope: !1774)
!1799 = !DILocation(line: 57, column: 2, scope: !1774)
!1800 = !DISubprogram(name: "acpi_ns_evaluate", scope: !1180, file: !1180, line: 208, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!32, !1625}
!1803 = distinct !DISubprogram(name: "acpi_os_free", scope: !1775, file: !1775, line: 60, type: !1617, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1804)
!1804 = !{!1805}
!1805 = !DILocalVariable(name: "memory", arg: 1, scope: !1803, file: !1775, line: 60, type: !126)
!1806 = !DILocation(line: 60, column: 39, scope: !1803)
!1807 = !DILocation(line: 62, column: 8, scope: !1803)
!1808 = !DILocation(line: 62, column: 2, scope: !1803)
!1809 = !DILocation(line: 63, column: 1, scope: !1803)
!1810 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1811, file: !1811, line: 227, type: !1812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1811 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!1610, !126}
!1814 = distinct !DISubprogram(name: "acpi_ev_asynch_enable_gpe", scope: !3, file: !3, line: 552, type: !1617, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1815)
!1815 = !{!1816, !1817, !1818}
!1816 = !DILocalVariable(name: "context", arg: 1, scope: !1814, file: !3, line: 552, type: !126)
!1817 = !DILocalVariable(name: "gpe_event_info", scope: !1814, file: !3, line: 554, type: !531)
!1818 = !DILocalVariable(name: "flags", scope: !1814, file: !3, line: 555, type: !811)
!1819 = !DILocation(line: 552, column: 63, scope: !1814)
!1820 = !DILocation(line: 554, column: 2, scope: !1814)
!1821 = !DILocation(line: 554, column: 30, scope: !1814)
!1822 = !DILocation(line: 554, column: 47, scope: !1814)
!1823 = !DILocation(line: 555, column: 2, scope: !1814)
!1824 = !DILocation(line: 555, column: 17, scope: !1814)
!1825 = !DILocation(line: 557, column: 31, scope: !1814)
!1826 = !DILocation(line: 557, column: 10, scope: !1814)
!1827 = !DILocation(line: 557, column: 8, scope: !1814)
!1828 = !DILocation(line: 558, column: 27, scope: !1814)
!1829 = !DILocation(line: 558, column: 8, scope: !1814)
!1830 = !DILocation(line: 559, column: 23, scope: !1814)
!1831 = !DILocation(line: 559, column: 42, scope: !1814)
!1832 = !DILocation(line: 559, column: 2, scope: !1814)
!1833 = !DILocation(line: 562, column: 1, scope: !1814)
!1834 = distinct !DISubprogram(name: "kzalloc", scope: !22, file: !22, line: 719, type: !1835, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1841)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!126, !1837, !809}
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !810, line: 61, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1839, line: 72, baseType: !1840)
!1839 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1839, line: 16, baseType: !811)
!1841 = !{!1842, !1843}
!1842 = !DILocalVariable(name: "size", arg: 1, scope: !1834, file: !22, line: 719, type: !1837)
!1843 = !DILocalVariable(name: "flags", arg: 2, scope: !1834, file: !22, line: 719, type: !809)
!1844 = !DILocation(line: 719, column: 52, scope: !1834)
!1845 = !DILocation(line: 719, column: 64, scope: !1834)
!1846 = !DILocation(line: 721, column: 17, scope: !1834)
!1847 = !DILocation(line: 721, column: 23, scope: !1834)
!1848 = !DILocation(line: 721, column: 29, scope: !1834)
!1849 = !DILocation(line: 721, column: 9, scope: !1834)
!1850 = !DILocation(line: 721, column: 2, scope: !1834)
!1851 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1852, file: !1852, line: 65, type: !1853, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1852 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!811}
!1855 = !DILocation(line: 67, column: 9, scope: !1851)
!1856 = !DILocation(line: 67, column: 2, scope: !1851)
!1857 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1852, file: !1852, line: 120, type: !1858, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1338, !811}
!1860 = !{!1861}
!1861 = !DILocalVariable(name: "flags", arg: 1, scope: !1857, file: !1852, line: 120, type: !811)
!1862 = !DILocation(line: 120, column: 67, scope: !1857)
!1863 = !DILocation(line: 122, column: 11, scope: !1857)
!1864 = !DILocation(line: 122, column: 17, scope: !1857)
!1865 = !DILocation(line: 122, column: 9, scope: !1857)
!1866 = !DILocation(line: 122, column: 2, scope: !1857)
!1867 = distinct !DISubprogram(name: "kmalloc", scope: !22, file: !22, line: 591, type: !1835, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1868)
!1868 = !{!1869, !1870, !1871}
!1869 = !DILocalVariable(name: "size", arg: 1, scope: !1867, file: !22, line: 591, type: !1837)
!1870 = !DILocalVariable(name: "flags", arg: 2, scope: !1867, file: !22, line: 591, type: !809)
!1871 = !DILocalVariable(name: "index", scope: !1872, file: !22, line: 594, type: !7)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !22, line: 593, column: 42)
!1873 = distinct !DILexicalBlock(scope: !1867, file: !22, line: 593, column: 6)
!1874 = !DILocation(line: 591, column: 61, scope: !1867)
!1875 = !DILocation(line: 591, column: 73, scope: !1867)
!1876 = !DILocation(line: 593, column: 27, scope: !1873)
!1877 = !DILocation(line: 593, column: 6, scope: !1873)
!1878 = !DILocation(line: 593, column: 33, scope: !1873)
!1879 = !DILocation(line: 593, column: 36, scope: !1873)
!1880 = !DILocation(line: 593, column: 6, scope: !1867)
!1881 = !DILocation(line: 594, column: 3, scope: !1872)
!1882 = !DILocation(line: 594, column: 16, scope: !1872)
!1883 = !DILocation(line: 596, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1872, file: !22, line: 596, column: 7)
!1885 = !DILocation(line: 596, column: 12, scope: !1884)
!1886 = !DILocation(line: 596, column: 7, scope: !1872)
!1887 = !DILocation(line: 597, column: 25, scope: !1884)
!1888 = !DILocation(line: 597, column: 31, scope: !1884)
!1889 = !DILocation(line: 597, column: 11, scope: !1884)
!1890 = !DILocation(line: 597, column: 4, scope: !1884)
!1891 = !DILocation(line: 599, column: 11, scope: !1872)
!1892 = !DILocation(line: 599, column: 9, scope: !1872)
!1893 = !DILocation(line: 601, column: 33, scope: !1872)
!1894 = !DILocation(line: 601, column: 40, scope: !1872)
!1895 = !DILocation(line: 601, column: 20, scope: !1872)
!1896 = !DILocation(line: 601, column: 5, scope: !1872)
!1897 = !DILocation(line: 601, column: 51, scope: !1872)
!1898 = !DILocation(line: 602, column: 5, scope: !1872)
!1899 = !DILocation(line: 602, column: 12, scope: !1872)
!1900 = !DILocation(line: 600, column: 10, scope: !1872)
!1901 = !DILocation(line: 600, column: 3, scope: !1872)
!1902 = !DILocation(line: 603, column: 2, scope: !1873)
!1903 = !DILocation(line: 604, column: 19, scope: !1867)
!1904 = !DILocation(line: 604, column: 25, scope: !1867)
!1905 = !DILocation(line: 604, column: 9, scope: !1867)
!1906 = !DILocation(line: 604, column: 2, scope: !1867)
!1907 = !DILocation(line: 605, column: 1, scope: !1867)
!1908 = !DISubprogram(name: "kmalloc_large", scope: !22, file: !22, line: 531, type: !1835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1909 = distinct !DISubprogram(name: "__kmalloc_index", scope: !22, file: !22, line: 444, type: !1910, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1914)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!7, !1837, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !810, line: 35, baseType: !1913)
!1913 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1914 = !{!1915, !1916}
!1915 = !DILocalVariable(name: "size", arg: 1, scope: !1909, file: !22, line: 444, type: !1837)
!1916 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1909, file: !22, line: 445, type: !1912)
!1917 = !DILocation(line: 444, column: 60, scope: !1909)
!1918 = !DILocation(line: 445, column: 16, scope: !1909)
!1919 = !DILocation(line: 447, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 447, column: 6)
!1921 = !DILocation(line: 447, column: 6, scope: !1909)
!1922 = !DILocation(line: 448, column: 3, scope: !1920)
!1923 = !DILocation(line: 450, column: 6, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 450, column: 6)
!1925 = !DILocation(line: 450, column: 11, scope: !1924)
!1926 = !DILocation(line: 450, column: 6, scope: !1909)
!1927 = !DILocation(line: 451, column: 3, scope: !1924)
!1928 = !DILocation(line: 453, column: 32, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 453, column: 6)
!1930 = !DILocation(line: 453, column: 37, scope: !1929)
!1931 = !DILocation(line: 453, column: 42, scope: !1929)
!1932 = !DILocation(line: 453, column: 45, scope: !1929)
!1933 = !DILocation(line: 453, column: 50, scope: !1929)
!1934 = !DILocation(line: 453, column: 6, scope: !1909)
!1935 = !DILocation(line: 454, column: 3, scope: !1929)
!1936 = !DILocation(line: 455, column: 32, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 455, column: 6)
!1938 = !DILocation(line: 455, column: 37, scope: !1937)
!1939 = !DILocation(line: 455, column: 43, scope: !1937)
!1940 = !DILocation(line: 455, column: 46, scope: !1937)
!1941 = !DILocation(line: 455, column: 51, scope: !1937)
!1942 = !DILocation(line: 455, column: 6, scope: !1909)
!1943 = !DILocation(line: 456, column: 3, scope: !1937)
!1944 = !DILocation(line: 457, column: 6, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 457, column: 6)
!1946 = !DILocation(line: 457, column: 11, scope: !1945)
!1947 = !DILocation(line: 457, column: 6, scope: !1909)
!1948 = !DILocation(line: 457, column: 26, scope: !1945)
!1949 = !DILocation(line: 458, column: 6, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 458, column: 6)
!1951 = !DILocation(line: 458, column: 11, scope: !1950)
!1952 = !DILocation(line: 458, column: 6, scope: !1909)
!1953 = !DILocation(line: 458, column: 26, scope: !1950)
!1954 = !DILocation(line: 459, column: 6, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 459, column: 6)
!1956 = !DILocation(line: 459, column: 11, scope: !1955)
!1957 = !DILocation(line: 459, column: 6, scope: !1909)
!1958 = !DILocation(line: 459, column: 26, scope: !1955)
!1959 = !DILocation(line: 460, column: 6, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 460, column: 6)
!1961 = !DILocation(line: 460, column: 11, scope: !1960)
!1962 = !DILocation(line: 460, column: 6, scope: !1909)
!1963 = !DILocation(line: 460, column: 26, scope: !1960)
!1964 = !DILocation(line: 461, column: 6, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 461, column: 6)
!1966 = !DILocation(line: 461, column: 11, scope: !1965)
!1967 = !DILocation(line: 461, column: 6, scope: !1909)
!1968 = !DILocation(line: 461, column: 26, scope: !1965)
!1969 = !DILocation(line: 462, column: 6, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 462, column: 6)
!1971 = !DILocation(line: 462, column: 11, scope: !1970)
!1972 = !DILocation(line: 462, column: 6, scope: !1909)
!1973 = !DILocation(line: 462, column: 26, scope: !1970)
!1974 = !DILocation(line: 463, column: 6, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 463, column: 6)
!1976 = !DILocation(line: 463, column: 11, scope: !1975)
!1977 = !DILocation(line: 463, column: 6, scope: !1909)
!1978 = !DILocation(line: 463, column: 26, scope: !1975)
!1979 = !DILocation(line: 464, column: 6, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 464, column: 6)
!1981 = !DILocation(line: 464, column: 11, scope: !1980)
!1982 = !DILocation(line: 464, column: 6, scope: !1909)
!1983 = !DILocation(line: 464, column: 26, scope: !1980)
!1984 = !DILocation(line: 465, column: 6, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 465, column: 6)
!1986 = !DILocation(line: 465, column: 11, scope: !1985)
!1987 = !DILocation(line: 465, column: 6, scope: !1909)
!1988 = !DILocation(line: 465, column: 26, scope: !1985)
!1989 = !DILocation(line: 466, column: 6, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 466, column: 6)
!1991 = !DILocation(line: 466, column: 11, scope: !1990)
!1992 = !DILocation(line: 466, column: 6, scope: !1909)
!1993 = !DILocation(line: 466, column: 26, scope: !1990)
!1994 = !DILocation(line: 467, column: 6, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 467, column: 6)
!1996 = !DILocation(line: 467, column: 11, scope: !1995)
!1997 = !DILocation(line: 467, column: 6, scope: !1909)
!1998 = !DILocation(line: 467, column: 26, scope: !1995)
!1999 = !DILocation(line: 468, column: 6, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 468, column: 6)
!2001 = !DILocation(line: 468, column: 11, scope: !2000)
!2002 = !DILocation(line: 468, column: 6, scope: !1909)
!2003 = !DILocation(line: 468, column: 26, scope: !2000)
!2004 = !DILocation(line: 469, column: 6, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 469, column: 6)
!2006 = !DILocation(line: 469, column: 11, scope: !2005)
!2007 = !DILocation(line: 469, column: 6, scope: !1909)
!2008 = !DILocation(line: 469, column: 26, scope: !2005)
!2009 = !DILocation(line: 470, column: 6, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 470, column: 6)
!2011 = !DILocation(line: 470, column: 11, scope: !2010)
!2012 = !DILocation(line: 470, column: 6, scope: !1909)
!2013 = !DILocation(line: 470, column: 26, scope: !2010)
!2014 = !DILocation(line: 471, column: 6, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 471, column: 6)
!2016 = !DILocation(line: 471, column: 11, scope: !2015)
!2017 = !DILocation(line: 471, column: 6, scope: !1909)
!2018 = !DILocation(line: 471, column: 26, scope: !2015)
!2019 = !DILocation(line: 472, column: 6, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 472, column: 6)
!2021 = !DILocation(line: 472, column: 11, scope: !2020)
!2022 = !DILocation(line: 472, column: 6, scope: !1909)
!2023 = !DILocation(line: 472, column: 26, scope: !2020)
!2024 = !DILocation(line: 473, column: 6, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 473, column: 6)
!2026 = !DILocation(line: 473, column: 11, scope: !2025)
!2027 = !DILocation(line: 473, column: 6, scope: !1909)
!2028 = !DILocation(line: 473, column: 26, scope: !2025)
!2029 = !DILocation(line: 474, column: 6, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 474, column: 6)
!2031 = !DILocation(line: 474, column: 11, scope: !2030)
!2032 = !DILocation(line: 474, column: 6, scope: !1909)
!2033 = !DILocation(line: 474, column: 27, scope: !2030)
!2034 = !DILocation(line: 475, column: 6, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 475, column: 6)
!2036 = !DILocation(line: 475, column: 11, scope: !2035)
!2037 = !DILocation(line: 475, column: 6, scope: !1909)
!2038 = !DILocation(line: 475, column: 32, scope: !2035)
!2039 = !DILocation(line: 477, column: 50, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1909, file: !22, line: 477, column: 6)
!2041 = !{i8 0, i8 2}
!2042 = !{}
!2043 = !DILocation(line: 477, column: 6, scope: !1909)
!2044 = !DILocation(line: 478, column: 3, scope: !2040)
!2045 = !DILocation(line: 478, column: 3, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !22, line: 478, column: 3)
!2047 = distinct !DILexicalBlock(scope: !2040, file: !22, line: 478, column: 3)
!2048 = !{i32 -2143025273}
!2049 = !DILocation(line: 478, column: 3, scope: !2047)
!2050 = !DILocation(line: 480, column: 3, scope: !2040)
!2051 = !DILocation(line: 480, column: 3, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2040, file: !22, line: 480, column: 3)
!2053 = !DILocation(line: 480, column: 3, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2052, file: !22, line: 480, column: 3)
!2055 = !DILocation(line: 480, column: 3, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2052, file: !22, line: 480, column: 3)
!2057 = !{i64 2151942226, i64 2151942255, i64 2151942301, i64 2151942359, i64 2151942413, i64 2151942467, i64 2151942522, i64 2151942553}
!2058 = !DILocation(line: 483, column: 2, scope: !1909)
!2059 = !DILocation(line: 484, column: 1, scope: !1909)
!2060 = !DISubprogram(name: "kmalloc_trace", scope: !22, file: !22, line: 525, type: !2061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!126, !2063, !809, !1837}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2065, line: 11, flags: DIFlagFwdDecl)
!2065 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2066 = distinct !DISubprogram(name: "kmalloc_type", scope: !22, file: !22, line: 401, type: !2067, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!21, !809, !811}
!2069 = !{!2070, !2071}
!2070 = !DILocalVariable(name: "flags", arg: 1, scope: !2066, file: !22, line: 401, type: !809)
!2071 = !DILocalVariable(name: "caller", arg: 2, scope: !2066, file: !22, line: 401, type: !811)
!2072 = !DILocation(line: 401, column: 67, scope: !2066)
!2073 = !DILocation(line: 401, column: 88, scope: !2066)
!2074 = !DILocation(line: 407, column: 6, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2066, file: !22, line: 407, column: 6)
!2076 = !DILocation(line: 407, column: 6, scope: !2066)
!2077 = !DILocation(line: 413, column: 3, scope: !2075)
!2078 = !DILocation(line: 423, column: 38, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2066, file: !22, line: 423, column: 6)
!2080 = !DILocation(line: 423, column: 44, scope: !2079)
!2081 = !DILocation(line: 423, column: 6, scope: !2066)
!2082 = !DILocation(line: 424, column: 3, scope: !2079)
!2083 = !DILocation(line: 426, column: 3, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2066, file: !22, line: 425, column: 6)
!2085 = !DILocation(line: 429, column: 1, scope: !2066)
!2086 = !DISubprogram(name: "__kmalloc", scope: !22, file: !22, line: 488, type: !1835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2087 = !DISubprogram(name: "__compiletime_assert_173", scope: !22, file: !22, line: 478, type: !2088, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{null}
!2090 = distinct !DISubprogram(name: "native_save_fl", scope: !1852, file: !1852, line: 17, type: !1853, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2091)
!2091 = !{!2092}
!2092 = !DILocalVariable(name: "flags", scope: !2090, file: !1852, line: 19, type: !811)
!2093 = !DILocation(line: 19, column: 2, scope: !2090)
!2094 = !DILocation(line: 19, column: 16, scope: !2090)
!2095 = !DILocation(line: 26, column: 2, scope: !2090)
!2096 = !{i64 1532145, i64 1532166}
!2097 = !DILocation(line: 32, column: 9, scope: !2090)
!2098 = !DILocation(line: 33, column: 1, scope: !2090)
!2099 = !DILocation(line: 32, column: 2, scope: !2090)
!2100 = !DISubprogram(name: "kfree", scope: !22, file: !22, line: 227, type: !2101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
