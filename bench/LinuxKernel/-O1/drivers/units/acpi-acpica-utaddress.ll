; ModuleID = 'drivers/acpi/acpica/utaddress.c'
source_filename = "drivers/acpi/acpica/utaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_address_range = type { ptr, ptr, i64, i64 }

@acpi_gbl_address_range_list = external dso_local global [2 x ptr], align 16
@_acpi_module_name = internal constant [10 x i8] c"utaddress\00", align 1, !dbg !0
@.str = private unnamed_addr constant [90 x i8] c"%s range 0x%8.8X%8.8X-0x%8.8X%8.8X conflicts with OpRegion 0x%8.8X%8.8X-0x%8.8X%8.8X (%s)\00", align 1, !dbg !40
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !46

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_add_address_range(i8 noundef zeroext %space_id, i64 noundef %address, i32 noundef %length, ptr noundef %region_node) #0 align 16 !dbg !64 {
entry:
  %retval = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %region_node.addr = alloca ptr, align 8
  %range_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !831, metadata !DIExpression()), !dbg !843
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !832, metadata !DIExpression()), !dbg !844
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !833, metadata !DIExpression()), !dbg !845
  store ptr %region_node, ptr %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_node.addr, metadata !834, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_info) #12, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %range_info, metadata !835, metadata !DIExpression()), !dbg !848
  %0 = load i8, ptr %space_id.addr, align 1, !dbg !849
  %conv = zext i8 %0 to i32, !dbg !849
  %cmp = icmp ne i32 %conv, 0, !dbg !851
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !852

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !853
  %conv2 = zext i8 %1 to i32, !dbg !853
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !854
  br i1 %cmp3, label %if.then, label %if.end, !dbg !855

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !856

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call ptr @acpi_os_allocate(i64 noundef 32) #13, !dbg !858
  store ptr %call, ptr %range_info, align 8, !dbg !859
  %2 = load ptr, ptr %range_info, align 8, !dbg !860
  %tobool = icmp ne ptr %2, null, !dbg !860
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !862

if.then5:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !863

if.end6:                                          ; preds = %if.end
  %3 = load i64, ptr %address.addr, align 8, !dbg !865
  %4 = load ptr, ptr %range_info, align 8, !dbg !866
  %start_address = getelementptr inbounds %struct.acpi_address_range, ptr %4, i32 0, i32 2, !dbg !867
  store i64 %3, ptr %start_address, align 8, !dbg !868
  %5 = load i64, ptr %address.addr, align 8, !dbg !869
  %6 = load i32, ptr %length.addr, align 4, !dbg !870
  %conv7 = zext i32 %6 to i64, !dbg !870
  %add = add i64 %5, %conv7, !dbg !871
  %sub = sub i64 %add, 1, !dbg !872
  %7 = load ptr, ptr %range_info, align 8, !dbg !873
  %end_address = getelementptr inbounds %struct.acpi_address_range, ptr %7, i32 0, i32 3, !dbg !874
  store i64 %sub, ptr %end_address, align 8, !dbg !875
  %8 = load ptr, ptr %region_node.addr, align 8, !dbg !876
  %9 = load ptr, ptr %range_info, align 8, !dbg !877
  %region_node8 = getelementptr inbounds %struct.acpi_address_range, ptr %9, i32 0, i32 1, !dbg !878
  store ptr %8, ptr %region_node8, align 8, !dbg !879
  %10 = load i8, ptr %space_id.addr, align 1, !dbg !880
  %idxprom = zext i8 %10 to i64, !dbg !881
  %arrayidx = getelementptr [2 x ptr], ptr @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !881
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !881
  %12 = load ptr, ptr %range_info, align 8, !dbg !882
  %next = getelementptr inbounds %struct.acpi_address_range, ptr %12, i32 0, i32 0, !dbg !883
  store ptr %11, ptr %next, align 8, !dbg !884
  %13 = load ptr, ptr %range_info, align 8, !dbg !885
  %14 = load i8, ptr %space_id.addr, align 1, !dbg !886
  %idxprom9 = zext i8 %14 to i64, !dbg !887
  %arrayidx10 = getelementptr [2 x ptr], ptr @acpi_gbl_address_range_list, i64 0, i64 %idxprom9, !dbg !887
  store ptr %13, ptr %arrayidx10, align 8, !dbg !888
  store i32 0, ptr %retval, align 4, !dbg !889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !889

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_info) #12, !dbg !890
  %15 = load i32, ptr %retval, align 4, !dbg !890
  ret i32 %15, !dbg !890
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #3 align 16 !dbg !891 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !896, metadata !DIExpression()), !dbg !907
  %0 = load i64, ptr %size.addr, align 8, !dbg !908
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #12, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !897, metadata !DIExpression()), !dbg !909
  br label %do.body, !dbg !909

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !899, metadata !DIExpression()), !dbg !910
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !902, metadata !DIExpression()), !dbg !910
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !910
  %conv = zext i1 %cmp to i32, !dbg !910
  store i32 1, ptr %tmp, align 4, !dbg !910
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !911
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !911
  %1 = load i32, ptr %tmp, align 4, !dbg !910
  %call = call i64 @arch_local_save_flags() #13, !dbg !911
  store i64 %call, ptr %_flags, align 8, !dbg !911
  br label %do.cond, !dbg !911

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !911

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #12, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !903, metadata !DIExpression()), !dbg !912
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #12, !dbg !912
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !906, metadata !DIExpression()), !dbg !912
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !912
  %conv6 = zext i1 %cmp5 to i32, !dbg !912
  store i32 1, ptr %tmp7, align 4, !dbg !912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #12, !dbg !913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #12, !dbg !913
  %2 = load i32, ptr %tmp7, align 4, !dbg !912
  %3 = load i64, ptr %_flags, align 8, !dbg !913
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #13, !dbg !913
  store i32 %call9, ptr %tmp8, align 4, !dbg !913
  %4 = load i32, ptr %tmp8, align 4, !dbg !913
  store i32 %4, ptr %tmp1, align 4, !dbg !911
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #12, !dbg !914
  %5 = load i32, ptr %tmp1, align 4, !dbg !909
  %tobool = icmp ne i32 %5, 0, !dbg !914
  %6 = zext i1 %tobool to i64, !dbg !914
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !914
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #14, !dbg !915
  ret ptr %call10, !dbg !916
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_remove_address_range(i8 noundef zeroext %space_id, ptr noundef %region_node) #0 align 16 !dbg !917 {
entry:
  %space_id.addr = alloca i8, align 1
  %region_node.addr = alloca ptr, align 8
  %range_info = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !921, metadata !DIExpression()), !dbg !925
  store ptr %region_node, ptr %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_node.addr, metadata !922, metadata !DIExpression()), !dbg !926
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_info) #12, !dbg !927
  call void @llvm.dbg.declare(metadata ptr %range_info, metadata !923, metadata !DIExpression()), !dbg !928
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #12, !dbg !929
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !924, metadata !DIExpression()), !dbg !930
  %0 = load i8, ptr %space_id.addr, align 1, !dbg !931
  %conv = zext i8 %0 to i32, !dbg !931
  %cmp = icmp ne i32 %conv, 0, !dbg !933
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !934

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !935
  %conv2 = zext i8 %1 to i32, !dbg !935
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !936
  br i1 %cmp3, label %if.then, label %if.end, !dbg !937

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !938

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr %space_id.addr, align 1, !dbg !940
  %idxprom = zext i8 %2 to i64, !dbg !941
  %arrayidx = getelementptr [2 x ptr], ptr @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !941
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !941
  store ptr %3, ptr %prev, align 8, !dbg !942
  store ptr %3, ptr %range_info, align 8, !dbg !943
  br label %while.cond, !dbg !944

while.cond:                                       ; preds = %if.end17, %if.end
  %4 = load ptr, ptr %range_info, align 8, !dbg !945
  %tobool = icmp ne ptr %4, null, !dbg !944
  br i1 %tobool, label %while.body, label %while.end, !dbg !944

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %range_info, align 8, !dbg !946
  %region_node5 = getelementptr inbounds %struct.acpi_address_range, ptr %5, i32 0, i32 1, !dbg !949
  %6 = load ptr, ptr %region_node5, align 8, !dbg !949
  %7 = load ptr, ptr %region_node.addr, align 8, !dbg !950
  %cmp6 = icmp eq ptr %6, %7, !dbg !951
  br i1 %cmp6, label %if.then8, label %if.end17, !dbg !952

if.then8:                                         ; preds = %while.body
  %8 = load ptr, ptr %range_info, align 8, !dbg !953
  %9 = load ptr, ptr %prev, align 8, !dbg !956
  %cmp9 = icmp eq ptr %8, %9, !dbg !957
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !958

if.then11:                                        ; preds = %if.then8
  %10 = load ptr, ptr %range_info, align 8, !dbg !959
  %next = getelementptr inbounds %struct.acpi_address_range, ptr %10, i32 0, i32 0, !dbg !961
  %11 = load ptr, ptr %next, align 8, !dbg !961
  %12 = load i8, ptr %space_id.addr, align 1, !dbg !962
  %idxprom12 = zext i8 %12 to i64, !dbg !963
  %arrayidx13 = getelementptr [2 x ptr], ptr @acpi_gbl_address_range_list, i64 0, i64 %idxprom12, !dbg !963
  store ptr %11, ptr %arrayidx13, align 8, !dbg !964
  br label %if.end16, !dbg !965

if.else:                                          ; preds = %if.then8
  %13 = load ptr, ptr %range_info, align 8, !dbg !966
  %next14 = getelementptr inbounds %struct.acpi_address_range, ptr %13, i32 0, i32 0, !dbg !968
  %14 = load ptr, ptr %next14, align 8, !dbg !968
  %15 = load ptr, ptr %prev, align 8, !dbg !969
  %next15 = getelementptr inbounds %struct.acpi_address_range, ptr %15, i32 0, i32 0, !dbg !970
  store ptr %14, ptr %next15, align 8, !dbg !971
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %16 = load ptr, ptr %range_info, align 8, !dbg !972
  call void @acpi_os_free(ptr noundef %16) #13, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !973

if.end17:                                         ; preds = %while.body
  %17 = load ptr, ptr %range_info, align 8, !dbg !974
  store ptr %17, ptr %prev, align 8, !dbg !975
  %18 = load ptr, ptr %range_info, align 8, !dbg !976
  %next18 = getelementptr inbounds %struct.acpi_address_range, ptr %18, i32 0, i32 0, !dbg !977
  %19 = load ptr, ptr %next18, align 8, !dbg !977
  store ptr %19, ptr %range_info, align 8, !dbg !978
  br label %while.cond, !dbg !944, !llvm.loop !979

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !983

cleanup:                                          ; preds = %while.end, %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #12, !dbg !984
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_info) #12, !dbg !984
  ret void, !dbg !984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !985 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !989, metadata !DIExpression()), !dbg !990
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !991
  call void @kfree(ptr noundef %0) #13, !dbg !992
  ret void, !dbg !993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_check_address_range(i8 noundef zeroext %space_id, i64 noundef %address, i32 noundef %length, i8 noundef zeroext %warn) #0 align 16 !dbg !994 {
entry:
  %retval = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %warn.addr = alloca i8, align 1
  %range_info = alloca ptr, align 8
  %end_address = alloca i64, align 8
  %pathname = alloca ptr, align 8
  %overlap_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !998, metadata !DIExpression()), !dbg !1006
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !999, metadata !DIExpression()), !dbg !1007
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !1000, metadata !DIExpression()), !dbg !1008
  store i8 %warn, ptr %warn.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %warn.addr, metadata !1001, metadata !DIExpression()), !dbg !1009
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_info) #12, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %range_info, metadata !1002, metadata !DIExpression()), !dbg !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_address) #12, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %end_address, metadata !1003, metadata !DIExpression()), !dbg !1013
  call void @llvm.lifetime.start.p0(i64 8, ptr %pathname) #12, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %pathname, metadata !1004, metadata !DIExpression()), !dbg !1015
  call void @llvm.lifetime.start.p0(i64 4, ptr %overlap_count) #12, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %overlap_count, metadata !1005, metadata !DIExpression()), !dbg !1017
  store i32 0, ptr %overlap_count, align 4, !dbg !1017
  %0 = load i8, ptr %space_id.addr, align 1, !dbg !1018
  %conv = zext i8 %0 to i32, !dbg !1018
  %cmp = icmp ne i32 %conv, 0, !dbg !1020
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1021

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !1022
  %conv2 = zext i8 %1 to i32, !dbg !1022
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !1023
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1024

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1025

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr %space_id.addr, align 1, !dbg !1027
  %idxprom = zext i8 %2 to i64, !dbg !1028
  %arrayidx = getelementptr [2 x ptr], ptr @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !1028
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1028
  store ptr %3, ptr %range_info, align 8, !dbg !1029
  %4 = load i64, ptr %address.addr, align 8, !dbg !1030
  %5 = load i32, ptr %length.addr, align 4, !dbg !1031
  %conv5 = zext i32 %5 to i64, !dbg !1031
  %add = add i64 %4, %conv5, !dbg !1032
  %sub = sub i64 %add, 1, !dbg !1033
  store i64 %sub, ptr %end_address, align 8, !dbg !1034
  br label %while.cond, !dbg !1035

