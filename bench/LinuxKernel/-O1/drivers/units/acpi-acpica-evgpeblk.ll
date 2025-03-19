; ModuleID = 'drivers/acpi/acpica/evgpeblk.c'
source_filename = "drivers/acpi/acpica/evgpeblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_block_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i8, i8 }
%struct.acpi_gpe_xrupt_info = type { ptr, ptr, ptr, i32 }
%struct.acpi_gpe_walk_info = type { ptr, ptr, i16, i16, i8 }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, ptr, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { ptr }

@acpi_gbl_gpe_lock = external dso_local global ptr, align 8
@acpi_current_gpe_count = external dso_local global i32, align 4
@_acpi_module_name = internal constant [9 x i8] c"evgpeblk\00", align 1, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"Unsupported address space: 0x%X\00", align 1, !dbg !44
@acpi_gbl_all_gpes_initialized = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not enable GPE 0x%02X\00", align 1, !dbg !50
@.str.2 = private unnamed_addr constant [38 x i8] c"Enabled %u GPEs in block %02X to %02X\00", align 1, !dbg !55
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !60
@.str.4 = private unnamed_addr constant [45 x i8] c"Could not allocate the GpeRegisterInfo table\00", align 1, !dbg !65
@.str.5 = private unnamed_addr constant [42 x i8] c"Could not allocate the GpeEventInfo table\00", align 1, !dbg !70

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_delete_gpe_block(ptr noundef %gpe_block) #0 align 16 !dbg !88 {
entry:
  %retval = alloca i32, align 4
  %gpe_block.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !849, metadata !DIExpression()), !dbg !853
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !854
  call void @llvm.dbg.declare(metadata ptr %status, metadata !850, metadata !DIExpression()), !dbg !855
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !856
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !851, metadata !DIExpression()), !dbg !857
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !858
  store i32 %call, ptr %status, align 4, !dbg !859
  %0 = load i32, ptr %status, align 4, !dbg !860
  %tobool = icmp ne i32 %0, 0, !dbg !860
  br i1 %tobool, label %if.then, label %if.end, !dbg !862

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !863
  store i32 %1, ptr %retval, align 4, !dbg !863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !863

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %gpe_block.addr, align 8, !dbg !865
  %xrupt_block = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %2, i32 0, i32 3, !dbg !866
  %3 = load ptr, ptr %xrupt_block, align 8, !dbg !866
  %4 = load ptr, ptr %gpe_block.addr, align 8, !dbg !867
  %call1 = call i32 @acpi_hw_disable_gpe_block(ptr noundef %3, ptr noundef %4, ptr noundef null) #14, !dbg !868
  store i32 %call1, ptr %status, align 4, !dbg !869
  %5 = load i32, ptr %status, align 4, !dbg !870
  %tobool2 = icmp ne i32 %5, 0, !dbg !870
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !872

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %status, align 4, !dbg !873
  store i32 %6, ptr %retval, align 4, !dbg !873
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !873

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %gpe_block.addr, align 8, !dbg !875
  %previous = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %7, i32 0, i32 1, !dbg !877
  %8 = load ptr, ptr %previous, align 8, !dbg !877
  %tobool5 = icmp ne ptr %8, null, !dbg !875
  br i1 %tobool5, label %if.else, label %land.lhs.true, !dbg !878

land.lhs.true:                                    ; preds = %if.end4
  %9 = load ptr, ptr %gpe_block.addr, align 8, !dbg !879
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %9, i32 0, i32 2, !dbg !880
  %10 = load ptr, ptr %next, align 8, !dbg !880
  %tobool6 = icmp ne ptr %10, null, !dbg !879
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !881

if.then7:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %gpe_block.addr, align 8, !dbg !882
  %xrupt_block8 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %11, i32 0, i32 3, !dbg !884
  %12 = load ptr, ptr %xrupt_block8, align 8, !dbg !884
  %call9 = call i32 @acpi_ev_delete_gpe_xrupt(ptr noundef %12) #14, !dbg !885
  store i32 %call9, ptr %status, align 4, !dbg !886
  %13 = load i32, ptr %status, align 4, !dbg !887
  %tobool10 = icmp ne i32 %13, 0, !dbg !887
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !889

if.then11:                                        ; preds = %if.then7
  br label %unlock_and_exit, !dbg !890

if.end12:                                         ; preds = %if.then7
  br label %if.end31, !dbg !892

if.else:                                          ; preds = %land.lhs.true, %if.end4
  %14 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !893
  %call13 = call i64 @acpi_os_acquire_lock(ptr noundef %14) #14, !dbg !895
  store i64 %call13, ptr %flags, align 8, !dbg !896
  %15 = load ptr, ptr %gpe_block.addr, align 8, !dbg !897
  %previous14 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %15, i32 0, i32 1, !dbg !899
  %16 = load ptr, ptr %previous14, align 8, !dbg !899
  %tobool15 = icmp ne ptr %16, null, !dbg !897
  br i1 %tobool15, label %if.then16, label %if.else20, !dbg !900

if.then16:                                        ; preds = %if.else
  %17 = load ptr, ptr %gpe_block.addr, align 8, !dbg !901
  %next17 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %17, i32 0, i32 2, !dbg !903
  %18 = load ptr, ptr %next17, align 8, !dbg !903
  %19 = load ptr, ptr %gpe_block.addr, align 8, !dbg !904
  %previous18 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %19, i32 0, i32 1, !dbg !905
  %20 = load ptr, ptr %previous18, align 8, !dbg !905
  %next19 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %20, i32 0, i32 2, !dbg !906
  store ptr %18, ptr %next19, align 8, !dbg !907
  br label %if.end23, !dbg !908

if.else20:                                        ; preds = %if.else
  %21 = load ptr, ptr %gpe_block.addr, align 8, !dbg !909
  %next21 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %21, i32 0, i32 2, !dbg !911
  %22 = load ptr, ptr %next21, align 8, !dbg !911
  %23 = load ptr, ptr %gpe_block.addr, align 8, !dbg !912
  %xrupt_block22 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %23, i32 0, i32 3, !dbg !913
  %24 = load ptr, ptr %xrupt_block22, align 8, !dbg !913
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %24, i32 0, i32 2, !dbg !914
  store ptr %22, ptr %gpe_block_list_head, align 8, !dbg !915
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then16
  %25 = load ptr, ptr %gpe_block.addr, align 8, !dbg !916
  %next24 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %25, i32 0, i32 2, !dbg !918
  %26 = load ptr, ptr %next24, align 8, !dbg !918
  %tobool25 = icmp ne ptr %26, null, !dbg !916
  br i1 %tobool25, label %if.then26, label %if.end30, !dbg !919

if.then26:                                        ; preds = %if.end23
  %27 = load ptr, ptr %gpe_block.addr, align 8, !dbg !920
  %previous27 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %27, i32 0, i32 1, !dbg !922
  %28 = load ptr, ptr %previous27, align 8, !dbg !922
  %29 = load ptr, ptr %gpe_block.addr, align 8, !dbg !923
  %next28 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %29, i32 0, i32 2, !dbg !924
  %30 = load ptr, ptr %next28, align 8, !dbg !924
  %previous29 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %30, i32 0, i32 1, !dbg !925
  store ptr %28, ptr %previous29, align 8, !dbg !926
  br label %if.end30, !dbg !927

if.end30:                                         ; preds = %if.then26, %if.end23
  %31 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !928
  %32 = load i64, ptr %flags, align 8, !dbg !929
  call void @acpi_os_release_lock(ptr noundef %31, i64 noundef %32) #14, !dbg !930
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end12
  %33 = load ptr, ptr %gpe_block.addr, align 8, !dbg !931
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %33, i32 0, i32 8, !dbg !932
  %34 = load i16, ptr %gpe_count, align 4, !dbg !932
  %conv = zext i16 %34 to i32, !dbg !931
  %35 = load i32, ptr @acpi_current_gpe_count, align 4, !dbg !933
  %sub = sub i32 %35, %conv, !dbg !933
  store i32 %sub, ptr @acpi_current_gpe_count, align 4, !dbg !933
  %36 = load ptr, ptr %gpe_block.addr, align 8, !dbg !934
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %36, i32 0, i32 4, !dbg !934
  %37 = load ptr, ptr %register_info, align 8, !dbg !934
  call void @acpi_os_free(ptr noundef %37) #14, !dbg !934
  %38 = load ptr, ptr %gpe_block.addr, align 8, !dbg !935
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %38, i32 0, i32 5, !dbg !935
  %39 = load ptr, ptr %event_info, align 8, !dbg !935
  call void @acpi_os_free(ptr noundef %39) #14, !dbg !935
  %40 = load ptr, ptr %gpe_block.addr, align 8, !dbg !936
  call void @acpi_os_free(ptr noundef %40) #14, !dbg !936
  br label %unlock_and_exit, !dbg !936

unlock_and_exit:                                  ; preds = %if.end31, %if.then11
  call void @llvm.dbg.label(metadata !852), !dbg !937
  %call32 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !938
  store i32 %call32, ptr %status, align 4, !dbg !939
  %41 = load i32, ptr %status, align 4, !dbg !940
  store i32 %41, ptr %retval, align 4, !dbg !940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !940

cleanup:                                          ; preds = %unlock_and_exit, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !941
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !941
  %42 = load i32, ptr %retval, align 4, !dbg !941
  ret i32 %42, !dbg !941
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !942 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !947 dso_local i32 @acpi_hw_disable_gpe_block(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !951 dso_local i32 @acpi_ev_delete_gpe_xrupt(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !955 dso_local i64 @acpi_os_acquire_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !995 dso_local void @acpi_os_release_lock(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !998 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1003, metadata !DIExpression()), !dbg !1004
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1005
  call void @kfree(ptr noundef %0) #14, !dbg !1006
  ret void, !dbg !1007
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1008 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_create_gpe_block(ptr noundef %gpe_device, i64 noundef %address, i8 noundef zeroext %space_id, i32 noundef %register_count, i16 noundef zeroext %gpe_block_base_number, i32 noundef %interrupt_number, ptr noundef %return_gpe_block) #0 align 16 !dbg !1009 {
entry:
  %retval = alloca i32, align 4
  %gpe_device.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  %space_id.addr = alloca i8, align 1
  %register_count.addr = alloca i32, align 4
  %gpe_block_base_number.addr = alloca i16, align 2
  %interrupt_number.addr = alloca i32, align 4
  %return_gpe_block.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %gpe_block = alloca ptr, align 8
  %walk_info = alloca %struct.acpi_gpe_walk_info, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_device, ptr %gpe_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_device.addr, metadata !1014, metadata !DIExpression()), !dbg !1031
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1015, metadata !DIExpression()), !dbg !1032
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !1016, metadata !DIExpression()), !dbg !1033
  store i32 %register_count, ptr %register_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %register_count.addr, metadata !1017, metadata !DIExpression()), !dbg !1034
  store i16 %gpe_block_base_number, ptr %gpe_block_base_number.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %gpe_block_base_number.addr, metadata !1018, metadata !DIExpression()), !dbg !1035
  store i32 %interrupt_number, ptr %interrupt_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interrupt_number.addr, metadata !1019, metadata !DIExpression()), !dbg !1036
  store ptr %return_gpe_block, ptr %return_gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_gpe_block.addr, metadata !1020, metadata !DIExpression()), !dbg !1037
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1021, metadata !DIExpression()), !dbg !1039
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_block) #13, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %gpe_block, metadata !1022, metadata !DIExpression()), !dbg !1041
  call void @llvm.lifetime.start.p0(i64 24, ptr %walk_info) #13, !dbg !1042
  call void @llvm.dbg.declare(metadata ptr %walk_info, metadata !1023, metadata !DIExpression()), !dbg !1043
  %0 = load i32, ptr %register_count.addr, align 4, !dbg !1044
  %tobool = icmp ne i32 %0, 0, !dbg !1044
  br i1 %tobool, label %if.end, label %if.then, !dbg !1046

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1047

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !1049
  %conv = zext i8 %1 to i32, !dbg !1049
  %cmp = icmp ne i32 %conv, 0, !dbg !1051
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !1052

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8, ptr %space_id.addr, align 1, !dbg !1053
  %conv2 = zext i8 %2 to i32, !dbg !1053
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !1054
  br i1 %cmp3, label %if.then5, label %if.end7, !dbg !1055

if.then5:                                         ; preds = %land.lhs.true
  %3 = load i8, ptr %space_id.addr, align 1, !dbg !1056
  %conv6 = zext i8 %3 to i32, !dbg !1056
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 318, ptr noundef @.str, i32 noundef %conv6) #14, !dbg !1056
  store i32 15, ptr %retval, align 4, !dbg !1058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1058

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %4 = load i8, ptr %space_id.addr, align 1, !dbg !1059
  %conv8 = zext i8 %4 to i32, !dbg !1059
  %cmp9 = icmp eq i32 %conv8, 1, !dbg !1061
  br i1 %cmp9, label %if.then11, label %if.end15, !dbg !1062

if.then11:                                        ; preds = %if.end7
  %5 = load i64, ptr %address.addr, align 8, !dbg !1063
  %6 = load i32, ptr %register_count.addr, align 4, !dbg !1065
  %call = call i32 @acpi_hw_validate_io_block(i64 noundef %5, i32 noundef 8, i32 noundef %6) #14, !dbg !1066
  store i32 %call, ptr %status, align 4, !dbg !1067
  %7 = load i32, ptr %status, align 4, !dbg !1068
  %tobool12 = icmp ne i32 %7, 0, !dbg !1068
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1070

if.then13:                                        ; preds = %if.then11
  %8 = load i32, ptr %status, align 4, !dbg !1071
  store i32 %8, ptr %retval, align 4, !dbg !1071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1071

if.end14:                                         ; preds = %if.then11
  br label %if.end15, !dbg !1072

if.end15:                                         ; preds = %if.end14, %if.end7
  %call16 = call ptr @acpi_os_allocate_zeroed(i64 noundef 72) #14, !dbg !1073
  store ptr %call16, ptr %gpe_block, align 8, !dbg !1074
  %9 = load ptr, ptr %gpe_block, align 8, !dbg !1075
  %tobool17 = icmp ne ptr %9, null, !dbg !1075
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !1077

if.then18:                                        ; preds = %if.end15
  store i32 4, ptr %retval, align 4, !dbg !1078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1078

if.end19:                                         ; preds = %if.end15
  %10 = load i64, ptr %address.addr, align 8, !dbg !1080
  %11 = load ptr, ptr %gpe_block, align 8, !dbg !1081
  %address20 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %11, i32 0, i32 6, !dbg !1082
  store i64 %10, ptr %address20, align 8, !dbg !1083
  %12 = load i8, ptr %space_id.addr, align 1, !dbg !1084
  %13 = load ptr, ptr %gpe_block, align 8, !dbg !1085
  %space_id21 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %13, i32 0, i32 10, !dbg !1086
  store i8 %12, ptr %space_id21, align 8, !dbg !1087
  %14 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1088
  %15 = load ptr, ptr %gpe_block, align 8, !dbg !1089
  %node = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %15, i32 0, i32 0, !dbg !1090
  store ptr %14, ptr %node, align 8, !dbg !1091
  %16 = load i32, ptr %register_count.addr, align 4, !dbg !1092
  %mul = mul i32 %16, 8, !dbg !1093
  %conv22 = trunc i32 %mul to i16, !dbg !1094
  %17 = load ptr, ptr %gpe_block, align 8, !dbg !1095
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %17, i32 0, i32 8, !dbg !1096
  store i16 %conv22, ptr %gpe_count, align 4, !dbg !1097
  %18 = load ptr, ptr %gpe_block, align 8, !dbg !1098
  %initialized = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %18, i32 0, i32 11, !dbg !1099
  store i8 0, ptr %initialized, align 1, !dbg !1100
  %19 = load i32, ptr %register_count.addr, align 4, !dbg !1101
  %20 = load ptr, ptr %gpe_block, align 8, !dbg !1102
  %register_count23 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %20, i32 0, i32 7, !dbg !1103
  store i32 %19, ptr %register_count23, align 8, !dbg !1104
  %21 = load i16, ptr %gpe_block_base_number.addr, align 2, !dbg !1105
  %22 = load ptr, ptr %gpe_block, align 8, !dbg !1106
  %block_base_number = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %22, i32 0, i32 9, !dbg !1107
  store i16 %21, ptr %block_base_number, align 2, !dbg !1108
  %23 = load ptr, ptr %gpe_block, align 8, !dbg !1109
  %call24 = call i32 @acpi_ev_create_gpe_info_blocks(ptr noundef %23) #14, !dbg !1110
  store i32 %call24, ptr %status, align 4, !dbg !1111
  %24 = load i32, ptr %status, align 4, !dbg !1112
  %tobool25 = icmp ne i32 %24, 0, !dbg !1112
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1114

if.then26:                                        ; preds = %if.end19
  %25 = load ptr, ptr %gpe_block, align 8, !dbg !1115
  call void @acpi_os_free(ptr noundef %25) #14, !dbg !1115
  %26 = load i32, ptr %status, align 4, !dbg !1117
  store i32 %26, ptr %retval, align 4, !dbg !1117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1117

if.end27:                                         ; preds = %if.end19
  %27 = load ptr, ptr %gpe_block, align 8, !dbg !1118
  %28 = load i32, ptr %interrupt_number.addr, align 4, !dbg !1119
  %call28 = call i32 @acpi_ev_install_gpe_block(ptr noundef %27, i32 noundef %28) #14, !dbg !1120
  store i32 %call28, ptr %status, align 4, !dbg !1121
  %29 = load i32, ptr %status, align 4, !dbg !1122
  %tobool29 = icmp ne i32 %29, 0, !dbg !1122
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1124

if.then30:                                        ; preds = %if.end27
  %30 = load ptr, ptr %gpe_block, align 8, !dbg !1125
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %30, i32 0, i32 4, !dbg !1125
  %31 = load ptr, ptr %register_info, align 8, !dbg !1125
  call void @acpi_os_free(ptr noundef %31) #14, !dbg !1125
  %32 = load ptr, ptr %gpe_block, align 8, !dbg !1127
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %32, i32 0, i32 5, !dbg !1127
  %33 = load ptr, ptr %event_info, align 8, !dbg !1127
  call void @acpi_os_free(ptr noundef %33) #14, !dbg !1127
  %34 = load ptr, ptr %gpe_block, align 8, !dbg !1128
  call void @acpi_os_free(ptr noundef %34) #14, !dbg !1128
  %35 = load i32, ptr %status, align 4, !dbg !1129
  store i32 %35, ptr %retval, align 4, !dbg !1129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1129

if.end31:                                         ; preds = %if.end27
  store i8 0, ptr @acpi_gbl_all_gpes_initialized, align 1, !dbg !1130
  %36 = load ptr, ptr %gpe_block, align 8, !dbg !1131
  %gpe_block32 = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 1, !dbg !1132
  store ptr %36, ptr %gpe_block32, align 8, !dbg !1133
  %37 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1134
  %gpe_device33 = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 0, !dbg !1135
  store ptr %37, ptr %gpe_device33, align 8, !dbg !1136
  %execute_by_owner_id = getelementptr inbounds %struct.acpi_gpe_walk_info, ptr %walk_info, i32 0, i32 4, !dbg !1137
  store i8 0, ptr %execute_by_owner_id, align 4, !dbg !1138
  %38 = load ptr, ptr %gpe_device.addr, align 8, !dbg !1139
  %call34 = call i32 @acpi_ns_walk_namespace(i32 noundef 8, ptr noundef %38, i32 noundef -1, i32 noundef 0, ptr noundef @acpi_ev_match_gpe_method, ptr noundef null, ptr noundef %walk_info, ptr noundef null) #14, !dbg !1140
  %39 = load ptr, ptr %return_gpe_block.addr, align 8, !dbg !1141
  %tobool35 = icmp ne ptr %39, null, !dbg !1141
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1143

if.then36:                                        ; preds = %if.end31
  %40 = load ptr, ptr %gpe_block, align 8, !dbg !1144
  %41 = load ptr, ptr %return_gpe_block.addr, align 8, !dbg !1146
  store ptr %40, ptr %41, align 8, !dbg !1147
  br label %if.end37, !dbg !1148

