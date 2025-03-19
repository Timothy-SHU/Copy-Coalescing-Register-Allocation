; ModuleID = 'drivers/acpi/acpica/exstoren.c'
source_filename = "drivers/acpi/acpica/exstoren.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }

@_acpi_module_name = internal constant [9 x i8] c"exstoren\00", align 1, !dbg !0
@.str = private unnamed_addr constant [59 x i8] c"Cannot assign type [%s] to [%s] (must be type Int/Str/Buf)\00", align 1, !dbg !28
@.str.1 = private unnamed_addr constant [38 x i8] c"Store into an unresolved Alias object\00", align 1, !dbg !34
@.str.2 = private unnamed_addr constant [37 x i8] c"Store into type [%s] not implemented\00", align 1, !dbg !39

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_resolve_object(ptr noundef %source_desc_ptr, i32 noundef %target_type, ptr noundef %walk_state) #0 align 16 !dbg !57 {
entry:
  %source_desc_ptr.addr = alloca ptr, align 8
  %target_type.addr = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %source_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %source_desc_ptr, ptr %source_desc_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc_ptr.addr, metadata !825, metadata !DIExpression()), !dbg !830
  store i32 %target_type, ptr %target_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target_type.addr, metadata !826, metadata !DIExpression()), !dbg !831
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !827, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %source_desc) #4, !dbg !833
  call void @llvm.dbg.declare(metadata ptr %source_desc, metadata !828, metadata !DIExpression()), !dbg !834
  %0 = load ptr, ptr %source_desc_ptr.addr, align 8, !dbg !835
  %1 = load ptr, ptr %0, align 8, !dbg !836
  store ptr %1, ptr %source_desc, align 8, !dbg !834
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !837
  call void @llvm.dbg.declare(metadata ptr %status, metadata !829, metadata !DIExpression()), !dbg !838
  store i32 0, ptr %status, align 4, !dbg !838
  %2 = load i32, ptr %target_type.addr, align 4, !dbg !839
  switch i32 %2, label %sw.default [
    i32 14, label %sw.bb
    i32 17, label %sw.bb
    i32 18, label %sw.bb
    i32 19, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 21, label %sw.bb35
    i32 22, label %sw.bb35
    i32 4, label %sw.bb36
  ], !dbg !840

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load ptr, ptr %source_desc, align 8, !dbg !841
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !844
  %4 = load i8, ptr %type, align 1, !dbg !844
  %conv = zext i8 %4 to i32, !dbg !841
  %cmp = icmp eq i32 %conv, 20, !dbg !845
  br i1 %cmp, label %if.then, label %if.end3, !dbg !846

if.then:                                          ; preds = %sw.bb
  %5 = load ptr, ptr %source_desc_ptr.addr, align 8, !dbg !847
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !849
  %call = call i32 @acpi_ex_resolve_to_value(ptr noundef %5, ptr noundef %6) #5, !dbg !850
  store i32 %call, ptr %status, align 4, !dbg !851
  %7 = load i32, ptr %status, align 4, !dbg !852
  %tobool = icmp ne i32 %7, 0, !dbg !852
  br i1 %tobool, label %if.then2, label %if.end, !dbg !854

if.then2:                                         ; preds = %if.then
  br label %sw.epilog, !dbg !855

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !857

if.end3:                                          ; preds = %if.end, %sw.bb
  %8 = load ptr, ptr %walk_state.addr, align 8, !dbg !858
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %8, i32 0, i32 3, !dbg !860
  %9 = load i16, ptr %opcode, align 2, !dbg !860
  %conv4 = zext i16 %9 to i32, !dbg !858
  %cmp5 = icmp eq i32 %conv4, 157, !dbg !861
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !862

if.then7:                                         ; preds = %if.end3
  br label %sw.epilog, !dbg !863

if.end8:                                          ; preds = %if.end3
  %10 = load ptr, ptr %source_desc, align 8, !dbg !865
  %type9 = getelementptr inbounds %struct.acpi_object_common, ptr %10, i32 0, i32 2, !dbg !867
  %11 = load i8, ptr %type9, align 1, !dbg !867
  %conv10 = zext i8 %11 to i32, !dbg !865
  %cmp11 = icmp ne i32 %conv10, 1, !dbg !868
  br i1 %cmp11, label %land.lhs.true, label %if.end34, !dbg !869

land.lhs.true:                                    ; preds = %if.end8
  %12 = load ptr, ptr %source_desc, align 8, !dbg !870
  %type13 = getelementptr inbounds %struct.acpi_object_common, ptr %12, i32 0, i32 2, !dbg !871
  %13 = load i8, ptr %type13, align 1, !dbg !871
  %conv14 = zext i8 %13 to i32, !dbg !870
  %cmp15 = icmp ne i32 %conv14, 3, !dbg !872
  br i1 %cmp15, label %land.lhs.true17, label %if.end34, !dbg !873

land.lhs.true17:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %source_desc, align 8, !dbg !874
  %type18 = getelementptr inbounds %struct.acpi_object_common, ptr %14, i32 0, i32 2, !dbg !875
  %15 = load i8, ptr %type18, align 1, !dbg !875
  %conv19 = zext i8 %15 to i32, !dbg !874
  %cmp20 = icmp ne i32 %conv19, 2, !dbg !876
  br i1 %cmp20, label %land.lhs.true22, label %if.end34, !dbg !877

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %16 = load ptr, ptr %source_desc, align 8, !dbg !878
  %type23 = getelementptr inbounds %struct.acpi_object_common, ptr %16, i32 0, i32 2, !dbg !879
  %17 = load i8, ptr %type23, align 1, !dbg !879
  %conv24 = zext i8 %17 to i32, !dbg !878
  %cmp25 = icmp eq i32 %conv24, 20, !dbg !880
  br i1 %cmp25, label %land.lhs.true27, label %if.then31, !dbg !881

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %18 = load ptr, ptr %source_desc, align 8, !dbg !882
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %18, i32 0, i32 5, !dbg !883
  %19 = load i8, ptr %class, align 1, !dbg !883
  %conv28 = zext i8 %19 to i32, !dbg !882
  %cmp29 = icmp eq i32 %conv28, 4, !dbg !884
  br i1 %cmp29, label %if.end34, label %if.then31, !dbg !885

if.then31:                                        ; preds = %land.lhs.true27, %land.lhs.true22
  %20 = load ptr, ptr %source_desc, align 8, !dbg !886
  %call32 = call ptr @acpi_ut_get_object_type_name(ptr noundef %20) #5, !dbg !886
  %21 = load i32, ptr %target_type.addr, align 4, !dbg !886
  %call33 = call ptr @acpi_ut_get_type_name(i32 noundef %21) #5, !dbg !886
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 90, ptr noundef @.str, ptr noundef %call32, ptr noundef %call33) #5, !dbg !886
  store i32 12291, ptr %status, align 4, !dbg !888
  br label %if.end34, !dbg !889

if.end34:                                         ; preds = %if.then31, %land.lhs.true27, %land.lhs.true17, %land.lhs.true, %if.end8
  br label %sw.epilog, !dbg !890

sw.bb35:                                          ; preds = %entry, %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 105, ptr noundef @.str.1) #5, !dbg !891
  store i32 12303, ptr %status, align 4, !dbg !892
  br label %sw.epilog, !dbg !893

sw.bb36:                                          ; preds = %entry
  br label %sw.default, !dbg !894

sw.default:                                       ; preds = %entry, %sw.bb36
  br label %sw.epilog, !dbg !895

