; ModuleID = 'drivers/acpi/acpica/nswalk.c'
source_filename = "drivers/acpi/acpica/nswalk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }

@acpi_gbl_root_node = external dso_local global ptr, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ns_get_next_node(ptr noundef %parent_node, ptr noundef %child_node) #0 align 16 !dbg !28 {
entry:
  %retval = alloca ptr, align 8
  %parent_node.addr = alloca ptr, align 8
  %child_node.addr = alloca ptr, align 8
  store ptr %parent_node, ptr %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_node.addr, metadata !797, metadata !DIExpression()), !dbg !799
  store ptr %child_node, ptr %child_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child_node.addr, metadata !798, metadata !DIExpression()), !dbg !800
  %0 = load ptr, ptr %child_node.addr, align 8, !dbg !801
  %tobool = icmp ne ptr %0, null, !dbg !801
  br i1 %tobool, label %if.end, label %if.then, !dbg !803

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent_node.addr, align 8, !dbg !804
  %child = getelementptr inbounds %struct.acpi_namespace_node, ptr %1, i32 0, i32 6, !dbg !806
  %2 = load ptr, ptr %child, align 8, !dbg !806
  store ptr %2, ptr %retval, align 8, !dbg !807
  br label %return, !dbg !807

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %child_node.addr, align 8, !dbg !808
  %peer = getelementptr inbounds %struct.acpi_namespace_node, ptr %3, i32 0, i32 7, !dbg !809
  %4 = load ptr, ptr %peer, align 8, !dbg !809
  store ptr %4, ptr %retval, align 8, !dbg !810
  br label %return, !dbg !810

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !811
  ret ptr %5, !dbg !811
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ns_get_next_node_typed(i32 noundef %type, ptr noundef %parent_node, ptr noundef %child_node) #0 align 16 !dbg !812 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %parent_node.addr = alloca ptr, align 8
  %child_node.addr = alloca ptr, align 8
  %next_node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !817, metadata !DIExpression()), !dbg !821
  store ptr %parent_node, ptr %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_node.addr, metadata !818, metadata !DIExpression()), !dbg !822
  store ptr %child_node, ptr %child_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child_node.addr, metadata !819, metadata !DIExpression()), !dbg !823
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_node) #4, !dbg !824
  call void @llvm.dbg.declare(metadata ptr %next_node, metadata !820, metadata !DIExpression()), !dbg !825
  store ptr null, ptr %next_node, align 8, !dbg !825
  %0 = load ptr, ptr %parent_node.addr, align 8, !dbg !826
  %1 = load ptr, ptr %child_node.addr, align 8, !dbg !827
  %call = call ptr @acpi_ns_get_next_node(ptr noundef %0, ptr noundef %1) #5, !dbg !828
  store ptr %call, ptr %next_node, align 8, !dbg !829
  %2 = load i32, ptr %type.addr, align 4, !dbg !830
  %cmp = icmp eq i32 %2, 0, !dbg !832
  br i1 %cmp, label %if.then, label %if.end, !dbg !833

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %next_node, align 8, !dbg !834
  store ptr %3, ptr %retval, align 8, !dbg !836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !836

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !837

while.cond:                                       ; preds = %if.end5, %if.end
  %4 = load ptr, ptr %next_node, align 8, !dbg !838
  %tobool = icmp ne ptr %4, null, !dbg !837
  br i1 %tobool, label %while.body, label %while.end, !dbg !837

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %next_node, align 8, !dbg !839
  %type1 = getelementptr inbounds %struct.acpi_namespace_node, ptr %5, i32 0, i32 2, !dbg !842
  %6 = load i8, ptr %type1, align 1, !dbg !842
  %conv = zext i8 %6 to i32, !dbg !839
  %7 = load i32, ptr %type.addr, align 4, !dbg !843
  %cmp2 = icmp eq i32 %conv, %7, !dbg !844
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !845

if.then4:                                         ; preds = %while.body
  %8 = load ptr, ptr %next_node, align 8, !dbg !846
  store ptr %8, ptr %retval, align 8, !dbg !848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !848

if.end5:                                          ; preds = %while.body
  %9 = load ptr, ptr %next_node, align 8, !dbg !849
  %peer = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 7, !dbg !850
  %10 = load ptr, ptr %peer, align 8, !dbg !850
  store ptr %10, ptr %next_node, align 8, !dbg !851
  br label %while.cond, !dbg !837, !llvm.loop !852

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !856

cleanup:                                          ; preds = %while.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_node) #4, !dbg !857
  %11 = load ptr, ptr %retval, align 8, !dbg !857
  ret ptr %11, !dbg !857
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_walk_namespace(i32 noundef %type, ptr noundef %start_node, i32 noundef %max_depth, i32 noundef %flags, ptr noundef %descending_callback, ptr noundef %ascending_callback, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !858 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %start_node.addr = alloca ptr, align 8
  %max_depth.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %descending_callback.addr = alloca ptr, align 8
  %ascending_callback.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %mutex_status = alloca i32, align 4
  %child_node = alloca ptr, align 8
  %parent_node = alloca ptr, align 8
  %child_type = alloca i32, align 4
  %level = alloca i32, align 4
  %node_previously_visited = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !863, metadata !DIExpression()), !dbg !878
  store ptr %start_node, ptr %start_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_node.addr, metadata !864, metadata !DIExpression()), !dbg !879
  store i32 %max_depth, ptr %max_depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_depth.addr, metadata !865, metadata !DIExpression()), !dbg !880
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !866, metadata !DIExpression()), !dbg !881
  store ptr %descending_callback, ptr %descending_callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %descending_callback.addr, metadata !867, metadata !DIExpression()), !dbg !882
  store ptr %ascending_callback, ptr %ascending_callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ascending_callback.addr, metadata !868, metadata !DIExpression()), !dbg !883
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !869, metadata !DIExpression()), !dbg !884
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !870, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %status, metadata !871, metadata !DIExpression()), !dbg !887
  call void @llvm.lifetime.start.p0(i64 4, ptr %mutex_status) #4, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %mutex_status, metadata !872, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 8, ptr %child_node) #4, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %child_node, metadata !873, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_node) #4, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %parent_node, metadata !874, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 4, ptr %child_type) #4, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %child_type, metadata !875, metadata !DIExpression()), !dbg !895
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #4, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %level, metadata !876, metadata !DIExpression()), !dbg !897
  call void @llvm.lifetime.start.p0(i64 1, ptr %node_previously_visited) #4, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %node_previously_visited, metadata !877, metadata !DIExpression()), !dbg !899
  store i8 0, ptr %node_previously_visited, align 1, !dbg !899
  %0 = load ptr, ptr %start_node.addr, align 8, !dbg !900
  %cmp = icmp eq ptr %0, inttoptr (i64 -1 to ptr), !dbg !902
  br i1 %cmp, label %if.then, label %if.end2, !dbg !903

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !904
  store ptr %1, ptr %start_node.addr, align 8, !dbg !906
  %2 = load ptr, ptr %start_node.addr, align 8, !dbg !907
  %tobool = icmp ne ptr %2, null, !dbg !907
  br i1 %tobool, label %if.end, label %if.then1, !dbg !909

if.then1:                                         ; preds = %if.then
  store i32 3, ptr %retval, align 4, !dbg !910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !910

if.end:                                           ; preds = %if.then
  br label %if.end2, !dbg !912

if.end2:                                          ; preds = %if.end, %entry
  %3 = load ptr, ptr %start_node.addr, align 8, !dbg !913
  store ptr %3, ptr %parent_node, align 8, !dbg !914
  %4 = load ptr, ptr %parent_node, align 8, !dbg !915
  %call = call ptr @acpi_ns_get_next_node(ptr noundef %4, ptr noundef null) #5, !dbg !916
  store ptr %call, ptr %child_node, align 8, !dbg !917
  store i32 0, ptr %child_type, align 4, !dbg !918
  store i32 1, ptr %level, align 4, !dbg !919
  br label %while.cond, !dbg !920

while.cond:                                       ; preds = %if.end69, %if.then63, %if.then58, %if.end2
  %5 = load i32, ptr %level, align 4, !dbg !921
  %cmp3 = icmp ugt i32 %5, 0, !dbg !922
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !923

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %child_node, align 8, !dbg !924
  %tobool4 = icmp ne ptr %6, null, !dbg !923
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !925
  br i1 %7, label %while.body, label %while.end, !dbg !920

while.body:                                       ; preds = %land.end
  store i32 0, ptr %status, align 4, !dbg !926
  %8 = load i32, ptr %type.addr, align 4, !dbg !928
  %cmp5 = icmp ne i32 %8, 0, !dbg !930
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !931

if.then6:                                         ; preds = %while.body
  %9 = load ptr, ptr %child_node, align 8, !dbg !932
  %type7 = getelementptr inbounds %struct.acpi_namespace_node, ptr %9, i32 0, i32 2, !dbg !934
  %10 = load i8, ptr %type7, align 1, !dbg !934
  %conv = zext i8 %10 to i32, !dbg !932
  store i32 %conv, ptr %child_type, align 4, !dbg !935
  br label %if.end8, !dbg !936

if.end8:                                          ; preds = %if.then6, %while.body
  %11 = load ptr, ptr %child_node, align 8, !dbg !937
  %flags9 = getelementptr inbounds %struct.acpi_namespace_node, ptr %11, i32 0, i32 3, !dbg !939
  %12 = load i16, ptr %flags9, align 2, !dbg !939
  %conv10 = zext i16 %12 to i32, !dbg !937
  %and = and i32 %conv10, 2, !dbg !940
  %tobool11 = icmp ne i32 %and, 0, !dbg !940
  br i1 %tobool11, label %land.lhs.true, label %if.else, !dbg !941