while.cond:                                       ; preds = %if.end32, %if.end
  %6 = load ptr, ptr %range_info, align 8, !dbg !1036
  %tobool = icmp ne ptr %6, null, !dbg !1035
  br i1 %tobool, label %while.body, label %while.end, !dbg !1035

while.body:                                       ; preds = %while.cond
  %7 = load i64, ptr %address.addr, align 8, !dbg !1037
  %8 = load ptr, ptr %range_info, align 8, !dbg !1040
  %end_address6 = getelementptr inbounds %struct.acpi_address_range, ptr %8, i32 0, i32 3, !dbg !1041
  %9 = load i64, ptr %end_address6, align 8, !dbg !1041
  %cmp7 = icmp ule i64 %7, %9, !dbg !1042
  br i1 %cmp7, label %land.lhs.true9, label %if.end32, !dbg !1043

land.lhs.true9:                                   ; preds = %while.body
  %10 = load i64, ptr %end_address, align 8, !dbg !1044
  %11 = load ptr, ptr %range_info, align 8, !dbg !1045
  %start_address = getelementptr inbounds %struct.acpi_address_range, ptr %11, i32 0, i32 2, !dbg !1046
  %12 = load i64, ptr %start_address, align 8, !dbg !1046
  %cmp10 = icmp uge i64 %10, %12, !dbg !1047
  br i1 %cmp10, label %if.then12, label %if.end32, !dbg !1048

if.then12:                                        ; preds = %land.lhs.true9
  %13 = load i32, ptr %overlap_count, align 4, !dbg !1049
  %inc = add i32 %13, 1, !dbg !1049
  store i32 %inc, ptr %overlap_count, align 4, !dbg !1049
  %14 = load i8, ptr %warn.addr, align 1, !dbg !1051
  %tobool13 = icmp ne i8 %14, 0, !dbg !1051
  br i1 %tobool13, label %if.then14, label %if.end31, !dbg !1053

if.then14:                                        ; preds = %if.then12
  %15 = load ptr, ptr %range_info, align 8, !dbg !1054
  %region_node = getelementptr inbounds %struct.acpi_address_range, ptr %15, i32 0, i32 1, !dbg !1056
  %16 = load ptr, ptr %region_node, align 8, !dbg !1056
  %call = call ptr @acpi_ns_get_normalized_pathname(ptr noundef %16, i8 noundef zeroext 1) #13, !dbg !1057
  store ptr %call, ptr %pathname, align 8, !dbg !1058
  %17 = load i8, ptr %space_id.addr, align 1, !dbg !1059
  %call15 = call ptr @acpi_ut_get_region_name(i8 noundef zeroext %17) #13, !dbg !1059
  %18 = load i64, ptr %address.addr, align 8, !dbg !1059
  %shr = lshr i64 %18, 32, !dbg !1059
  %conv16 = trunc i64 %shr to i32, !dbg !1059
  %19 = load i64, ptr %address.addr, align 8, !dbg !1059
  %conv17 = trunc i64 %19 to i32, !dbg !1059
  %20 = load i64, ptr %end_address, align 8, !dbg !1059
  %shr18 = lshr i64 %20, 32, !dbg !1059
  %conv19 = trunc i64 %shr18 to i32, !dbg !1059
  %21 = load i64, ptr %end_address, align 8, !dbg !1059
  %conv20 = trunc i64 %21 to i32, !dbg !1059
  %22 = load ptr, ptr %range_info, align 8, !dbg !1059
  %start_address21 = getelementptr inbounds %struct.acpi_address_range, ptr %22, i32 0, i32 2, !dbg !1059
  %23 = load i64, ptr %start_address21, align 8, !dbg !1059
  %shr22 = lshr i64 %23, 32, !dbg !1059
  %conv23 = trunc i64 %shr22 to i32, !dbg !1059
  %24 = load ptr, ptr %range_info, align 8, !dbg !1059
  %start_address24 = getelementptr inbounds %struct.acpi_address_range, ptr %24, i32 0, i32 2, !dbg !1059
  %25 = load i64, ptr %start_address24, align 8, !dbg !1059
  %conv25 = trunc i64 %25 to i32, !dbg !1059
  %26 = load ptr, ptr %range_info, align 8, !dbg !1059
  %end_address26 = getelementptr inbounds %struct.acpi_address_range, ptr %26, i32 0, i32 3, !dbg !1059
  %27 = load i64, ptr %end_address26, align 8, !dbg !1059
  %shr27 = lshr i64 %27, 32, !dbg !1059
  %conv28 = trunc i64 %shr27 to i32, !dbg !1059
  %28 = load ptr, ptr %range_info, align 8, !dbg !1059
  %end_address29 = getelementptr inbounds %struct.acpi_address_range, ptr %28, i32 0, i32 3, !dbg !1059
  %29 = load i64, ptr %end_address29, align 8, !dbg !1059
  %conv30 = trunc i64 %29 to i32, !dbg !1059
  %30 = load ptr, ptr %pathname, align 8, !dbg !1059
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 204, ptr noundef @.str, ptr noundef %call15, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv28, i32 noundef %conv30, ptr noundef %30) #13, !dbg !1059
  %31 = load ptr, ptr %pathname, align 8, !dbg !1060
  call void @acpi_os_free(ptr noundef %31) #13, !dbg !1060
  br label %if.end31, !dbg !1061

if.end31:                                         ; preds = %if.then14, %if.then12
  br label %if.end32, !dbg !1062

if.end32:                                         ; preds = %if.end31, %land.lhs.true9, %while.body
  %32 = load ptr, ptr %range_info, align 8, !dbg !1063
  %next = getelementptr inbounds %struct.acpi_address_range, ptr %32, i32 0, i32 0, !dbg !1064
  %33 = load ptr, ptr %next, align 8, !dbg !1064
  store ptr %33, ptr %range_info, align 8, !dbg !1065
  br label %while.cond, !dbg !1035, !llvm.loop !1066

while.end:                                        ; preds = %while.cond
  %34 = load i32, ptr %overlap_count, align 4, !dbg !1068
  store i32 %34, ptr %retval, align 4, !dbg !1068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1068

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %overlap_count) #12, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 8, ptr %pathname) #12, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_address) #12, !dbg !1069
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_info) #12, !dbg !1069
  %35 = load i32, ptr %retval, align 4, !dbg !1069
  ret i32 %35, !dbg !1069
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1070 dso_local ptr @acpi_ns_get_normalized_pathname(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1074 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1079 dso_local ptr @acpi_ut_get_region_name(i8 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_delete_address_lists() #0 align 16 !dbg !1083 {
entry:
  %next = alloca ptr, align 8
  %range_info = alloca ptr, align 8
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #12, !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1087, metadata !DIExpression()), !dbg !1092
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_info) #12, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %range_info, metadata !1088, metadata !DIExpression()), !dbg !1094
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #12, !dbg !1095
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1089, metadata !DIExpression()), !dbg !1096
  store i32 0, ptr %i, align 4, !dbg !1097
  br label %for.cond, !dbg !1099

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1100
  %cmp = icmp slt i32 %0, 2, !dbg !1102
  br i1 %cmp, label %for.body, label %for.end, !dbg !1103

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !1104
  %idxprom = sext i32 %1 to i64, !dbg !1106
  %arrayidx = getelementptr [2 x ptr], ptr @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !1106
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1106
  store ptr %2, ptr %next, align 8, !dbg !1107
  br label %while.cond, !dbg !1108

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load ptr, ptr %next, align 8, !dbg !1109
  %tobool = icmp ne ptr %3, null, !dbg !1108
  br i1 %tobool, label %while.body, label %while.end, !dbg !1108

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %next, align 8, !dbg !1110
  store ptr %4, ptr %range_info, align 8, !dbg !1112
  %5 = load ptr, ptr %range_info, align 8, !dbg !1113
  %next1 = getelementptr inbounds %struct.acpi_address_range, ptr %5, i32 0, i32 0, !dbg !1114
  %6 = load ptr, ptr %next1, align 8, !dbg !1114
  store ptr %6, ptr %next, align 8, !dbg !1115
  %7 = load ptr, ptr %range_info, align 8, !dbg !1116
  call void @acpi_os_free(ptr noundef %7) #13, !dbg !1116
  br label %while.cond, !dbg !1108, !llvm.loop !1117

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %i, align 4, !dbg !1119
  %idxprom2 = sext i32 %8 to i64, !dbg !1120
  %arrayidx3 = getelementptr [2 x ptr], ptr @acpi_gbl_address_range_list, i64 0, i64 %idxprom2, !dbg !1120
  store ptr null, ptr %arrayidx3, align 8, !dbg !1121
  br label %for.inc, !dbg !1122

