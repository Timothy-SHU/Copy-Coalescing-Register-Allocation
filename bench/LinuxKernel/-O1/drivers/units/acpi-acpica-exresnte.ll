; ModuleID = 'drivers/acpi/acpica/exresnte.c'
source_filename = "drivers/acpi/acpica/exresnte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }

@_acpi_module_name = internal constant [9 x i8] c"exresnte\00", align 1, !dbg !0
@.str = private unnamed_addr constant [38 x i8] c"No object attached to node [%4.4s] %p\00", align 1, !dbg !797
@.str.1 = private unnamed_addr constant [30 x i8] c"Object not a Package, type %s\00", align 1, !dbg !802
@.str.2 = private unnamed_addr constant [29 x i8] c"Object not a Buffer, type %s\00", align 1, !dbg !807
@.str.3 = private unnamed_addr constant [29 x i8] c"Object not a String, type %s\00", align 1, !dbg !812
@.str.4 = private unnamed_addr constant [30 x i8] c"Object not a Integer, type %s\00", align 1, !dbg !814
@.str.5 = private unnamed_addr constant [38 x i8] c"Untyped entry %p, no attached object!\00", align 1, !dbg !816
@.str.6 = private unnamed_addr constant [32 x i8] c"Unsupported Reference type 0x%X\00", align 1, !dbg !818
@.str.7 = private unnamed_addr constant [35 x i8] c"Node %p - Unknown object type 0x%X\00", align 1, !dbg !823

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_resolve_node_to_value(ptr noundef %object_ptr, ptr noundef %walk_state) #0 align 16 !dbg !839 {
entry:
  %retval = alloca i32, align 4
  %object_ptr.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %source_desc = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %entry_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object_ptr, ptr %object_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object_ptr.addr, metadata !844, metadata !DIExpression()), !dbg !852
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !845, metadata !DIExpression()), !dbg !853
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !854
  call void @llvm.dbg.declare(metadata ptr %status, metadata !846, metadata !DIExpression()), !dbg !855
  store i32 0, ptr %status, align 4, !dbg !855
  call void @llvm.lifetime.start.p0(i64 8, ptr %source_desc) #4, !dbg !856
  call void @llvm.dbg.declare(metadata ptr %source_desc, metadata !847, metadata !DIExpression()), !dbg !857
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !858
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !848, metadata !DIExpression()), !dbg !859
  store ptr null, ptr %obj_desc, align 8, !dbg !859
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %node, metadata !849, metadata !DIExpression()), !dbg !861
  call void @llvm.lifetime.start.p0(i64 4, ptr %entry_type) #4, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %entry_type, metadata !850, metadata !DIExpression()), !dbg !863
  %0 = load ptr, ptr %object_ptr.addr, align 8, !dbg !864
  %1 = load ptr, ptr %0, align 8, !dbg !865
  store ptr %1, ptr %node, align 8, !dbg !866
  %2 = load ptr, ptr %node, align 8, !dbg !867
  %call = call ptr @acpi_ns_get_attached_object(ptr noundef %2) #5, !dbg !868
  store ptr %call, ptr %source_desc, align 8, !dbg !869
  %3 = load ptr, ptr %node, align 8, !dbg !870
  %call1 = call i32 @acpi_ns_get_type(ptr noundef %3) #5, !dbg !871
  store i32 %call1, ptr %entry_type, align 4, !dbg !872
  %4 = load i32, ptr %entry_type, align 4, !dbg !873
  %cmp = icmp eq i32 %4, 21, !dbg !875
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !876

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %entry_type, align 4, !dbg !877
  %cmp2 = icmp eq i32 %5, 22, !dbg !878
  br i1 %cmp2, label %if.then, label %if.end, !dbg !879

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %node, align 8, !dbg !880
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 0, !dbg !880
  %7 = load ptr, ptr %object, align 8, !dbg !880
  %8 = ptrtoint ptr %7 to i64, !dbg !880
  %9 = inttoptr i64 %8 to ptr, !dbg !880
  store ptr %9, ptr %node, align 8, !dbg !882
  %10 = load ptr, ptr %node, align 8, !dbg !883
  %call3 = call ptr @acpi_ns_get_attached_object(ptr noundef %10) #5, !dbg !884
  store ptr %call3, ptr %source_desc, align 8, !dbg !885
  %11 = load ptr, ptr %node, align 8, !dbg !886
  %call4 = call i32 @acpi_ns_get_type(ptr noundef %11) #5, !dbg !887
  store i32 %call4, ptr %entry_type, align 4, !dbg !888
  %12 = load ptr, ptr %node, align 8, !dbg !889
  %13 = load ptr, ptr %object_ptr.addr, align 8, !dbg !890
  store ptr %12, ptr %13, align 8, !dbg !891
  br label %if.end, !dbg !892

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %14 = load i32, ptr %entry_type, align 4, !dbg !893
  %cmp5 = icmp eq i32 %14, 6, !dbg !895
  br i1 %cmp5, label %if.then11, label %lor.lhs.false6, !dbg !896

lor.lhs.false6:                                   ; preds = %if.end
  %15 = load i32, ptr %entry_type, align 4, !dbg !897
  %cmp7 = icmp eq i32 %15, 13, !dbg !898
  br i1 %cmp7, label %if.then11, label %lor.lhs.false8, !dbg !899

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %16 = load i32, ptr %entry_type, align 4, !dbg !900
  %cmp9 = icmp eq i32 %16, 8, !dbg !901
  br i1 %cmp9, label %if.then11, label %lor.lhs.false10, !dbg !902

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %17 = load ptr, ptr %node, align 8, !dbg !903
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %17, i32 0, i32 3, !dbg !904
  %18 = load i16, ptr %flags, align 2, !dbg !904
  %conv = zext i16 %18 to i32, !dbg !903
  %and = and i32 %conv, 12, !dbg !905
  %tobool = icmp ne i32 %and, 0, !dbg !905
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !906

if.then11:                                        ; preds = %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false6, %if.end
  store i32 0, ptr %retval, align 4, !dbg !907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !907

if.end12:                                         ; preds = %lor.lhs.false10
  %19 = load ptr, ptr %source_desc, align 8, !dbg !909
  %tobool13 = icmp ne ptr %19, null, !dbg !909
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !911

if.then14:                                        ; preds = %if.end12
  %20 = load ptr, ptr %node, align 8, !dbg !912
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %20, i32 0, i32 4, !dbg !912
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !912
  %21 = load ptr, ptr %node, align 8, !dbg !912
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 93, ptr noundef @.str, ptr noundef %arraydecay, ptr noundef %21) #5, !dbg !912
  store i32 12322, ptr %retval, align 4, !dbg !914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !914

if.end15:                                         ; preds = %if.end12
  %22 = load i32, ptr %entry_type, align 4, !dbg !915
  switch i32 %22, label %sw.default63 [
    i32 4, label %sw.bb
    i32 3, label %sw.bb26
    i32 2, label %sw.bb38
    i32 1, label %sw.bb46
    i32 14, label %sw.bb54
    i32 17, label %sw.bb54
    i32 18, label %sw.bb54
    i32 19, label %sw.bb54
    i32 9, label %sw.bb56
    i32 11, label %sw.bb56
    i32 12, label %sw.bb56
    i32 7, label %sw.bb56
    i32 10, label %sw.bb56
    i32 0, label %sw.bb57
    i32 20, label %sw.bb58
  ], !dbg !916

sw.bb:                                            ; preds = %if.end15
  %23 = load ptr, ptr %source_desc, align 8, !dbg !917
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %23, i32 0, i32 2, !dbg !920
  %24 = load i8, ptr %type, align 1, !dbg !920
  %conv16 = zext i8 %24 to i32, !dbg !917
  %cmp17 = icmp ne i32 %conv16, 4, !dbg !921
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !922

if.then19:                                        ; preds = %sw.bb
  %25 = load ptr, ptr %source_desc, align 8, !dbg !923
  %call20 = call ptr @acpi_ut_get_object_type_name(ptr noundef %25) #5, !dbg !923
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 106, ptr noundef @.str.1, ptr noundef %call20) #5, !dbg !923
  store i32 12291, ptr %retval, align 4, !dbg !925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !925

if.end21:                                         ; preds = %sw.bb
  %26 = load ptr, ptr %source_desc, align 8, !dbg !926
  %call22 = call i32 @acpi_ds_get_package_arguments(ptr noundef %26) #5, !dbg !927
  store i32 %call22, ptr %status, align 4, !dbg !928
  %27 = load i32, ptr %status, align 4, !dbg !929
  %tobool23 = icmp ne i32 %27, 0, !dbg !929
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !931

