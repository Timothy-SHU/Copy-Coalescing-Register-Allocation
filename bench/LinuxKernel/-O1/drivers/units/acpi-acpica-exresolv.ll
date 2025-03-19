; ModuleID = 'drivers/acpi/acpica/exresolv.c'
source_filename = "drivers/acpi/acpica/exresolv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }

@_acpi_module_name = internal constant [9 x i8] c"exresolv\00", align 1, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"Internal - null pointer\00", align 1, !dbg !809
@.str.1 = private unnamed_addr constant [44 x i8] c"[%4.4s] Node is unresolved or uninitialized\00", align 1, !dbg !814
@.str.2 = private unnamed_addr constant [29 x i8] c"Not a namespace node %p [%s]\00", align 1, !dbg !819
@.str.3 = private unnamed_addr constant [32 x i8] c"Unknown Reference Class 0x%2.2X\00", align 1, !dbg !824
@.str.4 = private unnamed_addr constant [63 x i8] c"Attempt to dereference an Index to NULL package element Idx=%p\00", align 1, !dbg !829
@.str.5 = private unnamed_addr constant [53 x i8] c"Unknown TargetType 0x%X in Index/Reference object %p\00", align 1, !dbg !834
@.str.6 = private unnamed_addr constant [34 x i8] c"Unknown Reference type 0x%X in %p\00", align 1, !dbg !839

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_resolve_to_value(ptr noundef %stack_ptr, ptr noundef %walk_state) #0 align 16 !dbg !855 {
entry:
  %retval = alloca i32, align 4
  %stack_ptr.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stack_ptr, ptr %stack_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stack_ptr.addr, metadata !859, metadata !DIExpression()), !dbg !862
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !860, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %status, metadata !861, metadata !DIExpression()), !dbg !865
  %0 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !866
  %tobool = icmp ne ptr %0, null, !dbg !866
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !868

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !869
  %2 = load ptr, ptr %1, align 8, !dbg !870
  %tobool1 = icmp ne ptr %2, null, !dbg !870
  br i1 %tobool1, label %if.end, label %if.then, !dbg !871

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 49, ptr noundef @.str) #5, !dbg !872
  store i32 12290, ptr %retval, align 4, !dbg !874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !874

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !875
  %4 = load ptr, ptr %3, align 8, !dbg !875
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %4, i32 0, i32 1, !dbg !875
  %5 = load i8, ptr %descriptor_type, align 8, !dbg !875
  %conv = zext i8 %5 to i32, !dbg !875
  %cmp = icmp eq i32 %conv, 14, !dbg !877
  br i1 %cmp, label %if.then3, label %if.end10, !dbg !878

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !879
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !881
  %call = call i32 @acpi_ex_resolve_object_to_value(ptr noundef %6, ptr noundef %7) #5, !dbg !882
  store i32 %call, ptr %status, align 4, !dbg !883
  %8 = load i32, ptr %status, align 4, !dbg !884
  %tobool4 = icmp ne i32 %8, 0, !dbg !884
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !886

if.then5:                                         ; preds = %if.then3
  %9 = load i32, ptr %status, align 4, !dbg !887
  store i32 %9, ptr %retval, align 4, !dbg !887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !887

if.end6:                                          ; preds = %if.then3
  %10 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !889
  %11 = load ptr, ptr %10, align 8, !dbg !891
  %tobool7 = icmp ne ptr %11, null, !dbg !891
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !892

if.then8:                                         ; preds = %if.end6
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 65, ptr noundef @.str) #5, !dbg !893
  store i32 12290, ptr %retval, align 4, !dbg !895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !895

if.end9:                                          ; preds = %if.end6
  br label %if.end10, !dbg !896

if.end10:                                         ; preds = %if.end9, %if.end
  %12 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !897
  %13 = load ptr, ptr %12, align 8, !dbg !897
  %descriptor_type11 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %13, i32 0, i32 1, !dbg !897
  %14 = load i8, ptr %descriptor_type11, align 8, !dbg !897
  %conv12 = zext i8 %14 to i32, !dbg !897
  %cmp13 = icmp eq i32 %conv12, 15, !dbg !899
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !900

if.then15:                                        ; preds = %if.end10
  %15 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !901
  %16 = ptrtoint ptr %15 to i64, !dbg !901
  %17 = inttoptr i64 %16 to ptr, !dbg !901
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !903
  %call16 = call i32 @acpi_ex_resolve_node_to_value(ptr noundef %17, ptr noundef %18) #5, !dbg !904
  store i32 %call16, ptr %status, align 4, !dbg !905
  %19 = load i32, ptr %status, align 4, !dbg !906
  %tobool17 = icmp ne i32 %19, 0, !dbg !906
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !908

if.then18:                                        ; preds = %if.then15
  %20 = load i32, ptr %status, align 4, !dbg !909
  store i32 %20, ptr %retval, align 4, !dbg !909
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !909

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !911

if.end20:                                         ; preds = %if.end19, %if.end10
  store i32 0, ptr %retval, align 4, !dbg !912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !912

cleanup:                                          ; preds = %if.end20, %if.then18, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !913
  %21 = load i32, ptr %retval, align 4, !dbg !913
  ret i32 %21, !dbg !913
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !914 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_resolve_object_to_value(ptr noundef %stack_ptr, ptr noundef %walk_state) #0 align 16 !dbg !919 {
entry:
  %retval = alloca i32, align 4
  %stack_ptr.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %stack_desc = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %ref_type = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %stack_ptr, ptr %stack_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stack_ptr.addr, metadata !921, metadata !DIExpression()), !dbg !927
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !922, metadata !DIExpression()), !dbg !928
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !929
  call void @llvm.dbg.declare(metadata ptr %status, metadata !923, metadata !DIExpression()), !dbg !930
  store i32 0, ptr %status, align 4, !dbg !930
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack_desc) #4, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %stack_desc, metadata !924, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !933
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !925, metadata !DIExpression()), !dbg !934
  store ptr null, ptr %obj_desc, align 8, !dbg !934
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref_type) #4, !dbg !935
  call void @llvm.dbg.declare(metadata ptr %ref_type, metadata !926, metadata !DIExpression()), !dbg !936
  %0 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !937
  %1 = load ptr, ptr %0, align 8, !dbg !938
  store ptr %1, ptr %stack_desc, align 8, !dbg !939
  %2 = load ptr, ptr %stack_desc, align 8, !dbg !940
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !941
  %3 = load i8, ptr %type, align 1, !dbg !941
  %conv = zext i8 %3 to i32, !dbg !940
  switch i32 %conv, label %sw.default45 [
    i32 20, label %sw.bb
    i32 3, label %sw.bb39
    i32 4, label %sw.bb41
    i32 14, label %sw.bb43
    i32 17, label %sw.bb43
    i32 18, label %sw.bb43
    i32 19, label %sw.bb43
  ], !dbg !942

sw.bb:                                            ; preds = %entry
  %4 = load ptr, ptr %stack_desc, align 8, !dbg !943
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %4, i32 0, i32 5, !dbg !945
  %5 = load i8, ptr %class, align 1, !dbg !945
  store i8 %5, ptr %ref_type, align 1, !dbg !946
  %6 = load i8, ptr %ref_type, align 1, !dbg !947
  %conv1 = zext i8 %6 to i32, !dbg !947
  switch i32 %conv1, label %sw.default36 [
    i32 0, label %sw.bb2
    i32 1, label %sw.bb2
    i32 3, label %sw.bb3
    i32 2, label %sw.bb19
    i32 6, label %sw.bb19
    i32 4, label %sw.bb19
    i32 5, label %sw.bb20
  ], !dbg !948

sw.bb2:                                           ; preds = %sw.bb, %sw.bb
  %7 = load i8, ptr %ref_type, align 1, !dbg !949
  %8 = load ptr, ptr %stack_desc, align 8, !dbg !951
  %value = getelementptr inbounds %struct.acpi_object_reference, ptr %8, i32 0, i32 13, !dbg !952
  %9 = load i32, ptr %value, align 8, !dbg !952
  %10 = load ptr, ptr %walk_state.addr, align 8, !dbg !953
  %call = call i32 @acpi_ds_method_data_get_value(i8 noundef zeroext %7, i32 noundef %9, ptr noundef %10, ptr noundef %obj_desc) #5, !dbg !954
  store i32 %call, ptr %status, align 4, !dbg !955
  %11 = load i32, ptr %status, align 4, !dbg !956
  %tobool = icmp ne i32 %11, 0, !dbg !956
  br i1 %tobool, label %if.then, label %if.end, !dbg !958

if.then:                                          ; preds = %sw.bb2
  %12 = load i32, ptr %status, align 4, !dbg !959
  store i32 %12, ptr %retval, align 4, !dbg !959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !959

if.end:                                           ; preds = %sw.bb2
  %13 = load ptr, ptr %stack_desc, align 8, !dbg !961
  call void @acpi_ut_remove_reference(ptr noundef %13) #5, !dbg !962
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !963
  %15 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !964
  store ptr %14, ptr %15, align 8, !dbg !965
  br label %sw.epilog38, !dbg !966

sw.bb3:                                           ; preds = %sw.bb
  %16 = load ptr, ptr %stack_desc, align 8, !dbg !967
  %target_type = getelementptr inbounds %struct.acpi_object_reference, ptr %16, i32 0, i32 6, !dbg !968
  %17 = load i8, ptr %target_type, align 2, !dbg !968
  %conv4 = zext i8 %17 to i32, !dbg !967
  switch i32 %conv4, label %sw.default [
    i32 14, label %sw.epilog
    i32 4, label %sw.bb5
  ], !dbg !969

sw.bb5:                                           ; preds = %sw.bb3
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !970
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 3, !dbg !973
  %19 = load i16, ptr %opcode, align 2, !dbg !973
  %conv6 = zext i16 %19 to i32, !dbg !970
  %cmp = icmp eq i32 %conv6, 53, !dbg !974
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !975

lor.lhs.false:                                    ; preds = %sw.bb5
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !976
  %opcode8 = getelementptr inbounds %struct.acpi_walk_state, ptr %20, i32 0, i32 3, !dbg !977
  %21 = load i16, ptr %opcode8, align 2, !dbg !977
  %conv9 = zext i16 %21 to i32, !dbg !976
  %cmp10 = icmp eq i32 %conv9, 157, !dbg !978
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !979

if.then12:                                        ; preds = %lor.lhs.false, %sw.bb5
  br label %sw.epilog, !dbg !980

if.end13:                                         ; preds = %lor.lhs.false
  %22 = load ptr, ptr %stack_desc, align 8, !dbg !982
  %where = getelementptr inbounds %struct.acpi_object_reference, ptr %22, i32 0, i32 10, !dbg !983
  %23 = load ptr, ptr %where, align 8, !dbg !983
  %24 = load ptr, ptr %23, align 8, !dbg !984
  store ptr %24, ptr %obj_desc, align 8, !dbg !985
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !986
  %tobool14 = icmp ne ptr %25, null, !dbg !986
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !988

if.then15:                                        ; preds = %if.end13
  %26 = load ptr, ptr %obj_desc, align 8, !dbg !989
  call void @acpi_ut_add_reference(ptr noundef %26) #5, !dbg !991
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !992
  %28 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !993
  store ptr %27, ptr %28, align 8, !dbg !994
  br label %if.end16, !dbg !995

if.else:                                          ; preds = %if.end13
  %29 = load ptr, ptr %stack_desc, align 8, !dbg !996
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 186, ptr noundef @.str.4, ptr noundef %29) #5, !dbg !996
  store i32 12295, ptr %status, align 4, !dbg !998
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  br label %sw.epilog, !dbg !999

