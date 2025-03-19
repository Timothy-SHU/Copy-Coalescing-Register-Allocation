; ModuleID = 'drivers/acpi/acpica/evrgnini.c'
source_filename = "drivers/acpi/acpica/evrgnini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_mem_space_context = type { i32, i64, ptr, ptr }
%struct.acpi_mem_mapping = type { i64, ptr, i64, ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_addr_handler = type { ptr, i8, i8, i16, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_pci_id = type { i16, i16, i16, i16 }
%struct.acpi_pnp_device_id = type { i32, ptr }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }
%struct.acpi_data_table_mapping = type { ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_notify_common = type { ptr, i8, i8, i16, i8, [2 x ptr], ptr }

@acpi_gbl_root_node = external dso_local global ptr, align 8
@_acpi_module_name = internal constant [9 x i8] c"evrgnini\00", align 1, !dbg !0
@.str = private unnamed_addr constant [58 x i8] c"Could not install PciConfig handler for Root Bridge %4.4s\00", align 1, !dbg !818
@.str.1 = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1, !dbg !823
@.str.2 = private unnamed_addr constant [5 x i8] c"_SEG\00", align 1, !dbg !828
@.str.3 = private unnamed_addr constant [5 x i8] c"_BBN\00", align 1, !dbg !830
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !832

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_system_memory_region_setup(ptr noundef %handle, i32 noundef %function, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !848 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %region_desc = alloca ptr, align 8
  %local_region_context = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !850, metadata !DIExpression()), !dbg !857
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !851, metadata !DIExpression()), !dbg !858
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !852, metadata !DIExpression()), !dbg !859
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !853, metadata !DIExpression()), !dbg !860
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_desc) #13, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %region_desc, metadata !854, metadata !DIExpression()), !dbg !862
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !863
  store ptr %0, ptr %region_desc, align 8, !dbg !862
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_region_context) #13, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %local_region_context, metadata !855, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #13, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !856, metadata !DIExpression()), !dbg !867
  %1 = load i32, ptr %function.addr, align 4, !dbg !868
  %cmp = icmp eq i32 %1, 1, !dbg !870
  br i1 %cmp, label %if.then, label %if.end5, !dbg !871

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %region_context.addr, align 8, !dbg !872
  %3 = load ptr, ptr %2, align 8, !dbg !875
  %tobool = icmp ne ptr %3, null, !dbg !875
  br i1 %tobool, label %if.then1, label %if.end, !dbg !876

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %region_context.addr, align 8, !dbg !877
  %5 = load ptr, ptr %4, align 8, !dbg !879
  store ptr %5, ptr %local_region_context, align 8, !dbg !880
  br label %while.cond, !dbg !881

while.cond:                                       ; preds = %while.body, %if.then1
  %6 = load ptr, ptr %local_region_context, align 8, !dbg !882
  %first_mm = getelementptr inbounds %struct.acpi_mem_space_context, ptr %6, i32 0, i32 3, !dbg !883
  %7 = load ptr, ptr %first_mm, align 8, !dbg !883
  %tobool2 = icmp ne ptr %7, null, !dbg !881
  br i1 %tobool2, label %while.body, label %while.end, !dbg !881

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %local_region_context, align 8, !dbg !884
  %first_mm3 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %8, i32 0, i32 3, !dbg !886
  %9 = load ptr, ptr %first_mm3, align 8, !dbg !886
  store ptr %9, ptr %mm, align 8, !dbg !887
  %10 = load ptr, ptr %mm, align 8, !dbg !888
  %next_mm = getelementptr inbounds %struct.acpi_mem_mapping, ptr %10, i32 0, i32 3, !dbg !889
  %11 = load ptr, ptr %next_mm, align 8, !dbg !889
  %12 = load ptr, ptr %local_region_context, align 8, !dbg !890
  %first_mm4 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %12, i32 0, i32 3, !dbg !891
  store ptr %11, ptr %first_mm4, align 8, !dbg !892
  %13 = load ptr, ptr %mm, align 8, !dbg !893
  %logical_address = getelementptr inbounds %struct.acpi_mem_mapping, ptr %13, i32 0, i32 1, !dbg !894
  %14 = load ptr, ptr %logical_address, align 8, !dbg !894
  %15 = load ptr, ptr %mm, align 8, !dbg !895
  %length = getelementptr inbounds %struct.acpi_mem_mapping, ptr %15, i32 0, i32 2, !dbg !896
  %16 = load i64, ptr %length, align 8, !dbg !896
  call void @acpi_os_unmap_memory(ptr noundef %14, i64 noundef %16) #14, !dbg !897
  %17 = load ptr, ptr %mm, align 8, !dbg !898
  call void @acpi_os_free(ptr noundef %17) #14, !dbg !898
  br label %while.cond, !dbg !881, !llvm.loop !899

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %local_region_context, align 8, !dbg !903
  call void @acpi_os_free(ptr noundef %18) #14, !dbg !903
  %19 = load ptr, ptr %region_context.addr, align 8, !dbg !904
  store ptr null, ptr %19, align 8, !dbg !905
  br label %if.end, !dbg !906

if.end:                                           ; preds = %while.end, %if.then
  store i32 0, ptr %retval, align 4, !dbg !907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !907

if.end5:                                          ; preds = %entry
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 32) #14, !dbg !908
  store ptr %call, ptr %local_region_context, align 8, !dbg !909
  %20 = load ptr, ptr %local_region_context, align 8, !dbg !910
  %tobool6 = icmp ne ptr %20, null, !dbg !912
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !913

if.then7:                                         ; preds = %if.end5
  store i32 4, ptr %retval, align 4, !dbg !914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !914

if.end8:                                          ; preds = %if.end5
  %21 = load ptr, ptr %region_desc, align 8, !dbg !916
  %length9 = getelementptr inbounds %struct.acpi_object_region, ptr %21, i32 0, i32 10, !dbg !917
  %22 = load i32, ptr %length9, align 8, !dbg !917
  %23 = load ptr, ptr %local_region_context, align 8, !dbg !918
  %length10 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %23, i32 0, i32 0, !dbg !919
  store i32 %22, ptr %length10, align 8, !dbg !920
  %24 = load ptr, ptr %region_desc, align 8, !dbg !921
  %address = getelementptr inbounds %struct.acpi_object_region, ptr %24, i32 0, i32 9, !dbg !922
  %25 = load i64, ptr %address, align 8, !dbg !922
  %26 = load ptr, ptr %local_region_context, align 8, !dbg !923
  %address11 = getelementptr inbounds %struct.acpi_mem_space_context, ptr %26, i32 0, i32 1, !dbg !924
  store i64 %25, ptr %address11, align 8, !dbg !925
  %27 = load ptr, ptr %local_region_context, align 8, !dbg !926
  %28 = load ptr, ptr %region_context.addr, align 8, !dbg !927
  store ptr %27, ptr %28, align 8, !dbg !928
  store i32 0, ptr %retval, align 4, !dbg !929
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !929

cleanup:                                          ; preds = %if.end8, %if.then7, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #13, !dbg !930
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_region_context) #13, !dbg !930
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_desc) #13, !dbg !930
  %29 = load i32, ptr %retval, align 4, !dbg !930
  ret i32 %29, !dbg !930
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !931 dso_local void @acpi_os_unmap_memory(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !935 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !940, metadata !DIExpression()), !dbg !941
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !942
  call void @kfree(ptr noundef %0) #14, !dbg !943
  ret void, !dbg !944
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !945 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !949, metadata !DIExpression()), !dbg !960
  %0 = load i64, ptr %size.addr, align 8, !dbg !961
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !962
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !950, metadata !DIExpression()), !dbg !962
  br label %do.body, !dbg !962

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !952, metadata !DIExpression()), !dbg !963
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !955, metadata !DIExpression()), !dbg !963
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !963
  %conv = zext i1 %cmp to i32, !dbg !963
  store i32 1, ptr %tmp, align 4, !dbg !963
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !964
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !964
  %1 = load i32, ptr %tmp, align 4, !dbg !963
  %call = call i64 @arch_local_save_flags() #14, !dbg !964
  store i64 %call, ptr %_flags, align 8, !dbg !964
  br label %do.cond, !dbg !964

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !964

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !956, metadata !DIExpression()), !dbg !965
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !959, metadata !DIExpression()), !dbg !965
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !965
  %conv6 = zext i1 %cmp5 to i32, !dbg !965
  store i32 1, ptr %tmp7, align 4, !dbg !965
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !966
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !966
  %2 = load i32, ptr %tmp7, align 4, !dbg !965
  %3 = load i64, ptr %_flags, align 8, !dbg !966
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !966
  store i32 %call9, ptr %tmp8, align 4, !dbg !966
  %4 = load i32, ptr %tmp8, align 4, !dbg !966
  store i32 %4, ptr %tmp1, align 4, !dbg !964
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !967
  %5 = load i32, ptr %tmp1, align 4, !dbg !962
  %tobool = icmp ne i32 %5, 0, !dbg !967
  %6 = zext i1 %tobool to i64, !dbg !967
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !967
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !968
  ret ptr %call10, !dbg !969
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_io_space_region_setup(ptr noundef %handle, i32 noundef %function, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !970 {
entry:
  %handle.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !972, metadata !DIExpression()), !dbg !976
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !973, metadata !DIExpression()), !dbg !977
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !974, metadata !DIExpression()), !dbg !978
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !975, metadata !DIExpression()), !dbg !979
  %0 = load i32, ptr %function.addr, align 4, !dbg !980
  %cmp = icmp eq i32 %0, 1, !dbg !982
  br i1 %cmp, label %if.then, label %if.else, !dbg !983

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %region_context.addr, align 8, !dbg !984
  store ptr null, ptr %1, align 8, !dbg !986
  br label %if.end, !dbg !987

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %handler_context.addr, align 8, !dbg !988
  %3 = load ptr, ptr %region_context.addr, align 8, !dbg !990
  store ptr %2, ptr %3, align 8, !dbg !991
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !992
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_pci_config_region_setup(ptr noundef %handle, i32 noundef %function, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !993 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %pci_value = alloca i64, align 8
  %pci_id = alloca ptr, align 8
  %handler_obj = alloca ptr, align 8
  %parent_node = alloca ptr, align 8
  %pci_root_node = alloca ptr, align 8
  %pci_device_node = alloca ptr, align 8
  %region_obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !995, metadata !DIExpression()), !dbg !1014
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !996, metadata !DIExpression()), !dbg !1015
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !997, metadata !DIExpression()), !dbg !1016
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !998, metadata !DIExpression()), !dbg !1017
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %status, metadata !999, metadata !DIExpression()), !dbg !1019
  store i32 0, ptr %status, align 4, !dbg !1019
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_value) #13, !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %pci_value, metadata !1000, metadata !DIExpression()), !dbg !1021
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_id) #13, !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %pci_id, metadata !1001, metadata !DIExpression()), !dbg !1023
  %0 = load ptr, ptr %region_context.addr, align 8, !dbg !1024
  %1 = load ptr, ptr %0, align 8, !dbg !1025
  store ptr %1, ptr %pci_id, align 8, !dbg !1023
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #13, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !1009, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_node) #13, !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %parent_node, metadata !1010, metadata !DIExpression()), !dbg !1029
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_root_node) #13, !dbg !1030
  call void @llvm.dbg.declare(metadata ptr %pci_root_node, metadata !1011, metadata !DIExpression()), !dbg !1031
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_device_node) #13, !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %pci_device_node, metadata !1012, metadata !DIExpression()), !dbg !1033
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_obj) #13, !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %region_obj, metadata !1013, metadata !DIExpression()), !dbg !1035
  %2 = load ptr, ptr %handle.addr, align 8, !dbg !1036
  store ptr %2, ptr %region_obj, align 8, !dbg !1035
  %3 = load ptr, ptr %region_obj, align 8, !dbg !1037
  %handler = getelementptr inbounds %struct.acpi_object_region, ptr %3, i32 0, i32 7, !dbg !1038
  %4 = load ptr, ptr %handler, align 8, !dbg !1038
  store ptr %4, ptr %handler_obj, align 8, !dbg !1039
  %5 = load ptr, ptr %handler_obj, align 8, !dbg !1040
  %tobool = icmp ne ptr %5, null, !dbg !1040
  br i1 %tobool, label %if.end, label %if.then, !dbg !1042

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !1043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1043

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %region_context.addr, align 8, !dbg !1045
  store ptr null, ptr %6, align 8, !dbg !1046
  %7 = load i32, ptr %function.addr, align 4, !dbg !1047
  %cmp = icmp eq i32 %7, 1, !dbg !1049
  br i1 %cmp, label %if.then1, label %if.end5, !dbg !1050

if.then1:                                         ; preds = %if.end
  %8 = load ptr, ptr %pci_id, align 8, !dbg !1051
  %tobool2 = icmp ne ptr %8, null, !dbg !1051
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1054

if.then3:                                         ; preds = %if.then1
  %9 = load ptr, ptr %pci_id, align 8, !dbg !1055
  call void @acpi_os_free(ptr noundef %9) #14, !dbg !1055
  br label %if.end4, !dbg !1057

if.end4:                                          ; preds = %if.then3, %if.then1
  %10 = load i32, ptr %status, align 4, !dbg !1058
  store i32 %10, ptr %retval, align 4, !dbg !1058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1058

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %region_obj, align 8, !dbg !1059
  %node = getelementptr inbounds %struct.acpi_object_region, ptr %11, i32 0, i32 6, !dbg !1060
  %12 = load ptr, ptr %node, align 8, !dbg !1060
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 5, !dbg !1061
  %13 = load ptr, ptr %parent, align 8, !dbg !1061
  store ptr %13, ptr %parent_node, align 8, !dbg !1062
  %14 = load ptr, ptr %handler_obj, align 8, !dbg !1063
  %node6 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %14, i32 0, i32 8, !dbg !1065
  %15 = load ptr, ptr %node6, align 8, !dbg !1065
  %16 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1066
  %cmp7 = icmp eq ptr %15, %16, !dbg !1067
  br i1 %cmp7, label %if.then8, label %if.else22, !dbg !1068

if.then8:                                         ; preds = %if.end5
  %17 = load ptr, ptr %parent_node, align 8, !dbg !1069
  store ptr %17, ptr %pci_root_node, align 8, !dbg !1071
  br label %while.cond, !dbg !1072

while.cond:                                       ; preds = %if.end20, %if.then8
  %18 = load ptr, ptr %pci_root_node, align 8, !dbg !1073
  %19 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1074
  %cmp9 = icmp ne ptr %18, %19, !dbg !1075
  br i1 %cmp9, label %while.body, label %while.end, !dbg !1072

while.body:                                       ; preds = %while.cond
  %20 = load ptr, ptr %pci_root_node, align 8, !dbg !1076
  %call = call zeroext i8 @acpi_ev_is_pci_root_bridge(ptr noundef %20) #14, !dbg !1079
  %tobool10 = icmp ne i8 %call, 0, !dbg !1079
  br i1 %tobool10, label %if.then11, label %if.end20, !dbg !1080

if.then11:                                        ; preds = %while.body
  %21 = load ptr, ptr %pci_root_node, align 8, !dbg !1081
  %call12 = call i32 @acpi_install_address_space_handler(ptr noundef %21, i8 noundef zeroext 2, ptr noundef null, ptr noundef null, ptr noundef null) #14, !dbg !1083
  store i32 %call12, ptr %status, align 4, !dbg !1084
  %22 = load i32, ptr %status, align 4, !dbg !1085
  %tobool13 = icmp ne i32 %22, 0, !dbg !1085
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !1087

if.then14:                                        ; preds = %if.then11
  %23 = load i32, ptr %status, align 4, !dbg !1088
  %cmp15 = icmp eq i32 %23, 25, !dbg !1091
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !1092

if.then16:                                        ; preds = %if.then14
  br label %if.end18, !dbg !1093

if.else:                                          ; preds = %if.then14
  %24 = load i32, ptr %status, align 4, !dbg !1095
  %25 = load ptr, ptr %pci_root_node, align 8, !dbg !1095
  %call17 = call ptr @acpi_ut_get_node_name(ptr noundef %25) #14, !dbg !1095
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 204, i32 noundef %24, ptr noundef @.str, ptr noundef %call17) #14, !dbg !1095
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then16
  br label %if.end19, !dbg !1097

if.end19:                                         ; preds = %if.end18, %if.then11
  br label %while.end, !dbg !1098

if.end20:                                         ; preds = %while.body
  %26 = load ptr, ptr %pci_root_node, align 8, !dbg !1099
  %parent21 = getelementptr inbounds %struct.acpi_namespace_node, ptr %26, i32 0, i32 5, !dbg !1100
  %27 = load ptr, ptr %parent21, align 8, !dbg !1100
  store ptr %27, ptr %pci_root_node, align 8, !dbg !1101
  br label %while.cond, !dbg !1072, !llvm.loop !1102

while.end:                                        ; preds = %if.end19, %while.cond
  br label %if.end24, !dbg !1104

if.else22:                                        ; preds = %if.end5
  %28 = load ptr, ptr %handler_obj, align 8, !dbg !1105
  %node23 = getelementptr inbounds %struct.acpi_object_addr_handler, ptr %28, i32 0, i32 8, !dbg !1107
  %29 = load ptr, ptr %node23, align 8, !dbg !1107
  store ptr %29, ptr %pci_root_node, align 8, !dbg !1108
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %while.end
  %30 = load ptr, ptr %region_obj, align 8, !dbg !1109
  %flags = getelementptr inbounds %struct.acpi_object_region, ptr %30, i32 0, i32 4, !dbg !1111
  %31 = load i8, ptr %flags, align 4, !dbg !1111
  %conv = zext i8 %31 to i32, !dbg !1109
  %and = and i32 %conv, 32, !dbg !1112
  %tobool25 = icmp ne i32 %and, 0, !dbg !1112
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1113

if.then26:                                        ; preds = %if.end24
  store i32 0, ptr %retval, align 4, !dbg !1114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1114

if.end27:                                         ; preds = %if.end24
  %call28 = call ptr @acpi_os_allocate_zeroed(i64 noundef 8) #14, !dbg !1116
  store ptr %call28, ptr %pci_id, align 8, !dbg !1117
  %32 = load ptr, ptr %pci_id, align 8, !dbg !1118
  %tobool29 = icmp ne ptr %32, null, !dbg !1118
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !1120

if.then30:                                        ; preds = %if.end27
  store i32 4, ptr %retval, align 4, !dbg !1121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1121

if.end31:                                         ; preds = %if.end27
  %33 = load ptr, ptr %region_obj, align 8, !dbg !1123
  %node32 = getelementptr inbounds %struct.acpi_object_region, ptr %33, i32 0, i32 6, !dbg !1124
  %34 = load ptr, ptr %node32, align 8, !dbg !1124
  store ptr %34, ptr %pci_device_node, align 8, !dbg !1125
  br label %while.cond33, !dbg !1126

