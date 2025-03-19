; ModuleID = 'drivers/acpi/acpica/nsalloc.c'
source_filename = "drivers/acpi/acpica/nsalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_data = type { ptr, i8, i8, i16, i8, ptr, ptr }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }

@acpi_gbl_namespace_cache = external dso_local global ptr, align 8
@acpi_gbl_root_node = external dso_local global ptr, align 8
@_acpi_module_name = internal constant [8 x i8] c"nsalloc\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Found a grandchild! P=%p C=%p\00", align 1, !dbg !796

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ns_create_node(i32 noundef %name) #0 align 16 !dbg !812 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %name, ptr %name.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !816, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %node, metadata !817, metadata !DIExpression()), !dbg !820
  %0 = load ptr, ptr @acpi_gbl_namespace_cache, align 8, !dbg !821
  %call = call ptr @acpi_os_acquire_object(ptr noundef %0) #7, !dbg !822
  store ptr %call, ptr %node, align 8, !dbg !823
  %1 = load ptr, ptr %node, align 8, !dbg !824
  %tobool = icmp ne ptr %1, null, !dbg !824
  br i1 %tobool, label %if.end, label %if.then, !dbg !826

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !827

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %name.addr, align 4, !dbg !829
  %3 = load ptr, ptr %node, align 8, !dbg !830
  %name1 = getelementptr inbounds %struct.acpi_namespace_node, ptr %3, i32 0, i32 4, !dbg !831
  store i32 %2, ptr %name1, align 4, !dbg !832
  %4 = load ptr, ptr %node, align 8, !dbg !833
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %4, i32 0, i32 1, !dbg !833
  store i8 15, ptr %descriptor_type, align 8, !dbg !833
  %5 = load ptr, ptr %node, align 8, !dbg !834
  store ptr %5, ptr %retval, align 8, !dbg !834
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !834

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !835
  %6 = load ptr, ptr %retval, align 8, !dbg !835
  ret ptr %6, !dbg !835
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_acquire_object(ptr noundef %cache) #3 align 16 !dbg !836 {
entry:
  %cache.addr = alloca ptr, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !844, metadata !DIExpression()), !dbg !856
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !857
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #6, !dbg !858
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !845, metadata !DIExpression()), !dbg !858
  br label %do.body, !dbg !858

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #6, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !848, metadata !DIExpression()), !dbg !859
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #6, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !851, metadata !DIExpression()), !dbg !859
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !859
  %conv = zext i1 %cmp to i32, !dbg !859
  store i32 1, ptr %tmp, align 4, !dbg !859
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #6, !dbg !860
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #6, !dbg !860
  %1 = load i32, ptr %tmp, align 4, !dbg !859
  %call = call i64 @arch_local_save_flags() #7, !dbg !860
  store i64 %call, ptr %_flags, align 8, !dbg !860
  br label %do.cond, !dbg !860

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !860

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #6, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !852, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #6, !dbg !861
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !855, metadata !DIExpression()), !dbg !861
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !861
  %conv6 = zext i1 %cmp5 to i32, !dbg !861
  store i32 1, ptr %tmp7, align 4, !dbg !861
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #6, !dbg !862
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #6, !dbg !862
  %2 = load i32, ptr %tmp7, align 4, !dbg !861
  %3 = load i64, ptr %_flags, align 8, !dbg !862
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #7, !dbg !862
  store i32 %call9, ptr %tmp8, align 4, !dbg !862
  %4 = load i32, ptr %tmp8, align 4, !dbg !862
  store i32 %4, ptr %tmp1, align 4, !dbg !860
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #6, !dbg !863
  %5 = load i32, ptr %tmp1, align 4, !dbg !858
  %tobool = icmp ne i32 %5, 0, !dbg !863
  %6 = zext i1 %tobool to i64, !dbg !863
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !863
  %call10 = call ptr @kmem_cache_zalloc(ptr noundef %0, i32 noundef %cond) #7, !dbg !864
  ret ptr %call10, !dbg !865
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_delete_node(ptr noundef %node) #0 align 16 !dbg !866 {
entry:
  %node.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %next_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !870, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #6, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !871, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_desc) #6, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %next_desc, metadata !872, metadata !DIExpression()), !dbg !877
  %0 = load ptr, ptr %node.addr, align 8, !dbg !878
  %tobool = icmp ne ptr %0, null, !dbg !878
  br i1 %tobool, label %if.end, label %if.then, !dbg !880

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !881

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !883
  call void @acpi_ns_detach_object(ptr noundef %1) #7, !dbg !884
  %2 = load ptr, ptr %node.addr, align 8, !dbg !885
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %2, i32 0, i32 0, !dbg !886
  %3 = load ptr, ptr %object, align 8, !dbg !886
  store ptr %3, ptr %obj_desc, align 8, !dbg !887
  br label %while.cond, !dbg !888

while.cond:                                       ; preds = %if.end6, %if.end
  %4 = load ptr, ptr %obj_desc, align 8, !dbg !889
  %tobool1 = icmp ne ptr %4, null, !dbg !889
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !890

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %obj_desc, align 8, !dbg !891
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 2, !dbg !892
  %6 = load i8, ptr %type, align 1, !dbg !892
  %conv = zext i8 %6 to i32, !dbg !891
  %cmp = icmp eq i32 %conv, 29, !dbg !893
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !894
  br i1 %7, label %while.body, label %while.end, !dbg !888

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !895
  %handler = getelementptr inbounds %struct.acpi_object_data, ptr %8, i32 0, i32 5, !dbg !898
  %9 = load ptr, ptr %handler, align 8, !dbg !898
  %tobool3 = icmp ne ptr %9, null, !dbg !895
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !899

if.then4:                                         ; preds = %while.body
  %10 = load ptr, ptr %obj_desc, align 8, !dbg !900
  %handler5 = getelementptr inbounds %struct.acpi_object_data, ptr %10, i32 0, i32 5, !dbg !902
  %11 = load ptr, ptr %handler5, align 8, !dbg !902
  %12 = load ptr, ptr %node.addr, align 8, !dbg !903
  %13 = load ptr, ptr %obj_desc, align 8, !dbg !904
  %pointer = getelementptr inbounds %struct.acpi_object_data, ptr %13, i32 0, i32 6, !dbg !905
  %14 = load ptr, ptr %pointer, align 8, !dbg !905
  call void %11(ptr noundef %12, ptr noundef %14) #7, !dbg !900
  br label %if.end6, !dbg !906

if.end6:                                          ; preds = %if.then4, %while.body
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !907
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %15, i32 0, i32 0, !dbg !908
  %16 = load ptr, ptr %next_object, align 8, !dbg !908
  store ptr %16, ptr %next_desc, align 8, !dbg !909
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !910
  call void @acpi_ut_remove_reference(ptr noundef %17) #7, !dbg !911
  %18 = load ptr, ptr %next_desc, align 8, !dbg !912
  store ptr %18, ptr %obj_desc, align 8, !dbg !913
  br label %while.cond, !dbg !888, !llvm.loop !914

while.end:                                        ; preds = %land.end
  %19 = load ptr, ptr %node.addr, align 8, !dbg !918
  %20 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !920
  %cmp7 = icmp eq ptr %19, %20, !dbg !921
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !922

if.then9:                                         ; preds = %while.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !923

if.end10:                                         ; preds = %while.end
  %21 = load ptr, ptr @acpi_gbl_namespace_cache, align 8, !dbg !925
  %22 = load ptr, ptr %node.addr, align 8, !dbg !926
  %call = call i32 @acpi_os_release_object(ptr noundef %21, ptr noundef %22) #7, !dbg !927
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !928
  br label %cleanup, !dbg !928

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_desc) #6, !dbg !928
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #6, !dbg !928
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !928

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !929 dso_local void @acpi_ns_detach_object(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !931 dso_local void @acpi_ut_remove_reference(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !935 dso_local i32 @acpi_os_release_object(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_remove_node(ptr noundef %node) #0 align 16 !dbg !939 {
entry:
  %node.addr = alloca ptr, align 8
  %parent_node = alloca ptr, align 8
  %prev_node = alloca ptr, align 8
  %next_node = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !941, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_node) #6, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %parent_node, metadata !942, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_node) #6, !dbg !948
  call void @llvm.dbg.declare(metadata ptr %prev_node, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_node) #6, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %next_node, metadata !944, metadata !DIExpression()), !dbg !951
  %0 = load ptr, ptr %node.addr, align 8, !dbg !952
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 5, !dbg !953
  %1 = load ptr, ptr %parent, align 8, !dbg !953
  store ptr %1, ptr %parent_node, align 8, !dbg !954
  store ptr null, ptr %prev_node, align 8, !dbg !955
  %2 = load ptr, ptr %parent_node, align 8, !dbg !956
  %child = getelementptr inbounds %struct.acpi_namespace_node, ptr %2, i32 0, i32 6, !dbg !957
  %3 = load ptr, ptr %child, align 8, !dbg !957
  store ptr %3, ptr %next_node, align 8, !dbg !958
  br label %while.cond, !dbg !959

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %next_node, align 8, !dbg !960
  %5 = load ptr, ptr %node.addr, align 8, !dbg !961
  %cmp = icmp ne ptr %4, %5, !dbg !962
  br i1 %cmp, label %while.body, label %while.end, !dbg !959

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %next_node, align 8, !dbg !963
  store ptr %6, ptr %prev_node, align 8, !dbg !965
  %7 = load ptr, ptr %next_node, align 8, !dbg !966
  %peer = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 7, !dbg !967
  %8 = load ptr, ptr %peer, align 8, !dbg !967
  store ptr %8, ptr %next_node, align 8, !dbg !968
  br label %while.cond, !dbg !959, !llvm.loop !969

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %prev_node, align 8, !dbg !971
  %tobool = icmp ne ptr %9, null, !dbg !971
  br i1 %tobool, label %if.then, label %if.else, !dbg !973

if.then:                                          ; preds = %while.end
  %10 = load ptr, ptr %node.addr, align 8, !dbg !974
  %peer1 = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 7, !dbg !976
  %11 = load ptr, ptr %peer1, align 8, !dbg !976
  %12 = load ptr, ptr %prev_node, align 8, !dbg !977
  %peer2 = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 7, !dbg !978
  store ptr %11, ptr %peer2, align 8, !dbg !979
  br label %if.end, !dbg !980

if.else:                                          ; preds = %while.end
  %13 = load ptr, ptr %node.addr, align 8, !dbg !981
  %peer3 = getelementptr inbounds %struct.acpi_namespace_node, ptr %13, i32 0, i32 7, !dbg !983
  %14 = load ptr, ptr %peer3, align 8, !dbg !983
  %15 = load ptr, ptr %parent_node, align 8, !dbg !984
  %child4 = getelementptr inbounds %struct.acpi_namespace_node, ptr %15, i32 0, i32 6, !dbg !985
  store ptr %14, ptr %child4, align 8, !dbg !986
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load ptr, ptr %node.addr, align 8, !dbg !987
  call void @acpi_ns_delete_node(ptr noundef %16) #7, !dbg !988
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_node) #6, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_node) #6, !dbg !989
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_node) #6, !dbg !989
  ret void, !dbg !989
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_install_node(ptr noundef %walk_state, ptr noundef %parent_node, ptr noundef %node, i32 noundef %type) #0 align 16 !dbg !990 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %parent_node.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %owner_id = alloca i16, align 2
  %child_node = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !995, metadata !DIExpression()), !dbg !1001
  store ptr %parent_node, ptr %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_node.addr, metadata !996, metadata !DIExpression()), !dbg !1002
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !997, metadata !DIExpression()), !dbg !1003
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !998, metadata !DIExpression()), !dbg !1004
  call void @llvm.lifetime.start.p0(i64 2, ptr %owner_id) #6, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %owner_id, metadata !999, metadata !DIExpression()), !dbg !1006
  store i16 0, ptr %owner_id, align 2, !dbg !1006
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_node) #6, !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %child_node, metadata !1000, metadata !DIExpression()), !dbg !1008
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1009
  %tobool = icmp ne ptr %0, null, !dbg !1009
  br i1 %tobool, label %if.then, label %if.end6, !dbg !1011

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1012
  %owner_id1 = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 7, !dbg !1014
  %2 = load i16, ptr %owner_id1, align 8, !dbg !1014
  store i16 %2, ptr %owner_id, align 2, !dbg !1015
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !1016
  %method_desc = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 37, !dbg !1018
  %4 = load ptr, ptr %method_desc, align 8, !dbg !1018
  %tobool2 = icmp ne ptr %4, null, !dbg !1019
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !1020

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %parent_node.addr, align 8, !dbg !1021
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !1022
  %method_node = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 38, !dbg !1023
  %7 = load ptr, ptr %method_node, align 8, !dbg !1023
  %cmp = icmp ne ptr %5, %7, !dbg !1024
  br i1 %cmp, label %if.then3, label %if.end, !dbg !1025

if.then3:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !1026
  %method_desc4 = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 37, !dbg !1028
  %9 = load ptr, ptr %method_desc4, align 8, !dbg !1028
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %9, i32 0, i32 5, !dbg !1029
  %10 = load i8, ptr %info_flags, align 1, !dbg !1030
  %conv = zext i8 %10 to i32, !dbg !1030
  %or = or i32 %conv, 32, !dbg !1030
  %conv5 = trunc i32 %or to i8, !dbg !1030
  store i8 %conv5, ptr %info_flags, align 1, !dbg !1030
  br label %if.end, !dbg !1031

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  br label %if.end6, !dbg !1032