sw.default:                                       ; preds = %sw.bb3
  %30 = load ptr, ptr %stack_desc, align 8, !dbg !1000
  %target_type17 = getelementptr inbounds %struct.acpi_object_reference, ptr %30, i32 0, i32 6, !dbg !1000
  %31 = load i8, ptr %target_type17, align 2, !dbg !1000
  %conv18 = zext i8 %31 to i32, !dbg !1000
  %32 = load ptr, ptr %stack_desc, align 8, !dbg !1000
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 198, ptr noundef @.str.5, i32 noundef %conv18, ptr noundef %32) #5, !dbg !1000
  store i32 12303, ptr %status, align 4, !dbg !1001
  br label %sw.epilog, !dbg !1002

sw.epilog:                                        ; preds = %sw.default, %if.end16, %if.then12, %sw.bb3
  br label %sw.epilog38, !dbg !1003

sw.bb19:                                          ; preds = %sw.bb, %sw.bb, %sw.bb
  br label %sw.epilog38, !dbg !1004

sw.bb20:                                          ; preds = %sw.bb
  %33 = load ptr, ptr %stack_desc, align 8, !dbg !1005
  %node = getelementptr inbounds %struct.acpi_object_reference, ptr %33, i32 0, i32 9, !dbg !1007
  %34 = load ptr, ptr %node, align 8, !dbg !1007
  %type21 = getelementptr inbounds %struct.acpi_namespace_node, ptr %34, i32 0, i32 2, !dbg !1008
  %35 = load i8, ptr %type21, align 1, !dbg !1008
  %conv22 = zext i8 %35 to i32, !dbg !1005
  %cmp23 = icmp eq i32 %conv22, 6, !dbg !1009
  br i1 %cmp23, label %if.then31, label %lor.lhs.false25, !dbg !1010

lor.lhs.false25:                                  ; preds = %sw.bb20
  %36 = load ptr, ptr %stack_desc, align 8, !dbg !1011
  %node26 = getelementptr inbounds %struct.acpi_object_reference, ptr %36, i32 0, i32 9, !dbg !1012
  %37 = load ptr, ptr %node26, align 8, !dbg !1012
  %type27 = getelementptr inbounds %struct.acpi_namespace_node, ptr %37, i32 0, i32 2, !dbg !1013
  %38 = load i8, ptr %type27, align 1, !dbg !1013
  %conv28 = zext i8 %38 to i32, !dbg !1011
  %cmp29 = icmp eq i32 %conv28, 13, !dbg !1014
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !1015

if.then31:                                        ; preds = %lor.lhs.false25, %sw.bb20
  %39 = load ptr, ptr %stack_desc, align 8, !dbg !1016
  %node32 = getelementptr inbounds %struct.acpi_object_reference, ptr %39, i32 0, i32 9, !dbg !1018
  %40 = load ptr, ptr %node32, align 8, !dbg !1018
  %41 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1019
  store ptr %40, ptr %41, align 8, !dbg !1020
  br label %if.end35, !dbg !1021

if.else33:                                        ; preds = %lor.lhs.false25
  %42 = load ptr, ptr %stack_desc, align 8, !dbg !1022
  %node34 = getelementptr inbounds %struct.acpi_object_reference, ptr %42, i32 0, i32 9, !dbg !1024
  %43 = load ptr, ptr %node34, align 8, !dbg !1024
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %43, i32 0, i32 0, !dbg !1025
  %44 = load ptr, ptr %object, align 8, !dbg !1025
  %45 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1026
  store ptr %44, ptr %45, align 8, !dbg !1027
  %46 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1028
  %47 = load ptr, ptr %46, align 8, !dbg !1029
  call void @acpi_ut_add_reference(ptr noundef %47) #5, !dbg !1030
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then31
  %48 = load ptr, ptr %stack_desc, align 8, !dbg !1031
  call void @acpi_ut_remove_reference(ptr noundef %48) #5, !dbg !1032
  br label %sw.epilog38, !dbg !1033

sw.default36:                                     ; preds = %sw.bb
  %49 = load i8, ptr %ref_type, align 1, !dbg !1034
  %conv37 = zext i8 %49 to i32, !dbg !1034
  %50 = load ptr, ptr %stack_desc, align 8, !dbg !1034
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 240, ptr noundef @.str.6, i32 noundef %conv37, ptr noundef %50) #5, !dbg !1034
  store i32 12303, ptr %status, align 4, !dbg !1035
  br label %sw.epilog38, !dbg !1036

sw.epilog38:                                      ; preds = %sw.default36, %if.end35, %sw.bb19, %sw.epilog, %if.end
  br label %sw.epilog46, !dbg !1037

sw.bb39:                                          ; preds = %entry
  %51 = load ptr, ptr %stack_desc, align 8, !dbg !1038
  %call40 = call i32 @acpi_ds_get_buffer_arguments(ptr noundef %51) #5, !dbg !1039
  store i32 %call40, ptr %status, align 4, !dbg !1040
  br label %sw.epilog46, !dbg !1041

sw.bb41:                                          ; preds = %entry
  %52 = load ptr, ptr %stack_desc, align 8, !dbg !1042
  %call42 = call i32 @acpi_ds_get_package_arguments(ptr noundef %52) #5, !dbg !1043
  store i32 %call42, ptr %status, align 4, !dbg !1044
  br label %sw.epilog46, !dbg !1045

sw.bb43:                                          ; preds = %entry, %entry, %entry, %entry
  %53 = load ptr, ptr %walk_state.addr, align 8, !dbg !1046
  %54 = load ptr, ptr %stack_desc, align 8, !dbg !1047
  %call44 = call i32 @acpi_ex_read_data_from_field(ptr noundef %53, ptr noundef %54, ptr noundef %obj_desc) #5, !dbg !1048
  store i32 %call44, ptr %status, align 4, !dbg !1049
  %55 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1050
  %56 = load ptr, ptr %55, align 8, !dbg !1051
  call void @acpi_ut_remove_reference(ptr noundef %56) #5, !dbg !1052
  %57 = load ptr, ptr %obj_desc, align 8, !dbg !1053
  %58 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1054
  store ptr %57, ptr %58, align 8, !dbg !1055
  br label %sw.epilog46, !dbg !1056

sw.default45:                                     ; preds = %entry
  br label %sw.epilog46, !dbg !1057

sw.epilog46:                                      ; preds = %sw.default45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.epilog38
  %59 = load i32, ptr %status, align 4, !dbg !1058
  store i32 %59, ptr %retval, align 4, !dbg !1058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1058

cleanup:                                          ; preds = %sw.epilog46, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref_type) #4, !dbg !1059
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1059
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack_desc) #4, !dbg !1059
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1059
  %60 = load i32, ptr %retval, align 4, !dbg !1059
  ret i32 %60, !dbg !1059
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1060 dso_local i32 @acpi_ex_resolve_node_to_value(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_resolve_multiple(ptr noundef %walk_state, ptr noundef %operand, ptr noundef %return_type, ptr noundef %return_desc) #0 align 16 !dbg !1064 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %operand.addr = alloca ptr, align 8
  %return_type.addr = alloca ptr, align 8
  %return_desc.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %type = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1070, metadata !DIExpression()), !dbg !1079
  store ptr %operand, ptr %operand.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %operand.addr, metadata !1071, metadata !DIExpression()), !dbg !1080
  store ptr %return_type, ptr %return_type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_type.addr, metadata !1072, metadata !DIExpression()), !dbg !1081
  store ptr %return_desc, ptr %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_desc.addr, metadata !1073, metadata !DIExpression()), !dbg !1082
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1083
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1074, metadata !DIExpression()), !dbg !1084
  %0 = load ptr, ptr %operand.addr, align 8, !dbg !1085
  %1 = ptrtoint ptr %0 to i64, !dbg !1085
  %2 = inttoptr i64 %1 to ptr, !dbg !1085
  store ptr %2, ptr %obj_desc, align 8, !dbg !1084
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1075, metadata !DIExpression()), !dbg !1087
  %3 = load ptr, ptr %operand.addr, align 8, !dbg !1088
  %4 = ptrtoint ptr %3 to i64, !dbg !1088
  %5 = inttoptr i64 %4 to ptr, !dbg !1088
  store ptr %5, ptr %node, align 8, !dbg !1087
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #4, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1076, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1077, metadata !DIExpression()), !dbg !1092
  %6 = load ptr, ptr %obj_desc, align 8, !dbg !1093
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %6, i32 0, i32 1, !dbg !1093
  %7 = load i8, ptr %descriptor_type, align 8, !dbg !1093
  %conv = zext i8 %7 to i32, !dbg !1093
  switch i32 %conv, label %sw.default14 [
    i32 14, label %sw.bb
    i32 15, label %sw.bb3
  ], !dbg !1094

sw.bb:                                            ; preds = %entry
  %8 = load ptr, ptr %obj_desc, align 8, !dbg !1095
  %type1 = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 2, !dbg !1097
  %9 = load i8, ptr %type1, align 1, !dbg !1097
  %conv2 = zext i8 %9 to i32, !dbg !1095
  store i32 %conv2, ptr %type, align 4, !dbg !1098
  br label %sw.epilog15, !dbg !1099

sw.bb3:                                           ; preds = %entry
  %10 = load ptr, ptr %obj_desc, align 8, !dbg !1100
  %type4 = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 2, !dbg !1101
  %11 = load i8, ptr %type4, align 1, !dbg !1101
  %conv5 = zext i8 %11 to i32, !dbg !1102
  store i32 %conv5, ptr %type, align 4, !dbg !1103
  %12 = load ptr, ptr %node, align 8, !dbg !1104
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %12) #5, !dbg !1105
  store ptr %call, ptr %obj_desc, align 8, !dbg !1106
  %13 = load i32, ptr %type, align 4, !dbg !1107
  %cmp = icmp eq i32 %13, 21, !dbg !1109
  br i1 %cmp, label %if.then, label %if.end, !dbg !1110

if.then:                                          ; preds = %sw.bb3
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !1111
  %type7 = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 2, !dbg !1113
  %15 = load i8, ptr %type7, align 1, !dbg !1113
  %conv8 = zext i8 %15 to i32, !dbg !1114
  store i32 %conv8, ptr %type, align 4, !dbg !1115
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !1116
  %call9 = call ptr @acpi_ns_get_attached_object(ptr noundef %16) #5, !dbg !1117
  store ptr %call9, ptr %obj_desc, align 8, !dbg !1118
  br label %if.end, !dbg !1119

if.end:                                           ; preds = %if.then, %sw.bb3
  %17 = load i32, ptr %type, align 4, !dbg !1120
  switch i32 %17, label %sw.default [
    i32 6, label %sw.bb10
    i32 13, label %sw.bb10
  ], !dbg !1121

sw.bb10:                                          ; preds = %if.end, %if.end
  br label %sw.epilog, !dbg !1122

sw.default:                                       ; preds = %if.end
  %18 = load ptr, ptr %obj_desc, align 8, !dbg !1124
  %tobool = icmp ne ptr %18, null, !dbg !1124
  br i1 %tobool, label %if.end13, label %if.then11, !dbg !1126

if.then11:                                        ; preds = %sw.default
  %19 = load ptr, ptr %node, align 8, !dbg !1127
  %call12 = call ptr @acpi_ut_get_node_name(ptr noundef %19) #5, !dbg !1127
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 349, ptr noundef @.str.1, ptr noundef %call12) #5, !dbg !1127
  store i32 12322, ptr %retval, align 4, !dbg !1129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1129

if.end13:                                         ; preds = %sw.default
  br label %sw.epilog, !dbg !1130