if.end37:                                         ; preds = %if.then36, %if.end31
  %42 = load ptr, ptr %gpe_block, align 8, !dbg !1149
  %gpe_count38 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %42, i32 0, i32 8, !dbg !1150
  %43 = load i16, ptr %gpe_count38, align 4, !dbg !1150
  %conv39 = zext i16 %43 to i32, !dbg !1149
  %44 = load i32, ptr @acpi_current_gpe_count, align 4, !dbg !1151
  %add = add i32 %44, %conv39, !dbg !1151
  store i32 %add, ptr @acpi_current_gpe_count, align 4, !dbg !1151
  store i32 0, ptr %retval, align 4, !dbg !1152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1152

cleanup:                                          ; preds = %if.end37, %if.then30, %if.then26, %if.then18, %if.then13, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %walk_info) #13, !dbg !1153
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_block) #13, !dbg !1153
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1153
  %45 = load i32, ptr %retval, align 4, !dbg !1153
  ret i32 %45, !dbg !1153
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1154 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1159 dso_local i32 @acpi_hw_validate_io_block(i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1162 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1166, metadata !DIExpression()), !dbg !1177
  %0 = load i64, ptr %size.addr, align 8, !dbg !1178
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1167, metadata !DIExpression()), !dbg !1179
  br label %do.body, !dbg !1179

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1169, metadata !DIExpression()), !dbg !1180
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1172, metadata !DIExpression()), !dbg !1180
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1180
  %conv = zext i1 %cmp to i32, !dbg !1180
  store i32 1, ptr %tmp, align 4, !dbg !1180
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1181
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1181
  %1 = load i32, ptr %tmp, align 4, !dbg !1180
  %call = call i64 @arch_local_save_flags() #14, !dbg !1181
  store i64 %call, ptr %_flags, align 8, !dbg !1181
  br label %do.cond, !dbg !1181

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1181

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1173, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1176, metadata !DIExpression()), !dbg !1182
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1182
  %conv6 = zext i1 %cmp5 to i32, !dbg !1182
  store i32 1, ptr %tmp7, align 4, !dbg !1182
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1183
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1183
  %2 = load i32, ptr %tmp7, align 4, !dbg !1182
  %3 = load i64, ptr %_flags, align 8, !dbg !1183
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1183
  store i32 %call9, ptr %tmp8, align 4, !dbg !1183
  %4 = load i32, ptr %tmp8, align 4, !dbg !1183
  store i32 %4, ptr %tmp1, align 4, !dbg !1181
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1184
  %5 = load i32, ptr %tmp1, align 4, !dbg !1179
  %tobool = icmp ne i32 %5, 0, !dbg !1184
  %6 = zext i1 %tobool to i64, !dbg !1184
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1184
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1185
  ret ptr %call10, !dbg !1186
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ev_create_gpe_info_blocks(ptr noundef %gpe_block) #0 align 16 !dbg !1187 {
entry:
  %retval = alloca i32, align 4
  %gpe_block.addr = alloca ptr, align 8
  %gpe_register_info = alloca ptr, align 8
  %gpe_event_info = alloca ptr, align 8
  %this_event = alloca ptr, align 8
  %this_register = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1189, metadata !DIExpression()), !dbg !1198
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #13, !dbg !1199
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !1190, metadata !DIExpression()), !dbg !1200
  store ptr null, ptr %gpe_register_info, align 8, !dbg !1200
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1191, metadata !DIExpression()), !dbg !1202
  store ptr null, ptr %gpe_event_info, align 8, !dbg !1202
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_event) #13, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %this_event, metadata !1192, metadata !DIExpression()), !dbg !1204
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_register) #13, !dbg !1205
  call void @llvm.dbg.declare(metadata ptr %this_register, metadata !1193, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1194, metadata !DIExpression()), !dbg !1208
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1195, metadata !DIExpression()), !dbg !1210
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1211
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1196, metadata !DIExpression()), !dbg !1212
  %0 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1213
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %0, i32 0, i32 7, !dbg !1213
  %1 = load i32, ptr %register_count, align 8, !dbg !1213
  %conv = zext i32 %1 to i64, !dbg !1213
  %mul = mul i64 %conv, 40, !dbg !1213
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef %mul) #14, !dbg !1213
  store ptr %call, ptr %gpe_register_info, align 8, !dbg !1214
  %2 = load ptr, ptr %gpe_register_info, align 8, !dbg !1215
  %tobool = icmp ne ptr %2, null, !dbg !1215
  br i1 %tobool, label %if.end, label %if.then, !dbg !1217

if.then:                                          ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 188, ptr noundef @.str.4) #14, !dbg !1218
  store i32 4, ptr %retval, align 4, !dbg !1220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1220

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1221
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %3, i32 0, i32 8, !dbg !1221
  %4 = load i16, ptr %gpe_count, align 4, !dbg !1221
  %conv1 = zext i16 %4 to i64, !dbg !1221
  %mul2 = mul i64 %conv1, 24, !dbg !1221
  %call3 = call ptr @acpi_os_allocate_zeroed(i64 noundef %mul2) #14, !dbg !1221
  store ptr %call3, ptr %gpe_event_info, align 8, !dbg !1222
  %5 = load ptr, ptr %gpe_event_info, align 8, !dbg !1223
  %tobool4 = icmp ne ptr %5, null, !dbg !1223
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1225

if.then5:                                         ; preds = %if.end
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 201, ptr noundef @.str.5) #14, !dbg !1226
  store i32 4, ptr %status, align 4, !dbg !1228
  br label %error_exit, !dbg !1229

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %gpe_register_info, align 8, !dbg !1230
  %7 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1231
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %7, i32 0, i32 4, !dbg !1232
  store ptr %6, ptr %register_info, align 8, !dbg !1233
  %8 = load ptr, ptr %gpe_event_info, align 8, !dbg !1234
  %9 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1235
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %9, i32 0, i32 5, !dbg !1236
  store ptr %8, ptr %event_info, align 8, !dbg !1237
  %10 = load ptr, ptr %gpe_register_info, align 8, !dbg !1238
  store ptr %10, ptr %this_register, align 8, !dbg !1239
  %11 = load ptr, ptr %gpe_event_info, align 8, !dbg !1240
  store ptr %11, ptr %this_event, align 8, !dbg !1241
  store i32 0, ptr %i, align 4, !dbg !1242
  br label %for.cond, !dbg !1244

for.cond:                                         ; preds = %for.inc47, %if.end6
  %12 = load i32, ptr %i, align 4, !dbg !1245
  %13 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1247
  %register_count7 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %13, i32 0, i32 7, !dbg !1248
  %14 = load i32, ptr %register_count7, align 8, !dbg !1248
  %cmp = icmp ult i32 %12, %14, !dbg !1249
  br i1 %cmp, label %for.body, label %for.end49, !dbg !1250

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1251
  %block_base_number = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %15, i32 0, i32 9, !dbg !1253
  %16 = load i16, ptr %block_base_number, align 2, !dbg !1253
  %conv9 = zext i16 %16 to i32, !dbg !1251
  %17 = load i32, ptr %i, align 4, !dbg !1254
  %mul10 = mul i32 %17, 8, !dbg !1255
  %add = add i32 %conv9, %mul10, !dbg !1256
  %conv11 = trunc i32 %add to i16, !dbg !1257
  %18 = load ptr, ptr %this_register, align 8, !dbg !1258
  %base_gpe_number = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %18, i32 0, i32 2, !dbg !1259
  store i16 %conv11, ptr %base_gpe_number, align 8, !dbg !1260
  %19 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1261
  %address = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %19, i32 0, i32 6, !dbg !1262
  %20 = load i64, ptr %address, align 8, !dbg !1262
  %21 = load i32, ptr %i, align 4, !dbg !1263
  %conv12 = zext i32 %21 to i64, !dbg !1263
  %add13 = add i64 %20, %conv12, !dbg !1264
  %22 = load ptr, ptr %this_register, align 8, !dbg !1265
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %22, i32 0, i32 0, !dbg !1266
  %address14 = getelementptr inbounds %struct.acpi_gpe_address, ptr %status_address, i32 0, i32 1, !dbg !1267
  store i64 %add13, ptr %address14, align 8, !dbg !1268
  %23 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1269
  %address15 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %23, i32 0, i32 6, !dbg !1270
  %24 = load i64, ptr %address15, align 8, !dbg !1270
  %25 = load i32, ptr %i, align 4, !dbg !1271
  %conv16 = zext i32 %25 to i64, !dbg !1271
  %add17 = add i64 %24, %conv16, !dbg !1272
  %26 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1273
  %register_count18 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %26, i32 0, i32 7, !dbg !1274
  %27 = load i32, ptr %register_count18, align 8, !dbg !1274
  %conv19 = zext i32 %27 to i64, !dbg !1273
  %add20 = add i64 %add17, %conv19, !dbg !1275
  %28 = load ptr, ptr %this_register, align 8, !dbg !1276
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %28, i32 0, i32 1, !dbg !1277
  %address21 = getelementptr inbounds %struct.acpi_gpe_address, ptr %enable_address, i32 0, i32 1, !dbg !1278
  store i64 %add20, ptr %address21, align 8, !dbg !1279
  %29 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1280
  %space_id = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %29, i32 0, i32 10, !dbg !1281
  %30 = load i8, ptr %space_id, align 8, !dbg !1281
  %31 = load ptr, ptr %this_register, align 8, !dbg !1282
  %status_address22 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %31, i32 0, i32 0, !dbg !1283
  %space_id23 = getelementptr inbounds %struct.acpi_gpe_address, ptr %status_address22, i32 0, i32 0, !dbg !1284
  store i8 %30, ptr %space_id23, align 8, !dbg !1285
  %32 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1286
  %space_id24 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %32, i32 0, i32 10, !dbg !1287
  %33 = load i8, ptr %space_id24, align 8, !dbg !1287
  %34 = load ptr, ptr %this_register, align 8, !dbg !1288
  %enable_address25 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %34, i32 0, i32 1, !dbg !1289
  %space_id26 = getelementptr inbounds %struct.acpi_gpe_address, ptr %enable_address25, i32 0, i32 0, !dbg !1290
  store i8 %33, ptr %space_id26, align 8, !dbg !1291
  store i32 0, ptr %j, align 4, !dbg !1292
  br label %for.cond27, !dbg !1294

for.cond27:                                       ; preds = %for.inc, %for.body
  %35 = load i32, ptr %j, align 4, !dbg !1295
  %cmp28 = icmp ult i32 %35, 8, !dbg !1297
  br i1 %cmp28, label %for.body30, label %for.end, !dbg !1298

for.body30:                                       ; preds = %for.cond27
  %36 = load ptr, ptr %this_register, align 8, !dbg !1299
  %base_gpe_number31 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %36, i32 0, i32 2, !dbg !1301
  %37 = load i16, ptr %base_gpe_number31, align 8, !dbg !1301
  %conv32 = zext i16 %37 to i32, !dbg !1299
  %38 = load i32, ptr %j, align 4, !dbg !1302
  %add33 = add i32 %conv32, %38, !dbg !1303
  %conv34 = trunc i32 %add33 to i8, !dbg !1304
  %39 = load ptr, ptr %this_event, align 8, !dbg !1305
  %gpe_number = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %39, i32 0, i32 3, !dbg !1306
  store i8 %conv34, ptr %gpe_number, align 1, !dbg !1307
  %40 = load ptr, ptr %this_register, align 8, !dbg !1308
  %41 = load ptr, ptr %this_event, align 8, !dbg !1309
  %register_info35 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %41, i32 0, i32 1, !dbg !1310
  store ptr %40, ptr %register_info35, align 8, !dbg !1311
  %42 = load ptr, ptr %this_event, align 8, !dbg !1312
  %incdec.ptr = getelementptr %struct.acpi_gpe_event_info, ptr %42, i32 1, !dbg !1312
  store ptr %incdec.ptr, ptr %this_event, align 8, !dbg !1312
  br label %for.inc, !dbg !1313

for.inc:                                          ; preds = %for.body30
  %43 = load i32, ptr %j, align 4, !dbg !1314
  %inc = add i32 %43, 1, !dbg !1314
  store i32 %inc, ptr %j, align 4, !dbg !1314
  br label %for.cond27, !dbg !1315, !llvm.loop !1316

for.end:                                          ; preds = %for.cond27
  %44 = load ptr, ptr %this_register, align 8, !dbg !1320
  %enable_address36 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %44, i32 0, i32 1, !dbg !1321
  %call37 = call i32 @acpi_hw_gpe_write(i64 noundef 0, ptr noundef %enable_address36) #14, !dbg !1322
  store i32 %call37, ptr %status, align 4, !dbg !1323
  %45 = load i32, ptr %status, align 4, !dbg !1324
  %tobool38 = icmp ne i32 %45, 0, !dbg !1324
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1326

if.then39:                                        ; preds = %for.end
  br label %error_exit, !dbg !1327

if.end40:                                         ; preds = %for.end
  %46 = load ptr, ptr %this_register, align 8, !dbg !1329
  %status_address41 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %46, i32 0, i32 0, !dbg !1330
  %call42 = call i32 @acpi_hw_gpe_write(i64 noundef 255, ptr noundef %status_address41) #14, !dbg !1331
  store i32 %call42, ptr %status, align 4, !dbg !1332
  %47 = load i32, ptr %status, align 4, !dbg !1333
  %tobool43 = icmp ne i32 %47, 0, !dbg !1333
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !1335

if.then44:                                        ; preds = %if.end40
  br label %error_exit, !dbg !1336

if.end45:                                         ; preds = %if.end40
  %48 = load ptr, ptr %this_register, align 8, !dbg !1338
  %incdec.ptr46 = getelementptr %struct.acpi_gpe_register_info, ptr %48, i32 1, !dbg !1338
  store ptr %incdec.ptr46, ptr %this_register, align 8, !dbg !1338
  br label %for.inc47, !dbg !1339

for.inc47:                                        ; preds = %if.end45
  %49 = load i32, ptr %i, align 4, !dbg !1340
  %inc48 = add i32 %49, 1, !dbg !1340
  store i32 %inc48, ptr %i, align 4, !dbg !1340
  br label %for.cond, !dbg !1341, !llvm.loop !1342

for.end49:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1344

error_exit:                                       ; preds = %if.then44, %if.then39, %if.then5
  call void @llvm.dbg.label(metadata !1197), !dbg !1345
  %50 = load ptr, ptr %gpe_register_info, align 8, !dbg !1346
  %tobool50 = icmp ne ptr %50, null, !dbg !1346
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !1348

if.then51:                                        ; preds = %error_exit
  %51 = load ptr, ptr %gpe_register_info, align 8, !dbg !1349
  call void @acpi_os_free(ptr noundef %51) #14, !dbg !1349
  br label %if.end52, !dbg !1351

if.end52:                                         ; preds = %if.then51, %error_exit
  %52 = load ptr, ptr %gpe_event_info, align 8, !dbg !1352
  %tobool53 = icmp ne ptr %52, null, !dbg !1352
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !1354

if.then54:                                        ; preds = %if.end52
  %53 = load ptr, ptr %gpe_event_info, align 8, !dbg !1355
  call void @acpi_os_free(ptr noundef %53) #14, !dbg !1355
  br label %if.end55, !dbg !1357

if.end55:                                         ; preds = %if.then54, %if.end52
  %54 = load i32, ptr %status, align 4, !dbg !1358
  store i32 %54, ptr %retval, align 4, !dbg !1358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1358

cleanup:                                          ; preds = %if.end55, %for.end49, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1359
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13, !dbg !1359
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1359
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_register) #13, !dbg !1359
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_event) #13, !dbg !1359
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1359
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #13, !dbg !1359
  %55 = load i32, ptr %retval, align 4, !dbg !1359
  ret i32 %55, !dbg !1359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ev_install_gpe_block(ptr noundef %gpe_block, i32 noundef %interrupt_number) #0 align 16 !dbg !1360 {
entry:
  %retval = alloca i32, align 4
  %gpe_block.addr = alloca ptr, align 8
  %interrupt_number.addr = alloca i32, align 4
  %next_gpe_block = alloca ptr, align 8
  %gpe_xrupt_block = alloca ptr, align 8
  %status = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1364, metadata !DIExpression()), !dbg !1371
  store i32 %interrupt_number, ptr %interrupt_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interrupt_number.addr, metadata !1365, metadata !DIExpression()), !dbg !1372
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_gpe_block) #13, !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %next_gpe_block, metadata !1366, metadata !DIExpression()), !dbg !1374
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_xrupt_block) #13, !dbg !1375
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_block, metadata !1367, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1368, metadata !DIExpression()), !dbg !1378
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1369, metadata !DIExpression()), !dbg !1380
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 3) #14, !dbg !1381
  store i32 %call, ptr %status, align 4, !dbg !1382
  %0 = load i32, ptr %status, align 4, !dbg !1383
  %tobool = icmp ne i32 %0, 0, !dbg !1383
  br i1 %tobool, label %if.then, label %if.end, !dbg !1385

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !1386
  store i32 %1, ptr %retval, align 4, !dbg !1386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1386

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %interrupt_number.addr, align 4, !dbg !1388
  %call1 = call i32 @acpi_ev_get_gpe_xrupt_block(i32 noundef %2, ptr noundef %gpe_xrupt_block) #14, !dbg !1389
  store i32 %call1, ptr %status, align 4, !dbg !1390
  %3 = load i32, ptr %status, align 4, !dbg !1391
  %tobool2 = icmp ne i32 %3, 0, !dbg !1391
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1393

if.then3:                                         ; preds = %if.end
  br label %unlock_and_exit, !dbg !1394

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1396
  %call5 = call i64 @acpi_os_acquire_lock(ptr noundef %4) #14, !dbg !1397
  store i64 %call5, ptr %flags, align 8, !dbg !1398
  %5 = load ptr, ptr %gpe_xrupt_block, align 8, !dbg !1399
  %gpe_block_list_head = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %5, i32 0, i32 2, !dbg !1401
  %6 = load ptr, ptr %gpe_block_list_head, align 8, !dbg !1401
  %tobool6 = icmp ne ptr %6, null, !dbg !1399
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !1402

if.then7:                                         ; preds = %if.end4
  %7 = load ptr, ptr %gpe_xrupt_block, align 8, !dbg !1403
  %gpe_block_list_head8 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %7, i32 0, i32 2, !dbg !1405
  %8 = load ptr, ptr %gpe_block_list_head8, align 8, !dbg !1405
  store ptr %8, ptr %next_gpe_block, align 8, !dbg !1406
  br label %while.cond, !dbg !1407

while.cond:                                       ; preds = %while.body, %if.then7
  %9 = load ptr, ptr %next_gpe_block, align 8, !dbg !1408
  %next = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %9, i32 0, i32 2, !dbg !1409
  %10 = load ptr, ptr %next, align 8, !dbg !1409
  %tobool9 = icmp ne ptr %10, null, !dbg !1407
  br i1 %tobool9, label %while.body, label %while.end, !dbg !1407

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %next_gpe_block, align 8, !dbg !1410
  %next10 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %11, i32 0, i32 2, !dbg !1412
  %12 = load ptr, ptr %next10, align 8, !dbg !1412
  store ptr %12, ptr %next_gpe_block, align 8, !dbg !1413
  br label %while.cond, !dbg !1407, !llvm.loop !1414

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1416
  %14 = load ptr, ptr %next_gpe_block, align 8, !dbg !1417
  %next11 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %14, i32 0, i32 2, !dbg !1418
  store ptr %13, ptr %next11, align 8, !dbg !1419
  %15 = load ptr, ptr %next_gpe_block, align 8, !dbg !1420
  %16 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1421
  %previous = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %16, i32 0, i32 1, !dbg !1422
  store ptr %15, ptr %previous, align 8, !dbg !1423
  br label %if.end13, !dbg !1424

if.else:                                          ; preds = %if.end4
  %17 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1425
  %18 = load ptr, ptr %gpe_xrupt_block, align 8, !dbg !1427
  %gpe_block_list_head12 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, ptr %18, i32 0, i32 2, !dbg !1428
  store ptr %17, ptr %gpe_block_list_head12, align 8, !dbg !1429
  br label %if.end13

if.end13:                                         ; preds = %if.else, %while.end
  %19 = load ptr, ptr %gpe_xrupt_block, align 8, !dbg !1430
  %20 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1431
  %xrupt_block = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %20, i32 0, i32 3, !dbg !1432
  store ptr %19, ptr %xrupt_block, align 8, !dbg !1433
  %21 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1434
  %22 = load i64, ptr %flags, align 8, !dbg !1435
  call void @acpi_os_release_lock(ptr noundef %21, i64 noundef %22) #14, !dbg !1436
  br label %unlock_and_exit, !dbg !1436