land.lhs.true:                                    ; preds = %if.end8
  %13 = load i32, ptr %flags.addr, align 4, !dbg !942
  %and12 = and i32 %13, 2, !dbg !943
  %tobool13 = icmp ne i32 %and12, 0, !dbg !943
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !944

if.then14:                                        ; preds = %land.lhs.true
  store i32 16390, ptr %status, align 4, !dbg !945
  br label %if.end48, !dbg !947

if.else:                                          ; preds = %land.lhs.true, %if.end8
  %14 = load i32, ptr %child_type, align 4, !dbg !948
  %15 = load i32, ptr %type.addr, align 4, !dbg !950
  %cmp15 = icmp eq i32 %14, %15, !dbg !951
  br i1 %cmp15, label %if.then17, label %if.end47, !dbg !952

if.then17:                                        ; preds = %if.else
  %16 = load i32, ptr %flags.addr, align 4, !dbg !953
  %and18 = and i32 %16, 1, !dbg !956
  %tobool19 = icmp ne i32 %and18, 0, !dbg !956
  br i1 %tobool19, label %if.then20, label %if.end25, !dbg !957

if.then20:                                        ; preds = %if.then17
  %call21 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #5, !dbg !958
  store i32 %call21, ptr %mutex_status, align 4, !dbg !960
  %17 = load i32, ptr %mutex_status, align 4, !dbg !961
  %tobool22 = icmp ne i32 %17, 0, !dbg !961
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !963

if.then23:                                        ; preds = %if.then20
  %18 = load i32, ptr %mutex_status, align 4, !dbg !964
  store i32 %18, ptr %retval, align 4, !dbg !964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !964

if.end24:                                         ; preds = %if.then20
  br label %if.end25, !dbg !966

if.end25:                                         ; preds = %if.end24, %if.then17
  %19 = load i8, ptr %node_previously_visited, align 1, !dbg !967
  %tobool26 = icmp ne i8 %19, 0, !dbg !967
  br i1 %tobool26, label %if.else32, label %if.then27, !dbg !969

if.then27:                                        ; preds = %if.end25
  %20 = load ptr, ptr %descending_callback.addr, align 8, !dbg !970
  %tobool28 = icmp ne ptr %20, null, !dbg !970
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !973

if.then29:                                        ; preds = %if.then27
  %21 = load ptr, ptr %descending_callback.addr, align 8, !dbg !974
  %22 = load ptr, ptr %child_node, align 8, !dbg !976
  %23 = load i32, ptr %level, align 4, !dbg !977
  %24 = load ptr, ptr %context.addr, align 8, !dbg !978
  %25 = load ptr, ptr %return_value.addr, align 8, !dbg !979
  %call30 = call i32 %21(ptr noundef %22, i32 noundef %23, ptr noundef %24, ptr noundef %25) #5, !dbg !974
  store i32 %call30, ptr %status, align 4, !dbg !980
  br label %if.end31, !dbg !981

if.end31:                                         ; preds = %if.then29, %if.then27
  br label %if.end37, !dbg !982

if.else32:                                        ; preds = %if.end25
  %26 = load ptr, ptr %ascending_callback.addr, align 8, !dbg !983
  %tobool33 = icmp ne ptr %26, null, !dbg !983
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !986

if.then34:                                        ; preds = %if.else32
  %27 = load ptr, ptr %ascending_callback.addr, align 8, !dbg !987
  %28 = load ptr, ptr %child_node, align 8, !dbg !989
  %29 = load i32, ptr %level, align 4, !dbg !990
  %30 = load ptr, ptr %context.addr, align 8, !dbg !991
  %31 = load ptr, ptr %return_value.addr, align 8, !dbg !992
  %call35 = call i32 %27(ptr noundef %28, i32 noundef %29, ptr noundef %30, ptr noundef %31) #5, !dbg !987
  store i32 %call35, ptr %status, align 4, !dbg !993
  br label %if.end36, !dbg !994

if.end36:                                         ; preds = %if.then34, %if.else32
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end31
  %32 = load i32, ptr %flags.addr, align 4, !dbg !995
  %and38 = and i32 %32, 1, !dbg !997
  %tobool39 = icmp ne i32 %and38, 0, !dbg !997
  br i1 %tobool39, label %if.then40, label %if.end45, !dbg !998

if.then40:                                        ; preds = %if.end37
  %call41 = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #5, !dbg !999
  store i32 %call41, ptr %mutex_status, align 4, !dbg !1001
  %33 = load i32, ptr %mutex_status, align 4, !dbg !1002
  %tobool42 = icmp ne i32 %33, 0, !dbg !1002
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1004

if.then43:                                        ; preds = %if.then40
  %34 = load i32, ptr %mutex_status, align 4, !dbg !1005
  store i32 %34, ptr %retval, align 4, !dbg !1005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1005

if.end44:                                         ; preds = %if.then40
  br label %if.end45, !dbg !1007

if.end45:                                         ; preds = %if.end44, %if.end37
  %35 = load i32, ptr %status, align 4, !dbg !1008
  switch i32 %35, label %sw.default [
    i32 0, label %sw.bb
    i32 16390, label %sw.bb
    i32 16387, label %sw.bb46
  ], !dbg !1009

sw.bb:                                            ; preds = %if.end45, %if.end45
  br label %sw.epilog, !dbg !1010

sw.bb46:                                          ; preds = %if.end45
  store i32 0, ptr %retval, align 4, !dbg !1012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1012

sw.default:                                       ; preds = %if.end45
  %36 = load i32, ptr %status, align 4, !dbg !1013
  store i32 %36, ptr %retval, align 4, !dbg !1013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1013

sw.epilog:                                        ; preds = %sw.bb
  br label %if.end47, !dbg !1014

if.end47:                                         ; preds = %sw.epilog, %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then14
  %37 = load i8, ptr %node_previously_visited, align 1, !dbg !1015
  %tobool49 = icmp ne i8 %37, 0, !dbg !1015
  br i1 %tobool49, label %if.end61, label %land.lhs.true50, !dbg !1017

land.lhs.true50:                                  ; preds = %if.end48
  %38 = load i32, ptr %level, align 4, !dbg !1018
  %39 = load i32, ptr %max_depth.addr, align 4, !dbg !1019
  %cmp51 = icmp ult i32 %38, %39, !dbg !1020
  br i1 %cmp51, label %land.lhs.true53, label %if.end61, !dbg !1021

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %40 = load i32, ptr %status, align 4, !dbg !1022
  %cmp54 = icmp ne i32 %40, 16390, !dbg !1023
  br i1 %cmp54, label %if.then56, label %if.end61, !dbg !1024

if.then56:                                        ; preds = %land.lhs.true53
  %41 = load ptr, ptr %child_node, align 8, !dbg !1025
  %child = getelementptr inbounds %struct.acpi_namespace_node, ptr %41, i32 0, i32 6, !dbg !1028
  %42 = load ptr, ptr %child, align 8, !dbg !1028
  %tobool57 = icmp ne ptr %42, null, !dbg !1025
  br i1 %tobool57, label %if.then58, label %if.end60, !dbg !1029

if.then58:                                        ; preds = %if.then56
  %43 = load i32, ptr %level, align 4, !dbg !1030
  %inc = add i32 %43, 1, !dbg !1030
  store i32 %inc, ptr %level, align 4, !dbg !1030
  %44 = load ptr, ptr %child_node, align 8, !dbg !1032
  store ptr %44, ptr %parent_node, align 8, !dbg !1033
  %45 = load ptr, ptr %parent_node, align 8, !dbg !1034
  %call59 = call ptr @acpi_ns_get_next_node(ptr noundef %45, ptr noundef null) #5, !dbg !1035
  store ptr %call59, ptr %child_node, align 8, !dbg !1036
  br label %while.cond, !dbg !1037, !llvm.loop !1038

if.end60:                                         ; preds = %if.then56
  br label %if.end61, !dbg !1040

if.end61:                                         ; preds = %if.end60, %land.lhs.true53, %land.lhs.true50, %if.end48
  %46 = load i8, ptr %node_previously_visited, align 1, !dbg !1041
  %tobool62 = icmp ne i8 %46, 0, !dbg !1041
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !1043

if.then63:                                        ; preds = %if.end61
  store i8 1, ptr %node_previously_visited, align 1, !dbg !1044
  br label %while.cond, !dbg !1046, !llvm.loop !1038

if.end64:                                         ; preds = %if.end61
  %47 = load ptr, ptr %parent_node, align 8, !dbg !1047
  %48 = load ptr, ptr %child_node, align 8, !dbg !1048
  %call65 = call ptr @acpi_ns_get_next_node(ptr noundef %47, ptr noundef %48) #5, !dbg !1049
  store ptr %call65, ptr %child_node, align 8, !dbg !1050
  %49 = load ptr, ptr %child_node, align 8, !dbg !1051
  %tobool66 = icmp ne ptr %49, null, !dbg !1051
  br i1 %tobool66, label %if.then67, label %if.else68, !dbg !1053

if.then67:                                        ; preds = %if.end64
  store i8 0, ptr %node_previously_visited, align 1, !dbg !1054
  br label %if.end69, !dbg !1056