if.then24:                                        ; preds = %if.end21
  %28 = load ptr, ptr %source_desc, align 8, !dbg !932
  store ptr %28, ptr %obj_desc, align 8, !dbg !934
  %29 = load ptr, ptr %obj_desc, align 8, !dbg !935
  call void @acpi_ut_add_reference(ptr noundef %29) #5, !dbg !936
  br label %if.end25, !dbg !937

if.end25:                                         ; preds = %if.then24, %if.end21
  br label %sw.epilog64, !dbg !938

sw.bb26:                                          ; preds = %if.end15
  %30 = load ptr, ptr %source_desc, align 8, !dbg !939
  %type27 = getelementptr inbounds %struct.acpi_object_common, ptr %30, i32 0, i32 2, !dbg !941
  %31 = load i8, ptr %type27, align 1, !dbg !941
  %conv28 = zext i8 %31 to i32, !dbg !939
  %cmp29 = icmp ne i32 %conv28, 3, !dbg !942
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !943

if.then31:                                        ; preds = %sw.bb26
  %32 = load ptr, ptr %source_desc, align 8, !dbg !944
  %call32 = call ptr @acpi_ut_get_object_type_name(ptr noundef %32) #5, !dbg !944
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 124, ptr noundef @.str.2, ptr noundef %call32) #5, !dbg !944
  store i32 12291, ptr %retval, align 4, !dbg !946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !946

if.end33:                                         ; preds = %sw.bb26
  %33 = load ptr, ptr %source_desc, align 8, !dbg !947
  %call34 = call i32 @acpi_ds_get_buffer_arguments(ptr noundef %33) #5, !dbg !948
  store i32 %call34, ptr %status, align 4, !dbg !949
  %34 = load i32, ptr %status, align 4, !dbg !950
  %tobool35 = icmp ne i32 %34, 0, !dbg !950
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !952

if.then36:                                        ; preds = %if.end33
  %35 = load ptr, ptr %source_desc, align 8, !dbg !953
  store ptr %35, ptr %obj_desc, align 8, !dbg !955
  %36 = load ptr, ptr %obj_desc, align 8, !dbg !956
  call void @acpi_ut_add_reference(ptr noundef %36) #5, !dbg !957
  br label %if.end37, !dbg !958

if.end37:                                         ; preds = %if.then36, %if.end33
  br label %sw.epilog64, !dbg !959

sw.bb38:                                          ; preds = %if.end15
  %37 = load ptr, ptr %source_desc, align 8, !dbg !960
  %type39 = getelementptr inbounds %struct.acpi_object_common, ptr %37, i32 0, i32 2, !dbg !962
  %38 = load i8, ptr %type39, align 1, !dbg !962
  %conv40 = zext i8 %38 to i32, !dbg !960
  %cmp41 = icmp ne i32 %conv40, 2, !dbg !963
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !964

if.then43:                                        ; preds = %sw.bb38
  %39 = load ptr, ptr %source_desc, align 8, !dbg !965
  %call44 = call ptr @acpi_ut_get_object_type_name(ptr noundef %39) #5, !dbg !965
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 142, ptr noundef @.str.3, ptr noundef %call44) #5, !dbg !965
  store i32 12291, ptr %retval, align 4, !dbg !967
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !967

if.end45:                                         ; preds = %sw.bb38
  %40 = load ptr, ptr %source_desc, align 8, !dbg !968
  store ptr %40, ptr %obj_desc, align 8, !dbg !969
  %41 = load ptr, ptr %obj_desc, align 8, !dbg !970
  call void @acpi_ut_add_reference(ptr noundef %41) #5, !dbg !971
  br label %sw.epilog64, !dbg !972

sw.bb46:                                          ; preds = %if.end15
  %42 = load ptr, ptr %source_desc, align 8, !dbg !973
  %type47 = getelementptr inbounds %struct.acpi_object_common, ptr %42, i32 0, i32 2, !dbg !975
  %43 = load i8, ptr %type47, align 1, !dbg !975
  %conv48 = zext i8 %43 to i32, !dbg !973
  %cmp49 = icmp ne i32 %conv48, 1, !dbg !976
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !977

if.then51:                                        ; preds = %sw.bb46
  %44 = load ptr, ptr %source_desc, align 8, !dbg !978
  %call52 = call ptr @acpi_ut_get_object_type_name(ptr noundef %44) #5, !dbg !978
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 156, ptr noundef @.str.4, ptr noundef %call52) #5, !dbg !978
  store i32 12291, ptr %retval, align 4, !dbg !980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !980

if.end53:                                         ; preds = %sw.bb46
  %45 = load ptr, ptr %source_desc, align 8, !dbg !981
  store ptr %45, ptr %obj_desc, align 8, !dbg !982
  %46 = load ptr, ptr %obj_desc, align 8, !dbg !983
  call void @acpi_ut_add_reference(ptr noundef %46) #5, !dbg !984
  br label %sw.epilog64, !dbg !985

sw.bb54:                                          ; preds = %if.end15, %if.end15, %if.end15, %if.end15
  %47 = load ptr, ptr %walk_state.addr, align 8, !dbg !986
  %48 = load ptr, ptr %source_desc, align 8, !dbg !987
  %call55 = call i32 @acpi_ex_read_data_from_field(ptr noundef %47, ptr noundef %48, ptr noundef %obj_desc) #5, !dbg !988
  store i32 %call55, ptr %status, align 4, !dbg !989
  br label %sw.epilog64, !dbg !990

sw.bb56:                                          ; preds = %if.end15, %if.end15, %if.end15, %if.end15, %if.end15
  %49 = load ptr, ptr %source_desc, align 8, !dbg !991
  store ptr %49, ptr %obj_desc, align 8, !dbg !992
  %50 = load ptr, ptr %obj_desc, align 8, !dbg !993
  call void @acpi_ut_add_reference(ptr noundef %50) #5, !dbg !994
  br label %sw.epilog64, !dbg !995

sw.bb57:                                          ; preds = %if.end15
  %51 = load ptr, ptr %node, align 8, !dbg !996
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 199, ptr noundef @.str.5, ptr noundef %51) #5, !dbg !996
  store i32 12291, ptr %retval, align 4, !dbg !997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !997

sw.bb58:                                          ; preds = %if.end15
  %52 = load ptr, ptr %source_desc, align 8, !dbg !998
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %52, i32 0, i32 5, !dbg !999
  %53 = load i8, ptr %class, align 1, !dbg !999
  %conv59 = zext i8 %53 to i32, !dbg !998
  switch i32 %conv59, label %sw.default [
    i32 4, label %sw.bb60
    i32 2, label %sw.bb60
    i32 3, label %sw.bb60
  ], !dbg !1000

sw.bb60:                                          ; preds = %sw.bb58, %sw.bb58, %sw.bb58
  %54 = load ptr, ptr %source_desc, align 8, !dbg !1001
  store ptr %54, ptr %obj_desc, align 8, !dbg !1003
  %55 = load ptr, ptr %obj_desc, align 8, !dbg !1004
  call void @acpi_ut_add_reference(ptr noundef %55) #5, !dbg !1005
  br label %sw.epilog, !dbg !1006

sw.default:                                       ; preds = %sw.bb58
  %56 = load ptr, ptr %source_desc, align 8, !dbg !1007
  %class61 = getelementptr inbounds %struct.acpi_object_reference, ptr %56, i32 0, i32 5, !dbg !1007
  %57 = load i8, ptr %class61, align 1, !dbg !1007
  %conv62 = zext i8 %57 to i32, !dbg !1007
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 221, ptr noundef @.str.6, i32 noundef %conv62) #5, !dbg !1007
  store i32 12291, ptr %retval, align 4, !dbg !1008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1008

sw.epilog:                                        ; preds = %sw.bb60
  br label %sw.epilog64, !dbg !1009

sw.default63:                                     ; preds = %if.end15
  %58 = load ptr, ptr %node, align 8, !dbg !1010
  %59 = load i32, ptr %entry_type, align 4, !dbg !1010
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 233, ptr noundef @.str.7, ptr noundef %58, i32 noundef %59) #5, !dbg !1010
  store i32 12291, ptr %retval, align 4, !dbg !1011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1011

