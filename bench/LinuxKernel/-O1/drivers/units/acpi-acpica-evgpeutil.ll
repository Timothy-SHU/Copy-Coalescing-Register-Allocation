; ModuleID = 'drivers/acpi/acpica/evgpeutil.c'
source_filename = "drivers/acpi/acpica/evgpeutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_gpe_xrupt_info = type { ptr, ptr, ptr, i32 }
%struct.acpi_gpe_block_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i8, i8 }
%struct.acpi_gpe_device_info = type { i32, i32, i32, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, ptr, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { ptr }
%struct.acpi_gpe_notify_info = type { ptr, ptr }

@acpi_gbl_gpe_lock = external dso_local global ptr, align 8
@acpi_gbl_gpe_xrupt_list_head = external dso_local global ptr, align 8
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@_acpi_module_name = internal constant [10 x i8] c"evgpeutil\00", align 1, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"Could not install GPE interrupt handler at level 0x%X\00", align 1, !dbg !39
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !45

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_walk_gpe_list(ptr noundef %gpe_walk_callback, ptr noundef %context) #0 align 16 !dbg !63 {
entry:
  %gpe_walk_callback.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %gpe_block = alloca ptr, align 8
  %gpe_xrupt_info = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  store ptr %gpe_walk_callback, ptr %gpe_walk_callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_walk_callback.addr, metadata !834, metadata !DIExpression()), !dbg !841
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !835, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_block) #13, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %gpe_block, metadata !836, metadata !DIExpression()), !dbg !844
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_xrupt_info) #13, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info, metadata !837, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %status, metadata !838, metadata !DIExpression()), !dbg !848
  store i32 0, ptr %status, align 4, !dbg !848
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !849
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !839, metadata !DIExpression()), !dbg !850
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !851
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #14, !dbg !852
  store i64 %call, ptr %flags, align 8, !dbg !853
  %1 = load ptr, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !854
  store ptr %1, ptr %gpe_xrupt_info, align 8, !dbg !855
  br label %while.cond, !dbg !856

while.cond:                                       ; preds = %while.end, %entry
  %2 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !857
  %tobool = icmp ne ptr %2, null, !dbg !856
  br i1 %tobool, label %while.body, label %while.end9, !dbg !856

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !858
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %3, i32 0, i32 2, !dbg !860
  %4 = load ptr, ptr %gpe_block_list_head, align 8, !dbg !860
  store ptr %4, ptr %gpe_block, align 8, !dbg !861
  br label %while.cond1, !dbg !862

while.cond1:                                      ; preds = %if.end7, %while.body
  %5 = load ptr, ptr %gpe_block, align 8, !dbg !863
  %tobool2 = icmp ne ptr %5, null, !dbg !862
  br i1 %tobool2, label %while.body3, label %while.end, !dbg !862

while.body3:                                      ; preds = %while.cond1
  %6 = load ptr, ptr %gpe_walk_callback.addr, align 8, !dbg !864
  %7 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !866
  %8 = load ptr, ptr %gpe_block, align 8, !dbg !867
  %9 = load ptr, ptr %context.addr, align 8, !dbg !868
  %call4 = call i32 %6(ptr noundef %7, ptr noundef %8, ptr noundef %9) #14, !dbg !864
  store i32 %call4, ptr %status, align 4, !dbg !869
  %10 = load i32, ptr %status, align 4, !dbg !870
  %tobool5 = icmp ne i32 %10, 0, !dbg !870
  br i1 %tobool5, label %if.then, label %if.end7, !dbg !872

if.then:                                          ; preds = %while.body3
  %11 = load i32, ptr %status, align 4, !dbg !873
  %cmp = icmp eq i32 %11, 16391, !dbg !876
  br i1 %cmp, label %if.then6, label %if.end, !dbg !877

if.then6:                                         ; preds = %if.then
  store i32 0, ptr %status, align 4, !dbg !878
  br label %if.end, !dbg !880

if.end:                                           ; preds = %if.then6, %if.then
  br label %unlock_and_exit, !dbg !881

if.end7:                                          ; preds = %while.body3
  %12 = load ptr, ptr %gpe_block, align 8, !dbg !882
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %12, i32 0, i32 2, !dbg !883
  %13 = load ptr, ptr %next, align 8, !dbg !883
  store ptr %13, ptr %gpe_block, align 8, !dbg !884
  br label %while.cond1, !dbg !862, !llvm.loop !885

while.end:                                        ; preds = %while.cond1
  %14 = load ptr, ptr %gpe_xrupt_info, align 8, !dbg !889
  %next8 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %14, i32 0, i32 1, !dbg !890
  %15 = load ptr, ptr %next8, align 8, !dbg !890
  store ptr %15, ptr %gpe_xrupt_info, align 8, !dbg !891
  br label %while.cond, !dbg !856, !llvm.loop !892

while.end9:                                       ; preds = %while.cond
  br label %unlock_and_exit, !dbg !856

unlock_and_exit:                                  ; preds = %while.end9, %if.end
  call void @llvm.dbg.label(metadata !840), !dbg !894
  %16 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !895
  %17 = load i64, ptr %flags, align 8, !dbg !896
  call void @acpi_os_release_lock(ptr noundef %16, i64 noundef %17) #14, !dbg !897
  %18 = load i32, ptr %status, align 4, !dbg !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !899
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_xrupt_info) #13, !dbg !899
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_block) #13, !dbg !899
  ret i32 %18, !dbg !898
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !900 dso_local i64 @acpi_os_acquire_lock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !940 dso_local void @acpi_os_release_lock(ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_get_gpe_device(ptr noundef %gpe_xrupt_info, ptr noundef %gpe_block, ptr noundef %context) #0 align 16 !dbg !943 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca ptr, align 8
  %gpe_block.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_xrupt_info, ptr %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info.addr, metadata !945, metadata !DIExpression()), !dbg !956
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !946, metadata !DIExpression()), !dbg !957
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !947, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %info, metadata !948, metadata !DIExpression()), !dbg !960
  %0 = load ptr, ptr %context.addr, align 8, !dbg !961
  store ptr %0, ptr %info, align 8, !dbg !960
  %1 = load ptr, ptr %gpe_block.addr, align 8, !dbg !962
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %1, i32 0, i32 8, !dbg !963
  %2 = load i16, ptr %gpe_count, align 4, !dbg !963
  %conv = zext i16 %2 to i32, !dbg !962
  %3 = load ptr, ptr %info, align 8, !dbg !964
  %next_block_base_index = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %3, i32 0, i32 1, !dbg !965
  %4 = load i32, ptr %next_block_base_index, align 4, !dbg !966
  %add = add i32 %4, %conv, !dbg !966
  store i32 %add, ptr %next_block_base_index, align 4, !dbg !966
  %5 = load ptr, ptr %info, align 8, !dbg !967
  %index = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %5, i32 0, i32 0, !dbg !969
  %6 = load i32, ptr %index, align 8, !dbg !969
  %7 = load ptr, ptr %info, align 8, !dbg !970
  %next_block_base_index1 = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %7, i32 0, i32 1, !dbg !971
  %8 = load i32, ptr %next_block_base_index1, align 4, !dbg !971
  %cmp = icmp ult i32 %6, %8, !dbg !972
  br i1 %cmp, label %if.then, label %if.end8, !dbg !973

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %gpe_block.addr, align 8, !dbg !974
  %node = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %9, i32 0, i32 0, !dbg !977
  %10 = load ptr, ptr %node, align 8, !dbg !977
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 2, !dbg !978
  %11 = load i8, ptr %type, align 1, !dbg !978
  %conv3 = zext i8 %11 to i32, !dbg !979
  %cmp4 = icmp eq i32 %conv3, 6, !dbg !980
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !981

if.then6:                                         ; preds = %if.then
  %12 = load ptr, ptr %gpe_block.addr, align 8, !dbg !982
  %node7 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %12, i32 0, i32 0, !dbg !984
  %13 = load ptr, ptr %node7, align 8, !dbg !984
  %14 = load ptr, ptr %info, align 8, !dbg !985
  %gpe_device = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %14, i32 0, i32 3, !dbg !986
  store ptr %13, ptr %gpe_device, align 8, !dbg !987
  br label %if.end, !dbg !988

if.end:                                           ; preds = %if.then6, %if.then
  %15 = load ptr, ptr %info, align 8, !dbg !989
  %status = getelementptr inbounds %struct.acpi_gpe_device_info, ptr %15, i32 0, i32 2, !dbg !990
  store i32 0, ptr %status, align 8, !dbg !991
  store i32 16391, ptr %retval, align 4, !dbg !992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !992

if.end8:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !993

cleanup:                                          ; preds = %if.end8, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !994
  %16 = load i32, ptr %retval, align 4, !dbg !994
  ret i32 %16, !dbg !994
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_get_gpe_xrupt_block(i32 noundef %interrupt_number, ptr noundef %gpe_xrupt_block) #0 align 16 !dbg !995 {
entry:
  %retval = alloca i32, align 4
  %interrupt_number.addr = alloca i32, align 4
  %gpe_xrupt_block.addr = alloca ptr, align 8
  %next_gpe_xrupt = alloca ptr, align 8
  %gpe_xrupt = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %interrupt_number, ptr %interrupt_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interrupt_number.addr, metadata !1000, metadata !DIExpression()), !dbg !1006
  store ptr %gpe_xrupt_block, ptr %gpe_xrupt_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_block.addr, metadata !1001, metadata !DIExpression()), !dbg !1007
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_gpe_xrupt) #13, !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %next_gpe_xrupt, metadata !1002, metadata !DIExpression()), !dbg !1009
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_xrupt) #13, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt, metadata !1003, metadata !DIExpression()), !dbg !1011
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1004, metadata !DIExpression()), !dbg !1013
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1005, metadata !DIExpression()), !dbg !1015
  %0 = load ptr, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !1016
  store ptr %0, ptr %next_gpe_xrupt, align 8, !dbg !1017
  br label %while.cond, !dbg !1018

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %next_gpe_xrupt, align 8, !dbg !1019
  %tobool = icmp ne ptr %1, null, !dbg !1018
  br i1 %tobool, label %while.body, label %while.end, !dbg !1018

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %next_gpe_xrupt, align 8, !dbg !1020
  %interrupt_number1 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %2, i32 0, i32 3, !dbg !1023
  %3 = load i32, ptr %interrupt_number1, align 8, !dbg !1023
  %4 = load i32, ptr %interrupt_number.addr, align 4, !dbg !1024
  %cmp = icmp eq i32 %3, %4, !dbg !1025
  br i1 %cmp, label %if.then, label %if.end, !dbg !1026

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %next_gpe_xrupt, align 8, !dbg !1027
  %6 = load ptr, ptr %gpe_xrupt_block.addr, align 8, !dbg !1029
  store ptr %5, ptr %6, align 8, !dbg !1030
  store i32 0, ptr %retval, align 4, !dbg !1031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1031

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %next_gpe_xrupt, align 8, !dbg !1032
  %next = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %7, i32 0, i32 1, !dbg !1033
  %8 = load ptr, ptr %next, align 8, !dbg !1033
  store ptr %8, ptr %next_gpe_xrupt, align 8, !dbg !1034
  br label %while.cond, !dbg !1018, !llvm.loop !1035

while.end:                                        ; preds = %while.cond
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 32) #14, !dbg !1037
  store ptr %call, ptr %gpe_xrupt, align 8, !dbg !1038
  %9 = load ptr, ptr %gpe_xrupt, align 8, !dbg !1039
  %tobool2 = icmp ne ptr %9, null, !dbg !1039
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1041

if.then3:                                         ; preds = %while.end
  store i32 4, ptr %retval, align 4, !dbg !1042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1042

if.end4:                                          ; preds = %while.end
  %10 = load i32, ptr %interrupt_number.addr, align 4, !dbg !1044
  %11 = load ptr, ptr %gpe_xrupt, align 8, !dbg !1045
  %interrupt_number5 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %11, i32 0, i32 3, !dbg !1046
  store i32 %10, ptr %interrupt_number5, align 8, !dbg !1047
  %12 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1048
  %call6 = call i64 @acpi_os_acquire_lock(ptr noundef %12) #14, !dbg !1049
  store i64 %call6, ptr %flags, align 8, !dbg !1050
  %13 = load ptr, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !1051
  %tobool7 = icmp ne ptr %13, null, !dbg !1051
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !1053

if.then8:                                         ; preds = %if.end4
  %14 = load ptr, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !1054
  store ptr %14, ptr %next_gpe_xrupt, align 8, !dbg !1056
  br label %while.cond9, !dbg !1057

while.cond9:                                      ; preds = %while.body12, %if.then8
  %15 = load ptr, ptr %next_gpe_xrupt, align 8, !dbg !1058
  %next10 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %15, i32 0, i32 1, !dbg !1059
  %16 = load ptr, ptr %next10, align 8, !dbg !1059
  %tobool11 = icmp ne ptr %16, null, !dbg !1057
  br i1 %tobool11, label %while.body12, label %while.end14, !dbg !1057

while.body12:                                     ; preds = %while.cond9
  %17 = load ptr, ptr %next_gpe_xrupt, align 8, !dbg !1060
  %next13 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %17, i32 0, i32 1, !dbg !1062
  %18 = load ptr, ptr %next13, align 8, !dbg !1062
  store ptr %18, ptr %next_gpe_xrupt, align 8, !dbg !1063
  br label %while.cond9, !dbg !1057, !llvm.loop !1064

while.end14:                                      ; preds = %while.cond9
  %19 = load ptr, ptr %gpe_xrupt, align 8, !dbg !1066
  %20 = load ptr, ptr %next_gpe_xrupt, align 8, !dbg !1067
  %next15 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %20, i32 0, i32 1, !dbg !1068
  store ptr %19, ptr %next15, align 8, !dbg !1069
  %21 = load ptr, ptr %next_gpe_xrupt, align 8, !dbg !1070
  %22 = load ptr, ptr %gpe_xrupt, align 8, !dbg !1071
  %previous = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %22, i32 0, i32 0, !dbg !1072
  store ptr %21, ptr %previous, align 8, !dbg !1073
  br label %if.end16, !dbg !1074

if.else:                                          ; preds = %if.end4
  %23 = load ptr, ptr %gpe_xrupt, align 8, !dbg !1075
  store ptr %23, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !1077
  br label %if.end16

if.end16:                                         ; preds = %if.else, %while.end14
  %24 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1078
  %25 = load i64, ptr %flags, align 8, !dbg !1079
  call void @acpi_os_release_lock(ptr noundef %24, i64 noundef %25) #14, !dbg !1080
  %26 = load i32, ptr %interrupt_number.addr, align 4, !dbg !1081
  %27 = load i16, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !1083
  %conv = zext i16 %27 to i32, !dbg !1084
  %cmp17 = icmp ne i32 %26, %conv, !dbg !1085
  br i1 %cmp17, label %if.then19, label %if.end24, !dbg !1086

if.then19:                                        ; preds = %if.end16
  %28 = load i32, ptr %interrupt_number.addr, align 4, !dbg !1087
  %29 = load ptr, ptr %gpe_xrupt, align 8, !dbg !1089
  %call20 = call i32 @acpi_os_install_interrupt_handler(i32 noundef %28, ptr noundef @acpi_ev_gpe_xrupt_handler, ptr noundef %29) #14, !dbg !1090
  store i32 %call20, ptr %status, align 4, !dbg !1091
  %30 = load i32, ptr %status, align 4, !dbg !1092
  %tobool21 = icmp ne i32 %30, 0, !dbg !1092
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1094