for.inc:                                          ; preds = %while.end
  %9 = load i32, ptr %i, align 4, !dbg !1123
  %inc = add i32 %9, 1, !dbg !1123
  store i32 %inc, ptr %i, align 4, !dbg !1123
  br label %for.cond, !dbg !1124, !llvm.loop !1125

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #12, !dbg !1127
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_info) #12, !dbg !1127
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #12, !dbg !1127
  ret void, !dbg !1127
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1128 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1136, metadata !DIExpression()), !dbg !1141
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1137, metadata !DIExpression()), !dbg !1142
  %0 = load i64, ptr %size.addr, align 8, !dbg !1143
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1144
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1145

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1146
  %tobool = icmp ne i64 %2, 0, !dbg !1146
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1147

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1138, metadata !DIExpression()), !dbg !1149
  %3 = load i64, ptr %size.addr, align 8, !dbg !1150
  %cmp = icmp ugt i64 %3, 8192, !dbg !1152
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1153

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1154
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1155
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #14, !dbg !1156
  store ptr %call, ptr %retval, align 8, !dbg !1157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1157

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1158
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #13, !dbg !1158
  store i32 %call2, ptr %index, align 4, !dbg !1159
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1160
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1161
  %9 = ptrtoint ptr %8 to i64, !dbg !1161
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #13, !dbg !1162
  %idxprom = zext i32 %call3 to i64, !dbg !1163
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1163
  %10 = load i32, ptr %index, align 4, !dbg !1164
  %idxprom4 = zext i32 %10 to i64, !dbg !1163
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1163
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1163
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1165
  %13 = load i64, ptr %size.addr, align 8, !dbg !1166
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #15, !dbg !1167
  store ptr %call6, ptr %retval, align 8, !dbg !1168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1168

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !1169
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1170
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1171
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #14, !dbg !1172
  store ptr %call8, ptr %retval, align 8, !dbg !1173
  br label %return, !dbg !1173

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1174
  ret ptr %16, !dbg !1174
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1175 {
entry:
  %call = call i64 @native_save_fl() #13, !dbg !1179
  ret i64 %call, !dbg !1180
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1181 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1185, metadata !DIExpression()), !dbg !1186
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1187
  %and = and i64 %0, 512, !dbg !1188
  %tobool = icmp ne i64 %and, 0, !dbg !1189
  %lnot = xor i1 %tobool, true, !dbg !1189
  %lnot.ext = zext i1 %lnot to i32, !dbg !1189
  ret i32 %lnot.ext, !dbg !1190
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1191 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1192 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1198, metadata !DIExpression()), !dbg !1200
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1199, metadata !DIExpression()), !dbg !1201
  %0 = load i64, ptr %size.addr, align 8, !dbg !1202
  %tobool = icmp ne i64 %0, 0, !dbg !1202
  br i1 %tobool, label %if.end, label %if.then, !dbg !1204

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1205
  br label %return, !dbg !1205

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1206
  %cmp = icmp ule i64 %1, 8, !dbg !1208
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1209

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1210
  br label %return, !dbg !1210

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1211
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1213
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1214

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1215
  %cmp4 = icmp ule i64 %3, 96, !dbg !1216
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1217

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1218
  br label %return, !dbg !1218

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1219
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1221
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1222

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1223
  %cmp9 = icmp ule i64 %5, 192, !dbg !1224
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1225

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1226
  br label %return, !dbg !1226

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1227
  %cmp12 = icmp ule i64 %6, 8, !dbg !1229
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1230

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1231
  br label %return, !dbg !1231

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1232
  %cmp15 = icmp ule i64 %7, 16, !dbg !1234
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1235

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1236
  br label %return, !dbg !1236

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1237
  %cmp18 = icmp ule i64 %8, 32, !dbg !1239
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1240

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1241
  br label %return, !dbg !1241

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1242
  %cmp21 = icmp ule i64 %9, 64, !dbg !1244
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1245

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1246
  br label %return, !dbg !1246

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1247
  %cmp24 = icmp ule i64 %10, 128, !dbg !1249
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1250

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1251
  br label %return, !dbg !1251

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1252
  %cmp27 = icmp ule i64 %11, 256, !dbg !1254
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1255

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1256
  br label %return, !dbg !1256

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1257
  %cmp30 = icmp ule i64 %12, 512, !dbg !1259
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1260

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1261
  br label %return, !dbg !1261

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1262
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1264
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1265

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1266
  br label %return, !dbg !1266

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1267
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1269
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1270

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1271
  br label %return, !dbg !1271

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1272
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1274
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1275

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1276
  br label %return, !dbg !1276

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1277
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1279
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1280

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1281
  br label %return, !dbg !1281

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1282
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1284
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1285

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1286
  br label %return, !dbg !1286

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1287
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1289
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1290

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1291
  br label %return, !dbg !1291

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1292
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1294
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1295

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1296
  br label %return, !dbg !1296

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1297
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1299
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1300

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1301
  br label %return, !dbg !1301

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1302
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1304
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1305

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1306
  br label %return, !dbg !1306

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1307
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1309
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1310

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1311
  br label %return, !dbg !1311

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1312
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1314
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1315

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1316
  br label %return, !dbg !1316

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1317
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1319
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1320

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1321
  br label %return, !dbg !1321

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1322, !range !1324, !noundef !1325
  %tobool69 = trunc i8 %25 to i1, !dbg !1322
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1326

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1327

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #16, !dbg !1328, !srcloc !1331
  unreachable, !dbg !1328

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1332

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1333

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1334

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1336

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1334

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #12, !dbg !1338, !srcloc !1340
  br label %do.end75, !dbg !1338

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1334

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1341
  br label %return, !dbg !1341

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1342
  ret i32 %26, !dbg !1342
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1343 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1349 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1353, metadata !DIExpression()), !dbg !1355
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1354, metadata !DIExpression()), !dbg !1356
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1357
  %and = and i32 %0, 17, !dbg !1357
  %cmp = icmp eq i32 %and, 0, !dbg !1357
  %lnot = xor i1 %cmp, true, !dbg !1357
  %lnot1 = xor i1 %lnot, true, !dbg !1357
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1357
  %conv = sext i32 %lnot.ext to i64, !dbg !1357
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1357
  %tobool = icmp ne i64 %expval, 0, !dbg !1357
  br i1 %tobool, label %if.then, label %if.end, !dbg !1359

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1360
  br label %return, !dbg !1360

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1361
  %and2 = and i32 %1, 1, !dbg !1363
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1363
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1364

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1365
  br label %return, !dbg !1365

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1366
  br label %return, !dbg !1366

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1368
  ret i32 %2, !dbg !1368
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1369 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1370 dso_local void @__compiletime_assert_173() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1371 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !1374
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1373, metadata !DIExpression()), !dbg !1375
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #12, !dbg !1376, !srcloc !1377
  %0 = load i64, ptr %flags, align 8, !dbg !1378
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !1379
  ret i64 %0, !dbg !1380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1381 dso_local void @kfree(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { noredzone allocsize(0) }
attributes #15 = { noredzone allocsize(2) }
attributes #16 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !51, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utaddress.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utaddress\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utaddress.ll drivers/acpi/acpica/utaddress.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !39, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utaddress.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3805ce8f9fd29589bc1f71b09d18cd7c")
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
!21 = !{!22, !29, !32, !30, !33, !36, !38}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !23, line: 814, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !35)
!35 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !37, line: 154, baseType: !7)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !{!40, !46, !0}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 720, elements: !44)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !{!45}
!45 = !DISubrange(count: 90)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 168, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 21)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 80, elements: !53)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!53 = !{!54}
!54 = !DISubrange(count: 10)
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 8, !"cf-protection-branch", i32 1}
!59 = !{i32 4, !"function_return_thunk_extern", i32 1}
!60 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!61 = !{i32 1, !"Code Model", i32 2}
!62 = !{i32 1, !"override-stack-alignment", i32 8}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = distinct !DISubprogram(name: "acpi_ut_add_address_range", scope: !3, file: !3, line: 41, type: !65, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !830)
!65 = !DISubroutineType(types: !66)
!66 = !{!29, !22, !67, !30, !68}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !33)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !70, line: 133, size: 384, elements: !71)
!70 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!71 = !{!72, !817, !818, !819, !820, !826, !827, !828, !829}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !69, file: !70, line: 134, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !75, line: 369, size: 576, elements: !76)
!75 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!76 = !{!77, !88, !101, !112, !126, !140, !150, !467, !484, !499, !512, !590, !602, !616, !626, !644, !666, !685, !704, !723, !736, !763, !780, !793, !807, !816}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !74, file: !75, line: 370, baseType: !78, size: 128)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !75, line: 73, size: 128, elements: !79)
!79 = !{!80, !81, !82, !83, !87}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !78, file: !75, line: 74, baseType: !73, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !78, file: !75, line: 74, baseType: !24, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !75, line: 74, baseType: !24, size: 8, offset: 72)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !78, file: !75, line: 74, baseType: !84, size: 16, offset: 80)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !86)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !75, line: 74, baseType: !24, size: 8, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !74, file: !75, line: 371, baseType: !89, size: 192)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !75, line: 76, size: 192, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !100}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !89, file: !75, line: 77, baseType: !73, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !75, line: 77, baseType: !24, size: 8, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !75, line: 77, baseType: !24, size: 8, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !89, file: !75, line: 77, baseType: !84, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !75, line: 77, baseType: !24, size: 8, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !89, file: !75, line: 77, baseType: !97, size: 24, offset: 104)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 24, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 3)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !89, file: !75, line: 78, baseType: !33, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !74, file: !75, line: 372, baseType: !102, size: 256)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !75, line: 93, size: 256, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !111}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !102, file: !75, line: 94, baseType: !73, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !102, file: !75, line: 94, baseType: !24, size: 8, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !75, line: 94, baseType: !24, size: 8, offset: 72)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !102, file: !75, line: 94, baseType: !84, size: 16, offset: 80)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !75, line: 94, baseType: !24, size: 8, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !102, file: !75, line: 94, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !102, file: !75, line: 94, baseType: !30, size: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !74, file: !75, line: 373, baseType: !113, size: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !75, line: 97, size: 384, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !122, !123, !124, !125}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !75, line: 98, baseType: !73, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !75, line: 98, baseType: !24, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !75, line: 98, baseType: !24, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !75, line: 98, baseType: !84, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !75, line: 98, baseType: !24, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !113, file: !75, line: 98, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !113, file: !75, line: 98, baseType: !30, size: 32, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !113, file: !75, line: 99, baseType: !30, size: 32, offset: 224)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !113, file: !75, line: 100, baseType: !121, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !75, line: 101, baseType: !68, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !74, file: !75, line: 374, baseType: !127, size: 384)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !75, line: 104, size: 384, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !137, !138, !139}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !75, line: 105, baseType: !73, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !75, line: 105, baseType: !24, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !75, line: 105, baseType: !24, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !75, line: 105, baseType: !84, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !75, line: 105, baseType: !24, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !127, file: !75, line: 105, baseType: !68, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !127, file: !75, line: 106, baseType: !136, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !127, file: !75, line: 107, baseType: !121, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !127, file: !75, line: 108, baseType: !30, size: 32, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !127, file: !75, line: 109, baseType: !30, size: 32, offset: 352)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !74, file: !75, line: 375, baseType: !141, size: 192)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !75, line: 118, size: 192, elements: !142)
!142 = !{!143, !144, !145, !146, !147, !148}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !141, file: !75, line: 119, baseType: !73, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !141, file: !75, line: 119, baseType: !24, size: 8, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !75, line: 119, baseType: !24, size: 8, offset: 72)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !141, file: !75, line: 119, baseType: !84, size: 16, offset: 80)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !141, file: !75, line: 119, baseType: !24, size: 8, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !141, file: !75, line: 119, baseType: !149, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !74, file: !75, line: 376, baseType: !151, size: 448)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !75, line: 144, size: 448, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !464, !465, !466}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !151, file: !75, line: 145, baseType: !73, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !151, file: !75, line: 145, baseType: !24, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !75, line: 145, baseType: !24, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !151, file: !75, line: 145, baseType: !84, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !75, line: 145, baseType: !24, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !151, file: !75, line: 145, baseType: !24, size: 8, offset: 104)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !151, file: !75, line: 146, baseType: !24, size: 8, offset: 112)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !151, file: !75, line: 147, baseType: !24, size: 8, offset: 120)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !151, file: !75, line: 148, baseType: !73, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !151, file: !75, line: 149, baseType: !73, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !151, file: !75, line: 150, baseType: !121, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !151, file: !75, line: 154, baseType: !165, size: 64, offset: 320)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !75, line: 151, size: 64, elements: !166)
!166 = !{!167, !463}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !165, file: !75, line: 152, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !70, line: 248, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!29, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !174, line: 37, size: 9024, elements: !175)
!174 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !409, !410, !411, !412, !413, !417, !419, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !446, !447, !448, !449, !450, !451, !452, !453, !455, !461}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !174, line: 38, baseType: !172, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !173, file: !174, line: 39, baseType: !24, size: 8, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !173, file: !174, line: 40, baseType: !24, size: 8, offset: 72)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !173, file: !174, line: 41, baseType: !84, size: 16, offset: 80)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !173, file: !174, line: 42, baseType: !24, size: 8, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !173, file: !174, line: 43, baseType: !24, size: 8, offset: 104)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !173, file: !174, line: 44, baseType: !24, size: 8, offset: 112)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !173, file: !174, line: 45, baseType: !184, size: 16, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !23, line: 445, baseType: !84)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !173, file: !174, line: 46, baseType: !24, size: 8, offset: 144)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !173, file: !174, line: 47, baseType: !24, size: 8, offset: 152)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !173, file: !174, line: 48, baseType: !24, size: 8, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !173, file: !174, line: 49, baseType: !24, size: 8, offset: 168)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !173, file: !174, line: 50, baseType: !24, size: 8, offset: 176)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !173, file: !174, line: 51, baseType: !24, size: 8, offset: 184)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !173, file: !174, line: 52, baseType: !24, size: 8, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !173, file: !174, line: 53, baseType: !24, size: 8, offset: 200)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !173, file: !174, line: 54, baseType: !121, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !173, file: !174, line: 55, baseType: !30, size: 32, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !173, file: !174, line: 56, baseType: !30, size: 32, offset: 352)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !173, file: !174, line: 57, baseType: !30, size: 32, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !173, file: !174, line: 58, baseType: !30, size: 32, offset: 416)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !173, file: !174, line: 60, baseType: !199, size: 640, offset: 448)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !70, line: 909, size: 640, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !290, !291, !407, !408}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !199, file: !70, line: 910, baseType: !121, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !70, line: 911, baseType: !121, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !199, file: !70, line: 912, baseType: !121, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !199, file: !70, line: 913, baseType: !121, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !199, file: !70, line: 914, baseType: !121, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !199, file: !70, line: 915, baseType: !207, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !70, line: 891, size: 1600, elements: !209)
!209 = !{!210, !230, !246}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !208, file: !70, line: 892, baseType: !211, size: 448)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !70, line: 844, size: 448, elements: !212)
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220, !229}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !211, file: !70, line: 845, baseType: !207, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !211, file: !70, line: 845, baseType: !24, size: 8, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !211, file: !70, line: 845, baseType: !24, size: 8, offset: 72)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !211, file: !70, line: 845, baseType: !84, size: 16, offset: 80)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !211, file: !70, line: 845, baseType: !121, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !70, line: 845, baseType: !207, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !211, file: !70, line: 845, baseType: !68, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !211, file: !70, line: 845, baseType: !221, size: 64, offset: 320)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !70, line: 732, size: 64, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !221, file: !70, line: 733, baseType: !33, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !221, file: !70, line: 734, baseType: !30, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !221, file: !70, line: 735, baseType: !110, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !221, file: !70, line: 736, baseType: !121, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !70, line: 737, baseType: !110, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !221, file: !70, line: 738, baseType: !207, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !211, file: !70, line: 845, baseType: !24, size: 8, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !208, file: !70, line: 893, baseType: !231, size: 640)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !70, line: 851, size: 640, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !231, file: !70, line: 852, baseType: !207, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !231, file: !70, line: 852, baseType: !24, size: 8, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !231, file: !70, line: 852, baseType: !24, size: 8, offset: 72)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !231, file: !70, line: 852, baseType: !84, size: 16, offset: 80)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !231, file: !70, line: 852, baseType: !121, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !70, line: 852, baseType: !207, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !231, file: !70, line: 852, baseType: !68, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !231, file: !70, line: 852, baseType: !221, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !231, file: !70, line: 852, baseType: !24, size: 8, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !231, file: !70, line: 852, baseType: !110, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !231, file: !70, line: 853, baseType: !121, size: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !231, file: !70, line: 854, baseType: !30, size: 32, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !70, line: 855, baseType: !30, size: 32, offset: 608)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !208, file: !70, line: 894, baseType: !247, size: 1600)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !70, line: 862, size: 1600, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !247, file: !70, line: 863, baseType: !207, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !247, file: !70, line: 863, baseType: !24, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !70, line: 863, baseType: !24, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !247, file: !70, line: 863, baseType: !84, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !247, file: !70, line: 863, baseType: !121, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !247, file: !70, line: 863, baseType: !207, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !247, file: !70, line: 863, baseType: !68, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !247, file: !70, line: 863, baseType: !221, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !247, file: !70, line: 863, baseType: !24, size: 8, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !247, file: !70, line: 863, baseType: !207, size: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !247, file: !70, line: 864, baseType: !207, size: 64, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !247, file: !70, line: 865, baseType: !110, size: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !247, file: !70, line: 866, baseType: !24, size: 8, offset: 640)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !247, file: !70, line: 867, baseType: !110, size: 64, offset: 704)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !247, file: !70, line: 868, baseType: !110, size: 64, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !247, file: !70, line: 869, baseType: !110, size: 64, offset: 832)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !247, file: !70, line: 870, baseType: !266, size: 32, offset: 896)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 4)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !247, file: !70, line: 871, baseType: !30, size: 32, offset: 928)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !247, file: !70, line: 872, baseType: !30, size: 32, offset: 960)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !247, file: !70, line: 873, baseType: !30, size: 32, offset: 992)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !247, file: !70, line: 874, baseType: !30, size: 32, offset: 1024)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !247, file: !70, line: 875, baseType: !30, size: 32, offset: 1056)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !247, file: !70, line: 876, baseType: !30, size: 32, offset: 1088)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !247, file: !70, line: 877, baseType: !30, size: 32, offset: 1120)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !247, file: !70, line: 878, baseType: !30, size: 32, offset: 1152)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !247, file: !70, line: 879, baseType: !30, size: 32, offset: 1184)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !247, file: !70, line: 880, baseType: !30, size: 32, offset: 1216)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !247, file: !70, line: 881, baseType: !30, size: 32, offset: 1248)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !247, file: !70, line: 882, baseType: !30, size: 32, offset: 1280)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !247, file: !70, line: 883, baseType: !30, size: 32, offset: 1312)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !247, file: !70, line: 884, baseType: !84, size: 16, offset: 1344)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !247, file: !70, line: 885, baseType: !24, size: 8, offset: 1360)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !247, file: !70, line: 886, baseType: !24, size: 8, offset: 1368)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !247, file: !70, line: 887, baseType: !24, size: 8, offset: 1376)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !247, file: !70, line: 888, baseType: !287, size: 160, offset: 1384)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 20)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !199, file: !70, line: 916, baseType: !68, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !199, file: !70, line: 917, baseType: !292, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !70, line: 679, size: 640, elements: !294)
!294 = !{!295, !303, !316, !325, !334, !347, !361, !373, !385}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !293, file: !70, line: 680, baseType: !296, size: 128)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !70, line: 575, size: 128, elements: !297)
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !70, line: 576, baseType: !149, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !70, line: 576, baseType: !24, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !70, line: 576, baseType: !24, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !70, line: 576, baseType: !84, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !70, line: 576, baseType: !84, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !293, file: !70, line: 681, baseType: !304, size: 384)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !70, line: 604, size: 384, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !70, line: 605, baseType: !149, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !304, file: !70, line: 605, baseType: !24, size: 8, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !70, line: 605, baseType: !24, size: 8, offset: 72)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !304, file: !70, line: 605, baseType: !84, size: 16, offset: 80)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !304, file: !70, line: 605, baseType: !84, size: 16, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !304, file: !70, line: 606, baseType: !84, size: 16, offset: 112)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !304, file: !70, line: 607, baseType: !207, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !304, file: !70, line: 608, baseType: !121, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !304, file: !70, line: 609, baseType: !121, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !304, file: !70, line: 610, baseType: !33, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !293, file: !70, line: 682, baseType: !317, size: 192)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !70, line: 582, size: 192, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !70, line: 583, baseType: !149, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !70, line: 583, baseType: !24, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !70, line: 583, baseType: !24, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !317, file: !70, line: 583, baseType: !84, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !317, file: !70, line: 583, baseType: !84, size: 16, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !317, file: !70, line: 584, baseType: !73, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !293, file: !70, line: 683, baseType: !326, size: 192)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !70, line: 616, size: 192, elements: !327)
!327 = !{!328, !329, !330, !331, !332, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !326, file: !70, line: 617, baseType: !149, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !326, file: !70, line: 617, baseType: !24, size: 8, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !326, file: !70, line: 617, baseType: !24, size: 8, offset: 72)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !70, line: 617, baseType: !84, size: 16, offset: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !326, file: !70, line: 617, baseType: !84, size: 16, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !326, file: !70, line: 618, baseType: !68, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !293, file: !70, line: 684, baseType: !335, size: 448)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !70, line: 621, size: 448, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !70, line: 622, baseType: !149, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !70, line: 622, baseType: !24, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !70, line: 622, baseType: !24, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !70, line: 622, baseType: !84, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !70, line: 622, baseType: !84, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !335, file: !70, line: 623, baseType: !30, size: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !335, file: !70, line: 624, baseType: !207, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !335, file: !70, line: 625, baseType: !121, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !335, file: !70, line: 626, baseType: !121, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !335, file: !70, line: 627, baseType: !30, size: 32, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !293, file: !70, line: 685, baseType: !348, size: 512)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !70, line: 590, size: 512, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !70, line: 591, baseType: !149, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !70, line: 591, baseType: !24, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !70, line: 591, baseType: !24, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !70, line: 591, baseType: !84, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !70, line: 591, baseType: !84, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !348, file: !70, line: 592, baseType: !30, size: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !348, file: !70, line: 593, baseType: !73, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !348, file: !70, line: 594, baseType: !73, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !348, file: !70, line: 595, baseType: !172, size: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !348, file: !70, line: 596, baseType: !149, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !348, file: !70, line: 597, baseType: !30, size: 32, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !293, file: !70, line: 686, baseType: !362, size: 320)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !70, line: 634, size: 320, elements: !363)
!363 = !{!364, !365, !366, !367, !368, !369, !370, !371, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !70, line: 635, baseType: !149, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !362, file: !70, line: 635, baseType: !24, size: 8, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !362, file: !70, line: 635, baseType: !24, size: 8, offset: 72)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !362, file: !70, line: 635, baseType: !84, size: 16, offset: 80)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !362, file: !70, line: 635, baseType: !84, size: 16, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !362, file: !70, line: 636, baseType: !24, size: 8, offset: 112)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !362, file: !70, line: 637, baseType: !172, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !362, file: !70, line: 638, baseType: !73, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !362, file: !70, line: 639, baseType: !33, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !293, file: !70, line: 687, baseType: !374, size: 640)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !70, line: 646, size: 640, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !374, file: !70, line: 647, baseType: !149, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !374, file: !70, line: 647, baseType: !24, size: 8, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !374, file: !70, line: 647, baseType: !24, size: 8, offset: 72)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !374, file: !70, line: 647, baseType: !84, size: 16, offset: 80)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !374, file: !70, line: 647, baseType: !84, size: 16, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !374, file: !70, line: 648, baseType: !382, size: 512, offset: 128)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 512, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 8)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !293, file: !70, line: 688, baseType: !386, size: 320)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !70, line: 669, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !70, line: 670, baseType: !149, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !70, line: 670, baseType: !24, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !70, line: 670, baseType: !24, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !386, file: !70, line: 670, baseType: !84, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !386, file: !70, line: 670, baseType: !84, size: 16, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !386, file: !70, line: 671, baseType: !24, size: 8, offset: 112)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !386, file: !70, line: 672, baseType: !68, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !386, file: !70, line: 673, baseType: !73, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !386, file: !70, line: 674, baseType: !397, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !70, line: 660, size: 128, elements: !399)
!399 = !{!400, !406}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !398, file: !70, line: 661, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !23, line: 1061, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405, !30, !149}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !23, line: 424, baseType: !149)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !398, file: !70, line: 662, baseType: !149, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !199, file: !70, line: 918, baseType: !207, size: 64, offset: 512)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !199, file: !70, line: 919, baseType: !30, size: 32, offset: 576)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !173, file: !174, line: 61, baseType: !30, size: 32, offset: 1088)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !173, file: !174, line: 62, baseType: !30, size: 32, offset: 1120)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !173, file: !174, line: 63, baseType: !84, size: 16, offset: 1152)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !173, file: !174, line: 64, baseType: !24, size: 8, offset: 1168)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !173, file: !174, line: 66, baseType: !414, size: 2688, offset: 1216)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2688, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 7)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !173, file: !174, line: 67, baseType: !418, size: 3072, offset: 3904)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 3072, elements: !383)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !173, file: !174, line: 68, baseType: !420, size: 576, offset: 6976)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 576, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 9)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !173, file: !174, line: 69, baseType: !136, size: 64, offset: 7552)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !173, file: !174, line: 71, baseType: !121, size: 64, offset: 7616)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !173, file: !174, line: 72, baseType: !136, size: 64, offset: 7680)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !173, file: !174, line: 73, baseType: !292, size: 64, offset: 7744)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !173, file: !174, line: 74, baseType: !68, size: 64, offset: 7808)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !173, file: !174, line: 75, baseType: !73, size: 64, offset: 7872)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !173, file: !174, line: 76, baseType: !68, size: 64, offset: 7936)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !173, file: !174, line: 77, baseType: !207, size: 64, offset: 8000)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !173, file: !174, line: 78, baseType: !73, size: 64, offset: 8064)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !173, file: !174, line: 79, baseType: !68, size: 64, offset: 8128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !173, file: !174, line: 80, baseType: !110, size: 64, offset: 8192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !173, file: !174, line: 81, baseType: !207, size: 64, offset: 8256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !173, file: !174, line: 82, baseType: !436, size: 64, offset: 8320)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !70, line: 718, size: 128, elements: !439)
!439 = !{!440, !441, !442, !443, !444, !445}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !438, file: !70, line: 722, baseType: !30, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !438, file: !70, line: 723, baseType: !30, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !438, file: !70, line: 724, baseType: !84, size: 16, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !438, file: !70, line: 725, baseType: !24, size: 8, offset: 80)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !438, file: !70, line: 726, baseType: !24, size: 8, offset: 88)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !70, line: 727, baseType: !24, size: 8, offset: 96)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !173, file: !174, line: 83, baseType: !207, size: 64, offset: 8384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !173, file: !174, line: 84, baseType: !73, size: 64, offset: 8448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !173, file: !174, line: 85, baseType: !292, size: 64, offset: 8512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !173, file: !174, line: 86, baseType: !73, size: 64, offset: 8576)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !173, file: !174, line: 87, baseType: !292, size: 64, offset: 8640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !173, file: !174, line: 88, baseType: !207, size: 64, offset: 8704)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !173, file: !174, line: 89, baseType: !207, size: 64, offset: 8768)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !173, file: !174, line: 90, baseType: !454, size: 64, offset: 8832)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !173, file: !174, line: 91, baseType: !456, size: 64, offset: 8896)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !70, line: 652, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!29, !172, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !173, file: !174, line: 92, baseType: !462, size: 64, offset: 8960)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !70, line: 656, baseType: !169)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !165, file: !75, line: 153, baseType: !73, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !151, file: !75, line: 156, baseType: !30, size: 32, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !151, file: !75, line: 157, baseType: !184, size: 16, offset: 416)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !151, file: !75, line: 158, baseType: !24, size: 8, offset: 432)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !74, file: !75, line: 377, baseType: !468, size: 576)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !75, line: 122, size: 576, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !468, file: !75, line: 123, baseType: !73, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !75, line: 123, baseType: !24, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !75, line: 123, baseType: !24, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !468, file: !75, line: 123, baseType: !84, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !75, line: 123, baseType: !24, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !468, file: !75, line: 123, baseType: !24, size: 8, offset: 104)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !468, file: !75, line: 124, baseType: !84, size: 16, offset: 112)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !468, file: !75, line: 125, baseType: !149, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !468, file: !75, line: 126, baseType: !33, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !468, file: !75, line: 127, baseType: !454, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !468, file: !75, line: 128, baseType: !73, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !75, line: 129, baseType: !73, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !75, line: 130, baseType: !68, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !468, file: !75, line: 131, baseType: !24, size: 8, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !74, file: !75, line: 378, baseType: !485, size: 512)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !75, line: 134, size: 512, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !75, line: 135, baseType: !73, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !75, line: 135, baseType: !24, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !75, line: 135, baseType: !24, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !75, line: 135, baseType: !84, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !75, line: 135, baseType: !24, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !485, file: !75, line: 135, baseType: !24, size: 8, offset: 104)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !485, file: !75, line: 136, baseType: !68, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !75, line: 137, baseType: !73, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !485, file: !75, line: 138, baseType: !73, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !485, file: !75, line: 139, baseType: !67, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !485, file: !75, line: 140, baseType: !30, size: 32, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !485, file: !75, line: 141, baseType: !149, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !74, file: !75, line: 379, baseType: !500, size: 320)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !75, line: 185, size: 320, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !511}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !500, file: !75, line: 186, baseType: !73, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !500, file: !75, line: 186, baseType: !24, size: 8, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !75, line: 186, baseType: !24, size: 8, offset: 72)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !500, file: !75, line: 186, baseType: !84, size: 16, offset: 80)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !75, line: 186, baseType: !24, size: 8, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !500, file: !75, line: 186, baseType: !508, size: 128, offset: 128)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 2)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !500, file: !75, line: 186, baseType: !73, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !74, file: !75, line: 380, baseType: !513, size: 384)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !75, line: 188, size: 384, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !513, file: !75, line: 189, baseType: !73, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !513, file: !75, line: 189, baseType: !24, size: 8, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !513, file: !75, line: 189, baseType: !24, size: 8, offset: 72)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !513, file: !75, line: 189, baseType: !84, size: 16, offset: 80)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !75, line: 189, baseType: !24, size: 8, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !513, file: !75, line: 190, baseType: !508, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !513, file: !75, line: 190, baseType: !73, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !513, file: !75, line: 190, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !70, line: 480, size: 576, elements: !525)
!525 = !{!526, !527, !528, !529, !537, !552, !584, !585, !586, !587, !588, !589}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !524, file: !70, line: 481, baseType: !68, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !524, file: !70, line: 482, baseType: !523, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !70, line: 483, baseType: !523, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !524, file: !70, line: 484, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !70, line: 497, size: 256, elements: !532)
!532 = !{!533, !534, !535, !536}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !531, file: !70, line: 498, baseType: !530, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !70, line: 499, baseType: !530, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !531, file: !70, line: 500, baseType: !523, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !531, file: !70, line: 501, baseType: !30, size: 32, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !524, file: !70, line: 485, baseType: !538, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !70, line: 466, size: 320, elements: !540)
!540 = !{!541, !546, !547, !548, !549, !550, !551}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !539, file: !70, line: 467, baseType: !542, size: 128)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !70, line: 459, size: 128, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !542, file: !70, line: 460, baseType: !24, size: 8)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !542, file: !70, line: 461, baseType: !33, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !539, file: !70, line: 468, baseType: !542, size: 128, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !539, file: !70, line: 469, baseType: !84, size: 16, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !539, file: !70, line: 470, baseType: !24, size: 8, offset: 272)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !539, file: !70, line: 471, baseType: !24, size: 8, offset: 280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !539, file: !70, line: 472, baseType: !24, size: 8, offset: 288)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !539, file: !70, line: 473, baseType: !24, size: 8, offset: 296)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !524, file: !70, line: 486, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !70, line: 448, size: 192, elements: !555)
!555 = !{!556, !579, !580, !581, !582, !583}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !554, file: !70, line: 449, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !70, line: 438, size: 64, elements: !558)
!558 = !{!559, !560, !573}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !557, file: !70, line: 439, baseType: !68, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !70, line: 440, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !70, line: 419, size: 256, elements: !563)
!563 = !{!564, !569, !570, !571, !572}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !562, file: !70, line: 420, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !23, line: 1058, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!30, !405, !30, !149}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !562, file: !70, line: 421, baseType: !149, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !562, file: !70, line: 422, baseType: !68, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !562, file: !70, line: 423, baseType: !24, size: 8, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !562, file: !70, line: 424, baseType: !24, size: 8, offset: 200)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !557, file: !70, line: 441, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !70, line: 429, size: 128, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !575, file: !70, line: 430, baseType: !68, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !70, line: 431, baseType: !574, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !554, file: !70, line: 450, baseType: !538, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !70, line: 451, baseType: !24, size: 8, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !554, file: !70, line: 452, baseType: !24, size: 8, offset: 136)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !554, file: !70, line: 453, baseType: !24, size: 8, offset: 144)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !554, file: !70, line: 454, baseType: !24, size: 8, offset: 152)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !524, file: !70, line: 487, baseType: !33, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !524, file: !70, line: 488, baseType: !30, size: 32, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !524, file: !70, line: 489, baseType: !84, size: 16, offset: 480)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !524, file: !70, line: 490, baseType: !84, size: 16, offset: 496)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !524, file: !70, line: 491, baseType: !24, size: 8, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !524, file: !70, line: 492, baseType: !24, size: 8, offset: 520)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !74, file: !75, line: 381, baseType: !591, size: 384)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !75, line: 193, size: 384, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599, !600, !601}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !75, line: 194, baseType: !73, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !75, line: 194, baseType: !24, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !75, line: 194, baseType: !24, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !75, line: 194, baseType: !84, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !75, line: 194, baseType: !24, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !75, line: 194, baseType: !508, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !75, line: 194, baseType: !73, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !591, file: !75, line: 194, baseType: !30, size: 32, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !591, file: !75, line: 195, baseType: !30, size: 32, offset: 352)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !74, file: !75, line: 382, baseType: !603, size: 384)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !75, line: 198, size: 384, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !603, file: !75, line: 199, baseType: !73, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !603, file: !75, line: 199, baseType: !24, size: 8, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !75, line: 199, baseType: !24, size: 8, offset: 72)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !603, file: !75, line: 199, baseType: !84, size: 16, offset: 80)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !75, line: 199, baseType: !24, size: 8, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !603, file: !75, line: 201, baseType: !24, size: 8, offset: 104)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !603, file: !75, line: 202, baseType: !24, size: 8, offset: 112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !603, file: !75, line: 203, baseType: !508, size: 128, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !603, file: !75, line: 203, baseType: !73, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !603, file: !75, line: 203, baseType: !615, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !23, line: 128, baseType: !33)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !74, file: !75, line: 383, baseType: !617, size: 320)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !75, line: 206, size: 320, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !75, line: 207, baseType: !73, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !75, line: 207, baseType: !24, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !75, line: 207, baseType: !24, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !75, line: 207, baseType: !84, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !75, line: 207, baseType: !24, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !617, file: !75, line: 207, baseType: !508, size: 128, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !617, file: !75, line: 207, baseType: !73, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !74, file: !75, line: 384, baseType: !627, size: 384)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !75, line: 234, size: 384, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !75, line: 235, baseType: !73, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !75, line: 235, baseType: !24, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !75, line: 235, baseType: !24, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !75, line: 235, baseType: !84, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !75, line: 235, baseType: !24, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !627, file: !75, line: 235, baseType: !24, size: 8, offset: 104)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !627, file: !75, line: 235, baseType: !24, size: 8, offset: 112)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !627, file: !75, line: 235, baseType: !24, size: 8, offset: 120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !75, line: 235, baseType: !68, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !627, file: !75, line: 235, baseType: !30, size: 32, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !627, file: !75, line: 235, baseType: !30, size: 32, offset: 224)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !627, file: !75, line: 235, baseType: !30, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !627, file: !75, line: 235, baseType: !24, size: 8, offset: 288)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !627, file: !75, line: 235, baseType: !24, size: 8, offset: 296)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !627, file: !75, line: 235, baseType: !73, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !74, file: !75, line: 385, baseType: !645, size: 576)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !75, line: 238, size: 576, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !75, line: 239, baseType: !73, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !75, line: 239, baseType: !24, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !75, line: 239, baseType: !24, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !75, line: 239, baseType: !84, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !75, line: 239, baseType: !24, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !645, file: !75, line: 239, baseType: !24, size: 8, offset: 104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !645, file: !75, line: 239, baseType: !24, size: 8, offset: 112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !645, file: !75, line: 239, baseType: !24, size: 8, offset: 120)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !75, line: 239, baseType: !68, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !645, file: !75, line: 239, baseType: !30, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !645, file: !75, line: 239, baseType: !30, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !75, line: 239, baseType: !30, size: 32, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !645, file: !75, line: 239, baseType: !24, size: 8, offset: 288)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !645, file: !75, line: 239, baseType: !24, size: 8, offset: 296)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !645, file: !75, line: 239, baseType: !84, size: 16, offset: 304)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !645, file: !75, line: 240, baseType: !73, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !645, file: !75, line: 241, baseType: !121, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !645, file: !75, line: 242, baseType: !84, size: 16, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !645, file: !75, line: 243, baseType: !121, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !74, file: !75, line: 386, baseType: !667, size: 384)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !75, line: 263, size: 384, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !667, file: !75, line: 264, baseType: !73, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !75, line: 264, baseType: !24, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !75, line: 264, baseType: !24, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !667, file: !75, line: 264, baseType: !84, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !75, line: 264, baseType: !24, size: 8, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !667, file: !75, line: 264, baseType: !24, size: 8, offset: 104)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !667, file: !75, line: 264, baseType: !24, size: 8, offset: 112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !667, file: !75, line: 264, baseType: !24, size: 8, offset: 120)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !75, line: 264, baseType: !68, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !667, file: !75, line: 264, baseType: !30, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !667, file: !75, line: 264, baseType: !30, size: 32, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !75, line: 264, baseType: !30, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !667, file: !75, line: 264, baseType: !24, size: 8, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !667, file: !75, line: 264, baseType: !24, size: 8, offset: 296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !667, file: !75, line: 264, baseType: !24, size: 8, offset: 304)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !667, file: !75, line: 265, baseType: !73, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !74, file: !75, line: 387, baseType: !686, size: 448)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !75, line: 246, size: 448, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !75, line: 247, baseType: !73, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !75, line: 247, baseType: !24, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !75, line: 247, baseType: !24, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !75, line: 247, baseType: !84, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !75, line: 247, baseType: !24, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !75, line: 247, baseType: !24, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !75, line: 247, baseType: !24, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !75, line: 247, baseType: !24, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !75, line: 247, baseType: !68, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !75, line: 247, baseType: !30, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !75, line: 247, baseType: !30, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !75, line: 247, baseType: !30, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !75, line: 247, baseType: !24, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !75, line: 247, baseType: !24, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !686, file: !75, line: 247, baseType: !73, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !686, file: !75, line: 248, baseType: !73, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !74, file: !75, line: 388, baseType: !705, size: 448)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !75, line: 251, size: 448, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !75, line: 252, baseType: !73, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !75, line: 252, baseType: !24, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !75, line: 252, baseType: !24, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !75, line: 252, baseType: !84, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !75, line: 252, baseType: !24, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !705, file: !75, line: 252, baseType: !24, size: 8, offset: 104)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !705, file: !75, line: 252, baseType: !24, size: 8, offset: 112)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !705, file: !75, line: 252, baseType: !24, size: 8, offset: 120)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !75, line: 252, baseType: !68, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !705, file: !75, line: 252, baseType: !30, size: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !705, file: !75, line: 252, baseType: !30, size: 32, offset: 224)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !705, file: !75, line: 252, baseType: !30, size: 32, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !705, file: !75, line: 252, baseType: !24, size: 8, offset: 288)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !705, file: !75, line: 252, baseType: !24, size: 8, offset: 296)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !705, file: !75, line: 257, baseType: !73, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !705, file: !75, line: 258, baseType: !73, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !74, file: !75, line: 389, baseType: !724, size: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !75, line: 274, size: 512, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !724, file: !75, line: 275, baseType: !73, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !75, line: 275, baseType: !24, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !724, file: !75, line: 275, baseType: !24, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !724, file: !75, line: 275, baseType: !84, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !75, line: 275, baseType: !24, size: 8, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !75, line: 275, baseType: !68, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !724, file: !75, line: 276, baseType: !30, size: 32, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !724, file: !75, line: 277, baseType: !401, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !724, file: !75, line: 278, baseType: !149, size: 64, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !724, file: !75, line: 279, baseType: !508, size: 128, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !74, file: !75, line: 390, baseType: !737, size: 576)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !75, line: 282, size: 576, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !752, !753, !754, !755, !761, !762}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !75, line: 283, baseType: !73, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !75, line: 283, baseType: !24, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !75, line: 283, baseType: !24, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !75, line: 283, baseType: !84, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !75, line: 283, baseType: !24, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !737, file: !75, line: 283, baseType: !24, size: 8, offset: 104)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !737, file: !75, line: 284, baseType: !24, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !737, file: !75, line: 285, baseType: !747, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !23, line: 1093, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!29, !30, !67, !30, !751, !149, !149}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !75, line: 286, baseType: !68, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !737, file: !75, line: 287, baseType: !149, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !737, file: !75, line: 288, baseType: !149, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !737, file: !75, line: 289, baseType: !756, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !23, line: 1126, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!29, !405, !30, !149, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !737, file: !75, line: 290, baseType: !73, size: 64, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !737, file: !75, line: 291, baseType: !73, size: 64, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !74, file: !75, line: 391, baseType: !764, size: 512)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !75, line: 309, size: 512, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !75, line: 310, baseType: !73, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !75, line: 310, baseType: !24, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !75, line: 310, baseType: !24, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !75, line: 310, baseType: !84, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !75, line: 310, baseType: !24, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !764, file: !75, line: 310, baseType: !24, size: 8, offset: 104)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !764, file: !75, line: 311, baseType: !24, size: 8, offset: 112)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !764, file: !75, line: 312, baseType: !24, size: 8, offset: 120)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !764, file: !75, line: 313, baseType: !149, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !75, line: 314, baseType: !68, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !764, file: !75, line: 315, baseType: !136, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !764, file: !75, line: 316, baseType: !121, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !764, file: !75, line: 317, baseType: !121, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !764, file: !75, line: 318, baseType: !30, size: 32, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !74, file: !75, line: 392, baseType: !781, size: 448)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !75, line: 342, size: 448, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !75, line: 343, baseType: !73, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !75, line: 343, baseType: !24, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !75, line: 343, baseType: !24, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !75, line: 343, baseType: !84, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !75, line: 343, baseType: !24, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !781, file: !75, line: 343, baseType: !68, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !781, file: !75, line: 344, baseType: !68, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !781, file: !75, line: 345, baseType: !149, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !781, file: !75, line: 346, baseType: !121, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !781, file: !75, line: 347, baseType: !30, size: 32, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !74, file: !75, line: 393, baseType: !794, size: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !75, line: 352, size: 256, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801, !806}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !794, file: !75, line: 353, baseType: !73, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !794, file: !75, line: 353, baseType: !24, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !75, line: 353, baseType: !24, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !794, file: !75, line: 353, baseType: !84, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !75, line: 353, baseType: !24, size: 8, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !794, file: !75, line: 353, baseType: !802, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !23, line: 1064, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !405, !149}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !794, file: !75, line: 354, baseType: !149, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !74, file: !75, line: 394, baseType: !808, size: 192)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !75, line: 359, size: 192, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !808, file: !75, line: 360, baseType: !73, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !808, file: !75, line: 360, baseType: !24, size: 8, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !75, line: 360, baseType: !24, size: 8, offset: 72)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !808, file: !75, line: 360, baseType: !84, size: 16, offset: 80)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !75, line: 360, baseType: !24, size: 8, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !75, line: 360, baseType: !73, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !74, file: !75, line: 401, baseType: !69, size: 384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !70, line: 135, baseType: !24, size: 8, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !70, line: 136, baseType: !24, size: 8, offset: 72)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !70, line: 137, baseType: !84, size: 16, offset: 80)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !69, file: !70, line: 138, baseType: !821, size: 32, offset: 96)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !822, line: 328, size: 32, elements: !823)
!822 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!823 = !{!824, !825}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !821, file: !822, line: 329, baseType: !30, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !821, file: !822, line: 330, baseType: !266, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !69, file: !70, line: 139, baseType: !68, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !69, file: !70, line: 140, baseType: !68, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !69, file: !70, line: 141, baseType: !68, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !69, file: !70, line: 142, baseType: !184, size: 16, offset: 320)
!830 = !{!831, !832, !833, !834, !835}
!831 = !DILocalVariable(name: "space_id", arg: 1, scope: !64, file: !3, line: 41, type: !22)
!832 = !DILocalVariable(name: "address", arg: 2, scope: !64, file: !3, line: 42, type: !67)
!833 = !DILocalVariable(name: "length", arg: 3, scope: !64, file: !3, line: 43, type: !30)
!834 = !DILocalVariable(name: "region_node", arg: 4, scope: !64, file: !3, line: 43, type: !68)
!835 = !DILocalVariable(name: "range_info", scope: !64, file: !3, line: 45, type: !836)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address_range", file: !70, line: 702, size: 256, elements: !838)
!838 = !{!839, !840, !841, !842}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !837, file: !70, line: 703, baseType: !836, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "region_node", scope: !837, file: !70, line: 704, baseType: !68, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "start_address", scope: !837, file: !70, line: 705, baseType: !67, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "end_address", scope: !837, file: !70, line: 706, baseType: !67, size: 64, offset: 192)
!843 = !DILocation(line: 41, column: 47, scope: !64)
!844 = !DILocation(line: 42, column: 28, scope: !64)
!845 = !DILocation(line: 43, column: 10, scope: !64)
!846 = !DILocation(line: 43, column: 46, scope: !64)
!847 = !DILocation(line: 45, column: 2, scope: !64)
!848 = !DILocation(line: 45, column: 29, scope: !64)
!849 = !DILocation(line: 49, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !64, file: !3, line: 49, column: 6)
!851 = !DILocation(line: 49, column: 16, scope: !850)
!852 = !DILocation(line: 49, column: 49, scope: !850)
!853 = !DILocation(line: 50, column: 7, scope: !850)
!854 = !DILocation(line: 50, column: 16, scope: !850)
!855 = !DILocation(line: 49, column: 6, scope: !64)
!856 = !DILocation(line: 51, column: 3, scope: !857)
!857 = distinct !DILexicalBlock(scope: !850, file: !3, line: 50, column: 46)
!858 = !DILocation(line: 56, column: 15, scope: !64)
!859 = !DILocation(line: 56, column: 13, scope: !64)
!860 = !DILocation(line: 57, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !64, file: !3, line: 57, column: 6)
!862 = !DILocation(line: 57, column: 6, scope: !64)
!863 = !DILocation(line: 58, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !3, line: 57, column: 19)
!865 = !DILocation(line: 61, column: 30, scope: !64)
!866 = !DILocation(line: 61, column: 2, scope: !64)
!867 = !DILocation(line: 61, column: 14, scope: !64)
!868 = !DILocation(line: 61, column: 28, scope: !64)
!869 = !DILocation(line: 62, column: 29, scope: !64)
!870 = !DILocation(line: 62, column: 39, scope: !64)
!871 = !DILocation(line: 62, column: 37, scope: !64)
!872 = !DILocation(line: 62, column: 46, scope: !64)
!873 = !DILocation(line: 62, column: 2, scope: !64)
!874 = !DILocation(line: 62, column: 14, scope: !64)
!875 = !DILocation(line: 62, column: 26, scope: !64)
!876 = !DILocation(line: 63, column: 28, scope: !64)
!877 = !DILocation(line: 63, column: 2, scope: !64)
!878 = !DILocation(line: 63, column: 14, scope: !64)
!879 = !DILocation(line: 63, column: 26, scope: !64)
!880 = !DILocation(line: 65, column: 49, scope: !64)
!881 = !DILocation(line: 65, column: 21, scope: !64)
!882 = !DILocation(line: 65, column: 2, scope: !64)
!883 = !DILocation(line: 65, column: 14, scope: !64)
!884 = !DILocation(line: 65, column: 19, scope: !64)
!885 = !DILocation(line: 66, column: 42, scope: !64)
!886 = !DILocation(line: 66, column: 30, scope: !64)
!887 = !DILocation(line: 66, column: 2, scope: !64)
!888 = !DILocation(line: 66, column: 40, scope: !64)
!889 = !DILocation(line: 74, column: 2, scope: !64)
!890 = !DILocation(line: 75, column: 1, scope: !64)
!891 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !892, file: !892, line: 50, type: !893, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!892 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!893 = !DISubroutineType(types: !894)
!894 = !{!149, !32}
!895 = !{!896, !897, !899, !902, !903, !906}
!896 = !DILocalVariable(name: "size", arg: 1, scope: !891, file: !892, line: 50, type: !32)
!897 = !DILocalVariable(name: "_flags", scope: !898, file: !892, line: 52, type: !38)
!898 = distinct !DILexicalBlock(scope: !891, file: !892, line: 52, column: 23)
!899 = !DILocalVariable(name: "__dummy", scope: !900, file: !892, line: 52, type: !38)
!900 = distinct !DILexicalBlock(scope: !901, file: !892, line: 52, column: 23)
!901 = distinct !DILexicalBlock(scope: !898, file: !892, line: 52, column: 23)
!902 = !DILocalVariable(name: "__dummy2", scope: !900, file: !892, line: 52, type: !38)
!903 = !DILocalVariable(name: "__dummy", scope: !904, file: !892, line: 52, type: !38)
!904 = distinct !DILexicalBlock(scope: !905, file: !892, line: 52, column: 23)
!905 = distinct !DILexicalBlock(scope: !898, file: !892, line: 52, column: 23)
!906 = !DILocalVariable(name: "__dummy2", scope: !904, file: !892, line: 52, type: !38)
!907 = !DILocation(line: 50, column: 48, scope: !891)
!908 = !DILocation(line: 52, column: 17, scope: !891)
!909 = !DILocation(line: 52, column: 23, scope: !898)
!910 = !DILocation(line: 52, column: 23, scope: !900)
!911 = !DILocation(line: 52, column: 23, scope: !901)
!912 = !DILocation(line: 52, column: 23, scope: !904)
!913 = !DILocation(line: 52, column: 23, scope: !905)
!914 = !DILocation(line: 52, column: 23, scope: !891)
!915 = !DILocation(line: 52, column: 9, scope: !891)
!916 = !DILocation(line: 52, column: 2, scope: !891)
!917 = distinct !DISubprogram(name: "acpi_ut_remove_address_range", scope: !3, file: !3, line: 95, type: !918, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !22, !68}
!920 = !{!921, !922, !923, !924}
!921 = !DILocalVariable(name: "space_id", arg: 1, scope: !917, file: !3, line: 95, type: !22)
!922 = !DILocalVariable(name: "region_node", arg: 2, scope: !917, file: !3, line: 96, type: !68)
!923 = !DILocalVariable(name: "range_info", scope: !917, file: !3, line: 98, type: !836)
!924 = !DILocalVariable(name: "prev", scope: !917, file: !3, line: 99, type: !836)
!925 = !DILocation(line: 95, column: 50, scope: !917)
!926 = !DILocation(line: 96, column: 37, scope: !917)
!927 = !DILocation(line: 98, column: 2, scope: !917)
!928 = !DILocation(line: 98, column: 29, scope: !917)
!929 = !DILocation(line: 99, column: 2, scope: !917)
!930 = !DILocation(line: 99, column: 29, scope: !917)
!931 = !DILocation(line: 103, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !917, file: !3, line: 103, column: 6)
!933 = !DILocation(line: 103, column: 16, scope: !932)
!934 = !DILocation(line: 103, column: 49, scope: !932)
!935 = !DILocation(line: 104, column: 7, scope: !932)
!936 = !DILocation(line: 104, column: 16, scope: !932)
!937 = !DILocation(line: 103, column: 6, scope: !917)
!938 = !DILocation(line: 105, column: 3, scope: !939)
!939 = distinct !DILexicalBlock(scope: !932, file: !3, line: 104, column: 46)
!940 = !DILocation(line: 110, column: 50, scope: !917)
!941 = !DILocation(line: 110, column: 22, scope: !917)
!942 = !DILocation(line: 110, column: 20, scope: !917)
!943 = !DILocation(line: 110, column: 13, scope: !917)
!944 = !DILocation(line: 111, column: 2, scope: !917)
!945 = !DILocation(line: 111, column: 9, scope: !917)
!946 = !DILocation(line: 112, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 112, column: 7)
!948 = distinct !DILexicalBlock(scope: !917, file: !3, line: 111, column: 21)
!949 = !DILocation(line: 112, column: 19, scope: !947)
!950 = !DILocation(line: 112, column: 34, scope: !947)
!951 = !DILocation(line: 112, column: 31, scope: !947)
!952 = !DILocation(line: 112, column: 7, scope: !948)
!953 = !DILocation(line: 113, column: 8, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 113, column: 8)
!955 = distinct !DILexicalBlock(scope: !947, file: !3, line: 112, column: 47)
!956 = !DILocation(line: 113, column: 22, scope: !954)
!957 = !DILocation(line: 113, column: 19, scope: !954)
!958 = !DILocation(line: 113, column: 8, scope: !955)
!959 = !DILocation(line: 115, column: 9, scope: !960)
!960 = distinct !DILexicalBlock(scope: !954, file: !3, line: 113, column: 28)
!961 = !DILocation(line: 115, column: 21, scope: !960)
!962 = !DILocation(line: 114, column: 33, scope: !960)
!963 = !DILocation(line: 114, column: 5, scope: !960)
!964 = !DILocation(line: 114, column: 43, scope: !960)
!965 = !DILocation(line: 116, column: 4, scope: !960)
!966 = !DILocation(line: 117, column: 18, scope: !967)
!967 = distinct !DILexicalBlock(scope: !954, file: !3, line: 116, column: 11)
!968 = !DILocation(line: 117, column: 30, scope: !967)
!969 = !DILocation(line: 117, column: 5, scope: !967)
!970 = !DILocation(line: 117, column: 11, scope: !967)
!971 = !DILocation(line: 117, column: 16, scope: !967)
!972 = !DILocation(line: 129, column: 4, scope: !955)
!973 = !DILocation(line: 130, column: 4, scope: !955)
!974 = !DILocation(line: 133, column: 10, scope: !948)
!975 = !DILocation(line: 133, column: 8, scope: !948)
!976 = !DILocation(line: 134, column: 16, scope: !948)
!977 = !DILocation(line: 134, column: 28, scope: !948)
!978 = !DILocation(line: 134, column: 14, scope: !948)
!979 = distinct !{!979, !944, !980, !981, !982}
!980 = !DILocation(line: 135, column: 2, scope: !917)
!981 = !{!"llvm.loop.mustprogress"}
!982 = !{!"llvm.loop.unroll.disable"}
!983 = !DILocation(line: 137, column: 2, scope: !917)
!984 = !DILocation(line: 138, column: 1, scope: !917)
!985 = distinct !DISubprogram(name: "acpi_os_free", scope: !892, file: !892, line: 60, type: !986, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !149}
!988 = !{!989}
!989 = !DILocalVariable(name: "memory", arg: 1, scope: !985, file: !892, line: 60, type: !149)
!990 = !DILocation(line: 60, column: 39, scope: !985)
!991 = !DILocation(line: 62, column: 8, scope: !985)
!992 = !DILocation(line: 62, column: 2, scope: !985)
!993 = !DILocation(line: 63, column: 1, scope: !985)
!994 = distinct !DISubprogram(name: "acpi_ut_check_address_range", scope: !3, file: !3, line: 161, type: !995, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!30, !22, !67, !30, !24}
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004, !1005}
!998 = !DILocalVariable(name: "space_id", arg: 1, scope: !994, file: !3, line: 161, type: !22)
!999 = !DILocalVariable(name: "address", arg: 2, scope: !994, file: !3, line: 162, type: !67)
!1000 = !DILocalVariable(name: "length", arg: 3, scope: !994, file: !3, line: 162, type: !30)
!1001 = !DILocalVariable(name: "warn", arg: 4, scope: !994, file: !3, line: 162, type: !24)
!1002 = !DILocalVariable(name: "range_info", scope: !994, file: !3, line: 164, type: !836)
!1003 = !DILocalVariable(name: "end_address", scope: !994, file: !3, line: 165, type: !67)
!1004 = !DILocalVariable(name: "pathname", scope: !994, file: !3, line: 166, type: !110)
!1005 = !DILocalVariable(name: "overlap_count", scope: !994, file: !3, line: 167, type: !30)
!1006 = !DILocation(line: 161, column: 49, scope: !994)
!1007 = !DILocation(line: 162, column: 30, scope: !994)
!1008 = !DILocation(line: 162, column: 43, scope: !994)
!1009 = !DILocation(line: 162, column: 54, scope: !994)
!1010 = !DILocation(line: 164, column: 2, scope: !994)
!1011 = !DILocation(line: 164, column: 29, scope: !994)
!1012 = !DILocation(line: 165, column: 2, scope: !994)
!1013 = !DILocation(line: 165, column: 24, scope: !994)
!1014 = !DILocation(line: 166, column: 2, scope: !994)
!1015 = !DILocation(line: 166, column: 8, scope: !994)
!1016 = !DILocation(line: 167, column: 2, scope: !994)
!1017 = !DILocation(line: 167, column: 6, scope: !994)
!1018 = !DILocation(line: 171, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !994, file: !3, line: 171, column: 6)
!1020 = !DILocation(line: 171, column: 16, scope: !1019)
!1021 = !DILocation(line: 171, column: 49, scope: !1019)
!1022 = !DILocation(line: 172, column: 7, scope: !1019)
!1023 = !DILocation(line: 172, column: 16, scope: !1019)
!1024 = !DILocation(line: 171, column: 6, scope: !994)
!1025 = !DILocation(line: 173, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 172, column: 46)
!1027 = !DILocation(line: 176, column: 43, scope: !994)
!1028 = !DILocation(line: 176, column: 15, scope: !994)
!1029 = !DILocation(line: 176, column: 13, scope: !994)
!1030 = !DILocation(line: 177, column: 16, scope: !994)
!1031 = !DILocation(line: 177, column: 26, scope: !994)
!1032 = !DILocation(line: 177, column: 24, scope: !994)
!1033 = !DILocation(line: 177, column: 33, scope: !994)
!1034 = !DILocation(line: 177, column: 14, scope: !994)
!1035 = !DILocation(line: 181, column: 2, scope: !994)
!1036 = !DILocation(line: 181, column: 9, scope: !994)
!1037 = !DILocation(line: 192, column: 8, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 192, column: 7)
!1039 = distinct !DILexicalBlock(scope: !994, file: !3, line: 181, column: 21)
!1040 = !DILocation(line: 192, column: 19, scope: !1038)
!1041 = !DILocation(line: 192, column: 31, scope: !1038)
!1042 = !DILocation(line: 192, column: 16, scope: !1038)
!1043 = !DILocation(line: 192, column: 44, scope: !1038)
!1044 = !DILocation(line: 193, column: 8, scope: !1038)
!1045 = !DILocation(line: 193, column: 23, scope: !1038)
!1046 = !DILocation(line: 193, column: 35, scope: !1038)
!1047 = !DILocation(line: 193, column: 20, scope: !1038)
!1048 = !DILocation(line: 192, column: 7, scope: !1039)
!1049 = !DILocation(line: 197, column: 17, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 193, column: 51)
!1051 = !DILocation(line: 198, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 198, column: 8)
!1053 = !DILocation(line: 198, column: 8, scope: !1050)
!1054 = !DILocation(line: 200, column: 41, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 198, column: 14)
!1056 = !DILocation(line: 201, column: 13, scope: !1055)
!1057 = !DILocation(line: 200, column: 9, scope: !1055)
!1058 = !DILocation(line: 199, column: 14, scope: !1055)
!1059 = !DILocation(line: 204, column: 5, scope: !1055)
!1060 = !DILocation(line: 214, column: 5, scope: !1055)
!1061 = !DILocation(line: 215, column: 4, scope: !1055)
!1062 = !DILocation(line: 216, column: 3, scope: !1050)
!1063 = !DILocation(line: 218, column: 16, scope: !1039)
!1064 = !DILocation(line: 218, column: 28, scope: !1039)
!1065 = !DILocation(line: 218, column: 14, scope: !1039)
!1066 = distinct !{!1066, !1035, !1067, !981, !982}
!1067 = !DILocation(line: 219, column: 2, scope: !994)
!1068 = !DILocation(line: 221, column: 2, scope: !994)
!1069 = !DILocation(line: 222, column: 1, scope: !994)
!1070 = !DISubprogram(name: "acpi_ns_get_normalized_pathname", scope: !1071, file: !1071, line: 261, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1071 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!110, !68, !24}
!1074 = !DISubprogram(name: "acpi_warning", scope: !1075, file: !1075, line: 912, type: !1076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1075 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !1078, !30, !1078, null}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1079 = !DISubprogram(name: "acpi_ut_get_region_name", scope: !1080, file: !1080, line: 235, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1080 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!1078, !24}
!1083 = distinct !DISubprogram(name: "acpi_ut_delete_address_lists", scope: !3, file: !3, line: 237, type: !1084, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1086)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null}
!1086 = !{!1087, !1088, !1089}
!1087 = !DILocalVariable(name: "next", scope: !1083, file: !3, line: 239, type: !836)
!1088 = !DILocalVariable(name: "range_info", scope: !1083, file: !3, line: 240, type: !836)
!1089 = !DILocalVariable(name: "i", scope: !1083, file: !3, line: 241, type: !1090)
!1090 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1091 = !DILocation(line: 239, column: 2, scope: !1083)
!1092 = !DILocation(line: 239, column: 29, scope: !1083)
!1093 = !DILocation(line: 240, column: 2, scope: !1083)
!1094 = !DILocation(line: 240, column: 29, scope: !1083)
!1095 = !DILocation(line: 241, column: 2, scope: !1083)
!1096 = !DILocation(line: 241, column: 6, scope: !1083)
!1097 = !DILocation(line: 245, column: 9, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 245, column: 2)
!1099 = !DILocation(line: 245, column: 7, scope: !1098)
!1100 = !DILocation(line: 245, column: 14, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 245, column: 2)
!1102 = !DILocation(line: 245, column: 16, scope: !1101)
!1103 = !DILocation(line: 245, column: 2, scope: !1098)
!1104 = !DILocation(line: 246, column: 38, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 245, column: 47)
!1106 = !DILocation(line: 246, column: 10, scope: !1105)
!1107 = !DILocation(line: 246, column: 8, scope: !1105)
!1108 = !DILocation(line: 248, column: 3, scope: !1105)
!1109 = !DILocation(line: 248, column: 10, scope: !1105)
!1110 = !DILocation(line: 249, column: 17, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 248, column: 16)
!1112 = !DILocation(line: 249, column: 15, scope: !1111)
!1113 = !DILocation(line: 250, column: 11, scope: !1111)
!1114 = !DILocation(line: 250, column: 23, scope: !1111)
!1115 = !DILocation(line: 250, column: 9, scope: !1111)
!1116 = !DILocation(line: 251, column: 4, scope: !1111)
!1117 = distinct !{!1117, !1108, !1118, !981, !982}
!1118 = !DILocation(line: 252, column: 3, scope: !1105)
!1119 = !DILocation(line: 254, column: 31, scope: !1105)
!1120 = !DILocation(line: 254, column: 3, scope: !1105)
!1121 = !DILocation(line: 254, column: 34, scope: !1105)
!1122 = !DILocation(line: 255, column: 2, scope: !1105)
!1123 = !DILocation(line: 245, column: 43, scope: !1101)
!1124 = !DILocation(line: 245, column: 2, scope: !1101)
!1125 = distinct !{!1125, !1103, !1126, !981, !982}
!1126 = !DILocation(line: 255, column: 2, scope: !1098)
!1127 = !DILocation(line: 256, column: 1, scope: !1083)
!1128 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1129, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1135)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!149, !1131, !36}
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 61, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1133, line: 72, baseType: !1134)
!1133 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1133, line: 16, baseType: !38)
!1135 = !{!1136, !1137, !1138}
!1136 = !DILocalVariable(name: "size", arg: 1, scope: !1128, file: !12, line: 591, type: !1131)
!1137 = !DILocalVariable(name: "flags", arg: 2, scope: !1128, file: !12, line: 591, type: !36)
!1138 = !DILocalVariable(name: "index", scope: !1139, file: !12, line: 594, type: !7)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !12, line: 593, column: 42)
!1140 = distinct !DILexicalBlock(scope: !1128, file: !12, line: 593, column: 6)
!1141 = !DILocation(line: 591, column: 61, scope: !1128)
!1142 = !DILocation(line: 591, column: 73, scope: !1128)
!1143 = !DILocation(line: 593, column: 27, scope: !1140)
!1144 = !DILocation(line: 593, column: 6, scope: !1140)
!1145 = !DILocation(line: 593, column: 33, scope: !1140)
!1146 = !DILocation(line: 593, column: 36, scope: !1140)
!1147 = !DILocation(line: 593, column: 6, scope: !1128)
!1148 = !DILocation(line: 594, column: 3, scope: !1139)
!1149 = !DILocation(line: 594, column: 16, scope: !1139)
!1150 = !DILocation(line: 596, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1139, file: !12, line: 596, column: 7)
!1152 = !DILocation(line: 596, column: 12, scope: !1151)
!1153 = !DILocation(line: 596, column: 7, scope: !1139)
!1154 = !DILocation(line: 597, column: 25, scope: !1151)
!1155 = !DILocation(line: 597, column: 31, scope: !1151)
!1156 = !DILocation(line: 597, column: 11, scope: !1151)
!1157 = !DILocation(line: 597, column: 4, scope: !1151)
!1158 = !DILocation(line: 599, column: 11, scope: !1139)
!1159 = !DILocation(line: 599, column: 9, scope: !1139)
!1160 = !DILocation(line: 601, column: 33, scope: !1139)
!1161 = !DILocation(line: 601, column: 40, scope: !1139)
!1162 = !DILocation(line: 601, column: 20, scope: !1139)
!1163 = !DILocation(line: 601, column: 5, scope: !1139)
!1164 = !DILocation(line: 601, column: 51, scope: !1139)
!1165 = !DILocation(line: 602, column: 5, scope: !1139)
!1166 = !DILocation(line: 602, column: 12, scope: !1139)
!1167 = !DILocation(line: 600, column: 10, scope: !1139)
!1168 = !DILocation(line: 600, column: 3, scope: !1139)
!1169 = !DILocation(line: 603, column: 2, scope: !1140)
!1170 = !DILocation(line: 604, column: 19, scope: !1128)
!1171 = !DILocation(line: 604, column: 25, scope: !1128)
!1172 = !DILocation(line: 604, column: 9, scope: !1128)
!1173 = !DILocation(line: 604, column: 2, scope: !1128)
!1174 = !DILocation(line: 605, column: 1, scope: !1128)
!1175 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1176, file: !1176, line: 65, type: !1177, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1176 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!38}
!1179 = !DILocation(line: 67, column: 9, scope: !1175)
!1180 = !DILocation(line: 67, column: 2, scope: !1175)
!1181 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1176, file: !1176, line: 120, type: !1182, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1090, !38}
!1184 = !{!1185}
!1185 = !DILocalVariable(name: "flags", arg: 1, scope: !1181, file: !1176, line: 120, type: !38)
!1186 = !DILocation(line: 120, column: 67, scope: !1181)
!1187 = !DILocation(line: 122, column: 11, scope: !1181)
!1188 = !DILocation(line: 122, column: 17, scope: !1181)
!1189 = !DILocation(line: 122, column: 9, scope: !1181)
!1190 = !DILocation(line: 122, column: 2, scope: !1181)
!1191 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1192 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1193, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1197)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!7, !1131, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !1196)
!1196 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1197 = !{!1198, !1199}
!1198 = !DILocalVariable(name: "size", arg: 1, scope: !1192, file: !12, line: 444, type: !1131)
!1199 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1192, file: !12, line: 445, type: !1195)
!1200 = !DILocation(line: 444, column: 60, scope: !1192)
!1201 = !DILocation(line: 445, column: 16, scope: !1192)
!1202 = !DILocation(line: 447, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 447, column: 6)
!1204 = !DILocation(line: 447, column: 6, scope: !1192)
!1205 = !DILocation(line: 448, column: 3, scope: !1203)
!1206 = !DILocation(line: 450, column: 6, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 450, column: 6)
!1208 = !DILocation(line: 450, column: 11, scope: !1207)
!1209 = !DILocation(line: 450, column: 6, scope: !1192)
!1210 = !DILocation(line: 451, column: 3, scope: !1207)
!1211 = !DILocation(line: 453, column: 32, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 453, column: 6)
!1213 = !DILocation(line: 453, column: 37, scope: !1212)
!1214 = !DILocation(line: 453, column: 42, scope: !1212)
!1215 = !DILocation(line: 453, column: 45, scope: !1212)
!1216 = !DILocation(line: 453, column: 50, scope: !1212)
!1217 = !DILocation(line: 453, column: 6, scope: !1192)
!1218 = !DILocation(line: 454, column: 3, scope: !1212)
!1219 = !DILocation(line: 455, column: 32, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 455, column: 6)
!1221 = !DILocation(line: 455, column: 37, scope: !1220)
!1222 = !DILocation(line: 455, column: 43, scope: !1220)
!1223 = !DILocation(line: 455, column: 46, scope: !1220)
!1224 = !DILocation(line: 455, column: 51, scope: !1220)
!1225 = !DILocation(line: 455, column: 6, scope: !1192)
!1226 = !DILocation(line: 456, column: 3, scope: !1220)
!1227 = !DILocation(line: 457, column: 6, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 457, column: 6)
!1229 = !DILocation(line: 457, column: 11, scope: !1228)
!1230 = !DILocation(line: 457, column: 6, scope: !1192)
!1231 = !DILocation(line: 457, column: 26, scope: !1228)
!1232 = !DILocation(line: 458, column: 6, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 458, column: 6)
!1234 = !DILocation(line: 458, column: 11, scope: !1233)
!1235 = !DILocation(line: 458, column: 6, scope: !1192)
!1236 = !DILocation(line: 458, column: 26, scope: !1233)
!1237 = !DILocation(line: 459, column: 6, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 459, column: 6)
!1239 = !DILocation(line: 459, column: 11, scope: !1238)
!1240 = !DILocation(line: 459, column: 6, scope: !1192)
!1241 = !DILocation(line: 459, column: 26, scope: !1238)
!1242 = !DILocation(line: 460, column: 6, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 460, column: 6)
!1244 = !DILocation(line: 460, column: 11, scope: !1243)
!1245 = !DILocation(line: 460, column: 6, scope: !1192)
!1246 = !DILocation(line: 460, column: 26, scope: !1243)
!1247 = !DILocation(line: 461, column: 6, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 461, column: 6)
!1249 = !DILocation(line: 461, column: 11, scope: !1248)
!1250 = !DILocation(line: 461, column: 6, scope: !1192)
!1251 = !DILocation(line: 461, column: 26, scope: !1248)
!1252 = !DILocation(line: 462, column: 6, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 462, column: 6)
!1254 = !DILocation(line: 462, column: 11, scope: !1253)
!1255 = !DILocation(line: 462, column: 6, scope: !1192)
!1256 = !DILocation(line: 462, column: 26, scope: !1253)
!1257 = !DILocation(line: 463, column: 6, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 463, column: 6)
!1259 = !DILocation(line: 463, column: 11, scope: !1258)
!1260 = !DILocation(line: 463, column: 6, scope: !1192)
!1261 = !DILocation(line: 463, column: 26, scope: !1258)
!1262 = !DILocation(line: 464, column: 6, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 464, column: 6)
!1264 = !DILocation(line: 464, column: 11, scope: !1263)
!1265 = !DILocation(line: 464, column: 6, scope: !1192)
!1266 = !DILocation(line: 464, column: 26, scope: !1263)
!1267 = !DILocation(line: 465, column: 6, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 465, column: 6)
!1269 = !DILocation(line: 465, column: 11, scope: !1268)
!1270 = !DILocation(line: 465, column: 6, scope: !1192)
!1271 = !DILocation(line: 465, column: 26, scope: !1268)
!1272 = !DILocation(line: 466, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 466, column: 6)
!1274 = !DILocation(line: 466, column: 11, scope: !1273)
!1275 = !DILocation(line: 466, column: 6, scope: !1192)
!1276 = !DILocation(line: 466, column: 26, scope: !1273)
!1277 = !DILocation(line: 467, column: 6, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 467, column: 6)
!1279 = !DILocation(line: 467, column: 11, scope: !1278)
!1280 = !DILocation(line: 467, column: 6, scope: !1192)
!1281 = !DILocation(line: 467, column: 26, scope: !1278)
!1282 = !DILocation(line: 468, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 468, column: 6)
!1284 = !DILocation(line: 468, column: 11, scope: !1283)
!1285 = !DILocation(line: 468, column: 6, scope: !1192)
!1286 = !DILocation(line: 468, column: 26, scope: !1283)
!1287 = !DILocation(line: 469, column: 6, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 469, column: 6)
!1289 = !DILocation(line: 469, column: 11, scope: !1288)
!1290 = !DILocation(line: 469, column: 6, scope: !1192)
!1291 = !DILocation(line: 469, column: 26, scope: !1288)
!1292 = !DILocation(line: 470, column: 6, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 470, column: 6)
!1294 = !DILocation(line: 470, column: 11, scope: !1293)
!1295 = !DILocation(line: 470, column: 6, scope: !1192)
!1296 = !DILocation(line: 470, column: 26, scope: !1293)
!1297 = !DILocation(line: 471, column: 6, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 471, column: 6)
!1299 = !DILocation(line: 471, column: 11, scope: !1298)
!1300 = !DILocation(line: 471, column: 6, scope: !1192)
!1301 = !DILocation(line: 471, column: 26, scope: !1298)
!1302 = !DILocation(line: 472, column: 6, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 472, column: 6)
!1304 = !DILocation(line: 472, column: 11, scope: !1303)
!1305 = !DILocation(line: 472, column: 6, scope: !1192)
!1306 = !DILocation(line: 472, column: 26, scope: !1303)
!1307 = !DILocation(line: 473, column: 6, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 473, column: 6)
!1309 = !DILocation(line: 473, column: 11, scope: !1308)
!1310 = !DILocation(line: 473, column: 6, scope: !1192)
!1311 = !DILocation(line: 473, column: 26, scope: !1308)
!1312 = !DILocation(line: 474, column: 6, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 474, column: 6)
!1314 = !DILocation(line: 474, column: 11, scope: !1313)
!1315 = !DILocation(line: 474, column: 6, scope: !1192)
!1316 = !DILocation(line: 474, column: 27, scope: !1313)
!1317 = !DILocation(line: 475, column: 6, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 475, column: 6)
!1319 = !DILocation(line: 475, column: 11, scope: !1318)
!1320 = !DILocation(line: 475, column: 6, scope: !1192)
!1321 = !DILocation(line: 475, column: 32, scope: !1318)
!1322 = !DILocation(line: 477, column: 50, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1192, file: !12, line: 477, column: 6)
!1324 = !{i8 0, i8 2}
!1325 = !{}
!1326 = !DILocation(line: 477, column: 6, scope: !1192)
!1327 = !DILocation(line: 478, column: 3, scope: !1323)
!1328 = !DILocation(line: 478, column: 3, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !12, line: 478, column: 3)
!1330 = distinct !DILexicalBlock(scope: !1323, file: !12, line: 478, column: 3)
!1331 = !{i32 -2143041944}
!1332 = !DILocation(line: 478, column: 3, scope: !1330)
!1333 = !DILocation(line: 480, column: 3, scope: !1323)
!1334 = !DILocation(line: 480, column: 3, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1323, file: !12, line: 480, column: 3)
!1336 = !DILocation(line: 480, column: 3, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1335, file: !12, line: 480, column: 3)
!1338 = !DILocation(line: 480, column: 3, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !12, line: 480, column: 3)
!1340 = !{i64 2151925555, i64 2151925584, i64 2151925630, i64 2151925688, i64 2151925742, i64 2151925796, i64 2151925851, i64 2151925882}
!1341 = !DILocation(line: 483, column: 2, scope: !1192)
!1342 = !DILocation(line: 484, column: 1, scope: !1192)
!1343 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!149, !1346, !36, !1131}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1348, line: 11, flags: DIFlagFwdDecl)
!1348 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1349 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1350, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1352)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!11, !36, !38}
!1352 = !{!1353, !1354}
!1353 = !DILocalVariable(name: "flags", arg: 1, scope: !1349, file: !12, line: 401, type: !36)
!1354 = !DILocalVariable(name: "caller", arg: 2, scope: !1349, file: !12, line: 401, type: !38)
!1355 = !DILocation(line: 401, column: 67, scope: !1349)
!1356 = !DILocation(line: 401, column: 88, scope: !1349)
!1357 = !DILocation(line: 407, column: 6, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1349, file: !12, line: 407, column: 6)
!1359 = !DILocation(line: 407, column: 6, scope: !1349)
!1360 = !DILocation(line: 413, column: 3, scope: !1358)
!1361 = !DILocation(line: 423, column: 38, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1349, file: !12, line: 423, column: 6)
!1363 = !DILocation(line: 423, column: 44, scope: !1362)
!1364 = !DILocation(line: 423, column: 6, scope: !1349)
!1365 = !DILocation(line: 424, column: 3, scope: !1362)
!1366 = !DILocation(line: 426, column: 3, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1349, file: !12, line: 425, column: 6)
!1368 = !DILocation(line: 429, column: 1, scope: !1349)
!1369 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1370 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1084, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1371 = distinct !DISubprogram(name: "native_save_fl", scope: !1176, file: !1176, line: 17, type: !1177, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1372)
!1372 = !{!1373}
!1373 = !DILocalVariable(name: "flags", scope: !1371, file: !1176, line: 19, type: !38)
!1374 = !DILocation(line: 19, column: 2, scope: !1371)
!1375 = !DILocation(line: 19, column: 16, scope: !1371)
!1376 = !DILocation(line: 26, column: 2, scope: !1371)
!1377 = !{i64 1515474, i64 1515495}
!1378 = !DILocation(line: 32, column: 9, scope: !1371)
!1379 = !DILocation(line: 33, column: 1, scope: !1371)
!1380 = !DILocation(line: 32, column: 2, scope: !1371)
!1381 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{null, !1384}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
