; ModuleID = 'drivers/acpi/acpica/nssearch.c'
source_filename = "drivers/acpi/acpica/nssearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@_acpi_module_name = internal constant [9 x i8] c"nssearch\00", align 1, !dbg !0
@.str = private unnamed_addr constant [48 x i8] c"Null parameter: Node %p Name 0x%X ReturnNode %p\00", align 1, !dbg !792
@acpi_gbl_runtime_namespace_override = external dso_local global i8, align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_search_one_scope(i32 noundef %target_name, ptr noundef %parent_node, i32 noundef %type, ptr noundef %return_node) #0 align 16 !dbg !808 {
entry:
  %retval = alloca i32, align 4
  %target_name.addr = alloca i32, align 4
  %parent_node.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %return_node.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %target_name, ptr %target_name.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_name.addr, metadata !814, metadata !DIExpression()), !dbg !819
  store ptr %parent_node, ptr %parent_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_node.addr, metadata !815, metadata !DIExpression()), !dbg !820
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !816, metadata !DIExpression()), !dbg !821
  store ptr %return_node, ptr %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_node.addr, metadata !817, metadata !DIExpression()), !dbg !822
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #4, !dbg !823
  call void @llvm.dbg.declare(metadata ptr %node, metadata !818, metadata !DIExpression()), !dbg !824
  %0 = load ptr, ptr %parent_node.addr, align 8, !dbg !825
  %child = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 6, !dbg !826
  %1 = load ptr, ptr %child, align 8, !dbg !826
  store ptr %1, ptr %node, align 8, !dbg !827
  br label %while.cond, !dbg !828

while.cond:                                       ; preds = %if.end3, %entry
  %2 = load ptr, ptr %node, align 8, !dbg !829
  %tobool = icmp ne ptr %2, null, !dbg !828
  br i1 %tobool, label %while.body, label %while.end, !dbg !828

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %node, align 8, !dbg !830
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %3, i32 0, i32 4, !dbg !833
  %4 = load i32, ptr %name, align 4, !dbg !834
  %5 = load i32, ptr %target_name.addr, align 4, !dbg !835
  %cmp = icmp eq i32 %4, %5, !dbg !836
  br i1 %cmp, label %if.then, label %if.end3, !dbg !837

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %node, align 8, !dbg !838
  %call = call i32 @acpi_ns_get_type(ptr noundef %6) #5, !dbg !841
  %cmp1 = icmp eq i32 %call, 22, !dbg !842
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !843

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %node, align 8, !dbg !844
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 0, !dbg !844
  %8 = load ptr, ptr %object, align 8, !dbg !844
  %9 = ptrtoint ptr %8 to i64, !dbg !844
  %10 = inttoptr i64 %9 to ptr, !dbg !844
  store ptr %10, ptr %node, align 8, !dbg !846
  br label %if.end, !dbg !847

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load ptr, ptr %node, align 8, !dbg !848
  %12 = load ptr, ptr %return_node.addr, align 8, !dbg !849
  store ptr %11, ptr %12, align 8, !dbg !850
  store i32 0, ptr %retval, align 4, !dbg !851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !851

if.end3:                                          ; preds = %while.body
  %13 = load ptr, ptr %node, align 8, !dbg !852
  %peer = getelementptr inbounds %struct.acpi_namespace_node, ptr %13, i32 0, i32 7, !dbg !853
  %14 = load ptr, ptr %peer, align 8, !dbg !853
  store ptr %14, ptr %node, align 8, !dbg !854
  br label %while.cond, !dbg !828, !llvm.loop !855

while.end:                                        ; preds = %while.cond
  store i32 5, ptr %retval, align 4, !dbg !859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !859

cleanup:                                          ; preds = %while.end, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #4, !dbg !860
  %15 = load i32, ptr %retval, align 4, !dbg !860
  ret i32 %15, !dbg !860
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !861 dso_local i32 @acpi_ns_get_type(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_search_and_enter(i32 noundef %target_name, ptr noundef %walk_state, ptr noundef %node, i32 noundef %interpreter_mode, i32 noundef %type, i32 noundef %flags, ptr noundef %return_node) #0 align 16 !dbg !865 {
entry:
  %retval = alloca i32, align 4
  %target_name.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %interpreter_mode.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %return_node.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %new_node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %target_name, ptr %target_name.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_name.addr, metadata !870, metadata !DIExpression()), !dbg !879
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !871, metadata !DIExpression()), !dbg !880
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !872, metadata !DIExpression()), !dbg !881
  store i32 %interpreter_mode, ptr %interpreter_mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interpreter_mode.addr, metadata !873, metadata !DIExpression()), !dbg !882
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !874, metadata !DIExpression()), !dbg !883
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !875, metadata !DIExpression()), !dbg !884
  store ptr %return_node, ptr %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_node.addr, metadata !876, metadata !DIExpression()), !dbg !885
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !886
  call void @llvm.dbg.declare(metadata ptr %status, metadata !877, metadata !DIExpression()), !dbg !887
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_node) #4, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %new_node, metadata !878, metadata !DIExpression()), !dbg !889
  %0 = load ptr, ptr %node.addr, align 8, !dbg !890
  %tobool = icmp ne ptr %0, null, !dbg !890
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !892

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %target_name.addr, align 4, !dbg !893
  %tobool1 = icmp ne i32 %1, 0, !dbg !893
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !894

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %return_node.addr, align 8, !dbg !895
  %tobool3 = icmp ne ptr %2, null, !dbg !895
  br i1 %tobool3, label %if.end, label %if.then, !dbg !896

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %3 = load ptr, ptr %node.addr, align 8, !dbg !897
  %4 = load i32, ptr %target_name.addr, align 4, !dbg !897
  %5 = load ptr, ptr %return_node.addr, align 8, !dbg !897
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 266, ptr noundef @.str, ptr noundef %3, i32 noundef %4, ptr noundef %5) #5, !dbg !897
  store i32 4097, ptr %retval, align 4, !dbg !899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !899

if.end:                                           ; preds = %lor.lhs.false2
  %6 = ptrtoint ptr %target_name.addr to i64, !dbg !900
  %7 = inttoptr i64 %6 to ptr, !dbg !900
  call void @acpi_ut_repair_name(ptr noundef %7) #5, !dbg !901
  %8 = load ptr, ptr %return_node.addr, align 8, !dbg !902
  store ptr null, ptr %8, align 8, !dbg !903
  %9 = load i32, ptr %target_name.addr, align 4, !dbg !904
  %10 = load ptr, ptr %node.addr, align 8, !dbg !905
  %11 = load i32, ptr %type.addr, align 4, !dbg !906
  %12 = load ptr, ptr %return_node.addr, align 8, !dbg !907
  %call = call i32 @acpi_ns_search_one_scope(i32 noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12) #5, !dbg !908
  store i32 %call, ptr %status, align 4, !dbg !909
  %13 = load i32, ptr %status, align 4, !dbg !910
  %cmp = icmp ne i32 %13, 5, !dbg !912
  br i1 %cmp, label %if.then4, label %if.end21, !dbg !913

if.then4:                                         ; preds = %if.end
  %14 = load i32, ptr %status, align 4, !dbg !914
  %cmp5 = icmp eq i32 %14, 0, !dbg !917
  br i1 %cmp5, label %if.then6, label %if.end20, !dbg !918

if.then6:                                         ; preds = %if.then4
  %15 = load i32, ptr %flags.addr, align 4, !dbg !919
  %and = and i32 %15, 128, !dbg !922
  %tobool7 = icmp ne i32 %and, 0, !dbg !922
  br i1 %tobool7, label %if.then8, label %if.else14, !dbg !923

if.then8:                                         ; preds = %if.then6
  %16 = load ptr, ptr %return_node.addr, align 8, !dbg !924
  %17 = load ptr, ptr %16, align 8, !dbg !926
  call void @acpi_ns_delete_children(ptr noundef %17) #5, !dbg !927
  %18 = load i8, ptr @acpi_gbl_runtime_namespace_override, align 1, !dbg !928
  %tobool9 = icmp ne i8 %18, 0, !dbg !928
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !930

if.then10:                                        ; preds = %if.then8
  %19 = load ptr, ptr %return_node.addr, align 8, !dbg !931
  %20 = load ptr, ptr %19, align 8, !dbg !933
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %20, i32 0, i32 0, !dbg !934
  %21 = load ptr, ptr %object, align 8, !dbg !934
  call void @acpi_ut_remove_reference(ptr noundef %21) #5, !dbg !935
  %22 = load ptr, ptr %return_node.addr, align 8, !dbg !936
  %23 = load ptr, ptr %22, align 8, !dbg !937
  %object11 = getelementptr inbounds %struct.acpi_namespace_node, ptr %23, i32 0, i32 0, !dbg !938
  store ptr null, ptr %object11, align 8, !dbg !939
  %24 = load ptr, ptr %walk_state.addr, align 8, !dbg !940
  %owner_id = getelementptr inbounds %struct.acpi_walk_state, ptr %24, i32 0, i32 7, !dbg !941
  %25 = load i16, ptr %owner_id, align 8, !dbg !941
  %26 = load ptr, ptr %return_node.addr, align 8, !dbg !942
  %27 = load ptr, ptr %26, align 8, !dbg !943
  %owner_id12 = getelementptr inbounds %struct.acpi_namespace_node, ptr %27, i32 0, i32 8, !dbg !944
  store i16 %25, ptr %owner_id12, align 8, !dbg !945
  br label %if.end13, !dbg !946