sw.epilog:                                        ; preds = %sw.default, %sw.bb35, %if.end34, %if.then7, %if.then2
  %22 = load i32, ptr %status, align 4, !dbg !896
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !897
  call void @llvm.lifetime.end.p0(i64 8, ptr %source_desc) #4, !dbg !897
  ret i32 %22, !dbg !896
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !898 dso_local i32 @acpi_ex_resolve_to_value(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !902 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !907 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !911 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_store_object_to_object(ptr noundef %source_desc, ptr noundef %dest_desc, ptr noundef %new_desc, ptr noundef %walk_state) #0 align 16 !dbg !914 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %dest_desc.addr = alloca ptr, align 8
  %new_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %actual_src_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !918, metadata !DIExpression()), !dbg !924
  store ptr %dest_desc, ptr %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_desc.addr, metadata !919, metadata !DIExpression()), !dbg !925
  store ptr %new_desc, ptr %new_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_desc.addr, metadata !920, metadata !DIExpression()), !dbg !926
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !921, metadata !DIExpression()), !dbg !927
  call void @llvm.lifetime.start.p0(i64 8, ptr %actual_src_desc) #4, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %actual_src_desc, metadata !922, metadata !DIExpression()), !dbg !929
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !930
  call void @llvm.dbg.declare(metadata ptr %status, metadata !923, metadata !DIExpression()), !dbg !931
  store i32 0, ptr %status, align 4, !dbg !931
  %0 = load ptr, ptr %source_desc.addr, align 8, !dbg !932
  store ptr %0, ptr %actual_src_desc, align 8, !dbg !933
  %1 = load ptr, ptr %dest_desc.addr, align 8, !dbg !934
  %tobool = icmp ne ptr %1, null, !dbg !934
  br i1 %tobool, label %if.end, label %if.then, !dbg !936

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %actual_src_desc, align 8, !dbg !937
  %3 = load ptr, ptr %new_desc.addr, align 8, !dbg !939
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !940
  %call = call i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef %2, ptr noundef %3, ptr noundef %4) #5, !dbg !941
  store i32 %call, ptr %status, align 4, !dbg !942
  %5 = load i32, ptr %status, align 4, !dbg !943
  store i32 %5, ptr %retval, align 4, !dbg !943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !943

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %source_desc.addr, align 8, !dbg !944
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %6, i32 0, i32 2, !dbg !946
  %7 = load i8, ptr %type, align 1, !dbg !946
  %conv = zext i8 %7 to i32, !dbg !944
  %8 = load ptr, ptr %dest_desc.addr, align 8, !dbg !947
  %type1 = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 2, !dbg !948
  %9 = load i8, ptr %type1, align 1, !dbg !948
  %conv2 = zext i8 %9 to i32, !dbg !947
  %cmp = icmp ne i32 %conv, %conv2, !dbg !949
  br i1 %cmp, label %if.then4, label %if.end15, !dbg !950

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %dest_desc.addr, align 8, !dbg !951
  %type5 = getelementptr inbounds %struct.acpi_object_common, ptr %10, i32 0, i32 2, !dbg !953
  %11 = load i8, ptr %type5, align 1, !dbg !953
  %conv6 = zext i8 %11 to i32, !dbg !951
  %12 = load ptr, ptr %source_desc.addr, align 8, !dbg !954
  %13 = load ptr, ptr %walk_state.addr, align 8, !dbg !955
  %call7 = call i32 @acpi_ex_convert_to_target_type(i32 noundef %conv6, ptr noundef %12, ptr noundef %actual_src_desc, ptr noundef %13) #5, !dbg !956
  store i32 %call7, ptr %status, align 4, !dbg !957
  %14 = load i32, ptr %status, align 4, !dbg !958
  %tobool8 = icmp ne i32 %14, 0, !dbg !958
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !960

if.then9:                                         ; preds = %if.then4
  %15 = load i32, ptr %status, align 4, !dbg !961
  store i32 %15, ptr %retval, align 4, !dbg !961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !961

if.end10:                                         ; preds = %if.then4
  %16 = load ptr, ptr %source_desc.addr, align 8, !dbg !963
  %17 = load ptr, ptr %actual_src_desc, align 8, !dbg !965
  %cmp11 = icmp eq ptr %16, %17, !dbg !966
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !967

if.then13:                                        ; preds = %if.end10
  %18 = load ptr, ptr %source_desc.addr, align 8, !dbg !968
  %19 = load ptr, ptr %new_desc.addr, align 8, !dbg !970
  store ptr %18, ptr %19, align 8, !dbg !971
  store i32 0, ptr %retval, align 4, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !972

if.end14:                                         ; preds = %if.end10
  br label %if.end15, !dbg !973

if.end15:                                         ; preds = %if.end14, %if.end
  %20 = load ptr, ptr %dest_desc.addr, align 8, !dbg !974
  %type16 = getelementptr inbounds %struct.acpi_object_common, ptr %20, i32 0, i32 2, !dbg !975
  %21 = load i8, ptr %type16, align 1, !dbg !975
  %conv17 = zext i8 %21 to i32, !dbg !974
  switch i32 %conv17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %sw.bb22
    i32 4, label %sw.bb24
  ], !dbg !976

sw.bb:                                            ; preds = %if.end15
  %22 = load ptr, ptr %actual_src_desc, align 8, !dbg !977
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %22, i32 0, i32 6, !dbg !979
  %23 = load i64, ptr %value, align 8, !dbg !979
  %24 = load ptr, ptr %dest_desc.addr, align 8, !dbg !980
  %value18 = getelementptr inbounds %struct.acpi_object_integer, ptr %24, i32 0, i32 6, !dbg !981
  store i64 %23, ptr %value18, align 8, !dbg !982
  %25 = load ptr, ptr %dest_desc.addr, align 8, !dbg !983
  %call19 = call zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef %25) #5, !dbg !984
  br label %sw.epilog, !dbg !985

sw.bb20:                                          ; preds = %if.end15
  %26 = load ptr, ptr %actual_src_desc, align 8, !dbg !986
  %27 = load ptr, ptr %dest_desc.addr, align 8, !dbg !987
  %call21 = call i32 @acpi_ex_store_string_to_string(ptr noundef %26, ptr noundef %27) #5, !dbg !988
  store i32 %call21, ptr %status, align 4, !dbg !989
  br label %sw.epilog, !dbg !990

sw.bb22:                                          ; preds = %if.end15
  %28 = load ptr, ptr %actual_src_desc, align 8, !dbg !991
  %29 = load ptr, ptr %dest_desc.addr, align 8, !dbg !992
  %call23 = call i32 @acpi_ex_store_buffer_to_buffer(ptr noundef %28, ptr noundef %29) #5, !dbg !993
  store i32 %call23, ptr %status, align 4, !dbg !994
  br label %sw.epilog, !dbg !995

sw.bb24:                                          ; preds = %if.end15
  %30 = load ptr, ptr %actual_src_desc, align 8, !dbg !996
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !997
  %call25 = call i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef %30, ptr noundef %dest_desc.addr, ptr noundef %31) #5, !dbg !998
  store i32 %call25, ptr %status, align 4, !dbg !999
  br label %sw.epilog, !dbg !1000

sw.default:                                       ; preds = %if.end15
  %32 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1001
  %call26 = call ptr @acpi_ut_get_object_type_name(ptr noundef %32) #5, !dbg !1001
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 245, ptr noundef @.str.2, ptr noundef %call26) #5, !dbg !1001
  store i32 14, ptr %status, align 4, !dbg !1002
  br label %sw.epilog, !dbg !1003

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb
  %33 = load ptr, ptr %actual_src_desc, align 8, !dbg !1004
  %34 = load ptr, ptr %source_desc.addr, align 8, !dbg !1006
  %cmp27 = icmp ne ptr %33, %34, !dbg !1007
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !1008

if.then29:                                        ; preds = %sw.epilog
  %35 = load ptr, ptr %actual_src_desc, align 8, !dbg !1009
  call void @acpi_ut_remove_reference(ptr noundef %35) #5, !dbg !1011
  br label %if.end30, !dbg !1012

if.end30:                                         ; preds = %if.then29, %sw.epilog
  %36 = load ptr, ptr %dest_desc.addr, align 8, !dbg !1013
  %37 = load ptr, ptr %new_desc.addr, align 8, !dbg !1014
  store ptr %36, ptr %37, align 8, !dbg !1015
  %38 = load i32, ptr %status, align 4, !dbg !1016
  store i32 %38, ptr %retval, align 4, !dbg !1016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1016