sw.epilog:                                        ; preds = %if.end13, %sw.bb10
  br label %sw.epilog15, !dbg !1131

sw.default14:                                     ; preds = %entry
  store i32 12291, ptr %retval, align 4, !dbg !1132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1132

sw.epilog15:                                      ; preds = %sw.epilog, %sw.bb
  %20 = load i32, ptr %type, align 4, !dbg !1133
  %cmp16 = icmp ne i32 %20, 20, !dbg !1135
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !1136

if.then18:                                        ; preds = %sw.epilog15
  br label %exit, !dbg !1137

if.end19:                                         ; preds = %sw.epilog15
  br label %while.cond, !dbg !1139

while.cond:                                       ; preds = %sw.epilog83, %if.end19
  %21 = load ptr, ptr %obj_desc, align 8, !dbg !1140
  %type20 = getelementptr inbounds %struct.acpi_object_common, ptr %21, i32 0, i32 2, !dbg !1141
  %22 = load i8, ptr %type20, align 1, !dbg !1141
  %conv21 = zext i8 %22 to i32, !dbg !1140
  %cmp22 = icmp eq i32 %conv21, 20, !dbg !1142
  br i1 %cmp22, label %while.body, label %while.end, !dbg !1139

while.body:                                       ; preds = %while.cond
  %23 = load ptr, ptr %obj_desc, align 8, !dbg !1143
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %23, i32 0, i32 5, !dbg !1145
  %24 = load i8, ptr %class, align 1, !dbg !1145
  %conv24 = zext i8 %24 to i32, !dbg !1143
  switch i32 %conv24, label %sw.default80 [
    i32 2, label %sw.bb25
    i32 5, label %sw.bb25
    i32 3, label %sw.bb49
    i32 4, label %sw.bb58
    i32 0, label %sw.bb59
    i32 1, label %sw.bb59
    i32 6, label %sw.bb79
  ], !dbg !1146

sw.bb25:                                          ; preds = %while.body, %while.body
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !1147
  %class26 = getelementptr inbounds %struct.acpi_object_reference, ptr %25, i32 0, i32 5, !dbg !1150
  %26 = load i8, ptr %class26, align 1, !dbg !1150
  %conv27 = zext i8 %26 to i32, !dbg !1147
  %cmp28 = icmp eq i32 %conv27, 2, !dbg !1151
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !1152

if.then30:                                        ; preds = %sw.bb25
  %27 = load ptr, ptr %obj_desc, align 8, !dbg !1153
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %27, i32 0, i32 8, !dbg !1155
  %28 = load ptr, ptr %object, align 8, !dbg !1155
  store ptr %28, ptr %node, align 8, !dbg !1156
  br label %if.end32, !dbg !1157

if.else:                                          ; preds = %sw.bb25
  %29 = load ptr, ptr %obj_desc, align 8, !dbg !1158
  %node31 = getelementptr inbounds %struct.acpi_object_reference, ptr %29, i32 0, i32 9, !dbg !1160
  %30 = load ptr, ptr %node31, align 8, !dbg !1160
  store ptr %30, ptr %node, align 8, !dbg !1161
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then30
  %31 = load ptr, ptr %node, align 8, !dbg !1162
  %descriptor_type33 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %31, i32 0, i32 1, !dbg !1162
  %32 = load i8, ptr %descriptor_type33, align 8, !dbg !1162
  %conv34 = zext i8 %32 to i32, !dbg !1162
  %cmp35 = icmp ne i32 %conv34, 15, !dbg !1164
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !1165

if.then37:                                        ; preds = %if.end32
  %33 = load ptr, ptr %node, align 8, !dbg !1166
  %34 = load ptr, ptr %node, align 8, !dbg !1166
  %call38 = call ptr @acpi_ut_get_descriptor_name(ptr noundef %34) #5, !dbg !1166
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 392, ptr noundef @.str.2, ptr noundef %33, ptr noundef %call38) #5, !dbg !1166
  store i32 12303, ptr %retval, align 4, !dbg !1168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1168

if.end39:                                         ; preds = %if.end32
  %35 = load ptr, ptr %node, align 8, !dbg !1169
  %call40 = call ptr @acpi_ns_get_attached_object(ptr noundef %35) #5, !dbg !1170
  store ptr %call40, ptr %obj_desc, align 8, !dbg !1171
  %36 = load ptr, ptr %obj_desc, align 8, !dbg !1172
  %tobool41 = icmp ne ptr %36, null, !dbg !1172
  br i1 %tobool41, label %if.end44, label %if.then42, !dbg !1174

if.then42:                                        ; preds = %if.end39
  %37 = load ptr, ptr %node, align 8, !dbg !1175
  %call43 = call i32 @acpi_ns_get_type(ptr noundef %37) #5, !dbg !1177
  store i32 %call43, ptr %type, align 4, !dbg !1178
  br label %exit, !dbg !1179

if.end44:                                         ; preds = %if.end39
  %38 = load ptr, ptr %obj_desc, align 8, !dbg !1180
  %39 = load ptr, ptr %operand.addr, align 8, !dbg !1182
  %cmp45 = icmp eq ptr %38, %39, !dbg !1183
  br i1 %cmp45, label %if.then47, label %if.end48, !dbg !1184

if.then47:                                        ; preds = %if.end44
  store i32 12318, ptr %retval, align 4, !dbg !1185
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1185

if.end48:                                         ; preds = %if.end44
  br label %sw.epilog83, !dbg !1187

sw.bb49:                                          ; preds = %while.body
  %40 = load ptr, ptr %obj_desc, align 8, !dbg !1188
  %target_type = getelementptr inbounds %struct.acpi_object_reference, ptr %40, i32 0, i32 6, !dbg !1189
  %41 = load i8, ptr %target_type, align 2, !dbg !1189
  %conv50 = zext i8 %41 to i32, !dbg !1188
  store i32 %conv50, ptr %type, align 4, !dbg !1190
  %42 = load i32, ptr %type, align 4, !dbg !1191
  %cmp51 = icmp ne i32 %42, 4, !dbg !1193
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !1194

if.then53:                                        ; preds = %sw.bb49
  br label %exit, !dbg !1195

if.end54:                                         ; preds = %sw.bb49
  %43 = load ptr, ptr %obj_desc, align 8, !dbg !1197
  %where = getelementptr inbounds %struct.acpi_object_reference, ptr %43, i32 0, i32 10, !dbg !1198
  %44 = load ptr, ptr %where, align 8, !dbg !1198
  %45 = load ptr, ptr %44, align 8, !dbg !1199
  store ptr %45, ptr %obj_desc, align 8, !dbg !1200
  %46 = load ptr, ptr %obj_desc, align 8, !dbg !1201
  %tobool55 = icmp ne ptr %46, null, !dbg !1201
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !1203

if.then56:                                        ; preds = %if.end54
  store i32 0, ptr %type, align 4, !dbg !1204
  br label %exit, !dbg !1206

if.end57:                                         ; preds = %if.end54
  br label %sw.epilog83, !dbg !1207

sw.bb58:                                          ; preds = %while.body
  store i32 15, ptr %type, align 4, !dbg !1208
  br label %exit, !dbg !1209

sw.bb59:                                          ; preds = %while.body, %while.body
  %47 = load ptr, ptr %return_desc.addr, align 8, !dbg !1210
  %tobool60 = icmp ne ptr %47, null, !dbg !1210
  br i1 %tobool60, label %if.then61, label %if.else67, !dbg !1212

if.then61:                                        ; preds = %sw.bb59
  %48 = load ptr, ptr %obj_desc, align 8, !dbg !1213
  %class62 = getelementptr inbounds %struct.acpi_object_reference, ptr %48, i32 0, i32 5, !dbg !1215
  %49 = load i8, ptr %class62, align 1, !dbg !1215
  %50 = load ptr, ptr %obj_desc, align 8, !dbg !1216
  %value = getelementptr inbounds %struct.acpi_object_reference, ptr %50, i32 0, i32 13, !dbg !1217
  %51 = load i32, ptr %value, align 8, !dbg !1217
  %52 = load ptr, ptr %walk_state.addr, align 8, !dbg !1218
  %call63 = call i32 @acpi_ds_method_data_get_value(i8 noundef zeroext %49, i32 noundef %51, ptr noundef %52, ptr noundef %obj_desc) #5, !dbg !1219
  store i32 %call63, ptr %status, align 4, !dbg !1220
  %53 = load i32, ptr %status, align 4, !dbg !1221
  %tobool64 = icmp ne i32 %53, 0, !dbg !1221
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !1223

if.then65:                                        ; preds = %if.then61
  %54 = load i32, ptr %status, align 4, !dbg !1224
  store i32 %54, ptr %retval, align 4, !dbg !1224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1224

if.end66:                                         ; preds = %if.then61
  %55 = load ptr, ptr %obj_desc, align 8, !dbg !1226
  call void @acpi_ut_remove_reference(ptr noundef %55) #5, !dbg !1227
  br label %if.end78, !dbg !1228

if.else67:                                        ; preds = %sw.bb59
  %56 = load ptr, ptr %obj_desc, align 8, !dbg !1229
  %class68 = getelementptr inbounds %struct.acpi_object_reference, ptr %56, i32 0, i32 5, !dbg !1231
  %57 = load i8, ptr %class68, align 1, !dbg !1231
  %58 = load ptr, ptr %obj_desc, align 8, !dbg !1232
  %value69 = getelementptr inbounds %struct.acpi_object_reference, ptr %58, i32 0, i32 13, !dbg !1233
  %59 = load i32, ptr %value69, align 8, !dbg !1233
  %60 = load ptr, ptr %walk_state.addr, align 8, !dbg !1234
  %call70 = call i32 @acpi_ds_method_data_get_node(i8 noundef zeroext %57, i32 noundef %59, ptr noundef %60, ptr noundef %node) #5, !dbg !1235
  store i32 %call70, ptr %status, align 4, !dbg !1236
  %61 = load i32, ptr %status, align 4, !dbg !1237
  %tobool71 = icmp ne i32 %61, 0, !dbg !1237
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !1239

if.then72:                                        ; preds = %if.else67
  %62 = load i32, ptr %status, align 4, !dbg !1240
  store i32 %62, ptr %retval, align 4, !dbg !1240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1240

if.end73:                                         ; preds = %if.else67
  %63 = load ptr, ptr %node, align 8, !dbg !1242
  %call74 = call ptr @acpi_ns_get_attached_object(ptr noundef %63) #5, !dbg !1243
  store ptr %call74, ptr %obj_desc, align 8, !dbg !1244
  %64 = load ptr, ptr %obj_desc, align 8, !dbg !1245
  %tobool75 = icmp ne ptr %64, null, !dbg !1245
  br i1 %tobool75, label %if.end77, label %if.then76, !dbg !1247

if.then76:                                        ; preds = %if.end73
  store i32 0, ptr %type, align 4, !dbg !1248
  br label %exit, !dbg !1250

if.end77:                                         ; preds = %if.end73
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end66
  br label %sw.epilog83, !dbg !1251

sw.bb79:                                          ; preds = %while.body
  store i32 16, ptr %type, align 4, !dbg !1252
  br label %exit, !dbg !1253

sw.default80:                                     ; preds = %while.body
  %65 = load ptr, ptr %obj_desc, align 8, !dbg !1254
  %class81 = getelementptr inbounds %struct.acpi_object_reference, ptr %65, i32 0, i32 5, !dbg !1254
  %66 = load i8, ptr %class81, align 1, !dbg !1254
  %conv82 = zext i8 %66 to i32, !dbg !1254
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 496, ptr noundef @.str.3, i32 noundef %conv82) #5, !dbg !1254
  store i32 12303, ptr %retval, align 4, !dbg !1255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1255