if.else:                                          ; preds = %if.then8
  %28 = load ptr, ptr %return_node.addr, align 8, !dbg !947
  %29 = load ptr, ptr %28, align 8, !dbg !949
  call void @acpi_ns_remove_node(ptr noundef %29) #5, !dbg !950
  %30 = load ptr, ptr %return_node.addr, align 8, !dbg !951
  store ptr null, ptr %30, align 8, !dbg !952
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then10
  br label %if.end19, !dbg !953

if.else14:                                        ; preds = %if.then6
  %31 = load i32, ptr %flags.addr, align 4, !dbg !954
  %and15 = and i32 %31, 8, !dbg !956
  %tobool16 = icmp ne i32 %and15, 0, !dbg !956
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !957

if.then17:                                        ; preds = %if.else14
  store i32 7, ptr %status, align 4, !dbg !958
  br label %if.end18, !dbg !960

if.end18:                                         ; preds = %if.then17, %if.else14
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end13
  br label %if.end20, !dbg !961

if.end20:                                         ; preds = %if.end19, %if.then4
  %32 = load i32, ptr %status, align 4, !dbg !962
  store i32 %32, ptr %retval, align 4, !dbg !962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !962

if.end21:                                         ; preds = %if.end
  %33 = load i32, ptr %interpreter_mode.addr, align 4, !dbg !963
  %cmp22 = icmp ne i32 %33, 1, !dbg !965
  br i1 %cmp22, label %land.lhs.true, label %if.end30, !dbg !966

land.lhs.true:                                    ; preds = %if.end21
  %34 = load i32, ptr %flags.addr, align 4, !dbg !967
  %and23 = and i32 %34, 1, !dbg !968
  %tobool24 = icmp ne i32 %and23, 0, !dbg !968
  br i1 %tobool24, label %if.then25, label %if.end30, !dbg !969

if.then25:                                        ; preds = %land.lhs.true
  %35 = load i32, ptr %target_name.addr, align 4, !dbg !970
  %36 = load ptr, ptr %node.addr, align 8, !dbg !972
  %37 = load i32, ptr %type.addr, align 4, !dbg !973
  %38 = load ptr, ptr %return_node.addr, align 8, !dbg !974
  %call26 = call i32 @acpi_ns_search_parent_tree(i32 noundef %35, ptr noundef %36, i32 noundef %37, ptr noundef %38) #5, !dbg !975
  store i32 %call26, ptr %status, align 4, !dbg !976
  %39 = load i32, ptr %status, align 4, !dbg !977
  %tobool27 = icmp ne i32 %39, 0, !dbg !977
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !979

if.then28:                                        ; preds = %if.then25
  %40 = load i32, ptr %status, align 4, !dbg !980
  store i32 %40, ptr %retval, align 4, !dbg !980
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !980

if.end29:                                         ; preds = %if.then25
  br label %if.end30, !dbg !982

if.end30:                                         ; preds = %if.end29, %land.lhs.true, %if.end21
  %41 = load i32, ptr %interpreter_mode.addr, align 4, !dbg !983
  %cmp31 = icmp eq i32 %41, 3, !dbg !985
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !986

if.then32:                                        ; preds = %if.end30
  store i32 5, ptr %retval, align 4, !dbg !987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !987

if.end33:                                         ; preds = %if.end30
  %42 = load i32, ptr %target_name.addr, align 4, !dbg !989
  %call34 = call ptr @acpi_ns_create_node(i32 noundef %42) #5, !dbg !990
  store ptr %call34, ptr %new_node, align 8, !dbg !991
  %43 = load ptr, ptr %new_node, align 8, !dbg !992
  %tobool35 = icmp ne ptr %43, null, !dbg !992
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !994

if.then36:                                        ; preds = %if.end33
  store i32 4, ptr %retval, align 4, !dbg !995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !995

if.end37:                                         ; preds = %if.end33
  %44 = load i32, ptr %flags.addr, align 4, !dbg !997
  %and38 = and i32 %44, 64, !dbg !999
  %tobool39 = icmp ne i32 %and38, 0, !dbg !999
  br i1 %tobool39, label %if.then40, label %if.end43, !dbg !1000

if.then40:                                        ; preds = %if.end37
  %45 = load ptr, ptr %new_node, align 8, !dbg !1001
  %flags41 = getelementptr inbounds %struct.acpi_namespace_node, ptr %45, i32 0, i32 3, !dbg !1003
  %46 = load i16, ptr %flags41, align 2, !dbg !1004
  %conv = zext i16 %46 to i32, !dbg !1004
  %or = or i32 %conv, 2, !dbg !1004
  %conv42 = trunc i32 %or to i16, !dbg !1004
  store i16 %conv42, ptr %flags41, align 2, !dbg !1004
  br label %if.end43, !dbg !1005

if.end43:                                         ; preds = %if.then40, %if.end37
  %47 = load ptr, ptr %walk_state.addr, align 8, !dbg !1006
  %48 = load ptr, ptr %node.addr, align 8, !dbg !1007
  %49 = load ptr, ptr %new_node, align 8, !dbg !1008
  %50 = load i32, ptr %type.addr, align 4, !dbg !1009
  call void @acpi_ns_install_node(ptr noundef %47, ptr noundef %48, ptr noundef %49, i32 noundef %50) #5, !dbg !1010
  %51 = load ptr, ptr %new_node, align 8, !dbg !1011
  %52 = load ptr, ptr %return_node.addr, align 8, !dbg !1012
  store ptr %51, ptr %52, align 8, !dbg !1013
  store i32 0, ptr %retval, align 4, !dbg !1014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1014

cleanup:                                          ; preds = %if.end43, %if.then36, %if.then32, %if.then28, %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_node) #4, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1015
  %53 = load i32, ptr %retval, align 4, !dbg !1015
  ret i32 %53, !dbg !1015
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1016 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1021 dso_local void @acpi_ut_repair_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1025 dso_local void @acpi_ns_delete_children(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1028 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1031 dso_local void @acpi_ns_remove_node(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_search_parent_tree(i32 noundef %target_name, ptr noundef %node, i32 noundef %type, ptr noundef %return_node) #0 align 16 !dbg !1032 {
entry:
  %retval = alloca i32, align 4
  %target_name.addr = alloca i32, align 4
  %node.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %return_node.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %parent_node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %target_name, ptr %target_name.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_name.addr, metadata !1034, metadata !DIExpression()), !dbg !1040
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1035, metadata !DIExpression()), !dbg !1041
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1036, metadata !DIExpression()), !dbg !1042
  store ptr %return_node, ptr %return_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_node.addr, metadata !1037, metadata !DIExpression()), !dbg !1043
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1044
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1038, metadata !DIExpression()), !dbg !1045
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_node) #4, !dbg !1046
  call void @llvm.dbg.declare(metadata ptr %parent_node, metadata !1039, metadata !DIExpression()), !dbg !1047
  %0 = load ptr, ptr %node.addr, align 8, !dbg !1048
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %0, i32 0, i32 5, !dbg !1049
  %1 = load ptr, ptr %parent, align 8, !dbg !1049
  store ptr %1, ptr %parent_node, align 8, !dbg !1050
  %2 = load ptr, ptr %parent_node, align 8, !dbg !1051
  %tobool = icmp ne ptr %2, null, !dbg !1051
  br i1 %tobool, label %if.end, label %if.then, !dbg !1053

if.then:                                          ; preds = %entry
  store i32 5, ptr %retval, align 4, !dbg !1054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1054

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %type.addr, align 4, !dbg !1056
  %call = call i32 @acpi_ns_local(i32 noundef %3) #5, !dbg !1058
  %tobool1 = icmp ne i32 %call, 0, !dbg !1058
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1059

if.then2:                                         ; preds = %if.end
  store i32 5, ptr %retval, align 4, !dbg !1060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1060

if.end3:                                          ; preds = %if.end
  br label %while.cond, !dbg !1062

while.cond:                                       ; preds = %if.end8, %if.end3
  %4 = load ptr, ptr %parent_node, align 8, !dbg !1063
  %tobool4 = icmp ne ptr %4, null, !dbg !1062
  br i1 %tobool4, label %while.body, label %while.end, !dbg !1062

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %target_name.addr, align 4, !dbg !1064
  %6 = load ptr, ptr %parent_node, align 8, !dbg !1066
  %7 = load ptr, ptr %return_node.addr, align 8, !dbg !1067
  %call5 = call i32 @acpi_ns_search_one_scope(i32 noundef %5, ptr noundef %6, i32 noundef 0, ptr noundef %7) #5, !dbg !1068
  store i32 %call5, ptr %status, align 4, !dbg !1069
  %8 = load i32, ptr %status, align 4, !dbg !1070
  %tobool6 = icmp ne i32 %8, 0, !dbg !1070
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1072

if.then7:                                         ; preds = %while.body
  %9 = load i32, ptr %status, align 4, !dbg !1073
  store i32 %9, ptr %retval, align 4, !dbg !1073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1073

if.end8:                                          ; preds = %while.body
  %10 = load ptr, ptr %parent_node, align 8, !dbg !1075
  %parent9 = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 5, !dbg !1076
  %11 = load ptr, ptr %parent9, align 8, !dbg !1076
  store ptr %11, ptr %parent_node, align 8, !dbg !1077
  br label %while.cond, !dbg !1062, !llvm.loop !1078

while.end:                                        ; preds = %while.cond
  store i32 5, ptr %retval, align 4, !dbg !1080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1080