while.cond33:                                     ; preds = %while.body38, %if.end31
  %35 = load ptr, ptr %pci_device_node, align 8, !dbg !1127
  %tobool34 = icmp ne ptr %35, null, !dbg !1127
  br i1 %tobool34, label %land.rhs, label %land.end, !dbg !1128

land.rhs:                                         ; preds = %while.cond33
  %36 = load ptr, ptr %pci_device_node, align 8, !dbg !1129
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %36, i32 0, i32 2, !dbg !1130
  %37 = load i8, ptr %type, align 1, !dbg !1130
  %conv35 = zext i8 %37 to i32, !dbg !1129
  %cmp36 = icmp ne i32 %conv35, 6, !dbg !1131
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond33
  %38 = phi i1 [ false, %while.cond33 ], [ %cmp36, %land.rhs ], !dbg !1132
  br i1 %38, label %while.body38, label %while.end40, !dbg !1126

while.body38:                                     ; preds = %land.end
  %39 = load ptr, ptr %pci_device_node, align 8, !dbg !1133
  %parent39 = getelementptr inbounds %struct.acpi_namespace_node, ptr %39, i32 0, i32 5, !dbg !1135
  %40 = load ptr, ptr %parent39, align 8, !dbg !1135
  store ptr %40, ptr %pci_device_node, align 8, !dbg !1136
  br label %while.cond33, !dbg !1126, !llvm.loop !1137

while.end40:                                      ; preds = %land.end
  %41 = load ptr, ptr %pci_device_node, align 8, !dbg !1139
  %tobool41 = icmp ne ptr %41, null, !dbg !1139
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !1141

if.then42:                                        ; preds = %while.end40
  %42 = load ptr, ptr %pci_id, align 8, !dbg !1142
  call void @acpi_os_free(ptr noundef %42) #14, !dbg !1142
  store i32 12291, ptr %retval, align 4, !dbg !1144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1144

if.end43:                                         ; preds = %while.end40
  %43 = load ptr, ptr %pci_device_node, align 8, !dbg !1145
  %call44 = call i32 @acpi_ut_evaluate_numeric_object(ptr noundef @.str.1, ptr noundef %43, ptr noundef %pci_value) #14, !dbg !1146
  store i32 %call44, ptr %status, align 4, !dbg !1147
  %44 = load i32, ptr %status, align 4, !dbg !1148
  %tobool45 = icmp ne i32 %44, 0, !dbg !1148
  br i1 %tobool45, label %if.end52, label %if.then46, !dbg !1150

if.then46:                                        ; preds = %if.end43
  %45 = load i64, ptr %pci_value, align 8, !dbg !1151
  %conv47 = trunc i64 %45 to i32, !dbg !1151
  %shr = lshr i32 %conv47, 16, !dbg !1151
  %conv48 = trunc i32 %shr to i16, !dbg !1151
  %46 = load ptr, ptr %pci_id, align 8, !dbg !1153
  %device = getelementptr inbounds %struct.acpi_pci_id, ptr %46, i32 0, i32 2, !dbg !1154
  store i16 %conv48, ptr %device, align 2, !dbg !1155
  %47 = load i64, ptr %pci_value, align 8, !dbg !1156
  %conv49 = trunc i64 %47 to i32, !dbg !1156
  %conv50 = trunc i32 %conv49 to i16, !dbg !1156
  %48 = load ptr, ptr %pci_id, align 8, !dbg !1157
  %function51 = getelementptr inbounds %struct.acpi_pci_id, ptr %48, i32 0, i32 3, !dbg !1158
  store i16 %conv50, ptr %function51, align 2, !dbg !1159
  br label %if.end52, !dbg !1160

if.end52:                                         ; preds = %if.then46, %if.end43
  %49 = load ptr, ptr %pci_root_node, align 8, !dbg !1161
  %call53 = call i32 @acpi_ut_evaluate_numeric_object(ptr noundef @.str.2, ptr noundef %49, ptr noundef %pci_value) #14, !dbg !1162
  store i32 %call53, ptr %status, align 4, !dbg !1163
  %50 = load i32, ptr %status, align 4, !dbg !1164
  %tobool54 = icmp ne i32 %50, 0, !dbg !1164
  br i1 %tobool54, label %if.end58, label %if.then55, !dbg !1166

if.then55:                                        ; preds = %if.end52
  %51 = load i64, ptr %pci_value, align 8, !dbg !1167
  %conv56 = trunc i64 %51 to i32, !dbg !1167
  %conv57 = trunc i32 %conv56 to i16, !dbg !1167
  %52 = load ptr, ptr %pci_id, align 8, !dbg !1169
  %segment = getelementptr inbounds %struct.acpi_pci_id, ptr %52, i32 0, i32 0, !dbg !1170
  store i16 %conv57, ptr %segment, align 2, !dbg !1171
  br label %if.end58, !dbg !1172

if.end58:                                         ; preds = %if.then55, %if.end52
  %53 = load ptr, ptr %pci_root_node, align 8, !dbg !1173
  %call59 = call i32 @acpi_ut_evaluate_numeric_object(ptr noundef @.str.3, ptr noundef %53, ptr noundef %pci_value) #14, !dbg !1174
  store i32 %call59, ptr %status, align 4, !dbg !1175
  %54 = load i32, ptr %status, align 4, !dbg !1176
  %tobool60 = icmp ne i32 %54, 0, !dbg !1176
  br i1 %tobool60, label %if.end64, label %if.then61, !dbg !1178

if.then61:                                        ; preds = %if.end58
  %55 = load i64, ptr %pci_value, align 8, !dbg !1179
  %conv62 = trunc i64 %55 to i32, !dbg !1179
  %conv63 = trunc i32 %conv62 to i16, !dbg !1179
  %56 = load ptr, ptr %pci_id, align 8, !dbg !1181
  %bus = getelementptr inbounds %struct.acpi_pci_id, ptr %56, i32 0, i32 1, !dbg !1182
  store i16 %conv63, ptr %bus, align 2, !dbg !1183
  br label %if.end64, !dbg !1184

if.end64:                                         ; preds = %if.then61, %if.end58
  %57 = load ptr, ptr %pci_id, align 8, !dbg !1185
  %58 = load ptr, ptr %pci_root_node, align 8, !dbg !1186
  %59 = load ptr, ptr %region_obj, align 8, !dbg !1187
  %node65 = getelementptr inbounds %struct.acpi_object_region, ptr %59, i32 0, i32 6, !dbg !1188
  %60 = load ptr, ptr %node65, align 8, !dbg !1188
  %call66 = call i32 @acpi_hw_derive_pci_id(ptr noundef %57, ptr noundef %58, ptr noundef %60) #14, !dbg !1189
  store i32 %call66, ptr %status, align 4, !dbg !1190
  %61 = load i32, ptr %status, align 4, !dbg !1191
  %tobool67 = icmp ne i32 %61, 0, !dbg !1191
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !1193

if.then68:                                        ; preds = %if.end64
  %62 = load ptr, ptr %pci_id, align 8, !dbg !1194
  call void @acpi_os_free(ptr noundef %62) #14, !dbg !1194
  %63 = load i32, ptr %status, align 4, !dbg !1196
  store i32 %63, ptr %retval, align 4, !dbg !1196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1196

if.end69:                                         ; preds = %if.end64
  %64 = load ptr, ptr %pci_id, align 8, !dbg !1197
  %65 = load ptr, ptr %region_context.addr, align 8, !dbg !1198
  store ptr %64, ptr %65, align 8, !dbg !1199
  store i32 0, ptr %retval, align 4, !dbg !1200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1200

cleanup:                                          ; preds = %if.end69, %if.then68, %if.then42, %if.then30, %if.then26, %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_obj) #13, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_device_node) #13, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_root_node) #13, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_node) #13, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #13, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_id) #13, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_value) #13, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1201
  %66 = load i32, ptr %retval, align 4, !dbg !1201
  ret i32 %66, !dbg !1201
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ev_is_pci_root_bridge(ptr noundef %node) #0 align 16 !dbg !1202 {
entry:
  %retval = alloca i8, align 1
  %node.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %hid = alloca ptr, align 8
  %cid = alloca ptr, align 8
  %i = alloca i32, align 4
  %match = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1206, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1207, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 8, ptr %hid) #13, !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %hid, metadata !1208, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 8, ptr %cid) #13, !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %cid, metadata !1214, metadata !DIExpression()), !dbg !1232
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1224, metadata !DIExpression()), !dbg !1234
  call void @llvm.lifetime.start.p0(i64 1, ptr %match) #13, !dbg !1235
  call void @llvm.dbg.declare(metadata ptr %match, metadata !1225, metadata !DIExpression()), !dbg !1236
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1237
  %call = call i32 @acpi_ut_execute_HID(ptr noundef %0, ptr noundef %hid) #14, !dbg !1238
  store i32 %call, ptr %status, align 4, !dbg !1239
  %1 = load i32, ptr %status, align 4, !dbg !1240
  %tobool = icmp ne i32 %1, 0, !dbg !1240
  br i1 %tobool, label %if.then, label %if.end, !dbg !1242

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %hid, align 8, !dbg !1245
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %2, i32 0, i32 1, !dbg !1246
  %3 = load ptr, ptr %string, align 8, !dbg !1246
  %call1 = call zeroext i8 @acpi_ut_is_pci_root_bridge(ptr noundef %3) #14, !dbg !1247
  store i8 %call1, ptr %match, align 1, !dbg !1248
  %4 = load ptr, ptr %hid, align 8, !dbg !1249
  call void @acpi_os_free(ptr noundef %4) #14, !dbg !1249
  %5 = load i8, ptr %match, align 1, !dbg !1250
  %tobool2 = icmp ne i8 %5, 0, !dbg !1250
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1252

if.then3:                                         ; preds = %if.end
  store i8 1, ptr %retval, align 1, !dbg !1253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1253

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %node.addr, align 8, !dbg !1255
  %call5 = call i32 @acpi_ut_execute_CID(ptr noundef %6, ptr noundef %cid) #14, !dbg !1256
  store i32 %call5, ptr %status, align 4, !dbg !1257
  %7 = load i32, ptr %status, align 4, !dbg !1258
  %tobool6 = icmp ne i32 %7, 0, !dbg !1258
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1260

if.then7:                                         ; preds = %if.end4
  store i8 0, ptr %retval, align 1, !dbg !1261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1261

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %i, align 4, !dbg !1263
  br label %for.cond, !dbg !1265

for.cond:                                         ; preds = %for.inc, %if.end8
  %8 = load i32, ptr %i, align 4, !dbg !1266
  %9 = load ptr, ptr %cid, align 8, !dbg !1268
  %count = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %9, i32 0, i32 0, !dbg !1269
  %10 = load i32, ptr %count, align 8, !dbg !1269
  %cmp = icmp ult i32 %8, %10, !dbg !1270
  br i1 %cmp, label %for.body, label %for.end, !dbg !1271

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %cid, align 8, !dbg !1272
  %ids = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %11, i32 0, i32 2, !dbg !1275
  %12 = load i32, ptr %i, align 4, !dbg !1276
  %idxprom = zext i32 %12 to i64, !dbg !1272
  %arrayidx = getelementptr [0 x %struct.acpi_pnp_device_id], ptr %ids, i64 0, i64 %idxprom, !dbg !1272
  %string9 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %arrayidx, i32 0, i32 1, !dbg !1277
  %13 = load ptr, ptr %string9, align 8, !dbg !1277
  %call10 = call zeroext i8 @acpi_ut_is_pci_root_bridge(ptr noundef %13) #14, !dbg !1278
  %tobool11 = icmp ne i8 %call10, 0, !dbg !1278
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !1279

if.then12:                                        ; preds = %for.body
  %14 = load ptr, ptr %cid, align 8, !dbg !1280
  call void @acpi_os_free(ptr noundef %14) #14, !dbg !1280
  store i8 1, ptr %retval, align 1, !dbg !1282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1282

if.end13:                                         ; preds = %for.body
  br label %for.inc, !dbg !1283

for.inc:                                          ; preds = %if.end13
  %15 = load i32, ptr %i, align 4, !dbg !1284
  %inc = add i32 %15, 1, !dbg !1284
  store i32 %inc, ptr %i, align 4, !dbg !1284
  br label %for.cond, !dbg !1285, !llvm.loop !1286

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %cid, align 8, !dbg !1288
  call void @acpi_os_free(ptr noundef %16) #14, !dbg !1288
  store i8 0, ptr %retval, align 1, !dbg !1289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1289

cleanup:                                          ; preds = %for.end, %if.then12, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %match) #13, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 8, ptr %cid) #13, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 8, ptr %hid) #13, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1290
  %17 = load i8, ptr %retval, align 1, !dbg !1290
  ret i8 %17, !dbg !1290
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1291 dso_local i32 @acpi_install_address_space_handler(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1295 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1299 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1303 dso_local i32 @acpi_ut_evaluate_numeric_object(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1306 dso_local i32 @acpi_hw_derive_pci_id(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1310 dso_local i32 @acpi_ut_execute_HID(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1314 dso_local zeroext i8 @acpi_ut_is_pci_root_bridge(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1317 dso_local i32 @acpi_ut_execute_CID(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_pci_bar_region_setup(ptr noundef %handle, i32 noundef %function, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !1321 {
entry:
  %handle.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1323, metadata !DIExpression()), !dbg !1327
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !1324, metadata !DIExpression()), !dbg !1328
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !1325, metadata !DIExpression()), !dbg !1329
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !1326, metadata !DIExpression()), !dbg !1330
  ret i32 0, !dbg !1331
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_cmos_region_setup(ptr noundef %handle, i32 noundef %function, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !1332 {
entry:
  %handle.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1334, metadata !DIExpression()), !dbg !1338
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !1335, metadata !DIExpression()), !dbg !1339
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !1336, metadata !DIExpression()), !dbg !1340
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !1337, metadata !DIExpression()), !dbg !1341
  ret i32 0, !dbg !1342
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_data_table_region_setup(ptr noundef %handle, i32 noundef %function, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !1343 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  %region_desc = alloca ptr, align 8
  %local_region_context = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1345, metadata !DIExpression()), !dbg !1355
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !1346, metadata !DIExpression()), !dbg !1356
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !1347, metadata !DIExpression()), !dbg !1357
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !1348, metadata !DIExpression()), !dbg !1358
  call void @llvm.lifetime.start.p0(i64 8, ptr %region_desc) #13, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %region_desc, metadata !1349, metadata !DIExpression()), !dbg !1360
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !1361
  store ptr %0, ptr %region_desc, align 8, !dbg !1360
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_region_context) #13, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %local_region_context, metadata !1350, metadata !DIExpression()), !dbg !1363
  %1 = load i32, ptr %function.addr, align 4, !dbg !1364
  %cmp = icmp eq i32 %1, 1, !dbg !1366
  br i1 %cmp, label %if.then, label %if.end2, !dbg !1367

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %region_context.addr, align 8, !dbg !1368
  %3 = load ptr, ptr %2, align 8, !dbg !1371
  %tobool = icmp ne ptr %3, null, !dbg !1371
  br i1 %tobool, label %if.then1, label %if.end, !dbg !1372

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %region_context.addr, align 8, !dbg !1373
  %5 = load ptr, ptr %4, align 8, !dbg !1373
  call void @acpi_os_free(ptr noundef %5) #14, !dbg !1373
  %6 = load ptr, ptr %region_context.addr, align 8, !dbg !1375
  store ptr null, ptr %6, align 8, !dbg !1376
  br label %if.end, !dbg !1377

if.end:                                           ; preds = %if.then1, %if.then
  store i32 0, ptr %retval, align 4, !dbg !1378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1378

if.end2:                                          ; preds = %entry
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 8) #14, !dbg !1379
  store ptr %call, ptr %local_region_context, align 8, !dbg !1380
  %7 = load ptr, ptr %local_region_context, align 8, !dbg !1381
  %tobool3 = icmp ne ptr %7, null, !dbg !1383
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1384

if.then4:                                         ; preds = %if.end2
  store i32 4, ptr %retval, align 4, !dbg !1385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1385

if.end5:                                          ; preds = %if.end2
  %8 = load ptr, ptr %region_desc, align 8, !dbg !1387
  %pointer = getelementptr inbounds %struct.acpi_object_region, ptr %8, i32 0, i32 11, !dbg !1388
  %9 = load ptr, ptr %pointer, align 8, !dbg !1388
  %10 = load ptr, ptr %local_region_context, align 8, !dbg !1389
  %pointer6 = getelementptr inbounds %struct.acpi_data_table_mapping, ptr %10, i32 0, i32 0, !dbg !1390
  store ptr %9, ptr %pointer6, align 8, !dbg !1391
  %11 = load ptr, ptr %local_region_context, align 8, !dbg !1392
  %12 = load ptr, ptr %region_context.addr, align 8, !dbg !1393
  store ptr %11, ptr %12, align 8, !dbg !1394
  store i32 0, ptr %retval, align 4, !dbg !1395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1395