if.else68:                                        ; preds = %if.end64
  %50 = load i32, ptr %level, align 4, !dbg !1057
  %dec = add i32 %50, -1, !dbg !1057
  store i32 %dec, ptr %level, align 4, !dbg !1057
  %51 = load ptr, ptr %parent_node, align 8, !dbg !1059
  store ptr %51, ptr %child_node, align 8, !dbg !1060
  %52 = load ptr, ptr %parent_node, align 8, !dbg !1061
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %52, i32 0, i32 5, !dbg !1062
  %53 = load ptr, ptr %parent, align 8, !dbg !1062
  store ptr %53, ptr %parent_node, align 8, !dbg !1063
  store i8 1, ptr %node_previously_visited, align 1, !dbg !1064
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then67
  br label %while.cond, !dbg !920, !llvm.loop !1038

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4, !dbg !1065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1065

cleanup:                                          ; preds = %while.end, %sw.default, %sw.bb46, %if.then43, %if.then23, %if.then1
  call void @llvm.lifetime.end.p0(i64 1, ptr %node_previously_visited) #4, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #4, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 4, ptr %child_type) #4, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_node) #4, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 8, ptr %child_node) #4, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 4, ptr %mutex_status) #4, !dbg !1066
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1066
  %54 = load i32, ptr %retval, align 4, !dbg !1066
  ret i32 %54, !dbg !1066
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1067 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1072 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nswalk.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nswalk\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nswalk.ll drivers/acpi/acpica/nswalk.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/nswalk.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "147f1c5ad7045d713c372e6b322e42ea")
!2 = !{!3, !5, !6, !9, !10, !15}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !4, line: 424, baseType: !5)
!4 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !7, line: 42, baseType: !8)
!7 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !4, line: 127, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !11, line: 23, baseType: !12)
!11 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !13, line: 31, baseType: !14)
!13 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!14 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !4, line: 421, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !11, line: 21, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !13, line: 27, baseType: !18)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 8, !"cf-protection-branch", i32 1}
!23 = !{i32 4, !"function_return_thunk_extern", i32 1}
!24 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!25 = !{i32 1, !"Code Model", i32 2}
!26 = !{i32 1, !"override-stack-alignment", i32 8}
!27 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!28 = distinct !DISubprogram(name: "acpi_ns_get_next_node", scope: !1, file: !1, line: 34, type: !29, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !796)
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !33, line: 133, size: 384, elements: !34)
!33 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!34 = !{!35, !783, !784, !785, !786, !792, !793, !794, !795}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !32, file: !33, line: 134, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !38, line: 369, size: 576, elements: !39)
!38 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!39 = !{!40, !54, !67, !79, !93, !107, !116, !432, !449, !465, !478, !556, !568, !582, !592, !610, !632, !651, !670, !689, !702, !729, !746, !759, !773, !782}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !38, line: 370, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !38, line: 73, size: 128, elements: !42)
!42 = !{!43, !44, !48, !49, !53}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !41, file: !38, line: 74, baseType: !36, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !38, line: 74, baseType: !45, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !11, line: 17, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !13, line: 21, baseType: !47)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !38, line: 74, baseType: !45, size: 8, offset: 72)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !41, file: !38, line: 74, baseType: !50, size: 16, offset: 80)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !11, line: 19, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !13, line: 24, baseType: !52)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !38, line: 74, baseType: !45, size: 8, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !38, line: 371, baseType: !55, size: 192)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !38, line: 76, size: 192, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !66}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !55, file: !38, line: 77, baseType: !36, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !55, file: !38, line: 77, baseType: !45, size: 8, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !38, line: 77, baseType: !45, size: 8, offset: 72)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !55, file: !38, line: 77, baseType: !50, size: 16, offset: 80)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !55, file: !38, line: 77, baseType: !45, size: 8, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !55, file: !38, line: 77, baseType: !63, size: 24, offset: 104)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 3)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !55, file: !38, line: 78, baseType: !10, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !38, line: 372, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !38, line: 93, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !78}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !38, line: 94, baseType: !36, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !38, line: 94, baseType: !45, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !38, line: 94, baseType: !45, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !38, line: 94, baseType: !50, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !38, line: 94, baseType: !45, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !38, line: 94, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !38, line: 94, baseType: !16, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !38, line: 373, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !38, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !38, line: 98, baseType: !36, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !38, line: 98, baseType: !45, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !38, line: 98, baseType: !45, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !38, line: 98, baseType: !50, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !38, line: 98, baseType: !45, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !38, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !38, line: 98, baseType: !16, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !38, line: 99, baseType: !16, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !38, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !38, line: 101, baseType: !31, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !38, line: 374, baseType: !94, size: 384)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !38, line: 104, size: 384, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !104, !105, !106}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !94, file: !38, line: 105, baseType: !36, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !38, line: 105, baseType: !45, size: 8, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !38, line: 105, baseType: !45, size: 8, offset: 72)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !94, file: !38, line: 105, baseType: !50, size: 16, offset: 80)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !38, line: 105, baseType: !45, size: 8, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !94, file: !38, line: 105, baseType: !31, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !94, file: !38, line: 106, baseType: !103, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !94, file: !38, line: 107, baseType: !88, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !94, file: !38, line: 108, baseType: !16, size: 32, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !94, file: !38, line: 109, baseType: !16, size: 32, offset: 352)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !38, line: 375, baseType: !108, size: 192)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !38, line: 118, size: 192, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !108, file: !38, line: 119, baseType: !36, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !108, file: !38, line: 119, baseType: !45, size: 8, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !38, line: 119, baseType: !45, size: 8, offset: 72)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !108, file: !38, line: 119, baseType: !50, size: 16, offset: 80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !38, line: 119, baseType: !45, size: 8, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !108, file: !38, line: 119, baseType: !5, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !38, line: 376, baseType: !117, size: 448)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !38, line: 144, size: 448, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !429, !430, !431}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !117, file: !38, line: 145, baseType: !36, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !38, line: 145, baseType: !45, size: 8, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !38, line: 145, baseType: !45, size: 8, offset: 72)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !117, file: !38, line: 145, baseType: !50, size: 16, offset: 80)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !38, line: 145, baseType: !45, size: 8, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !117, file: !38, line: 145, baseType: !45, size: 8, offset: 104)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !117, file: !38, line: 146, baseType: !45, size: 8, offset: 112)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !117, file: !38, line: 147, baseType: !45, size: 8, offset: 120)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !117, file: !38, line: 148, baseType: !36, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !117, file: !38, line: 149, baseType: !36, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !117, file: !38, line: 150, baseType: !88, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !117, file: !38, line: 154, baseType: !131, size: 64, offset: 320)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !38, line: 151, size: 64, elements: !132)
!132 = !{!133, !428}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !131, file: !38, line: 152, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !33, line: 248, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!15, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !140, line: 37, size: 9024, elements: !141)
!140 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !374, !375, !376, !377, !378, !382, !384, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !411, !412, !413, !414, !415, !416, !417, !418, !420, !426}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !140, line: 38, baseType: !138, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !140, line: 39, baseType: !45, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !139, file: !140, line: 40, baseType: !45, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !139, file: !140, line: 41, baseType: !50, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !139, file: !140, line: 42, baseType: !45, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !139, file: !140, line: 43, baseType: !45, size: 8, offset: 104)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !139, file: !140, line: 44, baseType: !45, size: 8, offset: 112)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !140, line: 45, baseType: !150, size: 16, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !4, line: 445, baseType: !50)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !139, file: !140, line: 46, baseType: !45, size: 8, offset: 144)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !139, file: !140, line: 47, baseType: !45, size: 8, offset: 152)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !139, file: !140, line: 48, baseType: !45, size: 8, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !139, file: !140, line: 49, baseType: !45, size: 8, offset: 168)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !139, file: !140, line: 50, baseType: !45, size: 8, offset: 176)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !139, file: !140, line: 51, baseType: !45, size: 8, offset: 184)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !139, file: !140, line: 52, baseType: !45, size: 8, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !139, file: !140, line: 53, baseType: !45, size: 8, offset: 200)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !139, file: !140, line: 54, baseType: !88, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !139, file: !140, line: 55, baseType: !16, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !139, file: !140, line: 56, baseType: !16, size: 32, offset: 352)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !139, file: !140, line: 57, baseType: !16, size: 32, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !139, file: !140, line: 58, baseType: !16, size: 32, offset: 416)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !139, file: !140, line: 60, baseType: !165, size: 640, offset: 448)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !33, line: 909, size: 640, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !256, !257, !372, !373}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !165, file: !33, line: 910, baseType: !88, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !165, file: !33, line: 911, baseType: !88, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !165, file: !33, line: 912, baseType: !88, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !165, file: !33, line: 913, baseType: !88, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !165, file: !33, line: 914, baseType: !88, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !165, file: !33, line: 915, baseType: !173, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !33, line: 891, size: 1600, elements: !175)
!175 = !{!176, !196, !212}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !174, file: !33, line: 892, baseType: !177, size: 448)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !33, line: 844, size: 448, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !195}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !33, line: 845, baseType: !173, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !177, file: !33, line: 845, baseType: !45, size: 8, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !33, line: 845, baseType: !45, size: 8, offset: 72)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !177, file: !33, line: 845, baseType: !50, size: 16, offset: 80)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !177, file: !33, line: 845, baseType: !88, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !33, line: 845, baseType: !173, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !177, file: !33, line: 845, baseType: !31, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !177, file: !33, line: 845, baseType: !187, size: 64, offset: 320)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !33, line: 732, size: 64, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !187, file: !33, line: 733, baseType: !10, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !33, line: 734, baseType: !16, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !187, file: !33, line: 735, baseType: !76, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !187, file: !33, line: 736, baseType: !88, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !33, line: 737, baseType: !76, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !187, file: !33, line: 738, baseType: !173, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !177, file: !33, line: 845, baseType: !45, size: 8, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !174, file: !33, line: 893, baseType: !197, size: 640)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !33, line: 851, size: 640, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !33, line: 852, baseType: !173, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !197, file: !33, line: 852, baseType: !45, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !33, line: 852, baseType: !45, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !197, file: !33, line: 852, baseType: !50, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !197, file: !33, line: 852, baseType: !88, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !33, line: 852, baseType: !173, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !197, file: !33, line: 852, baseType: !31, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !33, line: 852, baseType: !187, size: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !197, file: !33, line: 852, baseType: !45, size: 8, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !197, file: !33, line: 852, baseType: !76, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !197, file: !33, line: 853, baseType: !88, size: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !197, file: !33, line: 854, baseType: !16, size: 32, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !33, line: 855, baseType: !16, size: 32, offset: 608)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !174, file: !33, line: 894, baseType: !213, size: 1600)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !33, line: 862, size: 1600, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !33, line: 863, baseType: !173, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !33, line: 863, baseType: !45, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !33, line: 863, baseType: !45, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !213, file: !33, line: 863, baseType: !50, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !33, line: 863, baseType: !88, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !33, line: 863, baseType: !173, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !33, line: 863, baseType: !31, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !213, file: !33, line: 863, baseType: !187, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !213, file: !33, line: 863, baseType: !45, size: 8, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !213, file: !33, line: 863, baseType: !173, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !213, file: !33, line: 864, baseType: !173, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !213, file: !33, line: 865, baseType: !76, size: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !213, file: !33, line: 866, baseType: !45, size: 8, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !213, file: !33, line: 867, baseType: !76, size: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !213, file: !33, line: 868, baseType: !76, size: 64, offset: 768)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !213, file: !33, line: 869, baseType: !76, size: 64, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !213, file: !33, line: 870, baseType: !232, size: 32, offset: 896)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 4)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !213, file: !33, line: 871, baseType: !16, size: 32, offset: 928)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !213, file: !33, line: 872, baseType: !16, size: 32, offset: 960)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !213, file: !33, line: 873, baseType: !16, size: 32, offset: 992)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !213, file: !33, line: 874, baseType: !16, size: 32, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !213, file: !33, line: 875, baseType: !16, size: 32, offset: 1056)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !213, file: !33, line: 876, baseType: !16, size: 32, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !213, file: !33, line: 877, baseType: !16, size: 32, offset: 1120)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !213, file: !33, line: 878, baseType: !16, size: 32, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !213, file: !33, line: 879, baseType: !16, size: 32, offset: 1184)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !213, file: !33, line: 880, baseType: !16, size: 32, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !213, file: !33, line: 881, baseType: !16, size: 32, offset: 1248)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !213, file: !33, line: 882, baseType: !16, size: 32, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !213, file: !33, line: 883, baseType: !16, size: 32, offset: 1312)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !213, file: !33, line: 884, baseType: !50, size: 16, offset: 1344)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !213, file: !33, line: 885, baseType: !45, size: 8, offset: 1360)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !213, file: !33, line: 886, baseType: !45, size: 8, offset: 1368)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !213, file: !33, line: 887, baseType: !45, size: 8, offset: 1376)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !213, file: !33, line: 888, baseType: !253, size: 160, offset: 1384)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 20)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !165, file: !33, line: 916, baseType: !31, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !165, file: !33, line: 917, baseType: !258, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !33, line: 679, size: 640, elements: !260)
!260 = !{!261, !269, !282, !291, !300, !313, !327, !339, !351}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !259, file: !33, line: 680, baseType: !262, size: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !33, line: 575, size: 128, elements: !263)
!263 = !{!264, !265, !266, !267, !268}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !262, file: !33, line: 576, baseType: !5, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !262, file: !33, line: 576, baseType: !45, size: 8, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !33, line: 576, baseType: !45, size: 8, offset: 72)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !262, file: !33, line: 576, baseType: !50, size: 16, offset: 80)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !262, file: !33, line: 576, baseType: !50, size: 16, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !259, file: !33, line: 681, baseType: !270, size: 384)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !33, line: 604, size: 384, elements: !271)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !270, file: !33, line: 605, baseType: !5, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !270, file: !33, line: 605, baseType: !45, size: 8, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !33, line: 605, baseType: !45, size: 8, offset: 72)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !270, file: !33, line: 605, baseType: !50, size: 16, offset: 80)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !270, file: !33, line: 605, baseType: !50, size: 16, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !270, file: !33, line: 606, baseType: !50, size: 16, offset: 112)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !270, file: !33, line: 607, baseType: !173, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !270, file: !33, line: 608, baseType: !88, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !270, file: !33, line: 609, baseType: !88, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !270, file: !33, line: 610, baseType: !10, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !259, file: !33, line: 682, baseType: !283, size: 192)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !33, line: 582, size: 192, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !33, line: 583, baseType: !5, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !33, line: 583, baseType: !45, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !33, line: 583, baseType: !45, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !33, line: 583, baseType: !50, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !33, line: 583, baseType: !50, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !283, file: !33, line: 584, baseType: !36, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !259, file: !33, line: 683, baseType: !292, size: 192)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !33, line: 616, size: 192, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !33, line: 617, baseType: !5, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !33, line: 617, baseType: !45, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !33, line: 617, baseType: !45, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !33, line: 617, baseType: !50, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !33, line: 617, baseType: !50, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !292, file: !33, line: 618, baseType: !31, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !259, file: !33, line: 684, baseType: !301, size: 448)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !33, line: 621, size: 448, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !33, line: 622, baseType: !5, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !33, line: 622, baseType: !45, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !33, line: 622, baseType: !45, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !33, line: 622, baseType: !50, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !33, line: 622, baseType: !50, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !301, file: !33, line: 623, baseType: !16, size: 32, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !301, file: !33, line: 624, baseType: !173, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !301, file: !33, line: 625, baseType: !88, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !301, file: !33, line: 626, baseType: !88, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !301, file: !33, line: 627, baseType: !16, size: 32, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !259, file: !33, line: 685, baseType: !314, size: 512)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !33, line: 590, size: 512, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !33, line: 591, baseType: !5, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !33, line: 591, baseType: !45, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !33, line: 591, baseType: !45, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !33, line: 591, baseType: !50, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !33, line: 591, baseType: !50, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !314, file: !33, line: 592, baseType: !16, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !314, file: !33, line: 593, baseType: !36, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !314, file: !33, line: 594, baseType: !36, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !314, file: !33, line: 595, baseType: !138, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !314, file: !33, line: 596, baseType: !5, size: 64, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !314, file: !33, line: 597, baseType: !16, size: 32, offset: 448)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !259, file: !33, line: 686, baseType: !328, size: 320)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !33, line: 634, size: 320, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !33, line: 635, baseType: !5, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !33, line: 635, baseType: !45, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !33, line: 635, baseType: !45, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !33, line: 635, baseType: !50, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !33, line: 635, baseType: !50, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !328, file: !33, line: 636, baseType: !45, size: 8, offset: 112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !328, file: !33, line: 637, baseType: !138, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !328, file: !33, line: 638, baseType: !36, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !328, file: !33, line: 639, baseType: !10, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !259, file: !33, line: 687, baseType: !340, size: 640)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !33, line: 646, size: 640, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !340, file: !33, line: 647, baseType: !5, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !340, file: !33, line: 647, baseType: !45, size: 8, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !33, line: 647, baseType: !45, size: 8, offset: 72)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !340, file: !33, line: 647, baseType: !50, size: 16, offset: 80)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !340, file: !33, line: 647, baseType: !50, size: 16, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !340, file: !33, line: 648, baseType: !348, size: 512, offset: 128)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 512, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 8)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !259, file: !33, line: 688, baseType: !352, size: 320)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !33, line: 669, size: 320, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !33, line: 670, baseType: !5, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !352, file: !33, line: 670, baseType: !45, size: 8, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !33, line: 670, baseType: !45, size: 8, offset: 72)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !352, file: !33, line: 670, baseType: !50, size: 16, offset: 80)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !33, line: 670, baseType: !50, size: 16, offset: 96)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !352, file: !33, line: 671, baseType: !45, size: 8, offset: 112)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !352, file: !33, line: 672, baseType: !31, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !352, file: !33, line: 673, baseType: !36, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !352, file: !33, line: 674, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !33, line: 660, size: 128, elements: !365)
!365 = !{!366, !371}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !364, file: !33, line: 661, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !4, line: 1061, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !3, !16, !5}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !364, file: !33, line: 662, baseType: !5, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !165, file: !33, line: 918, baseType: !173, size: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !165, file: !33, line: 919, baseType: !16, size: 32, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !139, file: !140, line: 61, baseType: !16, size: 32, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !139, file: !140, line: 62, baseType: !16, size: 32, offset: 1120)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !139, file: !140, line: 63, baseType: !50, size: 16, offset: 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !139, file: !140, line: 64, baseType: !45, size: 8, offset: 1168)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !139, file: !140, line: 66, baseType: !379, size: 2688, offset: 1216)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2688, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 7)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !139, file: !140, line: 67, baseType: !383, size: 3072, offset: 3904)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 3072, elements: !349)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !139, file: !140, line: 68, baseType: !385, size: 576, offset: 6976)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 576, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 9)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !139, file: !140, line: 69, baseType: !103, size: 64, offset: 7552)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !139, file: !140, line: 71, baseType: !88, size: 64, offset: 7616)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !139, file: !140, line: 72, baseType: !103, size: 64, offset: 7680)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !139, file: !140, line: 73, baseType: !258, size: 64, offset: 7744)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !139, file: !140, line: 74, baseType: !31, size: 64, offset: 7808)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !139, file: !140, line: 75, baseType: !36, size: 64, offset: 7872)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !139, file: !140, line: 76, baseType: !31, size: 64, offset: 7936)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !139, file: !140, line: 77, baseType: !173, size: 64, offset: 8000)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !139, file: !140, line: 78, baseType: !36, size: 64, offset: 8064)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !139, file: !140, line: 79, baseType: !31, size: 64, offset: 8128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !139, file: !140, line: 80, baseType: !76, size: 64, offset: 8192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !139, file: !140, line: 81, baseType: !173, size: 64, offset: 8256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !139, file: !140, line: 82, baseType: !401, size: 64, offset: 8320)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !33, line: 718, size: 128, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !403, file: !33, line: 722, baseType: !16, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !403, file: !33, line: 723, baseType: !16, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !33, line: 724, baseType: !50, size: 16, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !403, file: !33, line: 725, baseType: !45, size: 8, offset: 80)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !403, file: !33, line: 726, baseType: !45, size: 8, offset: 88)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !403, file: !33, line: 727, baseType: !45, size: 8, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !139, file: !140, line: 83, baseType: !173, size: 64, offset: 8384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !139, file: !140, line: 84, baseType: !36, size: 64, offset: 8448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !139, file: !140, line: 85, baseType: !258, size: 64, offset: 8512)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !139, file: !140, line: 86, baseType: !36, size: 64, offset: 8576)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !139, file: !140, line: 87, baseType: !258, size: 64, offset: 8640)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !139, file: !140, line: 88, baseType: !173, size: 64, offset: 8704)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !139, file: !140, line: 89, baseType: !173, size: 64, offset: 8768)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !139, file: !140, line: 90, baseType: !419, size: 64, offset: 8832)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !139, file: !140, line: 91, baseType: !421, size: 64, offset: 8896)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !33, line: 652, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!15, !138, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !139, file: !140, line: 92, baseType: !427, size: 64, offset: 8960)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !33, line: 656, baseType: !135)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !131, file: !38, line: 153, baseType: !36, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !117, file: !38, line: 156, baseType: !16, size: 32, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !117, file: !38, line: 157, baseType: !150, size: 16, offset: 416)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !117, file: !38, line: 158, baseType: !45, size: 8, offset: 432)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !38, line: 377, baseType: !433, size: 576)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !38, line: 122, size: 576, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !433, file: !38, line: 123, baseType: !36, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !433, file: !38, line: 123, baseType: !45, size: 8, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !433, file: !38, line: 123, baseType: !45, size: 8, offset: 72)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !433, file: !38, line: 123, baseType: !50, size: 16, offset: 80)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !433, file: !38, line: 123, baseType: !45, size: 8, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !433, file: !38, line: 123, baseType: !45, size: 8, offset: 104)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !433, file: !38, line: 124, baseType: !50, size: 16, offset: 112)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !433, file: !38, line: 125, baseType: !5, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !433, file: !38, line: 126, baseType: !10, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !433, file: !38, line: 127, baseType: !419, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !433, file: !38, line: 128, baseType: !36, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !433, file: !38, line: 129, baseType: !36, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !433, file: !38, line: 130, baseType: !31, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !433, file: !38, line: 131, baseType: !45, size: 8, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !38, line: 378, baseType: !450, size: 512)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !38, line: 134, size: 512, elements: !451)
!451 = !{!452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !463, !464}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !450, file: !38, line: 135, baseType: !36, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !450, file: !38, line: 135, baseType: !45, size: 8, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !38, line: 135, baseType: !45, size: 8, offset: 72)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !450, file: !38, line: 135, baseType: !50, size: 16, offset: 80)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !450, file: !38, line: 135, baseType: !45, size: 8, offset: 96)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !450, file: !38, line: 135, baseType: !45, size: 8, offset: 104)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !450, file: !38, line: 136, baseType: !31, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !450, file: !38, line: 137, baseType: !36, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !450, file: !38, line: 138, baseType: !36, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !450, file: !38, line: 139, baseType: !462, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !4, line: 129, baseType: !10)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !450, file: !38, line: 140, baseType: !16, size: 32, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !450, file: !38, line: 141, baseType: !5, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !38, line: 379, baseType: !466, size: 320)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !38, line: 185, size: 320, elements: !467)
!467 = !{!468, !469, !470, !471, !472, !473, !477}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !466, file: !38, line: 186, baseType: !36, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !466, file: !38, line: 186, baseType: !45, size: 8, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !38, line: 186, baseType: !45, size: 8, offset: 72)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !466, file: !38, line: 186, baseType: !50, size: 16, offset: 80)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !38, line: 186, baseType: !45, size: 8, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !466, file: !38, line: 186, baseType: !474, size: 128, offset: 128)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !466, file: !38, line: 186, baseType: !36, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !38, line: 380, baseType: !479, size: 384)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !38, line: 188, size: 384, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !479, file: !38, line: 189, baseType: !36, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !479, file: !38, line: 189, baseType: !45, size: 8, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !38, line: 189, baseType: !45, size: 8, offset: 72)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !479, file: !38, line: 189, baseType: !50, size: 16, offset: 80)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !38, line: 189, baseType: !45, size: 8, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !479, file: !38, line: 190, baseType: !474, size: 128, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !479, file: !38, line: 190, baseType: !36, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !479, file: !38, line: 190, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !33, line: 480, size: 576, elements: !491)
!491 = !{!492, !493, !494, !495, !503, !518, !550, !551, !552, !553, !554, !555}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !33, line: 481, baseType: !31, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !490, file: !33, line: 482, baseType: !489, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !33, line: 483, baseType: !489, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !490, file: !33, line: 484, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !33, line: 497, size: 256, elements: !498)
!498 = !{!499, !500, !501, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !497, file: !33, line: 498, baseType: !496, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !33, line: 499, baseType: !496, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !497, file: !33, line: 500, baseType: !489, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !497, file: !33, line: 501, baseType: !16, size: 32, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !490, file: !33, line: 485, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !33, line: 466, size: 320, elements: !506)
!506 = !{!507, !512, !513, !514, !515, !516, !517}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !505, file: !33, line: 467, baseType: !508, size: 128)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !33, line: 459, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !508, file: !33, line: 460, baseType: !45, size: 8)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !508, file: !33, line: 461, baseType: !10, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !505, file: !33, line: 468, baseType: !508, size: 128, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !505, file: !33, line: 469, baseType: !50, size: 16, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !505, file: !33, line: 470, baseType: !45, size: 8, offset: 272)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !505, file: !33, line: 471, baseType: !45, size: 8, offset: 280)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !505, file: !33, line: 472, baseType: !45, size: 8, offset: 288)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !505, file: !33, line: 473, baseType: !45, size: 8, offset: 296)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !490, file: !33, line: 486, baseType: !519, size: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !33, line: 448, size: 192, elements: !521)
!521 = !{!522, !545, !546, !547, !548, !549}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !520, file: !33, line: 449, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !33, line: 438, size: 64, elements: !524)
!524 = !{!525, !526, !539}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !523, file: !33, line: 439, baseType: !31, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !523, file: !33, line: 440, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !33, line: 419, size: 256, elements: !529)
!529 = !{!530, !535, !536, !537, !538}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !528, file: !33, line: 420, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !4, line: 1058, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!16, !3, !16, !5}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !528, file: !33, line: 421, baseType: !5, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !528, file: !33, line: 422, baseType: !31, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !528, file: !33, line: 423, baseType: !45, size: 8, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !528, file: !33, line: 424, baseType: !45, size: 8, offset: 200)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !523, file: !33, line: 441, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !33, line: 429, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !541, file: !33, line: 430, baseType: !31, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !33, line: 431, baseType: !540, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !520, file: !33, line: 450, baseType: !504, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !33, line: 451, baseType: !45, size: 8, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !520, file: !33, line: 452, baseType: !45, size: 8, offset: 136)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !520, file: !33, line: 453, baseType: !45, size: 8, offset: 144)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !520, file: !33, line: 454, baseType: !45, size: 8, offset: 152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !490, file: !33, line: 487, baseType: !10, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !490, file: !33, line: 488, baseType: !16, size: 32, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !490, file: !33, line: 489, baseType: !50, size: 16, offset: 480)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !490, file: !33, line: 490, baseType: !50, size: 16, offset: 496)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !490, file: !33, line: 491, baseType: !45, size: 8, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !490, file: !33, line: 492, baseType: !45, size: 8, offset: 520)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !38, line: 381, baseType: !557, size: 384)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !38, line: 193, size: 384, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !557, file: !38, line: 194, baseType: !36, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !557, file: !38, line: 194, baseType: !45, size: 8, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !38, line: 194, baseType: !45, size: 8, offset: 72)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !557, file: !38, line: 194, baseType: !50, size: 16, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !38, line: 194, baseType: !45, size: 8, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !557, file: !38, line: 194, baseType: !474, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !38, line: 194, baseType: !36, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !557, file: !38, line: 194, baseType: !16, size: 32, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !557, file: !38, line: 195, baseType: !16, size: 32, offset: 352)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !38, line: 382, baseType: !569, size: 384)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !38, line: 198, size: 384, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !38, line: 199, baseType: !36, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !38, line: 199, baseType: !45, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !38, line: 199, baseType: !45, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !38, line: 199, baseType: !50, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !38, line: 199, baseType: !45, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !569, file: !38, line: 201, baseType: !45, size: 8, offset: 104)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !569, file: !38, line: 202, baseType: !45, size: 8, offset: 112)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !38, line: 203, baseType: !474, size: 128, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !38, line: 203, baseType: !36, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !569, file: !38, line: 203, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !4, line: 128, baseType: !10)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !38, line: 383, baseType: !583, size: 320)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !38, line: 206, size: 320, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !583, file: !38, line: 207, baseType: !36, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !583, file: !38, line: 207, baseType: !45, size: 8, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !583, file: !38, line: 207, baseType: !45, size: 8, offset: 72)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !583, file: !38, line: 207, baseType: !50, size: 16, offset: 80)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !38, line: 207, baseType: !45, size: 8, offset: 96)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !583, file: !38, line: 207, baseType: !474, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !583, file: !38, line: 207, baseType: !36, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !38, line: 384, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !38, line: 234, size: 384, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !593, file: !38, line: 235, baseType: !36, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !593, file: !38, line: 235, baseType: !45, size: 8, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !593, file: !38, line: 235, baseType: !45, size: 8, offset: 72)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !593, file: !38, line: 235, baseType: !50, size: 16, offset: 80)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !38, line: 235, baseType: !45, size: 8, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !593, file: !38, line: 235, baseType: !45, size: 8, offset: 104)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !593, file: !38, line: 235, baseType: !45, size: 8, offset: 112)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !593, file: !38, line: 235, baseType: !45, size: 8, offset: 120)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !593, file: !38, line: 235, baseType: !31, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !593, file: !38, line: 235, baseType: !16, size: 32, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !593, file: !38, line: 235, baseType: !16, size: 32, offset: 224)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !593, file: !38, line: 235, baseType: !16, size: 32, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !593, file: !38, line: 235, baseType: !45, size: 8, offset: 288)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !593, file: !38, line: 235, baseType: !45, size: 8, offset: 296)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !593, file: !38, line: 235, baseType: !36, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !38, line: 385, baseType: !611, size: 576)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !38, line: 238, size: 576, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !38, line: 239, baseType: !36, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !38, line: 239, baseType: !45, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !38, line: 239, baseType: !45, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !38, line: 239, baseType: !50, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !38, line: 239, baseType: !45, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !611, file: !38, line: 239, baseType: !45, size: 8, offset: 104)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !611, file: !38, line: 239, baseType: !45, size: 8, offset: 112)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !611, file: !38, line: 239, baseType: !45, size: 8, offset: 120)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !611, file: !38, line: 239, baseType: !31, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !611, file: !38, line: 239, baseType: !16, size: 32, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !611, file: !38, line: 239, baseType: !16, size: 32, offset: 224)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !611, file: !38, line: 239, baseType: !16, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !611, file: !38, line: 239, baseType: !45, size: 8, offset: 288)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !611, file: !38, line: 239, baseType: !45, size: 8, offset: 296)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !611, file: !38, line: 239, baseType: !50, size: 16, offset: 304)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !611, file: !38, line: 240, baseType: !36, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !611, file: !38, line: 241, baseType: !88, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !611, file: !38, line: 242, baseType: !50, size: 16, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !611, file: !38, line: 243, baseType: !88, size: 64, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !38, line: 386, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !38, line: 263, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !38, line: 264, baseType: !36, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !38, line: 264, baseType: !45, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !38, line: 264, baseType: !45, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !38, line: 264, baseType: !50, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !38, line: 264, baseType: !45, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !633, file: !38, line: 264, baseType: !45, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !633, file: !38, line: 264, baseType: !45, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !633, file: !38, line: 264, baseType: !45, size: 8, offset: 120)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !38, line: 264, baseType: !31, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !633, file: !38, line: 264, baseType: !16, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !633, file: !38, line: 264, baseType: !16, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !38, line: 264, baseType: !16, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !633, file: !38, line: 264, baseType: !45, size: 8, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !633, file: !38, line: 264, baseType: !45, size: 8, offset: 296)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !633, file: !38, line: 264, baseType: !45, size: 8, offset: 304)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !633, file: !38, line: 265, baseType: !36, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !38, line: 387, baseType: !652, size: 448)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !38, line: 246, size: 448, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !38, line: 247, baseType: !36, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !38, line: 247, baseType: !45, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !38, line: 247, baseType: !45, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !38, line: 247, baseType: !50, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !38, line: 247, baseType: !45, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !38, line: 247, baseType: !45, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !38, line: 247, baseType: !45, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !38, line: 247, baseType: !45, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !38, line: 247, baseType: !31, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !38, line: 247, baseType: !16, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !38, line: 247, baseType: !16, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !38, line: 247, baseType: !16, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !38, line: 247, baseType: !45, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !38, line: 247, baseType: !45, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !652, file: !38, line: 247, baseType: !36, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !652, file: !38, line: 248, baseType: !36, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !38, line: 388, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !38, line: 251, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !38, line: 252, baseType: !36, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !38, line: 252, baseType: !45, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !38, line: 252, baseType: !45, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !38, line: 252, baseType: !50, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !38, line: 252, baseType: !45, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !38, line: 252, baseType: !45, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !38, line: 252, baseType: !45, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !38, line: 252, baseType: !45, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !38, line: 252, baseType: !31, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !38, line: 252, baseType: !16, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !38, line: 252, baseType: !16, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !38, line: 252, baseType: !16, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !38, line: 252, baseType: !45, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !38, line: 252, baseType: !45, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !671, file: !38, line: 257, baseType: !36, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !671, file: !38, line: 258, baseType: !36, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !38, line: 389, baseType: !690, size: 512)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !38, line: 274, size: 512, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !38, line: 275, baseType: !36, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !38, line: 275, baseType: !45, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !38, line: 275, baseType: !45, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !38, line: 275, baseType: !50, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !38, line: 275, baseType: !45, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !38, line: 275, baseType: !31, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !690, file: !38, line: 276, baseType: !16, size: 32, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !690, file: !38, line: 277, baseType: !367, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !690, file: !38, line: 278, baseType: !5, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !38, line: 279, baseType: !474, size: 128, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !38, line: 390, baseType: !703, size: 576)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !38, line: 282, size: 576, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !718, !719, !720, !721, !727, !728}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !703, file: !38, line: 283, baseType: !36, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !703, file: !38, line: 283, baseType: !45, size: 8, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !703, file: !38, line: 283, baseType: !45, size: 8, offset: 72)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !703, file: !38, line: 283, baseType: !50, size: 16, offset: 80)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !38, line: 283, baseType: !45, size: 8, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !703, file: !38, line: 283, baseType: !45, size: 8, offset: 104)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !703, file: !38, line: 284, baseType: !45, size: 8, offset: 112)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !703, file: !38, line: 285, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !4, line: 1093, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!15, !16, !462, !16, !717, !5, !5}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !38, line: 286, baseType: !31, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !703, file: !38, line: 287, baseType: !5, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !703, file: !38, line: 288, baseType: !5, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !703, file: !38, line: 289, baseType: !722, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !4, line: 1126, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!15, !3, !16, !5, !726}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !703, file: !38, line: 290, baseType: !36, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !38, line: 291, baseType: !36, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !38, line: 391, baseType: !730, size: 512)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !38, line: 309, size: 512, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !730, file: !38, line: 310, baseType: !36, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !38, line: 310, baseType: !45, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !38, line: 310, baseType: !45, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !730, file: !38, line: 310, baseType: !50, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !38, line: 310, baseType: !45, size: 8, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !730, file: !38, line: 310, baseType: !45, size: 8, offset: 104)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !730, file: !38, line: 311, baseType: !45, size: 8, offset: 112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !730, file: !38, line: 312, baseType: !45, size: 8, offset: 120)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !730, file: !38, line: 313, baseType: !5, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !38, line: 314, baseType: !31, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !730, file: !38, line: 315, baseType: !103, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !730, file: !38, line: 316, baseType: !88, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !730, file: !38, line: 317, baseType: !88, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !730, file: !38, line: 318, baseType: !16, size: 32, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !38, line: 392, baseType: !747, size: 448)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !38, line: 342, size: 448, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !38, line: 343, baseType: !36, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !38, line: 343, baseType: !45, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !38, line: 343, baseType: !45, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !38, line: 343, baseType: !50, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !38, line: 343, baseType: !45, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !747, file: !38, line: 343, baseType: !31, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !747, file: !38, line: 344, baseType: !31, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !747, file: !38, line: 345, baseType: !5, size: 64, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !747, file: !38, line: 346, baseType: !88, size: 64, offset: 320)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !747, file: !38, line: 347, baseType: !16, size: 32, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !38, line: 393, baseType: !760, size: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !38, line: 352, size: 256, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !772}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !38, line: 353, baseType: !36, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !38, line: 353, baseType: !45, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !38, line: 353, baseType: !45, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !38, line: 353, baseType: !50, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !38, line: 353, baseType: !45, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !760, file: !38, line: 353, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !4, line: 1064, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !3, !5}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !760, file: !38, line: 354, baseType: !5, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !38, line: 394, baseType: !774, size: 192)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !38, line: 359, size: 192, elements: !775)
!775 = !{!776, !777, !778, !779, !780, !781}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !774, file: !38, line: 360, baseType: !36, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !774, file: !38, line: 360, baseType: !45, size: 8, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !38, line: 360, baseType: !45, size: 8, offset: 72)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !774, file: !38, line: 360, baseType: !50, size: 16, offset: 80)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !38, line: 360, baseType: !45, size: 8, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !774, file: !38, line: 360, baseType: !36, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !38, line: 401, baseType: !32, size: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !32, file: !33, line: 135, baseType: !45, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !32, file: !33, line: 136, baseType: !45, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !33, line: 137, baseType: !50, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !32, file: !33, line: 138, baseType: !787, size: 32, offset: 96)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !788, line: 328, size: 32, elements: !789)
!788 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !787, file: !788, line: 329, baseType: !16, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !787, file: !788, line: 330, baseType: !232, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !32, file: !33, line: 139, baseType: !31, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !32, file: !33, line: 140, baseType: !31, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !32, file: !33, line: 141, baseType: !31, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !32, file: !33, line: 142, baseType: !150, size: 16, offset: 320)
!796 = !{!797, !798}
!797 = !DILocalVariable(name: "parent_node", arg: 1, scope: !28, file: !1, line: 35, type: !31)
!798 = !DILocalVariable(name: "child_node", arg: 2, scope: !28, file: !1, line: 37, type: !31)
!799 = !DILocation(line: 35, column: 10, scope: !28)
!800 = !DILocation(line: 37, column: 10, scope: !28)
!801 = !DILocation(line: 41, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !28, file: !1, line: 41, column: 6)
!803 = !DILocation(line: 41, column: 6, scope: !28)
!804 = !DILocation(line: 45, column: 11, scope: !805)
!805 = distinct !DILexicalBlock(scope: !802, file: !1, line: 41, column: 19)
!806 = !DILocation(line: 45, column: 24, scope: !805)
!807 = !DILocation(line: 45, column: 3, scope: !805)
!808 = !DILocation(line: 50, column: 10, scope: !28)
!809 = !DILocation(line: 50, column: 22, scope: !28)
!810 = !DILocation(line: 50, column: 2, scope: !28)
!811 = !DILocation(line: 51, column: 1, scope: !28)
!812 = distinct !DISubprogram(name: "acpi_ns_get_next_node_typed", scope: !1, file: !1, line: 72, type: !813, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !816)
!813 = !DISubroutineType(types: !814)
!814 = !{!31, !815, !31, !31}
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !4, line: 644, baseType: !16)
!816 = !{!817, !818, !819, !820}
!817 = !DILocalVariable(name: "type", arg: 1, scope: !812, file: !1, line: 72, type: !815)
!818 = !DILocalVariable(name: "parent_node", arg: 2, scope: !812, file: !1, line: 75, type: !31)
!819 = !DILocalVariable(name: "child_node", arg: 3, scope: !812, file: !1, line: 78, type: !31)
!820 = !DILocalVariable(name: "next_node", scope: !812, file: !1, line: 80, type: !31)
!821 = !DILocation(line: 72, column: 74, scope: !812)
!822 = !DILocation(line: 75, column: 9, scope: !812)
!823 = !DILocation(line: 78, column: 9, scope: !812)
!824 = !DILocation(line: 80, column: 2, scope: !812)
!825 = !DILocation(line: 80, column: 30, scope: !812)
!826 = !DILocation(line: 84, column: 36, scope: !812)
!827 = !DILocation(line: 84, column: 49, scope: !812)
!828 = !DILocation(line: 84, column: 14, scope: !812)
!829 = !DILocation(line: 84, column: 12, scope: !812)
!830 = !DILocation(line: 89, column: 6, scope: !831)
!831 = distinct !DILexicalBlock(scope: !812, file: !1, line: 89, column: 6)
!832 = !DILocation(line: 89, column: 11, scope: !831)
!833 = !DILocation(line: 89, column: 6, scope: !812)
!834 = !DILocation(line: 93, column: 11, scope: !835)
!835 = distinct !DILexicalBlock(scope: !831, file: !1, line: 89, column: 29)
!836 = !DILocation(line: 93, column: 3, scope: !835)
!837 = !DILocation(line: 98, column: 2, scope: !812)
!838 = !DILocation(line: 98, column: 9, scope: !812)
!839 = !DILocation(line: 102, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 102, column: 7)
!841 = distinct !DILexicalBlock(scope: !812, file: !1, line: 98, column: 20)
!842 = !DILocation(line: 102, column: 18, scope: !840)
!843 = !DILocation(line: 102, column: 26, scope: !840)
!844 = !DILocation(line: 102, column: 23, scope: !840)
!845 = !DILocation(line: 102, column: 7, scope: !841)
!846 = !DILocation(line: 103, column: 12, scope: !847)
!847 = distinct !DILexicalBlock(scope: !840, file: !1, line: 102, column: 32)
!848 = !DILocation(line: 103, column: 4, scope: !847)
!849 = !DILocation(line: 108, column: 15, scope: !841)
!850 = !DILocation(line: 108, column: 26, scope: !841)
!851 = !DILocation(line: 108, column: 13, scope: !841)
!852 = distinct !{!852, !837, !853, !854, !855}
!853 = !DILocation(line: 109, column: 2, scope: !812)
!854 = !{!"llvm.loop.mustprogress"}
!855 = !{!"llvm.loop.unroll.disable"}
!856 = !DILocation(line: 113, column: 2, scope: !812)
!857 = !DILocation(line: 114, column: 1, scope: !812)
!858 = distinct !DISubprogram(name: "acpi_ns_walk_namespace", scope: !1, file: !1, line: 150, type: !859, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !862)
!859 = !DISubroutineType(types: !860)
!860 = !{!15, !815, !3, !16, !16, !861, !861, !5, !726}
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !4, line: 1135, baseType: !723)
!862 = !{!863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877}
!863 = !DILocalVariable(name: "type", arg: 1, scope: !858, file: !1, line: 150, type: !815)
!864 = !DILocalVariable(name: "start_node", arg: 2, scope: !858, file: !1, line: 151, type: !3)
!865 = !DILocalVariable(name: "max_depth", arg: 3, scope: !858, file: !1, line: 152, type: !16)
!866 = !DILocalVariable(name: "flags", arg: 4, scope: !858, file: !1, line: 153, type: !16)
!867 = !DILocalVariable(name: "descending_callback", arg: 5, scope: !858, file: !1, line: 154, type: !861)
!868 = !DILocalVariable(name: "ascending_callback", arg: 6, scope: !858, file: !1, line: 155, type: !861)
!869 = !DILocalVariable(name: "context", arg: 7, scope: !858, file: !1, line: 156, type: !5)
!870 = !DILocalVariable(name: "return_value", arg: 8, scope: !858, file: !1, line: 156, type: !726)
!871 = !DILocalVariable(name: "status", scope: !858, file: !1, line: 158, type: !15)
!872 = !DILocalVariable(name: "mutex_status", scope: !858, file: !1, line: 159, type: !15)
!873 = !DILocalVariable(name: "child_node", scope: !858, file: !1, line: 160, type: !31)
!874 = !DILocalVariable(name: "parent_node", scope: !858, file: !1, line: 161, type: !31)
!875 = !DILocalVariable(name: "child_type", scope: !858, file: !1, line: 162, type: !815)
!876 = !DILocalVariable(name: "level", scope: !858, file: !1, line: 163, type: !16)
!877 = !DILocalVariable(name: "node_previously_visited", scope: !858, file: !1, line: 164, type: !45)
!878 = !DILocation(line: 150, column: 41, scope: !858)
!879 = !DILocation(line: 151, column: 22, scope: !858)
!880 = !DILocation(line: 152, column: 14, scope: !858)
!881 = !DILocation(line: 153, column: 14, scope: !858)
!882 = !DILocation(line: 154, column: 29, scope: !858)
!883 = !DILocation(line: 155, column: 29, scope: !858)
!884 = !DILocation(line: 156, column: 16, scope: !858)
!885 = !DILocation(line: 156, column: 32, scope: !858)
!886 = !DILocation(line: 158, column: 2, scope: !858)
!887 = !DILocation(line: 158, column: 14, scope: !858)
!888 = !DILocation(line: 159, column: 2, scope: !858)
!889 = !DILocation(line: 159, column: 14, scope: !858)
!890 = !DILocation(line: 160, column: 2, scope: !858)
!891 = !DILocation(line: 160, column: 30, scope: !858)
!892 = !DILocation(line: 161, column: 2, scope: !858)
!893 = !DILocation(line: 161, column: 30, scope: !858)
!894 = !DILocation(line: 162, column: 2, scope: !858)
!895 = !DILocation(line: 162, column: 19, scope: !858)
!896 = !DILocation(line: 163, column: 2, scope: !858)
!897 = !DILocation(line: 163, column: 6, scope: !858)
!898 = !DILocation(line: 164, column: 2, scope: !858)
!899 = !DILocation(line: 164, column: 5, scope: !858)
!900 = !DILocation(line: 170, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !858, file: !1, line: 170, column: 6)
!902 = !DILocation(line: 170, column: 17, scope: !901)
!903 = !DILocation(line: 170, column: 6, scope: !858)
!904 = !DILocation(line: 171, column: 16, scope: !905)
!905 = distinct !DILexicalBlock(scope: !901, file: !1, line: 170, column: 38)
!906 = !DILocation(line: 171, column: 14, scope: !905)
!907 = !DILocation(line: 172, column: 8, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !1, line: 172, column: 7)
!909 = !DILocation(line: 172, column: 7, scope: !905)
!910 = !DILocation(line: 173, column: 4, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !1, line: 172, column: 20)
!912 = !DILocation(line: 175, column: 2, scope: !905)
!913 = !DILocation(line: 179, column: 16, scope: !858)
!914 = !DILocation(line: 179, column: 14, scope: !858)
!915 = !DILocation(line: 180, column: 37, scope: !858)
!916 = !DILocation(line: 180, column: 15, scope: !858)
!917 = !DILocation(line: 180, column: 13, scope: !858)
!918 = !DILocation(line: 181, column: 13, scope: !858)
!919 = !DILocation(line: 182, column: 8, scope: !858)
!920 = !DILocation(line: 189, column: 2, scope: !858)
!921 = !DILocation(line: 189, column: 9, scope: !858)
!922 = !DILocation(line: 189, column: 15, scope: !858)
!923 = !DILocation(line: 189, column: 19, scope: !858)
!924 = !DILocation(line: 189, column: 22, scope: !858)
!925 = !DILocation(line: 0, scope: !858)
!926 = !DILocation(line: 190, column: 10, scope: !927)
!927 = distinct !DILexicalBlock(scope: !858, file: !1, line: 189, column: 34)
!928 = !DILocation(line: 194, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !927, file: !1, line: 194, column: 7)
!930 = !DILocation(line: 194, column: 12, scope: !929)
!931 = !DILocation(line: 194, column: 7, scope: !927)
!932 = !DILocation(line: 195, column: 17, scope: !933)
!933 = distinct !DILexicalBlock(scope: !929, file: !1, line: 194, column: 30)
!934 = !DILocation(line: 195, column: 29, scope: !933)
!935 = !DILocation(line: 195, column: 15, scope: !933)
!936 = !DILocation(line: 196, column: 3, scope: !933)
!937 = !DILocation(line: 206, column: 8, scope: !938)
!938 = distinct !DILexicalBlock(scope: !927, file: !1, line: 206, column: 7)
!939 = !DILocation(line: 206, column: 20, scope: !938)
!940 = !DILocation(line: 206, column: 26, scope: !938)
!941 = !DILocation(line: 206, column: 45, scope: !938)
!942 = !DILocation(line: 207, column: 9, scope: !938)
!943 = !DILocation(line: 207, column: 15, scope: !938)
!944 = !DILocation(line: 206, column: 7, scope: !927)
!945 = !DILocation(line: 208, column: 11, scope: !946)
!946 = distinct !DILexicalBlock(scope: !938, file: !1, line: 207, column: 43)
!947 = !DILocation(line: 209, column: 3, scope: !946)
!948 = !DILocation(line: 213, column: 12, scope: !949)
!949 = distinct !DILexicalBlock(scope: !938, file: !1, line: 213, column: 12)
!950 = !DILocation(line: 213, column: 26, scope: !949)
!951 = !DILocation(line: 213, column: 23, scope: !949)
!952 = !DILocation(line: 213, column: 12, scope: !938)
!953 = !DILocation(line: 218, column: 8, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !1, line: 218, column: 8)
!955 = distinct !DILexicalBlock(scope: !949, file: !1, line: 213, column: 32)
!956 = !DILocation(line: 218, column: 14, scope: !954)
!957 = !DILocation(line: 218, column: 8, scope: !955)
!958 = !DILocation(line: 220, column: 9, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !1, line: 218, column: 37)
!960 = !DILocation(line: 219, column: 18, scope: !959)
!961 = !DILocation(line: 221, column: 9, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !1, line: 221, column: 9)
!963 = !DILocation(line: 221, column: 9, scope: !959)
!964 = !DILocation(line: 222, column: 6, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !1, line: 221, column: 37)
!966 = !DILocation(line: 224, column: 4, scope: !959)
!967 = !DILocation(line: 230, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !955, file: !1, line: 230, column: 8)
!969 = !DILocation(line: 230, column: 8, scope: !955)
!970 = !DILocation(line: 231, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !1, line: 231, column: 9)
!972 = distinct !DILexicalBlock(scope: !968, file: !1, line: 230, column: 34)
!973 = !DILocation(line: 231, column: 9, scope: !972)
!974 = !DILocation(line: 233, column: 10, scope: !975)
!975 = distinct !DILexicalBlock(scope: !971, file: !1, line: 231, column: 30)
!976 = !DILocation(line: 233, column: 30, scope: !975)
!977 = !DILocation(line: 234, column: 9, scope: !975)
!978 = !DILocation(line: 234, column: 16, scope: !975)
!979 = !DILocation(line: 235, column: 9, scope: !975)
!980 = !DILocation(line: 232, column: 13, scope: !975)
!981 = !DILocation(line: 236, column: 5, scope: !975)
!982 = !DILocation(line: 237, column: 4, scope: !972)
!983 = !DILocation(line: 238, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 238, column: 9)
!985 = distinct !DILexicalBlock(scope: !968, file: !1, line: 237, column: 11)
!986 = !DILocation(line: 238, column: 9, scope: !985)
!987 = !DILocation(line: 240, column: 10, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !1, line: 238, column: 29)
!989 = !DILocation(line: 240, column: 29, scope: !988)
!990 = !DILocation(line: 241, column: 15, scope: !988)
!991 = !DILocation(line: 241, column: 22, scope: !988)
!992 = !DILocation(line: 242, column: 15, scope: !988)
!993 = !DILocation(line: 239, column: 13, scope: !988)
!994 = !DILocation(line: 243, column: 5, scope: !988)
!995 = !DILocation(line: 246, column: 8, scope: !996)
!996 = distinct !DILexicalBlock(scope: !955, file: !1, line: 246, column: 8)
!997 = !DILocation(line: 246, column: 14, scope: !996)
!998 = !DILocation(line: 246, column: 8, scope: !955)
!999 = !DILocation(line: 248, column: 9, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !996, file: !1, line: 246, column: 37)
!1001 = !DILocation(line: 247, column: 18, scope: !1000)
!1002 = !DILocation(line: 249, column: 9, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 249, column: 9)
!1004 = !DILocation(line: 249, column: 9, scope: !1000)
!1005 = !DILocation(line: 250, column: 6, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 249, column: 37)
!1007 = !DILocation(line: 252, column: 4, scope: !1000)
!1008 = !DILocation(line: 254, column: 12, scope: !955)
!1009 = !DILocation(line: 254, column: 4, scope: !955)
!1010 = !DILocation(line: 259, column: 5, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !955, file: !1, line: 254, column: 20)
!1012 = !DILocation(line: 265, column: 5, scope: !1011)
!1013 = !DILocation(line: 271, column: 5, scope: !1011)
!1014 = !DILocation(line: 273, column: 3, scope: !955)
!1015 = !DILocation(line: 281, column: 8, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !927, file: !1, line: 281, column: 7)
!1017 = !DILocation(line: 281, column: 32, scope: !1016)
!1018 = !DILocation(line: 282, column: 8, scope: !1016)
!1019 = !DILocation(line: 282, column: 16, scope: !1016)
!1020 = !DILocation(line: 282, column: 14, scope: !1016)
!1021 = !DILocation(line: 282, column: 27, scope: !1016)
!1022 = !DILocation(line: 282, column: 31, scope: !1016)
!1023 = !DILocation(line: 282, column: 38, scope: !1016)
!1024 = !DILocation(line: 281, column: 7, scope: !927)
!1025 = !DILocation(line: 283, column: 8, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 283, column: 8)
!1027 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 282, column: 57)
!1028 = !DILocation(line: 283, column: 20, scope: !1026)
!1029 = !DILocation(line: 283, column: 8, scope: !1027)
!1030 = !DILocation(line: 287, column: 10, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 283, column: 27)
!1032 = !DILocation(line: 288, column: 19, scope: !1031)
!1033 = !DILocation(line: 288, column: 17, scope: !1031)
!1034 = !DILocation(line: 290, column: 31, scope: !1031)
!1035 = !DILocation(line: 290, column: 9, scope: !1031)
!1036 = !DILocation(line: 289, column: 16, scope: !1031)
!1037 = !DILocation(line: 291, column: 5, scope: !1031)
!1038 = distinct !{!1038, !920, !1039, !854, !855}
!1039 = !DILocation(line: 322, column: 2, scope: !858)
!1040 = !DILocation(line: 293, column: 3, scope: !1027)
!1041 = !DILocation(line: 297, column: 8, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !927, file: !1, line: 297, column: 7)
!1043 = !DILocation(line: 297, column: 7, scope: !927)
!1044 = !DILocation(line: 298, column: 28, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 297, column: 33)
!1046 = !DILocation(line: 299, column: 4, scope: !1045)
!1047 = !DILocation(line: 304, column: 38, scope: !927)
!1048 = !DILocation(line: 304, column: 51, scope: !927)
!1049 = !DILocation(line: 304, column: 16, scope: !927)
!1050 = !DILocation(line: 304, column: 14, scope: !927)
!1051 = !DILocation(line: 305, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !927, file: !1, line: 305, column: 7)
!1053 = !DILocation(line: 305, column: 7, scope: !927)
!1054 = !DILocation(line: 306, column: 28, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 305, column: 19)
!1056 = !DILocation(line: 307, column: 3, scope: !1055)
!1057 = !DILocation(line: 316, column: 9, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 311, column: 8)
!1059 = !DILocation(line: 317, column: 17, scope: !1058)
!1060 = !DILocation(line: 317, column: 15, scope: !1058)
!1061 = !DILocation(line: 318, column: 18, scope: !1058)
!1062 = !DILocation(line: 318, column: 31, scope: !1058)
!1063 = !DILocation(line: 318, column: 16, scope: !1058)
!1064 = !DILocation(line: 320, column: 28, scope: !1058)
!1065 = !DILocation(line: 326, column: 2, scope: !858)
!1066 = !DILocation(line: 327, column: 1, scope: !858)
!1067 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !1068, file: !1068, line: 648, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1068 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!15, !1071}
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !33, line: 17, baseType: !16)
!1072 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !1068, file: !1068, line: 646, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