if.end6:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %node.addr, align 8, !dbg !1033
  %peer = getelementptr inbounds %struct.acpi_namespace_node, ptr %11, i32 0, i32 7, !dbg !1034
  store ptr null, ptr %peer, align 8, !dbg !1035
  %12 = load ptr, ptr %parent_node.addr, align 8, !dbg !1036
  %13 = load ptr, ptr %node.addr, align 8, !dbg !1037
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %13, i32 0, i32 5, !dbg !1038
  store ptr %12, ptr %parent, align 8, !dbg !1039
  %14 = load ptr, ptr %parent_node.addr, align 8, !dbg !1040
  %child = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 6, !dbg !1041
  %15 = load ptr, ptr %child, align 8, !dbg !1041
  store ptr %15, ptr %child_node, align 8, !dbg !1042
  %16 = load ptr, ptr %child_node, align 8, !dbg !1043
  %tobool7 = icmp ne ptr %16, null, !dbg !1043
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !1045

if.then8:                                         ; preds = %if.end6
  %17 = load ptr, ptr %node.addr, align 8, !dbg !1046
  %18 = load ptr, ptr %parent_node.addr, align 8, !dbg !1048
  %child9 = getelementptr inbounds %struct.acpi_namespace_node, ptr %18, i32 0, i32 6, !dbg !1049
  store ptr %17, ptr %child9, align 8, !dbg !1050
  br label %if.end14, !dbg !1051

if.else:                                          ; preds = %if.end6
  br label %while.cond, !dbg !1052

while.cond:                                       ; preds = %while.body, %if.else
  %19 = load ptr, ptr %child_node, align 8, !dbg !1054
  %peer10 = getelementptr inbounds %struct.acpi_namespace_node, ptr %19, i32 0, i32 7, !dbg !1055
  %20 = load ptr, ptr %peer10, align 8, !dbg !1055
  %tobool11 = icmp ne ptr %20, null, !dbg !1052
  br i1 %tobool11, label %while.body, label %while.end, !dbg !1052

while.body:                                       ; preds = %while.cond
  %21 = load ptr, ptr %child_node, align 8, !dbg !1056
  %peer12 = getelementptr inbounds %struct.acpi_namespace_node, ptr %21, i32 0, i32 7, !dbg !1058
  %22 = load ptr, ptr %peer12, align 8, !dbg !1058
  store ptr %22, ptr %child_node, align 8, !dbg !1059
  br label %while.cond, !dbg !1052, !llvm.loop !1060

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %node.addr, align 8, !dbg !1062
  %24 = load ptr, ptr %child_node, align 8, !dbg !1063
  %peer13 = getelementptr inbounds %struct.acpi_namespace_node, ptr %24, i32 0, i32 7, !dbg !1064
  store ptr %23, ptr %peer13, align 8, !dbg !1065
  br label %if.end14

if.end14:                                         ; preds = %while.end, %if.then8
  %25 = load i16, ptr %owner_id, align 2, !dbg !1066
  %26 = load ptr, ptr %node.addr, align 8, !dbg !1067
  %owner_id15 = getelementptr inbounds %struct.acpi_namespace_node, ptr %26, i32 0, i32 8, !dbg !1068
  store i16 %25, ptr %owner_id15, align 8, !dbg !1069
  %27 = load i32, ptr %type.addr, align 4, !dbg !1070
  %conv16 = trunc i32 %27 to i8, !dbg !1071
  %28 = load ptr, ptr %node.addr, align 8, !dbg !1072
  %type17 = getelementptr inbounds %struct.acpi_namespace_node, ptr %28, i32 0, i32 2, !dbg !1073
  store i8 %conv16, ptr %type17, align 1, !dbg !1074
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_node) #6, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 2, ptr %owner_id) #6, !dbg !1075
  ret void, !dbg !1075
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_delete_children(ptr noundef %parent_node) #0 align 16 !dbg !1076 {
entry:
  %parent_node.addr = alloca ptr, align 8
  %next_node = alloca ptr, align 8
  %node_to_delete = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent_node, ptr %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_node.addr, metadata !1078, metadata !DIExpression()), !dbg !1081
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_node) #6, !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %next_node, metadata !1079, metadata !DIExpression()), !dbg !1083
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_to_delete) #6, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %node_to_delete, metadata !1080, metadata !DIExpression()), !dbg !1085
  %0 = load ptr, ptr %parent_node.addr, align 8, !dbg !1086
  %tobool = icmp ne ptr %0, null, !dbg !1086
  br i1 %tobool, label %if.end, label %if.then, !dbg !1088

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1089

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %parent_node.addr, align 8, !dbg !1091
  %child = getelementptr inbounds %struct.acpi_namespace_node, ptr %1, i32 0, i32 6, !dbg !1092
  %2 = load ptr, ptr %child, align 8, !dbg !1092
  store ptr %2, ptr %next_node, align 8, !dbg !1093
  br label %while.cond, !dbg !1094

while.cond:                                       ; preds = %if.end5, %if.end
  %3 = load ptr, ptr %next_node, align 8, !dbg !1095
  %tobool1 = icmp ne ptr %3, null, !dbg !1094
  br i1 %tobool1, label %while.body, label %while.end, !dbg !1094

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %next_node, align 8, !dbg !1096
  %child2 = getelementptr inbounds %struct.acpi_namespace_node, ptr %4, i32 0, i32 6, !dbg !1099
  %5 = load ptr, ptr %child2, align 8, !dbg !1099
  %tobool3 = icmp ne ptr %5, null, !dbg !1096
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1100

if.then4:                                         ; preds = %while.body
  %6 = load ptr, ptr %parent_node.addr, align 8, !dbg !1101
  %7 = load ptr, ptr %next_node, align 8, !dbg !1101
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 286, ptr noundef @.str, ptr noundef %6, ptr noundef %7) #7, !dbg !1101
  br label %if.end5, !dbg !1103

if.end5:                                          ; preds = %if.then4, %while.body
  %8 = load ptr, ptr %next_node, align 8, !dbg !1104
  store ptr %8, ptr %node_to_delete, align 8, !dbg !1105
  %9 = load ptr, ptr %next_node, align 8, !dbg !1106
  %peer = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 7, !dbg !1107
  %10 = load ptr, ptr %peer, align 8, !dbg !1107
  store ptr %10, ptr %next_node, align 8, !dbg !1108
  %11 = load ptr, ptr %node_to_delete, align 8, !dbg !1109
  call void @acpi_ns_delete_node(ptr noundef %11) #7, !dbg !1110
  br label %while.cond, !dbg !1094, !llvm.loop !1111

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %parent_node.addr, align 8, !dbg !1113
  %child6 = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 6, !dbg !1114
  store ptr null, ptr %child6, align 8, !dbg !1115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1116

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_to_delete) #6, !dbg !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_node) #6, !dbg !1117
  ret void, !dbg !1117
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1118 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_delete_namespace_subtree(ptr noundef %parent_node) #0 align 16 !dbg !1123 {
entry:
  %parent_node.addr = alloca ptr, align 8
  %child_node = alloca ptr, align 8
  %level = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent_node, ptr %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_node.addr, metadata !1125, metadata !DIExpression()), !dbg !1129
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_node) #6, !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %child_node, metadata !1126, metadata !DIExpression()), !dbg !1131
  store ptr null, ptr %child_node, align 8, !dbg !1131
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #6, !dbg !1132
  call void @llvm.dbg.declare(metadata ptr %level, metadata !1127, metadata !DIExpression()), !dbg !1133
  store i32 1, ptr %level, align 4, !dbg !1133
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1128, metadata !DIExpression()), !dbg !1135
  %0 = load ptr, ptr %parent_node.addr, align 8, !dbg !1136
  %tobool = icmp ne ptr %0, null, !dbg !1136
  br i1 %tobool, label %if.end, label %if.then, !dbg !1138

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1139

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #7, !dbg !1141
  store i32 %call, ptr %status, align 4, !dbg !1142
  %1 = load i32, ptr %status, align 4, !dbg !1143
  %tobool1 = icmp ne i32 %1, 0, !dbg !1143
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1145

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1146

if.end3:                                          ; preds = %if.end
  br label %while.cond, !dbg !1148

while.cond:                                       ; preds = %if.end10, %if.end3
  %2 = load i32, ptr %level, align 4, !dbg !1149
  %cmp = icmp ugt i32 %2, 0, !dbg !1150
  br i1 %cmp, label %while.body, label %while.end, !dbg !1148

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %parent_node.addr, align 8, !dbg !1151
  %4 = load ptr, ptr %child_node, align 8, !dbg !1153
  %call4 = call ptr @acpi_ns_get_next_node(ptr noundef %3, ptr noundef %4) #7, !dbg !1154
  store ptr %call4, ptr %child_node, align 8, !dbg !1155
  %5 = load ptr, ptr %child_node, align 8, !dbg !1156
  %tobool5 = icmp ne ptr %5, null, !dbg !1156
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1158

if.then6:                                         ; preds = %while.body
  %6 = load ptr, ptr %child_node, align 8, !dbg !1159
  call void @acpi_ns_detach_object(ptr noundef %6) #7, !dbg !1161
  %7 = load ptr, ptr %child_node, align 8, !dbg !1162
  %child = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 6, !dbg !1164
  %8 = load ptr, ptr %child, align 8, !dbg !1164
  %tobool7 = icmp ne ptr %8, null, !dbg !1162
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1165

if.then8:                                         ; preds = %if.then6
  %9 = load i32, ptr %level, align 4, !dbg !1166
  %inc = add i32 %9, 1, !dbg !1166
  store i32 %inc, ptr %level, align 4, !dbg !1166
  %10 = load ptr, ptr %child_node, align 8, !dbg !1168
  store ptr %10, ptr %parent_node.addr, align 8, !dbg !1169
  store ptr null, ptr %child_node, align 8, !dbg !1170
  br label %if.end9, !dbg !1171

if.end9:                                          ; preds = %if.then8, %if.then6
  br label %if.end10, !dbg !1172

if.else:                                          ; preds = %while.body
  %11 = load i32, ptr %level, align 4, !dbg !1173
  %dec = add i32 %11, -1, !dbg !1173
  store i32 %dec, ptr %level, align 4, !dbg !1173
  %12 = load ptr, ptr %parent_node.addr, align 8, !dbg !1175
  call void @acpi_ns_delete_children(ptr noundef %12) #7, !dbg !1176
  %13 = load ptr, ptr %parent_node.addr, align 8, !dbg !1177
  store ptr %13, ptr %child_node, align 8, !dbg !1178
  %14 = load ptr, ptr %parent_node.addr, align 8, !dbg !1179
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 5, !dbg !1180
  %15 = load ptr, ptr %parent, align 8, !dbg !1180
  store ptr %15, ptr %parent_node.addr, align 8, !dbg !1181
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end9
  br label %while.cond, !dbg !1148, !llvm.loop !1182

while.end:                                        ; preds = %while.cond
  %call11 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #7, !dbg !1184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1185

cleanup:                                          ; preds = %while.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1186
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #6, !dbg !1186
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_node) #6, !dbg !1186
  ret void, !dbg !1186
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1187 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1191 dso_local ptr @acpi_ns_get_next_node(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1194 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_delete_namespace_by_owner(i16 noundef zeroext %owner_id) #0 align 16 !dbg !1195 {
entry:
  %owner_id.addr = alloca i16, align 2
  %child_node = alloca ptr, align 8
  %deletion_node = alloca ptr, align 8
  %parent_node = alloca ptr, align 8
  %level = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %owner_id, ptr %owner_id.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %owner_id.addr, metadata !1199, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_node) #6, !dbg !1206
  call void @llvm.dbg.declare(metadata ptr %child_node, metadata !1200, metadata !DIExpression()), !dbg !1207
  call void @llvm.lifetime.start.p0(i64 8, ptr %deletion_node) #6, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %deletion_node, metadata !1201, metadata !DIExpression()), !dbg !1209
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_node) #6, !dbg !1210
  call void @llvm.dbg.declare(metadata ptr %parent_node, metadata !1202, metadata !DIExpression()), !dbg !1211
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #6, !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %level, metadata !1203, metadata !DIExpression()), !dbg !1213
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1214
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1204, metadata !DIExpression()), !dbg !1215
  %0 = load i16, ptr %owner_id.addr, align 2, !dbg !1216
  %conv = zext i16 %0 to i32, !dbg !1216
  %cmp = icmp eq i32 %conv, 0, !dbg !1218
  br i1 %cmp, label %if.then, label %if.end, !dbg !1219

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1220

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #7, !dbg !1222
  store i32 %call, ptr %status, align 4, !dbg !1223
  %1 = load i32, ptr %status, align 4, !dbg !1224
  %tobool = icmp ne i32 %1, 0, !dbg !1224
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !1226

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1227

if.end3:                                          ; preds = %if.end
  store ptr null, ptr %deletion_node, align 8, !dbg !1229
  %2 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1230
  store ptr %2, ptr %parent_node, align 8, !dbg !1231
  store ptr null, ptr %child_node, align 8, !dbg !1232
  store i32 1, ptr %level, align 4, !dbg !1233
  br label %while.cond, !dbg !1234

while.cond:                                       ; preds = %if.end41, %if.end3
  %3 = load i32, ptr %level, align 4, !dbg !1235
  %cmp4 = icmp ugt i32 %3, 0, !dbg !1236
  br i1 %cmp4, label %while.body, label %while.end, !dbg !1234

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %parent_node, align 8, !dbg !1237
  %5 = load ptr, ptr %child_node, align 8, !dbg !1239
  %call6 = call ptr @acpi_ns_get_next_node(ptr noundef %4, ptr noundef %5) #7, !dbg !1240
  store ptr %call6, ptr %child_node, align 8, !dbg !1241
  %6 = load ptr, ptr %deletion_node, align 8, !dbg !1242
  %tobool7 = icmp ne ptr %6, null, !dbg !1242
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1244