cleanup:                                          ; preds = %if.end30, %if.then13, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1017
  call void @llvm.lifetime.end.p0(i64 8, ptr %actual_src_desc) #4, !dbg !1017
  %39 = load i32, ptr %retval, align 4, !dbg !1017
  ret i32 %39, !dbg !1017
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1018 dso_local i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1021 dso_local i32 @acpi_ex_convert_to_target_type(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1024 dso_local zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1027 dso_local i32 @acpi_ex_store_string_to_string(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1030 dso_local i32 @acpi_ex_store_buffer_to_buffer(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1031 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1032 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !44, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exstoren.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exstoren\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exstoren.ll drivers/acpi/acpica/exstoren.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exstoren.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e47eae9197447787c18e521b03686c61")
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
!17 = !{!18, !24}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !26)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !{!28, !34, !39, !0}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 472, elements: !32)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !{!33}
!33 = !DISubrange(count: 59)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 304, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 38)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 245, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 296, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 37)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 72, elements: !46)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!46 = !{!47}
!47 = !DISubrange(count: 9)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"cf-protection-branch", i32 1}
!52 = !{i32 4, !"function_return_thunk_extern", i32 1}
!53 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!54 = !{i32 1, !"Code Model", i32 2}
!55 = !{i32 1, !"override-stack-alignment", i32 8}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = distinct !DISubprogram(name: "acpi_ex_resolve_object", scope: !3, file: !3, line: 34, type: !58, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !824)
!58 = !DISubroutineType(types: !59)
!59 = !{!18, !60, !823, !183}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !63)
!63 = !{!64, !75, !91, !102, !138, !151, !161, !472, !489, !505, !518, !596, !608, !622, !632, !650, !672, !691, !710, !729, !742, !769, !786, !799, !813, !822}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !62, file: !6, line: 370, baseType: !65, size: 128)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !66)
!66 = !{!67, !68, !72, !73, !74}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !6, line: 74, baseType: !61, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !6, line: 74, baseType: !69, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !6, line: 74, baseType: !69, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !6, line: 74, baseType: !24, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !6, line: 74, baseType: !69, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !62, file: !6, line: 371, baseType: !76, size: 192)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !87}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !76, file: !6, line: 77, baseType: !61, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !76, file: !6, line: 77, baseType: !69, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !6, line: 77, baseType: !69, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !76, file: !6, line: 77, baseType: !24, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !6, line: 77, baseType: !69, size: 8, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !76, file: !6, line: 77, baseType: !84, size: 24, offset: 104)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 24, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 3)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !76, file: !6, line: 78, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !90)
!90 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !62, file: !6, line: 372, baseType: !92, size: 256)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !101}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !92, file: !6, line: 94, baseType: !61, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !92, file: !6, line: 94, baseType: !69, size: 8, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !6, line: 94, baseType: !69, size: 8, offset: 72)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !92, file: !6, line: 94, baseType: !24, size: 16, offset: 80)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !6, line: 94, baseType: !69, size: 8, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !92, file: !6, line: 94, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !92, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !62, file: !6, line: 373, baseType: !103, size: 384)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !112, !113, !114, !115}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !6, line: 98, baseType: !61, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !6, line: 98, baseType: !69, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !6, line: 98, baseType: !69, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !6, line: 98, baseType: !24, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !6, line: 98, baseType: !69, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !103, file: !6, line: 98, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !103, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !103, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !103, file: !6, line: 100, baseType: !111, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !6, line: 101, baseType: !116, size: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !118, line: 133, size: 384, elements: !119)
!118 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!119 = !{!120, !121, !122, !123, !124, !133, !134, !135, !136}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !117, file: !118, line: 134, baseType: !61, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !117, file: !118, line: 135, baseType: !69, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !118, line: 136, baseType: !69, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !117, file: !118, line: 137, baseType: !24, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !118, line: 138, baseType: !125, size: 32, offset: 96)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !126, line: 328, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !125, file: !126, line: 329, baseType: !20, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !125, file: !126, line: 330, baseType: !130, size: 32)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 4)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !117, file: !118, line: 139, baseType: !116, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !117, file: !118, line: 140, baseType: !116, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !117, file: !118, line: 141, baseType: !116, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !117, file: !118, line: 142, baseType: !137, size: 16, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !24)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !62, file: !6, line: 374, baseType: !139, size: 384)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !6, line: 105, baseType: !61, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !6, line: 105, baseType: !69, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !6, line: 105, baseType: !69, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !6, line: 105, baseType: !24, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !6, line: 105, baseType: !69, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !6, line: 105, baseType: !116, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !139, file: !6, line: 106, baseType: !60, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !6, line: 107, baseType: !111, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !139, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !62, file: !6, line: 375, baseType: !152, size: 192)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !152, file: !6, line: 119, baseType: !61, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !152, file: !6, line: 119, baseType: !69, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !6, line: 119, baseType: !69, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !152, file: !6, line: 119, baseType: !24, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !6, line: 119, baseType: !69, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !152, file: !6, line: 119, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !62, file: !6, line: 376, baseType: !162, size: 448)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !469, !470, !471}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !162, file: !6, line: 145, baseType: !61, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !162, file: !6, line: 145, baseType: !69, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !162, file: !6, line: 145, baseType: !69, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !162, file: !6, line: 145, baseType: !24, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !162, file: !6, line: 145, baseType: !69, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !162, file: !6, line: 145, baseType: !69, size: 8, offset: 104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !162, file: !6, line: 146, baseType: !69, size: 8, offset: 112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !162, file: !6, line: 147, baseType: !69, size: 8, offset: 120)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !162, file: !6, line: 148, baseType: !61, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !162, file: !6, line: 149, baseType: !61, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !162, file: !6, line: 150, baseType: !111, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !162, file: !6, line: 154, baseType: !176, size: 64, offset: 320)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !6, line: 151, size: 64, elements: !177)
!177 = !{!178, !468}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !176, file: !6, line: 152, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !118, line: 248, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!18, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !185, line: 37, size: 9024, elements: !186)
!185 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !416, !417, !418, !419, !420, !424, !426, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !451, !452, !453, !454, !455, !456, !457, !458, !460, !466}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !185, line: 38, baseType: !183, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !184, file: !185, line: 39, baseType: !69, size: 8, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !184, file: !185, line: 40, baseType: !69, size: 8, offset: 72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !184, file: !185, line: 41, baseType: !24, size: 16, offset: 80)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !184, file: !185, line: 42, baseType: !69, size: 8, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !184, file: !185, line: 43, baseType: !69, size: 8, offset: 104)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !184, file: !185, line: 44, baseType: !69, size: 8, offset: 112)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !184, file: !185, line: 45, baseType: !137, size: 16, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !184, file: !185, line: 46, baseType: !69, size: 8, offset: 144)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !184, file: !185, line: 47, baseType: !69, size: 8, offset: 152)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !184, file: !185, line: 48, baseType: !69, size: 8, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !184, file: !185, line: 49, baseType: !69, size: 8, offset: 168)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !184, file: !185, line: 50, baseType: !69, size: 8, offset: 176)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !184, file: !185, line: 51, baseType: !69, size: 8, offset: 184)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !184, file: !185, line: 52, baseType: !69, size: 8, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !184, file: !185, line: 53, baseType: !69, size: 8, offset: 200)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !185, line: 54, baseType: !111, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !184, file: !185, line: 55, baseType: !20, size: 32, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !184, file: !185, line: 56, baseType: !20, size: 32, offset: 352)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !184, file: !185, line: 57, baseType: !20, size: 32, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !184, file: !185, line: 58, baseType: !20, size: 32, offset: 416)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !184, file: !185, line: 60, baseType: !209, size: 640, offset: 448)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !118, line: 909, size: 640, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !297, !298, !414, !415}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !209, file: !118, line: 910, baseType: !111, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !209, file: !118, line: 911, baseType: !111, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !209, file: !118, line: 912, baseType: !111, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !209, file: !118, line: 913, baseType: !111, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !209, file: !118, line: 914, baseType: !111, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !209, file: !118, line: 915, baseType: !217, size: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !118, line: 891, size: 1600, elements: !219)
!219 = !{!220, !240, !256}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !218, file: !118, line: 892, baseType: !221, size: 448)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !118, line: 844, size: 448, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !239}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !221, file: !118, line: 845, baseType: !217, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !221, file: !118, line: 845, baseType: !69, size: 8, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !118, line: 845, baseType: !69, size: 8, offset: 72)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !221, file: !118, line: 845, baseType: !24, size: 16, offset: 80)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !221, file: !118, line: 845, baseType: !111, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !118, line: 845, baseType: !217, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !221, file: !118, line: 845, baseType: !116, size: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !118, line: 845, baseType: !231, size: 64, offset: 320)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !118, line: 732, size: 64, elements: !232)
!232 = !{!233, !234, !235, !236, !237, !238}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !231, file: !118, line: 733, baseType: !88, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !231, file: !118, line: 734, baseType: !20, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !231, file: !118, line: 735, baseType: !100, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !231, file: !118, line: 736, baseType: !111, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !118, line: 737, baseType: !100, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !231, file: !118, line: 738, baseType: !217, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !221, file: !118, line: 845, baseType: !69, size: 8, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !218, file: !118, line: 893, baseType: !241, size: 640)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !118, line: 851, size: 640, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !241, file: !118, line: 852, baseType: !217, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !118, line: 852, baseType: !69, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !118, line: 852, baseType: !69, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !241, file: !118, line: 852, baseType: !24, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !241, file: !118, line: 852, baseType: !111, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !118, line: 852, baseType: !217, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !241, file: !118, line: 852, baseType: !116, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !241, file: !118, line: 852, baseType: !231, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !241, file: !118, line: 852, baseType: !69, size: 8, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !241, file: !118, line: 852, baseType: !100, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !241, file: !118, line: 853, baseType: !111, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !241, file: !118, line: 854, baseType: !20, size: 32, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !118, line: 855, baseType: !20, size: 32, offset: 608)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !218, file: !118, line: 894, baseType: !257, size: 1600)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !118, line: 862, size: 1600, elements: !258)
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !257, file: !118, line: 863, baseType: !217, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !257, file: !118, line: 863, baseType: !69, size: 8, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !118, line: 863, baseType: !69, size: 8, offset: 72)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !257, file: !118, line: 863, baseType: !24, size: 16, offset: 80)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !257, file: !118, line: 863, baseType: !111, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !118, line: 863, baseType: !217, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !257, file: !118, line: 863, baseType: !116, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !257, file: !118, line: 863, baseType: !231, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !257, file: !118, line: 863, baseType: !69, size: 8, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !257, file: !118, line: 863, baseType: !217, size: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !257, file: !118, line: 864, baseType: !217, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !257, file: !118, line: 865, baseType: !100, size: 64, offset: 576)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !257, file: !118, line: 866, baseType: !69, size: 8, offset: 640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !257, file: !118, line: 867, baseType: !100, size: 64, offset: 704)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !257, file: !118, line: 868, baseType: !100, size: 64, offset: 768)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !257, file: !118, line: 869, baseType: !100, size: 64, offset: 832)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !257, file: !118, line: 870, baseType: !130, size: 32, offset: 896)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !257, file: !118, line: 871, baseType: !20, size: 32, offset: 928)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !257, file: !118, line: 872, baseType: !20, size: 32, offset: 960)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !257, file: !118, line: 873, baseType: !20, size: 32, offset: 992)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !257, file: !118, line: 874, baseType: !20, size: 32, offset: 1024)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !257, file: !118, line: 875, baseType: !20, size: 32, offset: 1056)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !257, file: !118, line: 876, baseType: !20, size: 32, offset: 1088)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !257, file: !118, line: 877, baseType: !20, size: 32, offset: 1120)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !257, file: !118, line: 878, baseType: !20, size: 32, offset: 1152)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !257, file: !118, line: 879, baseType: !20, size: 32, offset: 1184)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !257, file: !118, line: 880, baseType: !20, size: 32, offset: 1216)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !257, file: !118, line: 881, baseType: !20, size: 32, offset: 1248)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !257, file: !118, line: 882, baseType: !20, size: 32, offset: 1280)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !257, file: !118, line: 883, baseType: !20, size: 32, offset: 1312)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !257, file: !118, line: 884, baseType: !24, size: 16, offset: 1344)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !257, file: !118, line: 885, baseType: !69, size: 8, offset: 1360)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !257, file: !118, line: 886, baseType: !69, size: 8, offset: 1368)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !257, file: !118, line: 887, baseType: !69, size: 8, offset: 1376)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !257, file: !118, line: 888, baseType: !294, size: 160, offset: 1384)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 20)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !209, file: !118, line: 916, baseType: !116, size: 64, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !209, file: !118, line: 917, baseType: !299, size: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !118, line: 679, size: 640, elements: !301)
!301 = !{!302, !310, !323, !332, !341, !354, !368, !380, !392}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !300, file: !118, line: 680, baseType: !303, size: 128)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !118, line: 575, size: 128, elements: !304)
!304 = !{!305, !306, !307, !308, !309}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !303, file: !118, line: 576, baseType: !160, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !303, file: !118, line: 576, baseType: !69, size: 8, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !118, line: 576, baseType: !69, size: 8, offset: 72)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !303, file: !118, line: 576, baseType: !24, size: 16, offset: 80)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !303, file: !118, line: 576, baseType: !24, size: 16, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !300, file: !118, line: 681, baseType: !311, size: 384)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !118, line: 604, size: 384, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !118, line: 605, baseType: !160, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !118, line: 605, baseType: !69, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !118, line: 605, baseType: !69, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !118, line: 605, baseType: !24, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !118, line: 605, baseType: !24, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !311, file: !118, line: 606, baseType: !24, size: 16, offset: 112)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !311, file: !118, line: 607, baseType: !217, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !311, file: !118, line: 608, baseType: !111, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !311, file: !118, line: 609, baseType: !111, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !311, file: !118, line: 610, baseType: !88, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !300, file: !118, line: 682, baseType: !324, size: 192)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !118, line: 582, size: 192, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !118, line: 583, baseType: !160, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !118, line: 583, baseType: !69, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !118, line: 583, baseType: !69, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !324, file: !118, line: 583, baseType: !24, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !118, line: 583, baseType: !24, size: 16, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !324, file: !118, line: 584, baseType: !61, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !300, file: !118, line: 683, baseType: !333, size: 192)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !118, line: 616, size: 192, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !118, line: 617, baseType: !160, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !118, line: 617, baseType: !69, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !118, line: 617, baseType: !69, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !118, line: 617, baseType: !24, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !118, line: 617, baseType: !24, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !333, file: !118, line: 618, baseType: !116, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !300, file: !118, line: 684, baseType: !342, size: 448)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !118, line: 621, size: 448, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !118, line: 622, baseType: !160, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !342, file: !118, line: 622, baseType: !69, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !118, line: 622, baseType: !69, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !342, file: !118, line: 622, baseType: !24, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !342, file: !118, line: 622, baseType: !24, size: 16, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !342, file: !118, line: 623, baseType: !20, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !342, file: !118, line: 624, baseType: !217, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !342, file: !118, line: 625, baseType: !111, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !342, file: !118, line: 626, baseType: !111, size: 64, offset: 320)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !342, file: !118, line: 627, baseType: !20, size: 32, offset: 384)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !300, file: !118, line: 685, baseType: !355, size: 512)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !118, line: 590, size: 512, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !118, line: 591, baseType: !160, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !355, file: !118, line: 591, baseType: !69, size: 8, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !355, file: !118, line: 591, baseType: !69, size: 8, offset: 72)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !355, file: !118, line: 591, baseType: !24, size: 16, offset: 80)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !118, line: 591, baseType: !24, size: 16, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !355, file: !118, line: 592, baseType: !20, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !355, file: !118, line: 593, baseType: !61, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !355, file: !118, line: 594, baseType: !61, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !355, file: !118, line: 595, baseType: !183, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !355, file: !118, line: 596, baseType: !160, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !355, file: !118, line: 597, baseType: !20, size: 32, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !300, file: !118, line: 686, baseType: !369, size: 320)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !118, line: 634, size: 320, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !118, line: 635, baseType: !160, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !118, line: 635, baseType: !69, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !118, line: 635, baseType: !69, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !118, line: 635, baseType: !24, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !118, line: 635, baseType: !24, size: 16, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !369, file: !118, line: 636, baseType: !69, size: 8, offset: 112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !369, file: !118, line: 637, baseType: !183, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !369, file: !118, line: 638, baseType: !61, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !369, file: !118, line: 639, baseType: !88, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !300, file: !118, line: 687, baseType: !381, size: 640)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !118, line: 646, size: 640, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !118, line: 647, baseType: !160, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !381, file: !118, line: 647, baseType: !69, size: 8, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !118, line: 647, baseType: !69, size: 8, offset: 72)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !381, file: !118, line: 647, baseType: !24, size: 16, offset: 80)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !381, file: !118, line: 647, baseType: !24, size: 16, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !381, file: !118, line: 648, baseType: !389, size: 512, offset: 128)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 512, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 8)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !300, file: !118, line: 688, baseType: !393, size: 320)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !118, line: 669, size: 320, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !393, file: !118, line: 670, baseType: !160, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !393, file: !118, line: 670, baseType: !69, size: 8, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !118, line: 670, baseType: !69, size: 8, offset: 72)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !393, file: !118, line: 670, baseType: !24, size: 16, offset: 80)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !393, file: !118, line: 670, baseType: !24, size: 16, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !393, file: !118, line: 671, baseType: !69, size: 8, offset: 112)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !393, file: !118, line: 672, baseType: !116, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !393, file: !118, line: 673, baseType: !61, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !393, file: !118, line: 674, baseType: !404, size: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !118, line: 660, size: 128, elements: !406)
!406 = !{!407, !413}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !405, file: !118, line: 661, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412, !20, !160}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !160)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !405, file: !118, line: 662, baseType: !160, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !209, file: !118, line: 918, baseType: !217, size: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !209, file: !118, line: 919, baseType: !20, size: 32, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !184, file: !185, line: 61, baseType: !20, size: 32, offset: 1088)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !184, file: !185, line: 62, baseType: !20, size: 32, offset: 1120)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !184, file: !185, line: 63, baseType: !24, size: 16, offset: 1152)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !184, file: !185, line: 64, baseType: !69, size: 8, offset: 1168)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !184, file: !185, line: 66, baseType: !421, size: 2688, offset: 1216)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 2688, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 7)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !184, file: !185, line: 67, baseType: !425, size: 3072, offset: 3904)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 3072, elements: !390)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !184, file: !185, line: 68, baseType: !427, size: 576, offset: 6976)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 576, elements: !46)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !184, file: !185, line: 69, baseType: !60, size: 64, offset: 7552)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !184, file: !185, line: 71, baseType: !111, size: 64, offset: 7616)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !184, file: !185, line: 72, baseType: !60, size: 64, offset: 7680)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !184, file: !185, line: 73, baseType: !299, size: 64, offset: 7744)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !184, file: !185, line: 74, baseType: !116, size: 64, offset: 7808)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !184, file: !185, line: 75, baseType: !61, size: 64, offset: 7872)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !184, file: !185, line: 76, baseType: !116, size: 64, offset: 7936)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !184, file: !185, line: 77, baseType: !217, size: 64, offset: 8000)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !184, file: !185, line: 78, baseType: !61, size: 64, offset: 8064)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !184, file: !185, line: 79, baseType: !116, size: 64, offset: 8128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !184, file: !185, line: 80, baseType: !100, size: 64, offset: 8192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !184, file: !185, line: 81, baseType: !217, size: 64, offset: 8256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !184, file: !185, line: 82, baseType: !441, size: 64, offset: 8320)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !118, line: 718, size: 128, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !443, file: !118, line: 722, baseType: !20, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !443, file: !118, line: 723, baseType: !20, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !118, line: 724, baseType: !24, size: 16, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !443, file: !118, line: 725, baseType: !69, size: 8, offset: 80)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !443, file: !118, line: 726, baseType: !69, size: 8, offset: 88)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !443, file: !118, line: 727, baseType: !69, size: 8, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !184, file: !185, line: 83, baseType: !217, size: 64, offset: 8384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !184, file: !185, line: 84, baseType: !61, size: 64, offset: 8448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !184, file: !185, line: 85, baseType: !299, size: 64, offset: 8512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !184, file: !185, line: 86, baseType: !61, size: 64, offset: 8576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !184, file: !185, line: 87, baseType: !299, size: 64, offset: 8640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !184, file: !185, line: 88, baseType: !217, size: 64, offset: 8704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !184, file: !185, line: 89, baseType: !217, size: 64, offset: 8768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !184, file: !185, line: 90, baseType: !459, size: 64, offset: 8832)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !184, file: !185, line: 91, baseType: !461, size: 64, offset: 8896)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !118, line: 652, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!18, !183, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !184, file: !185, line: 92, baseType: !467, size: 64, offset: 8960)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !118, line: 656, baseType: !180)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !176, file: !6, line: 153, baseType: !61, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !162, file: !6, line: 156, baseType: !20, size: 32, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !162, file: !6, line: 157, baseType: !137, size: 16, offset: 416)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !162, file: !6, line: 158, baseType: !69, size: 8, offset: 432)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !62, file: !6, line: 377, baseType: !473, size: 576)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !473, file: !6, line: 123, baseType: !61, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !473, file: !6, line: 123, baseType: !69, size: 8, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !6, line: 123, baseType: !69, size: 8, offset: 72)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !473, file: !6, line: 123, baseType: !24, size: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !6, line: 123, baseType: !69, size: 8, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !473, file: !6, line: 123, baseType: !69, size: 8, offset: 104)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !473, file: !6, line: 124, baseType: !24, size: 16, offset: 112)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !473, file: !6, line: 125, baseType: !160, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !473, file: !6, line: 126, baseType: !88, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !473, file: !6, line: 127, baseType: !459, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !473, file: !6, line: 128, baseType: !61, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !473, file: !6, line: 129, baseType: !61, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !473, file: !6, line: 130, baseType: !116, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !473, file: !6, line: 131, baseType: !69, size: 8, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !62, file: !6, line: 378, baseType: !490, size: 512)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !503, !504}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !490, file: !6, line: 135, baseType: !61, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !490, file: !6, line: 135, baseType: !69, size: 8, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !490, file: !6, line: 135, baseType: !69, size: 8, offset: 72)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !490, file: !6, line: 135, baseType: !24, size: 16, offset: 80)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !6, line: 135, baseType: !69, size: 8, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !490, file: !6, line: 135, baseType: !69, size: 8, offset: 104)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !6, line: 136, baseType: !116, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !490, file: !6, line: 137, baseType: !61, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !490, file: !6, line: 138, baseType: !61, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !490, file: !6, line: 139, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !88)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !490, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !490, file: !6, line: 141, baseType: !160, size: 64, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !62, file: !6, line: 379, baseType: !506, size: 320)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !513, !517}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !506, file: !6, line: 186, baseType: !61, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !506, file: !6, line: 186, baseType: !69, size: 8, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !6, line: 186, baseType: !69, size: 8, offset: 72)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !506, file: !6, line: 186, baseType: !24, size: 16, offset: 80)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !6, line: 186, baseType: !69, size: 8, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !506, file: !6, line: 186, baseType: !514, size: 128, offset: 128)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 2)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !506, file: !6, line: 186, baseType: !61, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !62, file: !6, line: 380, baseType: !519, size: 384)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !519, file: !6, line: 189, baseType: !61, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !519, file: !6, line: 189, baseType: !69, size: 8, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !6, line: 189, baseType: !69, size: 8, offset: 72)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !519, file: !6, line: 189, baseType: !24, size: 16, offset: 80)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !6, line: 189, baseType: !69, size: 8, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !519, file: !6, line: 190, baseType: !514, size: 128, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !519, file: !6, line: 190, baseType: !61, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !519, file: !6, line: 190, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !118, line: 480, size: 576, elements: !531)
!531 = !{!532, !533, !534, !535, !543, !558, !590, !591, !592, !593, !594, !595}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !530, file: !118, line: 481, baseType: !116, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !530, file: !118, line: 482, baseType: !529, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !118, line: 483, baseType: !529, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !530, file: !118, line: 484, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !118, line: 497, size: 256, elements: !538)
!538 = !{!539, !540, !541, !542}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !537, file: !118, line: 498, baseType: !536, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !537, file: !118, line: 499, baseType: !536, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !537, file: !118, line: 500, baseType: !529, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !537, file: !118, line: 501, baseType: !20, size: 32, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !530, file: !118, line: 485, baseType: !544, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !118, line: 466, size: 320, elements: !546)
!546 = !{!547, !552, !553, !554, !555, !556, !557}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !545, file: !118, line: 467, baseType: !548, size: 128)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !118, line: 459, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !548, file: !118, line: 460, baseType: !69, size: 8)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !548, file: !118, line: 461, baseType: !88, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !545, file: !118, line: 468, baseType: !548, size: 128, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !545, file: !118, line: 469, baseType: !24, size: 16, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !545, file: !118, line: 470, baseType: !69, size: 8, offset: 272)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !545, file: !118, line: 471, baseType: !69, size: 8, offset: 280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !545, file: !118, line: 472, baseType: !69, size: 8, offset: 288)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !545, file: !118, line: 473, baseType: !69, size: 8, offset: 296)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !530, file: !118, line: 486, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !118, line: 448, size: 192, elements: !561)
!561 = !{!562, !585, !586, !587, !588, !589}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !560, file: !118, line: 449, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !118, line: 438, size: 64, elements: !564)
!564 = !{!565, !566, !579}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !563, file: !118, line: 439, baseType: !116, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !118, line: 440, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !118, line: 419, size: 256, elements: !569)
!569 = !{!570, !575, !576, !577, !578}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !568, file: !118, line: 420, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!20, !412, !20, !160}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !568, file: !118, line: 421, baseType: !160, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !568, file: !118, line: 422, baseType: !116, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !568, file: !118, line: 423, baseType: !69, size: 8, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !568, file: !118, line: 424, baseType: !69, size: 8, offset: 200)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !118, line: 441, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !118, line: 429, size: 128, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !581, file: !118, line: 430, baseType: !116, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !581, file: !118, line: 431, baseType: !580, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !560, file: !118, line: 450, baseType: !544, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !560, file: !118, line: 451, baseType: !69, size: 8, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !560, file: !118, line: 452, baseType: !69, size: 8, offset: 136)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !560, file: !118, line: 453, baseType: !69, size: 8, offset: 144)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !560, file: !118, line: 454, baseType: !69, size: 8, offset: 152)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !530, file: !118, line: 487, baseType: !88, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !530, file: !118, line: 488, baseType: !20, size: 32, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !530, file: !118, line: 489, baseType: !24, size: 16, offset: 480)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !530, file: !118, line: 490, baseType: !24, size: 16, offset: 496)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !530, file: !118, line: 491, baseType: !69, size: 8, offset: 512)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !530, file: !118, line: 492, baseType: !69, size: 8, offset: 520)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !62, file: !6, line: 381, baseType: !597, size: 384)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !6, line: 194, baseType: !61, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !6, line: 194, baseType: !69, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !6, line: 194, baseType: !69, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !6, line: 194, baseType: !24, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !6, line: 194, baseType: !69, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !597, file: !6, line: 194, baseType: !514, size: 128, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !597, file: !6, line: 194, baseType: !61, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !597, file: !6, line: 194, baseType: !20, size: 32, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !597, file: !6, line: 195, baseType: !20, size: 32, offset: 352)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !62, file: !6, line: 382, baseType: !609, size: 384)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !609, file: !6, line: 199, baseType: !61, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !609, file: !6, line: 199, baseType: !69, size: 8, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !609, file: !6, line: 199, baseType: !69, size: 8, offset: 72)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !609, file: !6, line: 199, baseType: !24, size: 16, offset: 80)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !6, line: 199, baseType: !69, size: 8, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !609, file: !6, line: 201, baseType: !69, size: 8, offset: 104)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !609, file: !6, line: 202, baseType: !69, size: 8, offset: 112)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !609, file: !6, line: 203, baseType: !514, size: 128, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !609, file: !6, line: 203, baseType: !61, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !609, file: !6, line: 203, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !88)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !62, file: !6, line: 383, baseType: !623, size: 320)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !6, line: 207, baseType: !61, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !6, line: 207, baseType: !69, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !6, line: 207, baseType: !69, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !6, line: 207, baseType: !24, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !6, line: 207, baseType: !69, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !623, file: !6, line: 207, baseType: !514, size: 128, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !623, file: !6, line: 207, baseType: !61, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !62, file: !6, line: 384, baseType: !633, size: 384)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !634)
!634 = !{!635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !633, file: !6, line: 235, baseType: !61, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !633, file: !6, line: 235, baseType: !69, size: 8, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !6, line: 235, baseType: !69, size: 8, offset: 72)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !633, file: !6, line: 235, baseType: !24, size: 16, offset: 80)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !6, line: 235, baseType: !69, size: 8, offset: 96)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !633, file: !6, line: 235, baseType: !69, size: 8, offset: 104)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !633, file: !6, line: 235, baseType: !69, size: 8, offset: 112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !633, file: !6, line: 235, baseType: !69, size: 8, offset: 120)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !633, file: !6, line: 235, baseType: !116, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !633, file: !6, line: 235, baseType: !20, size: 32, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !633, file: !6, line: 235, baseType: !20, size: 32, offset: 224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !633, file: !6, line: 235, baseType: !20, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !633, file: !6, line: 235, baseType: !69, size: 8, offset: 288)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !633, file: !6, line: 235, baseType: !69, size: 8, offset: 296)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !633, file: !6, line: 235, baseType: !61, size: 64, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !62, file: !6, line: 385, baseType: !651, size: 576)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !651, file: !6, line: 239, baseType: !61, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !651, file: !6, line: 239, baseType: !69, size: 8, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !6, line: 239, baseType: !69, size: 8, offset: 72)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !651, file: !6, line: 239, baseType: !24, size: 16, offset: 80)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !6, line: 239, baseType: !69, size: 8, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !651, file: !6, line: 239, baseType: !69, size: 8, offset: 104)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !651, file: !6, line: 239, baseType: !69, size: 8, offset: 112)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !651, file: !6, line: 239, baseType: !69, size: 8, offset: 120)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !6, line: 239, baseType: !116, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !651, file: !6, line: 239, baseType: !20, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !651, file: !6, line: 239, baseType: !20, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !6, line: 239, baseType: !20, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !651, file: !6, line: 239, baseType: !69, size: 8, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !651, file: !6, line: 239, baseType: !69, size: 8, offset: 296)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !651, file: !6, line: 239, baseType: !24, size: 16, offset: 304)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !651, file: !6, line: 240, baseType: !61, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !651, file: !6, line: 241, baseType: !111, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !651, file: !6, line: 242, baseType: !24, size: 16, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !651, file: !6, line: 243, baseType: !111, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !62, file: !6, line: 386, baseType: !673, size: 384)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !673, file: !6, line: 264, baseType: !61, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !673, file: !6, line: 264, baseType: !69, size: 8, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !6, line: 264, baseType: !69, size: 8, offset: 72)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !673, file: !6, line: 264, baseType: !24, size: 16, offset: 80)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !6, line: 264, baseType: !69, size: 8, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !673, file: !6, line: 264, baseType: !69, size: 8, offset: 104)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !673, file: !6, line: 264, baseType: !69, size: 8, offset: 112)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !673, file: !6, line: 264, baseType: !69, size: 8, offset: 120)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !6, line: 264, baseType: !116, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !673, file: !6, line: 264, baseType: !20, size: 32, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !673, file: !6, line: 264, baseType: !20, size: 32, offset: 224)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !673, file: !6, line: 264, baseType: !20, size: 32, offset: 256)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !673, file: !6, line: 264, baseType: !69, size: 8, offset: 288)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !673, file: !6, line: 264, baseType: !69, size: 8, offset: 296)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !673, file: !6, line: 264, baseType: !69, size: 8, offset: 304)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !673, file: !6, line: 265, baseType: !61, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !62, file: !6, line: 387, baseType: !692, size: 448)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !693)
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !692, file: !6, line: 247, baseType: !61, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !692, file: !6, line: 247, baseType: !69, size: 8, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !692, file: !6, line: 247, baseType: !69, size: 8, offset: 72)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !692, file: !6, line: 247, baseType: !24, size: 16, offset: 80)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !6, line: 247, baseType: !69, size: 8, offset: 96)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !692, file: !6, line: 247, baseType: !69, size: 8, offset: 104)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !692, file: !6, line: 247, baseType: !69, size: 8, offset: 112)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !692, file: !6, line: 247, baseType: !69, size: 8, offset: 120)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !692, file: !6, line: 247, baseType: !116, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !692, file: !6, line: 247, baseType: !20, size: 32, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !692, file: !6, line: 247, baseType: !20, size: 32, offset: 224)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !692, file: !6, line: 247, baseType: !20, size: 32, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !692, file: !6, line: 247, baseType: !69, size: 8, offset: 288)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !692, file: !6, line: 247, baseType: !69, size: 8, offset: 296)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !692, file: !6, line: 247, baseType: !61, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !692, file: !6, line: 248, baseType: !61, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !62, file: !6, line: 388, baseType: !711, size: 448)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !6, line: 252, baseType: !61, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !6, line: 252, baseType: !69, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !6, line: 252, baseType: !69, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !6, line: 252, baseType: !24, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !6, line: 252, baseType: !69, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !711, file: !6, line: 252, baseType: !69, size: 8, offset: 104)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !711, file: !6, line: 252, baseType: !69, size: 8, offset: 112)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !711, file: !6, line: 252, baseType: !69, size: 8, offset: 120)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !6, line: 252, baseType: !116, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !711, file: !6, line: 252, baseType: !20, size: 32, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !711, file: !6, line: 252, baseType: !20, size: 32, offset: 224)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !711, file: !6, line: 252, baseType: !20, size: 32, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !711, file: !6, line: 252, baseType: !69, size: 8, offset: 288)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !711, file: !6, line: 252, baseType: !69, size: 8, offset: 296)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !711, file: !6, line: 257, baseType: !61, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !711, file: !6, line: 258, baseType: !61, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !62, file: !6, line: 389, baseType: !730, size: 512)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !730, file: !6, line: 275, baseType: !61, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !6, line: 275, baseType: !69, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !6, line: 275, baseType: !69, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !730, file: !6, line: 275, baseType: !24, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !6, line: 275, baseType: !69, size: 8, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !6, line: 275, baseType: !116, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !730, file: !6, line: 276, baseType: !20, size: 32, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !730, file: !6, line: 277, baseType: !408, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !730, file: !6, line: 278, baseType: !160, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !6, line: 279, baseType: !514, size: 128, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !62, file: !6, line: 390, baseType: !743, size: 576)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !744)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !758, !759, !760, !761, !767, !768}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !743, file: !6, line: 283, baseType: !61, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !743, file: !6, line: 283, baseType: !69, size: 8, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !743, file: !6, line: 283, baseType: !69, size: 8, offset: 72)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !743, file: !6, line: 283, baseType: !24, size: 16, offset: 80)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !6, line: 283, baseType: !69, size: 8, offset: 96)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !743, file: !6, line: 283, baseType: !69, size: 8, offset: 104)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !743, file: !6, line: 284, baseType: !69, size: 8, offset: 112)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !743, file: !6, line: 285, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!18, !20, !502, !20, !757, !160, !160}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !743, file: !6, line: 286, baseType: !116, size: 64, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !743, file: !6, line: 287, baseType: !160, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !743, file: !6, line: 288, baseType: !160, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !743, file: !6, line: 289, baseType: !762, size: 64, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!18, !412, !20, !160, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !743, file: !6, line: 290, baseType: !61, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !743, file: !6, line: 291, baseType: !61, size: 64, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !62, file: !6, line: 391, baseType: !770, size: 512)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !770, file: !6, line: 310, baseType: !61, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !770, file: !6, line: 310, baseType: !69, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !770, file: !6, line: 310, baseType: !69, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !770, file: !6, line: 310, baseType: !24, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !6, line: 310, baseType: !69, size: 8, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !770, file: !6, line: 310, baseType: !69, size: 8, offset: 104)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !770, file: !6, line: 311, baseType: !69, size: 8, offset: 112)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !770, file: !6, line: 312, baseType: !69, size: 8, offset: 120)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !770, file: !6, line: 313, baseType: !160, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !770, file: !6, line: 314, baseType: !116, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !770, file: !6, line: 315, baseType: !60, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !770, file: !6, line: 316, baseType: !111, size: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !770, file: !6, line: 317, baseType: !111, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !770, file: !6, line: 318, baseType: !20, size: 32, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !62, file: !6, line: 392, baseType: !787, size: 448)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794, !795, !796, !797, !798}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !787, file: !6, line: 343, baseType: !61, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !787, file: !6, line: 343, baseType: !69, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !6, line: 343, baseType: !69, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !787, file: !6, line: 343, baseType: !24, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !6, line: 343, baseType: !69, size: 8, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !787, file: !6, line: 343, baseType: !116, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !787, file: !6, line: 344, baseType: !116, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !787, file: !6, line: 345, baseType: !160, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !787, file: !6, line: 346, baseType: !111, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !787, file: !6, line: 347, baseType: !20, size: 32, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !62, file: !6, line: 393, baseType: !800, size: 256)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !812}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !800, file: !6, line: 353, baseType: !61, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !800, file: !6, line: 353, baseType: !69, size: 8, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !800, file: !6, line: 353, baseType: !69, size: 8, offset: 72)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !800, file: !6, line: 353, baseType: !24, size: 16, offset: 80)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !6, line: 353, baseType: !69, size: 8, offset: 96)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !800, file: !6, line: 353, baseType: !808, size: 64, offset: 128)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !412, !160}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !800, file: !6, line: 354, baseType: !160, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !62, file: !6, line: 394, baseType: !814, size: 192)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !815)
!815 = !{!816, !817, !818, !819, !820, !821}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !814, file: !6, line: 360, baseType: !61, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !814, file: !6, line: 360, baseType: !69, size: 8, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !814, file: !6, line: 360, baseType: !69, size: 8, offset: 72)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !814, file: !6, line: 360, baseType: !24, size: 16, offset: 80)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !814, file: !6, line: 360, baseType: !69, size: 8, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !814, file: !6, line: 360, baseType: !61, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !62, file: !6, line: 401, baseType: !117, size: 384)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!824 = !{!825, !826, !827, !828, !829}
!825 = !DILocalVariable(name: "source_desc_ptr", arg: 1, scope: !57, file: !3, line: 34, type: !60)
!826 = !DILocalVariable(name: "target_type", arg: 2, scope: !57, file: !3, line: 35, type: !823)
!827 = !DILocalVariable(name: "walk_state", arg: 3, scope: !57, file: !3, line: 36, type: !183)
!828 = !DILocalVariable(name: "source_desc", scope: !57, file: !3, line: 38, type: !61)
!829 = !DILocalVariable(name: "status", scope: !57, file: !3, line: 39, type: !18)
!830 = !DILocation(line: 34, column: 52, scope: !57)
!831 = !DILocation(line: 35, column: 27, scope: !57)
!832 = !DILocation(line: 36, column: 34, scope: !57)
!833 = !DILocation(line: 38, column: 2, scope: !57)
!834 = !DILocation(line: 38, column: 29, scope: !57)
!835 = !DILocation(line: 38, column: 44, scope: !57)
!836 = !DILocation(line: 38, column: 43, scope: !57)
!837 = !DILocation(line: 39, column: 2, scope: !57)
!838 = !DILocation(line: 39, column: 14, scope: !57)
!839 = !DILocation(line: 45, column: 10, scope: !57)
!840 = !DILocation(line: 45, column: 2, scope: !57)
!841 = !DILocation(line: 62, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 62, column: 7)
!843 = distinct !DILexicalBlock(scope: !57, file: !3, line: 45, column: 23)
!844 = !DILocation(line: 62, column: 27, scope: !842)
!845 = !DILocation(line: 62, column: 32, scope: !842)
!846 = !DILocation(line: 62, column: 7, scope: !843)
!847 = !DILocation(line: 67, column: 33, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !3, line: 62, column: 62)
!849 = !DILocation(line: 68, column: 12, scope: !848)
!850 = !DILocation(line: 67, column: 8, scope: !848)
!851 = !DILocation(line: 66, column: 11, scope: !848)
!852 = !DILocation(line: 69, column: 8, scope: !853)
!853 = distinct !DILexicalBlock(scope: !848, file: !3, line: 69, column: 8)
!854 = !DILocation(line: 69, column: 8, scope: !848)
!855 = !DILocation(line: 70, column: 5, scope: !856)
!856 = distinct !DILexicalBlock(scope: !853, file: !3, line: 69, column: 30)
!857 = !DILocation(line: 72, column: 3, scope: !848)
!858 = !DILocation(line: 76, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !843, file: !3, line: 76, column: 7)
!860 = !DILocation(line: 76, column: 19, scope: !859)
!861 = !DILocation(line: 76, column: 26, scope: !859)
!862 = !DILocation(line: 76, column: 7, scope: !843)
!863 = !DILocation(line: 77, column: 4, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !3, line: 76, column: 49)
!865 = !DILocation(line: 82, column: 8, scope: !866)
!866 = distinct !DILexicalBlock(scope: !843, file: !3, line: 82, column: 7)
!867 = !DILocation(line: 82, column: 28, scope: !866)
!868 = !DILocation(line: 82, column: 33, scope: !866)
!869 = !DILocation(line: 82, column: 55, scope: !866)
!870 = !DILocation(line: 83, column: 8, scope: !866)
!871 = !DILocation(line: 83, column: 28, scope: !866)
!872 = !DILocation(line: 83, column: 33, scope: !866)
!873 = !DILocation(line: 83, column: 54, scope: !866)
!874 = !DILocation(line: 84, column: 8, scope: !866)
!875 = !DILocation(line: 84, column: 28, scope: !866)
!876 = !DILocation(line: 84, column: 33, scope: !866)
!877 = !DILocation(line: 84, column: 54, scope: !866)
!878 = !DILocation(line: 85, column: 10, scope: !866)
!879 = !DILocation(line: 85, column: 30, scope: !866)
!880 = !DILocation(line: 85, column: 35, scope: !866)
!881 = !DILocation(line: 85, column: 65, scope: !866)
!882 = !DILocation(line: 86, column: 10, scope: !866)
!883 = !DILocation(line: 86, column: 33, scope: !866)
!884 = !DILocation(line: 86, column: 39, scope: !866)
!885 = !DILocation(line: 82, column: 7, scope: !843)
!886 = !DILocation(line: 90, column: 4, scope: !887)
!887 = distinct !DILexicalBlock(scope: !866, file: !3, line: 86, column: 65)
!888 = !DILocation(line: 95, column: 11, scope: !887)
!889 = !DILocation(line: 96, column: 3, scope: !887)
!890 = !DILocation(line: 97, column: 3, scope: !843)
!891 = !DILocation(line: 105, column: 3, scope: !843)
!892 = !DILocation(line: 106, column: 10, scope: !843)
!893 = !DILocation(line: 107, column: 3, scope: !843)
!894 = !DILocation(line: 109, column: 2, scope: !843)
!895 = !DILocation(line: 115, column: 3, scope: !843)
!896 = !DILocation(line: 118, column: 2, scope: !57)
!897 = !DILocation(line: 119, column: 1, scope: !57)
!898 = !DISubprogram(name: "acpi_ex_resolve_to_value", scope: !899, file: !899, line: 357, type: !900, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!899 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!900 = !DISubroutineType(types: !901)
!901 = !{!18, !60, !183}
!902 = !DISubprogram(name: "acpi_error", scope: !903, file: !903, line: 901, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!904 = !DISubroutineType(types: !905)
!905 = !{null, !906, !20, !906, null}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!907 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !908, file: !908, line: 233, type: !909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!908 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!909 = !DISubroutineType(types: !910)
!910 = !{!906, !61}
!911 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !908, file: !908, line: 225, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DISubroutineType(types: !913)
!913 = !{!906, !823}
!914 = distinct !DISubprogram(name: "acpi_ex_store_object_to_object", scope: !3, file: !3, line: 157, type: !915, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!18, !61, !61, !60, !183}
!917 = !{!918, !919, !920, !921, !922, !923}
!918 = !DILocalVariable(name: "source_desc", arg: 1, scope: !914, file: !3, line: 157, type: !61)
!919 = !DILocalVariable(name: "dest_desc", arg: 2, scope: !914, file: !3, line: 158, type: !61)
!920 = !DILocalVariable(name: "new_desc", arg: 3, scope: !914, file: !3, line: 159, type: !60)
!921 = !DILocalVariable(name: "walk_state", arg: 4, scope: !914, file: !3, line: 160, type: !183)
!922 = !DILocalVariable(name: "actual_src_desc", scope: !914, file: !3, line: 162, type: !61)
!923 = !DILocalVariable(name: "status", scope: !914, file: !3, line: 163, type: !18)
!924 = !DILocation(line: 157, column: 59, scope: !914)
!925 = !DILocation(line: 158, column: 38, scope: !914)
!926 = !DILocation(line: 159, column: 39, scope: !914)
!927 = !DILocation(line: 160, column: 35, scope: !914)
!928 = !DILocation(line: 162, column: 2, scope: !914)
!929 = !DILocation(line: 162, column: 29, scope: !914)
!930 = !DILocation(line: 163, column: 2, scope: !914)
!931 = !DILocation(line: 163, column: 14, scope: !914)
!932 = !DILocation(line: 167, column: 20, scope: !914)
!933 = !DILocation(line: 167, column: 18, scope: !914)
!934 = !DILocation(line: 168, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !914, file: !3, line: 168, column: 6)
!936 = !DILocation(line: 168, column: 6, scope: !914)
!937 = !DILocation(line: 175, column: 39, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 168, column: 18)
!939 = !DILocation(line: 175, column: 56, scope: !938)
!940 = !DILocation(line: 176, column: 11, scope: !938)
!941 = !DILocation(line: 175, column: 7, scope: !938)
!942 = !DILocation(line: 174, column: 10, scope: !938)
!943 = !DILocation(line: 177, column: 3, scope: !938)
!944 = !DILocation(line: 180, column: 6, scope: !945)
!945 = distinct !DILexicalBlock(scope: !914, file: !3, line: 180, column: 6)
!946 = !DILocation(line: 180, column: 26, scope: !945)
!947 = !DILocation(line: 180, column: 34, scope: !945)
!948 = !DILocation(line: 180, column: 52, scope: !945)
!949 = !DILocation(line: 180, column: 31, scope: !945)
!950 = !DILocation(line: 180, column: 6, scope: !914)
!951 = !DILocation(line: 190, column: 43, scope: !952)
!952 = distinct !DILexicalBlock(scope: !945, file: !3, line: 180, column: 58)
!953 = !DILocation(line: 190, column: 61, scope: !952)
!954 = !DILocation(line: 191, column: 8, scope: !952)
!955 = !DILocation(line: 193, column: 8, scope: !952)
!956 = !DILocation(line: 190, column: 12, scope: !952)
!957 = !DILocation(line: 190, column: 10, scope: !952)
!958 = !DILocation(line: 194, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !952, file: !3, line: 194, column: 7)
!960 = !DILocation(line: 194, column: 7, scope: !952)
!961 = !DILocation(line: 195, column: 4, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 194, column: 29)
!963 = !DILocation(line: 198, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !952, file: !3, line: 198, column: 7)
!965 = !DILocation(line: 198, column: 22, scope: !964)
!966 = !DILocation(line: 198, column: 19, scope: !964)
!967 = !DILocation(line: 198, column: 7, scope: !952)
!968 = !DILocation(line: 203, column: 16, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !3, line: 198, column: 39)
!970 = !DILocation(line: 203, column: 5, scope: !969)
!971 = !DILocation(line: 203, column: 14, scope: !969)
!972 = !DILocation(line: 204, column: 4, scope: !969)
!973 = !DILocation(line: 206, column: 2, scope: !952)
!974 = !DILocation(line: 212, column: 10, scope: !914)
!975 = !DILocation(line: 212, column: 28, scope: !914)
!976 = !DILocation(line: 212, column: 2, scope: !914)
!977 = !DILocation(line: 215, column: 30, scope: !978)
!978 = distinct !DILexicalBlock(scope: !914, file: !3, line: 212, column: 34)
!979 = !DILocation(line: 215, column: 55, scope: !978)
!980 = !DILocation(line: 215, column: 3, scope: !978)
!981 = !DILocation(line: 215, column: 22, scope: !978)
!982 = !DILocation(line: 215, column: 28, scope: !978)
!983 = !DILocation(line: 219, column: 41, scope: !978)
!984 = !DILocation(line: 219, column: 9, scope: !978)
!985 = !DILocation(line: 220, column: 3, scope: !978)
!986 = !DILocation(line: 225, column: 38, scope: !978)
!987 = !DILocation(line: 225, column: 55, scope: !978)
!988 = !DILocation(line: 225, column: 7, scope: !978)
!989 = !DILocation(line: 224, column: 10, scope: !978)
!990 = !DILocation(line: 226, column: 3, scope: !978)
!991 = !DILocation(line: 231, column: 38, scope: !978)
!992 = !DILocation(line: 231, column: 55, scope: !978)
!993 = !DILocation(line: 231, column: 7, scope: !978)
!994 = !DILocation(line: 230, column: 10, scope: !978)
!995 = !DILocation(line: 232, column: 3, scope: !978)
!996 = !DILocation(line: 237, column: 39, scope: !978)
!997 = !DILocation(line: 238, column: 11, scope: !978)
!998 = !DILocation(line: 237, column: 7, scope: !978)
!999 = !DILocation(line: 236, column: 10, scope: !978)
!1000 = !DILocation(line: 239, column: 3, scope: !978)
!1001 = !DILocation(line: 245, column: 3, scope: !978)
!1002 = !DILocation(line: 248, column: 10, scope: !978)
!1003 = !DILocation(line: 249, column: 3, scope: !978)
!1004 = !DILocation(line: 252, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !914, file: !3, line: 252, column: 6)
!1006 = !DILocation(line: 252, column: 25, scope: !1005)
!1007 = !DILocation(line: 252, column: 22, scope: !1005)
!1008 = !DILocation(line: 252, column: 6, scope: !914)
!1009 = !DILocation(line: 256, column: 28, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 252, column: 38)
!1011 = !DILocation(line: 256, column: 3, scope: !1010)
!1012 = !DILocation(line: 257, column: 2, scope: !1010)
!1013 = !DILocation(line: 259, column: 14, scope: !914)
!1014 = !DILocation(line: 259, column: 3, scope: !914)
!1015 = !DILocation(line: 259, column: 12, scope: !914)
!1016 = !DILocation(line: 260, column: 2, scope: !914)
!1017 = !DILocation(line: 261, column: 1, scope: !914)
!1018 = !DISubprogram(name: "acpi_ut_copy_iobject_to_iobject", scope: !908, file: !908, line: 281, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!18, !61, !60, !183}
!1021 = !DISubprogram(name: "acpi_ex_convert_to_target_type", scope: !899, file: !899, line: 89, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!18, !823, !61, !60, !183}
!1024 = !DISubprogram(name: "acpi_ex_truncate_for32bit_table", scope: !899, file: !899, line: 468, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!69, !61}
!1027 = !DISubprogram(name: "acpi_ex_store_string_to_string", scope: !899, file: !899, line: 439, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!18, !61, !61}
!1030 = !DISubprogram(name: "acpi_ex_store_buffer_to_buffer", scope: !899, file: !899, line: 435, type: !1028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubprogram(name: "acpi_warning", scope: !903, file: !903, line: 912, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !908, file: !908, line: 369, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !61}