sw.epilog83:                                      ; preds = %if.end78, %if.end57, %if.end48
  br label %while.cond, !dbg !1139, !llvm.loop !1256

while.end:                                        ; preds = %while.cond
  %67 = load ptr, ptr %obj_desc, align 8, !dbg !1260
  %type84 = getelementptr inbounds %struct.acpi_object_common, ptr %67, i32 0, i32 2, !dbg !1261
  %68 = load i8, ptr %type84, align 1, !dbg !1261
  %conv85 = zext i8 %68 to i32, !dbg !1260
  store i32 %conv85, ptr %type, align 4, !dbg !1262
  br label %exit, !dbg !1263

exit:                                             ; preds = %while.end, %sw.bb79, %if.then76, %sw.bb58, %if.then56, %if.then53, %if.then42, %if.then18
  call void @llvm.dbg.label(metadata !1078), !dbg !1264
  %69 = load i32, ptr %type, align 4, !dbg !1265
  switch i32 %69, label %sw.default88 [
    i32 17, label %sw.bb86
    i32 18, label %sw.bb86
    i32 19, label %sw.bb86
    i32 27, label %sw.bb87
  ], !dbg !1266

sw.bb86:                                          ; preds = %exit, %exit, %exit
  store i32 5, ptr %type, align 4, !dbg !1267
  br label %sw.epilog89, !dbg !1269

sw.bb87:                                          ; preds = %exit
  store i32 0, ptr %type, align 4, !dbg !1270
  br label %sw.epilog89, !dbg !1271

sw.default88:                                     ; preds = %exit
  br label %sw.epilog89, !dbg !1272

sw.epilog89:                                      ; preds = %sw.default88, %sw.bb87, %sw.bb86
  %70 = load i32, ptr %type, align 4, !dbg !1273
  %71 = load ptr, ptr %return_type.addr, align 8, !dbg !1274
  store i32 %70, ptr %71, align 4, !dbg !1275
  %72 = load ptr, ptr %return_desc.addr, align 8, !dbg !1276
  %tobool90 = icmp ne ptr %72, null, !dbg !1276
  br i1 %tobool90, label %if.then91, label %if.end92, !dbg !1278

if.then91:                                        ; preds = %sw.epilog89
  %73 = load ptr, ptr %obj_desc, align 8, !dbg !1279
  %74 = load ptr, ptr %return_desc.addr, align 8, !dbg !1281
  store ptr %73, ptr %74, align 8, !dbg !1282
  br label %if.end92, !dbg !1283

if.end92:                                         ; preds = %if.then91, %sw.epilog89
  store i32 0, ptr %retval, align 4, !dbg !1284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1284