if.then8:                                         ; preds = %while.body
  %7 = load ptr, ptr %deletion_node, align 8, !dbg !1245
  call void @acpi_ns_delete_children(ptr noundef %7) #7, !dbg !1247
  %8 = load ptr, ptr %deletion_node, align 8, !dbg !1248
  call void @acpi_ns_remove_node(ptr noundef %8) #7, !dbg !1249
  store ptr null, ptr %deletion_node, align 8, !dbg !1250
  br label %if.end9, !dbg !1251

if.end9:                                          ; preds = %if.then8, %while.body
  %9 = load ptr, ptr %child_node, align 8, !dbg !1252
  %tobool10 = icmp ne ptr %9, null, !dbg !1252
  br i1 %tobool10, label %if.then11, label %if.else29, !dbg !1254

if.then11:                                        ; preds = %if.end9
  %10 = load ptr, ptr %child_node, align 8, !dbg !1255
  %owner_id12 = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 8, !dbg !1258
  %11 = load i16, ptr %owner_id12, align 8, !dbg !1258
  %conv13 = zext i16 %11 to i32, !dbg !1255
  %12 = load i16, ptr %owner_id.addr, align 2, !dbg !1259
  %conv14 = zext i16 %12 to i32, !dbg !1259
  %cmp15 = icmp eq i32 %conv13, %conv14, !dbg !1260
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !1261

if.then17:                                        ; preds = %if.then11
  %13 = load ptr, ptr %child_node, align 8, !dbg !1262
  call void @acpi_ns_detach_object(ptr noundef %13) #7, !dbg !1264
  br label %if.end18, !dbg !1265

if.end18:                                         ; preds = %if.then17, %if.then11
  %14 = load ptr, ptr %child_node, align 8, !dbg !1266
  %child = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 6, !dbg !1268
  %15 = load ptr, ptr %child, align 8, !dbg !1268
  %tobool19 = icmp ne ptr %15, null, !dbg !1266
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !1269

if.then20:                                        ; preds = %if.end18
  %16 = load i32, ptr %level, align 4, !dbg !1270
  %inc = add i32 %16, 1, !dbg !1270
  store i32 %inc, ptr %level, align 4, !dbg !1270
  %17 = load ptr, ptr %child_node, align 8, !dbg !1272
  store ptr %17, ptr %parent_node, align 8, !dbg !1273
  store ptr null, ptr %child_node, align 8, !dbg !1274
  br label %if.end28, !dbg !1275

if.else:                                          ; preds = %if.end18
  %18 = load ptr, ptr %child_node, align 8, !dbg !1276
  %owner_id21 = getelementptr inbounds %struct.acpi_namespace_node, ptr %18, i32 0, i32 8, !dbg !1278
  %19 = load i16, ptr %owner_id21, align 8, !dbg !1278
  %conv22 = zext i16 %19 to i32, !dbg !1276
  %20 = load i16, ptr %owner_id.addr, align 2, !dbg !1279
  %conv23 = zext i16 %20 to i32, !dbg !1279
  %cmp24 = icmp eq i32 %conv22, %conv23, !dbg !1280
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1281

if.then26:                                        ; preds = %if.else
  %21 = load ptr, ptr %child_node, align 8, !dbg !1282
  store ptr %21, ptr %deletion_node, align 8, !dbg !1284
  br label %if.end27, !dbg !1285

if.end27:                                         ; preds = %if.then26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then20
  br label %if.end41, !dbg !1286

if.else29:                                        ; preds = %if.end9
  %22 = load i32, ptr %level, align 4, !dbg !1287
  %dec = add i32 %22, -1, !dbg !1287
  store i32 %dec, ptr %level, align 4, !dbg !1287
  %23 = load i32, ptr %level, align 4, !dbg !1289
  %cmp30 = icmp ne i32 %23, 0, !dbg !1291
  br i1 %cmp30, label %if.then32, label %if.end40, !dbg !1292

if.then32:                                        ; preds = %if.else29
  %24 = load ptr, ptr %parent_node, align 8, !dbg !1293
  %owner_id33 = getelementptr inbounds %struct.acpi_namespace_node, ptr %24, i32 0, i32 8, !dbg !1296
  %25 = load i16, ptr %owner_id33, align 8, !dbg !1296
  %conv34 = zext i16 %25 to i32, !dbg !1293
  %26 = load i16, ptr %owner_id.addr, align 2, !dbg !1297
  %conv35 = zext i16 %26 to i32, !dbg !1297
  %cmp36 = icmp eq i32 %conv34, %conv35, !dbg !1298
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !1299

if.then38:                                        ; preds = %if.then32
  %27 = load ptr, ptr %parent_node, align 8, !dbg !1300
  store ptr %27, ptr %deletion_node, align 8, !dbg !1302
  br label %if.end39, !dbg !1303

if.end39:                                         ; preds = %if.then38, %if.then32
  br label %if.end40, !dbg !1304

if.end40:                                         ; preds = %if.end39, %if.else29
  %28 = load ptr, ptr %parent_node, align 8, !dbg !1305
  store ptr %28, ptr %child_node, align 8, !dbg !1306
  %29 = load ptr, ptr %parent_node, align 8, !dbg !1307
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %29, i32 0, i32 5, !dbg !1308
  %30 = load ptr, ptr %parent, align 8, !dbg !1308
  store ptr %30, ptr %parent_node, align 8, !dbg !1309
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end28
  br label %while.cond, !dbg !1234, !llvm.loop !1310

while.end:                                        ; preds = %while.cond
  %call42 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #7, !dbg !1312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1313