if.then22:                                        ; preds = %if.then19
  %31 = load i32, ptr %status, align 4, !dbg !1095
  %32 = load i32, ptr %interrupt_number.addr, align 4, !dbg !1095
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 186, i32 noundef %31, ptr noundef @.str, i32 noundef %32) #14, !dbg !1095
  %33 = load i32, ptr %status, align 4, !dbg !1097
  store i32 %33, ptr %retval, align 4, !dbg !1097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1097

if.end23:                                         ; preds = %if.then19
  br label %if.end24, !dbg !1098

if.end24:                                         ; preds = %if.end23, %if.end16
  %34 = load ptr, ptr %gpe_xrupt, align 8, !dbg !1099
  %35 = load ptr, ptr %gpe_xrupt_block.addr, align 8, !dbg !1100
  store ptr %34, ptr %35, align 8, !dbg !1101
  store i32 0, ptr %retval, align 4, !dbg !1102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1102

cleanup:                                          ; preds = %if.end24, %if.then22, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1103
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1103
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_xrupt) #13, !dbg !1103
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_gpe_xrupt) #13, !dbg !1103
  %36 = load i32, ptr %retval, align 4, !dbg !1103
  ret i32 %36, !dbg !1103
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1104 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1109, metadata !DIExpression()), !dbg !1120
  %0 = load i64, ptr %size.addr, align 8, !dbg !1121
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1122
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1110, metadata !DIExpression()), !dbg !1122
  br label %do.body, !dbg !1122

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1112, metadata !DIExpression()), !dbg !1123
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1115, metadata !DIExpression()), !dbg !1123
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1123
  %conv = zext i1 %cmp to i32, !dbg !1123
  store i32 1, ptr %tmp, align 4, !dbg !1123
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1124
  %1 = load i32, ptr %tmp, align 4, !dbg !1123
  %call = call i64 @arch_local_save_flags() #14, !dbg !1124
  store i64 %call, ptr %_flags, align 8, !dbg !1124
  br label %do.cond, !dbg !1124

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1124

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1116, metadata !DIExpression()), !dbg !1125
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1125
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1119, metadata !DIExpression()), !dbg !1125
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1125
  %conv6 = zext i1 %cmp5 to i32, !dbg !1125
  store i32 1, ptr %tmp7, align 4, !dbg !1125
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1126
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1126
  %2 = load i32, ptr %tmp7, align 4, !dbg !1125
  %3 = load i64, ptr %_flags, align 8, !dbg !1126
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1126
  store i32 %call9, ptr %tmp8, align 4, !dbg !1126
  %4 = load i32, ptr %tmp8, align 4, !dbg !1126
  store i32 %4, ptr %tmp1, align 4, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1127
  %5 = load i32, ptr %tmp1, align 4, !dbg !1122
  %tobool = icmp ne i32 %5, 0, !dbg !1127
  %6 = zext i1 %tobool to i64, !dbg !1127
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1127
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1128
  ret ptr %call10, !dbg !1129
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1130 dso_local i32 @acpi_os_install_interrupt_handler(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_gpe_xrupt_handler(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1137 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_delete_gpe_xrupt(ptr noundef %gpe_xrupt) #0 align 16 !dbg !1142 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_xrupt, ptr %gpe_xrupt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt.addr, metadata !1146, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1147, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1148, metadata !DIExpression()), !dbg !1153
  %0 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1154
  %interrupt_number = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %0, i32 0, i32 3, !dbg !1156
  %1 = load i32, ptr %interrupt_number, align 8, !dbg !1156
  %2 = load i16, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 5), align 1, !dbg !1157
  %conv = zext i16 %2 to i32, !dbg !1158
  %cmp = icmp eq i32 %1, %conv, !dbg !1159
  br i1 %cmp, label %if.then, label %if.end, !dbg !1160

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1161
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %3, i32 0, i32 2, !dbg !1163
  store ptr null, ptr %gpe_block_list_head, align 8, !dbg !1164
  store i32 0, ptr %retval, align 4, !dbg !1165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1165

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1166
  %interrupt_number2 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %4, i32 0, i32 3, !dbg !1167
  %5 = load i32, ptr %interrupt_number2, align 8, !dbg !1167
  %call = call i32 @acpi_os_remove_interrupt_handler(i32 noundef %5, ptr noundef @acpi_ev_gpe_xrupt_handler) #14, !dbg !1168
  store i32 %call, ptr %status, align 4, !dbg !1169
  %6 = load i32, ptr %status, align 4, !dbg !1170
  %tobool = icmp ne i32 %6, 0, !dbg !1170
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !1172

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %status, align 4, !dbg !1173
  store i32 %7, ptr %retval, align 4, !dbg !1173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1173

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1175
  %call5 = call i64 @acpi_os_acquire_lock(ptr noundef %8) #14, !dbg !1176
  store i64 %call5, ptr %flags, align 8, !dbg !1177
  %9 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1178
  %previous = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %9, i32 0, i32 0, !dbg !1180
  %10 = load ptr, ptr %previous, align 8, !dbg !1180
  %tobool6 = icmp ne ptr %10, null, !dbg !1178
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !1181

if.then7:                                         ; preds = %if.end4
  %11 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1182
  %next = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %11, i32 0, i32 1, !dbg !1184
  %12 = load ptr, ptr %next, align 8, !dbg !1184
  %13 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1185
  %previous8 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %13, i32 0, i32 0, !dbg !1186
  %14 = load ptr, ptr %previous8, align 8, !dbg !1186
  %next9 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %14, i32 0, i32 1, !dbg !1187
  store ptr %12, ptr %next9, align 8, !dbg !1188
  br label %if.end11, !dbg !1189

if.else:                                          ; preds = %if.end4
  %15 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1190
  %next10 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %15, i32 0, i32 1, !dbg !1192
  %16 = load ptr, ptr %next10, align 8, !dbg !1192
  store ptr %16, ptr @acpi_gbl_gpe_xrupt_list_head, align 8, !dbg !1193
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %17 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1194
  %next12 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %17, i32 0, i32 1, !dbg !1196
  %18 = load ptr, ptr %next12, align 8, !dbg !1196
  %tobool13 = icmp ne ptr %18, null, !dbg !1194
  br i1 %tobool13, label %if.then14, label %if.end18, !dbg !1197

if.then14:                                        ; preds = %if.end11
  %19 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1198
  %previous15 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %19, i32 0, i32 0, !dbg !1200
  %20 = load ptr, ptr %previous15, align 8, !dbg !1200
  %21 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1201
  %next16 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %21, i32 0, i32 1, !dbg !1202
  %22 = load ptr, ptr %next16, align 8, !dbg !1202
  %previous17 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %22, i32 0, i32 0, !dbg !1203
  store ptr %20, ptr %previous17, align 8, !dbg !1204
  br label %if.end18, !dbg !1205

if.end18:                                         ; preds = %if.then14, %if.end11
  %23 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1206
  %24 = load i64, ptr %flags, align 8, !dbg !1207
  call void @acpi_os_release_lock(ptr noundef %23, i64 noundef %24) #14, !dbg !1208
  %25 = load ptr, ptr %gpe_xrupt.addr, align 8, !dbg !1209
  call void @acpi_os_free(ptr noundef %25) #14, !dbg !1209
  store i32 0, ptr %retval, align 4, !dbg !1210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1210

cleanup:                                          ; preds = %if.end18, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1211
  %26 = load i32, ptr %retval, align 4, !dbg !1211
  ret i32 %26, !dbg !1211
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1212 dso_local i32 @acpi_os_remove_interrupt_handler(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1215 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1219, metadata !DIExpression()), !dbg !1220
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1221
  call void @kfree(ptr noundef %0) #14, !dbg !1222
  ret void, !dbg !1223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_delete_gpe_handlers(ptr noundef %gpe_xrupt_info, ptr noundef %gpe_block, ptr noundef %context) #0 align 16 !dbg !1224 {
entry:
  %gpe_xrupt_info.addr = alloca ptr, align 8
  %gpe_block.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %gpe_event_info = alloca ptr, align 8
  %notify = alloca ptr, align 8
  %next = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %gpe_xrupt_info, ptr %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info.addr, metadata !1226, metadata !DIExpression()), !dbg !1234
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1227, metadata !DIExpression()), !dbg !1235
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1228, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1229, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 8, ptr %notify) #13, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %notify, metadata !1230, metadata !DIExpression()), !dbg !1240
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #13, !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1231, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1232, metadata !DIExpression()), !dbg !1244
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1233, metadata !DIExpression()), !dbg !1246
  store i32 0, ptr %i, align 4, !dbg !1247
  br label %for.cond, !dbg !1249

for.cond:                                         ; preds = %for.inc38, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1250
  %1 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1252
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %1, i32 0, i32 7, !dbg !1253
  %2 = load i32, ptr %register_count, align 8, !dbg !1253
  %cmp = icmp ult i32 %0, %2, !dbg !1254
  br i1 %cmp, label %for.body, label %for.end40, !dbg !1255

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !1256
  br label %for.cond1, !dbg !1259

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !dbg !1260
  %cmp2 = icmp ult i32 %3, 8, !dbg !1262
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !1263

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1264
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %4, i32 0, i32 5, !dbg !1266
  %5 = load ptr, ptr %event_info, align 8, !dbg !1266
  %6 = load i32, ptr %i, align 4, !dbg !1267
  %conv = zext i32 %6 to i64, !dbg !1268
  %mul = mul i64 %conv, 8, !dbg !1269
  %7 = load i32, ptr %j, align 4, !dbg !1270
  %conv4 = zext i32 %7 to i64, !dbg !1270
  %add = add i64 %mul, %conv4, !dbg !1271
  %arrayidx = getelementptr %struct.acpi_gpe_event_info, ptr %5, i64 %add, !dbg !1264
  store ptr %arrayidx, ptr %gpe_event_info, align 8, !dbg !1272
  %8 = load ptr, ptr %gpe_event_info, align 8, !dbg !1273
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %8, i32 0, i32 2, !dbg !1273
  %9 = load i8, ptr %flags, align 8, !dbg !1273
  %conv5 = zext i8 %9 to i32, !dbg !1273
  %and = and i32 %conv5, 7, !dbg !1273
  %conv6 = trunc i32 %and to i8, !dbg !1273
  %conv7 = zext i8 %conv6 to i32, !dbg !1273
  %cmp8 = icmp eq i32 %conv7, 2, !dbg !1275
  br i1 %cmp8, label %if.then, label %lor.lhs.false, !dbg !1276

lor.lhs.false:                                    ; preds = %for.body3
  %10 = load ptr, ptr %gpe_event_info, align 8, !dbg !1277
  %flags10 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %10, i32 0, i32 2, !dbg !1277
  %11 = load i8, ptr %flags10, align 8, !dbg !1277
  %conv11 = zext i8 %11 to i32, !dbg !1277
  %and12 = and i32 %conv11, 7, !dbg !1277
  %conv13 = trunc i32 %and12 to i8, !dbg !1277
  %conv14 = zext i8 %conv13 to i32, !dbg !1277
  %cmp15 = icmp eq i32 %conv14, 4, !dbg !1278
  br i1 %cmp15, label %if.then, label %if.else, !dbg !1279

if.then:                                          ; preds = %lor.lhs.false, %for.body3
  %12 = load ptr, ptr %gpe_event_info, align 8, !dbg !1280
  %dispatch = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %12, i32 0, i32 0, !dbg !1280
  %13 = load ptr, ptr %dispatch, align 8, !dbg !1280
  call void @acpi_os_free(ptr noundef %13) #14, !dbg !1280
  %14 = load ptr, ptr %gpe_event_info, align 8, !dbg !1282
  %dispatch17 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %14, i32 0, i32 0, !dbg !1283
  store ptr null, ptr %dispatch17, align 8, !dbg !1284
  %15 = load ptr, ptr %gpe_event_info, align 8, !dbg !1285
  %flags18 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %15, i32 0, i32 2, !dbg !1286
  %16 = load i8, ptr %flags18, align 8, !dbg !1287
  %conv19 = zext i8 %16 to i32, !dbg !1287
  %and20 = and i32 %conv19, -8, !dbg !1287
  %conv21 = trunc i32 %and20 to i8, !dbg !1287
  store i8 %conv21, ptr %flags18, align 8, !dbg !1287
  br label %if.end37, !dbg !1288

if.else:                                          ; preds = %lor.lhs.false
  %17 = load ptr, ptr %gpe_event_info, align 8, !dbg !1289
  %flags22 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %17, i32 0, i32 2, !dbg !1289
  %18 = load i8, ptr %flags22, align 8, !dbg !1289
  %conv23 = zext i8 %18 to i32, !dbg !1289
  %and24 = and i32 %conv23, 7, !dbg !1289
  %conv25 = trunc i32 %and24 to i8, !dbg !1289
  %conv26 = zext i8 %conv25 to i32, !dbg !1289
  %cmp27 = icmp eq i32 %conv26, 3, !dbg !1291
  br i1 %cmp27, label %if.then29, label %if.end, !dbg !1292

if.then29:                                        ; preds = %if.else
  %19 = load ptr, ptr %gpe_event_info, align 8, !dbg !1293
  %dispatch30 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %19, i32 0, i32 0, !dbg !1295
  %20 = load ptr, ptr %dispatch30, align 8, !dbg !1296
  store ptr %20, ptr %notify, align 8, !dbg !1297
  br label %while.cond, !dbg !1298

while.cond:                                       ; preds = %while.body, %if.then29
  %21 = load ptr, ptr %notify, align 8, !dbg !1299
  %tobool = icmp ne ptr %21, null, !dbg !1298
  br i1 %tobool, label %while.body, label %while.end, !dbg !1298

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %notify, align 8, !dbg !1300
  %next31 = getelementptr inbounds %struct.acpi_gpe_notify_info, ptr %22, i32 0, i32 1, !dbg !1302
  %23 = load ptr, ptr %next31, align 8, !dbg !1302
  store ptr %23, ptr %next, align 8, !dbg !1303
  %24 = load ptr, ptr %notify, align 8, !dbg !1304
  call void @acpi_os_free(ptr noundef %24) #14, !dbg !1304
  %25 = load ptr, ptr %next, align 8, !dbg !1305
  store ptr %25, ptr %notify, align 8, !dbg !1306
  br label %while.cond, !dbg !1298, !llvm.loop !1307

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %gpe_event_info, align 8, !dbg !1309
  %dispatch32 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %26, i32 0, i32 0, !dbg !1310
  store ptr null, ptr %dispatch32, align 8, !dbg !1311
  %27 = load ptr, ptr %gpe_event_info, align 8, !dbg !1312
  %flags33 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %27, i32 0, i32 2, !dbg !1313
  %28 = load i8, ptr %flags33, align 8, !dbg !1314
  %conv34 = zext i8 %28 to i32, !dbg !1314
  %and35 = and i32 %conv34, -8, !dbg !1314
  %conv36 = trunc i32 %and35 to i8, !dbg !1314
  store i8 %conv36, ptr %flags33, align 8, !dbg !1314
  br label %if.end, !dbg !1315

if.end:                                           ; preds = %while.end, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end, %if.then
  br label %for.inc, !dbg !1316

for.inc:                                          ; preds = %if.end37
  %29 = load i32, ptr %j, align 4, !dbg !1317
  %inc = add i32 %29, 1, !dbg !1317
  store i32 %inc, ptr %j, align 4, !dbg !1317
  br label %for.cond1, !dbg !1318, !llvm.loop !1319