unlock_and_exit:                                  ; preds = %if.end13, %if.then3
  call void @llvm.dbg.label(metadata !1370), !dbg !1437
  %call14 = call i32 @acpi_ut_release_mutex(i32 noundef 3) #14, !dbg !1438
  %23 = load i32, ptr %status, align 4, !dbg !1439
  store i32 %23, ptr %retval, align 4, !dbg !1439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1439

cleanup:                                          ; preds = %unlock_and_exit, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_xrupt_block) #13, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_gpe_block) #13, !dbg !1440
  %24 = load i32, ptr %retval, align 4, !dbg !1440
  ret i32 %24, !dbg !1440
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1441 dso_local i32 @acpi_ns_walk_namespace(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_ev_match_gpe_method(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_initialize_gpe_block(ptr noundef %gpe_xrupt_info, ptr noundef %gpe_block, ptr noundef %context) #0 align 16 !dbg !1447 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca ptr, align 8
  %gpe_block.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %gpe_event_info = alloca ptr, align 8
  %gpe_enabled_count = alloca i32, align 4
  %gpe_index = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %is_polling_needed = alloca ptr, align 8
  %gpe_number = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_xrupt_info, ptr %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info.addr, metadata !1449, metadata !DIExpression()), !dbg !1460
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1450, metadata !DIExpression()), !dbg !1461
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1451, metadata !DIExpression()), !dbg !1462
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1463
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1452, metadata !DIExpression()), !dbg !1464
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1465
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1453, metadata !DIExpression()), !dbg !1466
  call void @llvm.lifetime.start.p0(i64 4, ptr %gpe_enabled_count) #13, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %gpe_enabled_count, metadata !1454, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.start.p0(i64 4, ptr %gpe_index) #13, !dbg !1469
  call void @llvm.dbg.declare(metadata ptr %gpe_index, metadata !1455, metadata !DIExpression()), !dbg !1470
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1471
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1456, metadata !DIExpression()), !dbg !1472
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #13, !dbg !1473
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1457, metadata !DIExpression()), !dbg !1474
  call void @llvm.lifetime.start.p0(i64 8, ptr %is_polling_needed) #13, !dbg !1475
  call void @llvm.dbg.declare(metadata ptr %is_polling_needed, metadata !1458, metadata !DIExpression()), !dbg !1476
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1477
  store ptr %0, ptr %is_polling_needed, align 8, !dbg !1476
  call void @llvm.lifetime.start.p0(i64 4, ptr %gpe_number) #13, !dbg !1478
  call void @llvm.dbg.declare(metadata ptr %gpe_number, metadata !1459, metadata !DIExpression()), !dbg !1478
  %1 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1479
  %tobool = icmp ne ptr %1, null, !dbg !1479
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1481

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1482
  %initialized = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %2, i32 0, i32 11, !dbg !1483
  %3 = load i8, ptr %initialized, align 1, !dbg !1483
  %conv = zext i8 %3 to i32, !dbg !1482
  %tobool1 = icmp ne i32 %conv, 0, !dbg !1482
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1484

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !1485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1485

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %gpe_enabled_count, align 4, !dbg !1487
  store i32 0, ptr %i, align 4, !dbg !1488
  br label %for.cond, !dbg !1490

for.cond:                                         ; preds = %for.inc49, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !1491
  %5 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1493
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %5, i32 0, i32 7, !dbg !1494
  %6 = load i32, ptr %register_count, align 8, !dbg !1494
  %cmp = icmp ult i32 %4, %6, !dbg !1495
  br i1 %cmp, label %for.body, label %for.end51, !dbg !1496

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !1497
  br label %for.cond3, !dbg !1500

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4, !dbg !1501
  %cmp4 = icmp ult i32 %7, 8, !dbg !1503
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !1504

for.body6:                                        ; preds = %for.cond3
  %8 = load i32, ptr %i, align 4, !dbg !1505
  %mul = mul i32 %8, 8, !dbg !1507
  %9 = load i32, ptr %j, align 4, !dbg !1508
  %add = add i32 %mul, %9, !dbg !1509
  store i32 %add, ptr %gpe_index, align 4, !dbg !1510
  %10 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1511
  %event_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %10, i32 0, i32 5, !dbg !1512
  %11 = load ptr, ptr %event_info, align 8, !dbg !1512
  %12 = load i32, ptr %gpe_index, align 4, !dbg !1513
  %idxprom = zext i32 %12 to i64, !dbg !1511
  %arrayidx = getelementptr %struct.acpi_gpe_event_info, ptr %11, i64 %idxprom, !dbg !1511
  store ptr %arrayidx, ptr %gpe_event_info, align 8, !dbg !1514
  %13 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1515
  %block_base_number = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %13, i32 0, i32 9, !dbg !1515
  %14 = load i16, ptr %block_base_number, align 2, !dbg !1515
  %conv7 = zext i16 %14 to i32, !dbg !1515
  %15 = load i32, ptr %gpe_index, align 4, !dbg !1515
  %add8 = add i32 %conv7, %15, !dbg !1515
  store i32 %add8, ptr %gpe_number, align 4, !dbg !1515
  %16 = load ptr, ptr %gpe_event_info, align 8, !dbg !1516
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %16, i32 0, i32 2, !dbg !1517
  %17 = load i8, ptr %flags, align 8, !dbg !1518
  %conv9 = zext i8 %17 to i32, !dbg !1518
  %or = or i32 %conv9, 64, !dbg !1518
  %conv10 = trunc i32 %or to i8, !dbg !1518
  store i8 %conv10, ptr %flags, align 8, !dbg !1518
  %18 = load ptr, ptr %gpe_event_info, align 8, !dbg !1519
  %flags11 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %18, i32 0, i32 2, !dbg !1519
  %19 = load i8, ptr %flags11, align 8, !dbg !1519
  %conv12 = zext i8 %19 to i32, !dbg !1519
  %and = and i32 %conv12, 7, !dbg !1519
  %conv13 = trunc i32 %and to i8, !dbg !1519
  %conv14 = zext i8 %conv13 to i32, !dbg !1519
  %cmp15 = icmp ne i32 %conv14, 1, !dbg !1521
  br i1 %cmp15, label %if.then22, label %lor.lhs.false17, !dbg !1522

lor.lhs.false17:                                  ; preds = %for.body6
  %20 = load ptr, ptr %gpe_event_info, align 8, !dbg !1523
  %flags18 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %20, i32 0, i32 2, !dbg !1524
  %21 = load i8, ptr %flags18, align 8, !dbg !1524
  %conv19 = zext i8 %21 to i32, !dbg !1523
  %and20 = and i32 %conv19, 16, !dbg !1525
  %tobool21 = icmp ne i32 %and20, 0, !dbg !1525
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1526

if.then22:                                        ; preds = %lor.lhs.false17, %for.body6
  br label %for.inc, !dbg !1527

if.end23:                                         ; preds = %lor.lhs.false17
  %22 = load ptr, ptr %gpe_event_info, align 8, !dbg !1529
  %call = call i32 @acpi_ev_add_gpe_reference(ptr noundef %22, i8 noundef zeroext 0) #14, !dbg !1530
  store i32 %call, ptr %status, align 4, !dbg !1531
  %23 = load i32, ptr %status, align 4, !dbg !1532
  %tobool24 = icmp ne i32 %23, 0, !dbg !1532
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1534

if.then25:                                        ; preds = %if.end23
  %24 = load i32, ptr %status, align 4, !dbg !1535
  %25 = load i32, ptr %gpe_number, align 4, !dbg !1535
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 472, i32 noundef %24, ptr noundef @.str.1, i32 noundef %25) #14, !dbg !1535
  br label %for.inc, !dbg !1537

if.end26:                                         ; preds = %if.end23
  %26 = load ptr, ptr %gpe_event_info, align 8, !dbg !1538
  %flags27 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %26, i32 0, i32 2, !dbg !1539
  %27 = load i8, ptr %flags27, align 8, !dbg !1540
  %conv28 = zext i8 %27 to i32, !dbg !1540
  %or29 = or i32 %conv28, 32, !dbg !1540
  %conv30 = trunc i32 %or29 to i8, !dbg !1540
  store i8 %conv30, ptr %flags27, align 8, !dbg !1540
  %28 = load ptr, ptr %is_polling_needed, align 8, !dbg !1541
  %tobool31 = icmp ne ptr %28, null, !dbg !1541
  br i1 %tobool31, label %land.lhs.true, label %if.end47, !dbg !1543

land.lhs.true:                                    ; preds = %if.end26
  %29 = load ptr, ptr %gpe_event_info, align 8, !dbg !1544
  %runtime_count = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %29, i32 0, i32 4, !dbg !1544
  %30 = load i8, ptr %runtime_count, align 2, !dbg !1544
  %conv32 = zext i8 %30 to i32, !dbg !1544
  %cmp33 = icmp eq i32 %conv32, 1, !dbg !1544
  br i1 %cmp33, label %land.lhs.true35, label %if.end47, !dbg !1544

land.lhs.true35:                                  ; preds = %land.lhs.true
  %31 = load ptr, ptr %gpe_event_info, align 8, !dbg !1544
  %flags36 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %31, i32 0, i32 2, !dbg !1544
  %32 = load i8, ptr %flags36, align 8, !dbg !1544
  %conv37 = zext i8 %32 to i32, !dbg !1544
  %and38 = and i32 %conv37, 64, !dbg !1544
  %tobool39 = icmp ne i32 %and38, 0, !dbg !1544
  br i1 %tobool39, label %land.lhs.true40, label %if.end47, !dbg !1544

land.lhs.true40:                                  ; preds = %land.lhs.true35
  %33 = load ptr, ptr %gpe_event_info, align 8, !dbg !1544
  %flags41 = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %33, i32 0, i32 2, !dbg !1544
  %34 = load i8, ptr %flags41, align 8, !dbg !1544
  %conv42 = zext i8 %34 to i32, !dbg !1544
  %and43 = and i32 %conv42, 8, !dbg !1544
  %cmp44 = icmp eq i32 %and43, 0, !dbg !1544
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1545

if.then46:                                        ; preds = %land.lhs.true40
  %35 = load ptr, ptr %is_polling_needed, align 8, !dbg !1546
  store i8 1, ptr %35, align 1, !dbg !1548
  br label %if.end47, !dbg !1549

if.end47:                                         ; preds = %if.then46, %land.lhs.true40, %land.lhs.true35, %land.lhs.true, %if.end26
  %36 = load i32, ptr %gpe_enabled_count, align 4, !dbg !1550
  %inc = add i32 %36, 1, !dbg !1550
  store i32 %inc, ptr %gpe_enabled_count, align 4, !dbg !1550
  br label %for.inc, !dbg !1551

for.inc:                                          ; preds = %if.end47, %if.then25, %if.then22
  %37 = load i32, ptr %j, align 4, !dbg !1552
  %inc48 = add i32 %37, 1, !dbg !1552
  store i32 %inc48, ptr %j, align 4, !dbg !1552
  br label %for.cond3, !dbg !1553, !llvm.loop !1554

for.end:                                          ; preds = %for.cond3
  br label %for.inc49, !dbg !1556

for.inc49:                                        ; preds = %for.end
  %38 = load i32, ptr %i, align 4, !dbg !1557
  %inc50 = add i32 %38, 1, !dbg !1557
  store i32 %inc50, ptr %i, align 4, !dbg !1557
  br label %for.cond, !dbg !1558, !llvm.loop !1559

for.end51:                                        ; preds = %for.cond
  %39 = load i32, ptr %gpe_enabled_count, align 4, !dbg !1561
  %tobool52 = icmp ne i32 %39, 0, !dbg !1561
  br i1 %tobool52, label %if.then53, label %if.end60, !dbg !1563

if.then53:                                        ; preds = %for.end51
  %40 = load i32, ptr %gpe_enabled_count, align 4, !dbg !1564
  %41 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1564
  %block_base_number54 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %41, i32 0, i32 9, !dbg !1564
  %42 = load i16, ptr %block_base_number54, align 2, !dbg !1564
  %conv55 = zext i16 %42 to i32, !dbg !1564
  %43 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1564
  %block_base_number56 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %43, i32 0, i32 9, !dbg !1564
  %44 = load i16, ptr %block_base_number56, align 2, !dbg !1564
  %conv57 = zext i16 %44 to i32, !dbg !1564
  %45 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1564
  %gpe_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %45, i32 0, i32 8, !dbg !1564
  %46 = load i16, ptr %gpe_count, align 4, !dbg !1564
  %conv58 = zext i16 %46 to i32, !dbg !1564
  %sub = sub i32 %conv58, 1, !dbg !1564
  %add59 = add i32 %conv57, %sub, !dbg !1564
  call void (ptr, ...) @acpi_info(ptr noundef @.str.2, i32 noundef %40, i32 noundef %conv55, i32 noundef %add59) #14, !dbg !1564
  br label %if.end60, !dbg !1566

if.end60:                                         ; preds = %if.then53, %for.end51
  %47 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1567
  %initialized61 = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %47, i32 0, i32 11, !dbg !1568
  store i8 1, ptr %initialized61, align 1, !dbg !1569
  store i32 0, ptr %retval, align 4, !dbg !1570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1570