cleanup:                                          ; preds = %if.end5, %if.then4, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_region_context) #13, !dbg !1396
  call void @llvm.lifetime.end.p0(i64 8, ptr %region_desc) #13, !dbg !1396
  %13 = load i32, ptr %retval, align 4, !dbg !1396
  ret i32 %13, !dbg !1396
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_default_region_setup(ptr noundef %handle, i32 noundef %function, ptr noundef %handler_context, ptr noundef %region_context) #0 align 16 !dbg !1397 {
entry:
  %handle.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %handler_context.addr = alloca ptr, align 8
  %region_context.addr = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1399, metadata !DIExpression()), !dbg !1403
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !1400, metadata !DIExpression()), !dbg !1404
  store ptr %handler_context, ptr %handler_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler_context.addr, metadata !1401, metadata !DIExpression()), !dbg !1405
  store ptr %region_context, ptr %region_context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_context.addr, metadata !1402, metadata !DIExpression()), !dbg !1406
  %0 = load i32, ptr %function.addr, align 4, !dbg !1407
  %cmp = icmp eq i32 %0, 1, !dbg !1409
  br i1 %cmp, label %if.then, label %if.else, !dbg !1410

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %region_context.addr, align 8, !dbg !1411
  store ptr null, ptr %1, align 8, !dbg !1413
  br label %if.end, !dbg !1414

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %handler_context.addr, align 8, !dbg !1415
  %3 = load ptr, ptr %region_context.addr, align 8, !dbg !1417
  store ptr %2, ptr %3, align 8, !dbg !1418
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0, !dbg !1419
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ev_initialize_region(ptr noundef %region_obj) #0 align 16 !dbg !1420 {
entry:
  %retval = alloca i32, align 4
  %region_obj.addr = alloca ptr, align 8
  %handler_obj = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %space_id = alloca i8, align 1
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %region_obj, ptr %region_obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region_obj.addr, metadata !1424, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler_obj) #13, !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %handler_obj, metadata !1425, metadata !DIExpression()), !dbg !1431
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1432
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1426, metadata !DIExpression()), !dbg !1433
  call void @llvm.lifetime.start.p0(i64 1, ptr %space_id) #13, !dbg !1434
  call void @llvm.dbg.declare(metadata ptr %space_id, metadata !1427, metadata !DIExpression()), !dbg !1435
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1436
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1428, metadata !DIExpression()), !dbg !1437
  %0 = load ptr, ptr %region_obj.addr, align 8, !dbg !1438
  %tobool = icmp ne ptr %0, null, !dbg !1438
  br i1 %tobool, label %if.end, label %if.then, !dbg !1440

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1441

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %region_obj.addr, align 8, !dbg !1443
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 4, !dbg !1445
  %2 = load i8, ptr %flags, align 4, !dbg !1445
  %conv = zext i8 %2 to i32, !dbg !1443
  %and = and i32 %conv, 8, !dbg !1446
  %tobool1 = icmp ne i32 %and, 0, !dbg !1446
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1447

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !1448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1448

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %region_obj.addr, align 8, !dbg !1450
  %flags4 = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 4, !dbg !1451
  %4 = load i8, ptr %flags4, align 4, !dbg !1452
  %conv5 = zext i8 %4 to i32, !dbg !1452
  %or = or i32 %conv5, 8, !dbg !1452
  %conv6 = trunc i32 %or to i8, !dbg !1452
  store i8 %conv6, ptr %flags4, align 4, !dbg !1452
  %5 = load ptr, ptr %region_obj.addr, align 8, !dbg !1453
  %node7 = getelementptr inbounds %struct.acpi_object_region, ptr %5, i32 0, i32 6, !dbg !1454
  %6 = load ptr, ptr %node7, align 8, !dbg !1454
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 5, !dbg !1455
  %7 = load ptr, ptr %parent, align 8, !dbg !1455
  store ptr %7, ptr %node, align 8, !dbg !1456
  %8 = load ptr, ptr %region_obj.addr, align 8, !dbg !1457
  %space_id8 = getelementptr inbounds %struct.acpi_object_region, ptr %8, i32 0, i32 5, !dbg !1458
  %9 = load i8, ptr %space_id8, align 1, !dbg !1458
  store i8 %9, ptr %space_id, align 1, !dbg !1459
  br label %while.cond, !dbg !1460

while.cond:                                       ; preds = %if.end19, %if.end3
  %10 = load ptr, ptr %node, align 8, !dbg !1461
  %tobool9 = icmp ne ptr %10, null, !dbg !1460
  br i1 %tobool9, label %while.body, label %while.end, !dbg !1460

while.body:                                       ; preds = %while.cond
  store ptr null, ptr %handler_obj, align 8, !dbg !1462
  %11 = load ptr, ptr %node, align 8, !dbg !1464
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %11) #14, !dbg !1465
  store ptr %call, ptr %obj_desc, align 8, !dbg !1466
  %12 = load ptr, ptr %obj_desc, align 8, !dbg !1467
  %tobool10 = icmp ne ptr %12, null, !dbg !1467
  br i1 %tobool10, label %if.then11, label %if.end19, !dbg !1469

if.then11:                                        ; preds = %while.body
  %13 = load ptr, ptr %node, align 8, !dbg !1470
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %13, i32 0, i32 2, !dbg !1472
  %14 = load i8, ptr %type, align 1, !dbg !1472
  %conv12 = zext i8 %14 to i32, !dbg !1470
  switch i32 %conv12, label %sw.default [
    i32 6, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
  ], !dbg !1473

sw.bb:                                            ; preds = %if.then11, %if.then11, %if.then11
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !1474
  %handler = getelementptr inbounds %struct.acpi_object_notify_common, ptr %15, i32 0, i32 6, !dbg !1476
  %16 = load ptr, ptr %handler, align 8, !dbg !1476
  store ptr %16, ptr %handler_obj, align 8, !dbg !1477
  br label %sw.epilog, !dbg !1478

sw.default:                                       ; preds = %if.then11
  br label %sw.epilog, !dbg !1479

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %17 = load i8, ptr %space_id, align 1, !dbg !1480
  %18 = load ptr, ptr %handler_obj, align 8, !dbg !1481
  %call13 = call ptr @acpi_ev_find_region_handler(i8 noundef zeroext %17, ptr noundef %18) #14, !dbg !1482
  store ptr %call13, ptr %handler_obj, align 8, !dbg !1483
  %19 = load ptr, ptr %handler_obj, align 8, !dbg !1484
  %tobool14 = icmp ne ptr %19, null, !dbg !1484
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !1486

if.then15:                                        ; preds = %sw.epilog
  %20 = load ptr, ptr %handler_obj, align 8, !dbg !1487
  %21 = load ptr, ptr %region_obj.addr, align 8, !dbg !1489
  %call16 = call i32 @acpi_ev_attach_region(ptr noundef %20, ptr noundef %21, i8 noundef zeroext 0) #14, !dbg !1490
  call void @acpi_ex_exit_interpreter() #14, !dbg !1491
  %22 = load ptr, ptr %region_obj.addr, align 8, !dbg !1492
  %call17 = call i32 @acpi_ev_execute_reg_method(ptr noundef %22, i32 noundef 1) #14, !dbg !1493
  call void @acpi_ex_enter_interpreter() #14, !dbg !1494
  store i32 0, ptr %retval, align 4, !dbg !1495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1495

if.end18:                                         ; preds = %sw.epilog
  br label %if.end19, !dbg !1496

if.end19:                                         ; preds = %if.end18, %while.body
  %23 = load ptr, ptr %node, align 8, !dbg !1497
  %parent20 = getelementptr inbounds %struct.acpi_namespace_node, ptr %23, i32 0, i32 5, !dbg !1498
  %24 = load ptr, ptr %parent20, align 8, !dbg !1498
  store ptr %24, ptr %node, align 8, !dbg !1499
  br label %while.cond, !dbg !1460, !llvm.loop !1500

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1502