for.end:                                          ; preds = %for.cond1
  br label %for.inc38, !dbg !1321

for.inc38:                                        ; preds = %for.end
  %30 = load i32, ptr %i, align 4, !dbg !1322
  %inc39 = add i32 %30, 1, !dbg !1322
  store i32 %inc39, ptr %i, align 4, !dbg !1322
  br label %for.cond, !dbg !1323, !llvm.loop !1324

for.end40:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #13, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 8, ptr %notify) #13, !dbg !1326
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1326
  ret i32 0, !dbg !1327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1328 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1336, metadata !DIExpression()), !dbg !1338
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1337, metadata !DIExpression()), !dbg !1339
  %0 = load i64, ptr %size.addr, align 8, !dbg !1340
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1341
  %or = or i32 %1, 256, !dbg !1342
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1343
  ret ptr %call, !dbg !1344
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1345 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1349
  ret i64 %call, !dbg !1350
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1351 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1355, metadata !DIExpression()), !dbg !1356
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1357
  %and = and i64 %0, 512, !dbg !1358
  %tobool = icmp ne i64 %and, 0, !dbg !1359
  %lnot = xor i1 %tobool, true, !dbg !1359
  %lnot.ext = zext i1 %lnot to i32, !dbg !1359
  ret i32 %lnot.ext, !dbg !1360
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1361 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1363, metadata !DIExpression()), !dbg !1368
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1364, metadata !DIExpression()), !dbg !1369
  %0 = load i64, ptr %size.addr, align 8, !dbg !1370
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1371
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1372

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1373
  %tobool = icmp ne i64 %2, 0, !dbg !1373
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1374

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1375
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1365, metadata !DIExpression()), !dbg !1376
  %3 = load i64, ptr %size.addr, align 8, !dbg !1377
  %cmp = icmp ugt i64 %3, 8192, !dbg !1379
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1380

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1381
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1382
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1383
  store ptr %call, ptr %retval, align 8, !dbg !1384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1384

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1385
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1385
  store i32 %call2, ptr %index, align 4, !dbg !1386
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1387
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1388
  %9 = ptrtoint ptr %8 to i64, !dbg !1388
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1389
  %idxprom = zext i32 %call3 to i64, !dbg !1390
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1390
  %10 = load i32, ptr %index, align 4, !dbg !1391
  %idxprom4 = zext i32 %10 to i64, !dbg !1390
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1390
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1390
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1392
  %13 = load i64, ptr %size.addr, align 8, !dbg !1393
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1394
  store ptr %call6, ptr %retval, align 8, !dbg !1395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1395

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1396
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1397
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1398
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1399
  store ptr %call8, ptr %retval, align 8, !dbg !1400
  br label %return, !dbg !1400

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1401
  ret ptr %16, !dbg !1401
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1402 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1403 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1409, metadata !DIExpression()), !dbg !1411
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1410, metadata !DIExpression()), !dbg !1412
  %0 = load i64, ptr %size.addr, align 8, !dbg !1413
  %tobool = icmp ne i64 %0, 0, !dbg !1413
  br i1 %tobool, label %if.end, label %if.then, !dbg !1415

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1416
  br label %return, !dbg !1416

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1417
  %cmp = icmp ule i64 %1, 8, !dbg !1419
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1420

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1421
  br label %return, !dbg !1421

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1422
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1424
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1425

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1426
  %cmp4 = icmp ule i64 %3, 96, !dbg !1427
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1428

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1429
  br label %return, !dbg !1429

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1430
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1432
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1433

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1434
  %cmp9 = icmp ule i64 %5, 192, !dbg !1435
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1436

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1437
  br label %return, !dbg !1437

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1438
  %cmp12 = icmp ule i64 %6, 8, !dbg !1440
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1441

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1442
  br label %return, !dbg !1442

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1443
  %cmp15 = icmp ule i64 %7, 16, !dbg !1445
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1446

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1447
  br label %return, !dbg !1447

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1448
  %cmp18 = icmp ule i64 %8, 32, !dbg !1450
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1451

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1452
  br label %return, !dbg !1452

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1453
  %cmp21 = icmp ule i64 %9, 64, !dbg !1455
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1456

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1457
  br label %return, !dbg !1457

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1458
  %cmp24 = icmp ule i64 %10, 128, !dbg !1460
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1461

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1462
  br label %return, !dbg !1462

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1463
  %cmp27 = icmp ule i64 %11, 256, !dbg !1465
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1466

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1467
  br label %return, !dbg !1467

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1468
  %cmp30 = icmp ule i64 %12, 512, !dbg !1470
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1471

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1472
  br label %return, !dbg !1472

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1473
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1475
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1476

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1477
  br label %return, !dbg !1477

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1478
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1480
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1481

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1482
  br label %return, !dbg !1482

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1483
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1485
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1486

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1487
  br label %return, !dbg !1487

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1488
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1490
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1491

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1492
  br label %return, !dbg !1492

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1493
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1495
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1496

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1497
  br label %return, !dbg !1497

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1498
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1500
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1501

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1502
  br label %return, !dbg !1502

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1503
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1505
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1506

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1507
  br label %return, !dbg !1507

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1508
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1510
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1511

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1512
  br label %return, !dbg !1512

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1513
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1515
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1516

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1517
  br label %return, !dbg !1517

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1518
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1520
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1521

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1522
  br label %return, !dbg !1522

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1523
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1525
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1526

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1527
  br label %return, !dbg !1527

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1528
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1530
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1531

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1532
  br label %return, !dbg !1532

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1533, !range !1535, !noundef !1536
  %tobool69 = trunc i8 %25 to i1, !dbg !1533
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1537

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1538

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1539, !srcloc !1542
  unreachable, !dbg !1539

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1543

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1544

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1545

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1547

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1545

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #13, !dbg !1549, !srcloc !1551
  br label %do.end75, !dbg !1549

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1545

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1552
  br label %return, !dbg !1552

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1553
  ret i32 %26, !dbg !1553
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1554 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1560 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1564, metadata !DIExpression()), !dbg !1566
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1565, metadata !DIExpression()), !dbg !1567
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1568
  %and = and i32 %0, 17, !dbg !1568
  %cmp = icmp eq i32 %and, 0, !dbg !1568
  %lnot = xor i1 %cmp, true, !dbg !1568
  %lnot1 = xor i1 %lnot, true, !dbg !1568
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1568
  %conv = sext i32 %lnot.ext to i64, !dbg !1568
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1568
  %tobool = icmp ne i64 %expval, 0, !dbg !1568
  br i1 %tobool, label %if.then, label %if.end, !dbg !1570

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1571
  br label %return, !dbg !1571

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1572
  %and2 = and i32 %1, 1, !dbg !1574
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1574
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1575

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1576
  br label %return, !dbg !1576

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1577
  br label %return, !dbg !1577

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1579
  ret i32 %2, !dbg !1579
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1580 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1581 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1584 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1587
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1586, metadata !DIExpression()), !dbg !1588
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1589, !srcloc !1590
  %0 = load i64, ptr %flags, align 8, !dbg !1591
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1592
  ret i64 %0, !dbg !1593
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1594 dso_local void @kfree(ptr noundef) #3

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
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !50, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evgpeutil.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evgpeutil\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evgpeutil.ll drivers/acpi/acpica/evgpeutil.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evgpeutil.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "680218bee1b75c9b8d5b3b137c3f1eda")
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
!21 = !{!22, !28, !32, !35, !37}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !31)
!31 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !36, line: 154, baseType: !7)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !{!39, !45, !0}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 432, elements: !43)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !{!44}
!44 = !DISubrange(count: 54)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 168, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 21)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 80, elements: !52)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!52 = !{!53}
!53 = !DISubrange(count: 10)
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 8, !"cf-protection-branch", i32 1}
!58 = !{i32 4, !"function_return_thunk_extern", i32 1}
!59 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!60 = !{i32 1, !"Code Model", i32 2}
!61 = !{i32 1, !"override-stack-alignment", i32 8}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = distinct !DISubprogram(name: "acpi_ev_walk_gpe_list", scope: !3, file: !3, line: 31, type: !64, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!64 = !DISubroutineType(types: !65)
!65 = !{!22, !66, !161}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_callback", file: !67, line: 519, baseType: !68)
!67 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!22, !71, !77, !161}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !67, line: 497, size: 256, elements: !73)
!73 = !{!74, !75, !76, !832}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !72, file: !67, line: 498, baseType: !71, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !72, file: !67, line: 499, baseType: !71, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !72, file: !67, line: 500, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !67, line: 480, size: 576, elements: !79)
!79 = !{!80, !776, !777, !778, !779, !794, !826, !827, !828, !829, !830, !831}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !78, file: !67, line: 481, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !67, line: 133, size: 384, elements: !83)
!83 = !{!84, !763, !764, !765, !766, !772, !773, !774, !775}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !82, file: !67, line: 134, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !87, line: 369, size: 576, elements: !88)
!87 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!88 = !{!89, !100, !113, !124, !138, !152, !162, !479, !496, !512, !525, !536, !548, !562, !572, !590, !612, !631, !650, !669, !682, !709, !726, !739, !753, !762}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !86, file: !87, line: 370, baseType: !90, size: 128)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !87, line: 73, size: 128, elements: !91)
!91 = !{!92, !93, !94, !95, !99}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !90, file: !87, line: 74, baseType: !85, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !87, line: 74, baseType: !32, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !87, line: 74, baseType: !32, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !90, file: !87, line: 74, baseType: !96, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !98)
!98 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !87, line: 74, baseType: !32, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !86, file: !87, line: 371, baseType: !101, size: 192)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !87, line: 76, size: 192, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !112}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !87, line: 77, baseType: !85, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !87, line: 77, baseType: !32, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !87, line: 77, baseType: !32, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !87, line: 77, baseType: !96, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !87, line: 77, baseType: !32, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !101, file: !87, line: 77, baseType: !109, size: 24, offset: 104)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 24, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 3)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !101, file: !87, line: 78, baseType: !29, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !86, file: !87, line: 372, baseType: !114, size: 256)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !87, line: 93, size: 256, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !123}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !87, line: 94, baseType: !85, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !87, line: 94, baseType: !32, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !87, line: 94, baseType: !32, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !87, line: 94, baseType: !96, size: 16, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !87, line: 94, baseType: !32, size: 8, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !114, file: !87, line: 94, baseType: !122, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !114, file: !87, line: 94, baseType: !24, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !86, file: !87, line: 373, baseType: !125, size: 384)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !87, line: 97, size: 384, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !134, !135, !136, !137}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !87, line: 98, baseType: !85, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !87, line: 98, baseType: !32, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !87, line: 98, baseType: !32, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !87, line: 98, baseType: !96, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !87, line: 98, baseType: !32, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !125, file: !87, line: 98, baseType: !133, size: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !125, file: !87, line: 98, baseType: !24, size: 32, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !125, file: !87, line: 99, baseType: !24, size: 32, offset: 224)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !125, file: !87, line: 100, baseType: !133, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !87, line: 101, baseType: !81, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !86, file: !87, line: 374, baseType: !139, size: 384)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !87, line: 104, size: 384, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !149, !150, !151}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !87, line: 105, baseType: !85, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !87, line: 105, baseType: !32, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !87, line: 105, baseType: !32, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !87, line: 105, baseType: !96, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !87, line: 105, baseType: !32, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !87, line: 105, baseType: !81, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !139, file: !87, line: 106, baseType: !148, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !87, line: 107, baseType: !133, size: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !87, line: 108, baseType: !24, size: 32, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !139, file: !87, line: 109, baseType: !24, size: 32, offset: 352)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !86, file: !87, line: 375, baseType: !153, size: 192)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !87, line: 118, size: 192, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !153, file: !87, line: 119, baseType: !85, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !153, file: !87, line: 119, baseType: !32, size: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !87, line: 119, baseType: !32, size: 8, offset: 72)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !153, file: !87, line: 119, baseType: !96, size: 16, offset: 80)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !87, line: 119, baseType: !32, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !153, file: !87, line: 119, baseType: !161, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !86, file: !87, line: 376, baseType: !163, size: 448)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !87, line: 144, size: 448, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !476, !477, !478}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !163, file: !87, line: 145, baseType: !85, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !163, file: !87, line: 145, baseType: !32, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !87, line: 145, baseType: !32, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !163, file: !87, line: 145, baseType: !96, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !87, line: 145, baseType: !32, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !163, file: !87, line: 145, baseType: !32, size: 8, offset: 104)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !163, file: !87, line: 146, baseType: !32, size: 8, offset: 112)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !163, file: !87, line: 147, baseType: !32, size: 8, offset: 120)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !163, file: !87, line: 148, baseType: !85, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !163, file: !87, line: 149, baseType: !85, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !163, file: !87, line: 150, baseType: !133, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !163, file: !87, line: 154, baseType: !177, size: 64, offset: 320)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !87, line: 151, size: 64, elements: !178)
!178 = !{!179, !475}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !177, file: !87, line: 152, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !67, line: 248, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!22, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !186, line: 37, size: 9024, elements: !187)
!186 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !421, !422, !423, !424, !425, !429, !431, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !458, !459, !460, !461, !462, !463, !464, !465, !467, !473}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !186, line: 38, baseType: !184, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !185, file: !186, line: 39, baseType: !32, size: 8, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !185, file: !186, line: 40, baseType: !32, size: 8, offset: 72)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !185, file: !186, line: 41, baseType: !96, size: 16, offset: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !185, file: !186, line: 42, baseType: !32, size: 8, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !185, file: !186, line: 43, baseType: !32, size: 8, offset: 104)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !185, file: !186, line: 44, baseType: !32, size: 8, offset: 112)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !185, file: !186, line: 45, baseType: !196, size: 16, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !23, line: 445, baseType: !96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !185, file: !186, line: 46, baseType: !32, size: 8, offset: 144)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !185, file: !186, line: 47, baseType: !32, size: 8, offset: 152)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !185, file: !186, line: 48, baseType: !32, size: 8, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !185, file: !186, line: 49, baseType: !32, size: 8, offset: 168)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !185, file: !186, line: 50, baseType: !32, size: 8, offset: 176)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !185, file: !186, line: 51, baseType: !32, size: 8, offset: 184)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !185, file: !186, line: 52, baseType: !32, size: 8, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !185, file: !186, line: 53, baseType: !32, size: 8, offset: 200)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !185, file: !186, line: 54, baseType: !133, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !185, file: !186, line: 55, baseType: !24, size: 32, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !185, file: !186, line: 56, baseType: !24, size: 32, offset: 352)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !185, file: !186, line: 57, baseType: !24, size: 32, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !185, file: !186, line: 58, baseType: !24, size: 32, offset: 416)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !185, file: !186, line: 60, baseType: !211, size: 640, offset: 448)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !67, line: 909, size: 640, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !302, !303, !419, !420}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !211, file: !67, line: 910, baseType: !133, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !211, file: !67, line: 911, baseType: !133, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !211, file: !67, line: 912, baseType: !133, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !211, file: !67, line: 913, baseType: !133, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !211, file: !67, line: 914, baseType: !133, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !211, file: !67, line: 915, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !67, line: 891, size: 1600, elements: !221)
!221 = !{!222, !242, !258}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !220, file: !67, line: 892, baseType: !223, size: 448)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !67, line: 844, size: 448, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !241}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !67, line: 845, baseType: !219, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !67, line: 845, baseType: !32, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !67, line: 845, baseType: !32, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !223, file: !67, line: 845, baseType: !96, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !223, file: !67, line: 845, baseType: !133, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !67, line: 845, baseType: !219, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !67, line: 845, baseType: !81, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !223, file: !67, line: 845, baseType: !233, size: 64, offset: 320)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !67, line: 732, size: 64, elements: !234)
!234 = !{!235, !236, !237, !238, !239, !240}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !233, file: !67, line: 733, baseType: !29, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !233, file: !67, line: 734, baseType: !24, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !233, file: !67, line: 735, baseType: !122, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !233, file: !67, line: 736, baseType: !133, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !233, file: !67, line: 737, baseType: !122, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !233, file: !67, line: 738, baseType: !219, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !223, file: !67, line: 845, baseType: !32, size: 8, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !220, file: !67, line: 893, baseType: !243, size: 640)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !67, line: 851, size: 640, elements: !244)
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !243, file: !67, line: 852, baseType: !219, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !243, file: !67, line: 852, baseType: !32, size: 8, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !67, line: 852, baseType: !32, size: 8, offset: 72)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !243, file: !67, line: 852, baseType: !96, size: 16, offset: 80)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !243, file: !67, line: 852, baseType: !133, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !67, line: 852, baseType: !219, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !243, file: !67, line: 852, baseType: !81, size: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !243, file: !67, line: 852, baseType: !233, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !243, file: !67, line: 852, baseType: !32, size: 8, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !243, file: !67, line: 852, baseType: !122, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !243, file: !67, line: 853, baseType: !133, size: 64, offset: 512)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !243, file: !67, line: 854, baseType: !24, size: 32, offset: 576)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !67, line: 855, baseType: !24, size: 32, offset: 608)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !220, file: !67, line: 894, baseType: !259, size: 1600)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !67, line: 862, size: 1600, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !259, file: !67, line: 863, baseType: !219, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !259, file: !67, line: 863, baseType: !32, size: 8, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !259, file: !67, line: 863, baseType: !32, size: 8, offset: 72)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !259, file: !67, line: 863, baseType: !96, size: 16, offset: 80)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !259, file: !67, line: 863, baseType: !133, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !67, line: 863, baseType: !219, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !259, file: !67, line: 863, baseType: !81, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !259, file: !67, line: 863, baseType: !233, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !259, file: !67, line: 863, baseType: !32, size: 8, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !259, file: !67, line: 863, baseType: !219, size: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !259, file: !67, line: 864, baseType: !219, size: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !259, file: !67, line: 865, baseType: !122, size: 64, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !259, file: !67, line: 866, baseType: !32, size: 8, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !259, file: !67, line: 867, baseType: !122, size: 64, offset: 704)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !259, file: !67, line: 868, baseType: !122, size: 64, offset: 768)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !259, file: !67, line: 869, baseType: !122, size: 64, offset: 832)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !259, file: !67, line: 870, baseType: !278, size: 32, offset: 896)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 4)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !259, file: !67, line: 871, baseType: !24, size: 32, offset: 928)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !259, file: !67, line: 872, baseType: !24, size: 32, offset: 960)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !259, file: !67, line: 873, baseType: !24, size: 32, offset: 992)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !259, file: !67, line: 874, baseType: !24, size: 32, offset: 1024)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !259, file: !67, line: 875, baseType: !24, size: 32, offset: 1056)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !259, file: !67, line: 876, baseType: !24, size: 32, offset: 1088)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !259, file: !67, line: 877, baseType: !24, size: 32, offset: 1120)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !259, file: !67, line: 878, baseType: !24, size: 32, offset: 1152)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !259, file: !67, line: 879, baseType: !24, size: 32, offset: 1184)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !259, file: !67, line: 880, baseType: !24, size: 32, offset: 1216)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !259, file: !67, line: 881, baseType: !24, size: 32, offset: 1248)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !259, file: !67, line: 882, baseType: !24, size: 32, offset: 1280)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !259, file: !67, line: 883, baseType: !24, size: 32, offset: 1312)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !259, file: !67, line: 884, baseType: !96, size: 16, offset: 1344)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !259, file: !67, line: 885, baseType: !32, size: 8, offset: 1360)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !259, file: !67, line: 886, baseType: !32, size: 8, offset: 1368)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !259, file: !67, line: 887, baseType: !32, size: 8, offset: 1376)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !259, file: !67, line: 888, baseType: !299, size: 160, offset: 1384)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 20)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !211, file: !67, line: 916, baseType: !81, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !211, file: !67, line: 917, baseType: !304, size: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !67, line: 679, size: 640, elements: !306)
!306 = !{!307, !315, !328, !337, !346, !359, !373, !385, !397}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !305, file: !67, line: 680, baseType: !308, size: 128)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !67, line: 575, size: 128, elements: !309)
!309 = !{!310, !311, !312, !313, !314}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !67, line: 576, baseType: !161, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !67, line: 576, baseType: !32, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !67, line: 576, baseType: !32, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !67, line: 576, baseType: !96, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !67, line: 576, baseType: !96, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !305, file: !67, line: 681, baseType: !316, size: 384)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !67, line: 604, size: 384, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !316, file: !67, line: 605, baseType: !161, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !316, file: !67, line: 605, baseType: !32, size: 8, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !316, file: !67, line: 605, baseType: !32, size: 8, offset: 72)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !316, file: !67, line: 605, baseType: !96, size: 16, offset: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !316, file: !67, line: 605, baseType: !96, size: 16, offset: 96)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !316, file: !67, line: 606, baseType: !96, size: 16, offset: 112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !316, file: !67, line: 607, baseType: !219, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !316, file: !67, line: 608, baseType: !133, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !316, file: !67, line: 609, baseType: !133, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !316, file: !67, line: 610, baseType: !29, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !305, file: !67, line: 682, baseType: !329, size: 192)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !67, line: 582, size: 192, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !67, line: 583, baseType: !161, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !329, file: !67, line: 583, baseType: !32, size: 8, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !67, line: 583, baseType: !32, size: 8, offset: 72)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !329, file: !67, line: 583, baseType: !96, size: 16, offset: 80)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !329, file: !67, line: 583, baseType: !96, size: 16, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !329, file: !67, line: 584, baseType: !85, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !305, file: !67, line: 683, baseType: !338, size: 192)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !67, line: 616, size: 192, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !338, file: !67, line: 617, baseType: !161, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !338, file: !67, line: 617, baseType: !32, size: 8, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !67, line: 617, baseType: !32, size: 8, offset: 72)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !338, file: !67, line: 617, baseType: !96, size: 16, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !338, file: !67, line: 617, baseType: !96, size: 16, offset: 96)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !338, file: !67, line: 618, baseType: !81, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !305, file: !67, line: 684, baseType: !347, size: 448)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !67, line: 621, size: 448, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !67, line: 622, baseType: !161, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !67, line: 622, baseType: !32, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !67, line: 622, baseType: !32, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !67, line: 622, baseType: !96, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !67, line: 622, baseType: !96, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !347, file: !67, line: 623, baseType: !24, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !347, file: !67, line: 624, baseType: !219, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !347, file: !67, line: 625, baseType: !133, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !347, file: !67, line: 626, baseType: !133, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !347, file: !67, line: 627, baseType: !24, size: 32, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !305, file: !67, line: 685, baseType: !360, size: 512)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !67, line: 590, size: 512, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !67, line: 591, baseType: !161, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !360, file: !67, line: 591, baseType: !32, size: 8, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !67, line: 591, baseType: !32, size: 8, offset: 72)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !360, file: !67, line: 591, baseType: !96, size: 16, offset: 80)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !360, file: !67, line: 591, baseType: !96, size: 16, offset: 96)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !360, file: !67, line: 592, baseType: !24, size: 32, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !360, file: !67, line: 593, baseType: !85, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !360, file: !67, line: 594, baseType: !85, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !360, file: !67, line: 595, baseType: !184, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !360, file: !67, line: 596, baseType: !161, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !360, file: !67, line: 597, baseType: !24, size: 32, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !305, file: !67, line: 686, baseType: !374, size: 320)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !67, line: 634, size: 320, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !67, line: 635, baseType: !161, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !67, line: 635, baseType: !32, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !67, line: 635, baseType: !32, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !67, line: 635, baseType: !96, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !67, line: 635, baseType: !96, size: 16, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !374, file: !67, line: 636, baseType: !32, size: 8, offset: 112)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !374, file: !67, line: 637, baseType: !184, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !374, file: !67, line: 638, baseType: !85, size: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !374, file: !67, line: 639, baseType: !29, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !305, file: !67, line: 687, baseType: !386, size: 640)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !67, line: 646, size: 640, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !67, line: 647, baseType: !161, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !67, line: 647, baseType: !32, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !67, line: 647, baseType: !32, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !386, file: !67, line: 647, baseType: !96, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !386, file: !67, line: 647, baseType: !96, size: 16, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !386, file: !67, line: 648, baseType: !394, size: 512, offset: 128)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 512, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 8)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !305, file: !67, line: 688, baseType: !398, size: 320)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !67, line: 669, size: 320, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !67, line: 670, baseType: !161, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !398, file: !67, line: 670, baseType: !32, size: 8, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !67, line: 670, baseType: !32, size: 8, offset: 72)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !398, file: !67, line: 670, baseType: !96, size: 16, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !398, file: !67, line: 670, baseType: !96, size: 16, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !398, file: !67, line: 671, baseType: !32, size: 8, offset: 112)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !398, file: !67, line: 672, baseType: !81, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !398, file: !67, line: 673, baseType: !85, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !398, file: !67, line: 674, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !67, line: 660, size: 128, elements: !411)
!411 = !{!412, !418}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !410, file: !67, line: 661, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !23, line: 1061, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417, !24, !161}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !23, line: 424, baseType: !161)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !410, file: !67, line: 662, baseType: !161, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !211, file: !67, line: 918, baseType: !219, size: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !211, file: !67, line: 919, baseType: !24, size: 32, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !185, file: !186, line: 61, baseType: !24, size: 32, offset: 1088)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !185, file: !186, line: 62, baseType: !24, size: 32, offset: 1120)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !185, file: !186, line: 63, baseType: !96, size: 16, offset: 1152)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !185, file: !186, line: 64, baseType: !32, size: 8, offset: 1168)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !185, file: !186, line: 66, baseType: !426, size: 2688, offset: 1216)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 2688, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 7)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !185, file: !186, line: 67, baseType: !430, size: 3072, offset: 3904)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 3072, elements: !395)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !185, file: !186, line: 68, baseType: !432, size: 576, offset: 6976)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 576, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 9)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !185, file: !186, line: 69, baseType: !148, size: 64, offset: 7552)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !185, file: !186, line: 71, baseType: !133, size: 64, offset: 7616)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !185, file: !186, line: 72, baseType: !148, size: 64, offset: 7680)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !185, file: !186, line: 73, baseType: !304, size: 64, offset: 7744)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !185, file: !186, line: 74, baseType: !81, size: 64, offset: 7808)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !185, file: !186, line: 75, baseType: !85, size: 64, offset: 7872)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !185, file: !186, line: 76, baseType: !81, size: 64, offset: 7936)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !185, file: !186, line: 77, baseType: !219, size: 64, offset: 8000)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !185, file: !186, line: 78, baseType: !85, size: 64, offset: 8064)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !185, file: !186, line: 79, baseType: !81, size: 64, offset: 8128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !185, file: !186, line: 80, baseType: !122, size: 64, offset: 8192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !185, file: !186, line: 81, baseType: !219, size: 64, offset: 8256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !185, file: !186, line: 82, baseType: !448, size: 64, offset: 8320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !67, line: 718, size: 128, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !450, file: !67, line: 722, baseType: !24, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !450, file: !67, line: 723, baseType: !24, size: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !67, line: 724, baseType: !96, size: 16, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !450, file: !67, line: 725, baseType: !32, size: 8, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !450, file: !67, line: 726, baseType: !32, size: 8, offset: 88)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !67, line: 727, baseType: !32, size: 8, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !185, file: !186, line: 83, baseType: !219, size: 64, offset: 8384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !185, file: !186, line: 84, baseType: !85, size: 64, offset: 8448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !185, file: !186, line: 85, baseType: !304, size: 64, offset: 8512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !185, file: !186, line: 86, baseType: !85, size: 64, offset: 8576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !185, file: !186, line: 87, baseType: !304, size: 64, offset: 8640)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !185, file: !186, line: 88, baseType: !219, size: 64, offset: 8704)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !185, file: !186, line: 89, baseType: !219, size: 64, offset: 8768)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !185, file: !186, line: 90, baseType: !466, size: 64, offset: 8832)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !185, file: !186, line: 91, baseType: !468, size: 64, offset: 8896)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !67, line: 652, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!22, !184, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !185, file: !186, line: 92, baseType: !474, size: 64, offset: 8960)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !67, line: 656, baseType: !181)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !177, file: !87, line: 153, baseType: !85, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !163, file: !87, line: 156, baseType: !24, size: 32, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !163, file: !87, line: 157, baseType: !196, size: 16, offset: 416)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !163, file: !87, line: 158, baseType: !32, size: 8, offset: 432)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !86, file: !87, line: 377, baseType: !480, size: 576)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !87, line: 122, size: 576, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !480, file: !87, line: 123, baseType: !85, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !480, file: !87, line: 123, baseType: !32, size: 8, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !87, line: 123, baseType: !32, size: 8, offset: 72)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !480, file: !87, line: 123, baseType: !96, size: 16, offset: 80)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !87, line: 123, baseType: !32, size: 8, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !480, file: !87, line: 123, baseType: !32, size: 8, offset: 104)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !480, file: !87, line: 124, baseType: !96, size: 16, offset: 112)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !480, file: !87, line: 125, baseType: !161, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !480, file: !87, line: 126, baseType: !29, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !480, file: !87, line: 127, baseType: !466, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !480, file: !87, line: 128, baseType: !85, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !87, line: 129, baseType: !85, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !480, file: !87, line: 130, baseType: !81, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !480, file: !87, line: 131, baseType: !32, size: 8, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !86, file: !87, line: 378, baseType: !497, size: 512)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !87, line: 134, size: 512, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !510, !511}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !87, line: 135, baseType: !85, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !87, line: 135, baseType: !32, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !87, line: 135, baseType: !32, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !87, line: 135, baseType: !96, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !87, line: 135, baseType: !32, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !497, file: !87, line: 135, baseType: !32, size: 8, offset: 104)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !497, file: !87, line: 136, baseType: !81, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !497, file: !87, line: 137, baseType: !85, size: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !87, line: 138, baseType: !85, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !497, file: !87, line: 139, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !29)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !497, file: !87, line: 140, baseType: !24, size: 32, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !497, file: !87, line: 141, baseType: !161, size: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !86, file: !87, line: 379, baseType: !513, size: 320)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !87, line: 185, size: 320, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !524}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !513, file: !87, line: 186, baseType: !85, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !513, file: !87, line: 186, baseType: !32, size: 8, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !513, file: !87, line: 186, baseType: !32, size: 8, offset: 72)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !513, file: !87, line: 186, baseType: !96, size: 16, offset: 80)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !87, line: 186, baseType: !32, size: 8, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !513, file: !87, line: 186, baseType: !521, size: 128, offset: 128)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 2)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !513, file: !87, line: 186, baseType: !85, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !86, file: !87, line: 380, baseType: !526, size: 384)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !87, line: 188, size: 384, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !526, file: !87, line: 189, baseType: !85, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !526, file: !87, line: 189, baseType: !32, size: 8, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !526, file: !87, line: 189, baseType: !32, size: 8, offset: 72)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !526, file: !87, line: 189, baseType: !96, size: 16, offset: 80)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !87, line: 189, baseType: !32, size: 8, offset: 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !526, file: !87, line: 190, baseType: !521, size: 128, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !526, file: !87, line: 190, baseType: !85, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !526, file: !87, line: 190, baseType: !77, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !86, file: !87, line: 381, baseType: !537, size: 384)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !87, line: 193, size: 384, elements: !538)
!538 = !{!539, !540, !541, !542, !543, !544, !545, !546, !547}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !537, file: !87, line: 194, baseType: !85, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !537, file: !87, line: 194, baseType: !32, size: 8, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !87, line: 194, baseType: !32, size: 8, offset: 72)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !537, file: !87, line: 194, baseType: !96, size: 16, offset: 80)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !537, file: !87, line: 194, baseType: !32, size: 8, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !537, file: !87, line: 194, baseType: !521, size: 128, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !537, file: !87, line: 194, baseType: !85, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !537, file: !87, line: 194, baseType: !24, size: 32, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !537, file: !87, line: 195, baseType: !24, size: 32, offset: 352)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !86, file: !87, line: 382, baseType: !549, size: 384)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !87, line: 198, size: 384, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !549, file: !87, line: 199, baseType: !85, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !549, file: !87, line: 199, baseType: !32, size: 8, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !549, file: !87, line: 199, baseType: !32, size: 8, offset: 72)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !549, file: !87, line: 199, baseType: !96, size: 16, offset: 80)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !87, line: 199, baseType: !32, size: 8, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !549, file: !87, line: 201, baseType: !32, size: 8, offset: 104)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !549, file: !87, line: 202, baseType: !32, size: 8, offset: 112)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !549, file: !87, line: 203, baseType: !521, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !549, file: !87, line: 203, baseType: !85, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !549, file: !87, line: 203, baseType: !561, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !23, line: 128, baseType: !29)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !86, file: !87, line: 383, baseType: !563, size: 320)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !87, line: 206, size: 320, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !87, line: 207, baseType: !85, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !87, line: 207, baseType: !32, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !87, line: 207, baseType: !32, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !87, line: 207, baseType: !96, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !87, line: 207, baseType: !32, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !87, line: 207, baseType: !521, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !87, line: 207, baseType: !85, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !86, file: !87, line: 384, baseType: !573, size: 384)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !87, line: 234, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !87, line: 235, baseType: !85, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !87, line: 235, baseType: !32, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !87, line: 235, baseType: !32, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !87, line: 235, baseType: !96, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !87, line: 235, baseType: !32, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !573, file: !87, line: 235, baseType: !32, size: 8, offset: 104)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !573, file: !87, line: 235, baseType: !32, size: 8, offset: 112)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !573, file: !87, line: 235, baseType: !32, size: 8, offset: 120)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !573, file: !87, line: 235, baseType: !81, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !573, file: !87, line: 235, baseType: !24, size: 32, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !573, file: !87, line: 235, baseType: !24, size: 32, offset: 224)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !573, file: !87, line: 235, baseType: !24, size: 32, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !573, file: !87, line: 235, baseType: !32, size: 8, offset: 288)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !573, file: !87, line: 235, baseType: !32, size: 8, offset: 296)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !573, file: !87, line: 235, baseType: !85, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !86, file: !87, line: 385, baseType: !591, size: 576)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !87, line: 238, size: 576, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !87, line: 239, baseType: !85, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !87, line: 239, baseType: !32, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !87, line: 239, baseType: !32, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !87, line: 239, baseType: !96, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !87, line: 239, baseType: !32, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !591, file: !87, line: 239, baseType: !32, size: 8, offset: 104)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !591, file: !87, line: 239, baseType: !32, size: 8, offset: 112)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !591, file: !87, line: 239, baseType: !32, size: 8, offset: 120)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !591, file: !87, line: 239, baseType: !81, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !591, file: !87, line: 239, baseType: !24, size: 32, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !591, file: !87, line: 239, baseType: !24, size: 32, offset: 224)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !591, file: !87, line: 239, baseType: !24, size: 32, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !591, file: !87, line: 239, baseType: !32, size: 8, offset: 288)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !591, file: !87, line: 239, baseType: !32, size: 8, offset: 296)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !591, file: !87, line: 239, baseType: !96, size: 16, offset: 304)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !591, file: !87, line: 240, baseType: !85, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !591, file: !87, line: 241, baseType: !133, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !591, file: !87, line: 242, baseType: !96, size: 16, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !591, file: !87, line: 243, baseType: !133, size: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !86, file: !87, line: 386, baseType: !613, size: 384)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !87, line: 263, size: 384, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !87, line: 264, baseType: !85, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !87, line: 264, baseType: !32, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !87, line: 264, baseType: !32, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !87, line: 264, baseType: !96, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !87, line: 264, baseType: !32, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !613, file: !87, line: 264, baseType: !32, size: 8, offset: 104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !613, file: !87, line: 264, baseType: !32, size: 8, offset: 112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !613, file: !87, line: 264, baseType: !32, size: 8, offset: 120)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !87, line: 264, baseType: !81, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !613, file: !87, line: 264, baseType: !24, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !613, file: !87, line: 264, baseType: !24, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !87, line: 264, baseType: !24, size: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !613, file: !87, line: 264, baseType: !32, size: 8, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !613, file: !87, line: 264, baseType: !32, size: 8, offset: 296)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !613, file: !87, line: 264, baseType: !32, size: 8, offset: 304)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !613, file: !87, line: 265, baseType: !85, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !86, file: !87, line: 387, baseType: !632, size: 448)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !87, line: 246, size: 448, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !632, file: !87, line: 247, baseType: !85, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !632, file: !87, line: 247, baseType: !32, size: 8, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !87, line: 247, baseType: !32, size: 8, offset: 72)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !632, file: !87, line: 247, baseType: !96, size: 16, offset: 80)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !87, line: 247, baseType: !32, size: 8, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !632, file: !87, line: 247, baseType: !32, size: 8, offset: 104)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !632, file: !87, line: 247, baseType: !32, size: 8, offset: 112)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !632, file: !87, line: 247, baseType: !32, size: 8, offset: 120)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !632, file: !87, line: 247, baseType: !81, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !632, file: !87, line: 247, baseType: !24, size: 32, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !632, file: !87, line: 247, baseType: !24, size: 32, offset: 224)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !632, file: !87, line: 247, baseType: !24, size: 32, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !632, file: !87, line: 247, baseType: !32, size: 8, offset: 288)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !632, file: !87, line: 247, baseType: !32, size: 8, offset: 296)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !632, file: !87, line: 247, baseType: !85, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !632, file: !87, line: 248, baseType: !85, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !86, file: !87, line: 388, baseType: !651, size: 448)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !87, line: 251, size: 448, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !651, file: !87, line: 252, baseType: !85, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !651, file: !87, line: 252, baseType: !32, size: 8, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !87, line: 252, baseType: !32, size: 8, offset: 72)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !651, file: !87, line: 252, baseType: !96, size: 16, offset: 80)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !87, line: 252, baseType: !32, size: 8, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !651, file: !87, line: 252, baseType: !32, size: 8, offset: 104)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !651, file: !87, line: 252, baseType: !32, size: 8, offset: 112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !651, file: !87, line: 252, baseType: !32, size: 8, offset: 120)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !87, line: 252, baseType: !81, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !651, file: !87, line: 252, baseType: !24, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !651, file: !87, line: 252, baseType: !24, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !87, line: 252, baseType: !24, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !651, file: !87, line: 252, baseType: !32, size: 8, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !651, file: !87, line: 252, baseType: !32, size: 8, offset: 296)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !651, file: !87, line: 257, baseType: !85, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !651, file: !87, line: 258, baseType: !85, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !86, file: !87, line: 389, baseType: !670, size: 512)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !87, line: 274, size: 512, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !670, file: !87, line: 275, baseType: !85, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !670, file: !87, line: 275, baseType: !32, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !87, line: 275, baseType: !32, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !670, file: !87, line: 275, baseType: !96, size: 16, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !87, line: 275, baseType: !32, size: 8, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !670, file: !87, line: 275, baseType: !81, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !670, file: !87, line: 276, baseType: !24, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !670, file: !87, line: 277, baseType: !413, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !670, file: !87, line: 278, baseType: !161, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !670, file: !87, line: 279, baseType: !521, size: 128, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !86, file: !87, line: 390, baseType: !683, size: 576)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !87, line: 282, size: 576, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !698, !699, !700, !701, !707, !708}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !683, file: !87, line: 283, baseType: !85, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !683, file: !87, line: 283, baseType: !32, size: 8, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !87, line: 283, baseType: !32, size: 8, offset: 72)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !683, file: !87, line: 283, baseType: !96, size: 16, offset: 80)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !87, line: 283, baseType: !32, size: 8, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !683, file: !87, line: 283, baseType: !32, size: 8, offset: 104)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !683, file: !87, line: 284, baseType: !32, size: 8, offset: 112)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !683, file: !87, line: 285, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !23, line: 1093, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!22, !24, !509, !24, !697, !161, !161}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !87, line: 286, baseType: !81, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !683, file: !87, line: 287, baseType: !161, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !683, file: !87, line: 288, baseType: !161, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !683, file: !87, line: 289, baseType: !702, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !23, line: 1126, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!22, !417, !24, !161, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !683, file: !87, line: 290, baseType: !85, size: 64, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !683, file: !87, line: 291, baseType: !85, size: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !86, file: !87, line: 391, baseType: !710, size: 512)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !87, line: 309, size: 512, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !710, file: !87, line: 310, baseType: !85, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !710, file: !87, line: 310, baseType: !32, size: 8, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !87, line: 310, baseType: !32, size: 8, offset: 72)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !710, file: !87, line: 310, baseType: !96, size: 16, offset: 80)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !87, line: 310, baseType: !32, size: 8, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !710, file: !87, line: 310, baseType: !32, size: 8, offset: 104)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !710, file: !87, line: 311, baseType: !32, size: 8, offset: 112)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !710, file: !87, line: 312, baseType: !32, size: 8, offset: 120)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !710, file: !87, line: 313, baseType: !161, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !87, line: 314, baseType: !81, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !710, file: !87, line: 315, baseType: !148, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !710, file: !87, line: 316, baseType: !133, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !710, file: !87, line: 317, baseType: !133, size: 64, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !710, file: !87, line: 318, baseType: !24, size: 32, offset: 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !86, file: !87, line: 392, baseType: !727, size: 448)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !87, line: 342, size: 448, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !727, file: !87, line: 343, baseType: !85, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !87, line: 343, baseType: !32, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !87, line: 343, baseType: !32, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !727, file: !87, line: 343, baseType: !96, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !87, line: 343, baseType: !32, size: 8, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !727, file: !87, line: 343, baseType: !81, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !727, file: !87, line: 344, baseType: !81, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !727, file: !87, line: 345, baseType: !161, size: 64, offset: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !727, file: !87, line: 346, baseType: !133, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !727, file: !87, line: 347, baseType: !24, size: 32, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !86, file: !87, line: 393, baseType: !740, size: 256)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !87, line: 352, size: 256, elements: !741)
!741 = !{!742, !743, !744, !745, !746, !747, !752}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !740, file: !87, line: 353, baseType: !85, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !740, file: !87, line: 353, baseType: !32, size: 8, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !87, line: 353, baseType: !32, size: 8, offset: 72)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !740, file: !87, line: 353, baseType: !96, size: 16, offset: 80)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !87, line: 353, baseType: !32, size: 8, offset: 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !740, file: !87, line: 353, baseType: !748, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !23, line: 1064, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !417, !161}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !740, file: !87, line: 354, baseType: !161, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !86, file: !87, line: 394, baseType: !754, size: 192)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !87, line: 359, size: 192, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !754, file: !87, line: 360, baseType: !85, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !87, line: 360, baseType: !32, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !87, line: 360, baseType: !32, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !754, file: !87, line: 360, baseType: !96, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !87, line: 360, baseType: !32, size: 8, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !87, line: 360, baseType: !85, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !86, file: !87, line: 401, baseType: !82, size: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !67, line: 135, baseType: !32, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !67, line: 136, baseType: !32, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !67, line: 137, baseType: !96, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !82, file: !67, line: 138, baseType: !767, size: 32, offset: 96)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !768, line: 328, size: 32, elements: !769)
!768 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !767, file: !768, line: 329, baseType: !24, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !767, file: !768, line: 330, baseType: !278, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !82, file: !67, line: 139, baseType: !81, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !82, file: !67, line: 140, baseType: !81, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !82, file: !67, line: 141, baseType: !81, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !82, file: !67, line: 142, baseType: !196, size: 16, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !78, file: !67, line: 482, baseType: !77, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !78, file: !67, line: 483, baseType: !77, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !78, file: !67, line: 484, baseType: !71, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !78, file: !67, line: 485, baseType: !780, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !67, line: 466, size: 320, elements: !782)
!782 = !{!783, !788, !789, !790, !791, !792, !793}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !781, file: !67, line: 467, baseType: !784, size: 128)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !67, line: 459, size: 128, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !784, file: !67, line: 460, baseType: !32, size: 8)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !784, file: !67, line: 461, baseType: !29, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !781, file: !67, line: 468, baseType: !784, size: 128, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !781, file: !67, line: 469, baseType: !96, size: 16, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !781, file: !67, line: 470, baseType: !32, size: 8, offset: 272)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !781, file: !67, line: 471, baseType: !32, size: 8, offset: 280)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !781, file: !67, line: 472, baseType: !32, size: 8, offset: 288)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !781, file: !67, line: 473, baseType: !32, size: 8, offset: 296)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !78, file: !67, line: 486, baseType: !795, size: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !67, line: 448, size: 192, elements: !797)
!797 = !{!798, !821, !822, !823, !824, !825}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !796, file: !67, line: 449, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !67, line: 438, size: 64, elements: !800)
!800 = !{!801, !802, !815}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !799, file: !67, line: 439, baseType: !81, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !799, file: !67, line: 440, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !67, line: 419, size: 256, elements: !805)
!805 = !{!806, !811, !812, !813, !814}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !804, file: !67, line: 420, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !23, line: 1058, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!24, !417, !24, !161}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !804, file: !67, line: 421, baseType: !161, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !804, file: !67, line: 422, baseType: !81, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !804, file: !67, line: 423, baseType: !32, size: 8, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !804, file: !67, line: 424, baseType: !32, size: 8, offset: 200)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !799, file: !67, line: 441, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !67, line: 429, size: 128, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !817, file: !67, line: 430, baseType: !81, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !67, line: 431, baseType: !816, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !796, file: !67, line: 450, baseType: !780, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !67, line: 451, baseType: !32, size: 8, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !796, file: !67, line: 452, baseType: !32, size: 8, offset: 136)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !796, file: !67, line: 453, baseType: !32, size: 8, offset: 144)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !796, file: !67, line: 454, baseType: !32, size: 8, offset: 152)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !78, file: !67, line: 487, baseType: !29, size: 64, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !78, file: !67, line: 488, baseType: !24, size: 32, offset: 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !78, file: !67, line: 489, baseType: !96, size: 16, offset: 480)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !78, file: !67, line: 490, baseType: !96, size: 16, offset: 496)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !78, file: !67, line: 491, baseType: !32, size: 8, offset: 512)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !78, file: !67, line: 492, baseType: !32, size: 8, offset: 520)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !72, file: !67, line: 501, baseType: !24, size: 32, offset: 192)
!833 = !{!834, !835, !836, !837, !838, !839, !840}
!834 = !DILocalVariable(name: "gpe_walk_callback", arg: 1, scope: !63, file: !3, line: 31, type: !66)
!835 = !DILocalVariable(name: "context", arg: 2, scope: !63, file: !3, line: 31, type: !161)
!836 = !DILocalVariable(name: "gpe_block", scope: !63, file: !3, line: 33, type: !77)
!837 = !DILocalVariable(name: "gpe_xrupt_info", scope: !63, file: !3, line: 34, type: !71)
!838 = !DILocalVariable(name: "status", scope: !63, file: !3, line: 35, type: !22)
!839 = !DILocalVariable(name: "flags", scope: !63, file: !3, line: 36, type: !37)
!840 = !DILabel(scope: !63, name: "unlock_and_exit", file: !3, line: 70)
!841 = !DILocation(line: 31, column: 41, scope: !63)
!842 = !DILocation(line: 31, column: 66, scope: !63)
!843 = !DILocation(line: 33, column: 2, scope: !63)
!844 = !DILocation(line: 33, column: 30, scope: !63)
!845 = !DILocation(line: 34, column: 2, scope: !63)
!846 = !DILocation(line: 34, column: 30, scope: !63)
!847 = !DILocation(line: 35, column: 2, scope: !63)
!848 = !DILocation(line: 35, column: 14, scope: !63)
!849 = !DILocation(line: 36, column: 2, scope: !63)
!850 = !DILocation(line: 36, column: 17, scope: !63)
!851 = !DILocation(line: 40, column: 31, scope: !63)
!852 = !DILocation(line: 40, column: 10, scope: !63)
!853 = !DILocation(line: 40, column: 8, scope: !63)
!854 = !DILocation(line: 44, column: 19, scope: !63)
!855 = !DILocation(line: 44, column: 17, scope: !63)
!856 = !DILocation(line: 45, column: 2, scope: !63)
!857 = !DILocation(line: 45, column: 9, scope: !63)
!858 = !DILocation(line: 49, column: 15, scope: !859)
!859 = distinct !DILexicalBlock(scope: !63, file: !3, line: 45, column: 25)
!860 = !DILocation(line: 49, column: 31, scope: !859)
!861 = !DILocation(line: 49, column: 13, scope: !859)
!862 = !DILocation(line: 50, column: 3, scope: !859)
!863 = !DILocation(line: 50, column: 10, scope: !859)
!864 = !DILocation(line: 55, column: 8, scope: !865)
!865 = distinct !DILexicalBlock(scope: !859, file: !3, line: 50, column: 21)
!866 = !DILocation(line: 55, column: 26, scope: !865)
!867 = !DILocation(line: 55, column: 42, scope: !865)
!868 = !DILocation(line: 56, column: 12, scope: !865)
!869 = !DILocation(line: 54, column: 11, scope: !865)
!870 = !DILocation(line: 57, column: 8, scope: !871)
!871 = distinct !DILexicalBlock(scope: !865, file: !3, line: 57, column: 8)
!872 = !DILocation(line: 57, column: 8, scope: !865)
!873 = !DILocation(line: 58, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 58, column: 9)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 57, column: 30)
!876 = !DILocation(line: 58, column: 16, scope: !874)
!877 = !DILocation(line: 58, column: 9, scope: !875)
!878 = !DILocation(line: 59, column: 13, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !3, line: 58, column: 32)
!880 = !DILocation(line: 60, column: 5, scope: !879)
!881 = !DILocation(line: 61, column: 5, scope: !875)
!882 = !DILocation(line: 64, column: 16, scope: !865)
!883 = !DILocation(line: 64, column: 27, scope: !865)
!884 = !DILocation(line: 64, column: 14, scope: !865)
!885 = distinct !{!885, !862, !886, !887, !888}
!886 = !DILocation(line: 65, column: 3, scope: !859)
!887 = !{!"llvm.loop.mustprogress"}
!888 = !{!"llvm.loop.unroll.disable"}
!889 = !DILocation(line: 67, column: 20, scope: !859)
!890 = !DILocation(line: 67, column: 36, scope: !859)
!891 = !DILocation(line: 67, column: 18, scope: !859)
!892 = distinct !{!892, !856, !893, !887, !888}
!893 = !DILocation(line: 68, column: 2, scope: !63)
!894 = !DILocation(line: 70, column: 1, scope: !63)
!895 = !DILocation(line: 71, column: 23, scope: !63)
!896 = !DILocation(line: 71, column: 42, scope: !63)
!897 = !DILocation(line: 71, column: 2, scope: !63)
!898 = !DILocation(line: 72, column: 2, scope: !63)
!899 = !DILocation(line: 73, column: 1, scope: !63)
!900 = !DISubprogram(name: "acpi_os_acquire_lock", scope: !901, file: !901, line: 93, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!901 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!902 = !DISubroutineType(types: !903)
!903 = !{!37, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !906, line: 29, baseType: !907)
!906 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !906, line: 17, size: 32, elements: !908)
!908 = !{!909}
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !907, file: !906, line: 18, baseType: !910, size: 32)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !907, file: !906, line: 18, size: 32, elements: !911)
!911 = !{!912}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !910, file: !906, line: 19, baseType: !913, size: 32)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !914, line: 14, size: 32, elements: !915)
!914 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !913, file: !914, line: 15, baseType: !917, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !918, line: 44, baseType: !919)
!918 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !918, line: 14, size: 32, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !918, line: 15, baseType: !922, size: 32)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !918, line: 15, size: 32, elements: !923)
!923 = !{!924, !930, !935}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !922, file: !918, line: 16, baseType: !925, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !36, line: 174, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 172, size: 32, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !926, file: !36, line: 173, baseType: !929, size: 32)
!929 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !918, line: 24, baseType: !931, size: 16)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !918, line: 24, size: 16, elements: !932)
!932 = !{!933, !934}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !931, file: !918, line: 25, baseType: !32, size: 8)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !931, file: !918, line: 26, baseType: !32, size: 8, offset: 8)
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !918, line: 28, baseType: !936, size: 32)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !922, file: !918, line: 28, size: 32, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !936, file: !918, line: 29, baseType: !96, size: 16)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !936, file: !918, line: 30, baseType: !96, size: 16, offset: 16)
!940 = !DISubprogram(name: "acpi_os_release_lock", scope: !901, file: !901, line: 97, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !904, !37}
!943 = distinct !DISubprogram(name: "acpi_ev_get_gpe_device", scope: !3, file: !3, line: 89, type: !69, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!944 = !{!945, !946, !947, !948}
!945 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !943, file: !3, line: 89, type: !71)
!946 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !943, file: !3, line: 90, type: !77)
!947 = !DILocalVariable(name: "context", arg: 3, scope: !943, file: !3, line: 90, type: !161)
!948 = !DILocalVariable(name: "info", scope: !943, file: !3, line: 92, type: !949)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_device_info", file: !67, line: 512, size: 192, elements: !951)
!951 = !{!952, !953, !954, !955}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !950, file: !67, line: 513, baseType: !24, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "next_block_base_index", scope: !950, file: !67, line: 514, baseType: !24, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !950, file: !67, line: 515, baseType: !22, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !950, file: !67, line: 516, baseType: !81, size: 64, offset: 128)
!956 = !DILocation(line: 89, column: 52, scope: !943)
!957 = !DILocation(line: 90, column: 38, scope: !943)
!958 = !DILocation(line: 90, column: 55, scope: !943)
!959 = !DILocation(line: 92, column: 2, scope: !943)
!960 = !DILocation(line: 92, column: 31, scope: !943)
!961 = !DILocation(line: 92, column: 38, scope: !943)
!962 = !DILocation(line: 96, column: 33, scope: !943)
!963 = !DILocation(line: 96, column: 44, scope: !943)
!964 = !DILocation(line: 96, column: 2, scope: !943)
!965 = !DILocation(line: 96, column: 8, scope: !943)
!966 = !DILocation(line: 96, column: 30, scope: !943)
!967 = !DILocation(line: 98, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !943, file: !3, line: 98, column: 6)
!969 = !DILocation(line: 98, column: 12, scope: !968)
!970 = !DILocation(line: 98, column: 20, scope: !968)
!971 = !DILocation(line: 98, column: 26, scope: !968)
!972 = !DILocation(line: 98, column: 18, scope: !968)
!973 = !DILocation(line: 98, column: 6, scope: !943)
!974 = !DILocation(line: 103, column: 8, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 103, column: 7)
!976 = distinct !DILexicalBlock(scope: !968, file: !3, line: 98, column: 49)
!977 = !DILocation(line: 103, column: 19, scope: !975)
!978 = !DILocation(line: 103, column: 26, scope: !975)
!979 = !DILocation(line: 103, column: 7, scope: !975)
!980 = !DILocation(line: 103, column: 31, scope: !975)
!981 = !DILocation(line: 103, column: 7, scope: !976)
!982 = !DILocation(line: 104, column: 23, scope: !983)
!983 = distinct !DILexicalBlock(scope: !975, file: !3, line: 103, column: 52)
!984 = !DILocation(line: 104, column: 34, scope: !983)
!985 = !DILocation(line: 104, column: 4, scope: !983)
!986 = !DILocation(line: 104, column: 10, scope: !983)
!987 = !DILocation(line: 104, column: 21, scope: !983)
!988 = !DILocation(line: 105, column: 3, scope: !983)
!989 = !DILocation(line: 107, column: 3, scope: !976)
!990 = !DILocation(line: 107, column: 9, scope: !976)
!991 = !DILocation(line: 107, column: 16, scope: !976)
!992 = !DILocation(line: 108, column: 3, scope: !976)
!993 = !DILocation(line: 111, column: 2, scope: !943)
!994 = !DILocation(line: 112, column: 1, scope: !943)
!995 = distinct !DISubprogram(name: "acpi_ev_get_gpe_xrupt_block", scope: !3, file: !3, line: 131, type: !996, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !999)
!996 = !DISubroutineType(types: !997)
!997 = !{!22, !24, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!999 = !{!1000, !1001, !1002, !1003, !1004, !1005}
!1000 = !DILocalVariable(name: "interrupt_number", arg: 1, scope: !995, file: !3, line: 131, type: !24)
!1001 = !DILocalVariable(name: "gpe_xrupt_block", arg: 2, scope: !995, file: !3, line: 132, type: !998)
!1002 = !DILocalVariable(name: "next_gpe_xrupt", scope: !995, file: !3, line: 134, type: !71)
!1003 = !DILocalVariable(name: "gpe_xrupt", scope: !995, file: !3, line: 135, type: !71)
!1004 = !DILocalVariable(name: "status", scope: !995, file: !3, line: 136, type: !22)
!1005 = !DILocalVariable(name: "flags", scope: !995, file: !3, line: 137, type: !37)
!1006 = !DILocation(line: 131, column: 33, scope: !995)
!1007 = !DILocation(line: 132, column: 37, scope: !995)
!1008 = !DILocation(line: 134, column: 2, scope: !995)
!1009 = !DILocation(line: 134, column: 30, scope: !995)
!1010 = !DILocation(line: 135, column: 2, scope: !995)
!1011 = !DILocation(line: 135, column: 30, scope: !995)
!1012 = !DILocation(line: 136, column: 2, scope: !995)
!1013 = !DILocation(line: 136, column: 14, scope: !995)
!1014 = !DILocation(line: 137, column: 2, scope: !995)
!1015 = !DILocation(line: 137, column: 17, scope: !995)
!1016 = !DILocation(line: 143, column: 19, scope: !995)
!1017 = !DILocation(line: 143, column: 17, scope: !995)
!1018 = !DILocation(line: 144, column: 2, scope: !995)
!1019 = !DILocation(line: 144, column: 9, scope: !995)
!1020 = !DILocation(line: 145, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 145, column: 7)
!1022 = distinct !DILexicalBlock(scope: !995, file: !3, line: 144, column: 25)
!1023 = !DILocation(line: 145, column: 23, scope: !1021)
!1024 = !DILocation(line: 145, column: 43, scope: !1021)
!1025 = !DILocation(line: 145, column: 40, scope: !1021)
!1026 = !DILocation(line: 145, column: 7, scope: !1022)
!1027 = !DILocation(line: 146, column: 23, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 145, column: 61)
!1029 = !DILocation(line: 146, column: 5, scope: !1028)
!1030 = !DILocation(line: 146, column: 21, scope: !1028)
!1031 = !DILocation(line: 147, column: 4, scope: !1028)
!1032 = !DILocation(line: 150, column: 20, scope: !1022)
!1033 = !DILocation(line: 150, column: 36, scope: !1022)
!1034 = !DILocation(line: 150, column: 18, scope: !1022)
!1035 = distinct !{!1035, !1018, !1036, !887, !888}
!1036 = !DILocation(line: 151, column: 2, scope: !995)
!1037 = !DILocation(line: 155, column: 14, scope: !995)
!1038 = !DILocation(line: 155, column: 12, scope: !995)
!1039 = !DILocation(line: 156, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !995, file: !3, line: 156, column: 6)
!1041 = !DILocation(line: 156, column: 6, scope: !995)
!1042 = !DILocation(line: 157, column: 3, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 156, column: 18)
!1044 = !DILocation(line: 160, column: 32, scope: !995)
!1045 = !DILocation(line: 160, column: 2, scope: !995)
!1046 = !DILocation(line: 160, column: 13, scope: !995)
!1047 = !DILocation(line: 160, column: 30, scope: !995)
!1048 = !DILocation(line: 164, column: 31, scope: !995)
!1049 = !DILocation(line: 164, column: 10, scope: !995)
!1050 = !DILocation(line: 164, column: 8, scope: !995)
!1051 = !DILocation(line: 165, column: 6, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !995, file: !3, line: 165, column: 6)
!1053 = !DILocation(line: 165, column: 6, scope: !995)
!1054 = !DILocation(line: 166, column: 20, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 165, column: 36)
!1056 = !DILocation(line: 166, column: 18, scope: !1055)
!1057 = !DILocation(line: 167, column: 3, scope: !1055)
!1058 = !DILocation(line: 167, column: 10, scope: !1055)
!1059 = !DILocation(line: 167, column: 26, scope: !1055)
!1060 = !DILocation(line: 168, column: 21, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 167, column: 32)
!1062 = !DILocation(line: 168, column: 37, scope: !1061)
!1063 = !DILocation(line: 168, column: 19, scope: !1061)
!1064 = distinct !{!1064, !1057, !1065, !887, !888}
!1065 = !DILocation(line: 169, column: 3, scope: !1055)
!1066 = !DILocation(line: 171, column: 26, scope: !1055)
!1067 = !DILocation(line: 171, column: 3, scope: !1055)
!1068 = !DILocation(line: 171, column: 19, scope: !1055)
!1069 = !DILocation(line: 171, column: 24, scope: !1055)
!1070 = !DILocation(line: 172, column: 25, scope: !1055)
!1071 = !DILocation(line: 172, column: 3, scope: !1055)
!1072 = !DILocation(line: 172, column: 14, scope: !1055)
!1073 = !DILocation(line: 172, column: 23, scope: !1055)
!1074 = !DILocation(line: 173, column: 2, scope: !1055)
!1075 = !DILocation(line: 174, column: 34, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 173, column: 9)
!1077 = !DILocation(line: 174, column: 32, scope: !1076)
!1078 = !DILocation(line: 177, column: 23, scope: !995)
!1079 = !DILocation(line: 177, column: 42, scope: !995)
!1080 = !DILocation(line: 177, column: 2, scope: !995)
!1081 = !DILocation(line: 181, column: 6, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !995, file: !3, line: 181, column: 6)
!1083 = !DILocation(line: 181, column: 40, scope: !1082)
!1084 = !DILocation(line: 181, column: 26, scope: !1082)
!1085 = !DILocation(line: 181, column: 23, scope: !1082)
!1086 = !DILocation(line: 181, column: 6, scope: !995)
!1087 = !DILocation(line: 182, column: 46, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 181, column: 55)
!1089 = !DILocation(line: 184, column: 11, scope: !1088)
!1090 = !DILocation(line: 182, column: 12, scope: !1088)
!1091 = !DILocation(line: 182, column: 10, scope: !1088)
!1092 = !DILocation(line: 185, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 185, column: 7)
!1094 = !DILocation(line: 185, column: 7, scope: !1088)
!1095 = !DILocation(line: 186, column: 4, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 185, column: 29)
!1097 = !DILocation(line: 189, column: 4, scope: !1096)
!1098 = !DILocation(line: 191, column: 2, scope: !1088)
!1099 = !DILocation(line: 193, column: 21, scope: !995)
!1100 = !DILocation(line: 193, column: 3, scope: !995)
!1101 = !DILocation(line: 193, column: 19, scope: !995)
!1102 = !DILocation(line: 194, column: 2, scope: !995)
!1103 = !DILocation(line: 195, column: 1, scope: !995)
!1104 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1105, file: !1105, line: 55, type: !1106, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1108)
!1105 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!161, !28}
!1108 = !{!1109, !1110, !1112, !1115, !1116, !1119}
!1109 = !DILocalVariable(name: "size", arg: 1, scope: !1104, file: !1105, line: 55, type: !28)
!1110 = !DILocalVariable(name: "_flags", scope: !1111, file: !1105, line: 57, type: !37)
!1111 = distinct !DILexicalBlock(scope: !1104, file: !1105, line: 57, column: 23)
!1112 = !DILocalVariable(name: "__dummy", scope: !1113, file: !1105, line: 57, type: !37)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !1105, line: 57, column: 23)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !1105, line: 57, column: 23)
!1115 = !DILocalVariable(name: "__dummy2", scope: !1113, file: !1105, line: 57, type: !37)
!1116 = !DILocalVariable(name: "__dummy", scope: !1117, file: !1105, line: 57, type: !37)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !1105, line: 57, column: 23)
!1118 = distinct !DILexicalBlock(scope: !1111, file: !1105, line: 57, column: 23)
!1119 = !DILocalVariable(name: "__dummy2", scope: !1117, file: !1105, line: 57, type: !37)
!1120 = !DILocation(line: 55, column: 55, scope: !1104)
!1121 = !DILocation(line: 57, column: 17, scope: !1104)
!1122 = !DILocation(line: 57, column: 23, scope: !1111)
!1123 = !DILocation(line: 57, column: 23, scope: !1113)
!1124 = !DILocation(line: 57, column: 23, scope: !1114)
!1125 = !DILocation(line: 57, column: 23, scope: !1117)
!1126 = !DILocation(line: 57, column: 23, scope: !1118)
!1127 = !DILocation(line: 57, column: 23, scope: !1104)
!1128 = !DILocation(line: 57, column: 9, scope: !1104)
!1129 = !DILocation(line: 57, column: 2, scope: !1104)
!1130 = !DISubprogram(name: "acpi_os_install_interrupt_handler", scope: !901, file: !901, line: 227, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!22, !24, !1133, !161}
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_osd_handler", file: !23, line: 1035, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!24, !161}
!1137 = !DISubprogram(name: "acpi_exception", scope: !1138, file: !1138, line: 906, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !1141, !24, !22, !1141, null}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!1142 = distinct !DISubprogram(name: "acpi_ev_delete_gpe_xrupt", scope: !3, file: !3, line: 210, type: !1143, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1145)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!22, !71}
!1145 = !{!1146, !1147, !1148}
!1146 = !DILocalVariable(name: "gpe_xrupt", arg: 1, scope: !1142, file: !3, line: 210, type: !71)
!1147 = !DILocalVariable(name: "status", scope: !1142, file: !3, line: 212, type: !22)
!1148 = !DILocalVariable(name: "flags", scope: !1142, file: !3, line: 213, type: !37)
!1149 = !DILocation(line: 210, column: 66, scope: !1142)
!1150 = !DILocation(line: 212, column: 2, scope: !1142)
!1151 = !DILocation(line: 212, column: 14, scope: !1142)
!1152 = !DILocation(line: 213, column: 2, scope: !1142)
!1153 = !DILocation(line: 213, column: 17, scope: !1142)
!1154 = !DILocation(line: 219, column: 6, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 219, column: 6)
!1156 = !DILocation(line: 219, column: 17, scope: !1155)
!1157 = !DILocation(line: 219, column: 51, scope: !1155)
!1158 = !DILocation(line: 219, column: 37, scope: !1155)
!1159 = !DILocation(line: 219, column: 34, scope: !1155)
!1160 = !DILocation(line: 219, column: 6, scope: !1142)
!1161 = !DILocation(line: 220, column: 3, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 219, column: 66)
!1163 = !DILocation(line: 220, column: 14, scope: !1162)
!1164 = !DILocation(line: 220, column: 34, scope: !1162)
!1165 = !DILocation(line: 221, column: 3, scope: !1162)
!1166 = !DILocation(line: 227, column: 39, scope: !1142)
!1167 = !DILocation(line: 227, column: 50, scope: !1142)
!1168 = !DILocation(line: 227, column: 6, scope: !1142)
!1169 = !DILocation(line: 226, column: 9, scope: !1142)
!1170 = !DILocation(line: 229, column: 6, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 229, column: 6)
!1172 = !DILocation(line: 229, column: 6, scope: !1142)
!1173 = !DILocation(line: 230, column: 3, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 229, column: 28)
!1175 = !DILocation(line: 235, column: 31, scope: !1142)
!1176 = !DILocation(line: 235, column: 10, scope: !1142)
!1177 = !DILocation(line: 235, column: 8, scope: !1142)
!1178 = !DILocation(line: 236, column: 6, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 236, column: 6)
!1180 = !DILocation(line: 236, column: 17, scope: !1179)
!1181 = !DILocation(line: 236, column: 6, scope: !1142)
!1182 = !DILocation(line: 237, column: 31, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 236, column: 27)
!1184 = !DILocation(line: 237, column: 42, scope: !1183)
!1185 = !DILocation(line: 237, column: 3, scope: !1183)
!1186 = !DILocation(line: 237, column: 14, scope: !1183)
!1187 = !DILocation(line: 237, column: 24, scope: !1183)
!1188 = !DILocation(line: 237, column: 29, scope: !1183)
!1189 = !DILocation(line: 238, column: 2, scope: !1183)
!1190 = !DILocation(line: 241, column: 34, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 238, column: 9)
!1192 = !DILocation(line: 241, column: 45, scope: !1191)
!1193 = !DILocation(line: 241, column: 32, scope: !1191)
!1194 = !DILocation(line: 244, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 244, column: 6)
!1196 = !DILocation(line: 244, column: 17, scope: !1195)
!1197 = !DILocation(line: 244, column: 6, scope: !1142)
!1198 = !DILocation(line: 245, column: 31, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 244, column: 23)
!1200 = !DILocation(line: 245, column: 42, scope: !1199)
!1201 = !DILocation(line: 245, column: 3, scope: !1199)
!1202 = !DILocation(line: 245, column: 14, scope: !1199)
!1203 = !DILocation(line: 245, column: 20, scope: !1199)
!1204 = !DILocation(line: 245, column: 29, scope: !1199)
!1205 = !DILocation(line: 246, column: 2, scope: !1199)
!1206 = !DILocation(line: 247, column: 23, scope: !1142)
!1207 = !DILocation(line: 247, column: 42, scope: !1142)
!1208 = !DILocation(line: 247, column: 2, scope: !1142)
!1209 = !DILocation(line: 251, column: 2, scope: !1142)
!1210 = !DILocation(line: 252, column: 2, scope: !1142)
!1211 = !DILocation(line: 253, column: 1, scope: !1142)
!1212 = !DISubprogram(name: "acpi_os_remove_interrupt_handler", scope: !901, file: !901, line: 234, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!22, !24, !1133}
!1215 = distinct !DISubprogram(name: "acpi_os_free", scope: !1105, file: !1105, line: 60, type: !1216, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !161}
!1218 = !{!1219}
!1219 = !DILocalVariable(name: "memory", arg: 1, scope: !1215, file: !1105, line: 60, type: !161)
!1220 = !DILocation(line: 60, column: 39, scope: !1215)
!1221 = !DILocation(line: 62, column: 8, scope: !1215)
!1222 = !DILocation(line: 62, column: 2, scope: !1215)
!1223 = !DILocation(line: 63, column: 1, scope: !1215)
!1224 = distinct !DISubprogram(name: "acpi_ev_delete_gpe_handlers", scope: !3, file: !3, line: 270, type: !69, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233}
!1226 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1224, file: !3, line: 270, type: !71)
!1227 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1224, file: !3, line: 271, type: !77)
!1228 = !DILocalVariable(name: "context", arg: 3, scope: !1224, file: !3, line: 272, type: !161)
!1229 = !DILocalVariable(name: "gpe_event_info", scope: !1224, file: !3, line: 274, type: !795)
!1230 = !DILocalVariable(name: "notify", scope: !1224, file: !3, line: 275, type: !816)
!1231 = !DILocalVariable(name: "next", scope: !1224, file: !3, line: 276, type: !816)
!1232 = !DILocalVariable(name: "i", scope: !1224, file: !3, line: 277, type: !24)
!1233 = !DILocalVariable(name: "j", scope: !1224, file: !3, line: 278, type: !24)
!1234 = !DILocation(line: 270, column: 57, scope: !1224)
!1235 = !DILocation(line: 271, column: 36, scope: !1224)
!1236 = !DILocation(line: 272, column: 14, scope: !1224)
!1237 = !DILocation(line: 274, column: 2, scope: !1224)
!1238 = !DILocation(line: 274, column: 30, scope: !1224)
!1239 = !DILocation(line: 275, column: 2, scope: !1224)
!1240 = !DILocation(line: 275, column: 31, scope: !1224)
!1241 = !DILocation(line: 276, column: 2, scope: !1224)
!1242 = !DILocation(line: 276, column: 31, scope: !1224)
!1243 = !DILocation(line: 277, column: 2, scope: !1224)
!1244 = !DILocation(line: 277, column: 6, scope: !1224)
!1245 = !DILocation(line: 278, column: 2, scope: !1224)
!1246 = !DILocation(line: 278, column: 6, scope: !1224)
!1247 = !DILocation(line: 284, column: 9, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 284, column: 2)
!1249 = !DILocation(line: 284, column: 7, scope: !1248)
!1250 = !DILocation(line: 284, column: 14, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 284, column: 2)
!1252 = !DILocation(line: 284, column: 18, scope: !1251)
!1253 = !DILocation(line: 284, column: 29, scope: !1251)
!1254 = !DILocation(line: 284, column: 16, scope: !1251)
!1255 = !DILocation(line: 284, column: 2, scope: !1248)
!1256 = !DILocation(line: 288, column: 10, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 288, column: 3)
!1258 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 284, column: 50)
!1259 = !DILocation(line: 288, column: 8, scope: !1257)
!1260 = !DILocation(line: 288, column: 15, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 288, column: 3)
!1262 = !DILocation(line: 288, column: 17, scope: !1261)
!1263 = !DILocation(line: 288, column: 3, scope: !1257)
!1264 = !DILocation(line: 289, column: 22, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 288, column: 49)
!1266 = !DILocation(line: 289, column: 33, scope: !1265)
!1267 = !DILocation(line: 289, column: 56, scope: !1265)
!1268 = !DILocation(line: 289, column: 45, scope: !1265)
!1269 = !DILocation(line: 289, column: 58, scope: !1265)
!1270 = !DILocation(line: 291, column: 11, scope: !1265)
!1271 = !DILocation(line: 291, column: 9, scope: !1265)
!1272 = !DILocation(line: 289, column: 19, scope: !1265)
!1273 = !DILocation(line: 293, column: 9, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 293, column: 8)
!1275 = !DILocation(line: 293, column: 55, scope: !1274)
!1276 = !DILocation(line: 294, column: 36, scope: !1274)
!1277 = !DILocation(line: 295, column: 9, scope: !1274)
!1278 = !DILocation(line: 295, column: 55, scope: !1274)
!1279 = !DILocation(line: 293, column: 8, scope: !1265)
!1280 = !DILocation(line: 300, column: 5, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 296, column: 41)
!1282 = !DILocation(line: 301, column: 5, scope: !1281)
!1283 = !DILocation(line: 301, column: 21, scope: !1281)
!1284 = !DILocation(line: 301, column: 38, scope: !1281)
!1285 = !DILocation(line: 302, column: 5, scope: !1281)
!1286 = !DILocation(line: 302, column: 21, scope: !1281)
!1287 = !DILocation(line: 302, column: 27, scope: !1281)
!1288 = !DILocation(line: 304, column: 4, scope: !1281)
!1289 = !DILocation(line: 304, column: 15, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 304, column: 15)
!1291 = !DILocation(line: 305, column: 8, scope: !1290)
!1292 = !DILocation(line: 304, column: 15, scope: !1274)
!1293 = !DILocation(line: 309, column: 14, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 305, column: 37)
!1295 = !DILocation(line: 309, column: 30, scope: !1294)
!1296 = !DILocation(line: 309, column: 39, scope: !1294)
!1297 = !DILocation(line: 309, column: 12, scope: !1294)
!1298 = !DILocation(line: 310, column: 5, scope: !1294)
!1299 = !DILocation(line: 310, column: 12, scope: !1294)
!1300 = !DILocation(line: 311, column: 13, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 310, column: 20)
!1302 = !DILocation(line: 311, column: 21, scope: !1301)
!1303 = !DILocation(line: 311, column: 11, scope: !1301)
!1304 = !DILocation(line: 312, column: 6, scope: !1301)
!1305 = !DILocation(line: 313, column: 15, scope: !1301)
!1306 = !DILocation(line: 313, column: 13, scope: !1301)
!1307 = distinct !{!1307, !1298, !1308, !887, !888}
!1308 = !DILocation(line: 314, column: 5, scope: !1294)
!1309 = !DILocation(line: 316, column: 5, scope: !1294)
!1310 = !DILocation(line: 316, column: 21, scope: !1294)
!1311 = !DILocation(line: 316, column: 42, scope: !1294)
!1312 = !DILocation(line: 317, column: 5, scope: !1294)
!1313 = !DILocation(line: 317, column: 21, scope: !1294)
!1314 = !DILocation(line: 317, column: 27, scope: !1294)
!1315 = !DILocation(line: 319, column: 4, scope: !1294)
!1316 = !DILocation(line: 320, column: 3, scope: !1265)
!1317 = !DILocation(line: 288, column: 45, scope: !1261)
!1318 = !DILocation(line: 288, column: 3, scope: !1261)
!1319 = distinct !{!1319, !1263, !1320, !887, !888}
!1320 = !DILocation(line: 320, column: 3, scope: !1257)
!1321 = !DILocation(line: 321, column: 2, scope: !1258)
!1322 = !DILocation(line: 284, column: 46, scope: !1251)
!1323 = !DILocation(line: 284, column: 2, scope: !1251)
!1324 = distinct !{!1324, !1255, !1325, !887, !888}
!1325 = !DILocation(line: 321, column: 2, scope: !1248)
!1326 = !DILocation(line: 324, column: 1, scope: !1224)
!1327 = !DILocation(line: 323, column: 2, scope: !1224)
!1328 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1329, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1335)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!161, !1331, !35}
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 61, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1333, line: 72, baseType: !1334)
!1333 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1333, line: 16, baseType: !37)
!1335 = !{!1336, !1337}
!1336 = !DILocalVariable(name: "size", arg: 1, scope: !1328, file: !12, line: 719, type: !1331)
!1337 = !DILocalVariable(name: "flags", arg: 2, scope: !1328, file: !12, line: 719, type: !35)
!1338 = !DILocation(line: 719, column: 52, scope: !1328)
!1339 = !DILocation(line: 719, column: 64, scope: !1328)
!1340 = !DILocation(line: 721, column: 17, scope: !1328)
!1341 = !DILocation(line: 721, column: 23, scope: !1328)
!1342 = !DILocation(line: 721, column: 29, scope: !1328)
!1343 = !DILocation(line: 721, column: 9, scope: !1328)
!1344 = !DILocation(line: 721, column: 2, scope: !1328)
!1345 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1346, file: !1346, line: 65, type: !1347, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1346 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!37}
!1349 = !DILocation(line: 67, column: 9, scope: !1345)
!1350 = !DILocation(line: 67, column: 2, scope: !1345)
!1351 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1346, file: !1346, line: 120, type: !1352, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!929, !37}
!1354 = !{!1355}
!1355 = !DILocalVariable(name: "flags", arg: 1, scope: !1351, file: !1346, line: 120, type: !37)
!1356 = !DILocation(line: 120, column: 67, scope: !1351)
!1357 = !DILocation(line: 122, column: 11, scope: !1351)
!1358 = !DILocation(line: 122, column: 17, scope: !1351)
!1359 = !DILocation(line: 122, column: 9, scope: !1351)
!1360 = !DILocation(line: 122, column: 2, scope: !1351)
!1361 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1329, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DILocalVariable(name: "size", arg: 1, scope: !1361, file: !12, line: 591, type: !1331)
!1364 = !DILocalVariable(name: "flags", arg: 2, scope: !1361, file: !12, line: 591, type: !35)
!1365 = !DILocalVariable(name: "index", scope: !1366, file: !12, line: 594, type: !7)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !12, line: 593, column: 42)
!1367 = distinct !DILexicalBlock(scope: !1361, file: !12, line: 593, column: 6)
!1368 = !DILocation(line: 591, column: 61, scope: !1361)
!1369 = !DILocation(line: 591, column: 73, scope: !1361)
!1370 = !DILocation(line: 593, column: 27, scope: !1367)
!1371 = !DILocation(line: 593, column: 6, scope: !1367)
!1372 = !DILocation(line: 593, column: 33, scope: !1367)
!1373 = !DILocation(line: 593, column: 36, scope: !1367)
!1374 = !DILocation(line: 593, column: 6, scope: !1361)
!1375 = !DILocation(line: 594, column: 3, scope: !1366)
!1376 = !DILocation(line: 594, column: 16, scope: !1366)
!1377 = !DILocation(line: 596, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1366, file: !12, line: 596, column: 7)
!1379 = !DILocation(line: 596, column: 12, scope: !1378)
!1380 = !DILocation(line: 596, column: 7, scope: !1366)
!1381 = !DILocation(line: 597, column: 25, scope: !1378)
!1382 = !DILocation(line: 597, column: 31, scope: !1378)
!1383 = !DILocation(line: 597, column: 11, scope: !1378)
!1384 = !DILocation(line: 597, column: 4, scope: !1378)
!1385 = !DILocation(line: 599, column: 11, scope: !1366)
!1386 = !DILocation(line: 599, column: 9, scope: !1366)
!1387 = !DILocation(line: 601, column: 33, scope: !1366)
!1388 = !DILocation(line: 601, column: 40, scope: !1366)
!1389 = !DILocation(line: 601, column: 20, scope: !1366)
!1390 = !DILocation(line: 601, column: 5, scope: !1366)
!1391 = !DILocation(line: 601, column: 51, scope: !1366)
!1392 = !DILocation(line: 602, column: 5, scope: !1366)
!1393 = !DILocation(line: 602, column: 12, scope: !1366)
!1394 = !DILocation(line: 600, column: 10, scope: !1366)
!1395 = !DILocation(line: 600, column: 3, scope: !1366)
!1396 = !DILocation(line: 603, column: 2, scope: !1367)
!1397 = !DILocation(line: 604, column: 19, scope: !1361)
!1398 = !DILocation(line: 604, column: 25, scope: !1361)
!1399 = !DILocation(line: 604, column: 9, scope: !1361)
!1400 = !DILocation(line: 604, column: 2, scope: !1361)
!1401 = !DILocation(line: 605, column: 1, scope: !1361)
!1402 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1403 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1404, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1408)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!7, !1331, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !36, line: 35, baseType: !1407)
!1407 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1408 = !{!1409, !1410}
!1409 = !DILocalVariable(name: "size", arg: 1, scope: !1403, file: !12, line: 444, type: !1331)
!1410 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1403, file: !12, line: 445, type: !1406)
!1411 = !DILocation(line: 444, column: 60, scope: !1403)
!1412 = !DILocation(line: 445, column: 16, scope: !1403)
!1413 = !DILocation(line: 447, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 447, column: 6)
!1415 = !DILocation(line: 447, column: 6, scope: !1403)
!1416 = !DILocation(line: 448, column: 3, scope: !1414)
!1417 = !DILocation(line: 450, column: 6, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 450, column: 6)
!1419 = !DILocation(line: 450, column: 11, scope: !1418)
!1420 = !DILocation(line: 450, column: 6, scope: !1403)
!1421 = !DILocation(line: 451, column: 3, scope: !1418)
!1422 = !DILocation(line: 453, column: 32, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 453, column: 6)
!1424 = !DILocation(line: 453, column: 37, scope: !1423)
!1425 = !DILocation(line: 453, column: 42, scope: !1423)
!1426 = !DILocation(line: 453, column: 45, scope: !1423)
!1427 = !DILocation(line: 453, column: 50, scope: !1423)
!1428 = !DILocation(line: 453, column: 6, scope: !1403)
!1429 = !DILocation(line: 454, column: 3, scope: !1423)
!1430 = !DILocation(line: 455, column: 32, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 455, column: 6)
!1432 = !DILocation(line: 455, column: 37, scope: !1431)
!1433 = !DILocation(line: 455, column: 43, scope: !1431)
!1434 = !DILocation(line: 455, column: 46, scope: !1431)
!1435 = !DILocation(line: 455, column: 51, scope: !1431)
!1436 = !DILocation(line: 455, column: 6, scope: !1403)
!1437 = !DILocation(line: 456, column: 3, scope: !1431)
!1438 = !DILocation(line: 457, column: 6, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 457, column: 6)
!1440 = !DILocation(line: 457, column: 11, scope: !1439)
!1441 = !DILocation(line: 457, column: 6, scope: !1403)
!1442 = !DILocation(line: 457, column: 26, scope: !1439)
!1443 = !DILocation(line: 458, column: 6, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 458, column: 6)
!1445 = !DILocation(line: 458, column: 11, scope: !1444)
!1446 = !DILocation(line: 458, column: 6, scope: !1403)
!1447 = !DILocation(line: 458, column: 26, scope: !1444)
!1448 = !DILocation(line: 459, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 459, column: 6)
!1450 = !DILocation(line: 459, column: 11, scope: !1449)
!1451 = !DILocation(line: 459, column: 6, scope: !1403)
!1452 = !DILocation(line: 459, column: 26, scope: !1449)
!1453 = !DILocation(line: 460, column: 6, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 460, column: 6)
!1455 = !DILocation(line: 460, column: 11, scope: !1454)
!1456 = !DILocation(line: 460, column: 6, scope: !1403)
!1457 = !DILocation(line: 460, column: 26, scope: !1454)
!1458 = !DILocation(line: 461, column: 6, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 461, column: 6)
!1460 = !DILocation(line: 461, column: 11, scope: !1459)
!1461 = !DILocation(line: 461, column: 6, scope: !1403)
!1462 = !DILocation(line: 461, column: 26, scope: !1459)
!1463 = !DILocation(line: 462, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 462, column: 6)
!1465 = !DILocation(line: 462, column: 11, scope: !1464)
!1466 = !DILocation(line: 462, column: 6, scope: !1403)
!1467 = !DILocation(line: 462, column: 26, scope: !1464)
!1468 = !DILocation(line: 463, column: 6, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 463, column: 6)
!1470 = !DILocation(line: 463, column: 11, scope: !1469)
!1471 = !DILocation(line: 463, column: 6, scope: !1403)
!1472 = !DILocation(line: 463, column: 26, scope: !1469)
!1473 = !DILocation(line: 464, column: 6, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 464, column: 6)
!1475 = !DILocation(line: 464, column: 11, scope: !1474)
!1476 = !DILocation(line: 464, column: 6, scope: !1403)
!1477 = !DILocation(line: 464, column: 26, scope: !1474)
!1478 = !DILocation(line: 465, column: 6, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 465, column: 6)
!1480 = !DILocation(line: 465, column: 11, scope: !1479)
!1481 = !DILocation(line: 465, column: 6, scope: !1403)
!1482 = !DILocation(line: 465, column: 26, scope: !1479)
!1483 = !DILocation(line: 466, column: 6, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 466, column: 6)
!1485 = !DILocation(line: 466, column: 11, scope: !1484)
!1486 = !DILocation(line: 466, column: 6, scope: !1403)
!1487 = !DILocation(line: 466, column: 26, scope: !1484)
!1488 = !DILocation(line: 467, column: 6, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 467, column: 6)
!1490 = !DILocation(line: 467, column: 11, scope: !1489)
!1491 = !DILocation(line: 467, column: 6, scope: !1403)
!1492 = !DILocation(line: 467, column: 26, scope: !1489)
!1493 = !DILocation(line: 468, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 468, column: 6)
!1495 = !DILocation(line: 468, column: 11, scope: !1494)
!1496 = !DILocation(line: 468, column: 6, scope: !1403)
!1497 = !DILocation(line: 468, column: 26, scope: !1494)
!1498 = !DILocation(line: 469, column: 6, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 469, column: 6)
!1500 = !DILocation(line: 469, column: 11, scope: !1499)
!1501 = !DILocation(line: 469, column: 6, scope: !1403)
!1502 = !DILocation(line: 469, column: 26, scope: !1499)
!1503 = !DILocation(line: 470, column: 6, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 470, column: 6)
!1505 = !DILocation(line: 470, column: 11, scope: !1504)
!1506 = !DILocation(line: 470, column: 6, scope: !1403)
!1507 = !DILocation(line: 470, column: 26, scope: !1504)
!1508 = !DILocation(line: 471, column: 6, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 471, column: 6)
!1510 = !DILocation(line: 471, column: 11, scope: !1509)
!1511 = !DILocation(line: 471, column: 6, scope: !1403)
!1512 = !DILocation(line: 471, column: 26, scope: !1509)
!1513 = !DILocation(line: 472, column: 6, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 472, column: 6)
!1515 = !DILocation(line: 472, column: 11, scope: !1514)
!1516 = !DILocation(line: 472, column: 6, scope: !1403)
!1517 = !DILocation(line: 472, column: 26, scope: !1514)
!1518 = !DILocation(line: 473, column: 6, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 473, column: 6)
!1520 = !DILocation(line: 473, column: 11, scope: !1519)
!1521 = !DILocation(line: 473, column: 6, scope: !1403)
!1522 = !DILocation(line: 473, column: 26, scope: !1519)
!1523 = !DILocation(line: 474, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 474, column: 6)
!1525 = !DILocation(line: 474, column: 11, scope: !1524)
!1526 = !DILocation(line: 474, column: 6, scope: !1403)
!1527 = !DILocation(line: 474, column: 27, scope: !1524)
!1528 = !DILocation(line: 475, column: 6, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 475, column: 6)
!1530 = !DILocation(line: 475, column: 11, scope: !1529)
!1531 = !DILocation(line: 475, column: 6, scope: !1403)
!1532 = !DILocation(line: 475, column: 32, scope: !1529)
!1533 = !DILocation(line: 477, column: 50, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1403, file: !12, line: 477, column: 6)
!1535 = !{i8 0, i8 2}
!1536 = !{}
!1537 = !DILocation(line: 477, column: 6, scope: !1403)
!1538 = !DILocation(line: 478, column: 3, scope: !1534)
!1539 = !DILocation(line: 478, column: 3, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !12, line: 478, column: 3)
!1541 = distinct !DILexicalBlock(scope: !1534, file: !12, line: 478, column: 3)
!1542 = !{i32 -2143040712}
!1543 = !DILocation(line: 478, column: 3, scope: !1541)
!1544 = !DILocation(line: 480, column: 3, scope: !1534)
!1545 = !DILocation(line: 480, column: 3, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1534, file: !12, line: 480, column: 3)
!1547 = !DILocation(line: 480, column: 3, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1546, file: !12, line: 480, column: 3)
!1549 = !DILocation(line: 480, column: 3, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1546, file: !12, line: 480, column: 3)
!1551 = !{i64 2151926787, i64 2151926816, i64 2151926862, i64 2151926920, i64 2151926974, i64 2151927028, i64 2151927083, i64 2151927114}
!1552 = !DILocation(line: 483, column: 2, scope: !1403)
!1553 = !DILocation(line: 484, column: 1, scope: !1403)
!1554 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!161, !1557, !35, !1331}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1559, line: 11, flags: DIFlagFwdDecl)
!1559 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1560 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1561, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!11, !35, !37}
!1563 = !{!1564, !1565}
!1564 = !DILocalVariable(name: "flags", arg: 1, scope: !1560, file: !12, line: 401, type: !35)
!1565 = !DILocalVariable(name: "caller", arg: 2, scope: !1560, file: !12, line: 401, type: !37)
!1566 = !DILocation(line: 401, column: 67, scope: !1560)
!1567 = !DILocation(line: 401, column: 88, scope: !1560)
!1568 = !DILocation(line: 407, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1560, file: !12, line: 407, column: 6)
!1570 = !DILocation(line: 407, column: 6, scope: !1560)
!1571 = !DILocation(line: 413, column: 3, scope: !1569)
!1572 = !DILocation(line: 423, column: 38, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1560, file: !12, line: 423, column: 6)
!1574 = !DILocation(line: 423, column: 44, scope: !1573)
!1575 = !DILocation(line: 423, column: 6, scope: !1560)
!1576 = !DILocation(line: 424, column: 3, scope: !1573)
!1577 = !DILocation(line: 426, column: 3, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1560, file: !12, line: 425, column: 6)
!1579 = !DILocation(line: 429, column: 1, scope: !1560)
!1580 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1581 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1582, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null}
!1584 = distinct !DISubprogram(name: "native_save_fl", scope: !1346, file: !1346, line: 17, type: !1347, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1585)
!1585 = !{!1586}
!1586 = !DILocalVariable(name: "flags", scope: !1584, file: !1346, line: 19, type: !37)
!1587 = !DILocation(line: 19, column: 2, scope: !1584)
!1588 = !DILocation(line: 19, column: 16, scope: !1584)
!1589 = !DILocation(line: 26, column: 2, scope: !1584)
!1590 = !{i64 1516706, i64 1516727}
!1591 = !DILocation(line: 32, column: 9, scope: !1584)
!1592 = !DILocation(line: 33, column: 1, scope: !1584)
!1593 = !DILocation(line: 32, column: 2, scope: !1584)
!1594 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