cleanup:                                          ; preds = %if.end60, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %gpe_number) #13, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 8, ptr %is_polling_needed) #13, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #13, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %gpe_index) #13, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %gpe_enabled_count) #13, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #13, !dbg !1571
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1571
  %48 = load i32, ptr %retval, align 4, !dbg !1571
  ret i32 %48, !dbg !1571
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1572 dso_local i32 @acpi_ev_add_gpe_reference(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1575 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1578 dso_local void @acpi_info(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1581 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1586 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1594, metadata !DIExpression()), !dbg !1596
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1595, metadata !DIExpression()), !dbg !1597
  %0 = load i64, ptr %size.addr, align 8, !dbg !1598
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1599
  %or = or i32 %1, 256, !dbg !1600
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1601
  ret ptr %call, !dbg !1602
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1603 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1607
  ret i64 %call, !dbg !1608
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1609 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1613, metadata !DIExpression()), !dbg !1614
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1615
  %and = and i64 %0, 512, !dbg !1616
  %tobool = icmp ne i64 %and, 0, !dbg !1617
  %lnot = xor i1 %tobool, true, !dbg !1617
  %lnot.ext = zext i1 %lnot to i32, !dbg !1617
  ret i32 %lnot.ext, !dbg !1618
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1619 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1621, metadata !DIExpression()), !dbg !1626
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1622, metadata !DIExpression()), !dbg !1627
  %0 = load i64, ptr %size.addr, align 8, !dbg !1628
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1629
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1630

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1631
  %tobool = icmp ne i64 %2, 0, !dbg !1631
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1632

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1633
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1623, metadata !DIExpression()), !dbg !1634
  %3 = load i64, ptr %size.addr, align 8, !dbg !1635
  %cmp = icmp ugt i64 %3, 8192, !dbg !1637
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1638

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1639
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1640
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1641
  store ptr %call, ptr %retval, align 8, !dbg !1642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1642

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1643
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1643
  store i32 %call2, ptr %index, align 4, !dbg !1644
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1645
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1646
  %9 = ptrtoint ptr %8 to i64, !dbg !1646
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1647
  %idxprom = zext i32 %call3 to i64, !dbg !1648
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1648
  %10 = load i32, ptr %index, align 4, !dbg !1649
  %idxprom4 = zext i32 %10 to i64, !dbg !1648
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1648
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1648
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1650
  %13 = load i64, ptr %size.addr, align 8, !dbg !1651
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1652
  store ptr %call6, ptr %retval, align 8, !dbg !1653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1653

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1654
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1655
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1656
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1657
  store ptr %call8, ptr %retval, align 8, !dbg !1658
  br label %return, !dbg !1658

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1659
  ret ptr %16, !dbg !1659
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1660 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1661 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1667, metadata !DIExpression()), !dbg !1669
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1668, metadata !DIExpression()), !dbg !1670
  %0 = load i64, ptr %size.addr, align 8, !dbg !1671
  %tobool = icmp ne i64 %0, 0, !dbg !1671
  br i1 %tobool, label %if.end, label %if.then, !dbg !1673

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1674
  br label %return, !dbg !1674

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1675
  %cmp = icmp ule i64 %1, 8, !dbg !1677
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1678

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1679
  br label %return, !dbg !1679

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1680
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1682
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1683

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1684
  %cmp4 = icmp ule i64 %3, 96, !dbg !1685
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1686

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1687
  br label %return, !dbg !1687

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1688
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1690
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1691

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1692
  %cmp9 = icmp ule i64 %5, 192, !dbg !1693
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1694

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1695
  br label %return, !dbg !1695

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1696
  %cmp12 = icmp ule i64 %6, 8, !dbg !1698
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1699

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1700
  br label %return, !dbg !1700

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1701
  %cmp15 = icmp ule i64 %7, 16, !dbg !1703
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1704

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1705
  br label %return, !dbg !1705

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1706
  %cmp18 = icmp ule i64 %8, 32, !dbg !1708
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1709

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1710
  br label %return, !dbg !1710

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1711
  %cmp21 = icmp ule i64 %9, 64, !dbg !1713
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1714

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1715
  br label %return, !dbg !1715

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1716
  %cmp24 = icmp ule i64 %10, 128, !dbg !1718
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1719

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1720
  br label %return, !dbg !1720

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1721
  %cmp27 = icmp ule i64 %11, 256, !dbg !1723
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1724

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1725
  br label %return, !dbg !1725

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1726
  %cmp30 = icmp ule i64 %12, 512, !dbg !1728
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1729

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1730
  br label %return, !dbg !1730

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1731
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1733
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1734

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1735
  br label %return, !dbg !1735

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1736
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1738
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1739

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1740
  br label %return, !dbg !1740

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1741
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1743
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1744

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1745
  br label %return, !dbg !1745

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1746
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1748
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1749

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1750
  br label %return, !dbg !1750

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1751
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1753
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1754

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1755
  br label %return, !dbg !1755

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1756
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1758
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1759

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1760
  br label %return, !dbg !1760

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1761
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1763
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1764

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1765
  br label %return, !dbg !1765

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1766
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1768
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1769

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1770
  br label %return, !dbg !1770

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1771
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1773
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1774

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1775
  br label %return, !dbg !1775

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1776
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1778
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1779

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1780
  br label %return, !dbg !1780

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1781
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1783
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1784

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1785
  br label %return, !dbg !1785

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1786
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1788
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1789

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1790
  br label %return, !dbg !1790

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1791, !range !1793, !noundef !1794
  %tobool69 = trunc i8 %25 to i1, !dbg !1791
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1795

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1796

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1797, !srcloc !1800
  unreachable, !dbg !1797

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1801

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1802

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1803

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1805

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1803

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #13, !dbg !1807, !srcloc !1809
  br label %do.end75, !dbg !1807

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1803

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1810
  br label %return, !dbg !1810

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1811
  ret i32 %26, !dbg !1811
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1812 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1818 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1822, metadata !DIExpression()), !dbg !1824
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1823, metadata !DIExpression()), !dbg !1825
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1826
  %and = and i32 %0, 17, !dbg !1826
  %cmp = icmp eq i32 %and, 0, !dbg !1826
  %lnot = xor i1 %cmp, true, !dbg !1826
  %lnot1 = xor i1 %lnot, true, !dbg !1826
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1826
  %conv = sext i32 %lnot.ext to i64, !dbg !1826
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1826
  %tobool = icmp ne i64 %expval, 0, !dbg !1826
  br i1 %tobool, label %if.then, label %if.end, !dbg !1828

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1829
  br label %return, !dbg !1829

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1830
  %and2 = and i32 %1, 1, !dbg !1832
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1832
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1833

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1834
  br label %return, !dbg !1834

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1835
  br label %return, !dbg !1835

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1837
  ret i32 %2, !dbg !1837
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1838 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1839 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1842 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1845
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1844, metadata !DIExpression()), !dbg !1846
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1847, !srcloc !1848
  %0 = load i64, ptr %flags, align 8, !dbg !1849
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1850
  ret i64 %0, !dbg !1851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1852 dso_local i32 @acpi_hw_gpe_write(i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1856 dso_local i32 @acpi_ev_get_gpe_xrupt_block(i32 noundef, ptr noundef) #3

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
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !75, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evgpeblk.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evgpeblk\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evgpeblk.ll drivers/acpi/acpica/evgpeblk.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !43, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evgpeblk.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "762da2bc43cba21e21088a52a9e44b6d")
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
!21 = !{!22, !23, !29, !33, !37, !25, !30, !40, !42}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !24, line: 421, baseType: !25)
!24 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !26, line: 21, baseType: !27)
!26 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !28, line: 27, baseType: !7)
!28 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !24, line: 814, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !26, line: 17, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !28, line: 21, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !24, line: 127, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !26, line: 23, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 31, baseType: !36)
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !26, line: 19, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !28, line: 24, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 154, baseType: !7)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !{!44, !50, !55, !0, !60, !65, !70}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 318, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !48)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !{!49}
!49 = !DISubrange(count: 32)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 472, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 224, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 28)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !3, line: 490, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 304, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 38)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 168, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 21)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 360, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 45)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 336, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 42)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 72, elements: !77)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!77 = !{!78}
!78 = !DISubrange(count: 9)
!79 = !{i32 7, !"Dwarf Version", i32 5}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 8, !"cf-protection-branch", i32 1}
!83 = !{i32 4, !"function_return_thunk_extern", i32 1}
!84 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!85 = !{i32 1, !"Code Model", i32 2}
!86 = !{i32 1, !"override-stack-alignment", i32 8}
!87 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!88 = distinct !DISubprogram(name: "acpi_ev_delete_gpe_block", scope: !3, file: !3, line: 97, type: !89, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !848)
!89 = !DISubroutineType(types: !90)
!90 = !{!23, !91}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !93, line: 480, size: 576, elements: !94)
!93 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!94 = !{!95, !785, !786, !787, !795, !810, !842, !843, !844, !845, !846, !847}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !92, file: !93, line: 481, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !93, line: 133, size: 384, elements: !98)
!98 = !{!99, !772, !773, !774, !775, !781, !782, !783, !784}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !97, file: !93, line: 134, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !102, line: 369, size: 576, elements: !103)
!102 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!103 = !{!104, !112, !125, !136, !150, !164, !173, !488, !505, !521, !534, !545, !557, !571, !581, !599, !621, !640, !659, !678, !691, !718, !735, !748, !762, !771}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !101, file: !102, line: 370, baseType: !105, size: 128)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !102, line: 73, size: 128, elements: !106)
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !102, line: 74, baseType: !100, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !102, line: 74, baseType: !30, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !102, line: 74, baseType: !30, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !102, line: 74, baseType: !37, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !102, line: 74, baseType: !30, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !101, file: !102, line: 371, baseType: !113, size: 192)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !102, line: 76, size: 192, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !124}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !102, line: 77, baseType: !100, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !102, line: 77, baseType: !30, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !102, line: 77, baseType: !30, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !102, line: 77, baseType: !37, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !102, line: 77, baseType: !30, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !113, file: !102, line: 77, baseType: !121, size: 24, offset: 104)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 3)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !113, file: !102, line: 78, baseType: !34, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !101, file: !102, line: 372, baseType: !126, size: 256)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !102, line: 93, size: 256, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !135}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !102, line: 94, baseType: !100, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !102, line: 94, baseType: !30, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !102, line: 94, baseType: !30, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !102, line: 94, baseType: !37, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !102, line: 94, baseType: !30, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !126, file: !102, line: 94, baseType: !134, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !126, file: !102, line: 94, baseType: !25, size: 32, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !101, file: !102, line: 373, baseType: !137, size: 384)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !102, line: 97, size: 384, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144, !146, !147, !148, !149}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !137, file: !102, line: 98, baseType: !100, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !137, file: !102, line: 98, baseType: !30, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !102, line: 98, baseType: !30, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !137, file: !102, line: 98, baseType: !37, size: 16, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !102, line: 98, baseType: !30, size: 8, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !137, file: !102, line: 98, baseType: !145, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !137, file: !102, line: 98, baseType: !25, size: 32, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !137, file: !102, line: 99, baseType: !25, size: 32, offset: 224)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !137, file: !102, line: 100, baseType: !145, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !137, file: !102, line: 101, baseType: !96, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !101, file: !102, line: 374, baseType: !151, size: 384)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !102, line: 104, size: 384, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !161, !162, !163}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !151, file: !102, line: 105, baseType: !100, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !151, file: !102, line: 105, baseType: !30, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !102, line: 105, baseType: !30, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !151, file: !102, line: 105, baseType: !37, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !102, line: 105, baseType: !30, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !151, file: !102, line: 105, baseType: !96, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !151, file: !102, line: 106, baseType: !160, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !151, file: !102, line: 107, baseType: !145, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !151, file: !102, line: 108, baseType: !25, size: 32, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !151, file: !102, line: 109, baseType: !25, size: 32, offset: 352)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !101, file: !102, line: 375, baseType: !165, size: 192)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !102, line: 118, size: 192, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !165, file: !102, line: 119, baseType: !100, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !165, file: !102, line: 119, baseType: !30, size: 8, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !102, line: 119, baseType: !30, size: 8, offset: 72)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !165, file: !102, line: 119, baseType: !37, size: 16, offset: 80)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !165, file: !102, line: 119, baseType: !30, size: 8, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !165, file: !102, line: 119, baseType: !22, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !101, file: !102, line: 376, baseType: !174, size: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !102, line: 144, size: 448, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !485, !486, !487}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !174, file: !102, line: 145, baseType: !100, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !174, file: !102, line: 145, baseType: !30, size: 8, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !102, line: 145, baseType: !30, size: 8, offset: 72)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !174, file: !102, line: 145, baseType: !37, size: 16, offset: 80)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !102, line: 145, baseType: !30, size: 8, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !174, file: !102, line: 145, baseType: !30, size: 8, offset: 104)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !174, file: !102, line: 146, baseType: !30, size: 8, offset: 112)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !174, file: !102, line: 147, baseType: !30, size: 8, offset: 120)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !174, file: !102, line: 148, baseType: !100, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !174, file: !102, line: 149, baseType: !100, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !174, file: !102, line: 150, baseType: !145, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !174, file: !102, line: 154, baseType: !188, size: 64, offset: 320)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !102, line: 151, size: 64, elements: !189)
!189 = !{!190, !484}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !188, file: !102, line: 152, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !93, line: 248, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!23, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !197, line: 37, size: 9024, elements: !198)
!197 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !432, !433, !434, !435, !436, !440, !442, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !467, !468, !469, !470, !471, !472, !473, !474, !476, !482}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !197, line: 38, baseType: !195, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !196, file: !197, line: 39, baseType: !30, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !196, file: !197, line: 40, baseType: !30, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !196, file: !197, line: 41, baseType: !37, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !196, file: !197, line: 42, baseType: !30, size: 8, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !196, file: !197, line: 43, baseType: !30, size: 8, offset: 104)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !196, file: !197, line: 44, baseType: !30, size: 8, offset: 112)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !196, file: !197, line: 45, baseType: !207, size: 16, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !24, line: 445, baseType: !37)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !196, file: !197, line: 46, baseType: !30, size: 8, offset: 144)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !196, file: !197, line: 47, baseType: !30, size: 8, offset: 152)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !196, file: !197, line: 48, baseType: !30, size: 8, offset: 160)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !196, file: !197, line: 49, baseType: !30, size: 8, offset: 168)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !196, file: !197, line: 50, baseType: !30, size: 8, offset: 176)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !196, file: !197, line: 51, baseType: !30, size: 8, offset: 184)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !196, file: !197, line: 52, baseType: !30, size: 8, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !196, file: !197, line: 53, baseType: !30, size: 8, offset: 200)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !196, file: !197, line: 54, baseType: !145, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !196, file: !197, line: 55, baseType: !25, size: 32, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !196, file: !197, line: 56, baseType: !25, size: 32, offset: 352)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !196, file: !197, line: 57, baseType: !25, size: 32, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !196, file: !197, line: 58, baseType: !25, size: 32, offset: 416)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !196, file: !197, line: 60, baseType: !222, size: 640, offset: 448)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !93, line: 909, size: 640, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !313, !314, !430, !431}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !222, file: !93, line: 910, baseType: !145, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !222, file: !93, line: 911, baseType: !145, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !222, file: !93, line: 912, baseType: !145, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !222, file: !93, line: 913, baseType: !145, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !222, file: !93, line: 914, baseType: !145, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !222, file: !93, line: 915, baseType: !230, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !93, line: 891, size: 1600, elements: !232)
!232 = !{!233, !253, !269}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !231, file: !93, line: 892, baseType: !234, size: 448)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !93, line: 844, size: 448, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !252}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !93, line: 845, baseType: !230, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !93, line: 845, baseType: !30, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !93, line: 845, baseType: !30, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !93, line: 845, baseType: !37, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !93, line: 845, baseType: !145, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !93, line: 845, baseType: !230, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !93, line: 845, baseType: !96, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !93, line: 845, baseType: !244, size: 64, offset: 320)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !93, line: 732, size: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !244, file: !93, line: 733, baseType: !34, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !244, file: !93, line: 734, baseType: !25, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !244, file: !93, line: 735, baseType: !134, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !244, file: !93, line: 736, baseType: !145, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !244, file: !93, line: 737, baseType: !134, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !244, file: !93, line: 738, baseType: !230, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !93, line: 845, baseType: !30, size: 8, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !231, file: !93, line: 893, baseType: !254, size: 640)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !93, line: 851, size: 640, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !254, file: !93, line: 852, baseType: !230, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !254, file: !93, line: 852, baseType: !30, size: 8, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !254, file: !93, line: 852, baseType: !30, size: 8, offset: 72)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !254, file: !93, line: 852, baseType: !37, size: 16, offset: 80)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !254, file: !93, line: 852, baseType: !145, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !254, file: !93, line: 852, baseType: !230, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !254, file: !93, line: 852, baseType: !96, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !254, file: !93, line: 852, baseType: !244, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !254, file: !93, line: 852, baseType: !30, size: 8, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !254, file: !93, line: 852, baseType: !134, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !254, file: !93, line: 853, baseType: !145, size: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !254, file: !93, line: 854, baseType: !25, size: 32, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !93, line: 855, baseType: !25, size: 32, offset: 608)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !231, file: !93, line: 894, baseType: !270, size: 1600)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !93, line: 862, size: 1600, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !270, file: !93, line: 863, baseType: !230, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !93, line: 863, baseType: !30, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !93, line: 863, baseType: !30, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !270, file: !93, line: 863, baseType: !37, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !270, file: !93, line: 863, baseType: !145, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !93, line: 863, baseType: !230, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !270, file: !93, line: 863, baseType: !96, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !93, line: 863, baseType: !244, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !270, file: !93, line: 863, baseType: !30, size: 8, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !270, file: !93, line: 863, baseType: !230, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !270, file: !93, line: 864, baseType: !230, size: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !270, file: !93, line: 865, baseType: !134, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !270, file: !93, line: 866, baseType: !30, size: 8, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !270, file: !93, line: 867, baseType: !134, size: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !270, file: !93, line: 868, baseType: !134, size: 64, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !270, file: !93, line: 869, baseType: !134, size: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !270, file: !93, line: 870, baseType: !289, size: 32, offset: 896)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 4)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !270, file: !93, line: 871, baseType: !25, size: 32, offset: 928)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !270, file: !93, line: 872, baseType: !25, size: 32, offset: 960)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !270, file: !93, line: 873, baseType: !25, size: 32, offset: 992)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !270, file: !93, line: 874, baseType: !25, size: 32, offset: 1024)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !270, file: !93, line: 875, baseType: !25, size: 32, offset: 1056)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !270, file: !93, line: 876, baseType: !25, size: 32, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !270, file: !93, line: 877, baseType: !25, size: 32, offset: 1120)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !270, file: !93, line: 878, baseType: !25, size: 32, offset: 1152)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !270, file: !93, line: 879, baseType: !25, size: 32, offset: 1184)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !270, file: !93, line: 880, baseType: !25, size: 32, offset: 1216)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !270, file: !93, line: 881, baseType: !25, size: 32, offset: 1248)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !270, file: !93, line: 882, baseType: !25, size: 32, offset: 1280)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !270, file: !93, line: 883, baseType: !25, size: 32, offset: 1312)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !270, file: !93, line: 884, baseType: !37, size: 16, offset: 1344)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !270, file: !93, line: 885, baseType: !30, size: 8, offset: 1360)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !270, file: !93, line: 886, baseType: !30, size: 8, offset: 1368)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !270, file: !93, line: 887, baseType: !30, size: 8, offset: 1376)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !270, file: !93, line: 888, baseType: !310, size: 160, offset: 1384)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 20)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !222, file: !93, line: 916, baseType: !96, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !222, file: !93, line: 917, baseType: !315, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !93, line: 679, size: 640, elements: !317)
!317 = !{!318, !326, !339, !348, !357, !370, !384, !396, !408}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !316, file: !93, line: 680, baseType: !319, size: 128)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !93, line: 575, size: 128, elements: !320)
!320 = !{!321, !322, !323, !324, !325}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !93, line: 576, baseType: !22, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !93, line: 576, baseType: !30, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !93, line: 576, baseType: !30, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !93, line: 576, baseType: !37, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !93, line: 576, baseType: !37, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !316, file: !93, line: 681, baseType: !327, size: 384)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !93, line: 604, size: 384, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !93, line: 605, baseType: !22, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !93, line: 605, baseType: !30, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !93, line: 605, baseType: !30, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !93, line: 605, baseType: !37, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !93, line: 605, baseType: !37, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !327, file: !93, line: 606, baseType: !37, size: 16, offset: 112)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !327, file: !93, line: 607, baseType: !230, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !327, file: !93, line: 608, baseType: !145, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !327, file: !93, line: 609, baseType: !145, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !327, file: !93, line: 610, baseType: !34, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !316, file: !93, line: 682, baseType: !340, size: 192)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !93, line: 582, size: 192, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !93, line: 583, baseType: !22, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !93, line: 583, baseType: !30, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !93, line: 583, baseType: !30, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !93, line: 583, baseType: !37, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !93, line: 583, baseType: !37, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !340, file: !93, line: 584, baseType: !100, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !316, file: !93, line: 683, baseType: !349, size: 192)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !93, line: 616, size: 192, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !93, line: 617, baseType: !22, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !349, file: !93, line: 617, baseType: !30, size: 8, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !93, line: 617, baseType: !30, size: 8, offset: 72)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !349, file: !93, line: 617, baseType: !37, size: 16, offset: 80)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !93, line: 617, baseType: !37, size: 16, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !349, file: !93, line: 618, baseType: !96, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !316, file: !93, line: 684, baseType: !358, size: 448)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !93, line: 621, size: 448, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !93, line: 622, baseType: !22, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !93, line: 622, baseType: !30, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !93, line: 622, baseType: !30, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !93, line: 622, baseType: !37, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !93, line: 622, baseType: !37, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !358, file: !93, line: 623, baseType: !25, size: 32, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !358, file: !93, line: 624, baseType: !230, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !358, file: !93, line: 625, baseType: !145, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !358, file: !93, line: 626, baseType: !145, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !358, file: !93, line: 627, baseType: !25, size: 32, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !316, file: !93, line: 685, baseType: !371, size: 512)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !93, line: 590, size: 512, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !93, line: 591, baseType: !22, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !371, file: !93, line: 591, baseType: !30, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !93, line: 591, baseType: !30, size: 8, offset: 72)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !371, file: !93, line: 591, baseType: !37, size: 16, offset: 80)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !371, file: !93, line: 591, baseType: !37, size: 16, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !371, file: !93, line: 592, baseType: !25, size: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !371, file: !93, line: 593, baseType: !100, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !371, file: !93, line: 594, baseType: !100, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !371, file: !93, line: 595, baseType: !195, size: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !371, file: !93, line: 596, baseType: !22, size: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !371, file: !93, line: 597, baseType: !25, size: 32, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !316, file: !93, line: 686, baseType: !385, size: 320)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !93, line: 634, size: 320, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !93, line: 635, baseType: !22, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !385, file: !93, line: 635, baseType: !30, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !93, line: 635, baseType: !30, size: 8, offset: 72)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !385, file: !93, line: 635, baseType: !37, size: 16, offset: 80)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !385, file: !93, line: 635, baseType: !37, size: 16, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !385, file: !93, line: 636, baseType: !30, size: 8, offset: 112)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !385, file: !93, line: 637, baseType: !195, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !385, file: !93, line: 638, baseType: !100, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !385, file: !93, line: 639, baseType: !34, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !316, file: !93, line: 687, baseType: !397, size: 640)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !93, line: 646, size: 640, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !93, line: 647, baseType: !22, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !397, file: !93, line: 647, baseType: !30, size: 8, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !93, line: 647, baseType: !30, size: 8, offset: 72)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !397, file: !93, line: 647, baseType: !37, size: 16, offset: 80)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !397, file: !93, line: 647, baseType: !37, size: 16, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !397, file: !93, line: 648, baseType: !405, size: 512, offset: 128)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 512, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 8)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !316, file: !93, line: 688, baseType: !409, size: 320)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !93, line: 669, size: 320, elements: !410)
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !409, file: !93, line: 670, baseType: !22, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !409, file: !93, line: 670, baseType: !30, size: 8, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !93, line: 670, baseType: !30, size: 8, offset: 72)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !409, file: !93, line: 670, baseType: !37, size: 16, offset: 80)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !409, file: !93, line: 670, baseType: !37, size: 16, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !409, file: !93, line: 671, baseType: !30, size: 8, offset: 112)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !409, file: !93, line: 672, baseType: !96, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !409, file: !93, line: 673, baseType: !100, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !409, file: !93, line: 674, baseType: !420, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !93, line: 660, size: 128, elements: !422)
!422 = !{!423, !429}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !421, file: !93, line: 661, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !24, line: 1061, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !428, !25, !22}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !24, line: 424, baseType: !22)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !421, file: !93, line: 662, baseType: !22, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !222, file: !93, line: 918, baseType: !230, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !222, file: !93, line: 919, baseType: !25, size: 32, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !196, file: !197, line: 61, baseType: !25, size: 32, offset: 1088)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !196, file: !197, line: 62, baseType: !25, size: 32, offset: 1120)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !196, file: !197, line: 63, baseType: !37, size: 16, offset: 1152)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !196, file: !197, line: 64, baseType: !30, size: 8, offset: 1168)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !196, file: !197, line: 66, baseType: !437, size: 2688, offset: 1216)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2688, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 7)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !196, file: !197, line: 67, baseType: !441, size: 3072, offset: 3904)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 3072, elements: !406)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !196, file: !197, line: 68, baseType: !443, size: 576, offset: 6976)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 576, elements: !77)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !196, file: !197, line: 69, baseType: !160, size: 64, offset: 7552)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !196, file: !197, line: 71, baseType: !145, size: 64, offset: 7616)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !196, file: !197, line: 72, baseType: !160, size: 64, offset: 7680)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !196, file: !197, line: 73, baseType: !315, size: 64, offset: 7744)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !196, file: !197, line: 74, baseType: !96, size: 64, offset: 7808)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !196, file: !197, line: 75, baseType: !100, size: 64, offset: 7872)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !196, file: !197, line: 76, baseType: !96, size: 64, offset: 7936)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !196, file: !197, line: 77, baseType: !230, size: 64, offset: 8000)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !196, file: !197, line: 78, baseType: !100, size: 64, offset: 8064)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !196, file: !197, line: 79, baseType: !96, size: 64, offset: 8128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !196, file: !197, line: 80, baseType: !134, size: 64, offset: 8192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !196, file: !197, line: 81, baseType: !230, size: 64, offset: 8256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !196, file: !197, line: 82, baseType: !457, size: 64, offset: 8320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !93, line: 718, size: 128, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !466}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !459, file: !93, line: 722, baseType: !25, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !459, file: !93, line: 723, baseType: !25, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !93, line: 724, baseType: !37, size: 16, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !459, file: !93, line: 725, baseType: !30, size: 8, offset: 80)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !459, file: !93, line: 726, baseType: !30, size: 8, offset: 88)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !459, file: !93, line: 727, baseType: !30, size: 8, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !196, file: !197, line: 83, baseType: !230, size: 64, offset: 8384)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !196, file: !197, line: 84, baseType: !100, size: 64, offset: 8448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !196, file: !197, line: 85, baseType: !315, size: 64, offset: 8512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !196, file: !197, line: 86, baseType: !100, size: 64, offset: 8576)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !196, file: !197, line: 87, baseType: !315, size: 64, offset: 8640)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !196, file: !197, line: 88, baseType: !230, size: 64, offset: 8704)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !196, file: !197, line: 89, baseType: !230, size: 64, offset: 8768)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !196, file: !197, line: 90, baseType: !475, size: 64, offset: 8832)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !196, file: !197, line: 91, baseType: !477, size: 64, offset: 8896)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !93, line: 652, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!23, !195, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !196, file: !197, line: 92, baseType: !483, size: 64, offset: 8960)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !93, line: 656, baseType: !192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !188, file: !102, line: 153, baseType: !100, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !174, file: !102, line: 156, baseType: !25, size: 32, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !174, file: !102, line: 157, baseType: !207, size: 16, offset: 416)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !174, file: !102, line: 158, baseType: !30, size: 8, offset: 432)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !101, file: !102, line: 377, baseType: !489, size: 576)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !102, line: 122, size: 576, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !489, file: !102, line: 123, baseType: !100, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !489, file: !102, line: 123, baseType: !30, size: 8, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !102, line: 123, baseType: !30, size: 8, offset: 72)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !489, file: !102, line: 123, baseType: !37, size: 16, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !102, line: 123, baseType: !30, size: 8, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !489, file: !102, line: 123, baseType: !30, size: 8, offset: 104)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !489, file: !102, line: 124, baseType: !37, size: 16, offset: 112)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !489, file: !102, line: 125, baseType: !22, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !489, file: !102, line: 126, baseType: !34, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !489, file: !102, line: 127, baseType: !475, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !489, file: !102, line: 128, baseType: !100, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !102, line: 129, baseType: !100, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !489, file: !102, line: 130, baseType: !96, size: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !489, file: !102, line: 131, baseType: !30, size: 8, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !101, file: !102, line: 378, baseType: !506, size: 512)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !102, line: 134, size: 512, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !519, !520}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !506, file: !102, line: 135, baseType: !100, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !506, file: !102, line: 135, baseType: !30, size: 8, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !102, line: 135, baseType: !30, size: 8, offset: 72)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !506, file: !102, line: 135, baseType: !37, size: 16, offset: 80)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !102, line: 135, baseType: !30, size: 8, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !506, file: !102, line: 135, baseType: !30, size: 8, offset: 104)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !506, file: !102, line: 136, baseType: !96, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !506, file: !102, line: 137, baseType: !100, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !102, line: 138, baseType: !100, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !506, file: !102, line: 139, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !24, line: 129, baseType: !34)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !506, file: !102, line: 140, baseType: !25, size: 32, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !506, file: !102, line: 141, baseType: !22, size: 64, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !101, file: !102, line: 379, baseType: !522, size: 320)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !102, line: 185, size: 320, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !533}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !522, file: !102, line: 186, baseType: !100, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !522, file: !102, line: 186, baseType: !30, size: 8, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !522, file: !102, line: 186, baseType: !30, size: 8, offset: 72)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !522, file: !102, line: 186, baseType: !37, size: 16, offset: 80)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !522, file: !102, line: 186, baseType: !30, size: 8, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !522, file: !102, line: 186, baseType: !530, size: 128, offset: 128)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 2)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !522, file: !102, line: 186, baseType: !100, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !101, file: !102, line: 380, baseType: !535, size: 384)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !102, line: 188, size: 384, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !535, file: !102, line: 189, baseType: !100, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !535, file: !102, line: 189, baseType: !30, size: 8, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !535, file: !102, line: 189, baseType: !30, size: 8, offset: 72)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !535, file: !102, line: 189, baseType: !37, size: 16, offset: 80)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !102, line: 189, baseType: !30, size: 8, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !535, file: !102, line: 190, baseType: !530, size: 128, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !535, file: !102, line: 190, baseType: !100, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !535, file: !102, line: 190, baseType: !91, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !101, file: !102, line: 381, baseType: !546, size: 384)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !102, line: 193, size: 384, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !546, file: !102, line: 194, baseType: !100, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !546, file: !102, line: 194, baseType: !30, size: 8, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !546, file: !102, line: 194, baseType: !30, size: 8, offset: 72)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !546, file: !102, line: 194, baseType: !37, size: 16, offset: 80)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !102, line: 194, baseType: !30, size: 8, offset: 96)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !546, file: !102, line: 194, baseType: !530, size: 128, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !546, file: !102, line: 194, baseType: !100, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !546, file: !102, line: 194, baseType: !25, size: 32, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !546, file: !102, line: 195, baseType: !25, size: 32, offset: 352)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !101, file: !102, line: 382, baseType: !558, size: 384)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !102, line: 198, size: 384, elements: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !558, file: !102, line: 199, baseType: !100, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !558, file: !102, line: 199, baseType: !30, size: 8, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !558, file: !102, line: 199, baseType: !30, size: 8, offset: 72)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !558, file: !102, line: 199, baseType: !37, size: 16, offset: 80)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !102, line: 199, baseType: !30, size: 8, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !558, file: !102, line: 201, baseType: !30, size: 8, offset: 104)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !558, file: !102, line: 202, baseType: !30, size: 8, offset: 112)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !558, file: !102, line: 203, baseType: !530, size: 128, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !558, file: !102, line: 203, baseType: !100, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !558, file: !102, line: 203, baseType: !570, size: 64, offset: 320)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !24, line: 128, baseType: !34)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !101, file: !102, line: 383, baseType: !572, size: 320)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !102, line: 206, size: 320, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !572, file: !102, line: 207, baseType: !100, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !102, line: 207, baseType: !30, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !102, line: 207, baseType: !30, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !572, file: !102, line: 207, baseType: !37, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !102, line: 207, baseType: !30, size: 8, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !572, file: !102, line: 207, baseType: !530, size: 128, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !572, file: !102, line: 207, baseType: !100, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !101, file: !102, line: 384, baseType: !582, size: 384)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !102, line: 234, size: 384, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !582, file: !102, line: 235, baseType: !100, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !582, file: !102, line: 235, baseType: !30, size: 8, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !582, file: !102, line: 235, baseType: !30, size: 8, offset: 72)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !582, file: !102, line: 235, baseType: !37, size: 16, offset: 80)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !102, line: 235, baseType: !30, size: 8, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !582, file: !102, line: 235, baseType: !30, size: 8, offset: 104)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !582, file: !102, line: 235, baseType: !30, size: 8, offset: 112)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !582, file: !102, line: 235, baseType: !30, size: 8, offset: 120)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !582, file: !102, line: 235, baseType: !96, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !582, file: !102, line: 235, baseType: !25, size: 32, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !582, file: !102, line: 235, baseType: !25, size: 32, offset: 224)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !582, file: !102, line: 235, baseType: !25, size: 32, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !582, file: !102, line: 235, baseType: !30, size: 8, offset: 288)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !582, file: !102, line: 235, baseType: !30, size: 8, offset: 296)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !582, file: !102, line: 235, baseType: !100, size: 64, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !101, file: !102, line: 385, baseType: !600, size: 576)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !102, line: 238, size: 576, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !600, file: !102, line: 239, baseType: !100, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !600, file: !102, line: 239, baseType: !30, size: 8, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !600, file: !102, line: 239, baseType: !30, size: 8, offset: 72)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !600, file: !102, line: 239, baseType: !37, size: 16, offset: 80)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !102, line: 239, baseType: !30, size: 8, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !600, file: !102, line: 239, baseType: !30, size: 8, offset: 104)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !600, file: !102, line: 239, baseType: !30, size: 8, offset: 112)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !600, file: !102, line: 239, baseType: !30, size: 8, offset: 120)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !600, file: !102, line: 239, baseType: !96, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !600, file: !102, line: 239, baseType: !25, size: 32, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !600, file: !102, line: 239, baseType: !25, size: 32, offset: 224)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !600, file: !102, line: 239, baseType: !25, size: 32, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !600, file: !102, line: 239, baseType: !30, size: 8, offset: 288)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !600, file: !102, line: 239, baseType: !30, size: 8, offset: 296)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !600, file: !102, line: 239, baseType: !37, size: 16, offset: 304)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !600, file: !102, line: 240, baseType: !100, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !600, file: !102, line: 241, baseType: !145, size: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !600, file: !102, line: 242, baseType: !37, size: 16, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !600, file: !102, line: 243, baseType: !145, size: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !101, file: !102, line: 386, baseType: !622, size: 384)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !102, line: 263, size: 384, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !622, file: !102, line: 264, baseType: !100, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !622, file: !102, line: 264, baseType: !30, size: 8, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !102, line: 264, baseType: !30, size: 8, offset: 72)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !622, file: !102, line: 264, baseType: !37, size: 16, offset: 80)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !102, line: 264, baseType: !30, size: 8, offset: 96)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !622, file: !102, line: 264, baseType: !30, size: 8, offset: 104)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !622, file: !102, line: 264, baseType: !30, size: 8, offset: 112)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !622, file: !102, line: 264, baseType: !30, size: 8, offset: 120)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !622, file: !102, line: 264, baseType: !96, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !622, file: !102, line: 264, baseType: !25, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !622, file: !102, line: 264, baseType: !25, size: 32, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !622, file: !102, line: 264, baseType: !25, size: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !622, file: !102, line: 264, baseType: !30, size: 8, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !622, file: !102, line: 264, baseType: !30, size: 8, offset: 296)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !622, file: !102, line: 264, baseType: !30, size: 8, offset: 304)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !622, file: !102, line: 265, baseType: !100, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !101, file: !102, line: 387, baseType: !641, size: 448)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !102, line: 246, size: 448, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !641, file: !102, line: 247, baseType: !100, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !641, file: !102, line: 247, baseType: !30, size: 8, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !102, line: 247, baseType: !30, size: 8, offset: 72)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !641, file: !102, line: 247, baseType: !37, size: 16, offset: 80)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !102, line: 247, baseType: !30, size: 8, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !641, file: !102, line: 247, baseType: !30, size: 8, offset: 104)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !641, file: !102, line: 247, baseType: !30, size: 8, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !641, file: !102, line: 247, baseType: !30, size: 8, offset: 120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !102, line: 247, baseType: !96, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !641, file: !102, line: 247, baseType: !25, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !641, file: !102, line: 247, baseType: !25, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !641, file: !102, line: 247, baseType: !25, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !641, file: !102, line: 247, baseType: !30, size: 8, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !641, file: !102, line: 247, baseType: !30, size: 8, offset: 296)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !641, file: !102, line: 247, baseType: !100, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !641, file: !102, line: 248, baseType: !100, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !101, file: !102, line: 388, baseType: !660, size: 448)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !102, line: 251, size: 448, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !102, line: 252, baseType: !100, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !102, line: 252, baseType: !30, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !102, line: 252, baseType: !30, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !102, line: 252, baseType: !37, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !102, line: 252, baseType: !30, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !660, file: !102, line: 252, baseType: !30, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !660, file: !102, line: 252, baseType: !30, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !660, file: !102, line: 252, baseType: !30, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !102, line: 252, baseType: !96, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !660, file: !102, line: 252, baseType: !25, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !660, file: !102, line: 252, baseType: !25, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !102, line: 252, baseType: !25, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !660, file: !102, line: 252, baseType: !30, size: 8, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !660, file: !102, line: 252, baseType: !30, size: 8, offset: 296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !660, file: !102, line: 257, baseType: !100, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !660, file: !102, line: 258, baseType: !100, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !101, file: !102, line: 389, baseType: !679, size: 512)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !102, line: 274, size: 512, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !679, file: !102, line: 275, baseType: !100, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !102, line: 275, baseType: !30, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !102, line: 275, baseType: !30, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !679, file: !102, line: 275, baseType: !37, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !102, line: 275, baseType: !30, size: 8, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !102, line: 275, baseType: !96, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !679, file: !102, line: 276, baseType: !25, size: 32, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !679, file: !102, line: 277, baseType: !424, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !679, file: !102, line: 278, baseType: !22, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !102, line: 279, baseType: !530, size: 128, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !101, file: !102, line: 390, baseType: !692, size: 576)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !102, line: 282, size: 576, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !707, !708, !709, !710, !716, !717}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !692, file: !102, line: 283, baseType: !100, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !692, file: !102, line: 283, baseType: !30, size: 8, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !102, line: 283, baseType: !30, size: 8, offset: 72)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !692, file: !102, line: 283, baseType: !37, size: 16, offset: 80)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !102, line: 283, baseType: !30, size: 8, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !692, file: !102, line: 283, baseType: !30, size: 8, offset: 104)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !692, file: !102, line: 284, baseType: !30, size: 8, offset: 112)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !692, file: !102, line: 285, baseType: !702, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !24, line: 1093, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!23, !25, !518, !25, !706, !22, !22}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !692, file: !102, line: 286, baseType: !96, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !692, file: !102, line: 287, baseType: !22, size: 64, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !692, file: !102, line: 288, baseType: !22, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !692, file: !102, line: 289, baseType: !711, size: 64, offset: 384)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !24, line: 1126, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!23, !428, !25, !22, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !692, file: !102, line: 290, baseType: !100, size: 64, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !102, line: 291, baseType: !100, size: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !101, file: !102, line: 391, baseType: !719, size: 512)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !102, line: 309, size: 512, elements: !720)
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !719, file: !102, line: 310, baseType: !100, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !719, file: !102, line: 310, baseType: !30, size: 8, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !719, file: !102, line: 310, baseType: !30, size: 8, offset: 72)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !719, file: !102, line: 310, baseType: !37, size: 16, offset: 80)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !719, file: !102, line: 310, baseType: !30, size: 8, offset: 96)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !719, file: !102, line: 310, baseType: !30, size: 8, offset: 104)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !719, file: !102, line: 311, baseType: !30, size: 8, offset: 112)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !719, file: !102, line: 312, baseType: !30, size: 8, offset: 120)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !719, file: !102, line: 313, baseType: !22, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !719, file: !102, line: 314, baseType: !96, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !719, file: !102, line: 315, baseType: !160, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !719, file: !102, line: 316, baseType: !145, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !719, file: !102, line: 317, baseType: !145, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !719, file: !102, line: 318, baseType: !25, size: 32, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !101, file: !102, line: 392, baseType: !736, size: 448)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !102, line: 342, size: 448, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !736, file: !102, line: 343, baseType: !100, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !736, file: !102, line: 343, baseType: !30, size: 8, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !736, file: !102, line: 343, baseType: !30, size: 8, offset: 72)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !736, file: !102, line: 343, baseType: !37, size: 16, offset: 80)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !102, line: 343, baseType: !30, size: 8, offset: 96)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !736, file: !102, line: 343, baseType: !96, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !736, file: !102, line: 344, baseType: !96, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !736, file: !102, line: 345, baseType: !22, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !736, file: !102, line: 346, baseType: !145, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !736, file: !102, line: 347, baseType: !25, size: 32, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !101, file: !102, line: 393, baseType: !749, size: 256)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !102, line: 352, size: 256, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !761}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !102, line: 353, baseType: !100, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !102, line: 353, baseType: !30, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !102, line: 353, baseType: !30, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !102, line: 353, baseType: !37, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !102, line: 353, baseType: !30, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !749, file: !102, line: 353, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !24, line: 1064, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !428, !22}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !749, file: !102, line: 354, baseType: !22, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !101, file: !102, line: 394, baseType: !763, size: 192)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !102, line: 359, size: 192, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !763, file: !102, line: 360, baseType: !100, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !763, file: !102, line: 360, baseType: !30, size: 8, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !102, line: 360, baseType: !30, size: 8, offset: 72)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !763, file: !102, line: 360, baseType: !37, size: 16, offset: 80)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !763, file: !102, line: 360, baseType: !30, size: 8, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !763, file: !102, line: 360, baseType: !100, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !101, file: !102, line: 401, baseType: !97, size: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !93, line: 135, baseType: !30, size: 8, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !93, line: 136, baseType: !30, size: 8, offset: 72)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !93, line: 137, baseType: !37, size: 16, offset: 80)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !93, line: 138, baseType: !776, size: 32, offset: 96)
!776 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !777, line: 328, size: 32, elements: !778)
!777 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !776, file: !777, line: 329, baseType: !25, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !776, file: !777, line: 330, baseType: !289, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !93, line: 139, baseType: !96, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !97, file: !93, line: 140, baseType: !96, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !97, file: !93, line: 141, baseType: !96, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !97, file: !93, line: 142, baseType: !207, size: 16, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !92, file: !93, line: 482, baseType: !91, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !93, line: 483, baseType: !91, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !92, file: !93, line: 484, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !93, line: 497, size: 256, elements: !790)
!790 = !{!791, !792, !793, !794}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !789, file: !93, line: 498, baseType: !788, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !93, line: 499, baseType: !788, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !789, file: !93, line: 500, baseType: !91, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !789, file: !93, line: 501, baseType: !25, size: 32, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !92, file: !93, line: 485, baseType: !796, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !93, line: 466, size: 320, elements: !798)
!798 = !{!799, !804, !805, !806, !807, !808, !809}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !797, file: !93, line: 467, baseType: !800, size: 128)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !93, line: 459, size: 128, elements: !801)
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !800, file: !93, line: 460, baseType: !30, size: 8)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !800, file: !93, line: 461, baseType: !34, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !797, file: !93, line: 468, baseType: !800, size: 128, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !797, file: !93, line: 469, baseType: !37, size: 16, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !797, file: !93, line: 470, baseType: !30, size: 8, offset: 272)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !797, file: !93, line: 471, baseType: !30, size: 8, offset: 280)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !797, file: !93, line: 472, baseType: !30, size: 8, offset: 288)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !797, file: !93, line: 473, baseType: !30, size: 8, offset: 296)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !92, file: !93, line: 486, baseType: !811, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !93, line: 448, size: 192, elements: !813)
!813 = !{!814, !837, !838, !839, !840, !841}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !812, file: !93, line: 449, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !93, line: 438, size: 64, elements: !816)
!816 = !{!817, !818, !831}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !815, file: !93, line: 439, baseType: !96, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !815, file: !93, line: 440, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !93, line: 419, size: 256, elements: !821)
!821 = !{!822, !827, !828, !829, !830}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !820, file: !93, line: 420, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !24, line: 1058, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!25, !428, !25, !22}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !820, file: !93, line: 421, baseType: !22, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !820, file: !93, line: 422, baseType: !96, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !820, file: !93, line: 423, baseType: !30, size: 8, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !820, file: !93, line: 424, baseType: !30, size: 8, offset: 200)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !815, file: !93, line: 441, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !93, line: 429, size: 128, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !833, file: !93, line: 430, baseType: !96, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !93, line: 431, baseType: !832, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !812, file: !93, line: 450, baseType: !796, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !93, line: 451, baseType: !30, size: 8, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !812, file: !93, line: 452, baseType: !30, size: 8, offset: 136)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !812, file: !93, line: 453, baseType: !30, size: 8, offset: 144)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !812, file: !93, line: 454, baseType: !30, size: 8, offset: 152)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !92, file: !93, line: 487, baseType: !34, size: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !92, file: !93, line: 488, baseType: !25, size: 32, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !92, file: !93, line: 489, baseType: !37, size: 16, offset: 480)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !92, file: !93, line: 490, baseType: !37, size: 16, offset: 496)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !92, file: !93, line: 491, baseType: !30, size: 8, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !92, file: !93, line: 492, baseType: !30, size: 8, offset: 520)
!848 = !{!849, !850, !851, !852}
!849 = !DILocalVariable(name: "gpe_block", arg: 1, scope: !88, file: !3, line: 97, type: !91)
!850 = !DILocalVariable(name: "status", scope: !88, file: !3, line: 99, type: !23)
!851 = !DILocalVariable(name: "flags", scope: !88, file: !3, line: 100, type: !42)
!852 = !DILabel(scope: !88, name: "unlock_and_exit", file: !3, line: 151)
!853 = !DILocation(line: 97, column: 66, scope: !88)
!854 = !DILocation(line: 99, column: 2, scope: !88)
!855 = !DILocation(line: 99, column: 14, scope: !88)
!856 = !DILocation(line: 100, column: 2, scope: !88)
!857 = !DILocation(line: 100, column: 17, scope: !88)
!858 = !DILocation(line: 104, column: 11, scope: !88)
!859 = !DILocation(line: 104, column: 9, scope: !88)
!860 = !DILocation(line: 105, column: 6, scope: !861)
!861 = distinct !DILexicalBlock(scope: !88, file: !3, line: 105, column: 6)
!862 = !DILocation(line: 105, column: 6, scope: !88)
!863 = !DILocation(line: 106, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 105, column: 28)
!865 = !DILocation(line: 112, column: 32, scope: !88)
!866 = !DILocation(line: 112, column: 43, scope: !88)
!867 = !DILocation(line: 112, column: 56, scope: !88)
!868 = !DILocation(line: 112, column: 6, scope: !88)
!869 = !DILocation(line: 111, column: 9, scope: !88)
!870 = !DILocation(line: 113, column: 6, scope: !871)
!871 = distinct !DILexicalBlock(scope: !88, file: !3, line: 113, column: 6)
!872 = !DILocation(line: 113, column: 6, scope: !88)
!873 = !DILocation(line: 114, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !3, line: 113, column: 28)
!875 = !DILocation(line: 117, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !88, file: !3, line: 117, column: 6)
!877 = !DILocation(line: 117, column: 18, scope: !876)
!878 = !DILocation(line: 117, column: 27, scope: !876)
!879 = !DILocation(line: 117, column: 31, scope: !876)
!880 = !DILocation(line: 117, column: 42, scope: !876)
!881 = !DILocation(line: 117, column: 6, scope: !88)
!882 = !DILocation(line: 121, column: 37, scope: !883)
!883 = distinct !DILexicalBlock(scope: !876, file: !3, line: 117, column: 48)
!884 = !DILocation(line: 121, column: 48, scope: !883)
!885 = !DILocation(line: 121, column: 12, scope: !883)
!886 = !DILocation(line: 121, column: 10, scope: !883)
!887 = !DILocation(line: 122, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !3, line: 122, column: 7)
!889 = !DILocation(line: 122, column: 7, scope: !883)
!890 = !DILocation(line: 123, column: 4, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 122, column: 29)
!892 = !DILocation(line: 125, column: 2, scope: !883)
!893 = !DILocation(line: 128, column: 32, scope: !894)
!894 = distinct !DILexicalBlock(scope: !876, file: !3, line: 125, column: 9)
!895 = !DILocation(line: 128, column: 11, scope: !894)
!896 = !DILocation(line: 128, column: 9, scope: !894)
!897 = !DILocation(line: 129, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !3, line: 129, column: 7)
!899 = !DILocation(line: 129, column: 18, scope: !898)
!900 = !DILocation(line: 129, column: 7, scope: !894)
!901 = !DILocation(line: 130, column: 32, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !3, line: 129, column: 28)
!903 = !DILocation(line: 130, column: 43, scope: !902)
!904 = !DILocation(line: 130, column: 4, scope: !902)
!905 = !DILocation(line: 130, column: 15, scope: !902)
!906 = !DILocation(line: 130, column: 25, scope: !902)
!907 = !DILocation(line: 130, column: 30, scope: !902)
!908 = !DILocation(line: 131, column: 3, scope: !902)
!909 = !DILocation(line: 133, column: 8, scope: !910)
!910 = distinct !DILexicalBlock(scope: !898, file: !3, line: 131, column: 10)
!911 = !DILocation(line: 133, column: 19, scope: !910)
!912 = !DILocation(line: 132, column: 4, scope: !910)
!913 = !DILocation(line: 132, column: 15, scope: !910)
!914 = !DILocation(line: 132, column: 28, scope: !910)
!915 = !DILocation(line: 132, column: 48, scope: !910)
!916 = !DILocation(line: 136, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !894, file: !3, line: 136, column: 7)
!918 = !DILocation(line: 136, column: 18, scope: !917)
!919 = !DILocation(line: 136, column: 7, scope: !894)
!920 = !DILocation(line: 137, column: 32, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 136, column: 24)
!922 = !DILocation(line: 137, column: 43, scope: !921)
!923 = !DILocation(line: 137, column: 4, scope: !921)
!924 = !DILocation(line: 137, column: 15, scope: !921)
!925 = !DILocation(line: 137, column: 21, scope: !921)
!926 = !DILocation(line: 137, column: 30, scope: !921)
!927 = !DILocation(line: 138, column: 3, scope: !921)
!928 = !DILocation(line: 140, column: 24, scope: !894)
!929 = !DILocation(line: 140, column: 43, scope: !894)
!930 = !DILocation(line: 140, column: 3, scope: !894)
!931 = !DILocation(line: 143, column: 28, scope: !88)
!932 = !DILocation(line: 143, column: 39, scope: !88)
!933 = !DILocation(line: 143, column: 25, scope: !88)
!934 = !DILocation(line: 147, column: 2, scope: !88)
!935 = !DILocation(line: 148, column: 2, scope: !88)
!936 = !DILocation(line: 149, column: 2, scope: !88)
!937 = !DILocation(line: 151, column: 1, scope: !88)
!938 = !DILocation(line: 152, column: 11, scope: !88)
!939 = !DILocation(line: 152, column: 9, scope: !88)
!940 = !DILocation(line: 153, column: 2, scope: !88)
!941 = !DILocation(line: 154, column: 1, scope: !88)
!942 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !943, file: !943, line: 646, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!944 = !DISubroutineType(types: !945)
!945 = !{!23, !946}
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !93, line: 17, baseType: !25)
!947 = !DISubprogram(name: "acpi_hw_disable_gpe_block", scope: !948, file: !948, line: 91, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!949 = !DISubroutineType(types: !950)
!950 = !{!23, !788, !91, !22}
!951 = !DISubprogram(name: "acpi_ev_delete_gpe_xrupt", scope: !952, file: !952, line: 143, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!953 = !DISubroutineType(types: !954)
!954 = !{!23, !788}
!955 = !DISubprogram(name: "acpi_os_acquire_lock", scope: !956, file: !956, line: 93, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!957 = !DISubroutineType(types: !958)
!958 = !{!42, !959}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !961, line: 29, baseType: !962)
!961 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !961, line: 17, size: 32, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !961, line: 18, baseType: !965, size: 32)
!965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !961, line: 18, size: 32, elements: !966)
!966 = !{!967}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !965, file: !961, line: 19, baseType: !968, size: 32)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !969, line: 14, size: 32, elements: !970)
!969 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !968, file: !969, line: 15, baseType: !972, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !973, line: 44, baseType: !974)
!973 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !973, line: 14, size: 32, elements: !975)
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !973, line: 15, baseType: !977, size: 32)
!977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !974, file: !973, line: 15, size: 32, elements: !978)
!978 = !{!979, !985, !990}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !977, file: !973, line: 16, baseType: !980, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 174, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 172, size: 32, elements: !982)
!982 = !{!983}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !981, file: !41, line: 173, baseType: !984, size: 32)
!984 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !973, line: 24, baseType: !986, size: 16)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !973, line: 24, size: 16, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !986, file: !973, line: 25, baseType: !30, size: 8)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !986, file: !973, line: 26, baseType: !30, size: 8, offset: 8)
!990 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !973, line: 28, baseType: !991, size: 32)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !973, line: 28, size: 32, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !991, file: !973, line: 29, baseType: !37, size: 16)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !991, file: !973, line: 30, baseType: !37, size: 16, offset: 16)
!995 = !DISubprogram(name: "acpi_os_release_lock", scope: !956, file: !956, line: 97, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !959, !42}
!998 = distinct !DISubprogram(name: "acpi_os_free", scope: !999, file: !999, line: 60, type: !1000, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!999 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !22}
!1002 = !{!1003}
!1003 = !DILocalVariable(name: "memory", arg: 1, scope: !998, file: !999, line: 60, type: !22)
!1004 = !DILocation(line: 60, column: 39, scope: !998)
!1005 = !DILocation(line: 62, column: 8, scope: !998)
!1006 = !DILocation(line: 62, column: 2, scope: !998)
!1007 = !DILocation(line: 63, column: 1, scope: !998)
!1008 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !943, file: !943, line: 648, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = distinct !DISubprogram(name: "acpi_ev_create_gpe_block", scope: !3, file: !3, line: 296, type: !1010, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1013)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!23, !96, !34, !30, !25, !37, !25, !1012}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!1013 = !{!1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023}
!1014 = !DILocalVariable(name: "gpe_device", arg: 1, scope: !1009, file: !3, line: 296, type: !96)
!1015 = !DILocalVariable(name: "address", arg: 2, scope: !1009, file: !3, line: 297, type: !34)
!1016 = !DILocalVariable(name: "space_id", arg: 3, scope: !1009, file: !3, line: 298, type: !30)
!1017 = !DILocalVariable(name: "register_count", arg: 4, scope: !1009, file: !3, line: 299, type: !25)
!1018 = !DILocalVariable(name: "gpe_block_base_number", arg: 5, scope: !1009, file: !3, line: 300, type: !37)
!1019 = !DILocalVariable(name: "interrupt_number", arg: 6, scope: !1009, file: !3, line: 301, type: !25)
!1020 = !DILocalVariable(name: "return_gpe_block", arg: 7, scope: !1009, file: !3, line: 302, type: !1012)
!1021 = !DILocalVariable(name: "status", scope: !1009, file: !3, line: 304, type: !23)
!1022 = !DILocalVariable(name: "gpe_block", scope: !1009, file: !3, line: 305, type: !91)
!1023 = !DILocalVariable(name: "walk_info", scope: !1009, file: !3, line: 306, type: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_walk_info", file: !93, line: 504, size: 192, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1024, file: !93, line: 505, baseType: !96, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !1024, file: !93, line: 506, baseType: !91, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1024, file: !93, line: 507, baseType: !37, size: 16, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !1024, file: !93, line: 508, baseType: !207, size: 16, offset: 144)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "execute_by_owner_id", scope: !1024, file: !93, line: 509, baseType: !30, size: 8, offset: 160)
!1031 = !DILocation(line: 296, column: 54, scope: !1009)
!1032 = !DILocation(line: 297, column: 9, scope: !1009)
!1033 = !DILocation(line: 298, column: 8, scope: !1009)
!1034 = !DILocation(line: 299, column: 9, scope: !1009)
!1035 = !DILocation(line: 300, column: 9, scope: !1009)
!1036 = !DILocation(line: 301, column: 9, scope: !1009)
!1037 = !DILocation(line: 302, column: 34, scope: !1009)
!1038 = !DILocation(line: 304, column: 2, scope: !1009)
!1039 = !DILocation(line: 304, column: 14, scope: !1009)
!1040 = !DILocation(line: 305, column: 2, scope: !1009)
!1041 = !DILocation(line: 305, column: 30, scope: !1009)
!1042 = !DILocation(line: 306, column: 2, scope: !1009)
!1043 = !DILocation(line: 306, column: 28, scope: !1009)
!1044 = !DILocation(line: 310, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 310, column: 6)
!1046 = !DILocation(line: 310, column: 6, scope: !1009)
!1047 = !DILocation(line: 311, column: 3, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 310, column: 23)
!1049 = !DILocation(line: 316, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 316, column: 6)
!1051 = !DILocation(line: 316, column: 16, scope: !1050)
!1052 = !DILocation(line: 316, column: 49, scope: !1050)
!1053 = !DILocation(line: 317, column: 7, scope: !1050)
!1054 = !DILocation(line: 317, column: 16, scope: !1050)
!1055 = !DILocation(line: 316, column: 6, scope: !1009)
!1056 = !DILocation(line: 318, column: 3, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 317, column: 46)
!1058 = !DILocation(line: 320, column: 3, scope: !1057)
!1059 = !DILocation(line: 323, column: 6, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 323, column: 6)
!1061 = !DILocation(line: 323, column: 15, scope: !1060)
!1062 = !DILocation(line: 323, column: 6, scope: !1009)
!1063 = !DILocation(line: 324, column: 38, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 323, column: 44)
!1065 = !DILocation(line: 326, column: 10, scope: !1064)
!1066 = !DILocation(line: 324, column: 12, scope: !1064)
!1067 = !DILocation(line: 324, column: 10, scope: !1064)
!1068 = !DILocation(line: 327, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 327, column: 7)
!1070 = !DILocation(line: 327, column: 7, scope: !1064)
!1071 = !DILocation(line: 328, column: 4, scope: !1069)
!1072 = !DILocation(line: 329, column: 2, scope: !1064)
!1073 = !DILocation(line: 333, column: 14, scope: !1009)
!1074 = !DILocation(line: 333, column: 12, scope: !1009)
!1075 = !DILocation(line: 334, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 334, column: 6)
!1077 = !DILocation(line: 334, column: 6, scope: !1009)
!1078 = !DILocation(line: 335, column: 3, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 334, column: 18)
!1080 = !DILocation(line: 340, column: 23, scope: !1009)
!1081 = !DILocation(line: 340, column: 2, scope: !1009)
!1082 = !DILocation(line: 340, column: 13, scope: !1009)
!1083 = !DILocation(line: 340, column: 21, scope: !1009)
!1084 = !DILocation(line: 341, column: 24, scope: !1009)
!1085 = !DILocation(line: 341, column: 2, scope: !1009)
!1086 = !DILocation(line: 341, column: 13, scope: !1009)
!1087 = !DILocation(line: 341, column: 22, scope: !1009)
!1088 = !DILocation(line: 342, column: 20, scope: !1009)
!1089 = !DILocation(line: 342, column: 2, scope: !1009)
!1090 = !DILocation(line: 342, column: 13, scope: !1009)
!1091 = !DILocation(line: 342, column: 18, scope: !1009)
!1092 = !DILocation(line: 343, column: 31, scope: !1009)
!1093 = !DILocation(line: 343, column: 46, scope: !1009)
!1094 = !DILocation(line: 343, column: 25, scope: !1009)
!1095 = !DILocation(line: 343, column: 2, scope: !1009)
!1096 = !DILocation(line: 343, column: 13, scope: !1009)
!1097 = !DILocation(line: 343, column: 23, scope: !1009)
!1098 = !DILocation(line: 344, column: 2, scope: !1009)
!1099 = !DILocation(line: 344, column: 13, scope: !1009)
!1100 = !DILocation(line: 344, column: 25, scope: !1009)
!1101 = !DILocation(line: 345, column: 30, scope: !1009)
!1102 = !DILocation(line: 345, column: 2, scope: !1009)
!1103 = !DILocation(line: 345, column: 13, scope: !1009)
!1104 = !DILocation(line: 345, column: 28, scope: !1009)
!1105 = !DILocation(line: 346, column: 33, scope: !1009)
!1106 = !DILocation(line: 346, column: 2, scope: !1009)
!1107 = !DILocation(line: 346, column: 13, scope: !1009)
!1108 = !DILocation(line: 346, column: 31, scope: !1009)
!1109 = !DILocation(line: 352, column: 42, scope: !1009)
!1110 = !DILocation(line: 352, column: 11, scope: !1009)
!1111 = !DILocation(line: 352, column: 9, scope: !1009)
!1112 = !DILocation(line: 353, column: 6, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 353, column: 6)
!1114 = !DILocation(line: 353, column: 6, scope: !1009)
!1115 = !DILocation(line: 354, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 353, column: 28)
!1117 = !DILocation(line: 355, column: 3, scope: !1116)
!1118 = !DILocation(line: 360, column: 37, scope: !1009)
!1119 = !DILocation(line: 360, column: 48, scope: !1009)
!1120 = !DILocation(line: 360, column: 11, scope: !1009)
!1121 = !DILocation(line: 360, column: 9, scope: !1009)
!1122 = !DILocation(line: 361, column: 6, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 361, column: 6)
!1124 = !DILocation(line: 361, column: 6, scope: !1009)
!1125 = !DILocation(line: 362, column: 3, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 361, column: 28)
!1127 = !DILocation(line: 363, column: 3, scope: !1126)
!1128 = !DILocation(line: 364, column: 3, scope: !1126)
!1129 = !DILocation(line: 365, column: 3, scope: !1126)
!1130 = !DILocation(line: 368, column: 32, scope: !1009)
!1131 = !DILocation(line: 372, column: 24, scope: !1009)
!1132 = !DILocation(line: 372, column: 12, scope: !1009)
!1133 = !DILocation(line: 372, column: 22, scope: !1009)
!1134 = !DILocation(line: 373, column: 25, scope: !1009)
!1135 = !DILocation(line: 373, column: 12, scope: !1009)
!1136 = !DILocation(line: 373, column: 23, scope: !1009)
!1137 = !DILocation(line: 374, column: 12, scope: !1009)
!1138 = !DILocation(line: 374, column: 32, scope: !1009)
!1139 = !DILocation(line: 376, column: 49, scope: !1009)
!1140 = !DILocation(line: 376, column: 8, scope: !1009)
!1141 = !DILocation(line: 383, column: 6, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 383, column: 6)
!1143 = !DILocation(line: 383, column: 6, scope: !1009)
!1144 = !DILocation(line: 384, column: 25, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 383, column: 24)
!1146 = !DILocation(line: 384, column: 5, scope: !1145)
!1147 = !DILocation(line: 384, column: 23, scope: !1145)
!1148 = !DILocation(line: 385, column: 2, scope: !1145)
!1149 = !DILocation(line: 399, column: 28, scope: !1009)
!1150 = !DILocation(line: 399, column: 39, scope: !1009)
!1151 = !DILocation(line: 399, column: 25, scope: !1009)
!1152 = !DILocation(line: 400, column: 2, scope: !1009)
!1153 = !DILocation(line: 401, column: 1, scope: !1009)
!1154 = !DISubprogram(name: "acpi_error", scope: !1155, file: !1155, line: 901, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1158, !25, !1158, null}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1159 = !DISubprogram(name: "acpi_hw_validate_io_block", scope: !948, file: !948, line: 76, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!23, !34, !25, !25}
!1162 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !999, file: !999, line: 55, type: !1163, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1165)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!22, !33}
!1165 = !{!1166, !1167, !1169, !1172, !1173, !1176}
!1166 = !DILocalVariable(name: "size", arg: 1, scope: !1162, file: !999, line: 55, type: !33)
!1167 = !DILocalVariable(name: "_flags", scope: !1168, file: !999, line: 57, type: !42)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !999, line: 57, column: 23)
!1169 = !DILocalVariable(name: "__dummy", scope: !1170, file: !999, line: 57, type: !42)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !999, line: 57, column: 23)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !999, line: 57, column: 23)
!1172 = !DILocalVariable(name: "__dummy2", scope: !1170, file: !999, line: 57, type: !42)
!1173 = !DILocalVariable(name: "__dummy", scope: !1174, file: !999, line: 57, type: !42)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !999, line: 57, column: 23)
!1175 = distinct !DILexicalBlock(scope: !1168, file: !999, line: 57, column: 23)
!1176 = !DILocalVariable(name: "__dummy2", scope: !1174, file: !999, line: 57, type: !42)
!1177 = !DILocation(line: 55, column: 55, scope: !1162)
!1178 = !DILocation(line: 57, column: 17, scope: !1162)
!1179 = !DILocation(line: 57, column: 23, scope: !1168)
!1180 = !DILocation(line: 57, column: 23, scope: !1170)
!1181 = !DILocation(line: 57, column: 23, scope: !1171)
!1182 = !DILocation(line: 57, column: 23, scope: !1174)
!1183 = !DILocation(line: 57, column: 23, scope: !1175)
!1184 = !DILocation(line: 57, column: 23, scope: !1162)
!1185 = !DILocation(line: 57, column: 9, scope: !1162)
!1186 = !DILocation(line: 57, column: 2, scope: !1162)
!1187 = distinct !DISubprogram(name: "acpi_ev_create_gpe_info_blocks", scope: !3, file: !3, line: 169, type: !89, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1189 = !DILocalVariable(name: "gpe_block", arg: 1, scope: !1187, file: !3, line: 169, type: !91)
!1190 = !DILocalVariable(name: "gpe_register_info", scope: !1187, file: !3, line: 171, type: !796)
!1191 = !DILocalVariable(name: "gpe_event_info", scope: !1187, file: !3, line: 172, type: !811)
!1192 = !DILocalVariable(name: "this_event", scope: !1187, file: !3, line: 173, type: !811)
!1193 = !DILocalVariable(name: "this_register", scope: !1187, file: !3, line: 174, type: !796)
!1194 = !DILocalVariable(name: "i", scope: !1187, file: !3, line: 175, type: !25)
!1195 = !DILocalVariable(name: "j", scope: !1187, file: !3, line: 176, type: !25)
!1196 = !DILocalVariable(name: "status", scope: !1187, file: !3, line: 177, type: !23)
!1197 = !DILabel(scope: !1187, name: "error_exit", file: !3, line: 265)
!1198 = !DILocation(line: 169, column: 60, scope: !1187)
!1199 = !DILocation(line: 171, column: 2, scope: !1187)
!1200 = !DILocation(line: 171, column: 33, scope: !1187)
!1201 = !DILocation(line: 172, column: 2, scope: !1187)
!1202 = !DILocation(line: 172, column: 30, scope: !1187)
!1203 = !DILocation(line: 173, column: 2, scope: !1187)
!1204 = !DILocation(line: 173, column: 30, scope: !1187)
!1205 = !DILocation(line: 174, column: 2, scope: !1187)
!1206 = !DILocation(line: 174, column: 33, scope: !1187)
!1207 = !DILocation(line: 175, column: 2, scope: !1187)
!1208 = !DILocation(line: 175, column: 6, scope: !1187)
!1209 = !DILocation(line: 176, column: 2, scope: !1187)
!1210 = !DILocation(line: 176, column: 6, scope: !1187)
!1211 = !DILocation(line: 177, column: 2, scope: !1187)
!1212 = !DILocation(line: 177, column: 14, scope: !1187)
!1213 = !DILocation(line: 183, column: 22, scope: !1187)
!1214 = !DILocation(line: 183, column: 20, scope: !1187)
!1215 = !DILocation(line: 187, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 187, column: 6)
!1217 = !DILocation(line: 187, column: 6, scope: !1187)
!1218 = !DILocation(line: 188, column: 3, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 187, column: 26)
!1220 = !DILocation(line: 190, column: 3, scope: !1219)
!1221 = !DILocation(line: 197, column: 19, scope: !1187)
!1222 = !DILocation(line: 197, column: 17, scope: !1187)
!1223 = !DILocation(line: 200, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 200, column: 6)
!1225 = !DILocation(line: 200, column: 6, scope: !1187)
!1226 = !DILocation(line: 201, column: 3, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 200, column: 23)
!1228 = !DILocation(line: 203, column: 10, scope: !1227)
!1229 = !DILocation(line: 204, column: 3, scope: !1227)
!1230 = !DILocation(line: 209, column: 29, scope: !1187)
!1231 = !DILocation(line: 209, column: 2, scope: !1187)
!1232 = !DILocation(line: 209, column: 13, scope: !1187)
!1233 = !DILocation(line: 209, column: 27, scope: !1187)
!1234 = !DILocation(line: 210, column: 26, scope: !1187)
!1235 = !DILocation(line: 210, column: 2, scope: !1187)
!1236 = !DILocation(line: 210, column: 13, scope: !1187)
!1237 = !DILocation(line: 210, column: 24, scope: !1187)
!1238 = !DILocation(line: 218, column: 18, scope: !1187)
!1239 = !DILocation(line: 218, column: 16, scope: !1187)
!1240 = !DILocation(line: 219, column: 15, scope: !1187)
!1241 = !DILocation(line: 219, column: 13, scope: !1187)
!1242 = !DILocation(line: 221, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 221, column: 2)
!1244 = !DILocation(line: 221, column: 7, scope: !1243)
!1245 = !DILocation(line: 221, column: 14, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 221, column: 2)
!1247 = !DILocation(line: 221, column: 18, scope: !1246)
!1248 = !DILocation(line: 221, column: 29, scope: !1246)
!1249 = !DILocation(line: 221, column: 16, scope: !1246)
!1250 = !DILocation(line: 221, column: 2, scope: !1243)
!1251 = !DILocation(line: 226, column: 8, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 221, column: 50)
!1253 = !DILocation(line: 226, column: 19, scope: !1252)
!1254 = !DILocation(line: 227, column: 9, scope: !1252)
!1255 = !DILocation(line: 227, column: 11, scope: !1252)
!1256 = !DILocation(line: 226, column: 37, scope: !1252)
!1257 = !DILocation(line: 225, column: 36, scope: !1252)
!1258 = !DILocation(line: 225, column: 3, scope: !1252)
!1259 = !DILocation(line: 225, column: 18, scope: !1252)
!1260 = !DILocation(line: 225, column: 34, scope: !1252)
!1261 = !DILocation(line: 229, column: 43, scope: !1252)
!1262 = !DILocation(line: 229, column: 54, scope: !1252)
!1263 = !DILocation(line: 229, column: 64, scope: !1252)
!1264 = !DILocation(line: 229, column: 62, scope: !1252)
!1265 = !DILocation(line: 229, column: 3, scope: !1252)
!1266 = !DILocation(line: 229, column: 18, scope: !1252)
!1267 = !DILocation(line: 229, column: 33, scope: !1252)
!1268 = !DILocation(line: 229, column: 41, scope: !1252)
!1269 = !DILocation(line: 232, column: 7, scope: !1252)
!1270 = !DILocation(line: 232, column: 18, scope: !1252)
!1271 = !DILocation(line: 232, column: 28, scope: !1252)
!1272 = !DILocation(line: 232, column: 26, scope: !1252)
!1273 = !DILocation(line: 232, column: 32, scope: !1252)
!1274 = !DILocation(line: 232, column: 43, scope: !1252)
!1275 = !DILocation(line: 232, column: 30, scope: !1252)
!1276 = !DILocation(line: 231, column: 3, scope: !1252)
!1277 = !DILocation(line: 231, column: 18, scope: !1252)
!1278 = !DILocation(line: 231, column: 33, scope: !1252)
!1279 = !DILocation(line: 231, column: 41, scope: !1252)
!1280 = !DILocation(line: 234, column: 44, scope: !1252)
!1281 = !DILocation(line: 234, column: 55, scope: !1252)
!1282 = !DILocation(line: 234, column: 3, scope: !1252)
!1283 = !DILocation(line: 234, column: 18, scope: !1252)
!1284 = !DILocation(line: 234, column: 33, scope: !1252)
!1285 = !DILocation(line: 234, column: 42, scope: !1252)
!1286 = !DILocation(line: 235, column: 44, scope: !1252)
!1287 = !DILocation(line: 235, column: 55, scope: !1252)
!1288 = !DILocation(line: 235, column: 3, scope: !1252)
!1289 = !DILocation(line: 235, column: 18, scope: !1252)
!1290 = !DILocation(line: 235, column: 33, scope: !1252)
!1291 = !DILocation(line: 235, column: 42, scope: !1252)
!1292 = !DILocation(line: 239, column: 10, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 239, column: 3)
!1294 = !DILocation(line: 239, column: 8, scope: !1293)
!1295 = !DILocation(line: 239, column: 15, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 239, column: 3)
!1297 = !DILocation(line: 239, column: 17, scope: !1296)
!1298 = !DILocation(line: 239, column: 3, scope: !1293)
!1299 = !DILocation(line: 241, column: 14, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 239, column: 49)
!1301 = !DILocation(line: 241, column: 29, scope: !1300)
!1302 = !DILocation(line: 241, column: 47, scope: !1300)
!1303 = !DILocation(line: 241, column: 45, scope: !1300)
!1304 = !DILocation(line: 241, column: 8, scope: !1300)
!1305 = !DILocation(line: 240, column: 4, scope: !1300)
!1306 = !DILocation(line: 240, column: 16, scope: !1300)
!1307 = !DILocation(line: 240, column: 27, scope: !1300)
!1308 = !DILocation(line: 242, column: 32, scope: !1300)
!1309 = !DILocation(line: 242, column: 4, scope: !1300)
!1310 = !DILocation(line: 242, column: 16, scope: !1300)
!1311 = !DILocation(line: 242, column: 30, scope: !1300)
!1312 = !DILocation(line: 243, column: 14, scope: !1300)
!1313 = !DILocation(line: 244, column: 3, scope: !1300)
!1314 = !DILocation(line: 239, column: 45, scope: !1296)
!1315 = !DILocation(line: 239, column: 3, scope: !1296)
!1316 = distinct !{!1316, !1298, !1317, !1318, !1319}
!1317 = !DILocation(line: 244, column: 3, scope: !1293)
!1318 = !{!"llvm.loop.mustprogress"}
!1319 = !{!"llvm.loop.unroll.disable"}
!1320 = !DILocation(line: 248, column: 37, scope: !1252)
!1321 = !DILocation(line: 248, column: 52, scope: !1252)
!1322 = !DILocation(line: 248, column: 12, scope: !1252)
!1323 = !DILocation(line: 248, column: 10, scope: !1252)
!1324 = !DILocation(line: 249, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 249, column: 7)
!1326 = !DILocation(line: 249, column: 7, scope: !1252)
!1327 = !DILocation(line: 250, column: 4, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 249, column: 29)
!1329 = !DILocation(line: 255, column: 37, scope: !1252)
!1330 = !DILocation(line: 255, column: 52, scope: !1252)
!1331 = !DILocation(line: 255, column: 12, scope: !1252)
!1332 = !DILocation(line: 255, column: 10, scope: !1252)
!1333 = !DILocation(line: 256, column: 7, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 256, column: 7)
!1335 = !DILocation(line: 256, column: 7, scope: !1252)
!1336 = !DILocation(line: 257, column: 4, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 256, column: 29)
!1338 = !DILocation(line: 260, column: 16, scope: !1252)
!1339 = !DILocation(line: 261, column: 2, scope: !1252)
!1340 = !DILocation(line: 221, column: 46, scope: !1246)
!1341 = !DILocation(line: 221, column: 2, scope: !1246)
!1342 = distinct !{!1342, !1250, !1343, !1318, !1319}
!1343 = !DILocation(line: 261, column: 2, scope: !1243)
!1344 = !DILocation(line: 263, column: 2, scope: !1187)
!1345 = !DILocation(line: 265, column: 1, scope: !1187)
!1346 = !DILocation(line: 266, column: 6, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 266, column: 6)
!1348 = !DILocation(line: 266, column: 6, scope: !1187)
!1349 = !DILocation(line: 267, column: 3, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 266, column: 25)
!1351 = !DILocation(line: 268, column: 2, scope: !1350)
!1352 = !DILocation(line: 269, column: 6, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 269, column: 6)
!1354 = !DILocation(line: 269, column: 6, scope: !1187)
!1355 = !DILocation(line: 270, column: 3, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 269, column: 22)
!1357 = !DILocation(line: 271, column: 2, scope: !1356)
!1358 = !DILocation(line: 273, column: 2, scope: !1187)
!1359 = !DILocation(line: 274, column: 1, scope: !1187)
!1360 = distinct !DISubprogram(name: "acpi_ev_install_gpe_block", scope: !3, file: !3, line: 41, type: !1361, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!23, !91, !25}
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1364 = !DILocalVariable(name: "gpe_block", arg: 1, scope: !1360, file: !3, line: 41, type: !91)
!1365 = !DILocalVariable(name: "interrupt_number", arg: 2, scope: !1360, file: !3, line: 42, type: !25)
!1366 = !DILocalVariable(name: "next_gpe_block", scope: !1360, file: !3, line: 44, type: !91)
!1367 = !DILocalVariable(name: "gpe_xrupt_block", scope: !1360, file: !3, line: 45, type: !788)
!1368 = !DILocalVariable(name: "status", scope: !1360, file: !3, line: 46, type: !23)
!1369 = !DILocalVariable(name: "flags", scope: !1360, file: !3, line: 47, type: !42)
!1370 = !DILabel(scope: !1360, name: "unlock_and_exit", file: !3, line: 80)
!1371 = !DILocation(line: 41, column: 55, scope: !1360)
!1372 = !DILocation(line: 42, column: 10, scope: !1360)
!1373 = !DILocation(line: 44, column: 2, scope: !1360)
!1374 = !DILocation(line: 44, column: 30, scope: !1360)
!1375 = !DILocation(line: 45, column: 2, scope: !1360)
!1376 = !DILocation(line: 45, column: 30, scope: !1360)
!1377 = !DILocation(line: 46, column: 2, scope: !1360)
!1378 = !DILocation(line: 46, column: 14, scope: !1360)
!1379 = !DILocation(line: 47, column: 2, scope: !1360)
!1380 = !DILocation(line: 47, column: 17, scope: !1360)
!1381 = !DILocation(line: 51, column: 11, scope: !1360)
!1382 = !DILocation(line: 51, column: 9, scope: !1360)
!1383 = !DILocation(line: 52, column: 6, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 52, column: 6)
!1385 = !DILocation(line: 52, column: 6, scope: !1360)
!1386 = !DILocation(line: 53, column: 3, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 52, column: 28)
!1388 = !DILocation(line: 57, column: 34, scope: !1360)
!1389 = !DILocation(line: 57, column: 6, scope: !1360)
!1390 = !DILocation(line: 56, column: 9, scope: !1360)
!1391 = !DILocation(line: 58, column: 6, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 58, column: 6)
!1393 = !DILocation(line: 58, column: 6, scope: !1360)
!1394 = !DILocation(line: 59, column: 3, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 58, column: 28)
!1396 = !DILocation(line: 64, column: 31, scope: !1360)
!1397 = !DILocation(line: 64, column: 10, scope: !1360)
!1398 = !DILocation(line: 64, column: 8, scope: !1360)
!1399 = !DILocation(line: 65, column: 6, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 65, column: 6)
!1401 = !DILocation(line: 65, column: 23, scope: !1400)
!1402 = !DILocation(line: 65, column: 6, scope: !1360)
!1403 = !DILocation(line: 66, column: 20, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 65, column: 44)
!1405 = !DILocation(line: 66, column: 37, scope: !1404)
!1406 = !DILocation(line: 66, column: 18, scope: !1404)
!1407 = !DILocation(line: 67, column: 3, scope: !1404)
!1408 = !DILocation(line: 67, column: 10, scope: !1404)
!1409 = !DILocation(line: 67, column: 26, scope: !1404)
!1410 = !DILocation(line: 68, column: 21, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 67, column: 32)
!1412 = !DILocation(line: 68, column: 37, scope: !1411)
!1413 = !DILocation(line: 68, column: 19, scope: !1411)
!1414 = distinct !{!1414, !1407, !1415, !1318, !1319}
!1415 = !DILocation(line: 69, column: 3, scope: !1404)
!1416 = !DILocation(line: 71, column: 26, scope: !1404)
!1417 = !DILocation(line: 71, column: 3, scope: !1404)
!1418 = !DILocation(line: 71, column: 19, scope: !1404)
!1419 = !DILocation(line: 71, column: 24, scope: !1404)
!1420 = !DILocation(line: 72, column: 25, scope: !1404)
!1421 = !DILocation(line: 72, column: 3, scope: !1404)
!1422 = !DILocation(line: 72, column: 14, scope: !1404)
!1423 = !DILocation(line: 72, column: 23, scope: !1404)
!1424 = !DILocation(line: 73, column: 2, scope: !1404)
!1425 = !DILocation(line: 74, column: 42, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 73, column: 9)
!1427 = !DILocation(line: 74, column: 3, scope: !1426)
!1428 = !DILocation(line: 74, column: 20, scope: !1426)
!1429 = !DILocation(line: 74, column: 40, scope: !1426)
!1430 = !DILocation(line: 77, column: 27, scope: !1360)
!1431 = !DILocation(line: 77, column: 2, scope: !1360)
!1432 = !DILocation(line: 77, column: 13, scope: !1360)
!1433 = !DILocation(line: 77, column: 25, scope: !1360)
!1434 = !DILocation(line: 78, column: 23, scope: !1360)
!1435 = !DILocation(line: 78, column: 42, scope: !1360)
!1436 = !DILocation(line: 78, column: 2, scope: !1360)
!1437 = !DILocation(line: 80, column: 1, scope: !1360)
!1438 = !DILocation(line: 81, column: 8, scope: !1360)
!1439 = !DILocation(line: 82, column: 2, scope: !1360)
!1440 = !DILocation(line: 83, column: 1, scope: !1360)
!1441 = !DISubprogram(name: "acpi_ns_walk_namespace", scope: !1442, file: !1442, line: 77, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1442 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!23, !1445, !428, !25, !25, !1446, !1446, !22, !715}
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !24, line: 644, baseType: !25)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !24, line: 1135, baseType: !712)
!1447 = distinct !DISubprogram(name: "acpi_ev_initialize_gpe_block", scope: !3, file: !3, line: 418, type: !949, scopeLine: 421, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459}
!1449 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1447, file: !3, line: 418, type: !788)
!1450 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1447, file: !3, line: 419, type: !91)
!1451 = !DILocalVariable(name: "context", arg: 3, scope: !1447, file: !3, line: 420, type: !22)
!1452 = !DILocalVariable(name: "status", scope: !1447, file: !3, line: 422, type: !23)
!1453 = !DILocalVariable(name: "gpe_event_info", scope: !1447, file: !3, line: 423, type: !811)
!1454 = !DILocalVariable(name: "gpe_enabled_count", scope: !1447, file: !3, line: 424, type: !25)
!1455 = !DILocalVariable(name: "gpe_index", scope: !1447, file: !3, line: 425, type: !25)
!1456 = !DILocalVariable(name: "i", scope: !1447, file: !3, line: 426, type: !25)
!1457 = !DILocalVariable(name: "j", scope: !1447, file: !3, line: 427, type: !25)
!1458 = !DILocalVariable(name: "is_polling_needed", scope: !1447, file: !3, line: 428, type: !145)
!1459 = !DILocalVariable(name: "gpe_number", scope: !1447, file: !3, line: 429, type: !25)
!1460 = !DILocation(line: 418, column: 58, scope: !1447)
!1461 = !DILocation(line: 419, column: 37, scope: !1447)
!1462 = !DILocation(line: 420, column: 15, scope: !1447)
!1463 = !DILocation(line: 422, column: 2, scope: !1447)
!1464 = !DILocation(line: 422, column: 14, scope: !1447)
!1465 = !DILocation(line: 423, column: 2, scope: !1447)
!1466 = !DILocation(line: 423, column: 30, scope: !1447)
!1467 = !DILocation(line: 424, column: 2, scope: !1447)
!1468 = !DILocation(line: 424, column: 6, scope: !1447)
!1469 = !DILocation(line: 425, column: 2, scope: !1447)
!1470 = !DILocation(line: 425, column: 6, scope: !1447)
!1471 = !DILocation(line: 426, column: 2, scope: !1447)
!1472 = !DILocation(line: 426, column: 6, scope: !1447)
!1473 = !DILocation(line: 427, column: 2, scope: !1447)
!1474 = !DILocation(line: 427, column: 6, scope: !1447)
!1475 = !DILocation(line: 428, column: 2, scope: !1447)
!1476 = !DILocation(line: 428, column: 6, scope: !1447)
!1477 = !DILocation(line: 428, column: 26, scope: !1447)
!1478 = !DILocation(line: 429, column: 2, scope: !1447)
!1479 = !DILocation(line: 437, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 437, column: 6)
!1481 = !DILocation(line: 437, column: 17, scope: !1480)
!1482 = !DILocation(line: 437, column: 20, scope: !1480)
!1483 = !DILocation(line: 437, column: 31, scope: !1480)
!1484 = !DILocation(line: 437, column: 6, scope: !1447)
!1485 = !DILocation(line: 438, column: 3, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1480, file: !3, line: 437, column: 44)
!1487 = !DILocation(line: 446, column: 20, scope: !1447)
!1488 = !DILocation(line: 448, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 448, column: 2)
!1490 = !DILocation(line: 448, column: 7, scope: !1489)
!1491 = !DILocation(line: 448, column: 14, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 448, column: 2)
!1493 = !DILocation(line: 448, column: 18, scope: !1492)
!1494 = !DILocation(line: 448, column: 29, scope: !1492)
!1495 = !DILocation(line: 448, column: 16, scope: !1492)
!1496 = !DILocation(line: 448, column: 2, scope: !1489)
!1497 = !DILocation(line: 449, column: 10, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 449, column: 3)
!1499 = distinct !DILexicalBlock(scope: !1492, file: !3, line: 448, column: 50)
!1500 = !DILocation(line: 449, column: 8, scope: !1498)
!1501 = !DILocation(line: 449, column: 15, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 449, column: 3)
!1503 = !DILocation(line: 449, column: 17, scope: !1502)
!1504 = !DILocation(line: 449, column: 3, scope: !1498)
!1505 = !DILocation(line: 453, column: 17, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 449, column: 49)
!1507 = !DILocation(line: 453, column: 19, scope: !1506)
!1508 = !DILocation(line: 453, column: 48, scope: !1506)
!1509 = !DILocation(line: 453, column: 46, scope: !1506)
!1510 = !DILocation(line: 453, column: 14, scope: !1506)
!1511 = !DILocation(line: 454, column: 22, scope: !1506)
!1512 = !DILocation(line: 454, column: 33, scope: !1506)
!1513 = !DILocation(line: 454, column: 44, scope: !1506)
!1514 = !DILocation(line: 454, column: 19, scope: !1506)
!1515 = !DILocation(line: 455, column: 4, scope: !1506)
!1516 = !DILocation(line: 458, column: 4, scope: !1506)
!1517 = !DILocation(line: 458, column: 20, scope: !1506)
!1518 = !DILocation(line: 458, column: 26, scope: !1506)
!1519 = !DILocation(line: 464, column: 9, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 464, column: 8)
!1521 = !DILocation(line: 464, column: 55, scope: !1520)
!1522 = !DILocation(line: 466, column: 8, scope: !1520)
!1523 = !DILocation(line: 466, column: 12, scope: !1520)
!1524 = !DILocation(line: 466, column: 28, scope: !1520)
!1525 = !DILocation(line: 466, column: 34, scope: !1520)
!1526 = !DILocation(line: 464, column: 8, scope: !1506)
!1527 = !DILocation(line: 467, column: 5, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 466, column: 56)
!1529 = !DILocation(line: 470, column: 39, scope: !1506)
!1530 = !DILocation(line: 470, column: 13, scope: !1506)
!1531 = !DILocation(line: 470, column: 11, scope: !1506)
!1532 = !DILocation(line: 471, column: 8, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 471, column: 8)
!1534 = !DILocation(line: 471, column: 8, scope: !1506)
!1535 = !DILocation(line: 472, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 471, column: 30)
!1537 = !DILocation(line: 475, column: 5, scope: !1536)
!1538 = !DILocation(line: 478, column: 4, scope: !1506)
!1539 = !DILocation(line: 478, column: 20, scope: !1506)
!1540 = !DILocation(line: 478, column: 26, scope: !1506)
!1541 = !DILocation(line: 480, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 480, column: 8)
!1543 = !DILocation(line: 480, column: 26, scope: !1542)
!1544 = !DILocation(line: 481, column: 8, scope: !1542)
!1545 = !DILocation(line: 480, column: 8, scope: !1506)
!1546 = !DILocation(line: 482, column: 6, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 481, column: 52)
!1548 = !DILocation(line: 482, column: 24, scope: !1547)
!1549 = !DILocation(line: 483, column: 4, scope: !1547)
!1550 = !DILocation(line: 485, column: 21, scope: !1506)
!1551 = !DILocation(line: 486, column: 3, scope: !1506)
!1552 = !DILocation(line: 449, column: 45, scope: !1502)
!1553 = !DILocation(line: 449, column: 3, scope: !1502)
!1554 = distinct !{!1554, !1504, !1555, !1318, !1319}
!1555 = !DILocation(line: 486, column: 3, scope: !1498)
!1556 = !DILocation(line: 487, column: 2, scope: !1499)
!1557 = !DILocation(line: 448, column: 46, scope: !1492)
!1558 = !DILocation(line: 448, column: 2, scope: !1492)
!1559 = distinct !{!1559, !1496, !1560, !1318, !1319}
!1560 = !DILocation(line: 487, column: 2, scope: !1489)
!1561 = !DILocation(line: 489, column: 6, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 489, column: 6)
!1563 = !DILocation(line: 489, column: 6, scope: !1447)
!1564 = !DILocation(line: 490, column: 3, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 489, column: 25)
!1566 = !DILocation(line: 494, column: 2, scope: !1565)
!1567 = !DILocation(line: 496, column: 2, scope: !1447)
!1568 = !DILocation(line: 496, column: 13, scope: !1447)
!1569 = !DILocation(line: 496, column: 25, scope: !1447)
!1570 = !DILocation(line: 498, column: 2, scope: !1447)
!1571 = !DILocation(line: 499, column: 1, scope: !1447)
!1572 = !DISubprogram(name: "acpi_ev_add_gpe_reference", scope: !952, file: !952, line: 72, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!23, !811, !30}
!1575 = !DISubprogram(name: "acpi_exception", scope: !1155, file: !1155, line: 906, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !1158, !25, !23, !1158, null}
!1578 = !DISubprogram(name: "acpi_info", scope: !1155, file: !1155, line: 917, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1158, null}
!1581 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !1584}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1586 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1587, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1593)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!22, !1589, !40}
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 61, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1591, line: 72, baseType: !1592)
!1591 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1591, line: 16, baseType: !42)
!1593 = !{!1594, !1595}
!1594 = !DILocalVariable(name: "size", arg: 1, scope: !1586, file: !12, line: 719, type: !1589)
!1595 = !DILocalVariable(name: "flags", arg: 2, scope: !1586, file: !12, line: 719, type: !40)
!1596 = !DILocation(line: 719, column: 52, scope: !1586)
!1597 = !DILocation(line: 719, column: 64, scope: !1586)
!1598 = !DILocation(line: 721, column: 17, scope: !1586)
!1599 = !DILocation(line: 721, column: 23, scope: !1586)
!1600 = !DILocation(line: 721, column: 29, scope: !1586)
!1601 = !DILocation(line: 721, column: 9, scope: !1586)
!1602 = !DILocation(line: 721, column: 2, scope: !1586)
!1603 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1604, file: !1604, line: 65, type: !1605, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1604 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!42}
!1607 = !DILocation(line: 67, column: 9, scope: !1603)
!1608 = !DILocation(line: 67, column: 2, scope: !1603)
!1609 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1604, file: !1604, line: 120, type: !1610, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1612)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!984, !42}
!1612 = !{!1613}
!1613 = !DILocalVariable(name: "flags", arg: 1, scope: !1609, file: !1604, line: 120, type: !42)
!1614 = !DILocation(line: 120, column: 67, scope: !1609)
!1615 = !DILocation(line: 122, column: 11, scope: !1609)
!1616 = !DILocation(line: 122, column: 17, scope: !1609)
!1617 = !DILocation(line: 122, column: 9, scope: !1609)
!1618 = !DILocation(line: 122, column: 2, scope: !1609)
!1619 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1587, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DILocalVariable(name: "size", arg: 1, scope: !1619, file: !12, line: 591, type: !1589)
!1622 = !DILocalVariable(name: "flags", arg: 2, scope: !1619, file: !12, line: 591, type: !40)
!1623 = !DILocalVariable(name: "index", scope: !1624, file: !12, line: 594, type: !7)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !12, line: 593, column: 42)
!1625 = distinct !DILexicalBlock(scope: !1619, file: !12, line: 593, column: 6)
!1626 = !DILocation(line: 591, column: 61, scope: !1619)
!1627 = !DILocation(line: 591, column: 73, scope: !1619)
!1628 = !DILocation(line: 593, column: 27, scope: !1625)
!1629 = !DILocation(line: 593, column: 6, scope: !1625)
!1630 = !DILocation(line: 593, column: 33, scope: !1625)
!1631 = !DILocation(line: 593, column: 36, scope: !1625)
!1632 = !DILocation(line: 593, column: 6, scope: !1619)
!1633 = !DILocation(line: 594, column: 3, scope: !1624)
!1634 = !DILocation(line: 594, column: 16, scope: !1624)
!1635 = !DILocation(line: 596, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1624, file: !12, line: 596, column: 7)
!1637 = !DILocation(line: 596, column: 12, scope: !1636)
!1638 = !DILocation(line: 596, column: 7, scope: !1624)
!1639 = !DILocation(line: 597, column: 25, scope: !1636)
!1640 = !DILocation(line: 597, column: 31, scope: !1636)
!1641 = !DILocation(line: 597, column: 11, scope: !1636)
!1642 = !DILocation(line: 597, column: 4, scope: !1636)
!1643 = !DILocation(line: 599, column: 11, scope: !1624)
!1644 = !DILocation(line: 599, column: 9, scope: !1624)
!1645 = !DILocation(line: 601, column: 33, scope: !1624)
!1646 = !DILocation(line: 601, column: 40, scope: !1624)
!1647 = !DILocation(line: 601, column: 20, scope: !1624)
!1648 = !DILocation(line: 601, column: 5, scope: !1624)
!1649 = !DILocation(line: 601, column: 51, scope: !1624)
!1650 = !DILocation(line: 602, column: 5, scope: !1624)
!1651 = !DILocation(line: 602, column: 12, scope: !1624)
!1652 = !DILocation(line: 600, column: 10, scope: !1624)
!1653 = !DILocation(line: 600, column: 3, scope: !1624)
!1654 = !DILocation(line: 603, column: 2, scope: !1625)
!1655 = !DILocation(line: 604, column: 19, scope: !1619)
!1656 = !DILocation(line: 604, column: 25, scope: !1619)
!1657 = !DILocation(line: 604, column: 9, scope: !1619)
!1658 = !DILocation(line: 604, column: 2, scope: !1619)
!1659 = !DILocation(line: 605, column: 1, scope: !1619)
!1660 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1661 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1662, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1666)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!7, !1589, !1664}
!1664 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !1665)
!1665 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1666 = !{!1667, !1668}
!1667 = !DILocalVariable(name: "size", arg: 1, scope: !1661, file: !12, line: 444, type: !1589)
!1668 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1661, file: !12, line: 445, type: !1664)
!1669 = !DILocation(line: 444, column: 60, scope: !1661)
!1670 = !DILocation(line: 445, column: 16, scope: !1661)
!1671 = !DILocation(line: 447, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 447, column: 6)
!1673 = !DILocation(line: 447, column: 6, scope: !1661)
!1674 = !DILocation(line: 448, column: 3, scope: !1672)
!1675 = !DILocation(line: 450, column: 6, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 450, column: 6)
!1677 = !DILocation(line: 450, column: 11, scope: !1676)
!1678 = !DILocation(line: 450, column: 6, scope: !1661)
!1679 = !DILocation(line: 451, column: 3, scope: !1676)
!1680 = !DILocation(line: 453, column: 32, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 453, column: 6)
!1682 = !DILocation(line: 453, column: 37, scope: !1681)
!1683 = !DILocation(line: 453, column: 42, scope: !1681)
!1684 = !DILocation(line: 453, column: 45, scope: !1681)
!1685 = !DILocation(line: 453, column: 50, scope: !1681)
!1686 = !DILocation(line: 453, column: 6, scope: !1661)
!1687 = !DILocation(line: 454, column: 3, scope: !1681)
!1688 = !DILocation(line: 455, column: 32, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 455, column: 6)
!1690 = !DILocation(line: 455, column: 37, scope: !1689)
!1691 = !DILocation(line: 455, column: 43, scope: !1689)
!1692 = !DILocation(line: 455, column: 46, scope: !1689)
!1693 = !DILocation(line: 455, column: 51, scope: !1689)
!1694 = !DILocation(line: 455, column: 6, scope: !1661)
!1695 = !DILocation(line: 456, column: 3, scope: !1689)
!1696 = !DILocation(line: 457, column: 6, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 457, column: 6)
!1698 = !DILocation(line: 457, column: 11, scope: !1697)
!1699 = !DILocation(line: 457, column: 6, scope: !1661)
!1700 = !DILocation(line: 457, column: 26, scope: !1697)
!1701 = !DILocation(line: 458, column: 6, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 458, column: 6)
!1703 = !DILocation(line: 458, column: 11, scope: !1702)
!1704 = !DILocation(line: 458, column: 6, scope: !1661)
!1705 = !DILocation(line: 458, column: 26, scope: !1702)
!1706 = !DILocation(line: 459, column: 6, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 459, column: 6)
!1708 = !DILocation(line: 459, column: 11, scope: !1707)
!1709 = !DILocation(line: 459, column: 6, scope: !1661)
!1710 = !DILocation(line: 459, column: 26, scope: !1707)
!1711 = !DILocation(line: 460, column: 6, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 460, column: 6)
!1713 = !DILocation(line: 460, column: 11, scope: !1712)
!1714 = !DILocation(line: 460, column: 6, scope: !1661)
!1715 = !DILocation(line: 460, column: 26, scope: !1712)
!1716 = !DILocation(line: 461, column: 6, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 461, column: 6)
!1718 = !DILocation(line: 461, column: 11, scope: !1717)
!1719 = !DILocation(line: 461, column: 6, scope: !1661)
!1720 = !DILocation(line: 461, column: 26, scope: !1717)
!1721 = !DILocation(line: 462, column: 6, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 462, column: 6)
!1723 = !DILocation(line: 462, column: 11, scope: !1722)
!1724 = !DILocation(line: 462, column: 6, scope: !1661)
!1725 = !DILocation(line: 462, column: 26, scope: !1722)
!1726 = !DILocation(line: 463, column: 6, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 463, column: 6)
!1728 = !DILocation(line: 463, column: 11, scope: !1727)
!1729 = !DILocation(line: 463, column: 6, scope: !1661)
!1730 = !DILocation(line: 463, column: 26, scope: !1727)
!1731 = !DILocation(line: 464, column: 6, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 464, column: 6)
!1733 = !DILocation(line: 464, column: 11, scope: !1732)
!1734 = !DILocation(line: 464, column: 6, scope: !1661)
!1735 = !DILocation(line: 464, column: 26, scope: !1732)
!1736 = !DILocation(line: 465, column: 6, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 465, column: 6)
!1738 = !DILocation(line: 465, column: 11, scope: !1737)
!1739 = !DILocation(line: 465, column: 6, scope: !1661)
!1740 = !DILocation(line: 465, column: 26, scope: !1737)
!1741 = !DILocation(line: 466, column: 6, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 466, column: 6)
!1743 = !DILocation(line: 466, column: 11, scope: !1742)
!1744 = !DILocation(line: 466, column: 6, scope: !1661)
!1745 = !DILocation(line: 466, column: 26, scope: !1742)
!1746 = !DILocation(line: 467, column: 6, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 467, column: 6)
!1748 = !DILocation(line: 467, column: 11, scope: !1747)
!1749 = !DILocation(line: 467, column: 6, scope: !1661)
!1750 = !DILocation(line: 467, column: 26, scope: !1747)
!1751 = !DILocation(line: 468, column: 6, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 468, column: 6)
!1753 = !DILocation(line: 468, column: 11, scope: !1752)
!1754 = !DILocation(line: 468, column: 6, scope: !1661)
!1755 = !DILocation(line: 468, column: 26, scope: !1752)
!1756 = !DILocation(line: 469, column: 6, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 469, column: 6)
!1758 = !DILocation(line: 469, column: 11, scope: !1757)
!1759 = !DILocation(line: 469, column: 6, scope: !1661)
!1760 = !DILocation(line: 469, column: 26, scope: !1757)
!1761 = !DILocation(line: 470, column: 6, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 470, column: 6)
!1763 = !DILocation(line: 470, column: 11, scope: !1762)
!1764 = !DILocation(line: 470, column: 6, scope: !1661)
!1765 = !DILocation(line: 470, column: 26, scope: !1762)
!1766 = !DILocation(line: 471, column: 6, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 471, column: 6)
!1768 = !DILocation(line: 471, column: 11, scope: !1767)
!1769 = !DILocation(line: 471, column: 6, scope: !1661)
!1770 = !DILocation(line: 471, column: 26, scope: !1767)
!1771 = !DILocation(line: 472, column: 6, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 472, column: 6)
!1773 = !DILocation(line: 472, column: 11, scope: !1772)
!1774 = !DILocation(line: 472, column: 6, scope: !1661)
!1775 = !DILocation(line: 472, column: 26, scope: !1772)
!1776 = !DILocation(line: 473, column: 6, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 473, column: 6)
!1778 = !DILocation(line: 473, column: 11, scope: !1777)
!1779 = !DILocation(line: 473, column: 6, scope: !1661)
!1780 = !DILocation(line: 473, column: 26, scope: !1777)
!1781 = !DILocation(line: 474, column: 6, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 474, column: 6)
!1783 = !DILocation(line: 474, column: 11, scope: !1782)
!1784 = !DILocation(line: 474, column: 6, scope: !1661)
!1785 = !DILocation(line: 474, column: 27, scope: !1782)
!1786 = !DILocation(line: 475, column: 6, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 475, column: 6)
!1788 = !DILocation(line: 475, column: 11, scope: !1787)
!1789 = !DILocation(line: 475, column: 6, scope: !1661)
!1790 = !DILocation(line: 475, column: 32, scope: !1787)
!1791 = !DILocation(line: 477, column: 50, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1661, file: !12, line: 477, column: 6)
!1793 = !{i8 0, i8 2}
!1794 = !{}
!1795 = !DILocation(line: 477, column: 6, scope: !1661)
!1796 = !DILocation(line: 478, column: 3, scope: !1792)
!1797 = !DILocation(line: 478, column: 3, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !12, line: 478, column: 3)
!1799 = distinct !DILexicalBlock(scope: !1792, file: !12, line: 478, column: 3)
!1800 = !{i32 -2143035684}
!1801 = !DILocation(line: 478, column: 3, scope: !1799)
!1802 = !DILocation(line: 480, column: 3, scope: !1792)
!1803 = !DILocation(line: 480, column: 3, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1792, file: !12, line: 480, column: 3)
!1805 = !DILocation(line: 480, column: 3, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1804, file: !12, line: 480, column: 3)
!1807 = !DILocation(line: 480, column: 3, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !12, line: 480, column: 3)
!1809 = !{i64 2151931815, i64 2151931844, i64 2151931890, i64 2151931948, i64 2151932002, i64 2151932056, i64 2151932111, i64 2151932142}
!1810 = !DILocation(line: 483, column: 2, scope: !1661)
!1811 = !DILocation(line: 484, column: 1, scope: !1661)
!1812 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!22, !1815, !40, !1589}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1817, line: 11, flags: DIFlagFwdDecl)
!1817 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1818 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1819, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!11, !40, !42}
!1821 = !{!1822, !1823}
!1822 = !DILocalVariable(name: "flags", arg: 1, scope: !1818, file: !12, line: 401, type: !40)
!1823 = !DILocalVariable(name: "caller", arg: 2, scope: !1818, file: !12, line: 401, type: !42)
!1824 = !DILocation(line: 401, column: 67, scope: !1818)
!1825 = !DILocation(line: 401, column: 88, scope: !1818)
!1826 = !DILocation(line: 407, column: 6, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1818, file: !12, line: 407, column: 6)
!1828 = !DILocation(line: 407, column: 6, scope: !1818)
!1829 = !DILocation(line: 413, column: 3, scope: !1827)
!1830 = !DILocation(line: 423, column: 38, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1818, file: !12, line: 423, column: 6)
!1832 = !DILocation(line: 423, column: 44, scope: !1831)
!1833 = !DILocation(line: 423, column: 6, scope: !1818)
!1834 = !DILocation(line: 424, column: 3, scope: !1831)
!1835 = !DILocation(line: 426, column: 3, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1818, file: !12, line: 425, column: 6)
!1837 = !DILocation(line: 429, column: 1, scope: !1818)
!1838 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1839 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1840, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{null}
!1842 = distinct !DISubprogram(name: "native_save_fl", scope: !1604, file: !1604, line: 17, type: !1605, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1843)
!1843 = !{!1844}
!1844 = !DILocalVariable(name: "flags", scope: !1842, file: !1604, line: 19, type: !42)
!1845 = !DILocation(line: 19, column: 2, scope: !1842)
!1846 = !DILocation(line: 19, column: 16, scope: !1842)
!1847 = !DILocation(line: 26, column: 2, scope: !1842)
!1848 = !{i64 1521734, i64 1521755}
!1849 = !DILocation(line: 32, column: 9, scope: !1842)
!1850 = !DILocation(line: 33, column: 1, scope: !1842)
!1851 = !DILocation(line: 32, column: 2, scope: !1842)
!1852 = !DISubprogram(name: "acpi_hw_gpe_write", scope: !948, file: !948, line: 83, type: !1853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!23, !34, !1855}
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!1856 = !DISubprogram(name: "acpi_ev_get_gpe_xrupt_block", scope: !952, file: !952, line: 140, type: !1857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!23, !25, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