cleanup:                                          ; preds = %while.end, %if.then15, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 1, ptr %space_id) #13, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler_obj) #13, !dbg !1503
  %25 = load i32, ptr %retval, align 4, !dbg !1503
  ret i32 %25, !dbg !1503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1504 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1508 dso_local ptr @acpi_ev_find_region_handler(i8 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1512 dso_local i32 @acpi_ev_attach_region(ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1515 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1519 dso_local i32 @acpi_ev_execute_reg_method(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1522 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1523 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1528 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1536, metadata !DIExpression()), !dbg !1538
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1537, metadata !DIExpression()), !dbg !1539
  %0 = load i64, ptr %size.addr, align 8, !dbg !1540
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1541
  %or = or i32 %1, 256, !dbg !1542
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1543
  ret ptr %call, !dbg !1544
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1545 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1549
  ret i64 %call, !dbg !1550
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1551 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1556, metadata !DIExpression()), !dbg !1557
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1558
  %and = and i64 %0, 512, !dbg !1559
  %tobool = icmp ne i64 %and, 0, !dbg !1560
  %lnot = xor i1 %tobool, true, !dbg !1560
  %lnot.ext = zext i1 %lnot to i32, !dbg !1560
  ret i32 %lnot.ext, !dbg !1561
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1562 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1564, metadata !DIExpression()), !dbg !1569
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1565, metadata !DIExpression()), !dbg !1570
  %0 = load i64, ptr %size.addr, align 8, !dbg !1571
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1572
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1573

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1574
  %tobool = icmp ne i64 %2, 0, !dbg !1574
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1575

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1566, metadata !DIExpression()), !dbg !1577
  %3 = load i64, ptr %size.addr, align 8, !dbg !1578
  %cmp = icmp ugt i64 %3, 8192, !dbg !1580
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1581

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1582
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1583
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1584
  store ptr %call, ptr %retval, align 8, !dbg !1585
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1585

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1586
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1586
  store i32 %call2, ptr %index, align 4, !dbg !1587
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1588
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1589
  %9 = ptrtoint ptr %8 to i64, !dbg !1589
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1590
  %idxprom = zext i32 %call3 to i64, !dbg !1591
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1591
  %10 = load i32, ptr %index, align 4, !dbg !1592
  %idxprom4 = zext i32 %10 to i64, !dbg !1591
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1591
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1591
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1593
  %13 = load i64, ptr %size.addr, align 8, !dbg !1594
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1595
  store ptr %call6, ptr %retval, align 8, !dbg !1596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1596

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1597
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1598
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1599
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1600
  store ptr %call8, ptr %retval, align 8, !dbg !1601
  br label %return, !dbg !1601

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1602
  ret ptr %16, !dbg !1602
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1603 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1604 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1610, metadata !DIExpression()), !dbg !1612
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1611, metadata !DIExpression()), !dbg !1613
  %0 = load i64, ptr %size.addr, align 8, !dbg !1614
  %tobool = icmp ne i64 %0, 0, !dbg !1614
  br i1 %tobool, label %if.end, label %if.then, !dbg !1616

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1617
  br label %return, !dbg !1617

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1618
  %cmp = icmp ule i64 %1, 8, !dbg !1620
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1621

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1622
  br label %return, !dbg !1622

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1623
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1625
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1626

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1627
  %cmp4 = icmp ule i64 %3, 96, !dbg !1628
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1629

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1630
  br label %return, !dbg !1630

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1631
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1633
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1634

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1635
  %cmp9 = icmp ule i64 %5, 192, !dbg !1636
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1637

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1638
  br label %return, !dbg !1638

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1639
  %cmp12 = icmp ule i64 %6, 8, !dbg !1641
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1642

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1643
  br label %return, !dbg !1643

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1644
  %cmp15 = icmp ule i64 %7, 16, !dbg !1646
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1647

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1648
  br label %return, !dbg !1648

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1649
  %cmp18 = icmp ule i64 %8, 32, !dbg !1651
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1652

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1653
  br label %return, !dbg !1653

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1654
  %cmp21 = icmp ule i64 %9, 64, !dbg !1656
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1657

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1658
  br label %return, !dbg !1658

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1659
  %cmp24 = icmp ule i64 %10, 128, !dbg !1661
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1662

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1663
  br label %return, !dbg !1663

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1664
  %cmp27 = icmp ule i64 %11, 256, !dbg !1666
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1667

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1668
  br label %return, !dbg !1668

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1669
  %cmp30 = icmp ule i64 %12, 512, !dbg !1671
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1672

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1673
  br label %return, !dbg !1673

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1674
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1676
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1677

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1678
  br label %return, !dbg !1678

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1679
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1681
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1682

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1683
  br label %return, !dbg !1683

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1684
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1686
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1687

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1688
  br label %return, !dbg !1688

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1689
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1691
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1692

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1693
  br label %return, !dbg !1693

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1694
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1696
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1697

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1698
  br label %return, !dbg !1698

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1699
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1701
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1702

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1703
  br label %return, !dbg !1703

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1704
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1706
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1707

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1708
  br label %return, !dbg !1708

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1709
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1711
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1712

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1713
  br label %return, !dbg !1713

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1714
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1716
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1717

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1718
  br label %return, !dbg !1718

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1719
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1721
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1722

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1723
  br label %return, !dbg !1723

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1724
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1726
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1727

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1728
  br label %return, !dbg !1728

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1729
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1731
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1732

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1733
  br label %return, !dbg !1733

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1734, !range !1736, !noundef !1737
  %tobool69 = trunc i8 %25 to i1, !dbg !1734
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1738

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1739

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1740, !srcloc !1743
  unreachable, !dbg !1740

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1744

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1745

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1746

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1748

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1746

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #13, !dbg !1750, !srcloc !1752
  br label %do.end75, !dbg !1750

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1746

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1753
  br label %return, !dbg !1753

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1754
  ret i32 %26, !dbg !1754
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1755 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1761 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1765, metadata !DIExpression()), !dbg !1767
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1766, metadata !DIExpression()), !dbg !1768
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1769
  %and = and i32 %0, 17, !dbg !1769
  %cmp = icmp eq i32 %and, 0, !dbg !1769
  %lnot = xor i1 %cmp, true, !dbg !1769
  %lnot1 = xor i1 %lnot, true, !dbg !1769
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1769
  %conv = sext i32 %lnot.ext to i64, !dbg !1769
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1769
  %tobool = icmp ne i64 %expval, 0, !dbg !1769
  br i1 %tobool, label %if.then, label %if.end, !dbg !1771

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1772
  br label %return, !dbg !1772

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1773
  %and2 = and i32 %1, 1, !dbg !1775
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1775
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1776

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1777
  br label %return, !dbg !1777

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1778
  br label %return, !dbg !1778

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1780
  ret i32 %2, !dbg !1780
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1781 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1782 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1783 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1786
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1785, metadata !DIExpression()), !dbg !1787
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1788, !srcloc !1789
  %0 = load i64, ptr %flags, align 8, !dbg !1790
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1791
  ret i64 %0, !dbg !1792
}

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
!llvm.module.flags = !{!839, !840, !841, !842, !843, !844, !845, !846}
!llvm.ident = !{!847}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !837, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.evrgnini.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22evrgnini\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/evrgnini.ll drivers/acpi/acpica/evrgnini.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !817, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/evrgnini.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "375355c07eafd0315bb62584ea55c190")
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
!21 = !{!22, !798, !132, !155, !810, !385, !813, !38, !70, !55, !814, !816}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !24, line: 369, size: 576, elements: !25)
!24 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!25 = !{!26, !42, !58, !72, !109, !123, !133, !447, !464, !480, !493, !571, !583, !597, !607, !625, !647, !666, !685, !704, !717, !744, !761, !774, !788, !797}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !23, file: !24, line: 370, baseType: !27, size: 128)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !24, line: 73, size: 128, elements: !28)
!28 = !{!29, !30, !36, !37, !41}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !27, file: !24, line: 74, baseType: !22, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !32, line: 17, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !34, line: 21, baseType: !35)
!34 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 72)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !27, file: !24, line: 74, baseType: !38, size: 16, offset: 80)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !32, line: 19, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !34, line: 24, baseType: !40)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !27, file: !24, line: 74, baseType: !31, size: 8, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !23, file: !24, line: 371, baseType: !43, size: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !24, line: 76, size: 192, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50, !54}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !43, file: !24, line: 77, baseType: !22, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !43, file: !24, line: 77, baseType: !31, size: 8, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !24, line: 77, baseType: !31, size: 8, offset: 72)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !43, file: !24, line: 77, baseType: !38, size: 16, offset: 80)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !43, file: !24, line: 77, baseType: !31, size: 8, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !43, file: !24, line: 77, baseType: !51, size: 24, offset: 104)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 3)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !24, line: 78, baseType: !55, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !32, line: 23, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !34, line: 31, baseType: !57)
!57 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !23, file: !24, line: 372, baseType: !59, size: 256)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !24, line: 93, size: 256, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !69}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !59, file: !24, line: 94, baseType: !22, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !59, file: !24, line: 94, baseType: !31, size: 8, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !24, line: 94, baseType: !31, size: 8, offset: 72)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !59, file: !24, line: 94, baseType: !38, size: 16, offset: 80)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !24, line: 94, baseType: !31, size: 8, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !59, file: !24, line: 94, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !59, file: !24, line: 94, baseType: !70, size: 32, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !32, line: 21, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 27, baseType: !7)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !23, file: !24, line: 373, baseType: !73, size: 384)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !24, line: 97, size: 384, elements: !74)
!74 = !{!75, !76, !77, !78, !79, !80, !82, !83, !84, !85}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !73, file: !24, line: 98, baseType: !22, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !73, file: !24, line: 98, baseType: !31, size: 8, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !73, file: !24, line: 98, baseType: !31, size: 8, offset: 72)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !73, file: !24, line: 98, baseType: !38, size: 16, offset: 80)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !73, file: !24, line: 98, baseType: !31, size: 8, offset: 96)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !73, file: !24, line: 98, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !73, file: !24, line: 98, baseType: !70, size: 32, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !73, file: !24, line: 99, baseType: !70, size: 32, offset: 224)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !73, file: !24, line: 100, baseType: !81, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !73, file: !24, line: 101, baseType: !86, size: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !88, line: 133, size: 384, elements: !89)
!88 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!89 = !{!90, !91, !92, !93, !94, !103, !104, !105, !106}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !87, file: !88, line: 134, baseType: !22, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !87, file: !88, line: 135, baseType: !31, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !88, line: 136, baseType: !31, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !88, line: 137, baseType: !38, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !88, line: 138, baseType: !95, size: 32, offset: 96)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !96, line: 328, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !95, file: !96, line: 329, baseType: !70, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !95, file: !96, line: 330, baseType: !100, size: 32)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 4)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !87, file: !88, line: 139, baseType: !86, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !87, file: !88, line: 140, baseType: !86, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !87, file: !88, line: 141, baseType: !86, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !87, file: !88, line: 142, baseType: !107, size: 16, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !108, line: 445, baseType: !38)
!108 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!109 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !23, file: !24, line: 374, baseType: !110, size: 384)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !24, line: 104, size: 384, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !120, !121, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !24, line: 105, baseType: !22, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !24, line: 105, baseType: !31, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !24, line: 105, baseType: !31, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !24, line: 105, baseType: !38, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !24, line: 105, baseType: !31, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !110, file: !24, line: 105, baseType: !86, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !110, file: !24, line: 106, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !110, file: !24, line: 107, baseType: !81, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !110, file: !24, line: 108, baseType: !70, size: 32, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !110, file: !24, line: 109, baseType: !70, size: 32, offset: 352)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !23, file: !24, line: 375, baseType: !124, size: 192)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !24, line: 118, size: 192, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !24, line: 119, baseType: !22, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !24, line: 119, baseType: !31, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !24, line: 119, baseType: !31, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !24, line: 119, baseType: !38, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !24, line: 119, baseType: !31, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !124, file: !24, line: 119, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !23, file: !24, line: 376, baseType: !134, size: 448)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !24, line: 144, size: 448, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !444, !445, !446}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !24, line: 145, baseType: !22, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !24, line: 145, baseType: !31, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !24, line: 145, baseType: !31, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !24, line: 145, baseType: !38, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !24, line: 145, baseType: !31, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !134, file: !24, line: 145, baseType: !31, size: 8, offset: 104)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !134, file: !24, line: 146, baseType: !31, size: 8, offset: 112)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !134, file: !24, line: 147, baseType: !31, size: 8, offset: 120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !134, file: !24, line: 148, baseType: !22, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !24, line: 149, baseType: !22, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !134, file: !24, line: 150, baseType: !81, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !134, file: !24, line: 154, baseType: !148, size: 64, offset: 320)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !24, line: 151, size: 64, elements: !149)
!149 = !{!150, !443}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !148, file: !24, line: 152, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !88, line: 248, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !156}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !108, line: 421, baseType: !70)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !158, line: 37, size: 9024, elements: !159)
!158 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !389, !390, !391, !392, !393, !397, !399, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !426, !427, !428, !429, !430, !431, !432, !433, !435, !441}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !158, line: 38, baseType: !156, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !157, file: !158, line: 39, baseType: !31, size: 8, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !157, file: !158, line: 40, baseType: !31, size: 8, offset: 72)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !157, file: !158, line: 41, baseType: !38, size: 16, offset: 80)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !157, file: !158, line: 42, baseType: !31, size: 8, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !157, file: !158, line: 43, baseType: !31, size: 8, offset: 104)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !157, file: !158, line: 44, baseType: !31, size: 8, offset: 112)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !157, file: !158, line: 45, baseType: !107, size: 16, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !157, file: !158, line: 46, baseType: !31, size: 8, offset: 144)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !157, file: !158, line: 47, baseType: !31, size: 8, offset: 152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !157, file: !158, line: 48, baseType: !31, size: 8, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !157, file: !158, line: 49, baseType: !31, size: 8, offset: 168)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !157, file: !158, line: 50, baseType: !31, size: 8, offset: 176)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !157, file: !158, line: 51, baseType: !31, size: 8, offset: 184)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !157, file: !158, line: 52, baseType: !31, size: 8, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !157, file: !158, line: 53, baseType: !31, size: 8, offset: 200)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !157, file: !158, line: 54, baseType: !81, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !157, file: !158, line: 55, baseType: !70, size: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !157, file: !158, line: 56, baseType: !70, size: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !157, file: !158, line: 57, baseType: !70, size: 32, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !157, file: !158, line: 58, baseType: !70, size: 32, offset: 416)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !157, file: !158, line: 60, baseType: !182, size: 640, offset: 448)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !88, line: 909, size: 640, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !270, !271, !387, !388}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !182, file: !88, line: 910, baseType: !81, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !182, file: !88, line: 911, baseType: !81, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !182, file: !88, line: 912, baseType: !81, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !182, file: !88, line: 913, baseType: !81, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !182, file: !88, line: 914, baseType: !81, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !182, file: !88, line: 915, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !88, line: 891, size: 1600, elements: !192)
!192 = !{!193, !213, !229}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !191, file: !88, line: 892, baseType: !194, size: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !88, line: 844, size: 448, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !212}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !88, line: 845, baseType: !190, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !194, file: !88, line: 845, baseType: !31, size: 8, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !88, line: 845, baseType: !31, size: 8, offset: 72)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !194, file: !88, line: 845, baseType: !38, size: 16, offset: 80)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !194, file: !88, line: 845, baseType: !81, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !88, line: 845, baseType: !190, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !194, file: !88, line: 845, baseType: !86, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !194, file: !88, line: 845, baseType: !204, size: 64, offset: 320)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !88, line: 732, size: 64, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !204, file: !88, line: 733, baseType: !55, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !204, file: !88, line: 734, baseType: !70, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !204, file: !88, line: 735, baseType: !67, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !204, file: !88, line: 736, baseType: !81, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !88, line: 737, baseType: !67, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !204, file: !88, line: 738, baseType: !190, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !194, file: !88, line: 845, baseType: !31, size: 8, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !191, file: !88, line: 893, baseType: !214, size: 640)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !88, line: 851, size: 640, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !88, line: 852, baseType: !190, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !214, file: !88, line: 852, baseType: !31, size: 8, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !88, line: 852, baseType: !31, size: 8, offset: 72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !214, file: !88, line: 852, baseType: !38, size: 16, offset: 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !214, file: !88, line: 852, baseType: !81, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !88, line: 852, baseType: !190, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !214, file: !88, line: 852, baseType: !86, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !214, file: !88, line: 852, baseType: !204, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !214, file: !88, line: 852, baseType: !31, size: 8, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !214, file: !88, line: 852, baseType: !67, size: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !214, file: !88, line: 853, baseType: !81, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !214, file: !88, line: 854, baseType: !70, size: 32, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !88, line: 855, baseType: !70, size: 32, offset: 608)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !191, file: !88, line: 894, baseType: !230, size: 1600)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !88, line: 862, size: 1600, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !88, line: 863, baseType: !190, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !230, file: !88, line: 863, baseType: !31, size: 8, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !88, line: 863, baseType: !31, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !230, file: !88, line: 863, baseType: !38, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !230, file: !88, line: 863, baseType: !81, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !88, line: 863, baseType: !190, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !230, file: !88, line: 863, baseType: !86, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !230, file: !88, line: 863, baseType: !204, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !230, file: !88, line: 863, baseType: !31, size: 8, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !230, file: !88, line: 863, baseType: !190, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !230, file: !88, line: 864, baseType: !190, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !230, file: !88, line: 865, baseType: !67, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !230, file: !88, line: 866, baseType: !31, size: 8, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !230, file: !88, line: 867, baseType: !67, size: 64, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !230, file: !88, line: 868, baseType: !67, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !230, file: !88, line: 869, baseType: !67, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !230, file: !88, line: 870, baseType: !100, size: 32, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !230, file: !88, line: 871, baseType: !70, size: 32, offset: 928)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !230, file: !88, line: 872, baseType: !70, size: 32, offset: 960)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !230, file: !88, line: 873, baseType: !70, size: 32, offset: 992)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !230, file: !88, line: 874, baseType: !70, size: 32, offset: 1024)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !230, file: !88, line: 875, baseType: !70, size: 32, offset: 1056)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !230, file: !88, line: 876, baseType: !70, size: 32, offset: 1088)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !230, file: !88, line: 877, baseType: !70, size: 32, offset: 1120)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !230, file: !88, line: 878, baseType: !70, size: 32, offset: 1152)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !230, file: !88, line: 879, baseType: !70, size: 32, offset: 1184)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !230, file: !88, line: 880, baseType: !70, size: 32, offset: 1216)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !230, file: !88, line: 881, baseType: !70, size: 32, offset: 1248)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !230, file: !88, line: 882, baseType: !70, size: 32, offset: 1280)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !230, file: !88, line: 883, baseType: !70, size: 32, offset: 1312)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !230, file: !88, line: 884, baseType: !38, size: 16, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !230, file: !88, line: 885, baseType: !31, size: 8, offset: 1360)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !230, file: !88, line: 886, baseType: !31, size: 8, offset: 1368)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !230, file: !88, line: 887, baseType: !31, size: 8, offset: 1376)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !230, file: !88, line: 888, baseType: !267, size: 160, offset: 1384)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 160, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 20)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !182, file: !88, line: 916, baseType: !86, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !182, file: !88, line: 917, baseType: !272, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !88, line: 679, size: 640, elements: !274)
!274 = !{!275, !283, !296, !305, !314, !327, !341, !353, !365}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !273, file: !88, line: 680, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !88, line: 575, size: 128, elements: !277)
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !88, line: 576, baseType: !132, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !88, line: 576, baseType: !31, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !88, line: 576, baseType: !31, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !88, line: 576, baseType: !38, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !88, line: 576, baseType: !38, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !273, file: !88, line: 681, baseType: !284, size: 384)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !88, line: 604, size: 384, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !88, line: 605, baseType: !132, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !284, file: !88, line: 605, baseType: !31, size: 8, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !88, line: 605, baseType: !31, size: 8, offset: 72)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !284, file: !88, line: 605, baseType: !38, size: 16, offset: 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !284, file: !88, line: 605, baseType: !38, size: 16, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !284, file: !88, line: 606, baseType: !38, size: 16, offset: 112)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !284, file: !88, line: 607, baseType: !190, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !284, file: !88, line: 608, baseType: !81, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !284, file: !88, line: 609, baseType: !81, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !284, file: !88, line: 610, baseType: !55, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !273, file: !88, line: 682, baseType: !297, size: 192)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !88, line: 582, size: 192, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !88, line: 583, baseType: !132, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !88, line: 583, baseType: !31, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !88, line: 583, baseType: !31, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !88, line: 583, baseType: !38, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !88, line: 583, baseType: !38, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !297, file: !88, line: 584, baseType: !22, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !273, file: !88, line: 683, baseType: !306, size: 192)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !88, line: 616, size: 192, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !88, line: 617, baseType: !132, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !306, file: !88, line: 617, baseType: !31, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !88, line: 617, baseType: !31, size: 8, offset: 72)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !88, line: 617, baseType: !38, size: 16, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !306, file: !88, line: 617, baseType: !38, size: 16, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !306, file: !88, line: 618, baseType: !86, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !273, file: !88, line: 684, baseType: !315, size: 448)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !88, line: 621, size: 448, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !88, line: 622, baseType: !132, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !88, line: 622, baseType: !31, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !88, line: 622, baseType: !31, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !88, line: 622, baseType: !38, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !88, line: 622, baseType: !38, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !315, file: !88, line: 623, baseType: !70, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !315, file: !88, line: 624, baseType: !190, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !315, file: !88, line: 625, baseType: !81, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !315, file: !88, line: 626, baseType: !81, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !315, file: !88, line: 627, baseType: !70, size: 32, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !273, file: !88, line: 685, baseType: !328, size: 512)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !88, line: 590, size: 512, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !88, line: 591, baseType: !132, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !88, line: 591, baseType: !31, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !88, line: 591, baseType: !31, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !88, line: 591, baseType: !38, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !88, line: 591, baseType: !38, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !328, file: !88, line: 592, baseType: !70, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !328, file: !88, line: 593, baseType: !22, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !328, file: !88, line: 594, baseType: !22, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !328, file: !88, line: 595, baseType: !156, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !328, file: !88, line: 596, baseType: !132, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !328, file: !88, line: 597, baseType: !70, size: 32, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !273, file: !88, line: 686, baseType: !342, size: 320)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !88, line: 634, size: 320, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !88, line: 635, baseType: !132, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !342, file: !88, line: 635, baseType: !31, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !88, line: 635, baseType: !31, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !342, file: !88, line: 635, baseType: !38, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !342, file: !88, line: 635, baseType: !38, size: 16, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !342, file: !88, line: 636, baseType: !31, size: 8, offset: 112)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !342, file: !88, line: 637, baseType: !156, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !342, file: !88, line: 638, baseType: !22, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !342, file: !88, line: 639, baseType: !55, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !273, file: !88, line: 687, baseType: !354, size: 640)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !88, line: 646, size: 640, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !88, line: 647, baseType: !132, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !88, line: 647, baseType: !31, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !88, line: 647, baseType: !31, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !88, line: 647, baseType: !38, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !88, line: 647, baseType: !38, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !354, file: !88, line: 648, baseType: !362, size: 512, offset: 128)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 8)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !273, file: !88, line: 688, baseType: !366, size: 320)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !88, line: 669, size: 320, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !88, line: 670, baseType: !132, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !88, line: 670, baseType: !31, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !88, line: 670, baseType: !31, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !88, line: 670, baseType: !38, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !88, line: 670, baseType: !38, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !366, file: !88, line: 671, baseType: !31, size: 8, offset: 112)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !366, file: !88, line: 672, baseType: !86, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !366, file: !88, line: 673, baseType: !22, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !366, file: !88, line: 674, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !88, line: 660, size: 128, elements: !379)
!379 = !{!380, !386}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !378, file: !88, line: 661, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !108, line: 1061, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !385, !70, !132}
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !108, line: 424, baseType: !132)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !378, file: !88, line: 662, baseType: !132, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !182, file: !88, line: 918, baseType: !190, size: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !182, file: !88, line: 919, baseType: !70, size: 32, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !157, file: !158, line: 61, baseType: !70, size: 32, offset: 1088)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !157, file: !158, line: 62, baseType: !70, size: 32, offset: 1120)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !157, file: !158, line: 63, baseType: !38, size: 16, offset: 1152)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !157, file: !158, line: 64, baseType: !31, size: 8, offset: 1168)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !157, file: !158, line: 66, baseType: !394, size: 2688, offset: 1216)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2688, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 7)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !157, file: !158, line: 67, baseType: !398, size: 3072, offset: 3904)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 3072, elements: !363)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !157, file: !158, line: 68, baseType: !400, size: 576, offset: 6976)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 576, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 9)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !157, file: !158, line: 69, baseType: !119, size: 64, offset: 7552)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !157, file: !158, line: 71, baseType: !81, size: 64, offset: 7616)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !157, file: !158, line: 72, baseType: !119, size: 64, offset: 7680)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !157, file: !158, line: 73, baseType: !272, size: 64, offset: 7744)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !157, file: !158, line: 74, baseType: !86, size: 64, offset: 7808)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !157, file: !158, line: 75, baseType: !22, size: 64, offset: 7872)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !157, file: !158, line: 76, baseType: !86, size: 64, offset: 7936)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !157, file: !158, line: 77, baseType: !190, size: 64, offset: 8000)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !157, file: !158, line: 78, baseType: !22, size: 64, offset: 8064)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !157, file: !158, line: 79, baseType: !86, size: 64, offset: 8128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !157, file: !158, line: 80, baseType: !67, size: 64, offset: 8192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !157, file: !158, line: 81, baseType: !190, size: 64, offset: 8256)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !157, file: !158, line: 82, baseType: !416, size: 64, offset: 8320)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !88, line: 718, size: 128, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !418, file: !88, line: 722, baseType: !70, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !418, file: !88, line: 723, baseType: !70, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !418, file: !88, line: 724, baseType: !38, size: 16, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !418, file: !88, line: 725, baseType: !31, size: 8, offset: 80)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !418, file: !88, line: 726, baseType: !31, size: 8, offset: 88)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !418, file: !88, line: 727, baseType: !31, size: 8, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !157, file: !158, line: 83, baseType: !190, size: 64, offset: 8384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !157, file: !158, line: 84, baseType: !22, size: 64, offset: 8448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !157, file: !158, line: 85, baseType: !272, size: 64, offset: 8512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !157, file: !158, line: 86, baseType: !22, size: 64, offset: 8576)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !157, file: !158, line: 87, baseType: !272, size: 64, offset: 8640)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !157, file: !158, line: 88, baseType: !190, size: 64, offset: 8704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !157, file: !158, line: 89, baseType: !190, size: 64, offset: 8768)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !157, file: !158, line: 90, baseType: !434, size: 64, offset: 8832)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !157, file: !158, line: 91, baseType: !436, size: 64, offset: 8896)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !88, line: 652, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!155, !156, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !157, file: !158, line: 92, baseType: !442, size: 64, offset: 8960)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !88, line: 656, baseType: !152)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !148, file: !24, line: 153, baseType: !22, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !134, file: !24, line: 156, baseType: !70, size: 32, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !134, file: !24, line: 157, baseType: !107, size: 16, offset: 416)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !134, file: !24, line: 158, baseType: !31, size: 8, offset: 432)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !23, file: !24, line: 377, baseType: !448, size: 576)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !24, line: 122, size: 576, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !448, file: !24, line: 123, baseType: !22, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !448, file: !24, line: 123, baseType: !31, size: 8, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !448, file: !24, line: 123, baseType: !31, size: 8, offset: 72)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !448, file: !24, line: 123, baseType: !38, size: 16, offset: 80)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !24, line: 123, baseType: !31, size: 8, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !448, file: !24, line: 123, baseType: !31, size: 8, offset: 104)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !448, file: !24, line: 124, baseType: !38, size: 16, offset: 112)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !448, file: !24, line: 125, baseType: !132, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !448, file: !24, line: 126, baseType: !55, size: 64, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !448, file: !24, line: 127, baseType: !434, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !448, file: !24, line: 128, baseType: !22, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !448, file: !24, line: 129, baseType: !22, size: 64, offset: 384)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !448, file: !24, line: 130, baseType: !86, size: 64, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !448, file: !24, line: 131, baseType: !31, size: 8, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !23, file: !24, line: 378, baseType: !465, size: 512)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !24, line: 134, size: 512, elements: !466)
!466 = !{!467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !478, !479}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !465, file: !24, line: 135, baseType: !22, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !465, file: !24, line: 135, baseType: !31, size: 8, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !465, file: !24, line: 135, baseType: !31, size: 8, offset: 72)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !465, file: !24, line: 135, baseType: !38, size: 16, offset: 80)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !24, line: 135, baseType: !31, size: 8, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !465, file: !24, line: 135, baseType: !31, size: 8, offset: 104)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !465, file: !24, line: 136, baseType: !86, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !465, file: !24, line: 137, baseType: !22, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !465, file: !24, line: 138, baseType: !22, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !465, file: !24, line: 139, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !108, line: 129, baseType: !55)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !465, file: !24, line: 140, baseType: !70, size: 32, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !465, file: !24, line: 141, baseType: !132, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !23, file: !24, line: 379, baseType: !481, size: 320)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !24, line: 185, size: 320, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !492}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !481, file: !24, line: 186, baseType: !22, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !481, file: !24, line: 186, baseType: !31, size: 8, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !24, line: 186, baseType: !31, size: 8, offset: 72)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !481, file: !24, line: 186, baseType: !38, size: 16, offset: 80)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !481, file: !24, line: 186, baseType: !31, size: 8, offset: 96)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !481, file: !24, line: 186, baseType: !489, size: 128, offset: 128)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !490)
!490 = !{!491}
!491 = !DISubrange(count: 2)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !481, file: !24, line: 186, baseType: !22, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !23, file: !24, line: 380, baseType: !494, size: 384)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !24, line: 188, size: 384, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !494, file: !24, line: 189, baseType: !22, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !494, file: !24, line: 189, baseType: !31, size: 8, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !24, line: 189, baseType: !31, size: 8, offset: 72)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !494, file: !24, line: 189, baseType: !38, size: 16, offset: 80)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !24, line: 189, baseType: !31, size: 8, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !494, file: !24, line: 190, baseType: !489, size: 128, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !494, file: !24, line: 190, baseType: !22, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !494, file: !24, line: 190, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !88, line: 480, size: 576, elements: !506)
!506 = !{!507, !508, !509, !510, !518, !533, !565, !566, !567, !568, !569, !570}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !88, line: 481, baseType: !86, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !505, file: !88, line: 482, baseType: !504, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !88, line: 483, baseType: !504, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !505, file: !88, line: 484, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !88, line: 497, size: 256, elements: !513)
!513 = !{!514, !515, !516, !517}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !512, file: !88, line: 498, baseType: !511, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !88, line: 499, baseType: !511, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !512, file: !88, line: 500, baseType: !504, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !512, file: !88, line: 501, baseType: !70, size: 32, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !505, file: !88, line: 485, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !88, line: 466, size: 320, elements: !521)
!521 = !{!522, !527, !528, !529, !530, !531, !532}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !520, file: !88, line: 467, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !88, line: 459, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !523, file: !88, line: 460, baseType: !31, size: 8)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !523, file: !88, line: 461, baseType: !55, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !520, file: !88, line: 468, baseType: !523, size: 128, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !520, file: !88, line: 469, baseType: !38, size: 16, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !520, file: !88, line: 470, baseType: !31, size: 8, offset: 272)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !520, file: !88, line: 471, baseType: !31, size: 8, offset: 280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !520, file: !88, line: 472, baseType: !31, size: 8, offset: 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !520, file: !88, line: 473, baseType: !31, size: 8, offset: 296)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !505, file: !88, line: 486, baseType: !534, size: 64, offset: 320)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !88, line: 448, size: 192, elements: !536)
!536 = !{!537, !560, !561, !562, !563, !564}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !535, file: !88, line: 449, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !88, line: 438, size: 64, elements: !539)
!539 = !{!540, !541, !554}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !538, file: !88, line: 439, baseType: !86, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !538, file: !88, line: 440, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !88, line: 419, size: 256, elements: !544)
!544 = !{!545, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !543, file: !88, line: 420, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !108, line: 1058, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!70, !385, !70, !132}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !543, file: !88, line: 421, baseType: !132, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !543, file: !88, line: 422, baseType: !86, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !543, file: !88, line: 423, baseType: !31, size: 8, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !543, file: !88, line: 424, baseType: !31, size: 8, offset: 200)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !538, file: !88, line: 441, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !88, line: 429, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !556, file: !88, line: 430, baseType: !86, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !88, line: 431, baseType: !555, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !535, file: !88, line: 450, baseType: !519, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !88, line: 451, baseType: !31, size: 8, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !535, file: !88, line: 452, baseType: !31, size: 8, offset: 136)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !535, file: !88, line: 453, baseType: !31, size: 8, offset: 144)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !535, file: !88, line: 454, baseType: !31, size: 8, offset: 152)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !505, file: !88, line: 487, baseType: !55, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !505, file: !88, line: 488, baseType: !70, size: 32, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !505, file: !88, line: 489, baseType: !38, size: 16, offset: 480)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !505, file: !88, line: 490, baseType: !38, size: 16, offset: 496)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !505, file: !88, line: 491, baseType: !31, size: 8, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !505, file: !88, line: 492, baseType: !31, size: 8, offset: 520)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !23, file: !24, line: 381, baseType: !572, size: 384)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !24, line: 193, size: 384, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !572, file: !24, line: 194, baseType: !22, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !24, line: 194, baseType: !31, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !24, line: 194, baseType: !31, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !572, file: !24, line: 194, baseType: !38, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !24, line: 194, baseType: !31, size: 8, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !572, file: !24, line: 194, baseType: !489, size: 128, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !572, file: !24, line: 194, baseType: !22, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !572, file: !24, line: 194, baseType: !70, size: 32, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !572, file: !24, line: 195, baseType: !70, size: 32, offset: 352)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !23, file: !24, line: 382, baseType: !584, size: 384)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !24, line: 198, size: 384, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !584, file: !24, line: 199, baseType: !22, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !584, file: !24, line: 199, baseType: !31, size: 8, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !584, file: !24, line: 199, baseType: !31, size: 8, offset: 72)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !584, file: !24, line: 199, baseType: !38, size: 16, offset: 80)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !584, file: !24, line: 199, baseType: !31, size: 8, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !584, file: !24, line: 201, baseType: !31, size: 8, offset: 104)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !584, file: !24, line: 202, baseType: !31, size: 8, offset: 112)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !584, file: !24, line: 203, baseType: !489, size: 128, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !584, file: !24, line: 203, baseType: !22, size: 64, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !584, file: !24, line: 203, baseType: !596, size: 64, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !108, line: 128, baseType: !55)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !23, file: !24, line: 383, baseType: !598, size: 320)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !24, line: 206, size: 320, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !598, file: !24, line: 207, baseType: !22, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !598, file: !24, line: 207, baseType: !31, size: 8, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !598, file: !24, line: 207, baseType: !31, size: 8, offset: 72)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !598, file: !24, line: 207, baseType: !38, size: 16, offset: 80)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !24, line: 207, baseType: !31, size: 8, offset: 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !598, file: !24, line: 207, baseType: !489, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !598, file: !24, line: 207, baseType: !22, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !23, file: !24, line: 384, baseType: !608, size: 384)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !24, line: 234, size: 384, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !24, line: 235, baseType: !22, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !24, line: 235, baseType: !31, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !24, line: 235, baseType: !31, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !24, line: 235, baseType: !38, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !24, line: 235, baseType: !31, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !608, file: !24, line: 235, baseType: !31, size: 8, offset: 104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !608, file: !24, line: 235, baseType: !31, size: 8, offset: 112)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !608, file: !24, line: 235, baseType: !31, size: 8, offset: 120)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !24, line: 235, baseType: !86, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !608, file: !24, line: 235, baseType: !70, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !608, file: !24, line: 235, baseType: !70, size: 32, offset: 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !608, file: !24, line: 235, baseType: !70, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !608, file: !24, line: 235, baseType: !31, size: 8, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !608, file: !24, line: 235, baseType: !31, size: 8, offset: 296)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !608, file: !24, line: 235, baseType: !22, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !23, file: !24, line: 385, baseType: !626, size: 576)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !24, line: 238, size: 576, elements: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !626, file: !24, line: 239, baseType: !22, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !626, file: !24, line: 239, baseType: !31, size: 8, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !626, file: !24, line: 239, baseType: !31, size: 8, offset: 72)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !626, file: !24, line: 239, baseType: !38, size: 16, offset: 80)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !626, file: !24, line: 239, baseType: !31, size: 8, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !626, file: !24, line: 239, baseType: !31, size: 8, offset: 104)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !626, file: !24, line: 239, baseType: !31, size: 8, offset: 112)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !626, file: !24, line: 239, baseType: !31, size: 8, offset: 120)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !626, file: !24, line: 239, baseType: !86, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !626, file: !24, line: 239, baseType: !70, size: 32, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !626, file: !24, line: 239, baseType: !70, size: 32, offset: 224)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !626, file: !24, line: 239, baseType: !70, size: 32, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !626, file: !24, line: 239, baseType: !31, size: 8, offset: 288)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !626, file: !24, line: 239, baseType: !31, size: 8, offset: 296)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !626, file: !24, line: 239, baseType: !38, size: 16, offset: 304)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !626, file: !24, line: 240, baseType: !22, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !626, file: !24, line: 241, baseType: !81, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !626, file: !24, line: 242, baseType: !38, size: 16, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !626, file: !24, line: 243, baseType: !81, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !23, file: !24, line: 386, baseType: !648, size: 384)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !24, line: 263, size: 384, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !648, file: !24, line: 264, baseType: !22, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !648, file: !24, line: 264, baseType: !31, size: 8, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !648, file: !24, line: 264, baseType: !31, size: 8, offset: 72)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !648, file: !24, line: 264, baseType: !38, size: 16, offset: 80)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !24, line: 264, baseType: !31, size: 8, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !648, file: !24, line: 264, baseType: !31, size: 8, offset: 104)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !648, file: !24, line: 264, baseType: !31, size: 8, offset: 112)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !648, file: !24, line: 264, baseType: !31, size: 8, offset: 120)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !648, file: !24, line: 264, baseType: !86, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !648, file: !24, line: 264, baseType: !70, size: 32, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !648, file: !24, line: 264, baseType: !70, size: 32, offset: 224)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !648, file: !24, line: 264, baseType: !70, size: 32, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !648, file: !24, line: 264, baseType: !31, size: 8, offset: 288)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !648, file: !24, line: 264, baseType: !31, size: 8, offset: 296)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !648, file: !24, line: 264, baseType: !31, size: 8, offset: 304)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !648, file: !24, line: 265, baseType: !22, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !23, file: !24, line: 387, baseType: !667, size: 448)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !24, line: 246, size: 448, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !667, file: !24, line: 247, baseType: !22, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !667, file: !24, line: 247, baseType: !31, size: 8, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !24, line: 247, baseType: !31, size: 8, offset: 72)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !667, file: !24, line: 247, baseType: !38, size: 16, offset: 80)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !24, line: 247, baseType: !31, size: 8, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !667, file: !24, line: 247, baseType: !31, size: 8, offset: 104)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !667, file: !24, line: 247, baseType: !31, size: 8, offset: 112)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !667, file: !24, line: 247, baseType: !31, size: 8, offset: 120)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !667, file: !24, line: 247, baseType: !86, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !667, file: !24, line: 247, baseType: !70, size: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !667, file: !24, line: 247, baseType: !70, size: 32, offset: 224)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !667, file: !24, line: 247, baseType: !70, size: 32, offset: 256)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !667, file: !24, line: 247, baseType: !31, size: 8, offset: 288)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !667, file: !24, line: 247, baseType: !31, size: 8, offset: 296)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !667, file: !24, line: 247, baseType: !22, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !667, file: !24, line: 248, baseType: !22, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !23, file: !24, line: 388, baseType: !686, size: 448)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !24, line: 251, size: 448, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !24, line: 252, baseType: !22, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !24, line: 252, baseType: !31, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !24, line: 252, baseType: !31, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !24, line: 252, baseType: !38, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !24, line: 252, baseType: !31, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !24, line: 252, baseType: !31, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !24, line: 252, baseType: !31, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !24, line: 252, baseType: !31, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !24, line: 252, baseType: !86, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !24, line: 252, baseType: !70, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !24, line: 252, baseType: !70, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !24, line: 252, baseType: !70, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !24, line: 252, baseType: !31, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !24, line: 252, baseType: !31, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !686, file: !24, line: 257, baseType: !22, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !686, file: !24, line: 258, baseType: !22, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !23, file: !24, line: 389, baseType: !705, size: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !24, line: 274, size: 512, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !705, file: !24, line: 275, baseType: !22, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !705, file: !24, line: 275, baseType: !31, size: 8, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !24, line: 275, baseType: !31, size: 8, offset: 72)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !705, file: !24, line: 275, baseType: !38, size: 16, offset: 80)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !705, file: !24, line: 275, baseType: !31, size: 8, offset: 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !24, line: 275, baseType: !86, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !705, file: !24, line: 276, baseType: !70, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !705, file: !24, line: 277, baseType: !381, size: 64, offset: 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !705, file: !24, line: 278, baseType: !132, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !705, file: !24, line: 279, baseType: !489, size: 128, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !23, file: !24, line: 390, baseType: !718, size: 576)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !24, line: 282, size: 576, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !733, !734, !735, !736, !742, !743}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !718, file: !24, line: 283, baseType: !22, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !718, file: !24, line: 283, baseType: !31, size: 8, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !718, file: !24, line: 283, baseType: !31, size: 8, offset: 72)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !718, file: !24, line: 283, baseType: !38, size: 16, offset: 80)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !24, line: 283, baseType: !31, size: 8, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !718, file: !24, line: 283, baseType: !31, size: 8, offset: 104)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !718, file: !24, line: 284, baseType: !31, size: 8, offset: 112)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !718, file: !24, line: 285, baseType: !728, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !108, line: 1093, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!155, !70, !477, !70, !732, !132, !132}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !24, line: 286, baseType: !86, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !718, file: !24, line: 287, baseType: !132, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !718, file: !24, line: 288, baseType: !132, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !718, file: !24, line: 289, baseType: !737, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !108, line: 1126, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!155, !385, !70, !132, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !718, file: !24, line: 290, baseType: !22, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !24, line: 291, baseType: !22, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !23, file: !24, line: 391, baseType: !745, size: 512)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !24, line: 309, size: 512, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !24, line: 310, baseType: !22, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !24, line: 310, baseType: !31, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !24, line: 310, baseType: !31, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !24, line: 310, baseType: !38, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !24, line: 310, baseType: !31, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !745, file: !24, line: 310, baseType: !31, size: 8, offset: 104)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !745, file: !24, line: 311, baseType: !31, size: 8, offset: 112)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !745, file: !24, line: 312, baseType: !31, size: 8, offset: 120)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !745, file: !24, line: 313, baseType: !132, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !745, file: !24, line: 314, baseType: !86, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !745, file: !24, line: 315, baseType: !119, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !745, file: !24, line: 316, baseType: !81, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !745, file: !24, line: 317, baseType: !81, size: 64, offset: 384)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !24, line: 318, baseType: !70, size: 32, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !23, file: !24, line: 392, baseType: !762, size: 448)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !24, line: 342, size: 448, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !762, file: !24, line: 343, baseType: !22, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !762, file: !24, line: 343, baseType: !31, size: 8, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !762, file: !24, line: 343, baseType: !31, size: 8, offset: 72)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !762, file: !24, line: 343, baseType: !38, size: 16, offset: 80)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !762, file: !24, line: 343, baseType: !31, size: 8, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !762, file: !24, line: 343, baseType: !86, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !762, file: !24, line: 344, baseType: !86, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !762, file: !24, line: 345, baseType: !132, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !762, file: !24, line: 346, baseType: !81, size: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !762, file: !24, line: 347, baseType: !70, size: 32, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !23, file: !24, line: 393, baseType: !775, size: 256)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !24, line: 352, size: 256, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !787}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !24, line: 353, baseType: !22, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !24, line: 353, baseType: !31, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !24, line: 353, baseType: !31, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !24, line: 353, baseType: !38, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !24, line: 353, baseType: !31, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !775, file: !24, line: 353, baseType: !783, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !108, line: 1064, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !385, !132}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !775, file: !24, line: 354, baseType: !132, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !23, file: !24, line: 394, baseType: !789, size: 192)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !24, line: 359, size: 192, elements: !790)
!790 = !{!791, !792, !793, !794, !795, !796}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !789, file: !24, line: 360, baseType: !22, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !789, file: !24, line: 360, baseType: !31, size: 8, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !789, file: !24, line: 360, baseType: !31, size: 8, offset: 72)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !789, file: !24, line: 360, baseType: !38, size: 16, offset: 80)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !789, file: !24, line: 360, baseType: !31, size: 8, offset: 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !789, file: !24, line: 360, baseType: !22, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !23, file: !24, line: 401, baseType: !87, size: 384)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_mem_space_context", file: !108, line: 1235, size: 256, elements: !800)
!800 = !{!801, !802, !803, !812}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !799, file: !108, line: 1236, baseType: !70, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !799, file: !108, line: 1237, baseType: !477, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cur_mm", scope: !799, file: !108, line: 1238, baseType: !804, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_mem_mapping", file: !108, line: 1228, size: 256, elements: !806)
!806 = !{!807, !808, !809, !811}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "physical_address", scope: !805, file: !108, line: 1229, baseType: !477, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "logical_address", scope: !805, file: !108, line: 1230, baseType: !81, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !805, file: !108, line: 1231, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !108, line: 127, baseType: !55)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "next_mm", scope: !805, file: !108, line: 1232, baseType: !804, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "first_mm", scope: !799, file: !108, line: 1239, baseType: !804, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !108, line: 814, baseType: !31)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !815, line: 154, baseType: !7)
!815 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!816 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!817 = !{!818, !823, !828, !830, !832, !0}
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 464, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 58)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !825, isLocal: true, isDefinition: true)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 40, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 5)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !3, line: 272, type: !825, isLocal: true, isDefinition: true)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 280, type: !825, isLocal: true, isDefinition: true)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !834, isLocal: true, isDefinition: true)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 168, elements: !835)
!835 = !{!836}
!836 = !DISubrange(count: 21)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 72, elements: !401)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!839 = !{i32 7, !"Dwarf Version", i32 5}
!840 = !{i32 2, !"Debug Info Version", i32 3}
!841 = !{i32 1, !"wchar_size", i32 2}
!842 = !{i32 8, !"cf-protection-branch", i32 1}
!843 = !{i32 4, !"function_return_thunk_extern", i32 1}
!844 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!845 = !{i32 1, !"Code Model", i32 2}
!846 = !{i32 1, !"override-stack-alignment", i32 8}
!847 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!848 = distinct !DISubprogram(name: "acpi_ev_system_memory_region_setup", scope: !3, file: !3, line: 34, type: !739, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!849 = !{!850, !851, !852, !853, !854, !855, !856}
!850 = !DILocalVariable(name: "handle", arg: 1, scope: !848, file: !3, line: 34, type: !385)
!851 = !DILocalVariable(name: "function", arg: 2, scope: !848, file: !3, line: 35, type: !70)
!852 = !DILocalVariable(name: "handler_context", arg: 3, scope: !848, file: !3, line: 36, type: !132)
!853 = !DILocalVariable(name: "region_context", arg: 4, scope: !848, file: !3, line: 36, type: !741)
!854 = !DILocalVariable(name: "region_desc", scope: !848, file: !3, line: 38, type: !22)
!855 = !DILocalVariable(name: "local_region_context", scope: !848, file: !3, line: 40, type: !798)
!856 = !DILocalVariable(name: "mm", scope: !848, file: !3, line: 41, type: !804)
!857 = !DILocation(line: 34, column: 48, scope: !848)
!858 = !DILocation(line: 35, column: 12, scope: !848)
!859 = !DILocation(line: 36, column: 14, scope: !848)
!860 = !DILocation(line: 36, column: 38, scope: !848)
!861 = !DILocation(line: 38, column: 2, scope: !848)
!862 = !DILocation(line: 38, column: 29, scope: !848)
!863 = !DILocation(line: 39, column: 35, scope: !848)
!864 = !DILocation(line: 40, column: 2, scope: !848)
!865 = !DILocation(line: 40, column: 33, scope: !848)
!866 = !DILocation(line: 41, column: 2, scope: !848)
!867 = !DILocation(line: 41, column: 27, scope: !848)
!868 = !DILocation(line: 45, column: 6, scope: !869)
!869 = distinct !DILexicalBlock(scope: !848, file: !3, line: 45, column: 6)
!870 = !DILocation(line: 45, column: 15, scope: !869)
!871 = !DILocation(line: 45, column: 6, scope: !848)
!872 = !DILocation(line: 46, column: 8, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 46, column: 7)
!874 = distinct !DILexicalBlock(scope: !869, file: !3, line: 45, column: 42)
!875 = !DILocation(line: 46, column: 7, scope: !873)
!876 = !DILocation(line: 46, column: 7, scope: !874)
!877 = !DILocation(line: 48, column: 42, scope: !878)
!878 = distinct !DILexicalBlock(scope: !873, file: !3, line: 46, column: 24)
!879 = !DILocation(line: 48, column: 41, scope: !878)
!880 = !DILocation(line: 47, column: 25, scope: !878)
!881 = !DILocation(line: 52, column: 4, scope: !878)
!882 = !DILocation(line: 52, column: 11, scope: !878)
!883 = !DILocation(line: 52, column: 33, scope: !878)
!884 = !DILocation(line: 53, column: 10, scope: !885)
!885 = distinct !DILexicalBlock(scope: !878, file: !3, line: 52, column: 43)
!886 = !DILocation(line: 53, column: 32, scope: !885)
!887 = !DILocation(line: 53, column: 8, scope: !885)
!888 = !DILocation(line: 54, column: 38, scope: !885)
!889 = !DILocation(line: 54, column: 42, scope: !885)
!890 = !DILocation(line: 54, column: 5, scope: !885)
!891 = !DILocation(line: 54, column: 27, scope: !885)
!892 = !DILocation(line: 54, column: 36, scope: !885)
!893 = !DILocation(line: 55, column: 26, scope: !885)
!894 = !DILocation(line: 55, column: 30, scope: !885)
!895 = !DILocation(line: 56, column: 12, scope: !885)
!896 = !DILocation(line: 56, column: 16, scope: !885)
!897 = !DILocation(line: 55, column: 5, scope: !885)
!898 = !DILocation(line: 57, column: 5, scope: !885)
!899 = distinct !{!899, !881, !900, !901, !902}
!900 = !DILocation(line: 58, column: 4, scope: !878)
!901 = !{!"llvm.loop.mustprogress"}
!902 = !{!"llvm.loop.unroll.disable"}
!903 = !DILocation(line: 59, column: 4, scope: !878)
!904 = !DILocation(line: 60, column: 5, scope: !878)
!905 = !DILocation(line: 60, column: 20, scope: !878)
!906 = !DILocation(line: 61, column: 3, scope: !878)
!907 = !DILocation(line: 62, column: 3, scope: !874)
!908 = !DILocation(line: 68, column: 6, scope: !848)
!909 = !DILocation(line: 67, column: 23, scope: !848)
!910 = !DILocation(line: 69, column: 8, scope: !911)
!911 = distinct !DILexicalBlock(scope: !848, file: !3, line: 69, column: 6)
!912 = !DILocation(line: 69, column: 7, scope: !911)
!913 = !DILocation(line: 69, column: 6, scope: !848)
!914 = !DILocation(line: 70, column: 3, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !3, line: 69, column: 31)
!916 = !DILocation(line: 75, column: 33, scope: !848)
!917 = !DILocation(line: 75, column: 53, scope: !848)
!918 = !DILocation(line: 75, column: 2, scope: !848)
!919 = !DILocation(line: 75, column: 24, scope: !848)
!920 = !DILocation(line: 75, column: 31, scope: !848)
!921 = !DILocation(line: 76, column: 34, scope: !848)
!922 = !DILocation(line: 76, column: 54, scope: !848)
!923 = !DILocation(line: 76, column: 2, scope: !848)
!924 = !DILocation(line: 76, column: 24, scope: !848)
!925 = !DILocation(line: 76, column: 32, scope: !848)
!926 = !DILocation(line: 78, column: 20, scope: !848)
!927 = !DILocation(line: 78, column: 3, scope: !848)
!928 = !DILocation(line: 78, column: 18, scope: !848)
!929 = !DILocation(line: 79, column: 2, scope: !848)
!930 = !DILocation(line: 80, column: 1, scope: !848)
!931 = !DISubprogram(name: "acpi_os_unmap_memory", scope: !932, file: !932, line: 187, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!933 = !DISubroutineType(types: !934)
!934 = !{null, !132, !810}
!935 = distinct !DISubprogram(name: "acpi_os_free", scope: !936, file: !936, line: 60, type: !937, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !939)
!936 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!937 = !DISubroutineType(types: !938)
!938 = !{null, !132}
!939 = !{!940}
!940 = !DILocalVariable(name: "memory", arg: 1, scope: !935, file: !936, line: 60, type: !132)
!941 = !DILocation(line: 60, column: 39, scope: !935)
!942 = !DILocation(line: 62, column: 8, scope: !935)
!943 = !DILocation(line: 62, column: 2, scope: !935)
!944 = !DILocation(line: 63, column: 1, scope: !935)
!945 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !936, file: !936, line: 55, type: !946, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !948)
!946 = !DISubroutineType(types: !947)
!947 = !{!132, !810}
!948 = !{!949, !950, !952, !955, !956, !959}
!949 = !DILocalVariable(name: "size", arg: 1, scope: !945, file: !936, line: 55, type: !810)
!950 = !DILocalVariable(name: "_flags", scope: !951, file: !936, line: 57, type: !816)
!951 = distinct !DILexicalBlock(scope: !945, file: !936, line: 57, column: 23)
!952 = !DILocalVariable(name: "__dummy", scope: !953, file: !936, line: 57, type: !816)
!953 = distinct !DILexicalBlock(scope: !954, file: !936, line: 57, column: 23)
!954 = distinct !DILexicalBlock(scope: !951, file: !936, line: 57, column: 23)
!955 = !DILocalVariable(name: "__dummy2", scope: !953, file: !936, line: 57, type: !816)
!956 = !DILocalVariable(name: "__dummy", scope: !957, file: !936, line: 57, type: !816)
!957 = distinct !DILexicalBlock(scope: !958, file: !936, line: 57, column: 23)
!958 = distinct !DILexicalBlock(scope: !951, file: !936, line: 57, column: 23)
!959 = !DILocalVariable(name: "__dummy2", scope: !957, file: !936, line: 57, type: !816)
!960 = !DILocation(line: 55, column: 55, scope: !945)
!961 = !DILocation(line: 57, column: 17, scope: !945)
!962 = !DILocation(line: 57, column: 23, scope: !951)
!963 = !DILocation(line: 57, column: 23, scope: !953)
!964 = !DILocation(line: 57, column: 23, scope: !954)
!965 = !DILocation(line: 57, column: 23, scope: !957)
!966 = !DILocation(line: 57, column: 23, scope: !958)
!967 = !DILocation(line: 57, column: 23, scope: !945)
!968 = !DILocation(line: 57, column: 9, scope: !945)
!969 = !DILocation(line: 57, column: 2, scope: !945)
!970 = distinct !DISubprogram(name: "acpi_ev_io_space_region_setup", scope: !3, file: !3, line: 98, type: !739, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!971 = !{!972, !973, !974, !975}
!972 = !DILocalVariable(name: "handle", arg: 1, scope: !970, file: !3, line: 98, type: !385)
!973 = !DILocalVariable(name: "function", arg: 2, scope: !970, file: !3, line: 99, type: !70)
!974 = !DILocalVariable(name: "handler_context", arg: 3, scope: !970, file: !3, line: 100, type: !132)
!975 = !DILocalVariable(name: "region_context", arg: 4, scope: !970, file: !3, line: 100, type: !741)
!976 = !DILocation(line: 98, column: 43, scope: !970)
!977 = !DILocation(line: 99, column: 14, scope: !970)
!978 = !DILocation(line: 100, column: 16, scope: !970)
!979 = !DILocation(line: 100, column: 40, scope: !970)
!980 = !DILocation(line: 104, column: 6, scope: !981)
!981 = distinct !DILexicalBlock(scope: !970, file: !3, line: 104, column: 6)
!982 = !DILocation(line: 104, column: 15, scope: !981)
!983 = !DILocation(line: 104, column: 6, scope: !970)
!984 = !DILocation(line: 105, column: 4, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !3, line: 104, column: 42)
!986 = !DILocation(line: 105, column: 19, scope: !985)
!987 = !DILocation(line: 106, column: 2, scope: !985)
!988 = !DILocation(line: 107, column: 21, scope: !989)
!989 = distinct !DILexicalBlock(scope: !981, file: !3, line: 106, column: 9)
!990 = !DILocation(line: 107, column: 4, scope: !989)
!991 = !DILocation(line: 107, column: 19, scope: !989)
!992 = !DILocation(line: 110, column: 2, scope: !970)
!993 = distinct !DISubprogram(name: "acpi_ev_pci_config_region_setup", scope: !3, file: !3, line: 131, type: !739, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1009, !1010, !1011, !1012, !1013}
!995 = !DILocalVariable(name: "handle", arg: 1, scope: !993, file: !3, line: 131, type: !385)
!996 = !DILocalVariable(name: "function", arg: 2, scope: !993, file: !3, line: 132, type: !70)
!997 = !DILocalVariable(name: "handler_context", arg: 3, scope: !993, file: !3, line: 133, type: !132)
!998 = !DILocalVariable(name: "region_context", arg: 4, scope: !993, file: !3, line: 133, type: !741)
!999 = !DILocalVariable(name: "status", scope: !993, file: !3, line: 135, type: !155)
!1000 = !DILocalVariable(name: "pci_value", scope: !993, file: !3, line: 136, type: !55)
!1001 = !DILocalVariable(name: "pci_id", scope: !993, file: !3, line: 137, type: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_id", file: !108, line: 1221, size: 64, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !1003, file: !108, line: 1222, baseType: !38, size: 16)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1003, file: !108, line: 1223, baseType: !38, size: 16, offset: 16)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1003, file: !108, line: 1224, baseType: !38, size: 16, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1003, file: !108, line: 1225, baseType: !38, size: 16, offset: 48)
!1009 = !DILocalVariable(name: "handler_obj", scope: !993, file: !3, line: 138, type: !22)
!1010 = !DILocalVariable(name: "parent_node", scope: !993, file: !3, line: 139, type: !86)
!1011 = !DILocalVariable(name: "pci_root_node", scope: !993, file: !3, line: 140, type: !86)
!1012 = !DILocalVariable(name: "pci_device_node", scope: !993, file: !3, line: 141, type: !86)
!1013 = !DILocalVariable(name: "region_obj", scope: !993, file: !3, line: 142, type: !22)
!1014 = !DILocation(line: 131, column: 45, scope: !993)
!1015 = !DILocation(line: 132, column: 9, scope: !993)
!1016 = !DILocation(line: 133, column: 11, scope: !993)
!1017 = !DILocation(line: 133, column: 35, scope: !993)
!1018 = !DILocation(line: 135, column: 2, scope: !993)
!1019 = !DILocation(line: 135, column: 14, scope: !993)
!1020 = !DILocation(line: 136, column: 2, scope: !993)
!1021 = !DILocation(line: 136, column: 6, scope: !993)
!1022 = !DILocation(line: 137, column: 2, scope: !993)
!1023 = !DILocation(line: 137, column: 22, scope: !993)
!1024 = !DILocation(line: 137, column: 32, scope: !993)
!1025 = !DILocation(line: 137, column: 31, scope: !993)
!1026 = !DILocation(line: 138, column: 2, scope: !993)
!1027 = !DILocation(line: 138, column: 29, scope: !993)
!1028 = !DILocation(line: 139, column: 2, scope: !993)
!1029 = !DILocation(line: 139, column: 30, scope: !993)
!1030 = !DILocation(line: 140, column: 2, scope: !993)
!1031 = !DILocation(line: 140, column: 30, scope: !993)
!1032 = !DILocation(line: 141, column: 2, scope: !993)
!1033 = !DILocation(line: 141, column: 30, scope: !993)
!1034 = !DILocation(line: 142, column: 2, scope: !993)
!1035 = !DILocation(line: 142, column: 29, scope: !993)
!1036 = !DILocation(line: 143, column: 35, scope: !993)
!1037 = !DILocation(line: 147, column: 16, scope: !993)
!1038 = !DILocation(line: 147, column: 35, scope: !993)
!1039 = !DILocation(line: 147, column: 14, scope: !993)
!1040 = !DILocation(line: 148, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !993, file: !3, line: 148, column: 6)
!1042 = !DILocation(line: 148, column: 6, scope: !993)
!1043 = !DILocation(line: 156, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 148, column: 20)
!1045 = !DILocation(line: 159, column: 3, scope: !993)
!1046 = !DILocation(line: 159, column: 18, scope: !993)
!1047 = !DILocation(line: 160, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !993, file: !3, line: 160, column: 6)
!1049 = !DILocation(line: 160, column: 15, scope: !1048)
!1050 = !DILocation(line: 160, column: 6, scope: !993)
!1051 = !DILocation(line: 161, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 161, column: 7)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 160, column: 42)
!1054 = !DILocation(line: 161, column: 7, scope: !1053)
!1055 = !DILocation(line: 162, column: 4, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 161, column: 15)
!1057 = !DILocation(line: 163, column: 3, scope: !1056)
!1058 = !DILocation(line: 164, column: 3, scope: !1053)
!1059 = !DILocation(line: 167, column: 16, scope: !993)
!1060 = !DILocation(line: 167, column: 35, scope: !993)
!1061 = !DILocation(line: 167, column: 41, scope: !993)
!1062 = !DILocation(line: 167, column: 14, scope: !993)
!1063 = !DILocation(line: 182, column: 6, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !993, file: !3, line: 182, column: 6)
!1065 = !DILocation(line: 182, column: 33, scope: !1064)
!1066 = !DILocation(line: 182, column: 41, scope: !1064)
!1067 = !DILocation(line: 182, column: 38, scope: !1064)
!1068 = !DILocation(line: 182, column: 6, scope: !993)
!1069 = !DILocation(line: 186, column: 19, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 182, column: 61)
!1071 = !DILocation(line: 186, column: 17, scope: !1070)
!1072 = !DILocation(line: 187, column: 3, scope: !1070)
!1073 = !DILocation(line: 187, column: 10, scope: !1070)
!1074 = !DILocation(line: 187, column: 27, scope: !1070)
!1075 = !DILocation(line: 187, column: 24, scope: !1070)
!1076 = !DILocation(line: 191, column: 35, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 191, column: 8)
!1078 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 187, column: 47)
!1079 = !DILocation(line: 191, column: 8, scope: !1077)
!1080 = !DILocation(line: 191, column: 8, scope: !1078)
!1081 = !DILocation(line: 195, column: 62, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 191, column: 51)
!1083 = !DILocation(line: 195, column: 14, scope: !1082)
!1084 = !DILocation(line: 195, column: 12, scope: !1082)
!1085 = !DILocation(line: 196, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 196, column: 9)
!1087 = !DILocation(line: 196, column: 9, scope: !1082)
!1088 = !DILocation(line: 197, column: 10, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 197, column: 10)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 196, column: 31)
!1091 = !DILocation(line: 197, column: 17, scope: !1089)
!1092 = !DILocation(line: 197, column: 10, scope: !1090)
!1093 = !DILocation(line: 203, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 197, column: 37)
!1095 = !DILocation(line: 204, column: 7, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 203, column: 13)
!1097 = !DILocation(line: 210, column: 5, scope: !1090)
!1098 = !DILocation(line: 211, column: 5, scope: !1082)
!1099 = !DILocation(line: 214, column: 20, scope: !1078)
!1100 = !DILocation(line: 214, column: 35, scope: !1078)
!1101 = !DILocation(line: 214, column: 18, scope: !1078)
!1102 = distinct !{!1102, !1072, !1103, !901, !902}
!1103 = !DILocation(line: 215, column: 3, scope: !1070)
!1104 = !DILocation(line: 218, column: 2, scope: !1070)
!1105 = !DILocation(line: 219, column: 19, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 218, column: 9)
!1107 = !DILocation(line: 219, column: 46, scope: !1106)
!1108 = !DILocation(line: 219, column: 17, scope: !1106)
!1109 = !DILocation(line: 226, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !993, file: !3, line: 226, column: 6)
!1111 = !DILocation(line: 226, column: 25, scope: !1110)
!1112 = !DILocation(line: 226, column: 31, scope: !1110)
!1113 = !DILocation(line: 226, column: 6, scope: !993)
!1114 = !DILocation(line: 227, column: 3, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 226, column: 56)
!1116 = !DILocation(line: 232, column: 11, scope: !993)
!1117 = !DILocation(line: 232, column: 9, scope: !993)
!1118 = !DILocation(line: 233, column: 7, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !993, file: !3, line: 233, column: 6)
!1120 = !DILocation(line: 233, column: 6, scope: !993)
!1121 = !DILocation(line: 234, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 233, column: 15)
!1123 = !DILocation(line: 244, column: 20, scope: !993)
!1124 = !DILocation(line: 244, column: 39, scope: !993)
!1125 = !DILocation(line: 244, column: 18, scope: !993)
!1126 = !DILocation(line: 245, column: 2, scope: !993)
!1127 = !DILocation(line: 245, column: 9, scope: !993)
!1128 = !DILocation(line: 245, column: 25, scope: !993)
!1129 = !DILocation(line: 245, column: 29, scope: !993)
!1130 = !DILocation(line: 245, column: 46, scope: !993)
!1131 = !DILocation(line: 245, column: 51, scope: !993)
!1132 = !DILocation(line: 0, scope: !993)
!1133 = !DILocation(line: 246, column: 21, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !993, file: !3, line: 245, column: 73)
!1135 = !DILocation(line: 246, column: 38, scope: !1134)
!1136 = !DILocation(line: 246, column: 19, scope: !1134)
!1137 = distinct !{!1137, !1126, !1138, !901, !902}
!1138 = !DILocation(line: 247, column: 2, scope: !993)
!1139 = !DILocation(line: 249, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !993, file: !3, line: 249, column: 6)
!1141 = !DILocation(line: 249, column: 6, scope: !993)
!1142 = !DILocation(line: 250, column: 3, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 249, column: 24)
!1144 = !DILocation(line: 251, column: 3, scope: !1143)
!1145 = !DILocation(line: 259, column: 8, scope: !993)
!1146 = !DILocation(line: 258, column: 11, scope: !993)
!1147 = !DILocation(line: 258, column: 9, scope: !993)
!1148 = !DILocation(line: 265, column: 6, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !993, file: !3, line: 265, column: 6)
!1150 = !DILocation(line: 265, column: 6, scope: !993)
!1151 = !DILocation(line: 266, column: 20, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 265, column: 28)
!1153 = !DILocation(line: 266, column: 3, scope: !1152)
!1154 = !DILocation(line: 266, column: 11, scope: !1152)
!1155 = !DILocation(line: 266, column: 18, scope: !1152)
!1156 = !DILocation(line: 267, column: 22, scope: !1152)
!1157 = !DILocation(line: 267, column: 3, scope: !1152)
!1158 = !DILocation(line: 267, column: 11, scope: !1152)
!1159 = !DILocation(line: 267, column: 20, scope: !1152)
!1160 = !DILocation(line: 268, column: 2, scope: !1152)
!1161 = !DILocation(line: 273, column: 8, scope: !993)
!1162 = !DILocation(line: 272, column: 11, scope: !993)
!1163 = !DILocation(line: 272, column: 9, scope: !993)
!1164 = !DILocation(line: 274, column: 6, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !993, file: !3, line: 274, column: 6)
!1166 = !DILocation(line: 274, column: 6, scope: !993)
!1167 = !DILocation(line: 275, column: 21, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 274, column: 28)
!1169 = !DILocation(line: 275, column: 3, scope: !1168)
!1170 = !DILocation(line: 275, column: 11, scope: !1168)
!1171 = !DILocation(line: 275, column: 19, scope: !1168)
!1172 = !DILocation(line: 276, column: 2, scope: !1168)
!1173 = !DILocation(line: 281, column: 8, scope: !993)
!1174 = !DILocation(line: 280, column: 11, scope: !993)
!1175 = !DILocation(line: 280, column: 9, scope: !993)
!1176 = !DILocation(line: 282, column: 6, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !993, file: !3, line: 282, column: 6)
!1178 = !DILocation(line: 282, column: 6, scope: !993)
!1179 = !DILocation(line: 283, column: 17, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 282, column: 28)
!1181 = !DILocation(line: 283, column: 3, scope: !1180)
!1182 = !DILocation(line: 283, column: 11, scope: !1180)
!1183 = !DILocation(line: 283, column: 15, scope: !1180)
!1184 = !DILocation(line: 284, column: 2, scope: !1180)
!1185 = !DILocation(line: 289, column: 28, scope: !993)
!1186 = !DILocation(line: 289, column: 36, scope: !993)
!1187 = !DILocation(line: 290, column: 7, scope: !993)
!1188 = !DILocation(line: 290, column: 26, scope: !993)
!1189 = !DILocation(line: 289, column: 6, scope: !993)
!1190 = !DILocation(line: 288, column: 9, scope: !993)
!1191 = !DILocation(line: 291, column: 6, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !993, file: !3, line: 291, column: 6)
!1193 = !DILocation(line: 291, column: 6, scope: !993)
!1194 = !DILocation(line: 292, column: 3, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 291, column: 28)
!1196 = !DILocation(line: 293, column: 3, scope: !1195)
!1197 = !DILocation(line: 296, column: 20, scope: !993)
!1198 = !DILocation(line: 296, column: 3, scope: !993)
!1199 = !DILocation(line: 296, column: 18, scope: !993)
!1200 = !DILocation(line: 297, column: 2, scope: !993)
!1201 = !DILocation(line: 298, column: 1, scope: !993)
!1202 = distinct !DISubprogram(name: "acpi_ev_is_pci_root_bridge", scope: !3, file: !3, line: 313, type: !1203, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!31, !86}
!1205 = !{!1206, !1207, !1208, !1214, !1224, !1225}
!1206 = !DILocalVariable(name: "node", arg: 1, scope: !1202, file: !3, line: 313, type: !86)
!1207 = !DILocalVariable(name: "status", scope: !1202, file: !3, line: 315, type: !155)
!1208 = !DILocalVariable(name: "hid", scope: !1202, file: !3, line: 316, type: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !108, line: 1165, size: 128, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1210, file: !108, line: 1166, baseType: !70, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1210, file: !108, line: 1167, baseType: !67, size: 64, offset: 64)
!1214 = !DILocalVariable(name: "cid", scope: !1202, file: !3, line: 317, type: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !108, line: 1170, size: 64, elements: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1216, file: !108, line: 1171, baseType: !70, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !1216, file: !108, line: 1172, baseType: !70, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1216, file: !108, line: 1173, baseType: !1221, offset: 64)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1210, elements: !1222)
!1222 = !{!1223}
!1223 = !DISubrange(count: -1)
!1224 = !DILocalVariable(name: "i", scope: !1202, file: !3, line: 318, type: !70)
!1225 = !DILocalVariable(name: "match", scope: !1202, file: !3, line: 319, type: !31)
!1226 = !DILocation(line: 313, column: 59, scope: !1202)
!1227 = !DILocation(line: 315, column: 2, scope: !1202)
!1228 = !DILocation(line: 315, column: 14, scope: !1202)
!1229 = !DILocation(line: 316, column: 2, scope: !1202)
!1230 = !DILocation(line: 316, column: 29, scope: !1202)
!1231 = !DILocation(line: 317, column: 2, scope: !1202)
!1232 = !DILocation(line: 317, column: 34, scope: !1202)
!1233 = !DILocation(line: 318, column: 2, scope: !1202)
!1234 = !DILocation(line: 318, column: 6, scope: !1202)
!1235 = !DILocation(line: 319, column: 2, scope: !1202)
!1236 = !DILocation(line: 319, column: 5, scope: !1202)
!1237 = !DILocation(line: 323, column: 31, scope: !1202)
!1238 = !DILocation(line: 323, column: 11, scope: !1202)
!1239 = !DILocation(line: 323, column: 9, scope: !1202)
!1240 = !DILocation(line: 324, column: 6, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 324, column: 6)
!1242 = !DILocation(line: 324, column: 6, scope: !1202)
!1243 = !DILocation(line: 325, column: 3, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 324, column: 28)
!1245 = !DILocation(line: 328, column: 37, scope: !1202)
!1246 = !DILocation(line: 328, column: 42, scope: !1202)
!1247 = !DILocation(line: 328, column: 10, scope: !1202)
!1248 = !DILocation(line: 328, column: 8, scope: !1202)
!1249 = !DILocation(line: 329, column: 2, scope: !1202)
!1250 = !DILocation(line: 331, column: 6, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 331, column: 6)
!1252 = !DILocation(line: 331, column: 6, scope: !1202)
!1253 = !DILocation(line: 332, column: 3, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 331, column: 13)
!1255 = !DILocation(line: 337, column: 31, scope: !1202)
!1256 = !DILocation(line: 337, column: 11, scope: !1202)
!1257 = !DILocation(line: 337, column: 9, scope: !1202)
!1258 = !DILocation(line: 338, column: 6, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 338, column: 6)
!1260 = !DILocation(line: 338, column: 6, scope: !1202)
!1261 = !DILocation(line: 339, column: 3, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 338, column: 28)
!1263 = !DILocation(line: 344, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 344, column: 2)
!1265 = !DILocation(line: 344, column: 7, scope: !1264)
!1266 = !DILocation(line: 344, column: 14, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 344, column: 2)
!1268 = !DILocation(line: 344, column: 18, scope: !1267)
!1269 = !DILocation(line: 344, column: 23, scope: !1267)
!1270 = !DILocation(line: 344, column: 16, scope: !1267)
!1271 = !DILocation(line: 344, column: 2, scope: !1264)
!1272 = !DILocation(line: 345, column: 34, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 345, column: 7)
!1274 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 344, column: 35)
!1275 = !DILocation(line: 345, column: 39, scope: !1273)
!1276 = !DILocation(line: 345, column: 43, scope: !1273)
!1277 = !DILocation(line: 345, column: 46, scope: !1273)
!1278 = !DILocation(line: 345, column: 7, scope: !1273)
!1279 = !DILocation(line: 345, column: 7, scope: !1274)
!1280 = !DILocation(line: 346, column: 4, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 345, column: 55)
!1282 = !DILocation(line: 347, column: 4, scope: !1281)
!1283 = !DILocation(line: 349, column: 2, scope: !1274)
!1284 = !DILocation(line: 344, column: 31, scope: !1267)
!1285 = !DILocation(line: 344, column: 2, scope: !1267)
!1286 = distinct !{!1286, !1271, !1287, !901, !902}
!1287 = !DILocation(line: 349, column: 2, scope: !1264)
!1288 = !DILocation(line: 351, column: 2, scope: !1202)
!1289 = !DILocation(line: 352, column: 2, scope: !1202)
!1290 = !DILocation(line: 353, column: 1, scope: !1202)
!1291 = !DISubprogram(name: "acpi_install_address_space_handler", scope: !1292, file: !1292, line: 645, type: !1293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!155, !385, !813, !728, !737, !132}
!1295 = !DISubprogram(name: "acpi_exception", scope: !1292, file: !1292, line: 906, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1298, !70, !155, !1298, null}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!1299 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1300, file: !1300, line: 227, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1300 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1298, !132}
!1303 = !DISubprogram(name: "acpi_ut_evaluate_numeric_object", scope: !1300, file: !1300, line: 387, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!155, !1298, !86, !732}
!1306 = !DISubprogram(name: "acpi_hw_derive_pci_id", scope: !1307, file: !1307, line: 118, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1307 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!155, !1002, !385, !385}
!1310 = !DISubprogram(name: "acpi_ut_execute_HID", scope: !1300, file: !1300, line: 403, type: !1311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!155, !86, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1314 = !DISubprogram(name: "acpi_ut_is_pci_root_bridge", scope: !1300, file: !1300, line: 557, type: !1315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!31, !67}
!1317 = !DISubprogram(name: "acpi_ut_execute_CID", scope: !1300, file: !1300, line: 411, type: !1318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!155, !86, !1320}
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1321 = distinct !DISubprogram(name: "acpi_ev_pci_bar_region_setup", scope: !3, file: !3, line: 373, type: !739, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1322)
!1322 = !{!1323, !1324, !1325, !1326}
!1323 = !DILocalVariable(name: "handle", arg: 1, scope: !1321, file: !3, line: 373, type: !385)
!1324 = !DILocalVariable(name: "function", arg: 2, scope: !1321, file: !3, line: 374, type: !70)
!1325 = !DILocalVariable(name: "handler_context", arg: 3, scope: !1321, file: !3, line: 375, type: !132)
!1326 = !DILocalVariable(name: "region_context", arg: 4, scope: !1321, file: !3, line: 375, type: !741)
!1327 = !DILocation(line: 373, column: 42, scope: !1321)
!1328 = !DILocation(line: 374, column: 13, scope: !1321)
!1329 = !DILocation(line: 375, column: 15, scope: !1321)
!1330 = !DILocation(line: 375, column: 39, scope: !1321)
!1331 = !DILocation(line: 379, column: 2, scope: !1321)
!1332 = distinct !DISubprogram(name: "acpi_ev_cmos_region_setup", scope: !3, file: !3, line: 400, type: !739, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1333)
!1333 = !{!1334, !1335, !1336, !1337}
!1334 = !DILocalVariable(name: "handle", arg: 1, scope: !1332, file: !3, line: 400, type: !385)
!1335 = !DILocalVariable(name: "function", arg: 2, scope: !1332, file: !3, line: 401, type: !70)
!1336 = !DILocalVariable(name: "handler_context", arg: 3, scope: !1332, file: !3, line: 402, type: !132)
!1337 = !DILocalVariable(name: "region_context", arg: 4, scope: !1332, file: !3, line: 402, type: !741)
!1338 = !DILocation(line: 400, column: 39, scope: !1332)
!1339 = !DILocation(line: 401, column: 10, scope: !1332)
!1340 = !DILocation(line: 402, column: 12, scope: !1332)
!1341 = !DILocation(line: 402, column: 36, scope: !1332)
!1342 = !DILocation(line: 406, column: 2, scope: !1332)
!1343 = distinct !DISubprogram(name: "acpi_ev_data_table_region_setup", scope: !3, file: !3, line: 427, type: !739, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350}
!1345 = !DILocalVariable(name: "handle", arg: 1, scope: !1343, file: !3, line: 427, type: !385)
!1346 = !DILocalVariable(name: "function", arg: 2, scope: !1343, file: !3, line: 428, type: !70)
!1347 = !DILocalVariable(name: "handler_context", arg: 3, scope: !1343, file: !3, line: 429, type: !132)
!1348 = !DILocalVariable(name: "region_context", arg: 4, scope: !1343, file: !3, line: 429, type: !741)
!1349 = !DILocalVariable(name: "region_desc", scope: !1343, file: !3, line: 431, type: !22)
!1350 = !DILocalVariable(name: "local_region_context", scope: !1343, file: !3, line: 433, type: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_data_table_mapping", file: !108, line: 1242, size: 64, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1352, file: !108, line: 1243, baseType: !132, size: 64)
!1355 = !DILocation(line: 427, column: 45, scope: !1343)
!1356 = !DILocation(line: 428, column: 9, scope: !1343)
!1357 = !DILocation(line: 429, column: 11, scope: !1343)
!1358 = !DILocation(line: 429, column: 35, scope: !1343)
!1359 = !DILocation(line: 431, column: 2, scope: !1343)
!1360 = !DILocation(line: 431, column: 29, scope: !1343)
!1361 = !DILocation(line: 432, column: 35, scope: !1343)
!1362 = !DILocation(line: 433, column: 2, scope: !1343)
!1363 = !DILocation(line: 433, column: 34, scope: !1343)
!1364 = !DILocation(line: 437, column: 6, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 437, column: 6)
!1366 = !DILocation(line: 437, column: 15, scope: !1365)
!1367 = !DILocation(line: 437, column: 6, scope: !1343)
!1368 = !DILocation(line: 438, column: 8, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 438, column: 7)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 437, column: 42)
!1371 = !DILocation(line: 438, column: 7, scope: !1369)
!1372 = !DILocation(line: 438, column: 7, scope: !1370)
!1373 = !DILocation(line: 439, column: 4, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 438, column: 24)
!1375 = !DILocation(line: 440, column: 5, scope: !1374)
!1376 = !DILocation(line: 440, column: 20, scope: !1374)
!1377 = !DILocation(line: 441, column: 3, scope: !1374)
!1378 = !DILocation(line: 442, column: 3, scope: !1370)
!1379 = !DILocation(line: 448, column: 6, scope: !1343)
!1380 = !DILocation(line: 447, column: 23, scope: !1343)
!1381 = !DILocation(line: 449, column: 8, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 449, column: 6)
!1383 = !DILocation(line: 449, column: 7, scope: !1382)
!1384 = !DILocation(line: 449, column: 6, scope: !1343)
!1385 = !DILocation(line: 450, column: 3, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 449, column: 31)
!1387 = !DILocation(line: 455, column: 34, scope: !1343)
!1388 = !DILocation(line: 455, column: 54, scope: !1343)
!1389 = !DILocation(line: 455, column: 2, scope: !1343)
!1390 = !DILocation(line: 455, column: 24, scope: !1343)
!1391 = !DILocation(line: 455, column: 32, scope: !1343)
!1392 = !DILocation(line: 457, column: 20, scope: !1343)
!1393 = !DILocation(line: 457, column: 3, scope: !1343)
!1394 = !DILocation(line: 457, column: 18, scope: !1343)
!1395 = !DILocation(line: 458, column: 2, scope: !1343)
!1396 = !DILocation(line: 459, column: 1, scope: !1343)
!1397 = distinct !DISubprogram(name: "acpi_ev_default_region_setup", scope: !3, file: !3, line: 477, type: !739, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1398)
!1398 = !{!1399, !1400, !1401, !1402}
!1399 = !DILocalVariable(name: "handle", arg: 1, scope: !1397, file: !3, line: 477, type: !385)
!1400 = !DILocalVariable(name: "function", arg: 2, scope: !1397, file: !3, line: 478, type: !70)
!1401 = !DILocalVariable(name: "handler_context", arg: 3, scope: !1397, file: !3, line: 479, type: !132)
!1402 = !DILocalVariable(name: "region_context", arg: 4, scope: !1397, file: !3, line: 479, type: !741)
!1403 = !DILocation(line: 477, column: 42, scope: !1397)
!1404 = !DILocation(line: 478, column: 13, scope: !1397)
!1405 = !DILocation(line: 479, column: 15, scope: !1397)
!1406 = !DILocation(line: 479, column: 39, scope: !1397)
!1407 = !DILocation(line: 483, column: 6, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 483, column: 6)
!1409 = !DILocation(line: 483, column: 15, scope: !1408)
!1410 = !DILocation(line: 483, column: 6, scope: !1397)
!1411 = !DILocation(line: 484, column: 4, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 483, column: 42)
!1413 = !DILocation(line: 484, column: 19, scope: !1412)
!1414 = !DILocation(line: 485, column: 2, scope: !1412)
!1415 = !DILocation(line: 486, column: 21, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 485, column: 9)
!1417 = !DILocation(line: 486, column: 4, scope: !1416)
!1418 = !DILocation(line: 486, column: 19, scope: !1416)
!1419 = !DILocation(line: 489, column: 2, scope: !1397)
!1420 = distinct !DISubprogram(name: "acpi_ev_initialize_region", scope: !3, file: !3, line: 528, type: !1421, scopeLine: 529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1423)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!155, !22}
!1423 = !{!1424, !1425, !1426, !1427, !1428}
!1424 = !DILocalVariable(name: "region_obj", arg: 1, scope: !1420, file: !3, line: 528, type: !22)
!1425 = !DILocalVariable(name: "handler_obj", scope: !1420, file: !3, line: 530, type: !22)
!1426 = !DILocalVariable(name: "obj_desc", scope: !1420, file: !3, line: 531, type: !22)
!1427 = !DILocalVariable(name: "space_id", scope: !1420, file: !3, line: 532, type: !813)
!1428 = !DILocalVariable(name: "node", scope: !1420, file: !3, line: 533, type: !86)
!1429 = !DILocation(line: 528, column: 66, scope: !1420)
!1430 = !DILocation(line: 530, column: 2, scope: !1420)
!1431 = !DILocation(line: 530, column: 29, scope: !1420)
!1432 = !DILocation(line: 531, column: 2, scope: !1420)
!1433 = !DILocation(line: 531, column: 29, scope: !1420)
!1434 = !DILocation(line: 532, column: 2, scope: !1420)
!1435 = !DILocation(line: 532, column: 22, scope: !1420)
!1436 = !DILocation(line: 533, column: 2, scope: !1420)
!1437 = !DILocation(line: 533, column: 30, scope: !1420)
!1438 = !DILocation(line: 537, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 537, column: 6)
!1440 = !DILocation(line: 537, column: 6, scope: !1420)
!1441 = !DILocation(line: 538, column: 3, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 537, column: 19)
!1443 = !DILocation(line: 541, column: 6, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 541, column: 6)
!1445 = !DILocation(line: 541, column: 25, scope: !1444)
!1446 = !DILocation(line: 541, column: 31, scope: !1444)
!1447 = !DILocation(line: 541, column: 6, scope: !1420)
!1448 = !DILocation(line: 542, column: 3, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 541, column: 60)
!1450 = !DILocation(line: 545, column: 2, scope: !1420)
!1451 = !DILocation(line: 545, column: 21, scope: !1420)
!1452 = !DILocation(line: 545, column: 27, scope: !1420)
!1453 = !DILocation(line: 547, column: 9, scope: !1420)
!1454 = !DILocation(line: 547, column: 28, scope: !1420)
!1455 = !DILocation(line: 547, column: 34, scope: !1420)
!1456 = !DILocation(line: 547, column: 7, scope: !1420)
!1457 = !DILocation(line: 548, column: 13, scope: !1420)
!1458 = !DILocation(line: 548, column: 32, scope: !1420)
!1459 = !DILocation(line: 548, column: 11, scope: !1420)
!1460 = !DILocation(line: 554, column: 2, scope: !1420)
!1461 = !DILocation(line: 554, column: 9, scope: !1420)
!1462 = !DILocation(line: 558, column: 15, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 554, column: 15)
!1464 = !DILocation(line: 559, column: 42, scope: !1463)
!1465 = !DILocation(line: 559, column: 14, scope: !1463)
!1466 = !DILocation(line: 559, column: 12, scope: !1463)
!1467 = !DILocation(line: 560, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 560, column: 7)
!1469 = !DILocation(line: 560, column: 7, scope: !1463)
!1470 = !DILocation(line: 564, column: 12, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 560, column: 17)
!1472 = !DILocation(line: 564, column: 18, scope: !1471)
!1473 = !DILocation(line: 564, column: 4, scope: !1471)
!1474 = !DILocation(line: 569, column: 19, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 564, column: 24)
!1476 = !DILocation(line: 569, column: 43, scope: !1475)
!1477 = !DILocation(line: 569, column: 17, scope: !1475)
!1478 = !DILocation(line: 570, column: 5, scope: !1475)
!1479 = !DILocation(line: 576, column: 5, scope: !1475)
!1480 = !DILocation(line: 580, column: 36, scope: !1471)
!1481 = !DILocation(line: 580, column: 46, scope: !1471)
!1482 = !DILocation(line: 580, column: 8, scope: !1471)
!1483 = !DILocation(line: 579, column: 16, scope: !1471)
!1484 = !DILocation(line: 581, column: 8, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 581, column: 8)
!1486 = !DILocation(line: 581, column: 8, scope: !1471)
!1487 = !DILocation(line: 590, column: 33, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 581, column: 21)
!1489 = !DILocation(line: 591, column: 12, scope: !1488)
!1490 = !DILocation(line: 590, column: 11, scope: !1488)
!1491 = !DILocation(line: 597, column: 5, scope: !1488)
!1492 = !DILocation(line: 598, column: 38, scope: !1488)
!1493 = !DILocation(line: 598, column: 11, scope: !1488)
!1494 = !DILocation(line: 600, column: 5, scope: !1488)
!1495 = !DILocation(line: 601, column: 5, scope: !1488)
!1496 = !DILocation(line: 603, column: 3, scope: !1471)
!1497 = !DILocation(line: 607, column: 10, scope: !1463)
!1498 = !DILocation(line: 607, column: 16, scope: !1463)
!1499 = !DILocation(line: 607, column: 8, scope: !1463)
!1500 = distinct !{!1500, !1460, !1501, !901, !902}
!1501 = !DILocation(line: 608, column: 2, scope: !1420)
!1502 = !DILocation(line: 620, column: 2, scope: !1420)
!1503 = !DILocation(line: 621, column: 1, scope: !1420)
!1504 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1505, file: !1505, line: 298, type: !1506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1505 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!22, !86}
!1508 = !DISubprogram(name: "acpi_ev_find_region_handler", scope: !1509, file: !1509, line: 153, type: !1510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1509 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!22, !813, !22}
!1512 = !DISubprogram(name: "acpi_ev_attach_region", scope: !1509, file: !1509, line: 182, type: !1513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!155, !22, !22, !31}
!1515 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !1516, file: !1516, line: 466, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1516 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null}
!1519 = !DISubprogram(name: "acpi_ev_execute_reg_method", scope: !1509, file: !1509, line: 195, type: !1520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!155, !22, !70}
!1522 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !1516, file: !1516, line: 464, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1523 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1528 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1529, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1535)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!132, !1531, !814}
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !815, line: 61, baseType: !1532)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1533, line: 72, baseType: !1534)
!1533 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1533, line: 16, baseType: !816)
!1535 = !{!1536, !1537}
!1536 = !DILocalVariable(name: "size", arg: 1, scope: !1528, file: !12, line: 719, type: !1531)
!1537 = !DILocalVariable(name: "flags", arg: 2, scope: !1528, file: !12, line: 719, type: !814)
!1538 = !DILocation(line: 719, column: 52, scope: !1528)
!1539 = !DILocation(line: 719, column: 64, scope: !1528)
!1540 = !DILocation(line: 721, column: 17, scope: !1528)
!1541 = !DILocation(line: 721, column: 23, scope: !1528)
!1542 = !DILocation(line: 721, column: 29, scope: !1528)
!1543 = !DILocation(line: 721, column: 9, scope: !1528)
!1544 = !DILocation(line: 721, column: 2, scope: !1528)
!1545 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1546, file: !1546, line: 65, type: !1547, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1546 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!816}
!1549 = !DILocation(line: 67, column: 9, scope: !1545)
!1550 = !DILocation(line: 67, column: 2, scope: !1545)
!1551 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1546, file: !1546, line: 120, type: !1552, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1555)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!1554, !816}
!1554 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1555 = !{!1556}
!1556 = !DILocalVariable(name: "flags", arg: 1, scope: !1551, file: !1546, line: 120, type: !816)
!1557 = !DILocation(line: 120, column: 67, scope: !1551)
!1558 = !DILocation(line: 122, column: 11, scope: !1551)
!1559 = !DILocation(line: 122, column: 17, scope: !1551)
!1560 = !DILocation(line: 122, column: 9, scope: !1551)
!1561 = !DILocation(line: 122, column: 2, scope: !1551)
!1562 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1529, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DILocalVariable(name: "size", arg: 1, scope: !1562, file: !12, line: 591, type: !1531)
!1565 = !DILocalVariable(name: "flags", arg: 2, scope: !1562, file: !12, line: 591, type: !814)
!1566 = !DILocalVariable(name: "index", scope: !1567, file: !12, line: 594, type: !7)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !12, line: 593, column: 42)
!1568 = distinct !DILexicalBlock(scope: !1562, file: !12, line: 593, column: 6)
!1569 = !DILocation(line: 591, column: 61, scope: !1562)
!1570 = !DILocation(line: 591, column: 73, scope: !1562)
!1571 = !DILocation(line: 593, column: 27, scope: !1568)
!1572 = !DILocation(line: 593, column: 6, scope: !1568)
!1573 = !DILocation(line: 593, column: 33, scope: !1568)
!1574 = !DILocation(line: 593, column: 36, scope: !1568)
!1575 = !DILocation(line: 593, column: 6, scope: !1562)
!1576 = !DILocation(line: 594, column: 3, scope: !1567)
!1577 = !DILocation(line: 594, column: 16, scope: !1567)
!1578 = !DILocation(line: 596, column: 7, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1567, file: !12, line: 596, column: 7)
!1580 = !DILocation(line: 596, column: 12, scope: !1579)
!1581 = !DILocation(line: 596, column: 7, scope: !1567)
!1582 = !DILocation(line: 597, column: 25, scope: !1579)
!1583 = !DILocation(line: 597, column: 31, scope: !1579)
!1584 = !DILocation(line: 597, column: 11, scope: !1579)
!1585 = !DILocation(line: 597, column: 4, scope: !1579)
!1586 = !DILocation(line: 599, column: 11, scope: !1567)
!1587 = !DILocation(line: 599, column: 9, scope: !1567)
!1588 = !DILocation(line: 601, column: 33, scope: !1567)
!1589 = !DILocation(line: 601, column: 40, scope: !1567)
!1590 = !DILocation(line: 601, column: 20, scope: !1567)
!1591 = !DILocation(line: 601, column: 5, scope: !1567)
!1592 = !DILocation(line: 601, column: 51, scope: !1567)
!1593 = !DILocation(line: 602, column: 5, scope: !1567)
!1594 = !DILocation(line: 602, column: 12, scope: !1567)
!1595 = !DILocation(line: 600, column: 10, scope: !1567)
!1596 = !DILocation(line: 600, column: 3, scope: !1567)
!1597 = !DILocation(line: 603, column: 2, scope: !1568)
!1598 = !DILocation(line: 604, column: 19, scope: !1562)
!1599 = !DILocation(line: 604, column: 25, scope: !1562)
!1600 = !DILocation(line: 604, column: 9, scope: !1562)
!1601 = !DILocation(line: 604, column: 2, scope: !1562)
!1602 = !DILocation(line: 605, column: 1, scope: !1562)
!1603 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1604 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1605, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1609)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!7, !1531, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !815, line: 35, baseType: !1608)
!1608 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1609 = !{!1610, !1611}
!1610 = !DILocalVariable(name: "size", arg: 1, scope: !1604, file: !12, line: 444, type: !1531)
!1611 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1604, file: !12, line: 445, type: !1607)
!1612 = !DILocation(line: 444, column: 60, scope: !1604)
!1613 = !DILocation(line: 445, column: 16, scope: !1604)
!1614 = !DILocation(line: 447, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 447, column: 6)
!1616 = !DILocation(line: 447, column: 6, scope: !1604)
!1617 = !DILocation(line: 448, column: 3, scope: !1615)
!1618 = !DILocation(line: 450, column: 6, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 450, column: 6)
!1620 = !DILocation(line: 450, column: 11, scope: !1619)
!1621 = !DILocation(line: 450, column: 6, scope: !1604)
!1622 = !DILocation(line: 451, column: 3, scope: !1619)
!1623 = !DILocation(line: 453, column: 32, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 453, column: 6)
!1625 = !DILocation(line: 453, column: 37, scope: !1624)
!1626 = !DILocation(line: 453, column: 42, scope: !1624)
!1627 = !DILocation(line: 453, column: 45, scope: !1624)
!1628 = !DILocation(line: 453, column: 50, scope: !1624)
!1629 = !DILocation(line: 453, column: 6, scope: !1604)
!1630 = !DILocation(line: 454, column: 3, scope: !1624)
!1631 = !DILocation(line: 455, column: 32, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 455, column: 6)
!1633 = !DILocation(line: 455, column: 37, scope: !1632)
!1634 = !DILocation(line: 455, column: 43, scope: !1632)
!1635 = !DILocation(line: 455, column: 46, scope: !1632)
!1636 = !DILocation(line: 455, column: 51, scope: !1632)
!1637 = !DILocation(line: 455, column: 6, scope: !1604)
!1638 = !DILocation(line: 456, column: 3, scope: !1632)
!1639 = !DILocation(line: 457, column: 6, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 457, column: 6)
!1641 = !DILocation(line: 457, column: 11, scope: !1640)
!1642 = !DILocation(line: 457, column: 6, scope: !1604)
!1643 = !DILocation(line: 457, column: 26, scope: !1640)
!1644 = !DILocation(line: 458, column: 6, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 458, column: 6)
!1646 = !DILocation(line: 458, column: 11, scope: !1645)
!1647 = !DILocation(line: 458, column: 6, scope: !1604)
!1648 = !DILocation(line: 458, column: 26, scope: !1645)
!1649 = !DILocation(line: 459, column: 6, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 459, column: 6)
!1651 = !DILocation(line: 459, column: 11, scope: !1650)
!1652 = !DILocation(line: 459, column: 6, scope: !1604)
!1653 = !DILocation(line: 459, column: 26, scope: !1650)
!1654 = !DILocation(line: 460, column: 6, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 460, column: 6)
!1656 = !DILocation(line: 460, column: 11, scope: !1655)
!1657 = !DILocation(line: 460, column: 6, scope: !1604)
!1658 = !DILocation(line: 460, column: 26, scope: !1655)
!1659 = !DILocation(line: 461, column: 6, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 461, column: 6)
!1661 = !DILocation(line: 461, column: 11, scope: !1660)
!1662 = !DILocation(line: 461, column: 6, scope: !1604)
!1663 = !DILocation(line: 461, column: 26, scope: !1660)
!1664 = !DILocation(line: 462, column: 6, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 462, column: 6)
!1666 = !DILocation(line: 462, column: 11, scope: !1665)
!1667 = !DILocation(line: 462, column: 6, scope: !1604)
!1668 = !DILocation(line: 462, column: 26, scope: !1665)
!1669 = !DILocation(line: 463, column: 6, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 463, column: 6)
!1671 = !DILocation(line: 463, column: 11, scope: !1670)
!1672 = !DILocation(line: 463, column: 6, scope: !1604)
!1673 = !DILocation(line: 463, column: 26, scope: !1670)
!1674 = !DILocation(line: 464, column: 6, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 464, column: 6)
!1676 = !DILocation(line: 464, column: 11, scope: !1675)
!1677 = !DILocation(line: 464, column: 6, scope: !1604)
!1678 = !DILocation(line: 464, column: 26, scope: !1675)
!1679 = !DILocation(line: 465, column: 6, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 465, column: 6)
!1681 = !DILocation(line: 465, column: 11, scope: !1680)
!1682 = !DILocation(line: 465, column: 6, scope: !1604)
!1683 = !DILocation(line: 465, column: 26, scope: !1680)
!1684 = !DILocation(line: 466, column: 6, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 466, column: 6)
!1686 = !DILocation(line: 466, column: 11, scope: !1685)
!1687 = !DILocation(line: 466, column: 6, scope: !1604)
!1688 = !DILocation(line: 466, column: 26, scope: !1685)
!1689 = !DILocation(line: 467, column: 6, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 467, column: 6)
!1691 = !DILocation(line: 467, column: 11, scope: !1690)
!1692 = !DILocation(line: 467, column: 6, scope: !1604)
!1693 = !DILocation(line: 467, column: 26, scope: !1690)
!1694 = !DILocation(line: 468, column: 6, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 468, column: 6)
!1696 = !DILocation(line: 468, column: 11, scope: !1695)
!1697 = !DILocation(line: 468, column: 6, scope: !1604)
!1698 = !DILocation(line: 468, column: 26, scope: !1695)
!1699 = !DILocation(line: 469, column: 6, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 469, column: 6)
!1701 = !DILocation(line: 469, column: 11, scope: !1700)
!1702 = !DILocation(line: 469, column: 6, scope: !1604)
!1703 = !DILocation(line: 469, column: 26, scope: !1700)
!1704 = !DILocation(line: 470, column: 6, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 470, column: 6)
!1706 = !DILocation(line: 470, column: 11, scope: !1705)
!1707 = !DILocation(line: 470, column: 6, scope: !1604)
!1708 = !DILocation(line: 470, column: 26, scope: !1705)
!1709 = !DILocation(line: 471, column: 6, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 471, column: 6)
!1711 = !DILocation(line: 471, column: 11, scope: !1710)
!1712 = !DILocation(line: 471, column: 6, scope: !1604)
!1713 = !DILocation(line: 471, column: 26, scope: !1710)
!1714 = !DILocation(line: 472, column: 6, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 472, column: 6)
!1716 = !DILocation(line: 472, column: 11, scope: !1715)
!1717 = !DILocation(line: 472, column: 6, scope: !1604)
!1718 = !DILocation(line: 472, column: 26, scope: !1715)
!1719 = !DILocation(line: 473, column: 6, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 473, column: 6)
!1721 = !DILocation(line: 473, column: 11, scope: !1720)
!1722 = !DILocation(line: 473, column: 6, scope: !1604)
!1723 = !DILocation(line: 473, column: 26, scope: !1720)
!1724 = !DILocation(line: 474, column: 6, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 474, column: 6)
!1726 = !DILocation(line: 474, column: 11, scope: !1725)
!1727 = !DILocation(line: 474, column: 6, scope: !1604)
!1728 = !DILocation(line: 474, column: 27, scope: !1725)
!1729 = !DILocation(line: 475, column: 6, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 475, column: 6)
!1731 = !DILocation(line: 475, column: 11, scope: !1730)
!1732 = !DILocation(line: 475, column: 6, scope: !1604)
!1733 = !DILocation(line: 475, column: 32, scope: !1730)
!1734 = !DILocation(line: 477, column: 50, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1604, file: !12, line: 477, column: 6)
!1736 = !{i8 0, i8 2}
!1737 = !{}
!1738 = !DILocation(line: 477, column: 6, scope: !1604)
!1739 = !DILocation(line: 478, column: 3, scope: !1735)
!1740 = !DILocation(line: 478, column: 3, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !12, line: 478, column: 3)
!1742 = distinct !DILexicalBlock(scope: !1735, file: !12, line: 478, column: 3)
!1743 = !{i32 -2143031781}
!1744 = !DILocation(line: 478, column: 3, scope: !1742)
!1745 = !DILocation(line: 480, column: 3, scope: !1735)
!1746 = !DILocation(line: 480, column: 3, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1735, file: !12, line: 480, column: 3)
!1748 = !DILocation(line: 480, column: 3, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1747, file: !12, line: 480, column: 3)
!1750 = !DILocation(line: 480, column: 3, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !12, line: 480, column: 3)
!1752 = !{i64 2151935718, i64 2151935747, i64 2151935793, i64 2151935851, i64 2151935905, i64 2151935959, i64 2151936014, i64 2151936045}
!1753 = !DILocation(line: 483, column: 2, scope: !1604)
!1754 = !DILocation(line: 484, column: 1, scope: !1604)
!1755 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!132, !1758, !814, !1531}
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1760, line: 11, flags: DIFlagFwdDecl)
!1760 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1761 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1762, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1764)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!11, !814, !816}
!1764 = !{!1765, !1766}
!1765 = !DILocalVariable(name: "flags", arg: 1, scope: !1761, file: !12, line: 401, type: !814)
!1766 = !DILocalVariable(name: "caller", arg: 2, scope: !1761, file: !12, line: 401, type: !816)
!1767 = !DILocation(line: 401, column: 67, scope: !1761)
!1768 = !DILocation(line: 401, column: 88, scope: !1761)
!1769 = !DILocation(line: 407, column: 6, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1761, file: !12, line: 407, column: 6)
!1771 = !DILocation(line: 407, column: 6, scope: !1761)
!1772 = !DILocation(line: 413, column: 3, scope: !1770)
!1773 = !DILocation(line: 423, column: 38, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1761, file: !12, line: 423, column: 6)
!1775 = !DILocation(line: 423, column: 44, scope: !1774)
!1776 = !DILocation(line: 423, column: 6, scope: !1761)
!1777 = !DILocation(line: 424, column: 3, scope: !1774)
!1778 = !DILocation(line: 426, column: 3, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1761, file: !12, line: 425, column: 6)
!1780 = !DILocation(line: 429, column: 1, scope: !1761)
!1781 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1782 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1517, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1783 = distinct !DISubprogram(name: "native_save_fl", scope: !1546, file: !1546, line: 17, type: !1547, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1784)
!1784 = !{!1785}
!1785 = !DILocalVariable(name: "flags", scope: !1783, file: !1546, line: 19, type: !816)
!1786 = !DILocation(line: 19, column: 2, scope: !1783)
!1787 = !DILocation(line: 19, column: 16, scope: !1783)
!1788 = !DILocation(line: 26, column: 2, scope: !1783)
!1789 = !{i64 1525637, i64 1525658}
!1790 = !DILocation(line: 32, column: 9, scope: !1783)
!1791 = !DILocation(line: 33, column: 1, scope: !1783)
!1792 = !DILocation(line: 32, column: 2, scope: !1783)