cleanup:                                          ; preds = %while.end, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_node) #4, !dbg !1081
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1081
  %12 = load i32, ptr %retval, align 4, !dbg !1081
  ret i32 %12, !dbg !1081
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1082 dso_local ptr @acpi_ns_create_node(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1085 dso_local void @acpi_ns_install_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1088 dso_local i32 @acpi_ns_local(i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!799, !800, !801, !802, !803, !804, !805, !806}
!llvm.ident = !{!807}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !797, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nssearch.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nssearch\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nssearch.ll drivers/acpi/acpica/nssearch.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !791, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nssearch.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45bf8b6475b96a6bc998c305470fa1b4")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !{!13, !788, !127, !62}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !15)
!15 = !{!16, !775, !776, !777, !778, !784, !785, !786, !787}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !14, file: !6, line: 134, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !19, line: 369, size: 576, elements: !20)
!19 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!20 = !{!21, !37, !53, !67, !81, !95, !105, !424, !441, !457, !470, !548, !560, !574, !584, !602, !624, !643, !662, !681, !694, !721, !738, !751, !765, !774}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !18, file: !19, line: 370, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !19, line: 73, size: 128, elements: !23)
!23 = !{!24, !25, !31, !32, !36}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !22, file: !19, line: 74, baseType: !17, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !27, line: 17, baseType: !28)
!27 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 72)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !22, file: !19, line: 74, baseType: !33, size: 16, offset: 80)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !27, line: 19, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !35)
!35 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !22, file: !19, line: 74, baseType: !26, size: 8, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !18, file: !19, line: 371, baseType: !38, size: 192)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !19, line: 76, size: 192, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !49}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !38, file: !19, line: 77, baseType: !17, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !19, line: 77, baseType: !26, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !19, line: 77, baseType: !26, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !38, file: !19, line: 77, baseType: !33, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !19, line: 77, baseType: !26, size: 8, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !38, file: !19, line: 77, baseType: !46, size: 24, offset: 104)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 3)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !19, line: 78, baseType: !50, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !27, line: 23, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !52)
!52 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !18, file: !19, line: 372, baseType: !54, size: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !19, line: 93, size: 256, elements: !55)
!55 = !{!56, !57, !58, !59, !60, !61, !64}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !54, file: !19, line: 94, baseType: !17, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !54, file: !19, line: 94, baseType: !26, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !19, line: 94, baseType: !26, size: 8, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !54, file: !19, line: 94, baseType: !33, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !19, line: 94, baseType: !26, size: 8, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !54, file: !19, line: 94, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !54, file: !19, line: 94, baseType: !65, size: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !27, line: 21, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !7)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !18, file: !19, line: 373, baseType: !68, size: 384)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !19, line: 97, size: 384, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !77, !78, !79, !80}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !19, line: 98, baseType: !17, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !19, line: 98, baseType: !26, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !19, line: 98, baseType: !26, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !19, line: 98, baseType: !33, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !19, line: 98, baseType: !26, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !19, line: 98, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !19, line: 98, baseType: !65, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !68, file: !19, line: 99, baseType: !65, size: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !68, file: !19, line: 100, baseType: !76, size: 64, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !68, file: !19, line: 101, baseType: !13, size: 64, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !18, file: !19, line: 374, baseType: !82, size: 384)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !19, line: 104, size: 384, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !92, !93, !94}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !19, line: 105, baseType: !17, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !19, line: 105, baseType: !26, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !19, line: 105, baseType: !26, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !19, line: 105, baseType: !33, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !19, line: 105, baseType: !26, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !82, file: !19, line: 105, baseType: !13, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !82, file: !19, line: 106, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !82, file: !19, line: 107, baseType: !76, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !82, file: !19, line: 108, baseType: !65, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !82, file: !19, line: 109, baseType: !65, size: 32, offset: 352)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !18, file: !19, line: 375, baseType: !96, size: 192)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !19, line: 118, size: 192, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !96, file: !19, line: 119, baseType: !17, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !96, file: !19, line: 119, baseType: !26, size: 8, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !96, file: !19, line: 119, baseType: !26, size: 8, offset: 72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !96, file: !19, line: 119, baseType: !33, size: 16, offset: 80)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !96, file: !19, line: 119, baseType: !26, size: 8, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !96, file: !19, line: 119, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !18, file: !19, line: 376, baseType: !106, size: 448)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !19, line: 144, size: 448, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !421, !422, !423}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !106, file: !19, line: 145, baseType: !17, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !106, file: !19, line: 145, baseType: !26, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !19, line: 145, baseType: !26, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !106, file: !19, line: 145, baseType: !33, size: 16, offset: 80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !19, line: 145, baseType: !26, size: 8, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !106, file: !19, line: 145, baseType: !26, size: 8, offset: 104)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !106, file: !19, line: 146, baseType: !26, size: 8, offset: 112)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !106, file: !19, line: 147, baseType: !26, size: 8, offset: 120)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !106, file: !19, line: 148, baseType: !17, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !106, file: !19, line: 149, baseType: !17, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !106, file: !19, line: 150, baseType: !76, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !106, file: !19, line: 154, baseType: !120, size: 64, offset: 320)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !19, line: 151, size: 64, elements: !121)
!121 = !{!122, !420}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !120, file: !19, line: 152, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !128, line: 421, baseType: !65)
!128 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !131, line: 37, size: 9024, elements: !132)
!131 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !366, !367, !368, !369, !370, !374, !376, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !403, !404, !405, !406, !407, !408, !409, !410, !412, !418}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !131, line: 38, baseType: !129, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !131, line: 39, baseType: !26, size: 8, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !130, file: !131, line: 40, baseType: !26, size: 8, offset: 72)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !130, file: !131, line: 41, baseType: !33, size: 16, offset: 80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !130, file: !131, line: 42, baseType: !26, size: 8, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !130, file: !131, line: 43, baseType: !26, size: 8, offset: 104)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !130, file: !131, line: 44, baseType: !26, size: 8, offset: 112)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !130, file: !131, line: 45, baseType: !141, size: 16, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !128, line: 445, baseType: !33)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !130, file: !131, line: 46, baseType: !26, size: 8, offset: 144)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !130, file: !131, line: 47, baseType: !26, size: 8, offset: 152)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !130, file: !131, line: 48, baseType: !26, size: 8, offset: 160)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !130, file: !131, line: 49, baseType: !26, size: 8, offset: 168)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !130, file: !131, line: 50, baseType: !26, size: 8, offset: 176)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !130, file: !131, line: 51, baseType: !26, size: 8, offset: 184)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !130, file: !131, line: 52, baseType: !26, size: 8, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !130, file: !131, line: 53, baseType: !26, size: 8, offset: 200)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !130, file: !131, line: 54, baseType: !76, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !130, file: !131, line: 55, baseType: !65, size: 32, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !130, file: !131, line: 56, baseType: !65, size: 32, offset: 352)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !130, file: !131, line: 57, baseType: !65, size: 32, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !130, file: !131, line: 58, baseType: !65, size: 32, offset: 416)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !130, file: !131, line: 60, baseType: !156, size: 640, offset: 448)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !247, !248, !364, !365}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !156, file: !6, line: 910, baseType: !76, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !156, file: !6, line: 911, baseType: !76, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !156, file: !6, line: 912, baseType: !76, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !156, file: !6, line: 913, baseType: !76, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !156, file: !6, line: 914, baseType: !76, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !156, file: !6, line: 915, baseType: !164, size: 64, offset: 320)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !166)
!166 = !{!167, !187, !203}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !165, file: !6, line: 892, baseType: !168, size: 448)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !186}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !6, line: 845, baseType: !164, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !6, line: 845, baseType: !26, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !6, line: 845, baseType: !26, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !168, file: !6, line: 845, baseType: !33, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !168, file: !6, line: 845, baseType: !76, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !6, line: 845, baseType: !164, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !6, line: 845, baseType: !13, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !168, file: !6, line: 845, baseType: !178, size: 64, offset: 320)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !178, file: !6, line: 733, baseType: !50, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !178, file: !6, line: 734, baseType: !65, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !178, file: !6, line: 735, baseType: !62, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !178, file: !6, line: 736, baseType: !76, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !6, line: 737, baseType: !62, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !178, file: !6, line: 738, baseType: !164, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !168, file: !6, line: 845, baseType: !26, size: 8, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !165, file: !6, line: 893, baseType: !188, size: 640)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !6, line: 852, baseType: !164, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !6, line: 852, baseType: !26, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !6, line: 852, baseType: !26, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !188, file: !6, line: 852, baseType: !33, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !6, line: 852, baseType: !76, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !6, line: 852, baseType: !164, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !188, file: !6, line: 852, baseType: !13, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !188, file: !6, line: 852, baseType: !178, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !188, file: !6, line: 852, baseType: !26, size: 8, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !188, file: !6, line: 852, baseType: !62, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !188, file: !6, line: 853, baseType: !76, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !188, file: !6, line: 854, baseType: !65, size: 32, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !188, file: !6, line: 855, baseType: !65, size: 32, offset: 608)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !165, file: !6, line: 894, baseType: !204, size: 1600)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !204, file: !6, line: 863, baseType: !164, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !6, line: 863, baseType: !26, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !6, line: 863, baseType: !26, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !204, file: !6, line: 863, baseType: !33, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !204, file: !6, line: 863, baseType: !76, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !6, line: 863, baseType: !164, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !204, file: !6, line: 863, baseType: !13, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !204, file: !6, line: 863, baseType: !178, size: 64, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !204, file: !6, line: 863, baseType: !26, size: 8, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !204, file: !6, line: 863, baseType: !164, size: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !204, file: !6, line: 864, baseType: !164, size: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !204, file: !6, line: 865, baseType: !62, size: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !204, file: !6, line: 866, baseType: !26, size: 8, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !204, file: !6, line: 867, baseType: !62, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !204, file: !6, line: 868, baseType: !62, size: 64, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !204, file: !6, line: 869, baseType: !62, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !204, file: !6, line: 870, baseType: !223, size: 32, offset: 896)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 32, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 4)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !204, file: !6, line: 871, baseType: !65, size: 32, offset: 928)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !204, file: !6, line: 872, baseType: !65, size: 32, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !204, file: !6, line: 873, baseType: !65, size: 32, offset: 992)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !204, file: !6, line: 874, baseType: !65, size: 32, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !204, file: !6, line: 875, baseType: !65, size: 32, offset: 1056)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !204, file: !6, line: 876, baseType: !65, size: 32, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !204, file: !6, line: 877, baseType: !65, size: 32, offset: 1120)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !204, file: !6, line: 878, baseType: !65, size: 32, offset: 1152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !204, file: !6, line: 879, baseType: !65, size: 32, offset: 1184)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !204, file: !6, line: 880, baseType: !65, size: 32, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !204, file: !6, line: 881, baseType: !65, size: 32, offset: 1248)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !204, file: !6, line: 882, baseType: !65, size: 32, offset: 1280)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !204, file: !6, line: 883, baseType: !65, size: 32, offset: 1312)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !204, file: !6, line: 884, baseType: !33, size: 16, offset: 1344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !204, file: !6, line: 885, baseType: !26, size: 8, offset: 1360)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !204, file: !6, line: 886, baseType: !26, size: 8, offset: 1368)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !204, file: !6, line: 887, baseType: !26, size: 8, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !204, file: !6, line: 888, baseType: !244, size: 160, offset: 1384)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 160, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 20)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !156, file: !6, line: 916, baseType: !13, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !156, file: !6, line: 917, baseType: !249, size: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !251)
!251 = !{!252, !260, !273, !282, !291, !304, !318, !330, !342}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !250, file: !6, line: 680, baseType: !253, size: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !254)
!254 = !{!255, !256, !257, !258, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !253, file: !6, line: 576, baseType: !104, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !253, file: !6, line: 576, baseType: !26, size: 8, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !6, line: 576, baseType: !26, size: 8, offset: 72)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !253, file: !6, line: 576, baseType: !33, size: 16, offset: 80)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !253, file: !6, line: 576, baseType: !33, size: 16, offset: 96)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !250, file: !6, line: 681, baseType: !261, size: 384)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !6, line: 605, baseType: !104, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !261, file: !6, line: 605, baseType: !26, size: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !6, line: 605, baseType: !26, size: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !261, file: !6, line: 605, baseType: !33, size: 16, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !261, file: !6, line: 605, baseType: !33, size: 16, offset: 96)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !261, file: !6, line: 606, baseType: !33, size: 16, offset: 112)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !261, file: !6, line: 607, baseType: !164, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !261, file: !6, line: 608, baseType: !76, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !261, file: !6, line: 609, baseType: !76, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !261, file: !6, line: 610, baseType: !50, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !250, file: !6, line: 682, baseType: !274, size: 192)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !6, line: 583, baseType: !104, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !6, line: 583, baseType: !26, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !6, line: 583, baseType: !26, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !6, line: 583, baseType: !33, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !274, file: !6, line: 583, baseType: !33, size: 16, offset: 96)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !274, file: !6, line: 584, baseType: !17, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !250, file: !6, line: 683, baseType: !283, size: 192)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !6, line: 617, baseType: !104, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !6, line: 617, baseType: !26, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !6, line: 617, baseType: !26, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !6, line: 617, baseType: !33, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !6, line: 617, baseType: !33, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !283, file: !6, line: 618, baseType: !13, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !250, file: !6, line: 684, baseType: !292, size: 448)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !293)
!293 = !{!294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !6, line: 622, baseType: !104, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !292, file: !6, line: 622, baseType: !26, size: 8, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !6, line: 622, baseType: !26, size: 8, offset: 72)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !292, file: !6, line: 622, baseType: !33, size: 16, offset: 80)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !292, file: !6, line: 622, baseType: !33, size: 16, offset: 96)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !292, file: !6, line: 623, baseType: !65, size: 32, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !292, file: !6, line: 624, baseType: !164, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !292, file: !6, line: 625, baseType: !76, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !292, file: !6, line: 626, baseType: !76, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !292, file: !6, line: 627, baseType: !65, size: 32, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !250, file: !6, line: 685, baseType: !305, size: 512)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !6, line: 591, baseType: !104, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !6, line: 591, baseType: !26, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !6, line: 591, baseType: !26, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !6, line: 591, baseType: !33, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !6, line: 591, baseType: !33, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !305, file: !6, line: 592, baseType: !65, size: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !305, file: !6, line: 593, baseType: !17, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !305, file: !6, line: 594, baseType: !17, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !305, file: !6, line: 595, baseType: !129, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !305, file: !6, line: 596, baseType: !104, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !305, file: !6, line: 597, baseType: !65, size: 32, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !250, file: !6, line: 686, baseType: !319, size: 320)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !6, line: 635, baseType: !104, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !6, line: 635, baseType: !26, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !6, line: 635, baseType: !26, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !6, line: 635, baseType: !33, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !6, line: 635, baseType: !33, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !319, file: !6, line: 636, baseType: !26, size: 8, offset: 112)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !319, file: !6, line: 637, baseType: !129, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !319, file: !6, line: 638, baseType: !17, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !319, file: !6, line: 639, baseType: !50, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !250, file: !6, line: 687, baseType: !331, size: 640)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !6, line: 647, baseType: !104, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !331, file: !6, line: 647, baseType: !26, size: 8, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !6, line: 647, baseType: !26, size: 8, offset: 72)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !331, file: !6, line: 647, baseType: !33, size: 16, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !6, line: 647, baseType: !33, size: 16, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !331, file: !6, line: 648, baseType: !339, size: 512, offset: 128)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 8)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !250, file: !6, line: 688, baseType: !343, size: 320)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !6, line: 670, baseType: !104, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !6, line: 670, baseType: !26, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !6, line: 670, baseType: !26, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !343, file: !6, line: 670, baseType: !33, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !6, line: 670, baseType: !33, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !343, file: !6, line: 671, baseType: !26, size: 8, offset: 112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !343, file: !6, line: 672, baseType: !13, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !343, file: !6, line: 673, baseType: !17, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !343, file: !6, line: 674, baseType: !354, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !356)
!356 = !{!357, !363}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !355, file: !6, line: 661, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !128, line: 1061, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362, !65, !104}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !128, line: 424, baseType: !104)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !355, file: !6, line: 662, baseType: !104, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !156, file: !6, line: 918, baseType: !164, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !156, file: !6, line: 919, baseType: !65, size: 32, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !130, file: !131, line: 61, baseType: !65, size: 32, offset: 1088)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !130, file: !131, line: 62, baseType: !65, size: 32, offset: 1120)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !130, file: !131, line: 63, baseType: !33, size: 16, offset: 1152)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !130, file: !131, line: 64, baseType: !26, size: 8, offset: 1168)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !130, file: !131, line: 66, baseType: !371, size: 2688, offset: 1216)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2688, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 7)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !130, file: !131, line: 67, baseType: !375, size: 3072, offset: 3904)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 3072, elements: !340)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !130, file: !131, line: 68, baseType: !377, size: 576, offset: 6976)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 576, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 9)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !130, file: !131, line: 69, baseType: !91, size: 64, offset: 7552)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !130, file: !131, line: 71, baseType: !76, size: 64, offset: 7616)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !130, file: !131, line: 72, baseType: !91, size: 64, offset: 7680)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !130, file: !131, line: 73, baseType: !249, size: 64, offset: 7744)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !130, file: !131, line: 74, baseType: !13, size: 64, offset: 7808)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !130, file: !131, line: 75, baseType: !17, size: 64, offset: 7872)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !130, file: !131, line: 76, baseType: !13, size: 64, offset: 7936)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !130, file: !131, line: 77, baseType: !164, size: 64, offset: 8000)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !130, file: !131, line: 78, baseType: !17, size: 64, offset: 8064)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !130, file: !131, line: 79, baseType: !13, size: 64, offset: 8128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !130, file: !131, line: 80, baseType: !62, size: 64, offset: 8192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !130, file: !131, line: 81, baseType: !164, size: 64, offset: 8256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !130, file: !131, line: 82, baseType: !393, size: 64, offset: 8320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !395, file: !6, line: 722, baseType: !65, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !395, file: !6, line: 723, baseType: !65, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !6, line: 724, baseType: !33, size: 16, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !395, file: !6, line: 725, baseType: !26, size: 8, offset: 80)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !395, file: !6, line: 726, baseType: !26, size: 8, offset: 88)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !395, file: !6, line: 727, baseType: !26, size: 8, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !130, file: !131, line: 83, baseType: !164, size: 64, offset: 8384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !130, file: !131, line: 84, baseType: !17, size: 64, offset: 8448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !130, file: !131, line: 85, baseType: !249, size: 64, offset: 8512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !130, file: !131, line: 86, baseType: !17, size: 64, offset: 8576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !130, file: !131, line: 87, baseType: !249, size: 64, offset: 8640)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !130, file: !131, line: 88, baseType: !164, size: 64, offset: 8704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !130, file: !131, line: 89, baseType: !164, size: 64, offset: 8768)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !130, file: !131, line: 90, baseType: !411, size: 64, offset: 8832)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !130, file: !131, line: 91, baseType: !413, size: 64, offset: 8896)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!127, !129, !417}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !130, file: !131, line: 92, baseType: !419, size: 64, offset: 8960)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !124)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !120, file: !19, line: 153, baseType: !17, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !106, file: !19, line: 156, baseType: !65, size: 32, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !106, file: !19, line: 157, baseType: !141, size: 16, offset: 416)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !106, file: !19, line: 158, baseType: !26, size: 8, offset: 432)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !18, file: !19, line: 377, baseType: !425, size: 576)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !19, line: 122, size: 576, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !425, file: !19, line: 123, baseType: !17, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !425, file: !19, line: 123, baseType: !26, size: 8, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !425, file: !19, line: 123, baseType: !26, size: 8, offset: 72)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !425, file: !19, line: 123, baseType: !33, size: 16, offset: 80)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !425, file: !19, line: 123, baseType: !26, size: 8, offset: 96)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !425, file: !19, line: 123, baseType: !26, size: 8, offset: 104)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !425, file: !19, line: 124, baseType: !33, size: 16, offset: 112)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !425, file: !19, line: 125, baseType: !104, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !425, file: !19, line: 126, baseType: !50, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !425, file: !19, line: 127, baseType: !411, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !425, file: !19, line: 128, baseType: !17, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !19, line: 129, baseType: !17, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !425, file: !19, line: 130, baseType: !13, size: 64, offset: 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !425, file: !19, line: 131, baseType: !26, size: 8, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !18, file: !19, line: 378, baseType: !442, size: 512)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !19, line: 134, size: 512, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !455, !456}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !442, file: !19, line: 135, baseType: !17, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !442, file: !19, line: 135, baseType: !26, size: 8, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !19, line: 135, baseType: !26, size: 8, offset: 72)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !442, file: !19, line: 135, baseType: !33, size: 16, offset: 80)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !19, line: 135, baseType: !26, size: 8, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !442, file: !19, line: 135, baseType: !26, size: 8, offset: 104)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !442, file: !19, line: 136, baseType: !13, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !442, file: !19, line: 137, baseType: !17, size: 64, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !442, file: !19, line: 138, baseType: !17, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !442, file: !19, line: 139, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !128, line: 129, baseType: !50)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !442, file: !19, line: 140, baseType: !65, size: 32, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !442, file: !19, line: 141, baseType: !104, size: 64, offset: 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !18, file: !19, line: 379, baseType: !458, size: 320)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !19, line: 185, size: 320, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !469}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !458, file: !19, line: 186, baseType: !17, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !458, file: !19, line: 186, baseType: !26, size: 8, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !458, file: !19, line: 186, baseType: !26, size: 8, offset: 72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !458, file: !19, line: 186, baseType: !33, size: 16, offset: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !19, line: 186, baseType: !26, size: 8, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !458, file: !19, line: 186, baseType: !466, size: 128, offset: 128)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 2)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !458, file: !19, line: 186, baseType: !17, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !18, file: !19, line: 380, baseType: !471, size: 384)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !19, line: 188, size: 384, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !471, file: !19, line: 189, baseType: !17, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !471, file: !19, line: 189, baseType: !26, size: 8, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !19, line: 189, baseType: !26, size: 8, offset: 72)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !471, file: !19, line: 189, baseType: !33, size: 16, offset: 80)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !19, line: 189, baseType: !26, size: 8, offset: 96)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !471, file: !19, line: 190, baseType: !466, size: 128, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !471, file: !19, line: 190, baseType: !17, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !471, file: !19, line: 190, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !483)
!483 = !{!484, !485, !486, !487, !495, !510, !542, !543, !544, !545, !546, !547}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !482, file: !6, line: 481, baseType: !13, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !482, file: !6, line: 482, baseType: !481, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !6, line: 483, baseType: !481, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !482, file: !6, line: 484, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !490)
!490 = !{!491, !492, !493, !494}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !489, file: !6, line: 498, baseType: !488, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !6, line: 499, baseType: !488, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !489, file: !6, line: 500, baseType: !481, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !489, file: !6, line: 501, baseType: !65, size: 32, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !482, file: !6, line: 485, baseType: !496, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !498)
!498 = !{!499, !504, !505, !506, !507, !508, !509}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !497, file: !6, line: 467, baseType: !500, size: 128)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !500, file: !6, line: 460, baseType: !26, size: 8)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !500, file: !6, line: 461, baseType: !50, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !497, file: !6, line: 468, baseType: !500, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !497, file: !6, line: 469, baseType: !33, size: 16, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !497, file: !6, line: 470, baseType: !26, size: 8, offset: 272)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !497, file: !6, line: 471, baseType: !26, size: 8, offset: 280)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !497, file: !6, line: 472, baseType: !26, size: 8, offset: 288)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !497, file: !6, line: 473, baseType: !26, size: 8, offset: 296)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !482, file: !6, line: 486, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !513)
!513 = !{!514, !537, !538, !539, !540, !541}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !512, file: !6, line: 449, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !516)
!516 = !{!517, !518, !531}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !515, file: !6, line: 439, baseType: !13, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !515, file: !6, line: 440, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !521)
!521 = !{!522, !527, !528, !529, !530}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !520, file: !6, line: 420, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !128, line: 1058, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!65, !362, !65, !104}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !520, file: !6, line: 421, baseType: !104, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !520, file: !6, line: 422, baseType: !13, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !520, file: !6, line: 423, baseType: !26, size: 8, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !520, file: !6, line: 424, baseType: !26, size: 8, offset: 200)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !515, file: !6, line: 441, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !533, file: !6, line: 430, baseType: !13, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !6, line: 431, baseType: !532, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !512, file: !6, line: 450, baseType: !496, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !512, file: !6, line: 451, baseType: !26, size: 8, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !512, file: !6, line: 452, baseType: !26, size: 8, offset: 136)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !512, file: !6, line: 453, baseType: !26, size: 8, offset: 144)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !512, file: !6, line: 454, baseType: !26, size: 8, offset: 152)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !482, file: !6, line: 487, baseType: !50, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !482, file: !6, line: 488, baseType: !65, size: 32, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !482, file: !6, line: 489, baseType: !33, size: 16, offset: 480)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !482, file: !6, line: 490, baseType: !33, size: 16, offset: 496)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !482, file: !6, line: 491, baseType: !26, size: 8, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !482, file: !6, line: 492, baseType: !26, size: 8, offset: 520)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !18, file: !19, line: 381, baseType: !549, size: 384)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !19, line: 193, size: 384, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558, !559}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !549, file: !19, line: 194, baseType: !17, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !549, file: !19, line: 194, baseType: !26, size: 8, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !549, file: !19, line: 194, baseType: !26, size: 8, offset: 72)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !549, file: !19, line: 194, baseType: !33, size: 16, offset: 80)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !19, line: 194, baseType: !26, size: 8, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !549, file: !19, line: 194, baseType: !466, size: 128, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !549, file: !19, line: 194, baseType: !17, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !549, file: !19, line: 194, baseType: !65, size: 32, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !549, file: !19, line: 195, baseType: !65, size: 32, offset: 352)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !18, file: !19, line: 382, baseType: !561, size: 384)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !19, line: 198, size: 384, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !561, file: !19, line: 199, baseType: !17, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !561, file: !19, line: 199, baseType: !26, size: 8, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !19, line: 199, baseType: !26, size: 8, offset: 72)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !561, file: !19, line: 199, baseType: !33, size: 16, offset: 80)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !19, line: 199, baseType: !26, size: 8, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !561, file: !19, line: 201, baseType: !26, size: 8, offset: 104)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !561, file: !19, line: 202, baseType: !26, size: 8, offset: 112)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !561, file: !19, line: 203, baseType: !466, size: 128, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !561, file: !19, line: 203, baseType: !17, size: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !561, file: !19, line: 203, baseType: !573, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !128, line: 128, baseType: !50)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !18, file: !19, line: 383, baseType: !575, size: 320)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !19, line: 206, size: 320, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !575, file: !19, line: 207, baseType: !17, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !575, file: !19, line: 207, baseType: !26, size: 8, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !19, line: 207, baseType: !26, size: 8, offset: 72)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !575, file: !19, line: 207, baseType: !33, size: 16, offset: 80)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !575, file: !19, line: 207, baseType: !26, size: 8, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !575, file: !19, line: 207, baseType: !466, size: 128, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !575, file: !19, line: 207, baseType: !17, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !18, file: !19, line: 384, baseType: !585, size: 384)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !19, line: 234, size: 384, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !585, file: !19, line: 235, baseType: !17, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !585, file: !19, line: 235, baseType: !26, size: 8, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !19, line: 235, baseType: !26, size: 8, offset: 72)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !585, file: !19, line: 235, baseType: !33, size: 16, offset: 80)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !19, line: 235, baseType: !26, size: 8, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !585, file: !19, line: 235, baseType: !26, size: 8, offset: 104)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !585, file: !19, line: 235, baseType: !26, size: 8, offset: 112)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !585, file: !19, line: 235, baseType: !26, size: 8, offset: 120)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !585, file: !19, line: 235, baseType: !13, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !585, file: !19, line: 235, baseType: !65, size: 32, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !585, file: !19, line: 235, baseType: !65, size: 32, offset: 224)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !585, file: !19, line: 235, baseType: !65, size: 32, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !585, file: !19, line: 235, baseType: !26, size: 8, offset: 288)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !585, file: !19, line: 235, baseType: !26, size: 8, offset: 296)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !585, file: !19, line: 235, baseType: !17, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !18, file: !19, line: 385, baseType: !603, size: 576)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !19, line: 238, size: 576, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !603, file: !19, line: 239, baseType: !17, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !603, file: !19, line: 239, baseType: !26, size: 8, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !19, line: 239, baseType: !26, size: 8, offset: 72)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !603, file: !19, line: 239, baseType: !33, size: 16, offset: 80)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !19, line: 239, baseType: !26, size: 8, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !603, file: !19, line: 239, baseType: !26, size: 8, offset: 104)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !603, file: !19, line: 239, baseType: !26, size: 8, offset: 112)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !603, file: !19, line: 239, baseType: !26, size: 8, offset: 120)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !19, line: 239, baseType: !13, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !603, file: !19, line: 239, baseType: !65, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !603, file: !19, line: 239, baseType: !65, size: 32, offset: 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !603, file: !19, line: 239, baseType: !65, size: 32, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !603, file: !19, line: 239, baseType: !26, size: 8, offset: 288)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !603, file: !19, line: 239, baseType: !26, size: 8, offset: 296)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !603, file: !19, line: 239, baseType: !33, size: 16, offset: 304)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !603, file: !19, line: 240, baseType: !17, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !603, file: !19, line: 241, baseType: !76, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !603, file: !19, line: 242, baseType: !33, size: 16, offset: 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !603, file: !19, line: 243, baseType: !76, size: 64, offset: 512)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !18, file: !19, line: 386, baseType: !625, size: 384)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !19, line: 263, size: 384, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !625, file: !19, line: 264, baseType: !17, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !625, file: !19, line: 264, baseType: !26, size: 8, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !625, file: !19, line: 264, baseType: !26, size: 8, offset: 72)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !625, file: !19, line: 264, baseType: !33, size: 16, offset: 80)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !19, line: 264, baseType: !26, size: 8, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !625, file: !19, line: 264, baseType: !26, size: 8, offset: 104)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !625, file: !19, line: 264, baseType: !26, size: 8, offset: 112)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !625, file: !19, line: 264, baseType: !26, size: 8, offset: 120)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !625, file: !19, line: 264, baseType: !13, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !625, file: !19, line: 264, baseType: !65, size: 32, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !625, file: !19, line: 264, baseType: !65, size: 32, offset: 224)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !625, file: !19, line: 264, baseType: !65, size: 32, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !625, file: !19, line: 264, baseType: !26, size: 8, offset: 288)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !625, file: !19, line: 264, baseType: !26, size: 8, offset: 296)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !625, file: !19, line: 264, baseType: !26, size: 8, offset: 304)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !625, file: !19, line: 265, baseType: !17, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !18, file: !19, line: 387, baseType: !644, size: 448)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !19, line: 246, size: 448, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !644, file: !19, line: 247, baseType: !17, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !644, file: !19, line: 247, baseType: !26, size: 8, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !19, line: 247, baseType: !26, size: 8, offset: 72)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !644, file: !19, line: 247, baseType: !33, size: 16, offset: 80)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !19, line: 247, baseType: !26, size: 8, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !644, file: !19, line: 247, baseType: !26, size: 8, offset: 104)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !644, file: !19, line: 247, baseType: !26, size: 8, offset: 112)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !644, file: !19, line: 247, baseType: !26, size: 8, offset: 120)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !644, file: !19, line: 247, baseType: !13, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !644, file: !19, line: 247, baseType: !65, size: 32, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !644, file: !19, line: 247, baseType: !65, size: 32, offset: 224)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !644, file: !19, line: 247, baseType: !65, size: 32, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !644, file: !19, line: 247, baseType: !26, size: 8, offset: 288)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !644, file: !19, line: 247, baseType: !26, size: 8, offset: 296)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !644, file: !19, line: 247, baseType: !17, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !644, file: !19, line: 248, baseType: !17, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !18, file: !19, line: 388, baseType: !663, size: 448)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !19, line: 251, size: 448, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !663, file: !19, line: 252, baseType: !17, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !663, file: !19, line: 252, baseType: !26, size: 8, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !663, file: !19, line: 252, baseType: !26, size: 8, offset: 72)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !663, file: !19, line: 252, baseType: !33, size: 16, offset: 80)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !19, line: 252, baseType: !26, size: 8, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !663, file: !19, line: 252, baseType: !26, size: 8, offset: 104)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !663, file: !19, line: 252, baseType: !26, size: 8, offset: 112)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !663, file: !19, line: 252, baseType: !26, size: 8, offset: 120)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !663, file: !19, line: 252, baseType: !13, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !663, file: !19, line: 252, baseType: !65, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !663, file: !19, line: 252, baseType: !65, size: 32, offset: 224)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !663, file: !19, line: 252, baseType: !65, size: 32, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !663, file: !19, line: 252, baseType: !26, size: 8, offset: 288)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !663, file: !19, line: 252, baseType: !26, size: 8, offset: 296)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !663, file: !19, line: 257, baseType: !17, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !663, file: !19, line: 258, baseType: !17, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !18, file: !19, line: 389, baseType: !682, size: 512)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !19, line: 274, size: 512, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !682, file: !19, line: 275, baseType: !17, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !19, line: 275, baseType: !26, size: 8, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !19, line: 275, baseType: !26, size: 8, offset: 72)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !682, file: !19, line: 275, baseType: !33, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !19, line: 275, baseType: !26, size: 8, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !682, file: !19, line: 275, baseType: !13, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !682, file: !19, line: 276, baseType: !65, size: 32, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !682, file: !19, line: 277, baseType: !358, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !682, file: !19, line: 278, baseType: !104, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !682, file: !19, line: 279, baseType: !466, size: 128, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !18, file: !19, line: 390, baseType: !695, size: 576)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !19, line: 282, size: 576, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !710, !711, !712, !713, !719, !720}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !695, file: !19, line: 283, baseType: !17, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !695, file: !19, line: 283, baseType: !26, size: 8, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !695, file: !19, line: 283, baseType: !26, size: 8, offset: 72)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !695, file: !19, line: 283, baseType: !33, size: 16, offset: 80)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !19, line: 283, baseType: !26, size: 8, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !695, file: !19, line: 283, baseType: !26, size: 8, offset: 104)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !695, file: !19, line: 284, baseType: !26, size: 8, offset: 112)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !695, file: !19, line: 285, baseType: !705, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !128, line: 1093, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!127, !65, !454, !65, !709, !104, !104}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !695, file: !19, line: 286, baseType: !13, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !695, file: !19, line: 287, baseType: !104, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !695, file: !19, line: 288, baseType: !104, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !695, file: !19, line: 289, baseType: !714, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !128, line: 1126, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!127, !362, !65, !104, !718}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !695, file: !19, line: 290, baseType: !17, size: 64, offset: 448)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !695, file: !19, line: 291, baseType: !17, size: 64, offset: 512)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !18, file: !19, line: 391, baseType: !722, size: 512)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !19, line: 309, size: 512, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !19, line: 310, baseType: !17, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !19, line: 310, baseType: !26, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !19, line: 310, baseType: !26, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !19, line: 310, baseType: !33, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !19, line: 310, baseType: !26, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !722, file: !19, line: 310, baseType: !26, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !722, file: !19, line: 311, baseType: !26, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !722, file: !19, line: 312, baseType: !26, size: 8, offset: 120)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !722, file: !19, line: 313, baseType: !104, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !19, line: 314, baseType: !13, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !722, file: !19, line: 315, baseType: !91, size: 64, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !722, file: !19, line: 316, baseType: !76, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !722, file: !19, line: 317, baseType: !76, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !722, file: !19, line: 318, baseType: !65, size: 32, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !18, file: !19, line: 392, baseType: !739, size: 448)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !19, line: 342, size: 448, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !739, file: !19, line: 343, baseType: !17, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !739, file: !19, line: 343, baseType: !26, size: 8, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !19, line: 343, baseType: !26, size: 8, offset: 72)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !739, file: !19, line: 343, baseType: !33, size: 16, offset: 80)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !739, file: !19, line: 343, baseType: !26, size: 8, offset: 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !739, file: !19, line: 343, baseType: !13, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !739, file: !19, line: 344, baseType: !13, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !739, file: !19, line: 345, baseType: !104, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !739, file: !19, line: 346, baseType: !76, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !739, file: !19, line: 347, baseType: !65, size: 32, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !18, file: !19, line: 393, baseType: !752, size: 256)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !19, line: 352, size: 256, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !764}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !752, file: !19, line: 353, baseType: !17, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !752, file: !19, line: 353, baseType: !26, size: 8, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !752, file: !19, line: 353, baseType: !26, size: 8, offset: 72)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !752, file: !19, line: 353, baseType: !33, size: 16, offset: 80)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !752, file: !19, line: 353, baseType: !26, size: 8, offset: 96)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !752, file: !19, line: 353, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !128, line: 1064, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !362, !104}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !752, file: !19, line: 354, baseType: !104, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !18, file: !19, line: 394, baseType: !766, size: 192)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !19, line: 359, size: 192, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !19, line: 360, baseType: !17, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !19, line: 360, baseType: !26, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !19, line: 360, baseType: !26, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !19, line: 360, baseType: !33, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !19, line: 360, baseType: !26, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !766, file: !19, line: 360, baseType: !17, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !18, file: !19, line: 401, baseType: !14, size: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !14, file: !6, line: 135, baseType: !26, size: 8, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !6, line: 136, baseType: !26, size: 8, offset: 72)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !14, file: !6, line: 137, baseType: !33, size: 16, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !6, line: 138, baseType: !779, size: 32, offset: 96)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !780, line: 328, size: 32, elements: !781)
!780 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !779, file: !780, line: 329, baseType: !65, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !779, file: !780, line: 330, baseType: !223, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !14, file: !6, line: 139, baseType: !13, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !14, file: !6, line: 140, baseType: !13, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !14, file: !6, line: 141, baseType: !13, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !14, file: !6, line: 142, baseType: !141, size: 16, offset: 320)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !789, line: 42, baseType: !790)
!789 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!790 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!791 = !{!792, !0}
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !3, line: 266, type: !794, isLocal: true, isDefinition: true)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 384, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 48)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 72, elements: !378)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!799 = !{i32 7, !"Dwarf Version", i32 5}
!800 = !{i32 2, !"Debug Info Version", i32 3}
!801 = !{i32 1, !"wchar_size", i32 2}
!802 = !{i32 8, !"cf-protection-branch", i32 1}
!803 = !{i32 4, !"function_return_thunk_extern", i32 1}
!804 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!805 = !{i32 1, !"Code Model", i32 2}
!806 = !{i32 1, !"override-stack-alignment", i32 8}
!807 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!808 = distinct !DISubprogram(name: "acpi_ns_search_one_scope", scope: !3, file: !3, line: 59, type: !809, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !813)
!809 = !DISubroutineType(types: !810)
!810 = !{!127, !65, !13, !811, !812}
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !128, line: 644, baseType: !65)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!813 = !{!814, !815, !816, !817, !818}
!814 = !DILocalVariable(name: "target_name", arg: 1, scope: !808, file: !3, line: 59, type: !65)
!815 = !DILocalVariable(name: "parent_node", arg: 2, scope: !808, file: !3, line: 60, type: !13)
!816 = !DILocalVariable(name: "type", arg: 3, scope: !808, file: !3, line: 61, type: !811)
!817 = !DILocalVariable(name: "return_node", arg: 4, scope: !808, file: !3, line: 62, type: !812)
!818 = !DILocalVariable(name: "node", scope: !808, file: !3, line: 64, type: !13)
!819 = !DILocation(line: 59, column: 30, scope: !808)
!820 = !DILocation(line: 60, column: 33, scope: !808)
!821 = !DILocation(line: 61, column: 22, scope: !808)
!822 = !DILocation(line: 62, column: 34, scope: !808)
!823 = !DILocation(line: 64, column: 2, scope: !808)
!824 = !DILocation(line: 64, column: 30, scope: !808)
!825 = !DILocation(line: 89, column: 9, scope: !808)
!826 = !DILocation(line: 89, column: 22, scope: !808)
!827 = !DILocation(line: 89, column: 7, scope: !808)
!828 = !DILocation(line: 90, column: 2, scope: !808)
!829 = !DILocation(line: 90, column: 9, scope: !808)
!830 = !DILocation(line: 94, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 94, column: 7)
!832 = distinct !DILexicalBlock(scope: !808, file: !3, line: 90, column: 15)
!833 = !DILocation(line: 94, column: 13, scope: !831)
!834 = !DILocation(line: 94, column: 18, scope: !831)
!835 = !DILocation(line: 94, column: 29, scope: !831)
!836 = !DILocation(line: 94, column: 26, scope: !831)
!837 = !DILocation(line: 94, column: 7, scope: !832)
!838 = !DILocation(line: 98, column: 25, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 98, column: 8)
!840 = distinct !DILexicalBlock(scope: !831, file: !3, line: 94, column: 42)
!841 = !DILocation(line: 98, column: 8, scope: !839)
!842 = !DILocation(line: 98, column: 31, scope: !839)
!843 = !DILocation(line: 98, column: 8, scope: !840)
!844 = !DILocation(line: 101, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !839, file: !3, line: 99, column: 38)
!846 = !DILocation(line: 100, column: 10, scope: !845)
!847 = !DILocation(line: 103, column: 4, scope: !845)
!848 = !DILocation(line: 115, column: 19, scope: !840)
!849 = !DILocation(line: 115, column: 5, scope: !840)
!850 = !DILocation(line: 115, column: 17, scope: !840)
!851 = !DILocation(line: 116, column: 4, scope: !840)
!852 = !DILocation(line: 121, column: 10, scope: !832)
!853 = !DILocation(line: 121, column: 16, scope: !832)
!854 = !DILocation(line: 121, column: 8, scope: !832)
!855 = distinct !{!855, !828, !856, !857, !858}
!856 = !DILocation(line: 122, column: 2, scope: !808)
!857 = !{!"llvm.loop.mustprogress"}
!858 = !{!"llvm.loop.unroll.disable"}
!859 = !DILocation(line: 134, column: 2, scope: !808)
!860 = !DILocation(line: 135, column: 1, scope: !808)
!861 = !DISubprogram(name: "acpi_ns_get_type", scope: !862, file: !862, line: 379, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!863 = !DISubroutineType(types: !864)
!864 = !{!811, !13}
!865 = distinct !DISubprogram(name: "acpi_ns_search_and_enter", scope: !3, file: !3, line: 251, type: !866, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !869)
!866 = !DISubroutineType(types: !867)
!867 = !{!127, !65, !129, !13, !868, !811, !65, !812}
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877, !878}
!870 = !DILocalVariable(name: "target_name", arg: 1, scope: !865, file: !3, line: 251, type: !65)
!871 = !DILocalVariable(name: "walk_state", arg: 2, scope: !865, file: !3, line: 252, type: !129)
!872 = !DILocalVariable(name: "node", arg: 3, scope: !865, file: !3, line: 253, type: !13)
!873 = !DILocalVariable(name: "interpreter_mode", arg: 4, scope: !865, file: !3, line: 254, type: !868)
!874 = !DILocalVariable(name: "type", arg: 5, scope: !865, file: !3, line: 255, type: !811)
!875 = !DILocalVariable(name: "flags", arg: 6, scope: !865, file: !3, line: 256, type: !65)
!876 = !DILocalVariable(name: "return_node", arg: 7, scope: !865, file: !3, line: 256, type: !812)
!877 = !DILocalVariable(name: "status", scope: !865, file: !3, line: 258, type: !127)
!878 = !DILocalVariable(name: "new_node", scope: !865, file: !3, line: 259, type: !13)
!879 = !DILocation(line: 251, column: 30, scope: !865)
!880 = !DILocation(line: 252, column: 29, scope: !865)
!881 = !DILocation(line: 253, column: 33, scope: !865)
!882 = !DILocation(line: 254, column: 27, scope: !865)
!883 = !DILocation(line: 255, column: 22, scope: !865)
!884 = !DILocation(line: 256, column: 9, scope: !865)
!885 = !DILocation(line: 256, column: 45, scope: !865)
!886 = !DILocation(line: 258, column: 2, scope: !865)
!887 = !DILocation(line: 258, column: 14, scope: !865)
!888 = !DILocation(line: 259, column: 2, scope: !865)
!889 = !DILocation(line: 259, column: 30, scope: !865)
!890 = !DILocation(line: 265, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !865, file: !3, line: 265, column: 6)
!892 = !DILocation(line: 265, column: 12, scope: !891)
!893 = !DILocation(line: 265, column: 16, scope: !891)
!894 = !DILocation(line: 265, column: 28, scope: !891)
!895 = !DILocation(line: 265, column: 32, scope: !891)
!896 = !DILocation(line: 265, column: 6, scope: !865)
!897 = !DILocation(line: 266, column: 3, scope: !898)
!898 = distinct !DILexicalBlock(scope: !891, file: !3, line: 265, column: 45)
!899 = !DILocation(line: 269, column: 3, scope: !898)
!900 = !DILocation(line: 281, column: 22, scope: !865)
!901 = !DILocation(line: 281, column: 2, scope: !865)
!902 = !DILocation(line: 285, column: 3, scope: !865)
!903 = !DILocation(line: 285, column: 15, scope: !865)
!904 = !DILocation(line: 286, column: 36, scope: !865)
!905 = !DILocation(line: 286, column: 49, scope: !865)
!906 = !DILocation(line: 286, column: 55, scope: !865)
!907 = !DILocation(line: 286, column: 61, scope: !865)
!908 = !DILocation(line: 286, column: 11, scope: !865)
!909 = !DILocation(line: 286, column: 9, scope: !865)
!910 = !DILocation(line: 287, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !865, file: !3, line: 287, column: 6)
!912 = !DILocation(line: 287, column: 13, scope: !911)
!913 = !DILocation(line: 287, column: 6, scope: !865)
!914 = !DILocation(line: 292, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 292, column: 7)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 287, column: 30)
!917 = !DILocation(line: 292, column: 14, scope: !915)
!918 = !DILocation(line: 292, column: 7, scope: !916)
!919 = !DILocation(line: 301, column: 8, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 301, column: 8)
!921 = distinct !DILexicalBlock(scope: !915, file: !3, line: 292, column: 24)
!922 = !DILocation(line: 301, column: 14, scope: !920)
!923 = !DILocation(line: 301, column: 8, scope: !921)
!924 = !DILocation(line: 310, column: 30, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !3, line: 301, column: 43)
!926 = !DILocation(line: 310, column: 29, scope: !925)
!927 = !DILocation(line: 310, column: 5, scope: !925)
!928 = !DILocation(line: 311, column: 9, scope: !929)
!929 = distinct !DILexicalBlock(scope: !925, file: !3, line: 311, column: 9)
!930 = !DILocation(line: 311, column: 9, scope: !925)
!931 = !DILocation(line: 312, column: 33, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !3, line: 311, column: 46)
!933 = !DILocation(line: 312, column: 32, scope: !932)
!934 = !DILocation(line: 312, column: 47, scope: !932)
!935 = !DILocation(line: 312, column: 6, scope: !932)
!936 = !DILocation(line: 313, column: 8, scope: !932)
!937 = !DILocation(line: 313, column: 7, scope: !932)
!938 = !DILocation(line: 313, column: 22, scope: !932)
!939 = !DILocation(line: 313, column: 29, scope: !932)
!940 = !DILocation(line: 315, column: 10, scope: !932)
!941 = !DILocation(line: 315, column: 22, scope: !932)
!942 = !DILocation(line: 314, column: 8, scope: !932)
!943 = !DILocation(line: 314, column: 7, scope: !932)
!944 = !DILocation(line: 314, column: 22, scope: !932)
!945 = !DILocation(line: 314, column: 31, scope: !932)
!946 = !DILocation(line: 316, column: 5, scope: !932)
!947 = !DILocation(line: 317, column: 27, scope: !948)
!948 = distinct !DILexicalBlock(scope: !929, file: !3, line: 316, column: 12)
!949 = !DILocation(line: 317, column: 26, scope: !948)
!950 = !DILocation(line: 317, column: 6, scope: !948)
!951 = !DILocation(line: 318, column: 7, scope: !948)
!952 = !DILocation(line: 318, column: 19, scope: !948)
!953 = !DILocation(line: 320, column: 4, scope: !925)
!954 = !DILocation(line: 324, column: 13, scope: !955)
!955 = distinct !DILexicalBlock(scope: !920, file: !3, line: 324, column: 13)
!956 = !DILocation(line: 324, column: 19, scope: !955)
!957 = !DILocation(line: 324, column: 13, scope: !920)
!958 = !DILocation(line: 325, column: 12, scope: !959)
!959 = distinct !DILexicalBlock(scope: !955, file: !3, line: 324, column: 45)
!960 = !DILocation(line: 326, column: 4, scope: !959)
!961 = !DILocation(line: 327, column: 3, scope: !921)
!962 = !DILocation(line: 336, column: 3, scope: !916)
!963 = !DILocation(line: 347, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !865, file: !3, line: 347, column: 6)
!965 = !DILocation(line: 347, column: 24, scope: !964)
!966 = !DILocation(line: 347, column: 50, scope: !964)
!967 = !DILocation(line: 348, column: 7, scope: !964)
!968 = !DILocation(line: 348, column: 13, scope: !964)
!969 = !DILocation(line: 347, column: 6, scope: !865)
!970 = !DILocation(line: 354, column: 34, scope: !971)
!971 = distinct !DILexicalBlock(scope: !964, file: !3, line: 348, column: 39)
!972 = !DILocation(line: 354, column: 47, scope: !971)
!973 = !DILocation(line: 354, column: 53, scope: !971)
!974 = !DILocation(line: 355, column: 13, scope: !971)
!975 = !DILocation(line: 354, column: 7, scope: !971)
!976 = !DILocation(line: 353, column: 10, scope: !971)
!977 = !DILocation(line: 356, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !971, file: !3, line: 356, column: 7)
!979 = !DILocation(line: 356, column: 7, scope: !971)
!980 = !DILocation(line: 357, column: 4, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 356, column: 29)
!982 = !DILocation(line: 359, column: 2, scope: !971)
!983 = !DILocation(line: 363, column: 6, scope: !984)
!984 = distinct !DILexicalBlock(scope: !865, file: !3, line: 363, column: 6)
!985 = !DILocation(line: 363, column: 23, scope: !984)
!986 = !DILocation(line: 363, column: 6, scope: !865)
!987 = !DILocation(line: 368, column: 3, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !3, line: 363, column: 46)
!989 = !DILocation(line: 373, column: 33, scope: !865)
!990 = !DILocation(line: 373, column: 13, scope: !865)
!991 = !DILocation(line: 373, column: 11, scope: !865)
!992 = !DILocation(line: 374, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !865, file: !3, line: 374, column: 6)
!994 = !DILocation(line: 374, column: 6, scope: !865)
!995 = !DILocation(line: 375, column: 3, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !3, line: 374, column: 17)
!997 = !DILocation(line: 387, column: 6, scope: !998)
!998 = distinct !DILexicalBlock(scope: !865, file: !3, line: 387, column: 6)
!999 = !DILocation(line: 387, column: 12, scope: !998)
!1000 = !DILocation(line: 387, column: 6, scope: !865)
!1001 = !DILocation(line: 388, column: 3, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !998, file: !3, line: 387, column: 33)
!1003 = !DILocation(line: 388, column: 13, scope: !1002)
!1004 = !DILocation(line: 388, column: 19, scope: !1002)
!1005 = !DILocation(line: 389, column: 2, scope: !1002)
!1006 = !DILocation(line: 393, column: 23, scope: !865)
!1007 = !DILocation(line: 393, column: 35, scope: !865)
!1008 = !DILocation(line: 393, column: 41, scope: !865)
!1009 = !DILocation(line: 393, column: 51, scope: !865)
!1010 = !DILocation(line: 393, column: 2, scope: !865)
!1011 = !DILocation(line: 394, column: 17, scope: !865)
!1012 = !DILocation(line: 394, column: 3, scope: !865)
!1013 = !DILocation(line: 394, column: 15, scope: !865)
!1014 = !DILocation(line: 395, column: 2, scope: !865)
!1015 = !DILocation(line: 396, column: 1, scope: !865)
!1016 = !DISubprogram(name: "acpi_error", scope: !1017, file: !1017, line: 901, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !1020, !65, !1020, null}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!1021 = !DISubprogram(name: "acpi_ut_repair_name", scope: !1022, file: !1022, line: 624, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !62}
!1025 = !DISubprogram(name: "acpi_ns_delete_children", scope: !862, file: !862, line: 142, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !13}
!1028 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1022, file: !1022, line: 369, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !17}
!1031 = !DISubprogram(name: "acpi_ns_remove_node", scope: !862, file: !862, line: 133, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = distinct !DISubprogram(name: "acpi_ns_search_parent_tree", scope: !3, file: !3, line: 163, type: !809, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039}
!1034 = !DILocalVariable(name: "target_name", arg: 1, scope: !1032, file: !3, line: 163, type: !65)
!1035 = !DILocalVariable(name: "node", arg: 2, scope: !1032, file: !3, line: 164, type: !13)
!1036 = !DILocalVariable(name: "type", arg: 3, scope: !1032, file: !3, line: 165, type: !811)
!1037 = !DILocalVariable(name: "return_node", arg: 4, scope: !1032, file: !3, line: 166, type: !812)
!1038 = !DILocalVariable(name: "status", scope: !1032, file: !3, line: 168, type: !127)
!1039 = !DILocalVariable(name: "parent_node", scope: !1032, file: !3, line: 169, type: !13)
!1040 = !DILocation(line: 163, column: 32, scope: !1032)
!1041 = !DILocation(line: 164, column: 35, scope: !1032)
!1042 = !DILocation(line: 165, column: 24, scope: !1032)
!1043 = !DILocation(line: 166, column: 36, scope: !1032)
!1044 = !DILocation(line: 168, column: 2, scope: !1032)
!1045 = !DILocation(line: 168, column: 14, scope: !1032)
!1046 = !DILocation(line: 169, column: 2, scope: !1032)
!1047 = !DILocation(line: 169, column: 30, scope: !1032)
!1048 = !DILocation(line: 173, column: 16, scope: !1032)
!1049 = !DILocation(line: 173, column: 22, scope: !1032)
!1050 = !DILocation(line: 173, column: 14, scope: !1032)
!1051 = !DILocation(line: 179, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 179, column: 6)
!1053 = !DILocation(line: 179, column: 6, scope: !1032)
!1054 = !DILocation(line: 182, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 179, column: 20)
!1056 = !DILocation(line: 185, column: 20, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 185, column: 6)
!1058 = !DILocation(line: 185, column: 6, scope: !1057)
!1059 = !DILocation(line: 185, column: 6, scope: !1032)
!1060 = !DILocation(line: 190, column: 3, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 185, column: 27)
!1062 = !DILocation(line: 202, column: 2, scope: !1032)
!1063 = !DILocation(line: 202, column: 9, scope: !1032)
!1064 = !DILocation(line: 209, column: 32, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 202, column: 22)
!1066 = !DILocation(line: 209, column: 45, scope: !1065)
!1067 = !DILocation(line: 210, column: 26, scope: !1065)
!1068 = !DILocation(line: 209, column: 7, scope: !1065)
!1069 = !DILocation(line: 208, column: 10, scope: !1065)
!1070 = !DILocation(line: 211, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 211, column: 7)
!1072 = !DILocation(line: 211, column: 7, scope: !1065)
!1073 = !DILocation(line: 212, column: 4, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 211, column: 29)
!1075 = !DILocation(line: 217, column: 17, scope: !1065)
!1076 = !DILocation(line: 217, column: 30, scope: !1065)
!1077 = !DILocation(line: 217, column: 15, scope: !1065)
!1078 = distinct !{!1078, !1062, !1079, !857, !858}
!1079 = !DILocation(line: 218, column: 2, scope: !1032)
!1080 = !DILocation(line: 222, column: 2, scope: !1032)
!1081 = !DILocation(line: 223, column: 1, scope: !1032)
!1082 = !DISubprogram(name: "acpi_ns_create_node", scope: !862, file: !862, line: 129, type: !1083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!13, !65}
!1085 = !DISubprogram(name: "acpi_ns_install_node", scope: !862, file: !862, line: 372, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !129, !13, !13, !811}
!1088 = !DISubprogram(name: "acpi_ns_local", scope: !862, file: !862, line: 381, type: !1089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!65, !811}