cleanup:                                          ; preds = %while.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1314
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #6, !dbg !1314
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_node) #6, !dbg !1314
  call void @llvm.lifetime.end.p0(i64 8, ptr %deletion_node) #6, !dbg !1314
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_node) #6, !dbg !1314
  ret void, !dbg !1314
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #3 align 16 !dbg !1315 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1320, metadata !DIExpression()), !dbg !1322
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1321, metadata !DIExpression()), !dbg !1323
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1324
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1325
  %or = or i32 %1, 256, !dbg !1326
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #7, !dbg !1327
  ret ptr %call, !dbg !1328
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #5 align 16 !dbg !1329 {
entry:
  %call = call i64 @native_save_fl() #7, !dbg !1333
  ret i64 %call, !dbg !1334
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #5 align 16 !dbg !1335 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1340, metadata !DIExpression()), !dbg !1341
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1342
  %and = and i64 %0, 512, !dbg !1343
  %tobool = icmp ne i64 %and, 0, !dbg !1344
  %lnot = xor i1 %tobool, true, !dbg !1344
  %lnot.ext = zext i1 %lnot to i32, !dbg !1344
  ret i32 %lnot.ext, !dbg !1345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1346 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #5 align 16 !dbg !1347 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #6, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1349, metadata !DIExpression()), !dbg !1351
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #6, !dbg !1352, !srcloc !1353
  %0 = load i64, ptr %flags, align 8, !dbg !1354
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #6, !dbg !1355
  ret i64 %0, !dbg !1356
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!803, !804, !805, !806, !807, !808, !809, !810}
!llvm.ident = !{!811}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 13, type: !801, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsalloc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsalloc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsalloc.ll drivers/acpi/acpica/nsalloc.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !795, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsalloc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb6a3f3c88c170e294606b420c20b042")
!4 = !{!5, !13, !15, !793}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !7, line: 434, size: 1600, elements: !8)
!7 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!8 = !{!9, !20, !791, !792}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !6, file: !7, line: 435, baseType: !10, size: 128)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !7, line: 429, size: 128, elements: !11)
!11 = !{!12, !14}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !10, file: !7, line: 430, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !10, file: !7, line: 431, baseType: !15, size: 8, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !19)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !6, file: !7, line: 436, baseType: !21, size: 576)
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !7, line: 369, size: 576, elements: !22)
!22 = !{!23, !35, !51, !66, !103, !117, !126, !440, !457, !473, !486, !564, !576, !590, !600, !618, !640, !659, !678, !697, !710, !737, !754, !767, !781, !790}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !21, file: !7, line: 370, baseType: !24, size: 128)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !7, line: 73, size: 128, elements: !25)
!25 = !{!26, !28, !29, !30, !34}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !24, file: !7, line: 74, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !24, file: !7, line: 74, baseType: !15, size: 8, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !7, line: 74, baseType: !15, size: 8, offset: 72)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !24, file: !7, line: 74, baseType: !31, size: 16, offset: 80)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !33)
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !7, line: 74, baseType: !15, size: 8, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !21, file: !7, line: 371, baseType: !36, size: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !7, line: 76, size: 192, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !47}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !36, file: !7, line: 77, baseType: !27, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !36, file: !7, line: 77, baseType: !15, size: 8, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !36, file: !7, line: 77, baseType: !15, size: 8, offset: 72)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !36, file: !7, line: 77, baseType: !31, size: 16, offset: 80)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !7, line: 77, baseType: !15, size: 8, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !36, file: !7, line: 77, baseType: !44, size: 24, offset: 104)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 24, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 3)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !36, file: !7, line: 78, baseType: !48, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !50)
!50 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !21, file: !7, line: 372, baseType: !52, size: 256)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !7, line: 93, size: 256, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !62}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !7, line: 94, baseType: !27, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !7, line: 94, baseType: !15, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !7, line: 94, baseType: !15, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !7, line: 94, baseType: !31, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !7, line: 94, baseType: !15, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !52, file: !7, line: 94, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !52, file: !7, line: 94, baseType: !63, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !65)
!65 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !21, file: !7, line: 373, baseType: !67, size: 384)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !7, line: 97, size: 384, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !76, !77, !78, !79}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !67, file: !7, line: 98, baseType: !27, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !67, file: !7, line: 98, baseType: !15, size: 8, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !7, line: 98, baseType: !15, size: 8, offset: 72)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !67, file: !7, line: 98, baseType: !31, size: 16, offset: 80)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !7, line: 98, baseType: !15, size: 8, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !67, file: !7, line: 98, baseType: !75, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !67, file: !7, line: 98, baseType: !63, size: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !67, file: !7, line: 99, baseType: !63, size: 32, offset: 224)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !67, file: !7, line: 100, baseType: !75, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !67, file: !7, line: 101, baseType: !80, size: 64, offset: 320)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !82, line: 133, size: 384, elements: !83)
!82 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!83 = !{!84, !85, !86, !87, !88, !97, !98, !99, !100}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !81, file: !82, line: 134, baseType: !27, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !81, file: !82, line: 135, baseType: !15, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !82, line: 136, baseType: !15, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !82, line: 137, baseType: !31, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !82, line: 138, baseType: !89, size: 32, offset: 96)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !90, line: 328, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !89, file: !90, line: 329, baseType: !63, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !89, file: !90, line: 330, baseType: !94, size: 32)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 4)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !81, file: !82, line: 139, baseType: !80, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !81, file: !82, line: 140, baseType: !80, size: 64, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !81, file: !82, line: 141, baseType: !80, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !81, file: !82, line: 142, baseType: !101, size: 16, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !102, line: 445, baseType: !31)
!102 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !21, file: !7, line: 374, baseType: !104, size: 384)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !7, line: 104, size: 384, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !114, !115, !116}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !104, file: !7, line: 105, baseType: !27, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !104, file: !7, line: 105, baseType: !15, size: 8, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !7, line: 105, baseType: !15, size: 8, offset: 72)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !104, file: !7, line: 105, baseType: !31, size: 16, offset: 80)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !7, line: 105, baseType: !15, size: 8, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !7, line: 105, baseType: !80, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !104, file: !7, line: 106, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !104, file: !7, line: 107, baseType: !75, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !104, file: !7, line: 108, baseType: !63, size: 32, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !104, file: !7, line: 109, baseType: !63, size: 32, offset: 352)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !21, file: !7, line: 375, baseType: !118, size: 192)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !7, line: 118, size: 192, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !7, line: 119, baseType: !27, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !7, line: 119, baseType: !15, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !7, line: 119, baseType: !15, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !7, line: 119, baseType: !31, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !7, line: 119, baseType: !15, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !118, file: !7, line: 119, baseType: !13, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !21, file: !7, line: 376, baseType: !127, size: 448)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !7, line: 144, size: 448, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !437, !438, !439}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !7, line: 145, baseType: !27, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !7, line: 145, baseType: !15, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !7, line: 145, baseType: !15, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !7, line: 145, baseType: !31, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !7, line: 145, baseType: !15, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !127, file: !7, line: 145, baseType: !15, size: 8, offset: 104)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !127, file: !7, line: 146, baseType: !15, size: 8, offset: 112)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !127, file: !7, line: 147, baseType: !15, size: 8, offset: 120)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !127, file: !7, line: 148, baseType: !27, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !127, file: !7, line: 149, baseType: !27, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !127, file: !7, line: 150, baseType: !75, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !127, file: !7, line: 154, baseType: !141, size: 64, offset: 320)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !7, line: 151, size: 64, elements: !142)
!142 = !{!143, !436}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !141, file: !7, line: 152, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !82, line: 248, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !102, line: 421, baseType: !63)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !151, line: 37, size: 9024, elements: !152)
!151 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !382, !383, !384, !385, !386, !390, !392, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !419, !420, !421, !422, !423, !424, !425, !426, !428, !434}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !151, line: 38, baseType: !149, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !151, line: 39, baseType: !15, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !150, file: !151, line: 40, baseType: !15, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !150, file: !151, line: 41, baseType: !31, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !150, file: !151, line: 42, baseType: !15, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !150, file: !151, line: 43, baseType: !15, size: 8, offset: 104)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !150, file: !151, line: 44, baseType: !15, size: 8, offset: 112)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !150, file: !151, line: 45, baseType: !101, size: 16, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !150, file: !151, line: 46, baseType: !15, size: 8, offset: 144)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !150, file: !151, line: 47, baseType: !15, size: 8, offset: 152)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !150, file: !151, line: 48, baseType: !15, size: 8, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !150, file: !151, line: 49, baseType: !15, size: 8, offset: 168)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !150, file: !151, line: 50, baseType: !15, size: 8, offset: 176)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !150, file: !151, line: 51, baseType: !15, size: 8, offset: 184)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !150, file: !151, line: 52, baseType: !15, size: 8, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !150, file: !151, line: 53, baseType: !15, size: 8, offset: 200)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !150, file: !151, line: 54, baseType: !75, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !150, file: !151, line: 55, baseType: !63, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !150, file: !151, line: 56, baseType: !63, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !150, file: !151, line: 57, baseType: !63, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !150, file: !151, line: 58, baseType: !63, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !150, file: !151, line: 60, baseType: !175, size: 640, offset: 448)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !82, line: 909, size: 640, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !263, !264, !380, !381}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !175, file: !82, line: 910, baseType: !75, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !175, file: !82, line: 911, baseType: !75, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !175, file: !82, line: 912, baseType: !75, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !175, file: !82, line: 913, baseType: !75, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !175, file: !82, line: 914, baseType: !75, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !175, file: !82, line: 915, baseType: !183, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !82, line: 891, size: 1600, elements: !185)
!185 = !{!186, !206, !222}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !184, file: !82, line: 892, baseType: !187, size: 448)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !82, line: 844, size: 448, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !205}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !82, line: 845, baseType: !183, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !187, file: !82, line: 845, baseType: !15, size: 8, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !82, line: 845, baseType: !15, size: 8, offset: 72)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !187, file: !82, line: 845, baseType: !31, size: 16, offset: 80)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !187, file: !82, line: 845, baseType: !75, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !82, line: 845, baseType: !183, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !187, file: !82, line: 845, baseType: !80, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !187, file: !82, line: 845, baseType: !197, size: 64, offset: 320)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !82, line: 732, size: 64, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !197, file: !82, line: 733, baseType: !48, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !197, file: !82, line: 734, baseType: !63, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !197, file: !82, line: 735, baseType: !60, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !197, file: !82, line: 736, baseType: !75, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !82, line: 737, baseType: !60, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !197, file: !82, line: 738, baseType: !183, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !187, file: !82, line: 845, baseType: !15, size: 8, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !184, file: !82, line: 893, baseType: !207, size: 640)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !82, line: 851, size: 640, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !207, file: !82, line: 852, baseType: !183, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !207, file: !82, line: 852, baseType: !15, size: 8, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !82, line: 852, baseType: !15, size: 8, offset: 72)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !207, file: !82, line: 852, baseType: !31, size: 16, offset: 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !207, file: !82, line: 852, baseType: !75, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !82, line: 852, baseType: !183, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !207, file: !82, line: 852, baseType: !80, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !207, file: !82, line: 852, baseType: !197, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !207, file: !82, line: 852, baseType: !15, size: 8, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !207, file: !82, line: 852, baseType: !60, size: 64, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !207, file: !82, line: 853, baseType: !75, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !207, file: !82, line: 854, baseType: !63, size: 32, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !82, line: 855, baseType: !63, size: 32, offset: 608)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !184, file: !82, line: 894, baseType: !223, size: 1600)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !82, line: 862, size: 1600, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !82, line: 863, baseType: !183, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !82, line: 863, baseType: !15, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !82, line: 863, baseType: !15, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !223, file: !82, line: 863, baseType: !31, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !223, file: !82, line: 863, baseType: !75, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !82, line: 863, baseType: !183, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !82, line: 863, baseType: !80, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !223, file: !82, line: 863, baseType: !197, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !223, file: !82, line: 863, baseType: !15, size: 8, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !223, file: !82, line: 863, baseType: !183, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !223, file: !82, line: 864, baseType: !183, size: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !223, file: !82, line: 865, baseType: !60, size: 64, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !223, file: !82, line: 866, baseType: !15, size: 8, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !223, file: !82, line: 867, baseType: !60, size: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !223, file: !82, line: 868, baseType: !60, size: 64, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !223, file: !82, line: 869, baseType: !60, size: 64, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !223, file: !82, line: 870, baseType: !94, size: 32, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !223, file: !82, line: 871, baseType: !63, size: 32, offset: 928)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !223, file: !82, line: 872, baseType: !63, size: 32, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !223, file: !82, line: 873, baseType: !63, size: 32, offset: 992)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !223, file: !82, line: 874, baseType: !63, size: 32, offset: 1024)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !223, file: !82, line: 875, baseType: !63, size: 32, offset: 1056)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !223, file: !82, line: 876, baseType: !63, size: 32, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !223, file: !82, line: 877, baseType: !63, size: 32, offset: 1120)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !223, file: !82, line: 878, baseType: !63, size: 32, offset: 1152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !223, file: !82, line: 879, baseType: !63, size: 32, offset: 1184)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !223, file: !82, line: 880, baseType: !63, size: 32, offset: 1216)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !223, file: !82, line: 881, baseType: !63, size: 32, offset: 1248)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !223, file: !82, line: 882, baseType: !63, size: 32, offset: 1280)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !223, file: !82, line: 883, baseType: !63, size: 32, offset: 1312)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !223, file: !82, line: 884, baseType: !31, size: 16, offset: 1344)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !223, file: !82, line: 885, baseType: !15, size: 8, offset: 1360)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !223, file: !82, line: 886, baseType: !15, size: 8, offset: 1368)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !223, file: !82, line: 887, baseType: !15, size: 8, offset: 1376)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !223, file: !82, line: 888, baseType: !260, size: 160, offset: 1384)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 160, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 20)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !175, file: !82, line: 916, baseType: !80, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !175, file: !82, line: 917, baseType: !265, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !82, line: 679, size: 640, elements: !267)
!267 = !{!268, !276, !289, !298, !307, !320, !334, !346, !358}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !266, file: !82, line: 680, baseType: !269, size: 128)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !82, line: 575, size: 128, elements: !270)
!270 = !{!271, !272, !273, !274, !275}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !269, file: !82, line: 576, baseType: !13, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !269, file: !82, line: 576, baseType: !15, size: 8, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !269, file: !82, line: 576, baseType: !15, size: 8, offset: 72)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !269, file: !82, line: 576, baseType: !31, size: 16, offset: 80)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !269, file: !82, line: 576, baseType: !31, size: 16, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !266, file: !82, line: 681, baseType: !277, size: 384)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !82, line: 604, size: 384, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !277, file: !82, line: 605, baseType: !13, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !277, file: !82, line: 605, baseType: !15, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !82, line: 605, baseType: !15, size: 8, offset: 72)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !277, file: !82, line: 605, baseType: !31, size: 16, offset: 80)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !277, file: !82, line: 605, baseType: !31, size: 16, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !277, file: !82, line: 606, baseType: !31, size: 16, offset: 112)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !277, file: !82, line: 607, baseType: !183, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !277, file: !82, line: 608, baseType: !75, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !277, file: !82, line: 609, baseType: !75, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !277, file: !82, line: 610, baseType: !48, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !266, file: !82, line: 682, baseType: !290, size: 192)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !82, line: 582, size: 192, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !290, file: !82, line: 583, baseType: !13, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !290, file: !82, line: 583, baseType: !15, size: 8, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !82, line: 583, baseType: !15, size: 8, offset: 72)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !290, file: !82, line: 583, baseType: !31, size: 16, offset: 80)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !290, file: !82, line: 583, baseType: !31, size: 16, offset: 96)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !290, file: !82, line: 584, baseType: !27, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !266, file: !82, line: 683, baseType: !299, size: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !82, line: 616, size: 192, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !82, line: 617, baseType: !13, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !82, line: 617, baseType: !15, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !82, line: 617, baseType: !15, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !82, line: 617, baseType: !31, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !82, line: 617, baseType: !31, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !299, file: !82, line: 618, baseType: !80, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !266, file: !82, line: 684, baseType: !308, size: 448)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !82, line: 621, size: 448, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !82, line: 622, baseType: !13, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !82, line: 622, baseType: !15, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !82, line: 622, baseType: !15, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !308, file: !82, line: 622, baseType: !31, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !308, file: !82, line: 622, baseType: !31, size: 16, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !308, file: !82, line: 623, baseType: !63, size: 32, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !308, file: !82, line: 624, baseType: !183, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !308, file: !82, line: 625, baseType: !75, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !308, file: !82, line: 626, baseType: !75, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !308, file: !82, line: 627, baseType: !63, size: 32, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !266, file: !82, line: 685, baseType: !321, size: 512)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !82, line: 590, size: 512, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !82, line: 591, baseType: !13, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !321, file: !82, line: 591, baseType: !15, size: 8, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !82, line: 591, baseType: !15, size: 8, offset: 72)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !321, file: !82, line: 591, baseType: !31, size: 16, offset: 80)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !321, file: !82, line: 591, baseType: !31, size: 16, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !321, file: !82, line: 592, baseType: !63, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !321, file: !82, line: 593, baseType: !27, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !321, file: !82, line: 594, baseType: !27, size: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !321, file: !82, line: 595, baseType: !149, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !321, file: !82, line: 596, baseType: !13, size: 64, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !321, file: !82, line: 597, baseType: !63, size: 32, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !266, file: !82, line: 686, baseType: !335, size: 320)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !82, line: 634, size: 320, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !82, line: 635, baseType: !13, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !335, file: !82, line: 635, baseType: !15, size: 8, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !82, line: 635, baseType: !15, size: 8, offset: 72)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !335, file: !82, line: 635, baseType: !31, size: 16, offset: 80)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !335, file: !82, line: 635, baseType: !31, size: 16, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !335, file: !82, line: 636, baseType: !15, size: 8, offset: 112)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !335, file: !82, line: 637, baseType: !149, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !335, file: !82, line: 638, baseType: !27, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !335, file: !82, line: 639, baseType: !48, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !266, file: !82, line: 687, baseType: !347, size: 640)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !82, line: 646, size: 640, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !82, line: 647, baseType: !13, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !82, line: 647, baseType: !15, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !82, line: 647, baseType: !15, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !82, line: 647, baseType: !31, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !82, line: 647, baseType: !31, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !347, file: !82, line: 648, baseType: !355, size: 512, offset: 128)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 512, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 8)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !266, file: !82, line: 688, baseType: !359, size: 320)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !82, line: 669, size: 320, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !82, line: 670, baseType: !13, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !82, line: 670, baseType: !15, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !82, line: 670, baseType: !15, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !82, line: 670, baseType: !31, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !82, line: 670, baseType: !31, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !359, file: !82, line: 671, baseType: !15, size: 8, offset: 112)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !359, file: !82, line: 672, baseType: !80, size: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !359, file: !82, line: 673, baseType: !27, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !359, file: !82, line: 674, baseType: !370, size: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !82, line: 660, size: 128, elements: !372)
!372 = !{!373, !379}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !371, file: !82, line: 661, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !102, line: 1061, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !378, !63, !13}
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !102, line: 424, baseType: !13)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !371, file: !82, line: 662, baseType: !13, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !175, file: !82, line: 918, baseType: !183, size: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !175, file: !82, line: 919, baseType: !63, size: 32, offset: 576)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !150, file: !151, line: 61, baseType: !63, size: 32, offset: 1088)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !150, file: !151, line: 62, baseType: !63, size: 32, offset: 1120)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !150, file: !151, line: 63, baseType: !31, size: 16, offset: 1152)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !150, file: !151, line: 64, baseType: !15, size: 8, offset: 1168)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !150, file: !151, line: 66, baseType: !387, size: 2688, offset: 1216)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2688, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 7)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !150, file: !151, line: 67, baseType: !391, size: 3072, offset: 3904)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 3072, elements: !356)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !150, file: !151, line: 68, baseType: !393, size: 576, offset: 6976)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 576, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 9)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !150, file: !151, line: 69, baseType: !113, size: 64, offset: 7552)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !150, file: !151, line: 71, baseType: !75, size: 64, offset: 7616)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !150, file: !151, line: 72, baseType: !113, size: 64, offset: 7680)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !150, file: !151, line: 73, baseType: !265, size: 64, offset: 7744)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !150, file: !151, line: 74, baseType: !80, size: 64, offset: 7808)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !150, file: !151, line: 75, baseType: !27, size: 64, offset: 7872)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !150, file: !151, line: 76, baseType: !80, size: 64, offset: 7936)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !150, file: !151, line: 77, baseType: !183, size: 64, offset: 8000)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !150, file: !151, line: 78, baseType: !27, size: 64, offset: 8064)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !150, file: !151, line: 79, baseType: !80, size: 64, offset: 8128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !150, file: !151, line: 80, baseType: !60, size: 64, offset: 8192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !150, file: !151, line: 81, baseType: !183, size: 64, offset: 8256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !150, file: !151, line: 82, baseType: !409, size: 64, offset: 8320)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !82, line: 718, size: 128, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !411, file: !82, line: 722, baseType: !63, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !411, file: !82, line: 723, baseType: !63, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !82, line: 724, baseType: !31, size: 16, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !411, file: !82, line: 725, baseType: !15, size: 8, offset: 80)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !411, file: !82, line: 726, baseType: !15, size: 8, offset: 88)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !411, file: !82, line: 727, baseType: !15, size: 8, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !150, file: !151, line: 83, baseType: !183, size: 64, offset: 8384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !150, file: !151, line: 84, baseType: !27, size: 64, offset: 8448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !150, file: !151, line: 85, baseType: !265, size: 64, offset: 8512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !150, file: !151, line: 86, baseType: !27, size: 64, offset: 8576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !150, file: !151, line: 87, baseType: !265, size: 64, offset: 8640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !150, file: !151, line: 88, baseType: !183, size: 64, offset: 8704)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !150, file: !151, line: 89, baseType: !183, size: 64, offset: 8768)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !150, file: !151, line: 90, baseType: !427, size: 64, offset: 8832)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !150, file: !151, line: 91, baseType: !429, size: 64, offset: 8896)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !82, line: 652, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!148, !149, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !150, file: !151, line: 92, baseType: !435, size: 64, offset: 8960)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !82, line: 656, baseType: !145)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !141, file: !7, line: 153, baseType: !27, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !127, file: !7, line: 156, baseType: !63, size: 32, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !127, file: !7, line: 157, baseType: !101, size: 16, offset: 416)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !127, file: !7, line: 158, baseType: !15, size: 8, offset: 432)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !21, file: !7, line: 377, baseType: !441, size: 576)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !7, line: 122, size: 576, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !441, file: !7, line: 123, baseType: !27, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !441, file: !7, line: 123, baseType: !15, size: 8, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !7, line: 123, baseType: !15, size: 8, offset: 72)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !441, file: !7, line: 123, baseType: !31, size: 16, offset: 80)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !7, line: 123, baseType: !15, size: 8, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !441, file: !7, line: 123, baseType: !15, size: 8, offset: 104)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !441, file: !7, line: 124, baseType: !31, size: 16, offset: 112)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !441, file: !7, line: 125, baseType: !13, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !441, file: !7, line: 126, baseType: !48, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !441, file: !7, line: 127, baseType: !427, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !441, file: !7, line: 128, baseType: !27, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !441, file: !7, line: 129, baseType: !27, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !441, file: !7, line: 130, baseType: !80, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !441, file: !7, line: 131, baseType: !15, size: 8, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !21, file: !7, line: 378, baseType: !458, size: 512)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !7, line: 134, size: 512, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !471, !472}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !458, file: !7, line: 135, baseType: !27, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !458, file: !7, line: 135, baseType: !15, size: 8, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !458, file: !7, line: 135, baseType: !15, size: 8, offset: 72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !458, file: !7, line: 135, baseType: !31, size: 16, offset: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !7, line: 135, baseType: !15, size: 8, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !458, file: !7, line: 135, baseType: !15, size: 8, offset: 104)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !458, file: !7, line: 136, baseType: !80, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !458, file: !7, line: 137, baseType: !27, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !7, line: 138, baseType: !27, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !458, file: !7, line: 139, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !102, line: 129, baseType: !48)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !458, file: !7, line: 140, baseType: !63, size: 32, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !458, file: !7, line: 141, baseType: !13, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !21, file: !7, line: 379, baseType: !474, size: 320)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !7, line: 185, size: 320, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !485}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !7, line: 186, baseType: !27, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !7, line: 186, baseType: !15, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !7, line: 186, baseType: !15, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !7, line: 186, baseType: !31, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !7, line: 186, baseType: !15, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !474, file: !7, line: 186, baseType: !482, size: 128, offset: 128)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 128, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 2)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !474, file: !7, line: 186, baseType: !27, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !21, file: !7, line: 380, baseType: !487, size: 384)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !7, line: 188, size: 384, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !487, file: !7, line: 189, baseType: !27, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !487, file: !7, line: 189, baseType: !15, size: 8, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !487, file: !7, line: 189, baseType: !15, size: 8, offset: 72)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !487, file: !7, line: 189, baseType: !31, size: 16, offset: 80)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !7, line: 189, baseType: !15, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !487, file: !7, line: 190, baseType: !482, size: 128, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !487, file: !7, line: 190, baseType: !27, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !487, file: !7, line: 190, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !82, line: 480, size: 576, elements: !499)
!499 = !{!500, !501, !502, !503, !511, !526, !558, !559, !560, !561, !562, !563}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !82, line: 481, baseType: !80, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !498, file: !82, line: 482, baseType: !497, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !82, line: 483, baseType: !497, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !498, file: !82, line: 484, baseType: !504, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !82, line: 497, size: 256, elements: !506)
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !505, file: !82, line: 498, baseType: !504, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !82, line: 499, baseType: !504, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !505, file: !82, line: 500, baseType: !497, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !505, file: !82, line: 501, baseType: !63, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !498, file: !82, line: 485, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !82, line: 466, size: 320, elements: !514)
!514 = !{!515, !520, !521, !522, !523, !524, !525}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !513, file: !82, line: 467, baseType: !516, size: 128)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !82, line: 459, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !516, file: !82, line: 460, baseType: !15, size: 8)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !516, file: !82, line: 461, baseType: !48, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !513, file: !82, line: 468, baseType: !516, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !513, file: !82, line: 469, baseType: !31, size: 16, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !513, file: !82, line: 470, baseType: !15, size: 8, offset: 272)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !513, file: !82, line: 471, baseType: !15, size: 8, offset: 280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !513, file: !82, line: 472, baseType: !15, size: 8, offset: 288)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !513, file: !82, line: 473, baseType: !15, size: 8, offset: 296)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !498, file: !82, line: 486, baseType: !527, size: 64, offset: 320)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !82, line: 448, size: 192, elements: !529)
!529 = !{!530, !553, !554, !555, !556, !557}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !528, file: !82, line: 449, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !82, line: 438, size: 64, elements: !532)
!532 = !{!533, !534, !547}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !531, file: !82, line: 439, baseType: !80, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !531, file: !82, line: 440, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !82, line: 419, size: 256, elements: !537)
!537 = !{!538, !543, !544, !545, !546}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !536, file: !82, line: 420, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !102, line: 1058, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!63, !378, !63, !13}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !536, file: !82, line: 421, baseType: !13, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !536, file: !82, line: 422, baseType: !80, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !536, file: !82, line: 423, baseType: !15, size: 8, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !536, file: !82, line: 424, baseType: !15, size: 8, offset: 200)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !531, file: !82, line: 441, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !82, line: 429, size: 128, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !549, file: !82, line: 430, baseType: !80, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !82, line: 431, baseType: !548, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !528, file: !82, line: 450, baseType: !512, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !82, line: 451, baseType: !15, size: 8, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !528, file: !82, line: 452, baseType: !15, size: 8, offset: 136)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !528, file: !82, line: 453, baseType: !15, size: 8, offset: 144)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !528, file: !82, line: 454, baseType: !15, size: 8, offset: 152)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !498, file: !82, line: 487, baseType: !48, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !498, file: !82, line: 488, baseType: !63, size: 32, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !498, file: !82, line: 489, baseType: !31, size: 16, offset: 480)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !498, file: !82, line: 490, baseType: !31, size: 16, offset: 496)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !498, file: !82, line: 491, baseType: !15, size: 8, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !498, file: !82, line: 492, baseType: !15, size: 8, offset: 520)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !21, file: !7, line: 381, baseType: !565, size: 384)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !7, line: 193, size: 384, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !7, line: 194, baseType: !27, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !7, line: 194, baseType: !15, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !7, line: 194, baseType: !15, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !7, line: 194, baseType: !31, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !7, line: 194, baseType: !15, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !565, file: !7, line: 194, baseType: !482, size: 128, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !7, line: 194, baseType: !27, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !565, file: !7, line: 194, baseType: !63, size: 32, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !565, file: !7, line: 195, baseType: !63, size: 32, offset: 352)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !21, file: !7, line: 382, baseType: !577, size: 384)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !7, line: 198, size: 384, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !7, line: 199, baseType: !27, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !7, line: 199, baseType: !15, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !7, line: 199, baseType: !15, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !7, line: 199, baseType: !31, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !7, line: 199, baseType: !15, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !577, file: !7, line: 201, baseType: !15, size: 8, offset: 104)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !577, file: !7, line: 202, baseType: !15, size: 8, offset: 112)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !7, line: 203, baseType: !482, size: 128, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !7, line: 203, baseType: !27, size: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !577, file: !7, line: 203, baseType: !589, size: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !102, line: 128, baseType: !48)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !21, file: !7, line: 383, baseType: !591, size: 320)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !7, line: 206, size: 320, elements: !592)
!592 = !{!593, !594, !595, !596, !597, !598, !599}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !591, file: !7, line: 207, baseType: !27, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !591, file: !7, line: 207, baseType: !15, size: 8, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !591, file: !7, line: 207, baseType: !15, size: 8, offset: 72)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !591, file: !7, line: 207, baseType: !31, size: 16, offset: 80)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !7, line: 207, baseType: !15, size: 8, offset: 96)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !591, file: !7, line: 207, baseType: !482, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !591, file: !7, line: 207, baseType: !27, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !21, file: !7, line: 384, baseType: !601, size: 384)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !7, line: 234, size: 384, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !7, line: 235, baseType: !27, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !7, line: 235, baseType: !15, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !7, line: 235, baseType: !15, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !7, line: 235, baseType: !31, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !7, line: 235, baseType: !15, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !601, file: !7, line: 235, baseType: !15, size: 8, offset: 104)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !601, file: !7, line: 235, baseType: !15, size: 8, offset: 112)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !601, file: !7, line: 235, baseType: !15, size: 8, offset: 120)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !7, line: 235, baseType: !80, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !601, file: !7, line: 235, baseType: !63, size: 32, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !601, file: !7, line: 235, baseType: !63, size: 32, offset: 224)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !601, file: !7, line: 235, baseType: !63, size: 32, offset: 256)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !601, file: !7, line: 235, baseType: !15, size: 8, offset: 288)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !601, file: !7, line: 235, baseType: !15, size: 8, offset: 296)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !601, file: !7, line: 235, baseType: !27, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !21, file: !7, line: 385, baseType: !619, size: 576)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !7, line: 238, size: 576, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !7, line: 239, baseType: !27, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !7, line: 239, baseType: !15, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !7, line: 239, baseType: !15, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !7, line: 239, baseType: !31, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !7, line: 239, baseType: !15, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !619, file: !7, line: 239, baseType: !15, size: 8, offset: 104)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !619, file: !7, line: 239, baseType: !15, size: 8, offset: 112)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !619, file: !7, line: 239, baseType: !15, size: 8, offset: 120)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !7, line: 239, baseType: !80, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !619, file: !7, line: 239, baseType: !63, size: 32, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !619, file: !7, line: 239, baseType: !63, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !619, file: !7, line: 239, baseType: !63, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !619, file: !7, line: 239, baseType: !15, size: 8, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !619, file: !7, line: 239, baseType: !15, size: 8, offset: 296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !619, file: !7, line: 239, baseType: !31, size: 16, offset: 304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !619, file: !7, line: 240, baseType: !27, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !619, file: !7, line: 241, baseType: !75, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !619, file: !7, line: 242, baseType: !31, size: 16, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !619, file: !7, line: 243, baseType: !75, size: 64, offset: 512)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !21, file: !7, line: 386, baseType: !641, size: 384)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !7, line: 263, size: 384, elements: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !641, file: !7, line: 264, baseType: !27, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !641, file: !7, line: 264, baseType: !15, size: 8, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !7, line: 264, baseType: !15, size: 8, offset: 72)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !641, file: !7, line: 264, baseType: !31, size: 16, offset: 80)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !7, line: 264, baseType: !15, size: 8, offset: 96)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !641, file: !7, line: 264, baseType: !15, size: 8, offset: 104)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !641, file: !7, line: 264, baseType: !15, size: 8, offset: 112)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !641, file: !7, line: 264, baseType: !15, size: 8, offset: 120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !641, file: !7, line: 264, baseType: !80, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !641, file: !7, line: 264, baseType: !63, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !641, file: !7, line: 264, baseType: !63, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !641, file: !7, line: 264, baseType: !63, size: 32, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !641, file: !7, line: 264, baseType: !15, size: 8, offset: 288)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !641, file: !7, line: 264, baseType: !15, size: 8, offset: 296)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !641, file: !7, line: 264, baseType: !15, size: 8, offset: 304)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !641, file: !7, line: 265, baseType: !27, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !21, file: !7, line: 387, baseType: !660, size: 448)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !7, line: 246, size: 448, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !660, file: !7, line: 247, baseType: !27, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !7, line: 247, baseType: !15, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !7, line: 247, baseType: !15, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !660, file: !7, line: 247, baseType: !31, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !7, line: 247, baseType: !15, size: 8, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !660, file: !7, line: 247, baseType: !15, size: 8, offset: 104)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !660, file: !7, line: 247, baseType: !15, size: 8, offset: 112)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !660, file: !7, line: 247, baseType: !15, size: 8, offset: 120)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !660, file: !7, line: 247, baseType: !80, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !660, file: !7, line: 247, baseType: !63, size: 32, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !660, file: !7, line: 247, baseType: !63, size: 32, offset: 224)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !7, line: 247, baseType: !63, size: 32, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !660, file: !7, line: 247, baseType: !15, size: 8, offset: 288)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !660, file: !7, line: 247, baseType: !15, size: 8, offset: 296)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !660, file: !7, line: 247, baseType: !27, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !660, file: !7, line: 248, baseType: !27, size: 64, offset: 384)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !21, file: !7, line: 388, baseType: !679, size: 448)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !7, line: 251, size: 448, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !679, file: !7, line: 252, baseType: !27, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !679, file: !7, line: 252, baseType: !15, size: 8, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !679, file: !7, line: 252, baseType: !15, size: 8, offset: 72)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !679, file: !7, line: 252, baseType: !31, size: 16, offset: 80)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !679, file: !7, line: 252, baseType: !15, size: 8, offset: 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !679, file: !7, line: 252, baseType: !15, size: 8, offset: 104)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !679, file: !7, line: 252, baseType: !15, size: 8, offset: 112)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !679, file: !7, line: 252, baseType: !15, size: 8, offset: 120)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !7, line: 252, baseType: !80, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !679, file: !7, line: 252, baseType: !63, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !679, file: !7, line: 252, baseType: !63, size: 32, offset: 224)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !679, file: !7, line: 252, baseType: !63, size: 32, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !679, file: !7, line: 252, baseType: !15, size: 8, offset: 288)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !679, file: !7, line: 252, baseType: !15, size: 8, offset: 296)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !679, file: !7, line: 257, baseType: !27, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !679, file: !7, line: 258, baseType: !27, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !21, file: !7, line: 389, baseType: !698, size: 512)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !7, line: 274, size: 512, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !698, file: !7, line: 275, baseType: !27, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !698, file: !7, line: 275, baseType: !15, size: 8, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !698, file: !7, line: 275, baseType: !15, size: 8, offset: 72)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !698, file: !7, line: 275, baseType: !31, size: 16, offset: 80)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !698, file: !7, line: 275, baseType: !15, size: 8, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !698, file: !7, line: 275, baseType: !80, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !698, file: !7, line: 276, baseType: !63, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !698, file: !7, line: 277, baseType: !374, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !698, file: !7, line: 278, baseType: !13, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !7, line: 279, baseType: !482, size: 128, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !21, file: !7, line: 390, baseType: !711, size: 576)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !7, line: 282, size: 576, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !726, !727, !728, !729, !735, !736}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !7, line: 283, baseType: !27, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !7, line: 283, baseType: !15, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !7, line: 283, baseType: !15, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !7, line: 283, baseType: !31, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !7, line: 283, baseType: !15, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !711, file: !7, line: 283, baseType: !15, size: 8, offset: 104)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !711, file: !7, line: 284, baseType: !15, size: 8, offset: 112)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !711, file: !7, line: 285, baseType: !721, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !102, line: 1093, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!148, !63, !470, !63, !725, !13, !13}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !7, line: 286, baseType: !80, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !711, file: !7, line: 287, baseType: !13, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !711, file: !7, line: 288, baseType: !13, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !711, file: !7, line: 289, baseType: !730, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !102, line: 1126, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!148, !378, !63, !13, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !711, file: !7, line: 290, baseType: !27, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !7, line: 291, baseType: !27, size: 64, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !21, file: !7, line: 391, baseType: !738, size: 512)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !7, line: 309, size: 512, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !738, file: !7, line: 310, baseType: !27, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !738, file: !7, line: 310, baseType: !15, size: 8, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !738, file: !7, line: 310, baseType: !15, size: 8, offset: 72)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !738, file: !7, line: 310, baseType: !31, size: 16, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !7, line: 310, baseType: !15, size: 8, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !738, file: !7, line: 310, baseType: !15, size: 8, offset: 104)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !738, file: !7, line: 311, baseType: !15, size: 8, offset: 112)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !738, file: !7, line: 312, baseType: !15, size: 8, offset: 120)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !738, file: !7, line: 313, baseType: !13, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !7, line: 314, baseType: !80, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !738, file: !7, line: 315, baseType: !113, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !738, file: !7, line: 316, baseType: !75, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !738, file: !7, line: 317, baseType: !75, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !738, file: !7, line: 318, baseType: !63, size: 32, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !21, file: !7, line: 392, baseType: !755, size: 448)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !7, line: 342, size: 448, elements: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !755, file: !7, line: 343, baseType: !27, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !755, file: !7, line: 343, baseType: !15, size: 8, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !755, file: !7, line: 343, baseType: !15, size: 8, offset: 72)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !755, file: !7, line: 343, baseType: !31, size: 16, offset: 80)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !7, line: 343, baseType: !15, size: 8, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !755, file: !7, line: 343, baseType: !80, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !755, file: !7, line: 344, baseType: !80, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !755, file: !7, line: 345, baseType: !13, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !755, file: !7, line: 346, baseType: !75, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !755, file: !7, line: 347, baseType: !63, size: 32, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !21, file: !7, line: 393, baseType: !768, size: 256)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !7, line: 352, size: 256, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !780}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !768, file: !7, line: 353, baseType: !27, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !768, file: !7, line: 353, baseType: !15, size: 8, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !7, line: 353, baseType: !15, size: 8, offset: 72)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !768, file: !7, line: 353, baseType: !31, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !7, line: 353, baseType: !15, size: 8, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !768, file: !7, line: 353, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !102, line: 1064, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !378, !13}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !768, file: !7, line: 354, baseType: !13, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !21, file: !7, line: 394, baseType: !782, size: 192)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !7, line: 359, size: 192, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !782, file: !7, line: 360, baseType: !27, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !782, file: !7, line: 360, baseType: !15, size: 8, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !7, line: 360, baseType: !15, size: 8, offset: 72)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !782, file: !7, line: 360, baseType: !31, size: 16, offset: 80)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !7, line: 360, baseType: !15, size: 8, offset: 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !7, line: 360, baseType: !27, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !21, file: !7, line: 401, baseType: !81, size: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6, file: !7, line: 437, baseType: !81, size: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !6, file: !7, line: 438, baseType: !184, size: 1600)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !794, line: 154, baseType: !65)
!794 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!795 = !{!796, !0}
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !798, isLocal: true, isDefinition: true)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 240, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 30)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 64, elements: !356)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!803 = !{i32 7, !"Dwarf Version", i32 5}
!804 = !{i32 2, !"Debug Info Version", i32 3}
!805 = !{i32 1, !"wchar_size", i32 2}
!806 = !{i32 8, !"cf-protection-branch", i32 1}
!807 = !{i32 4, !"function_return_thunk_extern", i32 1}
!808 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!809 = !{i32 1, !"Code Model", i32 2}
!810 = !{i32 1, !"override-stack-alignment", i32 8}
!811 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!812 = distinct !DISubprogram(name: "acpi_ns_create_node", scope: !3, file: !3, line: 26, type: !813, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !815)
!813 = !DISubroutineType(types: !814)
!814 = !{!80, !63}
!815 = !{!816, !817}
!816 = !DILocalVariable(name: "name", arg: 1, scope: !812, file: !3, line: 26, type: !63)
!817 = !DILocalVariable(name: "node", scope: !812, file: !3, line: 28, type: !80)
!818 = !DILocation(line: 26, column: 53, scope: !812)
!819 = !DILocation(line: 28, column: 2, scope: !812)
!820 = !DILocation(line: 28, column: 30, scope: !812)
!821 = !DILocation(line: 35, column: 32, scope: !812)
!822 = !DILocation(line: 35, column: 9, scope: !812)
!823 = !DILocation(line: 35, column: 7, scope: !812)
!824 = !DILocation(line: 36, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !812, file: !3, line: 36, column: 6)
!826 = !DILocation(line: 36, column: 6, scope: !812)
!827 = !DILocation(line: 37, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !3, line: 36, column: 13)
!829 = !DILocation(line: 50, column: 23, scope: !812)
!830 = !DILocation(line: 50, column: 2, scope: !812)
!831 = !DILocation(line: 50, column: 8, scope: !812)
!832 = !DILocation(line: 50, column: 21, scope: !812)
!833 = !DILocation(line: 51, column: 2, scope: !812)
!834 = !DILocation(line: 52, column: 2, scope: !812)
!835 = !DILocation(line: 53, column: 1, scope: !812)
!836 = distinct !DISubprogram(name: "acpi_os_acquire_object", scope: !837, file: !837, line: 65, type: !838, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !843)
!837 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!838 = !DISubroutineType(types: !839)
!839 = !{!13, !840}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !842, line: 11, flags: DIFlagFwdDecl)
!842 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!843 = !{!844, !845, !848, !851, !852, !855}
!844 = !DILocalVariable(name: "cache", arg: 1, scope: !836, file: !837, line: 65, type: !840)
!845 = !DILocalVariable(name: "_flags", scope: !846, file: !837, line: 68, type: !847)
!846 = distinct !DILexicalBlock(scope: !836, file: !837, line: 68, column: 6)
!847 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!848 = !DILocalVariable(name: "__dummy", scope: !849, file: !837, line: 68, type: !847)
!849 = distinct !DILexicalBlock(scope: !850, file: !837, line: 68, column: 6)
!850 = distinct !DILexicalBlock(scope: !846, file: !837, line: 68, column: 6)
!851 = !DILocalVariable(name: "__dummy2", scope: !849, file: !837, line: 68, type: !847)
!852 = !DILocalVariable(name: "__dummy", scope: !853, file: !837, line: 68, type: !847)
!853 = distinct !DILexicalBlock(scope: !854, file: !837, line: 68, column: 6)
!854 = distinct !DILexicalBlock(scope: !846, file: !837, line: 68, column: 6)
!855 = !DILocalVariable(name: "__dummy2", scope: !853, file: !837, line: 68, type: !847)
!856 = !DILocation(line: 65, column: 59, scope: !836)
!857 = !DILocation(line: 67, column: 27, scope: !836)
!858 = !DILocation(line: 68, column: 6, scope: !846)
!859 = !DILocation(line: 68, column: 6, scope: !849)
!860 = !DILocation(line: 68, column: 6, scope: !850)
!861 = !DILocation(line: 68, column: 6, scope: !853)
!862 = !DILocation(line: 68, column: 6, scope: !854)
!863 = !DILocation(line: 68, column: 6, scope: !836)
!864 = !DILocation(line: 67, column: 9, scope: !836)
!865 = !DILocation(line: 67, column: 2, scope: !836)
!866 = distinct !DISubprogram(name: "acpi_ns_delete_node", scope: !3, file: !3, line: 70, type: !867, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !80}
!869 = !{!870, !871, !872}
!870 = !DILocalVariable(name: "node", arg: 1, scope: !866, file: !3, line: 70, type: !80)
!871 = !DILocalVariable(name: "obj_desc", scope: !866, file: !3, line: 72, type: !27)
!872 = !DILocalVariable(name: "next_desc", scope: !866, file: !3, line: 73, type: !27)
!873 = !DILocation(line: 70, column: 54, scope: !866)
!874 = !DILocation(line: 72, column: 2, scope: !866)
!875 = !DILocation(line: 72, column: 29, scope: !866)
!876 = !DILocation(line: 73, column: 2, scope: !866)
!877 = !DILocation(line: 73, column: 29, scope: !866)
!878 = !DILocation(line: 77, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !866, file: !3, line: 77, column: 6)
!880 = !DILocation(line: 77, column: 6, scope: !866)
!881 = !DILocation(line: 78, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 77, column: 13)
!883 = !DILocation(line: 83, column: 24, scope: !866)
!884 = !DILocation(line: 83, column: 2, scope: !866)
!885 = !DILocation(line: 91, column: 13, scope: !866)
!886 = !DILocation(line: 91, column: 19, scope: !866)
!887 = !DILocation(line: 91, column: 11, scope: !866)
!888 = !DILocation(line: 92, column: 2, scope: !866)
!889 = !DILocation(line: 92, column: 9, scope: !866)
!890 = !DILocation(line: 92, column: 18, scope: !866)
!891 = !DILocation(line: 92, column: 22, scope: !866)
!892 = !DILocation(line: 92, column: 39, scope: !866)
!893 = !DILocation(line: 92, column: 44, scope: !866)
!894 = !DILocation(line: 0, scope: !866)
!895 = !DILocation(line: 96, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 96, column: 7)
!897 = distinct !DILexicalBlock(scope: !866, file: !3, line: 92, column: 70)
!898 = !DILocation(line: 96, column: 22, scope: !896)
!899 = !DILocation(line: 96, column: 7, scope: !897)
!900 = !DILocation(line: 97, column: 4, scope: !901)
!901 = distinct !DILexicalBlock(scope: !896, file: !3, line: 96, column: 31)
!902 = !DILocation(line: 97, column: 19, scope: !901)
!903 = !DILocation(line: 97, column: 27, scope: !901)
!904 = !DILocation(line: 97, column: 33, scope: !901)
!905 = !DILocation(line: 97, column: 48, scope: !901)
!906 = !DILocation(line: 98, column: 3, scope: !901)
!907 = !DILocation(line: 100, column: 15, scope: !897)
!908 = !DILocation(line: 100, column: 32, scope: !897)
!909 = !DILocation(line: 100, column: 13, scope: !897)
!910 = !DILocation(line: 101, column: 28, scope: !897)
!911 = !DILocation(line: 101, column: 3, scope: !897)
!912 = !DILocation(line: 102, column: 14, scope: !897)
!913 = !DILocation(line: 102, column: 12, scope: !897)
!914 = distinct !{!914, !888, !915, !916, !917}
!915 = !DILocation(line: 103, column: 2, scope: !866)
!916 = !{!"llvm.loop.mustprogress"}
!917 = !{!"llvm.loop.unroll.disable"}
!918 = !DILocation(line: 107, column: 6, scope: !919)
!919 = distinct !DILexicalBlock(scope: !866, file: !3, line: 107, column: 6)
!920 = !DILocation(line: 107, column: 14, scope: !919)
!921 = !DILocation(line: 107, column: 11, scope: !919)
!922 = !DILocation(line: 107, column: 6, scope: !866)
!923 = !DILocation(line: 108, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !3, line: 107, column: 34)
!925 = !DILocation(line: 113, column: 31, scope: !866)
!926 = !DILocation(line: 113, column: 57, scope: !866)
!927 = !DILocation(line: 113, column: 8, scope: !866)
!928 = !DILocation(line: 118, column: 1, scope: !866)
!929 = !DISubprogram(name: "acpi_ns_detach_object", scope: !930, file: !930, line: 140, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!931 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !932, file: !932, line: 369, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!933 = !DISubroutineType(types: !934)
!934 = !{null, !27}
!935 = !DISubprogram(name: "acpi_os_release_object", scope: !936, file: !936, line: 219, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!937 = !DISubroutineType(types: !938)
!938 = !{!148, !840, !13}
!939 = distinct !DISubprogram(name: "acpi_ns_remove_node", scope: !3, file: !3, line: 132, type: !867, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !940)
!940 = !{!941, !942, !943, !944}
!941 = !DILocalVariable(name: "node", arg: 1, scope: !939, file: !3, line: 132, type: !80)
!942 = !DILocalVariable(name: "parent_node", scope: !939, file: !3, line: 134, type: !80)
!943 = !DILocalVariable(name: "prev_node", scope: !939, file: !3, line: 135, type: !80)
!944 = !DILocalVariable(name: "next_node", scope: !939, file: !3, line: 136, type: !80)
!945 = !DILocation(line: 132, column: 54, scope: !939)
!946 = !DILocation(line: 134, column: 2, scope: !939)
!947 = !DILocation(line: 134, column: 30, scope: !939)
!948 = !DILocation(line: 135, column: 2, scope: !939)
!949 = !DILocation(line: 135, column: 30, scope: !939)
!950 = !DILocation(line: 136, column: 2, scope: !939)
!951 = !DILocation(line: 136, column: 30, scope: !939)
!952 = !DILocation(line: 140, column: 16, scope: !939)
!953 = !DILocation(line: 140, column: 22, scope: !939)
!954 = !DILocation(line: 140, column: 14, scope: !939)
!955 = !DILocation(line: 142, column: 12, scope: !939)
!956 = !DILocation(line: 143, column: 14, scope: !939)
!957 = !DILocation(line: 143, column: 27, scope: !939)
!958 = !DILocation(line: 143, column: 12, scope: !939)
!959 = !DILocation(line: 147, column: 2, scope: !939)
!960 = !DILocation(line: 147, column: 9, scope: !939)
!961 = !DILocation(line: 147, column: 22, scope: !939)
!962 = !DILocation(line: 147, column: 19, scope: !939)
!963 = !DILocation(line: 148, column: 15, scope: !964)
!964 = distinct !DILexicalBlock(scope: !939, file: !3, line: 147, column: 28)
!965 = !DILocation(line: 148, column: 13, scope: !964)
!966 = !DILocation(line: 149, column: 15, scope: !964)
!967 = !DILocation(line: 149, column: 26, scope: !964)
!968 = !DILocation(line: 149, column: 13, scope: !964)
!969 = distinct !{!969, !959, !970, !916, !917}
!970 = !DILocation(line: 150, column: 2, scope: !939)
!971 = !DILocation(line: 152, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !939, file: !3, line: 152, column: 6)
!973 = !DILocation(line: 152, column: 6, scope: !939)
!974 = !DILocation(line: 156, column: 21, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !3, line: 152, column: 17)
!976 = !DILocation(line: 156, column: 27, scope: !975)
!977 = !DILocation(line: 156, column: 3, scope: !975)
!978 = !DILocation(line: 156, column: 14, scope: !975)
!979 = !DILocation(line: 156, column: 19, scope: !975)
!980 = !DILocation(line: 157, column: 2, scope: !975)
!981 = !DILocation(line: 162, column: 24, scope: !982)
!982 = distinct !DILexicalBlock(scope: !972, file: !3, line: 157, column: 9)
!983 = !DILocation(line: 162, column: 30, scope: !982)
!984 = !DILocation(line: 162, column: 3, scope: !982)
!985 = !DILocation(line: 162, column: 16, scope: !982)
!986 = !DILocation(line: 162, column: 22, scope: !982)
!987 = !DILocation(line: 167, column: 22, scope: !939)
!988 = !DILocation(line: 167, column: 2, scope: !939)
!989 = !DILocation(line: 169, column: 1, scope: !939)
!990 = distinct !DISubprogram(name: "acpi_ns_install_node", scope: !3, file: !3, line: 191, type: !991, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !149, !80, !80, !993}
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !102, line: 644, baseType: !63)
!994 = !{!995, !996, !997, !998, !999, !1000}
!995 = !DILocalVariable(name: "walk_state", arg: 1, scope: !990, file: !3, line: 191, type: !149)
!996 = !DILocalVariable(name: "parent_node", arg: 2, scope: !990, file: !3, line: 191, type: !80)
!997 = !DILocalVariable(name: "node", arg: 3, scope: !990, file: !3, line: 192, type: !80)
!998 = !DILocalVariable(name: "type", arg: 4, scope: !990, file: !3, line: 193, type: !993)
!999 = !DILocalVariable(name: "owner_id", scope: !990, file: !3, line: 195, type: !101)
!1000 = !DILocalVariable(name: "child_node", scope: !990, file: !3, line: 196, type: !80)
!1001 = !DILocation(line: 191, column: 51, scope: !990)
!1002 = !DILocation(line: 191, column: 91, scope: !990)
!1003 = !DILocation(line: 192, column: 34, scope: !990)
!1004 = !DILocation(line: 193, column: 23, scope: !990)
!1005 = !DILocation(line: 195, column: 2, scope: !990)
!1006 = !DILocation(line: 195, column: 16, scope: !990)
!1007 = !DILocation(line: 196, column: 2, scope: !990)
!1008 = !DILocation(line: 196, column: 30, scope: !990)
!1009 = !DILocation(line: 200, column: 6, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !990, file: !3, line: 200, column: 6)
!1011 = !DILocation(line: 200, column: 6, scope: !990)
!1012 = !DILocation(line: 205, column: 14, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 200, column: 18)
!1014 = !DILocation(line: 205, column: 26, scope: !1013)
!1015 = !DILocation(line: 205, column: 12, scope: !1013)
!1016 = !DILocation(line: 207, column: 8, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 207, column: 7)
!1018 = !DILocation(line: 207, column: 20, scope: !1017)
!1019 = !DILocation(line: 207, column: 7, scope: !1017)
!1020 = !DILocation(line: 207, column: 33, scope: !1017)
!1021 = !DILocation(line: 208, column: 8, scope: !1017)
!1022 = !DILocation(line: 208, column: 23, scope: !1017)
!1023 = !DILocation(line: 208, column: 35, scope: !1017)
!1024 = !DILocation(line: 208, column: 20, scope: !1017)
!1025 = !DILocation(line: 207, column: 7, scope: !1013)
!1026 = !DILocation(line: 215, column: 4, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 208, column: 49)
!1028 = !DILocation(line: 215, column: 16, scope: !1027)
!1029 = !DILocation(line: 215, column: 36, scope: !1027)
!1030 = !DILocation(line: 215, column: 47, scope: !1027)
!1031 = !DILocation(line: 217, column: 3, scope: !1027)
!1032 = !DILocation(line: 218, column: 2, scope: !1013)
!1033 = !DILocation(line: 222, column: 2, scope: !990)
!1034 = !DILocation(line: 222, column: 8, scope: !990)
!1035 = !DILocation(line: 222, column: 13, scope: !990)
!1036 = !DILocation(line: 223, column: 17, scope: !990)
!1037 = !DILocation(line: 223, column: 2, scope: !990)
!1038 = !DILocation(line: 223, column: 8, scope: !990)
!1039 = !DILocation(line: 223, column: 15, scope: !990)
!1040 = !DILocation(line: 224, column: 15, scope: !990)
!1041 = !DILocation(line: 224, column: 28, scope: !990)
!1042 = !DILocation(line: 224, column: 13, scope: !990)
!1043 = !DILocation(line: 226, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !990, file: !3, line: 226, column: 6)
!1045 = !DILocation(line: 226, column: 6, scope: !990)
!1046 = !DILocation(line: 227, column: 24, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 226, column: 19)
!1048 = !DILocation(line: 227, column: 3, scope: !1047)
!1049 = !DILocation(line: 227, column: 16, scope: !1047)
!1050 = !DILocation(line: 227, column: 22, scope: !1047)
!1051 = !DILocation(line: 228, column: 2, scope: !1047)
!1052 = !DILocation(line: 231, column: 3, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 228, column: 9)
!1054 = !DILocation(line: 231, column: 10, scope: !1053)
!1055 = !DILocation(line: 231, column: 22, scope: !1053)
!1056 = !DILocation(line: 232, column: 17, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 231, column: 28)
!1058 = !DILocation(line: 232, column: 29, scope: !1057)
!1059 = !DILocation(line: 232, column: 15, scope: !1057)
!1060 = distinct !{!1060, !1052, !1061, !916, !917}
!1061 = !DILocation(line: 233, column: 3, scope: !1053)
!1062 = !DILocation(line: 235, column: 22, scope: !1053)
!1063 = !DILocation(line: 235, column: 3, scope: !1053)
!1064 = !DILocation(line: 235, column: 15, scope: !1053)
!1065 = !DILocation(line: 235, column: 20, scope: !1053)
!1066 = !DILocation(line: 240, column: 19, scope: !990)
!1067 = !DILocation(line: 240, column: 2, scope: !990)
!1068 = !DILocation(line: 240, column: 8, scope: !990)
!1069 = !DILocation(line: 240, column: 17, scope: !990)
!1070 = !DILocation(line: 241, column: 20, scope: !990)
!1071 = !DILocation(line: 241, column: 15, scope: !990)
!1072 = !DILocation(line: 241, column: 2, scope: !990)
!1073 = !DILocation(line: 241, column: 8, scope: !990)
!1074 = !DILocation(line: 241, column: 13, scope: !990)
!1075 = !DILocation(line: 252, column: 1, scope: !990)
!1076 = distinct !DISubprogram(name: "acpi_ns_delete_children", scope: !3, file: !3, line: 267, type: !867, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DILocalVariable(name: "parent_node", arg: 1, scope: !1076, file: !3, line: 267, type: !80)
!1079 = !DILocalVariable(name: "next_node", scope: !1076, file: !3, line: 269, type: !80)
!1080 = !DILocalVariable(name: "node_to_delete", scope: !1076, file: !3, line: 270, type: !80)
!1081 = !DILocation(line: 267, column: 58, scope: !1076)
!1082 = !DILocation(line: 269, column: 2, scope: !1076)
!1083 = !DILocation(line: 269, column: 30, scope: !1076)
!1084 = !DILocation(line: 270, column: 2, scope: !1076)
!1085 = !DILocation(line: 270, column: 30, scope: !1076)
!1086 = !DILocation(line: 274, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 274, column: 6)
!1088 = !DILocation(line: 274, column: 6, scope: !1076)
!1089 = !DILocation(line: 275, column: 3, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 274, column: 20)
!1091 = !DILocation(line: 280, column: 14, scope: !1076)
!1092 = !DILocation(line: 280, column: 27, scope: !1076)
!1093 = !DILocation(line: 280, column: 12, scope: !1076)
!1094 = !DILocation(line: 281, column: 2, scope: !1076)
!1095 = !DILocation(line: 281, column: 9, scope: !1076)
!1096 = !DILocation(line: 285, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 285, column: 7)
!1098 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 281, column: 20)
!1099 = !DILocation(line: 285, column: 18, scope: !1097)
!1100 = !DILocation(line: 285, column: 7, scope: !1098)
!1101 = !DILocation(line: 286, column: 4, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 285, column: 25)
!1103 = !DILocation(line: 288, column: 3, scope: !1102)
!1104 = !DILocation(line: 294, column: 20, scope: !1098)
!1105 = !DILocation(line: 294, column: 18, scope: !1098)
!1106 = !DILocation(line: 295, column: 15, scope: !1098)
!1107 = !DILocation(line: 295, column: 26, scope: !1098)
!1108 = !DILocation(line: 295, column: 13, scope: !1098)
!1109 = !DILocation(line: 296, column: 23, scope: !1098)
!1110 = !DILocation(line: 296, column: 3, scope: !1098)
!1111 = distinct !{!1111, !1094, !1112, !916, !917}
!1112 = !DILocation(line: 297, column: 2, scope: !1076)
!1113 = !DILocation(line: 301, column: 2, scope: !1076)
!1114 = !DILocation(line: 301, column: 15, scope: !1076)
!1115 = !DILocation(line: 301, column: 21, scope: !1076)
!1116 = !DILocation(line: 302, column: 2, scope: !1076)
!1117 = !DILocation(line: 303, column: 1, scope: !1076)
!1118 = !DISubprogram(name: "acpi_error", scope: !1119, file: !1119, line: 901, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !1122, !63, !1122, null}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!1123 = distinct !DISubprogram(name: "acpi_ns_delete_namespace_subtree", scope: !3, file: !3, line: 318, type: !867, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1124)
!1124 = !{!1125, !1126, !1127, !1128}
!1125 = !DILocalVariable(name: "parent_node", arg: 1, scope: !1123, file: !3, line: 318, type: !80)
!1126 = !DILocalVariable(name: "child_node", scope: !1123, file: !3, line: 320, type: !80)
!1127 = !DILocalVariable(name: "level", scope: !1123, file: !3, line: 321, type: !63)
!1128 = !DILocalVariable(name: "status", scope: !1123, file: !3, line: 322, type: !148)
!1129 = !DILocation(line: 318, column: 67, scope: !1123)
!1130 = !DILocation(line: 320, column: 2, scope: !1123)
!1131 = !DILocation(line: 320, column: 30, scope: !1123)
!1132 = !DILocation(line: 321, column: 2, scope: !1123)
!1133 = !DILocation(line: 321, column: 6, scope: !1123)
!1134 = !DILocation(line: 322, column: 2, scope: !1123)
!1135 = !DILocation(line: 322, column: 14, scope: !1123)
!1136 = !DILocation(line: 326, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 326, column: 6)
!1138 = !DILocation(line: 326, column: 6, scope: !1123)
!1139 = !DILocation(line: 327, column: 3, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 326, column: 20)
!1141 = !DILocation(line: 332, column: 11, scope: !1123)
!1142 = !DILocation(line: 332, column: 9, scope: !1123)
!1143 = !DILocation(line: 333, column: 6, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 333, column: 6)
!1145 = !DILocation(line: 333, column: 6, scope: !1123)
!1146 = !DILocation(line: 334, column: 3, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 333, column: 28)
!1148 = !DILocation(line: 341, column: 2, scope: !1123)
!1149 = !DILocation(line: 341, column: 9, scope: !1123)
!1150 = !DILocation(line: 341, column: 15, scope: !1123)
!1151 = !DILocation(line: 345, column: 38, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 341, column: 20)
!1153 = !DILocation(line: 345, column: 51, scope: !1152)
!1154 = !DILocation(line: 345, column: 16, scope: !1152)
!1155 = !DILocation(line: 345, column: 14, scope: !1152)
!1156 = !DILocation(line: 346, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 346, column: 7)
!1158 = !DILocation(line: 346, column: 7, scope: !1152)
!1159 = !DILocation(line: 350, column: 26, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 346, column: 19)
!1161 = !DILocation(line: 350, column: 4, scope: !1160)
!1162 = !DILocation(line: 354, column: 8, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 354, column: 8)
!1164 = !DILocation(line: 354, column: 20, scope: !1163)
!1165 = !DILocation(line: 354, column: 8, scope: !1160)
!1166 = !DILocation(line: 359, column: 10, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 354, column: 27)
!1168 = !DILocation(line: 360, column: 19, scope: !1167)
!1169 = !DILocation(line: 360, column: 17, scope: !1167)
!1170 = !DILocation(line: 361, column: 16, scope: !1167)
!1171 = !DILocation(line: 362, column: 4, scope: !1167)
!1172 = !DILocation(line: 363, column: 3, scope: !1160)
!1173 = !DILocation(line: 368, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 363, column: 10)
!1175 = !DILocation(line: 374, column: 28, scope: !1174)
!1176 = !DILocation(line: 374, column: 4, scope: !1174)
!1177 = !DILocation(line: 378, column: 17, scope: !1174)
!1178 = !DILocation(line: 378, column: 15, scope: !1174)
!1179 = !DILocation(line: 382, column: 18, scope: !1174)
!1180 = !DILocation(line: 382, column: 31, scope: !1174)
!1181 = !DILocation(line: 382, column: 16, scope: !1174)
!1182 = distinct !{!1182, !1148, !1183, !916, !917}
!1183 = !DILocation(line: 384, column: 2, scope: !1123)
!1184 = !DILocation(line: 386, column: 8, scope: !1123)
!1185 = !DILocation(line: 387, column: 2, scope: !1123)
!1186 = !DILocation(line: 388, column: 1, scope: !1123)
!1187 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !932, file: !932, line: 646, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!148, !1190}
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !82, line: 17, baseType: !63)
!1191 = !DISubprogram(name: "acpi_ns_get_next_node", scope: !930, file: !930, line: 85, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!80, !80, !80}
!1194 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !932, file: !932, line: 648, type: !1188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = distinct !DISubprogram(name: "acpi_ns_delete_namespace_by_owner", scope: !3, file: !3, line: 406, type: !1196, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1198)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !101}
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204}
!1199 = !DILocalVariable(name: "owner_id", arg: 1, scope: !1195, file: !3, line: 406, type: !101)
!1200 = !DILocalVariable(name: "child_node", scope: !1195, file: !3, line: 408, type: !80)
!1201 = !DILocalVariable(name: "deletion_node", scope: !1195, file: !3, line: 409, type: !80)
!1202 = !DILocalVariable(name: "parent_node", scope: !1195, file: !3, line: 410, type: !80)
!1203 = !DILocalVariable(name: "level", scope: !1195, file: !3, line: 411, type: !63)
!1204 = !DILocalVariable(name: "status", scope: !1195, file: !3, line: 412, type: !148)
!1205 = !DILocation(line: 406, column: 54, scope: !1195)
!1206 = !DILocation(line: 408, column: 2, scope: !1195)
!1207 = !DILocation(line: 408, column: 30, scope: !1195)
!1208 = !DILocation(line: 409, column: 2, scope: !1195)
!1209 = !DILocation(line: 409, column: 30, scope: !1195)
!1210 = !DILocation(line: 410, column: 2, scope: !1195)
!1211 = !DILocation(line: 410, column: 30, scope: !1195)
!1212 = !DILocation(line: 411, column: 2, scope: !1195)
!1213 = !DILocation(line: 411, column: 6, scope: !1195)
!1214 = !DILocation(line: 412, column: 2, scope: !1195)
!1215 = !DILocation(line: 412, column: 14, scope: !1195)
!1216 = !DILocation(line: 416, column: 6, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 416, column: 6)
!1218 = !DILocation(line: 416, column: 15, scope: !1217)
!1219 = !DILocation(line: 416, column: 6, scope: !1195)
!1220 = !DILocation(line: 417, column: 3, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 416, column: 21)
!1222 = !DILocation(line: 422, column: 11, scope: !1195)
!1223 = !DILocation(line: 422, column: 9, scope: !1195)
!1224 = !DILocation(line: 423, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 423, column: 6)
!1226 = !DILocation(line: 423, column: 6, scope: !1195)
!1227 = !DILocation(line: 424, column: 3, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 423, column: 28)
!1229 = !DILocation(line: 427, column: 16, scope: !1195)
!1230 = !DILocation(line: 428, column: 16, scope: !1195)
!1231 = !DILocation(line: 428, column: 14, scope: !1195)
!1232 = !DILocation(line: 429, column: 13, scope: !1195)
!1233 = !DILocation(line: 430, column: 8, scope: !1195)
!1234 = !DILocation(line: 436, column: 2, scope: !1195)
!1235 = !DILocation(line: 436, column: 9, scope: !1195)
!1236 = !DILocation(line: 436, column: 15, scope: !1195)
!1237 = !DILocation(line: 441, column: 38, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 436, column: 20)
!1239 = !DILocation(line: 441, column: 51, scope: !1238)
!1240 = !DILocation(line: 441, column: 16, scope: !1238)
!1241 = !DILocation(line: 441, column: 14, scope: !1238)
!1242 = !DILocation(line: 443, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 443, column: 7)
!1244 = !DILocation(line: 443, column: 7, scope: !1238)
!1245 = !DILocation(line: 444, column: 28, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 443, column: 22)
!1247 = !DILocation(line: 444, column: 4, scope: !1246)
!1248 = !DILocation(line: 445, column: 24, scope: !1246)
!1249 = !DILocation(line: 445, column: 4, scope: !1246)
!1250 = !DILocation(line: 446, column: 18, scope: !1246)
!1251 = !DILocation(line: 447, column: 3, scope: !1246)
!1252 = !DILocation(line: 449, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 449, column: 7)
!1254 = !DILocation(line: 449, column: 7, scope: !1238)
!1255 = !DILocation(line: 450, column: 8, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 450, column: 8)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 449, column: 19)
!1258 = !DILocation(line: 450, column: 20, scope: !1256)
!1259 = !DILocation(line: 450, column: 32, scope: !1256)
!1260 = !DILocation(line: 450, column: 29, scope: !1256)
!1261 = !DILocation(line: 450, column: 8, scope: !1257)
!1262 = !DILocation(line: 454, column: 27, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 450, column: 42)
!1264 = !DILocation(line: 454, column: 5, scope: !1263)
!1265 = !DILocation(line: 455, column: 4, scope: !1263)
!1266 = !DILocation(line: 459, column: 8, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 459, column: 8)
!1268 = !DILocation(line: 459, column: 20, scope: !1267)
!1269 = !DILocation(line: 459, column: 8, scope: !1257)
!1270 = !DILocation(line: 464, column: 10, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 459, column: 27)
!1272 = !DILocation(line: 465, column: 19, scope: !1271)
!1273 = !DILocation(line: 465, column: 17, scope: !1271)
!1274 = !DILocation(line: 466, column: 16, scope: !1271)
!1275 = !DILocation(line: 467, column: 4, scope: !1271)
!1276 = !DILocation(line: 467, column: 15, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 467, column: 15)
!1278 = !DILocation(line: 467, column: 27, scope: !1277)
!1279 = !DILocation(line: 467, column: 39, scope: !1277)
!1280 = !DILocation(line: 467, column: 36, scope: !1277)
!1281 = !DILocation(line: 467, column: 15, scope: !1267)
!1282 = !DILocation(line: 468, column: 21, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 467, column: 49)
!1284 = !DILocation(line: 468, column: 19, scope: !1283)
!1285 = !DILocation(line: 469, column: 4, scope: !1283)
!1286 = !DILocation(line: 470, column: 3, scope: !1257)
!1287 = !DILocation(line: 475, column: 9, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 470, column: 10)
!1289 = !DILocation(line: 476, column: 8, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 476, column: 8)
!1291 = !DILocation(line: 476, column: 14, scope: !1290)
!1292 = !DILocation(line: 476, column: 8, scope: !1288)
!1293 = !DILocation(line: 477, column: 9, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 477, column: 9)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 476, column: 20)
!1296 = !DILocation(line: 477, column: 22, scope: !1294)
!1297 = !DILocation(line: 477, column: 34, scope: !1294)
!1298 = !DILocation(line: 477, column: 31, scope: !1294)
!1299 = !DILocation(line: 477, column: 9, scope: !1295)
!1300 = !DILocation(line: 478, column: 22, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 477, column: 44)
!1302 = !DILocation(line: 478, column: 20, scope: !1301)
!1303 = !DILocation(line: 479, column: 5, scope: !1301)
!1304 = !DILocation(line: 480, column: 4, scope: !1295)
!1305 = !DILocation(line: 484, column: 17, scope: !1288)
!1306 = !DILocation(line: 484, column: 15, scope: !1288)
!1307 = !DILocation(line: 488, column: 18, scope: !1288)
!1308 = !DILocation(line: 488, column: 31, scope: !1288)
!1309 = !DILocation(line: 488, column: 16, scope: !1288)
!1310 = distinct !{!1310, !1234, !1311, !916, !917}
!1311 = !DILocation(line: 490, column: 2, scope: !1195)
!1312 = !DILocation(line: 492, column: 8, scope: !1195)
!1313 = !DILocation(line: 493, column: 2, scope: !1195)
!1314 = !DILocation(line: 494, column: 1, scope: !1195)
!1315 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !1316, file: !1316, line: 709, type: !1317, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1319)
!1316 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!13, !840, !793}
!1319 = !{!1320, !1321}
!1320 = !DILocalVariable(name: "k", arg: 1, scope: !1315, file: !1316, line: 709, type: !840)
!1321 = !DILocalVariable(name: "flags", arg: 2, scope: !1315, file: !1316, line: 709, type: !793)
!1322 = !DILocation(line: 709, column: 58, scope: !1315)
!1323 = !DILocation(line: 709, column: 67, scope: !1315)
!1324 = !DILocation(line: 711, column: 26, scope: !1315)
!1325 = !DILocation(line: 711, column: 29, scope: !1315)
!1326 = !DILocation(line: 711, column: 35, scope: !1315)
!1327 = !DILocation(line: 711, column: 9, scope: !1315)
!1328 = !DILocation(line: 711, column: 2, scope: !1315)
!1329 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1330, file: !1330, line: 65, type: !1331, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1330 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!847}
!1333 = !DILocation(line: 67, column: 9, scope: !1329)
!1334 = !DILocation(line: 67, column: 2, scope: !1329)
!1335 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1330, file: !1330, line: 120, type: !1336, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1338, !847}
!1338 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1339 = !{!1340}
!1340 = !DILocalVariable(name: "flags", arg: 1, scope: !1335, file: !1330, line: 120, type: !847)
!1341 = !DILocation(line: 120, column: 67, scope: !1335)
!1342 = !DILocation(line: 122, column: 11, scope: !1335)
!1343 = !DILocation(line: 122, column: 17, scope: !1335)
!1344 = !DILocation(line: 122, column: 9, scope: !1335)
!1345 = !DILocation(line: 122, column: 2, scope: !1335)
!1346 = !DISubprogram(name: "kmem_cache_alloc", scope: !1316, file: !1316, line: 500, type: !1317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1347 = distinct !DISubprogram(name: "native_save_fl", scope: !1330, file: !1330, line: 17, type: !1331, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1348)
!1348 = !{!1349}
!1349 = !DILocalVariable(name: "flags", scope: !1347, file: !1330, line: 19, type: !847)
!1350 = !DILocation(line: 19, column: 2, scope: !1347)
!1351 = !DILocation(line: 19, column: 16, scope: !1347)
!1352 = !DILocation(line: 26, column: 2, scope: !1347)
!1353 = !{i64 1520449, i64 1520470}
!1354 = !DILocation(line: 32, column: 9, scope: !1347)
!1355 = !DILocation(line: 33, column: 1, scope: !1347)
!1356 = !DILocation(line: 32, column: 2, scope: !1347)