sw.epilog64:                                      ; preds = %sw.epilog, %sw.bb56, %sw.bb54, %if.end53, %if.end45, %if.end37, %if.end25
  %60 = load ptr, ptr %obj_desc, align 8, !dbg !1012
  %61 = load ptr, ptr %object_ptr.addr, align 8, !dbg !1013
  store ptr %60, ptr %61, align 8, !dbg !1014
  %62 = load i32, ptr %status, align 4, !dbg !1015
  store i32 %62, ptr %retval, align 4, !dbg !1015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1015

cleanup:                                          ; preds = %sw.epilog64, %sw.default63, %sw.default, %sw.bb57, %if.then51, %if.then43, %if.then31, %if.then19, %if.then14, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %entry_type) #4, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 8, ptr %source_desc) #4, !dbg !1016
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1016
  %63 = load i32, ptr %retval, align 4, !dbg !1016
  ret i32 %63, !dbg !1016
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1017 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1021 dso_local i32 @acpi_ns_get_type(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1024 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1029 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1033 dso_local i32 @acpi_ds_get_package_arguments(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1037 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1040 dso_local i32 @acpi_ds_get_buffer_arguments(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1041 dso_local i32 @acpi_ex_read_data_from_field(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!830, !831, !832, !833, !834, !835, !836, !837}
!llvm.ident = !{!838}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !828, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exresnte.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exresnte\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exresnte.ll drivers/acpi/acpica/exresnte.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !796, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exresnte.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74730c92938eff29ff28f56db6f499f4")
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
!17 = !{!18, !24, !26, !793, !25}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !28, line: 133, size: 384, elements: !29)
!28 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!29 = !{!30, !780, !781, !782, !783, !789, !790, !791, !792}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !27, file: !28, line: 134, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !33)
!33 = !{!34, !48, !64, !76, !90, !104, !113, !429, !446, !462, !475, !553, !565, !579, !589, !607, !629, !648, !667, !686, !699, !726, !743, !756, !770, !779}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !32, file: !6, line: 370, baseType: !35, size: 128)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !36)
!36 = !{!37, !38, !42, !43, !47}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !35, file: !6, line: 74, baseType: !31, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !35, file: !6, line: 74, baseType: !39, size: 8, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !35, file: !6, line: 74, baseType: !39, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !35, file: !6, line: 74, baseType: !44, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !35, file: !6, line: 74, baseType: !39, size: 8, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !32, file: !6, line: 371, baseType: !49, size: 192)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !60}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !6, line: 77, baseType: !31, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !6, line: 77, baseType: !39, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !6, line: 77, baseType: !39, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !6, line: 77, baseType: !44, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !6, line: 77, baseType: !39, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !49, file: !6, line: 77, baseType: !57, size: 24, offset: 104)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 3)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !49, file: !6, line: 78, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !63)
!63 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !32, file: !6, line: 372, baseType: !65, size: 256)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !75}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !6, line: 94, baseType: !31, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !6, line: 94, baseType: !39, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !6, line: 94, baseType: !39, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !6, line: 94, baseType: !44, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !6, line: 94, baseType: !39, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !6, line: 94, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !32, file: !6, line: 373, baseType: !77, size: 384)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !86, !87, !88, !89}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !77, file: !6, line: 98, baseType: !31, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !77, file: !6, line: 98, baseType: !39, size: 8, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !6, line: 98, baseType: !39, size: 8, offset: 72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !77, file: !6, line: 98, baseType: !44, size: 16, offset: 80)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !6, line: 98, baseType: !39, size: 8, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !77, file: !6, line: 98, baseType: !85, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !77, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !77, file: !6, line: 100, baseType: !85, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !77, file: !6, line: 101, baseType: !26, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !32, file: !6, line: 374, baseType: !91, size: 384)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98, !99, !101, !102, !103}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !91, file: !6, line: 105, baseType: !31, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !91, file: !6, line: 105, baseType: !39, size: 8, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !6, line: 105, baseType: !39, size: 8, offset: 72)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !91, file: !6, line: 105, baseType: !44, size: 16, offset: 80)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !6, line: 105, baseType: !39, size: 8, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !91, file: !6, line: 105, baseType: !26, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !91, file: !6, line: 106, baseType: !100, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !91, file: !6, line: 107, baseType: !85, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !91, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !91, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !32, file: !6, line: 375, baseType: !105, size: 192)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !105, file: !6, line: 119, baseType: !31, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !105, file: !6, line: 119, baseType: !39, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !105, file: !6, line: 119, baseType: !39, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !105, file: !6, line: 119, baseType: !44, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !6, line: 119, baseType: !39, size: 8, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !105, file: !6, line: 119, baseType: !25, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !32, file: !6, line: 376, baseType: !114, size: 448)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !115)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !426, !427, !428}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !6, line: 145, baseType: !31, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !6, line: 145, baseType: !39, size: 8, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !6, line: 145, baseType: !39, size: 8, offset: 72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !6, line: 145, baseType: !44, size: 16, offset: 80)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !6, line: 145, baseType: !39, size: 8, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !114, file: !6, line: 145, baseType: !39, size: 8, offset: 104)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !114, file: !6, line: 146, baseType: !39, size: 8, offset: 112)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !114, file: !6, line: 147, baseType: !39, size: 8, offset: 120)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !114, file: !6, line: 148, baseType: !31, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !114, file: !6, line: 149, baseType: !31, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !114, file: !6, line: 150, baseType: !85, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !114, file: !6, line: 154, baseType: !128, size: 64, offset: 320)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !6, line: 151, size: 64, elements: !129)
!129 = !{!130, !425}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !128, file: !6, line: 152, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !28, line: 248, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!18, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !137, line: 37, size: 9024, elements: !138)
!137 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !371, !372, !373, !374, !375, !379, !381, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !408, !409, !410, !411, !412, !413, !414, !415, !417, !423}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !137, line: 38, baseType: !135, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !136, file: !137, line: 39, baseType: !39, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !136, file: !137, line: 40, baseType: !39, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !136, file: !137, line: 41, baseType: !44, size: 16, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !136, file: !137, line: 42, baseType: !39, size: 8, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !136, file: !137, line: 43, baseType: !39, size: 8, offset: 104)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !136, file: !137, line: 44, baseType: !39, size: 8, offset: 112)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !136, file: !137, line: 45, baseType: !147, size: 16, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !44)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !136, file: !137, line: 46, baseType: !39, size: 8, offset: 144)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !136, file: !137, line: 47, baseType: !39, size: 8, offset: 152)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !136, file: !137, line: 48, baseType: !39, size: 8, offset: 160)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !136, file: !137, line: 49, baseType: !39, size: 8, offset: 168)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !136, file: !137, line: 50, baseType: !39, size: 8, offset: 176)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !136, file: !137, line: 51, baseType: !39, size: 8, offset: 184)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !136, file: !137, line: 52, baseType: !39, size: 8, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !136, file: !137, line: 53, baseType: !39, size: 8, offset: 200)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !136, file: !137, line: 54, baseType: !85, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !136, file: !137, line: 55, baseType: !20, size: 32, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !136, file: !137, line: 56, baseType: !20, size: 32, offset: 352)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !136, file: !137, line: 57, baseType: !20, size: 32, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !136, file: !137, line: 58, baseType: !20, size: 32, offset: 416)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !136, file: !137, line: 60, baseType: !162, size: 640, offset: 448)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !28, line: 909, size: 640, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !253, !254, !369, !370}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !162, file: !28, line: 910, baseType: !85, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !162, file: !28, line: 911, baseType: !85, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !162, file: !28, line: 912, baseType: !85, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !162, file: !28, line: 913, baseType: !85, size: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !162, file: !28, line: 914, baseType: !85, size: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !162, file: !28, line: 915, baseType: !170, size: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !28, line: 891, size: 1600, elements: !172)
!172 = !{!173, !193, !209}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !171, file: !28, line: 892, baseType: !174, size: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !28, line: 844, size: 448, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !192}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !28, line: 845, baseType: !170, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !174, file: !28, line: 845, baseType: !39, size: 8, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !28, line: 845, baseType: !39, size: 8, offset: 72)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !174, file: !28, line: 845, baseType: !44, size: 16, offset: 80)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !174, file: !28, line: 845, baseType: !85, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !28, line: 845, baseType: !170, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !174, file: !28, line: 845, baseType: !26, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !174, file: !28, line: 845, baseType: !184, size: 64, offset: 320)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !28, line: 732, size: 64, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !184, file: !28, line: 733, baseType: !61, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !184, file: !28, line: 734, baseType: !20, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !184, file: !28, line: 735, baseType: !73, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !184, file: !28, line: 736, baseType: !85, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !28, line: 737, baseType: !73, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !184, file: !28, line: 738, baseType: !170, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !174, file: !28, line: 845, baseType: !39, size: 8, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !171, file: !28, line: 893, baseType: !194, size: 640)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !28, line: 851, size: 640, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !28, line: 852, baseType: !170, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !194, file: !28, line: 852, baseType: !39, size: 8, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !28, line: 852, baseType: !39, size: 8, offset: 72)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !194, file: !28, line: 852, baseType: !44, size: 16, offset: 80)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !194, file: !28, line: 852, baseType: !85, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !28, line: 852, baseType: !170, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !194, file: !28, line: 852, baseType: !26, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !194, file: !28, line: 852, baseType: !184, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !194, file: !28, line: 852, baseType: !39, size: 8, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !194, file: !28, line: 852, baseType: !73, size: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !194, file: !28, line: 853, baseType: !85, size: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !194, file: !28, line: 854, baseType: !20, size: 32, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !28, line: 855, baseType: !20, size: 32, offset: 608)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !171, file: !28, line: 894, baseType: !210, size: 1600)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !28, line: 862, size: 1600, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !210, file: !28, line: 863, baseType: !170, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !210, file: !28, line: 863, baseType: !39, size: 8, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !28, line: 863, baseType: !39, size: 8, offset: 72)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !210, file: !28, line: 863, baseType: !44, size: 16, offset: 80)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !210, file: !28, line: 863, baseType: !85, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !28, line: 863, baseType: !170, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !210, file: !28, line: 863, baseType: !26, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !210, file: !28, line: 863, baseType: !184, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !210, file: !28, line: 863, baseType: !39, size: 8, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !210, file: !28, line: 863, baseType: !170, size: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !210, file: !28, line: 864, baseType: !170, size: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !210, file: !28, line: 865, baseType: !73, size: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !210, file: !28, line: 866, baseType: !39, size: 8, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !210, file: !28, line: 867, baseType: !73, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !210, file: !28, line: 868, baseType: !73, size: 64, offset: 768)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !210, file: !28, line: 869, baseType: !73, size: 64, offset: 832)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !210, file: !28, line: 870, baseType: !229, size: 32, offset: 896)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 32, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 4)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !210, file: !28, line: 871, baseType: !20, size: 32, offset: 928)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !210, file: !28, line: 872, baseType: !20, size: 32, offset: 960)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !210, file: !28, line: 873, baseType: !20, size: 32, offset: 992)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !210, file: !28, line: 874, baseType: !20, size: 32, offset: 1024)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !210, file: !28, line: 875, baseType: !20, size: 32, offset: 1056)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !210, file: !28, line: 876, baseType: !20, size: 32, offset: 1088)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !210, file: !28, line: 877, baseType: !20, size: 32, offset: 1120)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !210, file: !28, line: 878, baseType: !20, size: 32, offset: 1152)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !210, file: !28, line: 879, baseType: !20, size: 32, offset: 1184)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !210, file: !28, line: 880, baseType: !20, size: 32, offset: 1216)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !210, file: !28, line: 881, baseType: !20, size: 32, offset: 1248)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !210, file: !28, line: 882, baseType: !20, size: 32, offset: 1280)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !210, file: !28, line: 883, baseType: !20, size: 32, offset: 1312)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !210, file: !28, line: 884, baseType: !44, size: 16, offset: 1344)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !210, file: !28, line: 885, baseType: !39, size: 8, offset: 1360)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !210, file: !28, line: 886, baseType: !39, size: 8, offset: 1368)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !210, file: !28, line: 887, baseType: !39, size: 8, offset: 1376)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !210, file: !28, line: 888, baseType: !250, size: 160, offset: 1384)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 160, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 20)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !162, file: !28, line: 916, baseType: !26, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !162, file: !28, line: 917, baseType: !255, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !28, line: 679, size: 640, elements: !257)
!257 = !{!258, !266, !279, !288, !297, !310, !324, !336, !348}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !256, file: !28, line: 680, baseType: !259, size: 128)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !28, line: 575, size: 128, elements: !260)
!260 = !{!261, !262, !263, !264, !265}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !259, file: !28, line: 576, baseType: !25, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !259, file: !28, line: 576, baseType: !39, size: 8, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !259, file: !28, line: 576, baseType: !39, size: 8, offset: 72)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !259, file: !28, line: 576, baseType: !44, size: 16, offset: 80)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !259, file: !28, line: 576, baseType: !44, size: 16, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !256, file: !28, line: 681, baseType: !267, size: 384)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !28, line: 604, size: 384, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !28, line: 605, baseType: !25, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !267, file: !28, line: 605, baseType: !39, size: 8, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !28, line: 605, baseType: !39, size: 8, offset: 72)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !267, file: !28, line: 605, baseType: !44, size: 16, offset: 80)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !267, file: !28, line: 605, baseType: !44, size: 16, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !267, file: !28, line: 606, baseType: !44, size: 16, offset: 112)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !267, file: !28, line: 607, baseType: !170, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !267, file: !28, line: 608, baseType: !85, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !267, file: !28, line: 609, baseType: !85, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !267, file: !28, line: 610, baseType: !61, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !256, file: !28, line: 682, baseType: !280, size: 192)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !28, line: 582, size: 192, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !28, line: 583, baseType: !25, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !28, line: 583, baseType: !39, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !28, line: 583, baseType: !39, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !28, line: 583, baseType: !44, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !28, line: 583, baseType: !44, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !280, file: !28, line: 584, baseType: !31, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !256, file: !28, line: 683, baseType: !289, size: 192)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !28, line: 616, size: 192, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !28, line: 617, baseType: !25, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !28, line: 617, baseType: !39, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !28, line: 617, baseType: !39, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !28, line: 617, baseType: !44, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !28, line: 617, baseType: !44, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !289, file: !28, line: 618, baseType: !26, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !256, file: !28, line: 684, baseType: !298, size: 448)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !28, line: 621, size: 448, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !28, line: 622, baseType: !25, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !28, line: 622, baseType: !39, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !28, line: 622, baseType: !39, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !28, line: 622, baseType: !44, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !28, line: 622, baseType: !44, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !298, file: !28, line: 623, baseType: !20, size: 32, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !298, file: !28, line: 624, baseType: !170, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !298, file: !28, line: 625, baseType: !85, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !298, file: !28, line: 626, baseType: !85, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !298, file: !28, line: 627, baseType: !20, size: 32, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !256, file: !28, line: 685, baseType: !311, size: 512)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !28, line: 590, size: 512, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !28, line: 591, baseType: !25, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !28, line: 591, baseType: !39, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !28, line: 591, baseType: !39, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !28, line: 591, baseType: !44, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !28, line: 591, baseType: !44, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !311, file: !28, line: 592, baseType: !20, size: 32, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !311, file: !28, line: 593, baseType: !31, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !311, file: !28, line: 594, baseType: !31, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !311, file: !28, line: 595, baseType: !135, size: 64, offset: 320)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !311, file: !28, line: 596, baseType: !25, size: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !311, file: !28, line: 597, baseType: !20, size: 32, offset: 448)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !256, file: !28, line: 686, baseType: !325, size: 320)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !28, line: 634, size: 320, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !28, line: 635, baseType: !25, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !325, file: !28, line: 635, baseType: !39, size: 8, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !28, line: 635, baseType: !39, size: 8, offset: 72)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !325, file: !28, line: 635, baseType: !44, size: 16, offset: 80)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !325, file: !28, line: 635, baseType: !44, size: 16, offset: 96)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !325, file: !28, line: 636, baseType: !39, size: 8, offset: 112)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !325, file: !28, line: 637, baseType: !135, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !325, file: !28, line: 638, baseType: !31, size: 64, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !325, file: !28, line: 639, baseType: !61, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !256, file: !28, line: 687, baseType: !337, size: 640)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !28, line: 646, size: 640, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !28, line: 647, baseType: !25, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !28, line: 647, baseType: !39, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !28, line: 647, baseType: !39, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !337, file: !28, line: 647, baseType: !44, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !28, line: 647, baseType: !44, size: 16, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !337, file: !28, line: 648, baseType: !345, size: 512, offset: 128)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 8)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !256, file: !28, line: 688, baseType: !349, size: 320)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !28, line: 669, size: 320, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !349, file: !28, line: 670, baseType: !25, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !349, file: !28, line: 670, baseType: !39, size: 8, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !28, line: 670, baseType: !39, size: 8, offset: 72)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !349, file: !28, line: 670, baseType: !44, size: 16, offset: 80)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !28, line: 670, baseType: !44, size: 16, offset: 96)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !349, file: !28, line: 671, baseType: !39, size: 8, offset: 112)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !349, file: !28, line: 672, baseType: !26, size: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !349, file: !28, line: 673, baseType: !31, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !349, file: !28, line: 674, baseType: !360, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !28, line: 660, size: 128, elements: !362)
!362 = !{!363, !368}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !361, file: !28, line: 661, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !24, !20, !25}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !361, file: !28, line: 662, baseType: !25, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !162, file: !28, line: 918, baseType: !170, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !162, file: !28, line: 919, baseType: !20, size: 32, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !136, file: !137, line: 61, baseType: !20, size: 32, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !136, file: !137, line: 62, baseType: !20, size: 32, offset: 1120)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !136, file: !137, line: 63, baseType: !44, size: 16, offset: 1152)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !136, file: !137, line: 64, baseType: !39, size: 8, offset: 1168)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !136, file: !137, line: 66, baseType: !376, size: 2688, offset: 1216)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2688, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !136, file: !137, line: 67, baseType: !380, size: 3072, offset: 3904)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 3072, elements: !346)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !136, file: !137, line: 68, baseType: !382, size: 576, offset: 6976)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 576, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 9)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !136, file: !137, line: 69, baseType: !100, size: 64, offset: 7552)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !136, file: !137, line: 71, baseType: !85, size: 64, offset: 7616)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !136, file: !137, line: 72, baseType: !100, size: 64, offset: 7680)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !136, file: !137, line: 73, baseType: !255, size: 64, offset: 7744)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !136, file: !137, line: 74, baseType: !26, size: 64, offset: 7808)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !136, file: !137, line: 75, baseType: !31, size: 64, offset: 7872)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !136, file: !137, line: 76, baseType: !26, size: 64, offset: 7936)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !136, file: !137, line: 77, baseType: !170, size: 64, offset: 8000)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !136, file: !137, line: 78, baseType: !31, size: 64, offset: 8064)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !136, file: !137, line: 79, baseType: !26, size: 64, offset: 8128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !136, file: !137, line: 80, baseType: !73, size: 64, offset: 8192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !136, file: !137, line: 81, baseType: !170, size: 64, offset: 8256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !136, file: !137, line: 82, baseType: !398, size: 64, offset: 8320)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !28, line: 718, size: 128, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !400, file: !28, line: 722, baseType: !20, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !400, file: !28, line: 723, baseType: !20, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !28, line: 724, baseType: !44, size: 16, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !400, file: !28, line: 725, baseType: !39, size: 8, offset: 80)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !400, file: !28, line: 726, baseType: !39, size: 8, offset: 88)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !400, file: !28, line: 727, baseType: !39, size: 8, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !136, file: !137, line: 83, baseType: !170, size: 64, offset: 8384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !136, file: !137, line: 84, baseType: !31, size: 64, offset: 8448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !136, file: !137, line: 85, baseType: !255, size: 64, offset: 8512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !136, file: !137, line: 86, baseType: !31, size: 64, offset: 8576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !136, file: !137, line: 87, baseType: !255, size: 64, offset: 8640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !136, file: !137, line: 88, baseType: !170, size: 64, offset: 8704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !136, file: !137, line: 89, baseType: !170, size: 64, offset: 8768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !136, file: !137, line: 90, baseType: !416, size: 64, offset: 8832)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !136, file: !137, line: 91, baseType: !418, size: 64, offset: 8896)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !28, line: 652, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!18, !135, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !136, file: !137, line: 92, baseType: !424, size: 64, offset: 8960)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !28, line: 656, baseType: !132)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !128, file: !6, line: 153, baseType: !31, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !114, file: !6, line: 156, baseType: !20, size: 32, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !114, file: !6, line: 157, baseType: !147, size: 16, offset: 416)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !114, file: !6, line: 158, baseType: !39, size: 8, offset: 432)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !32, file: !6, line: 377, baseType: !430, size: 576)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !430, file: !6, line: 123, baseType: !31, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !430, file: !6, line: 123, baseType: !39, size: 8, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !6, line: 123, baseType: !39, size: 8, offset: 72)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !430, file: !6, line: 123, baseType: !44, size: 16, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !6, line: 123, baseType: !39, size: 8, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !430, file: !6, line: 123, baseType: !39, size: 8, offset: 104)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !430, file: !6, line: 124, baseType: !44, size: 16, offset: 112)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !430, file: !6, line: 125, baseType: !25, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !430, file: !6, line: 126, baseType: !61, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !430, file: !6, line: 127, baseType: !416, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !430, file: !6, line: 128, baseType: !31, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !6, line: 129, baseType: !31, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !430, file: !6, line: 130, baseType: !26, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !430, file: !6, line: 131, baseType: !39, size: 8, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !32, file: !6, line: 378, baseType: !447, size: 512)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !460, !461}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !447, file: !6, line: 135, baseType: !31, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !447, file: !6, line: 135, baseType: !39, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !6, line: 135, baseType: !39, size: 8, offset: 72)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !447, file: !6, line: 135, baseType: !44, size: 16, offset: 80)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !6, line: 135, baseType: !39, size: 8, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !447, file: !6, line: 135, baseType: !39, size: 8, offset: 104)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !447, file: !6, line: 136, baseType: !26, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !447, file: !6, line: 137, baseType: !31, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !6, line: 138, baseType: !31, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !447, file: !6, line: 139, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !61)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !447, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !447, file: !6, line: 141, baseType: !25, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !32, file: !6, line: 379, baseType: !463, size: 320)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !474}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !463, file: !6, line: 186, baseType: !31, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !6, line: 186, baseType: !39, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !6, line: 186, baseType: !39, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !6, line: 186, baseType: !44, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !6, line: 186, baseType: !39, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !463, file: !6, line: 186, baseType: !471, size: 128, offset: 128)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 2)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !463, file: !6, line: 186, baseType: !31, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !32, file: !6, line: 380, baseType: !476, size: 384)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !476, file: !6, line: 189, baseType: !31, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !476, file: !6, line: 189, baseType: !39, size: 8, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !6, line: 189, baseType: !39, size: 8, offset: 72)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !476, file: !6, line: 189, baseType: !44, size: 16, offset: 80)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !6, line: 189, baseType: !39, size: 8, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !476, file: !6, line: 190, baseType: !471, size: 128, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !476, file: !6, line: 190, baseType: !31, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !476, file: !6, line: 190, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !28, line: 480, size: 576, elements: !488)
!488 = !{!489, !490, !491, !492, !500, !515, !547, !548, !549, !550, !551, !552}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !487, file: !28, line: 481, baseType: !26, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !487, file: !28, line: 482, baseType: !486, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !28, line: 483, baseType: !486, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !487, file: !28, line: 484, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !28, line: 497, size: 256, elements: !495)
!495 = !{!496, !497, !498, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !494, file: !28, line: 498, baseType: !493, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !28, line: 499, baseType: !493, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !494, file: !28, line: 500, baseType: !486, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !494, file: !28, line: 501, baseType: !20, size: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !487, file: !28, line: 485, baseType: !501, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !28, line: 466, size: 320, elements: !503)
!503 = !{!504, !509, !510, !511, !512, !513, !514}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !502, file: !28, line: 467, baseType: !505, size: 128)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !28, line: 459, size: 128, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !505, file: !28, line: 460, baseType: !39, size: 8)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !505, file: !28, line: 461, baseType: !61, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !502, file: !28, line: 468, baseType: !505, size: 128, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !502, file: !28, line: 469, baseType: !44, size: 16, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !502, file: !28, line: 470, baseType: !39, size: 8, offset: 272)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !502, file: !28, line: 471, baseType: !39, size: 8, offset: 280)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !502, file: !28, line: 472, baseType: !39, size: 8, offset: 288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !502, file: !28, line: 473, baseType: !39, size: 8, offset: 296)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !487, file: !28, line: 486, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !28, line: 448, size: 192, elements: !518)
!518 = !{!519, !542, !543, !544, !545, !546}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !517, file: !28, line: 449, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !28, line: 438, size: 64, elements: !521)
!521 = !{!522, !523, !536}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !520, file: !28, line: 439, baseType: !26, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !520, file: !28, line: 440, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !28, line: 419, size: 256, elements: !526)
!526 = !{!527, !532, !533, !534, !535}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !525, file: !28, line: 420, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!20, !24, !20, !25}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !525, file: !28, line: 421, baseType: !25, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !525, file: !28, line: 422, baseType: !26, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !525, file: !28, line: 423, baseType: !39, size: 8, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !525, file: !28, line: 424, baseType: !39, size: 8, offset: 200)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !520, file: !28, line: 441, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !28, line: 429, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !538, file: !28, line: 430, baseType: !26, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !28, line: 431, baseType: !537, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !517, file: !28, line: 450, baseType: !501, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !28, line: 451, baseType: !39, size: 8, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !517, file: !28, line: 452, baseType: !39, size: 8, offset: 136)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !517, file: !28, line: 453, baseType: !39, size: 8, offset: 144)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !517, file: !28, line: 454, baseType: !39, size: 8, offset: 152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !487, file: !28, line: 487, baseType: !61, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !487, file: !28, line: 488, baseType: !20, size: 32, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !487, file: !28, line: 489, baseType: !44, size: 16, offset: 480)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !487, file: !28, line: 490, baseType: !44, size: 16, offset: 496)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !487, file: !28, line: 491, baseType: !39, size: 8, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !487, file: !28, line: 492, baseType: !39, size: 8, offset: 520)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !32, file: !6, line: 381, baseType: !554, size: 384)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !554, file: !6, line: 194, baseType: !31, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !554, file: !6, line: 194, baseType: !39, size: 8, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !554, file: !6, line: 194, baseType: !39, size: 8, offset: 72)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !554, file: !6, line: 194, baseType: !44, size: 16, offset: 80)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !6, line: 194, baseType: !39, size: 8, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !554, file: !6, line: 194, baseType: !471, size: 128, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !554, file: !6, line: 194, baseType: !31, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !554, file: !6, line: 194, baseType: !20, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !554, file: !6, line: 195, baseType: !20, size: 32, offset: 352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !32, file: !6, line: 382, baseType: !566, size: 384)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !6, line: 199, baseType: !31, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !6, line: 199, baseType: !39, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !6, line: 199, baseType: !39, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !6, line: 199, baseType: !44, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !6, line: 199, baseType: !39, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !566, file: !6, line: 201, baseType: !39, size: 8, offset: 104)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !566, file: !6, line: 202, baseType: !39, size: 8, offset: 112)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !566, file: !6, line: 203, baseType: !471, size: 128, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !566, file: !6, line: 203, baseType: !31, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !566, file: !6, line: 203, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !61)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !32, file: !6, line: 383, baseType: !580, size: 320)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !6, line: 207, baseType: !31, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !6, line: 207, baseType: !39, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !6, line: 207, baseType: !39, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !6, line: 207, baseType: !44, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !6, line: 207, baseType: !39, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !580, file: !6, line: 207, baseType: !471, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !580, file: !6, line: 207, baseType: !31, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !32, file: !6, line: 384, baseType: !590, size: 384)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !590, file: !6, line: 235, baseType: !31, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !590, file: !6, line: 235, baseType: !39, size: 8, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !590, file: !6, line: 235, baseType: !39, size: 8, offset: 72)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !590, file: !6, line: 235, baseType: !44, size: 16, offset: 80)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !590, file: !6, line: 235, baseType: !39, size: 8, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !590, file: !6, line: 235, baseType: !39, size: 8, offset: 104)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !590, file: !6, line: 235, baseType: !39, size: 8, offset: 112)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !590, file: !6, line: 235, baseType: !39, size: 8, offset: 120)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !590, file: !6, line: 235, baseType: !26, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !590, file: !6, line: 235, baseType: !20, size: 32, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !590, file: !6, line: 235, baseType: !20, size: 32, offset: 224)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !590, file: !6, line: 235, baseType: !20, size: 32, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !590, file: !6, line: 235, baseType: !39, size: 8, offset: 288)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !590, file: !6, line: 235, baseType: !39, size: 8, offset: 296)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !590, file: !6, line: 235, baseType: !31, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !32, file: !6, line: 385, baseType: !608, size: 576)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !6, line: 239, baseType: !31, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !6, line: 239, baseType: !39, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !6, line: 239, baseType: !39, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !6, line: 239, baseType: !44, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !6, line: 239, baseType: !39, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !608, file: !6, line: 239, baseType: !39, size: 8, offset: 104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !608, file: !6, line: 239, baseType: !39, size: 8, offset: 112)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !608, file: !6, line: 239, baseType: !39, size: 8, offset: 120)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !6, line: 239, baseType: !26, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !608, file: !6, line: 239, baseType: !20, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !608, file: !6, line: 239, baseType: !20, size: 32, offset: 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !608, file: !6, line: 239, baseType: !20, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !608, file: !6, line: 239, baseType: !39, size: 8, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !608, file: !6, line: 239, baseType: !39, size: 8, offset: 296)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !608, file: !6, line: 239, baseType: !44, size: 16, offset: 304)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !608, file: !6, line: 240, baseType: !31, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !608, file: !6, line: 241, baseType: !85, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !608, file: !6, line: 242, baseType: !44, size: 16, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !608, file: !6, line: 243, baseType: !85, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !32, file: !6, line: 386, baseType: !630, size: 384)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 264, baseType: !31, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 264, baseType: !39, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 264, baseType: !39, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 264, baseType: !44, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 264, baseType: !39, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 264, baseType: !39, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 264, baseType: !39, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 264, baseType: !39, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 264, baseType: !26, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 264, baseType: !20, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 264, baseType: !20, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 264, baseType: !20, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 264, baseType: !39, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 264, baseType: !39, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !630, file: !6, line: 264, baseType: !39, size: 8, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !630, file: !6, line: 265, baseType: !31, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !32, file: !6, line: 387, baseType: !649, size: 448)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !6, line: 247, baseType: !31, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !6, line: 247, baseType: !39, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !6, line: 247, baseType: !39, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !6, line: 247, baseType: !44, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !6, line: 247, baseType: !39, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !649, file: !6, line: 247, baseType: !39, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !649, file: !6, line: 247, baseType: !39, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !649, file: !6, line: 247, baseType: !39, size: 8, offset: 120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !6, line: 247, baseType: !26, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !649, file: !6, line: 247, baseType: !20, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !649, file: !6, line: 247, baseType: !20, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !6, line: 247, baseType: !20, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !649, file: !6, line: 247, baseType: !39, size: 8, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !649, file: !6, line: 247, baseType: !39, size: 8, offset: 296)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !649, file: !6, line: 247, baseType: !31, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !649, file: !6, line: 248, baseType: !31, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !32, file: !6, line: 388, baseType: !668, size: 448)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !6, line: 252, baseType: !31, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !6, line: 252, baseType: !39, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !6, line: 252, baseType: !39, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !6, line: 252, baseType: !44, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !6, line: 252, baseType: !39, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !668, file: !6, line: 252, baseType: !39, size: 8, offset: 104)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !668, file: !6, line: 252, baseType: !39, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !668, file: !6, line: 252, baseType: !39, size: 8, offset: 120)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !668, file: !6, line: 252, baseType: !26, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !668, file: !6, line: 252, baseType: !20, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !668, file: !6, line: 252, baseType: !20, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !6, line: 252, baseType: !20, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !668, file: !6, line: 252, baseType: !39, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !668, file: !6, line: 252, baseType: !39, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !668, file: !6, line: 257, baseType: !31, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !668, file: !6, line: 258, baseType: !31, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !32, file: !6, line: 389, baseType: !687, size: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !687, file: !6, line: 275, baseType: !31, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !6, line: 275, baseType: !39, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !6, line: 275, baseType: !39, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !687, file: !6, line: 275, baseType: !44, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !6, line: 275, baseType: !39, size: 8, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !6, line: 275, baseType: !26, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !687, file: !6, line: 276, baseType: !20, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !687, file: !6, line: 277, baseType: !364, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !687, file: !6, line: 278, baseType: !25, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !6, line: 279, baseType: !471, size: 128, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !32, file: !6, line: 390, baseType: !700, size: 576)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !715, !716, !717, !718, !724, !725}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !700, file: !6, line: 283, baseType: !31, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !6, line: 283, baseType: !39, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !6, line: 283, baseType: !39, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !700, file: !6, line: 283, baseType: !44, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !6, line: 283, baseType: !39, size: 8, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !700, file: !6, line: 283, baseType: !39, size: 8, offset: 104)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !700, file: !6, line: 284, baseType: !39, size: 8, offset: 112)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !700, file: !6, line: 285, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!18, !20, !459, !20, !714, !25, !25}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !6, line: 286, baseType: !26, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !700, file: !6, line: 287, baseType: !25, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !700, file: !6, line: 288, baseType: !25, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !700, file: !6, line: 289, baseType: !719, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!18, !24, !20, !25, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !700, file: !6, line: 290, baseType: !31, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !6, line: 291, baseType: !31, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !32, file: !6, line: 391, baseType: !727, size: 512)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !727, file: !6, line: 310, baseType: !31, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !6, line: 310, baseType: !39, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !6, line: 310, baseType: !39, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !727, file: !6, line: 310, baseType: !44, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !6, line: 310, baseType: !39, size: 8, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !727, file: !6, line: 310, baseType: !39, size: 8, offset: 104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !727, file: !6, line: 311, baseType: !39, size: 8, offset: 112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !727, file: !6, line: 312, baseType: !39, size: 8, offset: 120)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !727, file: !6, line: 313, baseType: !25, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !6, line: 314, baseType: !26, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !727, file: !6, line: 315, baseType: !100, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !727, file: !6, line: 316, baseType: !85, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !727, file: !6, line: 317, baseType: !85, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !6, line: 318, baseType: !20, size: 32, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !32, file: !6, line: 392, baseType: !744, size: 448)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !6, line: 343, baseType: !31, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !6, line: 343, baseType: !39, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !6, line: 343, baseType: !39, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !6, line: 343, baseType: !44, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !6, line: 343, baseType: !39, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !744, file: !6, line: 343, baseType: !26, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !744, file: !6, line: 344, baseType: !26, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !744, file: !6, line: 345, baseType: !25, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !744, file: !6, line: 346, baseType: !85, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !744, file: !6, line: 347, baseType: !20, size: 32, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !32, file: !6, line: 393, baseType: !757, size: 256)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !769}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !757, file: !6, line: 353, baseType: !31, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !6, line: 353, baseType: !39, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !6, line: 353, baseType: !39, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !757, file: !6, line: 353, baseType: !44, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !6, line: 353, baseType: !39, size: 8, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !757, file: !6, line: 353, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !24, !25}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !757, file: !6, line: 354, baseType: !25, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !32, file: !6, line: 394, baseType: !771, size: 192)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !771, file: !6, line: 360, baseType: !31, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !771, file: !6, line: 360, baseType: !39, size: 8, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !6, line: 360, baseType: !39, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !771, file: !6, line: 360, baseType: !44, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !6, line: 360, baseType: !39, size: 8, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !771, file: !6, line: 360, baseType: !31, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !32, file: !6, line: 401, baseType: !27, size: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !27, file: !28, line: 135, baseType: !39, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !28, line: 136, baseType: !39, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !27, file: !28, line: 137, baseType: !44, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !28, line: 138, baseType: !784, size: 32, offset: 96)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !785, line: 328, size: 32, elements: !786)
!785 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !784, file: !785, line: 329, baseType: !20, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !784, file: !785, line: 330, baseType: !229, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !27, file: !28, line: 139, baseType: !26, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !27, file: !28, line: 140, baseType: !26, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !27, file: !28, line: 141, baseType: !26, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !27, file: !28, line: 142, baseType: !147, size: 16, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !794, line: 42, baseType: !795)
!794 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!795 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!796 = !{!797, !802, !807, !812, !814, !816, !818, !823, !0}
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !799, isLocal: true, isDefinition: true)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 304, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 38)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !804, isLocal: true, isDefinition: true)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 240, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 30)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !809, isLocal: true, isDefinition: true)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 232, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 29)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !809, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !804, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !799, isLocal: true, isDefinition: true)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 221, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 32)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !825, isLocal: true, isDefinition: true)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 280, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 35)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 72, elements: !383)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!830 = !{i32 7, !"Dwarf Version", i32 5}
!831 = !{i32 2, !"Debug Info Version", i32 3}
!832 = !{i32 1, !"wchar_size", i32 2}
!833 = !{i32 8, !"cf-protection-branch", i32 1}
!834 = !{i32 4, !"function_return_thunk_extern", i32 1}
!835 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!836 = !{i32 1, !"Code Model", i32 2}
!837 = !{i32 1, !"override-stack-alignment", i32 8}
!838 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!839 = distinct !DISubprogram(name: "acpi_ex_resolve_node_to_value", scope: !3, file: !3, line: 45, type: !840, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !843)
!840 = !DISubroutineType(types: !841)
!841 = !{!18, !842, !135}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!843 = !{!844, !845, !846, !847, !848, !849, !850}
!844 = !DILocalVariable(name: "object_ptr", arg: 1, scope: !839, file: !3, line: 45, type: !842)
!845 = !DILocalVariable(name: "walk_state", arg: 2, scope: !839, file: !3, line: 46, type: !135)
!846 = !DILocalVariable(name: "status", scope: !839, file: !3, line: 48, type: !18)
!847 = !DILocalVariable(name: "source_desc", scope: !839, file: !3, line: 49, type: !31)
!848 = !DILocalVariable(name: "obj_desc", scope: !839, file: !3, line: 50, type: !31)
!849 = !DILocalVariable(name: "node", scope: !839, file: !3, line: 51, type: !26)
!850 = !DILocalVariable(name: "entry_type", scope: !839, file: !3, line: 52, type: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!852 = !DILocation(line: 45, column: 60, scope: !839)
!853 = !DILocation(line: 46, column: 34, scope: !839)
!854 = !DILocation(line: 48, column: 2, scope: !839)
!855 = !DILocation(line: 48, column: 14, scope: !839)
!856 = !DILocation(line: 49, column: 2, scope: !839)
!857 = !DILocation(line: 49, column: 29, scope: !839)
!858 = !DILocation(line: 50, column: 2, scope: !839)
!859 = !DILocation(line: 50, column: 29, scope: !839)
!860 = !DILocation(line: 51, column: 2, scope: !839)
!861 = !DILocation(line: 51, column: 30, scope: !839)
!862 = !DILocation(line: 52, column: 2, scope: !839)
!863 = !DILocation(line: 52, column: 19, scope: !839)
!864 = !DILocation(line: 60, column: 10, scope: !839)
!865 = !DILocation(line: 60, column: 9, scope: !839)
!866 = !DILocation(line: 60, column: 7, scope: !839)
!867 = !DILocation(line: 61, column: 44, scope: !839)
!868 = !DILocation(line: 61, column: 16, scope: !839)
!869 = !DILocation(line: 61, column: 14, scope: !839)
!870 = !DILocation(line: 62, column: 45, scope: !839)
!871 = !DILocation(line: 62, column: 15, scope: !839)
!872 = !DILocation(line: 62, column: 13, scope: !839)
!873 = !DILocation(line: 68, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !839, file: !3, line: 68, column: 6)
!875 = !DILocation(line: 68, column: 18, scope: !874)
!876 = !DILocation(line: 68, column: 44, scope: !874)
!877 = !DILocation(line: 69, column: 7, scope: !874)
!878 = !DILocation(line: 69, column: 18, scope: !874)
!879 = !DILocation(line: 68, column: 6, scope: !839)
!880 = !DILocation(line: 73, column: 10, scope: !881)
!881 = distinct !DILexicalBlock(scope: !874, file: !3, line: 69, column: 52)
!882 = !DILocation(line: 73, column: 8, scope: !881)
!883 = !DILocation(line: 74, column: 45, scope: !881)
!884 = !DILocation(line: 74, column: 17, scope: !881)
!885 = !DILocation(line: 74, column: 15, scope: !881)
!886 = !DILocation(line: 75, column: 46, scope: !881)
!887 = !DILocation(line: 75, column: 16, scope: !881)
!888 = !DILocation(line: 75, column: 14, scope: !881)
!889 = !DILocation(line: 76, column: 17, scope: !881)
!890 = !DILocation(line: 76, column: 4, scope: !881)
!891 = !DILocation(line: 76, column: 15, scope: !881)
!892 = !DILocation(line: 77, column: 2, scope: !881)
!893 = !DILocation(line: 85, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !839, file: !3, line: 85, column: 6)
!895 = !DILocation(line: 85, column: 18, scope: !894)
!896 = !DILocation(line: 85, column: 39, scope: !894)
!897 = !DILocation(line: 86, column: 7, scope: !894)
!898 = !DILocation(line: 86, column: 18, scope: !894)
!899 = !DILocation(line: 86, column: 40, scope: !894)
!900 = !DILocation(line: 87, column: 7, scope: !894)
!901 = !DILocation(line: 87, column: 18, scope: !894)
!902 = !DILocation(line: 87, column: 39, scope: !894)
!903 = !DILocation(line: 88, column: 7, scope: !894)
!904 = !DILocation(line: 88, column: 13, scope: !894)
!905 = !DILocation(line: 88, column: 19, scope: !894)
!906 = !DILocation(line: 85, column: 6, scope: !839)
!907 = !DILocation(line: 89, column: 3, scope: !908)
!908 = distinct !DILexicalBlock(scope: !894, file: !3, line: 88, column: 63)
!909 = !DILocation(line: 92, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !839, file: !3, line: 92, column: 6)
!911 = !DILocation(line: 92, column: 6, scope: !839)
!912 = !DILocation(line: 93, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 92, column: 20)
!914 = !DILocation(line: 95, column: 3, scope: !913)
!915 = !DILocation(line: 102, column: 10, scope: !839)
!916 = !DILocation(line: 102, column: 2, scope: !839)
!917 = !DILocation(line: 105, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 105, column: 7)
!919 = distinct !DILexicalBlock(scope: !839, file: !3, line: 102, column: 22)
!920 = !DILocation(line: 105, column: 27, scope: !918)
!921 = !DILocation(line: 105, column: 32, scope: !918)
!922 = !DILocation(line: 105, column: 7, scope: !919)
!923 = !DILocation(line: 106, column: 4, scope: !924)
!924 = distinct !DILexicalBlock(scope: !918, file: !3, line: 105, column: 54)
!925 = !DILocation(line: 108, column: 4, scope: !924)
!926 = !DILocation(line: 111, column: 42, scope: !919)
!927 = !DILocation(line: 111, column: 12, scope: !919)
!928 = !DILocation(line: 111, column: 10, scope: !919)
!929 = !DILocation(line: 112, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !919, file: !3, line: 112, column: 7)
!931 = !DILocation(line: 112, column: 7, scope: !919)
!932 = !DILocation(line: 116, column: 15, scope: !933)
!933 = distinct !DILexicalBlock(scope: !930, file: !3, line: 112, column: 29)
!934 = !DILocation(line: 116, column: 13, scope: !933)
!935 = !DILocation(line: 117, column: 26, scope: !933)
!936 = !DILocation(line: 117, column: 4, scope: !933)
!937 = !DILocation(line: 118, column: 3, scope: !933)
!938 = !DILocation(line: 119, column: 3, scope: !919)
!939 = !DILocation(line: 123, column: 7, scope: !940)
!940 = distinct !DILexicalBlock(scope: !919, file: !3, line: 123, column: 7)
!941 = !DILocation(line: 123, column: 27, scope: !940)
!942 = !DILocation(line: 123, column: 32, scope: !940)
!943 = !DILocation(line: 123, column: 7, scope: !919)
!944 = !DILocation(line: 124, column: 4, scope: !945)
!945 = distinct !DILexicalBlock(scope: !940, file: !3, line: 123, column: 53)
!946 = !DILocation(line: 126, column: 4, scope: !945)
!947 = !DILocation(line: 129, column: 41, scope: !919)
!948 = !DILocation(line: 129, column: 12, scope: !919)
!949 = !DILocation(line: 129, column: 10, scope: !919)
!950 = !DILocation(line: 130, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !919, file: !3, line: 130, column: 7)
!952 = !DILocation(line: 130, column: 7, scope: !919)
!953 = !DILocation(line: 134, column: 15, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !3, line: 130, column: 29)
!955 = !DILocation(line: 134, column: 13, scope: !954)
!956 = !DILocation(line: 135, column: 26, scope: !954)
!957 = !DILocation(line: 135, column: 4, scope: !954)
!958 = !DILocation(line: 136, column: 3, scope: !954)
!959 = !DILocation(line: 137, column: 3, scope: !919)
!960 = !DILocation(line: 141, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !919, file: !3, line: 141, column: 7)
!962 = !DILocation(line: 141, column: 27, scope: !961)
!963 = !DILocation(line: 141, column: 32, scope: !961)
!964 = !DILocation(line: 141, column: 7, scope: !919)
!965 = !DILocation(line: 142, column: 4, scope: !966)
!966 = distinct !DILexicalBlock(scope: !961, file: !3, line: 141, column: 53)
!967 = !DILocation(line: 144, column: 4, scope: !966)
!968 = !DILocation(line: 149, column: 14, scope: !919)
!969 = !DILocation(line: 149, column: 12, scope: !919)
!970 = !DILocation(line: 150, column: 25, scope: !919)
!971 = !DILocation(line: 150, column: 3, scope: !919)
!972 = !DILocation(line: 151, column: 3, scope: !919)
!973 = !DILocation(line: 155, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !919, file: !3, line: 155, column: 7)
!975 = !DILocation(line: 155, column: 27, scope: !974)
!976 = !DILocation(line: 155, column: 32, scope: !974)
!977 = !DILocation(line: 155, column: 7, scope: !919)
!978 = !DILocation(line: 156, column: 4, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !3, line: 155, column: 54)
!980 = !DILocation(line: 158, column: 4, scope: !979)
!981 = !DILocation(line: 163, column: 14, scope: !919)
!982 = !DILocation(line: 163, column: 12, scope: !919)
!983 = !DILocation(line: 164, column: 25, scope: !919)
!984 = !DILocation(line: 164, column: 3, scope: !919)
!985 = !DILocation(line: 165, column: 3, scope: !919)
!986 = !DILocation(line: 177, column: 36, scope: !919)
!987 = !DILocation(line: 177, column: 48, scope: !919)
!988 = !DILocation(line: 177, column: 7, scope: !919)
!989 = !DILocation(line: 176, column: 10, scope: !919)
!990 = !DILocation(line: 179, column: 3, scope: !919)
!991 = !DILocation(line: 191, column: 14, scope: !919)
!992 = !DILocation(line: 191, column: 12, scope: !919)
!993 = !DILocation(line: 192, column: 25, scope: !919)
!994 = !DILocation(line: 192, column: 3, scope: !919)
!995 = !DILocation(line: 193, column: 3, scope: !919)
!996 = !DILocation(line: 199, column: 3, scope: !919)
!997 = !DILocation(line: 202, column: 3, scope: !919)
!998 = !DILocation(line: 206, column: 11, scope: !919)
!999 = !DILocation(line: 206, column: 34, scope: !919)
!1000 = !DILocation(line: 206, column: 3, scope: !919)
!1001 = !DILocation(line: 213, column: 15, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !919, file: !3, line: 206, column: 41)
!1003 = !DILocation(line: 213, column: 13, scope: !1002)
!1004 = !DILocation(line: 214, column: 26, scope: !1002)
!1005 = !DILocation(line: 214, column: 4, scope: !1002)
!1006 = !DILocation(line: 215, column: 4, scope: !1002)
!1007 = !DILocation(line: 221, column: 4, scope: !1002)
!1008 = !DILocation(line: 225, column: 4, scope: !1002)
!1009 = !DILocation(line: 227, column: 3, scope: !919)
!1010 = !DILocation(line: 233, column: 3, scope: !919)
!1011 = !DILocation(line: 237, column: 3, scope: !919)
!1012 = !DILocation(line: 243, column: 24, scope: !839)
!1013 = !DILocation(line: 243, column: 3, scope: !839)
!1014 = !DILocation(line: 243, column: 14, scope: !839)
!1015 = !DILocation(line: 244, column: 2, scope: !839)
!1016 = !DILocation(line: 245, column: 1, scope: !839)
!1017 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1018, file: !1018, line: 298, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!31, !26}
!1021 = !DISubprogram(name: "acpi_ns_get_type", scope: !1018, file: !1018, line: 379, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!851, !26}
!1024 = !DISubprogram(name: "acpi_error", scope: !1025, file: !1025, line: 901, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !1028, !20, !1028, null}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!1029 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !1030, file: !1030, line: 233, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!1028, !31}
!1033 = !DISubprogram(name: "acpi_ds_get_package_arguments", scope: !1034, file: !1034, line: 29, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1034 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!18, !31}
!1037 = !DISubprogram(name: "acpi_ut_add_reference", scope: !1030, file: !1030, line: 367, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !31}
!1040 = !DISubprogram(name: "acpi_ds_get_buffer_arguments", scope: !1034, file: !1034, line: 27, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DISubprogram(name: "acpi_ex_read_data_from_field", scope: !1042, file: !1042, line: 151, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1042 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!18, !135, !31, !100}