cleanup:                                          ; preds = %if.end92, %sw.default80, %if.then72, %if.then65, %if.then47, %if.then37, %sw.default14, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1285
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #4, !dbg !1285
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1285
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1285
  %75 = load i32, ptr %retval, align 4, !dbg !1285
  ret i32 %75, !dbg !1285
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1286 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1290 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1294 dso_local ptr @acpi_ut_get_descriptor_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1295 dso_local i32 @acpi_ns_get_type(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1298 dso_local i32 @acpi_ds_method_data_get_value(i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1302 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1305 dso_local i32 @acpi_ds_method_data_get_node(i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1308 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1309 dso_local i32 @acpi_ds_get_buffer_arguments(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1312 dso_local i32 @acpi_ds_get_package_arguments(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1313 dso_local i32 @acpi_ex_read_data_from_field(ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!846, !847, !848, !849, !850, !851, !852, !853}
!llvm.ident = !{!854}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !844, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exresolv.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exresolv\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exresolv.ll drivers/acpi/acpica/exresolv.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !808, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exresolv.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2f9e9b74da4b40ba095787e1ca481c9a")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 323, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!17 = !{!18, !24, !31, !804, !805, !93, !47}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 434, size: 1600, elements: !26)
!26 = !{!27, !36, !802, !803}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !25, file: !6, line: 435, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 429, size: 128, elements: !29)
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !28, file: !6, line: 430, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !28, file: !6, line: 431, baseType: !33, size: 8, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !25, file: !6, line: 436, baseType: !37, size: 576)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !38)
!38 = !{!39, !51, !67, !79, !115, !129, !138, !451, !468, !484, !497, !575, !587, !601, !611, !629, !651, !670, !689, !708, !721, !748, !765, !778, !792, !801}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !6, line: 370, baseType: !40, size: 128)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !41)
!41 = !{!42, !44, !45, !46, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !40, file: !6, line: 74, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !40, file: !6, line: 74, baseType: !47, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !6, line: 371, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !6, line: 77, baseType: !43, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !6, line: 77, baseType: !47, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !6, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !6, line: 78, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !66)
!66 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !6, line: 372, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !78}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !6, line: 94, baseType: !43, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !6, line: 94, baseType: !47, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !6, line: 94, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !6, line: 373, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !6, line: 98, baseType: !43, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !6, line: 98, baseType: !47, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !6, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !6, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !6, line: 101, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !95, line: 133, size: 384, elements: !96)
!95 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!96 = !{!97, !98, !99, !100, !101, !110, !111, !112, !113}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !95, line: 134, baseType: !43, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !95, line: 135, baseType: !33, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 136, baseType: !33, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 137, baseType: !47, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 138, baseType: !102, size: 32, offset: 96)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !103, line: 328, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !102, file: !103, line: 329, baseType: !20, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !102, file: !103, line: 330, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !95, line: 139, baseType: !93, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !95, line: 140, baseType: !93, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !95, line: 141, baseType: !93, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !95, line: 142, baseType: !114, size: 16, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !47)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !6, line: 374, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !126, !127, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !6, line: 105, baseType: !43, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !6, line: 105, baseType: !47, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !6, line: 105, baseType: !93, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !116, file: !6, line: 106, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !6, line: 107, baseType: !88, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !116, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !6, line: 375, baseType: !130, size: 192)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !6, line: 119, baseType: !43, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !6, line: 119, baseType: !47, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !130, file: !6, line: 119, baseType: !31, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !6, line: 376, baseType: !139, size: 448)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !448, !449, !450}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !6, line: 145, baseType: !43, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !6, line: 145, baseType: !47, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 104)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !139, file: !6, line: 146, baseType: !33, size: 8, offset: 112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !139, file: !6, line: 147, baseType: !33, size: 8, offset: 120)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !6, line: 148, baseType: !43, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !6, line: 149, baseType: !43, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !6, line: 150, baseType: !88, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !139, file: !6, line: 154, baseType: !153, size: 64, offset: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !6, line: 151, size: 64, elements: !154)
!154 = !{!155, !447}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !153, file: !6, line: 152, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !95, line: 248, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!18, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !162, line: 37, size: 9024, elements: !163)
!162 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !393, !394, !395, !396, !397, !401, !403, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !430, !431, !432, !433, !434, !435, !436, !437, !439, !445}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 38, baseType: !160, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !162, line: 39, baseType: !33, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !161, file: !162, line: 40, baseType: !33, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !161, file: !162, line: 41, baseType: !47, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !161, file: !162, line: 42, baseType: !33, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !161, file: !162, line: 43, baseType: !33, size: 8, offset: 104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !161, file: !162, line: 44, baseType: !33, size: 8, offset: 112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !161, file: !162, line: 45, baseType: !114, size: 16, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !161, file: !162, line: 46, baseType: !33, size: 8, offset: 144)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !161, file: !162, line: 47, baseType: !33, size: 8, offset: 152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !161, file: !162, line: 48, baseType: !33, size: 8, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !161, file: !162, line: 49, baseType: !33, size: 8, offset: 168)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !161, file: !162, line: 50, baseType: !33, size: 8, offset: 176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !161, file: !162, line: 51, baseType: !33, size: 8, offset: 184)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !161, file: !162, line: 52, baseType: !33, size: 8, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !161, file: !162, line: 53, baseType: !33, size: 8, offset: 200)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !162, line: 54, baseType: !88, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !161, file: !162, line: 55, baseType: !20, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !161, file: !162, line: 56, baseType: !20, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !161, file: !162, line: 57, baseType: !20, size: 32, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !161, file: !162, line: 58, baseType: !20, size: 32, offset: 416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !161, file: !162, line: 60, baseType: !186, size: 640, offset: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !95, line: 909, size: 640, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !274, !275, !391, !392}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !95, line: 910, baseType: !88, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !95, line: 911, baseType: !88, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !186, file: !95, line: 912, baseType: !88, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !186, file: !95, line: 913, baseType: !88, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !186, file: !95, line: 914, baseType: !88, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !186, file: !95, line: 915, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !95, line: 891, size: 1600, elements: !196)
!196 = !{!197, !217, !233}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !195, file: !95, line: 892, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !95, line: 844, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !95, line: 845, baseType: !194, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !95, line: 845, baseType: !47, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !95, line: 845, baseType: !88, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !95, line: 845, baseType: !194, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !95, line: 845, baseType: !93, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !95, line: 845, baseType: !208, size: 64, offset: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !95, line: 732, size: 64, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !208, file: !95, line: 733, baseType: !64, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !95, line: 734, baseType: !20, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !208, file: !95, line: 735, baseType: !76, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !208, file: !95, line: 736, baseType: !88, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !95, line: 737, baseType: !76, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !208, file: !95, line: 738, baseType: !194, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !195, file: !95, line: 893, baseType: !218, size: 640)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !95, line: 851, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !95, line: 852, baseType: !194, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !218, file: !95, line: 852, baseType: !47, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !95, line: 852, baseType: !88, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !95, line: 852, baseType: !194, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !95, line: 852, baseType: !93, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !95, line: 852, baseType: !208, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !218, file: !95, line: 852, baseType: !76, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !218, file: !95, line: 853, baseType: !88, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !218, file: !95, line: 854, baseType: !20, size: 32, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !95, line: 855, baseType: !20, size: 32, offset: 608)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !195, file: !95, line: 894, baseType: !234, size: 1600)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !95, line: 862, size: 1600, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !95, line: 863, baseType: !194, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !95, line: 863, baseType: !47, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !95, line: 863, baseType: !88, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !95, line: 863, baseType: !194, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !95, line: 863, baseType: !93, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !95, line: 863, baseType: !208, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !234, file: !95, line: 863, baseType: !194, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !234, file: !95, line: 864, baseType: !194, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !234, file: !95, line: 865, baseType: !76, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !234, file: !95, line: 866, baseType: !33, size: 8, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !234, file: !95, line: 867, baseType: !76, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !234, file: !95, line: 868, baseType: !76, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !234, file: !95, line: 869, baseType: !76, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !234, file: !95, line: 870, baseType: !107, size: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !234, file: !95, line: 871, baseType: !20, size: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !234, file: !95, line: 872, baseType: !20, size: 32, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !234, file: !95, line: 873, baseType: !20, size: 32, offset: 992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !234, file: !95, line: 874, baseType: !20, size: 32, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !234, file: !95, line: 875, baseType: !20, size: 32, offset: 1056)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !234, file: !95, line: 876, baseType: !20, size: 32, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !234, file: !95, line: 877, baseType: !20, size: 32, offset: 1120)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !234, file: !95, line: 878, baseType: !20, size: 32, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !234, file: !95, line: 879, baseType: !20, size: 32, offset: 1184)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !234, file: !95, line: 880, baseType: !20, size: 32, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !234, file: !95, line: 881, baseType: !20, size: 32, offset: 1248)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !234, file: !95, line: 882, baseType: !20, size: 32, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !234, file: !95, line: 883, baseType: !20, size: 32, offset: 1312)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !234, file: !95, line: 884, baseType: !47, size: 16, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !234, file: !95, line: 885, baseType: !33, size: 8, offset: 1360)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !234, file: !95, line: 886, baseType: !33, size: 8, offset: 1368)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !234, file: !95, line: 887, baseType: !33, size: 8, offset: 1376)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !234, file: !95, line: 888, baseType: !271, size: 160, offset: 1384)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 20)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !186, file: !95, line: 916, baseType: !93, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !95, line: 917, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !95, line: 679, size: 640, elements: !278)
!278 = !{!279, !287, !300, !309, !318, !331, !345, !357, !369}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !277, file: !95, line: 680, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !95, line: 575, size: 128, elements: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !95, line: 576, baseType: !31, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !95, line: 576, baseType: !33, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !95, line: 576, baseType: !33, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !95, line: 576, baseType: !47, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !95, line: 576, baseType: !47, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !277, file: !95, line: 681, baseType: !288, size: 384)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !95, line: 604, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !95, line: 605, baseType: !31, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !95, line: 605, baseType: !33, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !95, line: 605, baseType: !33, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !95, line: 605, baseType: !47, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !95, line: 605, baseType: !47, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !288, file: !95, line: 606, baseType: !47, size: 16, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !288, file: !95, line: 607, baseType: !194, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !288, file: !95, line: 608, baseType: !88, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !288, file: !95, line: 609, baseType: !88, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !288, file: !95, line: 610, baseType: !64, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !277, file: !95, line: 682, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !95, line: 582, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !95, line: 583, baseType: !31, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !95, line: 583, baseType: !33, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !95, line: 583, baseType: !33, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !95, line: 583, baseType: !47, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !95, line: 583, baseType: !47, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !301, file: !95, line: 584, baseType: !43, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !277, file: !95, line: 683, baseType: !310, size: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !95, line: 616, size: 192, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !95, line: 617, baseType: !31, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !95, line: 617, baseType: !33, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !95, line: 617, baseType: !33, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !95, line: 617, baseType: !47, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !95, line: 617, baseType: !47, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !95, line: 618, baseType: !93, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !277, file: !95, line: 684, baseType: !319, size: 448)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !95, line: 621, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !95, line: 622, baseType: !31, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !95, line: 622, baseType: !33, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !95, line: 622, baseType: !33, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !95, line: 622, baseType: !47, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !95, line: 622, baseType: !47, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !319, file: !95, line: 623, baseType: !20, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !319, file: !95, line: 624, baseType: !194, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !95, line: 625, baseType: !88, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !319, file: !95, line: 626, baseType: !88, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !319, file: !95, line: 627, baseType: !20, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !277, file: !95, line: 685, baseType: !332, size: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !95, line: 590, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !95, line: 591, baseType: !31, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !95, line: 591, baseType: !33, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !95, line: 591, baseType: !33, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !95, line: 591, baseType: !47, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !95, line: 591, baseType: !47, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !332, file: !95, line: 592, baseType: !20, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !332, file: !95, line: 593, baseType: !43, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !332, file: !95, line: 594, baseType: !43, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !332, file: !95, line: 595, baseType: !160, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !332, file: !95, line: 596, baseType: !31, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !332, file: !95, line: 597, baseType: !20, size: 32, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !277, file: !95, line: 686, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !95, line: 634, size: 320, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !95, line: 635, baseType: !31, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !95, line: 635, baseType: !33, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !95, line: 635, baseType: !33, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !95, line: 635, baseType: !47, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !95, line: 635, baseType: !47, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !346, file: !95, line: 636, baseType: !33, size: 8, offset: 112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !346, file: !95, line: 637, baseType: !160, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !346, file: !95, line: 638, baseType: !43, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !346, file: !95, line: 639, baseType: !64, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !277, file: !95, line: 687, baseType: !358, size: 640)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !95, line: 646, size: 640, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !95, line: 647, baseType: !31, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !95, line: 647, baseType: !33, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !95, line: 647, baseType: !33, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !95, line: 647, baseType: !47, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !95, line: 647, baseType: !47, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !358, file: !95, line: 648, baseType: !366, size: 512, offset: 128)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !277, file: !95, line: 688, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !95, line: 669, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !95, line: 670, baseType: !31, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !370, file: !95, line: 670, baseType: !33, size: 8, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !95, line: 670, baseType: !33, size: 8, offset: 72)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !370, file: !95, line: 670, baseType: !47, size: 16, offset: 80)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !95, line: 670, baseType: !47, size: 16, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !370, file: !95, line: 671, baseType: !33, size: 8, offset: 112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !370, file: !95, line: 672, baseType: !93, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !370, file: !95, line: 673, baseType: !43, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !370, file: !95, line: 674, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !95, line: 660, size: 128, elements: !383)
!383 = !{!384, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !382, file: !95, line: 661, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !20, !31}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !31)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !382, file: !95, line: 662, baseType: !31, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !186, file: !95, line: 918, baseType: !194, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !186, file: !95, line: 919, baseType: !20, size: 32, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !161, file: !162, line: 61, baseType: !20, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !161, file: !162, line: 62, baseType: !20, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !161, file: !162, line: 63, baseType: !47, size: 16, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !161, file: !162, line: 64, baseType: !33, size: 8, offset: 1168)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !161, file: !162, line: 66, baseType: !398, size: 2688, offset: 1216)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !161, file: !162, line: 67, baseType: !402, size: 3072, offset: 3904)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !367)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !161, file: !162, line: 68, baseType: !404, size: 576, offset: 6976)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 9)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !161, file: !162, line: 69, baseType: !125, size: 64, offset: 7552)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !161, file: !162, line: 71, baseType: !88, size: 64, offset: 7616)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !161, file: !162, line: 72, baseType: !125, size: 64, offset: 7680)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !161, file: !162, line: 73, baseType: !276, size: 64, offset: 7744)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !161, file: !162, line: 74, baseType: !93, size: 64, offset: 7808)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !161, file: !162, line: 75, baseType: !43, size: 64, offset: 7872)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !161, file: !162, line: 76, baseType: !93, size: 64, offset: 7936)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !161, file: !162, line: 77, baseType: !194, size: 64, offset: 8000)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !161, file: !162, line: 78, baseType: !43, size: 64, offset: 8064)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !161, file: !162, line: 79, baseType: !93, size: 64, offset: 8128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !161, file: !162, line: 80, baseType: !76, size: 64, offset: 8192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !161, file: !162, line: 81, baseType: !194, size: 64, offset: 8256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !161, file: !162, line: 82, baseType: !420, size: 64, offset: 8320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !95, line: 718, size: 128, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !422, file: !95, line: 722, baseType: !20, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !422, file: !95, line: 723, baseType: !20, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !95, line: 724, baseType: !47, size: 16, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !422, file: !95, line: 725, baseType: !33, size: 8, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !422, file: !95, line: 726, baseType: !33, size: 8, offset: 88)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !95, line: 727, baseType: !33, size: 8, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !161, file: !162, line: 83, baseType: !194, size: 64, offset: 8384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !161, file: !162, line: 84, baseType: !43, size: 64, offset: 8448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !161, file: !162, line: 85, baseType: !276, size: 64, offset: 8512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !161, file: !162, line: 86, baseType: !43, size: 64, offset: 8576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !161, file: !162, line: 87, baseType: !276, size: 64, offset: 8640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !161, file: !162, line: 88, baseType: !194, size: 64, offset: 8704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !161, file: !162, line: 89, baseType: !194, size: 64, offset: 8768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !161, file: !162, line: 90, baseType: !438, size: 64, offset: 8832)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !161, file: !162, line: 91, baseType: !440, size: 64, offset: 8896)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !95, line: 652, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!18, !160, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !161, file: !162, line: 92, baseType: !446, size: 64, offset: 8960)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !95, line: 656, baseType: !157)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !153, file: !6, line: 153, baseType: !43, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !6, line: 156, baseType: !20, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !6, line: 157, baseType: !114, size: 16, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !139, file: !6, line: 158, baseType: !33, size: 8, offset: 432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !6, line: 377, baseType: !452, size: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !6, line: 123, baseType: !43, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !6, line: 123, baseType: !47, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !452, file: !6, line: 124, baseType: !47, size: 16, offset: 112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !452, file: !6, line: 125, baseType: !31, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !452, file: !6, line: 126, baseType: !64, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !452, file: !6, line: 127, baseType: !438, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !452, file: !6, line: 128, baseType: !43, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !6, line: 129, baseType: !43, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !6, line: 130, baseType: !93, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !452, file: !6, line: 131, baseType: !33, size: 8, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !6, line: 378, baseType: !469, size: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482, !483}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !6, line: 135, baseType: !43, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !6, line: 135, baseType: !47, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !6, line: 136, baseType: !93, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !6, line: 137, baseType: !43, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !6, line: 138, baseType: !43, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !469, file: !6, line: 139, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !469, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !469, file: !6, line: 141, baseType: !31, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !6, line: 379, baseType: !485, size: 320)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !496}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !6, line: 186, baseType: !43, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !6, line: 186, baseType: !47, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !6, line: 186, baseType: !493, size: 128, offset: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 2)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !6, line: 186, baseType: !43, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !6, line: 380, baseType: !498, size: 384)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !6, line: 189, baseType: !43, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !6, line: 189, baseType: !47, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !498, file: !6, line: 190, baseType: !493, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !498, file: !6, line: 190, baseType: !43, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !498, file: !6, line: 190, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !95, line: 480, size: 576, elements: !510)
!510 = !{!511, !512, !513, !514, !522, !537, !569, !570, !571, !572, !573, !574}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !95, line: 481, baseType: !93, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !95, line: 482, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !95, line: 483, baseType: !508, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !509, file: !95, line: 484, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !95, line: 497, size: 256, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !516, file: !95, line: 498, baseType: !515, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !95, line: 499, baseType: !515, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !516, file: !95, line: 500, baseType: !508, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !516, file: !95, line: 501, baseType: !20, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !509, file: !95, line: 485, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !95, line: 466, size: 320, elements: !525)
!525 = !{!526, !531, !532, !533, !534, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !524, file: !95, line: 467, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !95, line: 459, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !527, file: !95, line: 460, baseType: !33, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !95, line: 461, baseType: !64, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !524, file: !95, line: 468, baseType: !527, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !524, file: !95, line: 469, baseType: !47, size: 16, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !524, file: !95, line: 470, baseType: !33, size: 8, offset: 272)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !524, file: !95, line: 471, baseType: !33, size: 8, offset: 280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !524, file: !95, line: 472, baseType: !33, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !524, file: !95, line: 473, baseType: !33, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !509, file: !95, line: 486, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !95, line: 448, size: 192, elements: !540)
!540 = !{!541, !564, !565, !566, !567, !568}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !539, file: !95, line: 449, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !95, line: 438, size: 64, elements: !543)
!543 = !{!544, !545, !558}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !95, line: 439, baseType: !93, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !95, line: 440, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !95, line: 419, size: 256, elements: !548)
!548 = !{!549, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !95, line: 420, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!20, !389, !20, !31}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !547, file: !95, line: 421, baseType: !31, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !95, line: 422, baseType: !93, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !547, file: !95, line: 423, baseType: !33, size: 8, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !547, file: !95, line: 424, baseType: !33, size: 8, offset: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !542, file: !95, line: 441, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !95, line: 429, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !560, file: !95, line: 430, baseType: !93, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !95, line: 431, baseType: !559, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !539, file: !95, line: 450, baseType: !523, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !95, line: 451, baseType: !33, size: 8, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !539, file: !95, line: 452, baseType: !33, size: 8, offset: 136)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !539, file: !95, line: 453, baseType: !33, size: 8, offset: 144)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !539, file: !95, line: 454, baseType: !33, size: 8, offset: 152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !509, file: !95, line: 487, baseType: !64, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !509, file: !95, line: 488, baseType: !20, size: 32, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !509, file: !95, line: 489, baseType: !47, size: 16, offset: 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !509, file: !95, line: 490, baseType: !47, size: 16, offset: 496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !509, file: !95, line: 491, baseType: !33, size: 8, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !509, file: !95, line: 492, baseType: !33, size: 8, offset: 520)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !6, line: 381, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !6, line: 194, baseType: !43, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !6, line: 194, baseType: !47, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !6, line: 194, baseType: !493, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !6, line: 194, baseType: !43, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !576, file: !6, line: 194, baseType: !20, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !576, file: !6, line: 195, baseType: !20, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !6, line: 382, baseType: !588, size: 384)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !6, line: 199, baseType: !43, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !6, line: 199, baseType: !47, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !588, file: !6, line: 201, baseType: !33, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !6, line: 202, baseType: !33, size: 8, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !6, line: 203, baseType: !493, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !6, line: 203, baseType: !43, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !588, file: !6, line: 203, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !6, line: 383, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !6, line: 207, baseType: !43, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !6, line: 207, baseType: !47, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !6, line: 207, baseType: !493, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !6, line: 207, baseType: !43, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !6, line: 384, baseType: !612, size: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !6, line: 235, baseType: !43, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !6, line: 235, baseType: !47, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !6, line: 235, baseType: !93, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !6, line: 235, baseType: !43, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !6, line: 385, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 239, baseType: !43, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 239, baseType: !47, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 239, baseType: !93, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !6, line: 239, baseType: !47, size: 16, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !630, file: !6, line: 240, baseType: !43, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !630, file: !6, line: 241, baseType: !88, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !630, file: !6, line: 242, baseType: !47, size: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !630, file: !6, line: 243, baseType: !88, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !6, line: 386, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !6, line: 264, baseType: !43, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !6, line: 264, baseType: !47, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !6, line: 264, baseType: !93, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !652, file: !6, line: 265, baseType: !43, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !6, line: 387, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !6, line: 247, baseType: !43, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !6, line: 247, baseType: !47, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !6, line: 247, baseType: !93, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !6, line: 247, baseType: !43, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !671, file: !6, line: 248, baseType: !43, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !6, line: 388, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !6, line: 252, baseType: !43, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !6, line: 252, baseType: !47, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !6, line: 252, baseType: !93, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !690, file: !6, line: 257, baseType: !43, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !690, file: !6, line: 258, baseType: !43, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !6, line: 389, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !6, line: 275, baseType: !43, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !6, line: 275, baseType: !47, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 275, baseType: !93, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !709, file: !6, line: 276, baseType: !20, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !6, line: 277, baseType: !385, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !6, line: 278, baseType: !31, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !6, line: 279, baseType: !493, size: 128, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !6, line: 390, baseType: !722, size: 576)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !737, !738, !739, !740, !746, !747}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !6, line: 283, baseType: !43, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !6, line: 283, baseType: !47, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !722, file: !6, line: 284, baseType: !33, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !722, file: !6, line: 285, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!18, !20, !481, !20, !736, !31, !31}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !6, line: 286, baseType: !93, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !722, file: !6, line: 287, baseType: !31, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !722, file: !6, line: 288, baseType: !31, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !722, file: !6, line: 289, baseType: !741, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!18, !389, !20, !31, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !722, file: !6, line: 290, baseType: !43, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !6, line: 291, baseType: !43, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !6, line: 391, baseType: !749, size: 512)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !6, line: 310, baseType: !43, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !6, line: 310, baseType: !47, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 104)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !749, file: !6, line: 311, baseType: !33, size: 8, offset: 112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !749, file: !6, line: 312, baseType: !33, size: 8, offset: 120)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !749, file: !6, line: 313, baseType: !31, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !6, line: 314, baseType: !93, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !749, file: !6, line: 315, baseType: !125, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !749, file: !6, line: 316, baseType: !88, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !749, file: !6, line: 317, baseType: !88, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !749, file: !6, line: 318, baseType: !20, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !6, line: 392, baseType: !766, size: 448)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !6, line: 343, baseType: !43, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !6, line: 343, baseType: !47, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !766, file: !6, line: 343, baseType: !93, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !766, file: !6, line: 344, baseType: !93, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !766, file: !6, line: 345, baseType: !31, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !766, file: !6, line: 346, baseType: !88, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !766, file: !6, line: 347, baseType: !20, size: 32, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !6, line: 393, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !6, line: 353, baseType: !43, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !6, line: 353, baseType: !47, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !779, file: !6, line: 353, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !389, !31}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !779, file: !6, line: 354, baseType: !31, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !6, line: 394, baseType: !793, size: 192)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !793, file: !6, line: 360, baseType: !43, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 72)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !793, file: !6, line: 360, baseType: !47, size: 16, offset: 80)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !793, file: !6, line: 360, baseType: !43, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !6, line: 401, baseType: !94, size: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !6, line: 437, baseType: !94, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !25, file: !6, line: 438, baseType: !195, size: 1600)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !806, line: 42, baseType: !807)
!806 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!807 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!808 = !{!809, !814, !819, !824, !0, !829, !834, !839}
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 192, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 24)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !3, line: 349, type: !816, isLocal: true, isDefinition: true)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 352, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 44)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !3, line: 392, type: !821, isLocal: true, isDefinition: true)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 232, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 29)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !3, line: 496, type: !826, isLocal: true, isDefinition: true)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 32)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !831, isLocal: true, isDefinition: true)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 504, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 63)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !836, isLocal: true, isDefinition: true)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 424, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 53)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 272, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 34)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 72, elements: !405)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!846 = !{i32 7, !"Dwarf Version", i32 5}
!847 = !{i32 2, !"Debug Info Version", i32 3}
!848 = !{i32 1, !"wchar_size", i32 2}
!849 = !{i32 8, !"cf-protection-branch", i32 1}
!850 = !{i32 4, !"function_return_thunk_extern", i32 1}
!851 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!852 = !{i32 1, !"Code Model", i32 2}
!853 = !{i32 1, !"override-stack-alignment", i32 8}
!854 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!855 = distinct !DISubprogram(name: "acpi_ex_resolve_to_value", scope: !3, file: !3, line: 41, type: !856, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{!18, !125, !160}
!858 = !{!859, !860, !861}
!859 = !DILocalVariable(name: "stack_ptr", arg: 1, scope: !855, file: !3, line: 41, type: !125)
!860 = !DILocalVariable(name: "walk_state", arg: 2, scope: !855, file: !3, line: 42, type: !160)
!861 = !DILocalVariable(name: "status", scope: !855, file: !3, line: 44, type: !18)
!862 = !DILocation(line: 41, column: 54, scope: !855)
!863 = !DILocation(line: 42, column: 29, scope: !855)
!864 = !DILocation(line: 44, column: 2, scope: !855)
!865 = !DILocation(line: 44, column: 14, scope: !855)
!866 = !DILocation(line: 48, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !855, file: !3, line: 48, column: 6)
!868 = !DILocation(line: 48, column: 17, scope: !867)
!869 = !DILocation(line: 48, column: 22, scope: !867)
!870 = !DILocation(line: 48, column: 21, scope: !867)
!871 = !DILocation(line: 48, column: 6, scope: !855)
!872 = !DILocation(line: 49, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !867, file: !3, line: 48, column: 33)
!874 = !DILocation(line: 50, column: 3, scope: !873)
!875 = !DILocation(line: 58, column: 6, scope: !876)
!876 = distinct !DILexicalBlock(scope: !855, file: !3, line: 58, column: 6)
!877 = !DILocation(line: 58, column: 43, scope: !876)
!878 = !DILocation(line: 58, column: 6, scope: !855)
!879 = !DILocation(line: 59, column: 44, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !3, line: 58, column: 70)
!881 = !DILocation(line: 59, column: 55, scope: !880)
!882 = !DILocation(line: 59, column: 12, scope: !880)
!883 = !DILocation(line: 59, column: 10, scope: !880)
!884 = !DILocation(line: 60, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !3, line: 60, column: 7)
!886 = !DILocation(line: 60, column: 7, scope: !880)
!887 = !DILocation(line: 61, column: 4, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 60, column: 29)
!889 = !DILocation(line: 64, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !880, file: !3, line: 64, column: 7)
!891 = !DILocation(line: 64, column: 8, scope: !890)
!892 = !DILocation(line: 64, column: 7, scope: !880)
!893 = !DILocation(line: 65, column: 4, scope: !894)
!894 = distinct !DILexicalBlock(scope: !890, file: !3, line: 64, column: 20)
!895 = !DILocation(line: 66, column: 4, scope: !894)
!896 = !DILocation(line: 68, column: 2, scope: !880)
!897 = !DILocation(line: 74, column: 6, scope: !898)
!898 = distinct !DILexicalBlock(scope: !855, file: !3, line: 74, column: 6)
!899 = !DILocation(line: 74, column: 43, scope: !898)
!900 = !DILocation(line: 74, column: 6, scope: !855)
!901 = !DILocation(line: 76, column: 37, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !3, line: 74, column: 68)
!903 = !DILocation(line: 78, column: 22, scope: !902)
!904 = !DILocation(line: 76, column: 7, scope: !902)
!905 = !DILocation(line: 75, column: 10, scope: !902)
!906 = !DILocation(line: 79, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !902, file: !3, line: 79, column: 7)
!908 = !DILocation(line: 79, column: 7, scope: !902)
!909 = !DILocation(line: 80, column: 4, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 79, column: 29)
!911 = !DILocation(line: 82, column: 2, scope: !902)
!912 = !DILocation(line: 85, column: 2, scope: !855)
!913 = !DILocation(line: 86, column: 1, scope: !855)
!914 = !DISubprogram(name: "acpi_error", scope: !915, file: !915, line: 901, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!915 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!916 = !DISubroutineType(types: !917)
!917 = !{null, !918, !20, !918, null}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!919 = distinct !DISubprogram(name: "acpi_ex_resolve_object_to_value", scope: !3, file: !3, line: 103, type: !856, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !920)
!920 = !{!921, !922, !923, !924, !925, !926}
!921 = !DILocalVariable(name: "stack_ptr", arg: 1, scope: !919, file: !3, line: 103, type: !125)
!922 = !DILocalVariable(name: "walk_state", arg: 2, scope: !919, file: !3, line: 104, type: !160)
!923 = !DILocalVariable(name: "status", scope: !919, file: !3, line: 106, type: !18)
!924 = !DILocalVariable(name: "stack_desc", scope: !919, file: !3, line: 107, type: !43)
!925 = !DILocalVariable(name: "obj_desc", scope: !919, file: !3, line: 108, type: !43)
!926 = !DILocalVariable(name: "ref_type", scope: !919, file: !3, line: 109, type: !33)
!927 = !DILocation(line: 103, column: 61, scope: !919)
!928 = !DILocation(line: 104, column: 29, scope: !919)
!929 = !DILocation(line: 106, column: 2, scope: !919)
!930 = !DILocation(line: 106, column: 14, scope: !919)
!931 = !DILocation(line: 107, column: 2, scope: !919)
!932 = !DILocation(line: 107, column: 29, scope: !919)
!933 = !DILocation(line: 108, column: 2, scope: !919)
!934 = !DILocation(line: 108, column: 29, scope: !919)
!935 = !DILocation(line: 109, column: 2, scope: !919)
!936 = !DILocation(line: 109, column: 5, scope: !919)
!937 = !DILocation(line: 113, column: 16, scope: !919)
!938 = !DILocation(line: 113, column: 15, scope: !919)
!939 = !DILocation(line: 113, column: 13, scope: !919)
!940 = !DILocation(line: 117, column: 10, scope: !919)
!941 = !DILocation(line: 117, column: 29, scope: !919)
!942 = !DILocation(line: 117, column: 2, scope: !919)
!943 = !DILocation(line: 120, column: 14, scope: !944)
!944 = distinct !DILexicalBlock(scope: !919, file: !3, line: 117, column: 35)
!945 = !DILocation(line: 120, column: 36, scope: !944)
!946 = !DILocation(line: 120, column: 12, scope: !944)
!947 = !DILocation(line: 122, column: 11, scope: !944)
!948 = !DILocation(line: 122, column: 3, scope: !944)
!949 = !DILocation(line: 129, column: 43, scope: !950)
!950 = distinct !DILexicalBlock(scope: !944, file: !3, line: 122, column: 21)
!951 = !DILocation(line: 130, column: 15, scope: !950)
!952 = !DILocation(line: 131, column: 25, scope: !950)
!953 = !DILocation(line: 132, column: 15, scope: !950)
!954 = !DILocation(line: 129, column: 13, scope: !950)
!955 = !DILocation(line: 129, column: 11, scope: !950)
!956 = !DILocation(line: 134, column: 8, scope: !957)
!957 = distinct !DILexicalBlock(scope: !950, file: !3, line: 134, column: 8)
!958 = !DILocation(line: 134, column: 8, scope: !950)
!959 = !DILocation(line: 135, column: 5, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !3, line: 134, column: 30)
!961 = !DILocation(line: 147, column: 29, scope: !950)
!962 = !DILocation(line: 147, column: 4, scope: !950)
!963 = !DILocation(line: 148, column: 17, scope: !950)
!964 = !DILocation(line: 148, column: 5, scope: !950)
!965 = !DILocation(line: 148, column: 15, scope: !950)
!966 = !DILocation(line: 149, column: 4, scope: !950)
!967 = !DILocation(line: 153, column: 12, scope: !950)
!968 = !DILocation(line: 153, column: 34, scope: !950)
!969 = !DILocation(line: 153, column: 4, scope: !950)
!970 = !DILocation(line: 163, column: 10, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 163, column: 9)
!972 = distinct !DILexicalBlock(scope: !950, file: !3, line: 153, column: 47)
!973 = !DILocation(line: 163, column: 22, scope: !971)
!974 = !DILocation(line: 163, column: 29, scope: !971)
!975 = !DILocation(line: 165, column: 9, scope: !971)
!976 = !DILocation(line: 165, column: 13, scope: !971)
!977 = !DILocation(line: 165, column: 25, scope: !971)
!978 = !DILocation(line: 165, column: 32, scope: !971)
!979 = !DILocation(line: 163, column: 9, scope: !972)
!980 = !DILocation(line: 167, column: 6, scope: !981)
!981 = distinct !DILexicalBlock(scope: !971, file: !3, line: 166, column: 27)
!982 = !DILocation(line: 172, column: 17, scope: !972)
!983 = !DILocation(line: 172, column: 39, scope: !972)
!984 = !DILocation(line: 172, column: 16, scope: !972)
!985 = !DILocation(line: 172, column: 14, scope: !972)
!986 = !DILocation(line: 173, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !972, file: !3, line: 173, column: 9)
!988 = !DILocation(line: 173, column: 9, scope: !972)
!989 = !DILocation(line: 179, column: 28, scope: !990)
!990 = distinct !DILexicalBlock(scope: !987, file: !3, line: 173, column: 19)
!991 = !DILocation(line: 179, column: 6, scope: !990)
!992 = !DILocation(line: 180, column: 19, scope: !990)
!993 = !DILocation(line: 180, column: 7, scope: !990)
!994 = !DILocation(line: 180, column: 17, scope: !990)
!995 = !DILocation(line: 181, column: 5, scope: !990)
!996 = !DILocation(line: 186, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !987, file: !3, line: 181, column: 12)
!998 = !DILocation(line: 190, column: 13, scope: !997)
!999 = !DILocation(line: 192, column: 5, scope: !972)
!1000 = !DILocation(line: 198, column: 5, scope: !972)
!1001 = !DILocation(line: 202, column: 12, scope: !972)
!1002 = !DILocation(line: 203, column: 5, scope: !972)
!1003 = !DILocation(line: 205, column: 4, scope: !950)
!1004 = !DILocation(line: 213, column: 4, scope: !950)
!1005 = !DILocation(line: 219, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !950, file: !3, line: 219, column: 8)
!1007 = !DILocation(line: 219, column: 31, scope: !1006)
!1008 = !DILocation(line: 219, column: 37, scope: !1006)
!1009 = !DILocation(line: 219, column: 42, scope: !1006)
!1010 = !DILocation(line: 221, column: 8, scope: !1006)
!1011 = !DILocation(line: 221, column: 12, scope: !1006)
!1012 = !DILocation(line: 221, column: 34, scope: !1006)
!1013 = !DILocation(line: 221, column: 40, scope: !1006)
!1014 = !DILocation(line: 221, column: 45, scope: !1006)
!1015 = !DILocation(line: 219, column: 8, scope: !950)
!1016 = !DILocation(line: 226, column: 26, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 222, column: 25)
!1018 = !DILocation(line: 226, column: 48, scope: !1017)
!1019 = !DILocation(line: 226, column: 6, scope: !1017)
!1020 = !DILocation(line: 226, column: 16, scope: !1017)
!1021 = !DILocation(line: 227, column: 4, scope: !1017)
!1022 = !DILocation(line: 231, column: 10, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 227, column: 11)
!1024 = !DILocation(line: 231, column: 32, scope: !1023)
!1025 = !DILocation(line: 231, column: 39, scope: !1023)
!1026 = !DILocation(line: 230, column: 6, scope: !1023)
!1027 = !DILocation(line: 230, column: 16, scope: !1023)
!1028 = !DILocation(line: 232, column: 28, scope: !1023)
!1029 = !DILocation(line: 232, column: 27, scope: !1023)
!1030 = !DILocation(line: 232, column: 5, scope: !1023)
!1031 = !DILocation(line: 235, column: 29, scope: !950)
!1032 = !DILocation(line: 235, column: 4, scope: !950)
!1033 = !DILocation(line: 236, column: 4, scope: !950)
!1034 = !DILocation(line: 240, column: 4, scope: !950)
!1035 = !DILocation(line: 243, column: 11, scope: !950)
!1036 = !DILocation(line: 244, column: 4, scope: !950)
!1037 = !DILocation(line: 246, column: 3, scope: !944)
!1038 = !DILocation(line: 250, column: 41, scope: !944)
!1039 = !DILocation(line: 250, column: 12, scope: !944)
!1040 = !DILocation(line: 250, column: 10, scope: !944)
!1041 = !DILocation(line: 251, column: 3, scope: !944)
!1042 = !DILocation(line: 255, column: 42, scope: !944)
!1043 = !DILocation(line: 255, column: 12, scope: !944)
!1044 = !DILocation(line: 255, column: 10, scope: !944)
!1045 = !DILocation(line: 256, column: 3, scope: !944)
!1046 = !DILocation(line: 268, column: 36, scope: !944)
!1047 = !DILocation(line: 268, column: 48, scope: !944)
!1048 = !DILocation(line: 268, column: 7, scope: !944)
!1049 = !DILocation(line: 267, column: 10, scope: !944)
!1050 = !DILocation(line: 273, column: 29, scope: !944)
!1051 = !DILocation(line: 273, column: 28, scope: !944)
!1052 = !DILocation(line: 273, column: 3, scope: !944)
!1053 = !DILocation(line: 274, column: 24, scope: !944)
!1054 = !DILocation(line: 274, column: 4, scope: !944)
!1055 = !DILocation(line: 274, column: 14, scope: !944)
!1056 = !DILocation(line: 275, column: 3, scope: !944)
!1057 = !DILocation(line: 279, column: 3, scope: !944)
!1058 = !DILocation(line: 282, column: 2, scope: !919)
!1059 = !DILocation(line: 283, column: 1, scope: !919)
!1060 = !DISubprogram(name: "acpi_ex_resolve_node_to_value", scope: !1061, file: !1061, line: 370, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1061 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!18, !804, !160}
!1064 = distinct !DISubprogram(name: "acpi_ex_resolve_multiple", scope: !3, file: !3, line: 302, type: !1065, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!18, !160, !43, !1067, !125}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078}
!1070 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1064, file: !3, line: 302, type: !160)
!1071 = !DILocalVariable(name: "operand", arg: 2, scope: !1064, file: !3, line: 303, type: !43)
!1072 = !DILocalVariable(name: "return_type", arg: 3, scope: !1064, file: !3, line: 304, type: !1067)
!1073 = !DILocalVariable(name: "return_desc", arg: 4, scope: !1064, file: !3, line: 305, type: !125)
!1074 = !DILocalVariable(name: "obj_desc", scope: !1064, file: !3, line: 307, type: !43)
!1075 = !DILocalVariable(name: "node", scope: !1064, file: !3, line: 308, type: !93)
!1076 = !DILocalVariable(name: "type", scope: !1064, file: !3, line: 310, type: !1068)
!1077 = !DILocalVariable(name: "status", scope: !1064, file: !3, line: 311, type: !18)
!1078 = !DILabel(scope: !1064, name: "exit", file: !3, line: 509)
!1079 = !DILocation(line: 302, column: 50, scope: !1064)
!1080 = !DILocation(line: 303, column: 32, scope: !1064)
!1081 = !DILocation(line: 304, column: 23, scope: !1064)
!1082 = !DILocation(line: 305, column: 33, scope: !1064)
!1083 = !DILocation(line: 307, column: 2, scope: !1064)
!1084 = !DILocation(line: 307, column: 29, scope: !1064)
!1085 = !DILocation(line: 307, column: 40, scope: !1064)
!1086 = !DILocation(line: 308, column: 2, scope: !1064)
!1087 = !DILocation(line: 308, column: 30, scope: !1064)
!1088 = !DILocation(line: 309, column: 6, scope: !1064)
!1089 = !DILocation(line: 310, column: 2, scope: !1064)
!1090 = !DILocation(line: 310, column: 19, scope: !1064)
!1091 = !DILocation(line: 311, column: 2, scope: !1064)
!1092 = !DILocation(line: 311, column: 14, scope: !1064)
!1093 = !DILocation(line: 317, column: 10, scope: !1064)
!1094 = !DILocation(line: 317, column: 2, scope: !1064)
!1095 = !DILocation(line: 320, column: 10, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 317, column: 46)
!1097 = !DILocation(line: 320, column: 27, scope: !1096)
!1098 = !DILocation(line: 320, column: 8, scope: !1096)
!1099 = !DILocation(line: 321, column: 3, scope: !1096)
!1100 = !DILocation(line: 325, column: 41, scope: !1096)
!1101 = !DILocation(line: 325, column: 52, scope: !1096)
!1102 = !DILocation(line: 325, column: 10, scope: !1096)
!1103 = !DILocation(line: 325, column: 8, scope: !1096)
!1104 = !DILocation(line: 326, column: 42, scope: !1096)
!1105 = !DILocation(line: 326, column: 14, scope: !1096)
!1106 = !DILocation(line: 326, column: 12, scope: !1096)
!1107 = !DILocation(line: 330, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 330, column: 7)
!1109 = !DILocation(line: 330, column: 12, scope: !1108)
!1110 = !DILocation(line: 330, column: 7, scope: !1096)
!1111 = !DILocation(line: 331, column: 42, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 330, column: 38)
!1113 = !DILocation(line: 331, column: 53, scope: !1112)
!1114 = !DILocation(line: 331, column: 11, scope: !1112)
!1115 = !DILocation(line: 331, column: 9, scope: !1112)
!1116 = !DILocation(line: 334, column: 11, scope: !1112)
!1117 = !DILocation(line: 332, column: 15, scope: !1112)
!1118 = !DILocation(line: 332, column: 13, scope: !1112)
!1119 = !DILocation(line: 335, column: 3, scope: !1112)
!1120 = !DILocation(line: 337, column: 11, scope: !1096)
!1121 = !DILocation(line: 337, column: 3, scope: !1096)
!1122 = !DILocation(line: 342, column: 4, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 337, column: 17)
!1124 = !DILocation(line: 348, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 348, column: 8)
!1126 = !DILocation(line: 348, column: 8, scope: !1123)
!1127 = !DILocation(line: 349, column: 5, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 348, column: 19)
!1129 = !DILocation(line: 352, column: 5, scope: !1128)
!1130 = !DILocation(line: 354, column: 4, scope: !1123)
!1131 = !DILocation(line: 356, column: 3, scope: !1096)
!1132 = !DILocation(line: 359, column: 3, scope: !1096)
!1133 = !DILocation(line: 364, column: 6, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 364, column: 6)
!1135 = !DILocation(line: 364, column: 11, scope: !1134)
!1136 = !DILocation(line: 364, column: 6, scope: !1064)
!1137 = !DILocation(line: 365, column: 3, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 364, column: 41)
!1139 = !DILocation(line: 374, column: 2, scope: !1064)
!1140 = !DILocation(line: 374, column: 9, scope: !1064)
!1141 = !DILocation(line: 374, column: 26, scope: !1064)
!1142 = !DILocation(line: 374, column: 31, scope: !1064)
!1143 = !DILocation(line: 375, column: 11, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 374, column: 61)
!1145 = !DILocation(line: 375, column: 31, scope: !1144)
!1146 = !DILocation(line: 375, column: 3, scope: !1144)
!1147 = !DILocation(line: 381, column: 8, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 381, column: 8)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 375, column: 38)
!1150 = !DILocation(line: 381, column: 28, scope: !1148)
!1151 = !DILocation(line: 381, column: 34, scope: !1148)
!1152 = !DILocation(line: 381, column: 8, scope: !1149)
!1153 = !DILocation(line: 382, column: 12, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 381, column: 58)
!1155 = !DILocation(line: 382, column: 32, scope: !1154)
!1156 = !DILocation(line: 382, column: 10, scope: !1154)
!1157 = !DILocation(line: 383, column: 4, scope: !1154)
!1158 = !DILocation(line: 385, column: 12, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 383, column: 11)
!1160 = !DILocation(line: 385, column: 32, scope: !1159)
!1161 = !DILocation(line: 385, column: 10, scope: !1159)
!1162 = !DILocation(line: 390, column: 8, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 390, column: 8)
!1164 = !DILocation(line: 390, column: 39, scope: !1163)
!1165 = !DILocation(line: 390, column: 8, scope: !1149)
!1166 = !DILocation(line: 392, column: 5, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 391, column: 30)
!1168 = !DILocation(line: 396, column: 5, scope: !1167)
!1169 = !DILocation(line: 401, column: 43, scope: !1149)
!1170 = !DILocation(line: 401, column: 15, scope: !1149)
!1171 = !DILocation(line: 401, column: 13, scope: !1149)
!1172 = !DILocation(line: 402, column: 9, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 402, column: 8)
!1174 = !DILocation(line: 402, column: 8, scope: !1149)
!1175 = !DILocation(line: 406, column: 29, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 402, column: 19)
!1177 = !DILocation(line: 406, column: 12, scope: !1176)
!1178 = !DILocation(line: 406, column: 10, scope: !1176)
!1179 = !DILocation(line: 407, column: 5, scope: !1176)
!1180 = !DILocation(line: 412, column: 8, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 412, column: 8)
!1182 = !DILocation(line: 412, column: 20, scope: !1181)
!1183 = !DILocation(line: 412, column: 17, scope: !1181)
!1184 = !DILocation(line: 412, column: 8, scope: !1149)
!1185 = !DILocation(line: 413, column: 5, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 412, column: 29)
!1187 = !DILocation(line: 415, column: 4, scope: !1149)
!1188 = !DILocation(line: 421, column: 11, scope: !1149)
!1189 = !DILocation(line: 421, column: 31, scope: !1149)
!1190 = !DILocation(line: 421, column: 9, scope: !1149)
!1191 = !DILocation(line: 422, column: 8, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 422, column: 8)
!1193 = !DILocation(line: 422, column: 13, scope: !1192)
!1194 = !DILocation(line: 422, column: 8, scope: !1149)
!1195 = !DILocation(line: 423, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 422, column: 35)
!1197 = !DILocation(line: 433, column: 17, scope: !1149)
!1198 = !DILocation(line: 433, column: 37, scope: !1149)
!1199 = !DILocation(line: 433, column: 15, scope: !1149)
!1200 = !DILocation(line: 433, column: 13, scope: !1149)
!1201 = !DILocation(line: 434, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 434, column: 8)
!1203 = !DILocation(line: 434, column: 8, scope: !1149)
!1204 = !DILocation(line: 438, column: 10, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 434, column: 19)
!1206 = !DILocation(line: 439, column: 5, scope: !1205)
!1207 = !DILocation(line: 441, column: 4, scope: !1149)
!1208 = !DILocation(line: 445, column: 9, scope: !1149)
!1209 = !DILocation(line: 446, column: 4, scope: !1149)
!1210 = !DILocation(line: 451, column: 8, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 451, column: 8)
!1212 = !DILocation(line: 451, column: 8, scope: !1149)
!1213 = !DILocation(line: 453, column: 39, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 451, column: 21)
!1215 = !DILocation(line: 455, column: 11, scope: !1214)
!1216 = !DILocation(line: 456, column: 11, scope: !1214)
!1217 = !DILocation(line: 458, column: 11, scope: !1214)
!1218 = !DILocation(line: 459, column: 11, scope: !1214)
!1219 = !DILocation(line: 453, column: 9, scope: !1214)
!1220 = !DILocation(line: 452, column: 12, scope: !1214)
!1221 = !DILocation(line: 461, column: 9, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 461, column: 9)
!1223 = !DILocation(line: 461, column: 9, scope: !1214)
!1224 = !DILocation(line: 462, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 461, column: 31)
!1226 = !DILocation(line: 464, column: 30, scope: !1214)
!1227 = !DILocation(line: 464, column: 5, scope: !1214)
!1228 = !DILocation(line: 465, column: 4, scope: !1214)
!1229 = !DILocation(line: 467, column: 38, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 465, column: 11)
!1231 = !DILocation(line: 469, column: 10, scope: !1230)
!1232 = !DILocation(line: 470, column: 10, scope: !1230)
!1233 = !DILocation(line: 472, column: 10, scope: !1230)
!1234 = !DILocation(line: 473, column: 10, scope: !1230)
!1235 = !DILocation(line: 467, column: 9, scope: !1230)
!1236 = !DILocation(line: 466, column: 12, scope: !1230)
!1237 = !DILocation(line: 475, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 475, column: 9)
!1239 = !DILocation(line: 475, column: 9, scope: !1230)
!1240 = !DILocation(line: 476, column: 6, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 475, column: 31)
!1242 = !DILocation(line: 479, column: 44, scope: !1230)
!1243 = !DILocation(line: 479, column: 16, scope: !1230)
!1244 = !DILocation(line: 479, column: 14, scope: !1230)
!1245 = !DILocation(line: 480, column: 10, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 480, column: 9)
!1247 = !DILocation(line: 480, column: 9, scope: !1230)
!1248 = !DILocation(line: 481, column: 11, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 480, column: 20)
!1250 = !DILocation(line: 482, column: 6, scope: !1249)
!1251 = !DILocation(line: 485, column: 4, scope: !1149)
!1252 = !DILocation(line: 491, column: 9, scope: !1149)
!1253 = !DILocation(line: 492, column: 4, scope: !1149)
!1254 = !DILocation(line: 496, column: 4, scope: !1149)
!1255 = !DILocation(line: 499, column: 4, scope: !1149)
!1256 = distinct !{!1256, !1139, !1257, !1258, !1259}
!1257 = !DILocation(line: 501, column: 2, scope: !1064)
!1258 = !{!"llvm.loop.mustprogress"}
!1259 = !{!"llvm.loop.unroll.disable"}
!1260 = !DILocation(line: 507, column: 9, scope: !1064)
!1261 = !DILocation(line: 507, column: 26, scope: !1064)
!1262 = !DILocation(line: 507, column: 7, scope: !1064)
!1263 = !DILocation(line: 507, column: 2, scope: !1064)
!1264 = !DILocation(line: 509, column: 1, scope: !1064)
!1265 = !DILocation(line: 512, column: 10, scope: !1064)
!1266 = !DILocation(line: 512, column: 2, scope: !1064)
!1267 = !DILocation(line: 517, column: 8, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 512, column: 16)
!1269 = !DILocation(line: 518, column: 3, scope: !1268)
!1270 = !DILocation(line: 524, column: 8, scope: !1268)
!1271 = !DILocation(line: 525, column: 3, scope: !1268)
!1272 = !DILocation(line: 531, column: 3, scope: !1268)
!1273 = !DILocation(line: 534, column: 17, scope: !1064)
!1274 = !DILocation(line: 534, column: 3, scope: !1064)
!1275 = !DILocation(line: 534, column: 15, scope: !1064)
!1276 = !DILocation(line: 535, column: 6, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 535, column: 6)
!1278 = !DILocation(line: 535, column: 6, scope: !1064)
!1279 = !DILocation(line: 536, column: 18, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 535, column: 19)
!1281 = !DILocation(line: 536, column: 4, scope: !1280)
!1282 = !DILocation(line: 536, column: 16, scope: !1280)
!1283 = !DILocation(line: 537, column: 2, scope: !1280)
!1284 = !DILocation(line: 538, column: 2, scope: !1064)
!1285 = !DILocation(line: 539, column: 1, scope: !1064)
!1286 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1287, file: !1287, line: 298, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1287 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!43, !93}
!1290 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1291, file: !1291, line: 227, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!918, !31}
!1294 = !DISubprogram(name: "acpi_ut_get_descriptor_name", scope: !1291, file: !1291, line: 229, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1295 = !DISubprogram(name: "acpi_ns_get_type", scope: !1287, file: !1287, line: 379, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1068, !93}
!1298 = !DISubprogram(name: "acpi_ds_method_data_get_value", scope: !1299, file: !1299, line: 149, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1299 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!18, !33, !20, !160, !125}
!1302 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1291, file: !1291, line: 369, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !43}
!1305 = !DISubprogram(name: "acpi_ds_method_data_get_node", scope: !1299, file: !1299, line: 160, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!18, !33, !20, !160, !804}
!1308 = !DISubprogram(name: "acpi_ut_add_reference", scope: !1291, file: !1291, line: 367, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1309 = !DISubprogram(name: "acpi_ds_get_buffer_arguments", scope: !1299, file: !1299, line: 27, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!18, !43}
!1312 = !DISubprogram(name: "acpi_ds_get_package_arguments", scope: !1299, file: !1299, line: 29, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DISubprogram(name: "acpi_ex_read_data_from_field", scope: !1061, file: !1061, line: 151, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!18, !160, !43, !125}
