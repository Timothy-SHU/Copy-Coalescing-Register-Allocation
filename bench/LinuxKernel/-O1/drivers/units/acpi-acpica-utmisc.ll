; ModuleID = 'drivers/acpi/acpica/utmisc.c'
source_filename = "drivers/acpi/acpica/utmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%struct.acpi_pkg_state = type { ptr, i8, i8, i16, i16, i32, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }

@.str = private unnamed_addr constant [8 x i8] c"PNP0A03\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"PNP0A08\00", align 1, !dbg !7
@acpi_gbl_integer_bit_width = external dso_local global i8, align 1
@acpi_gbl_integer_nybble_width = external dso_local global i8, align 1
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@_acpi_module_name = internal constant [7 x i8] c"utmisc\00", align 1, !dbg !9
@.str.2 = private unnamed_addr constant [39 x i8] c"State list did not terminate correctly\00", align 1, !dbg !799

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_is_pci_root_bridge(ptr noundef %id) #0 align 16 !dbg !815 {
entry:
  %retval = alloca i8, align 1
  %id.addr = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !819, metadata !DIExpression()), !dbg !820
  %0 = load ptr, ptr %id.addr, align 8, !dbg !821
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str) #4, !dbg !823
  %tobool = icmp ne i32 %call, 0, !dbg !823
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !824

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8, !dbg !825
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.1) #4, !dbg !826
  %tobool2 = icmp ne i32 %call1, 0, !dbg !826
  br i1 %tobool2, label %if.end, label %if.then, !dbg !827

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, ptr %retval, align 1, !dbg !828
  br label %return, !dbg !828

if.end:                                           ; preds = %lor.lhs.false
  store i8 0, ptr %retval, align 1, !dbg !830
  br label %return, !dbg !830

return:                                           ; preds = %if.end, %if.then
  %2 = load i8, ptr %retval, align 1, !dbg !831
  ret i8 %2, !dbg !831
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !832 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_dword_byte_swap(i32 noundef %value) #0 align 16 !dbg !838 {
entry:
  %value.addr = alloca i32, align 4
  %out = alloca %union.anon, align 4
  %in = alloca %union.anon.0, align 4
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !842, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 4, ptr %out) #5, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %out, metadata !843, metadata !DIExpression()), !dbg !856
  call void @llvm.lifetime.start.p0(i64 4, ptr %in) #5, !dbg !857
  call void @llvm.dbg.declare(metadata ptr %in, metadata !849, metadata !DIExpression()), !dbg !858
  %0 = load i32, ptr %value.addr, align 4, !dbg !859
  store i32 %0, ptr %in, align 4, !dbg !860
  %arrayidx = getelementptr [4 x i8], ptr %in, i64 0, i64 3, !dbg !861
  %1 = load i8, ptr %arrayidx, align 1, !dbg !861
  %arrayidx1 = getelementptr [4 x i8], ptr %out, i64 0, i64 0, !dbg !862
  store i8 %1, ptr %arrayidx1, align 4, !dbg !863
  %arrayidx2 = getelementptr [4 x i8], ptr %in, i64 0, i64 2, !dbg !864
  %2 = load i8, ptr %arrayidx2, align 2, !dbg !864
  %arrayidx3 = getelementptr [4 x i8], ptr %out, i64 0, i64 1, !dbg !865
  store i8 %2, ptr %arrayidx3, align 1, !dbg !866
  %arrayidx4 = getelementptr [4 x i8], ptr %in, i64 0, i64 1, !dbg !867
  %3 = load i8, ptr %arrayidx4, align 1, !dbg !867
  %arrayidx5 = getelementptr [4 x i8], ptr %out, i64 0, i64 2, !dbg !868
  store i8 %3, ptr %arrayidx5, align 2, !dbg !869
  %arrayidx6 = getelementptr [4 x i8], ptr %in, i64 0, i64 0, !dbg !870
  %4 = load i8, ptr %arrayidx6, align 4, !dbg !870
  %arrayidx7 = getelementptr [4 x i8], ptr %out, i64 0, i64 3, !dbg !871
  store i8 %4, ptr %arrayidx7, align 1, !dbg !872
  %5 = load i32, ptr %out, align 4, !dbg !873
  call void @llvm.lifetime.end.p0(i64 4, ptr %in) #5, !dbg !874
  call void @llvm.lifetime.end.p0(i64 4, ptr %out) #5, !dbg !874
  ret i32 %5, !dbg !875
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_set_integer_width(i8 noundef zeroext %revision) #0 align 16 !dbg !876 {
entry:
  %revision.addr = alloca i8, align 1
  store i8 %revision, ptr %revision.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %revision.addr, metadata !880, metadata !DIExpression()), !dbg !881
  %0 = load i8, ptr %revision.addr, align 1, !dbg !882
  %conv = zext i8 %0 to i32, !dbg !882
  %cmp = icmp slt i32 %conv, 2, !dbg !884
  br i1 %cmp, label %if.then, label %if.else, !dbg !885

if.then:                                          ; preds = %entry
  store i8 32, ptr @acpi_gbl_integer_bit_width, align 1, !dbg !886
  store i8 8, ptr @acpi_gbl_integer_nybble_width, align 1, !dbg !888
  store i8 4, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !889
  br label %if.end, !dbg !890

if.else:                                          ; preds = %entry
  store i8 64, ptr @acpi_gbl_integer_bit_width, align 1, !dbg !891
  store i8 16, ptr @acpi_gbl_integer_nybble_width, align 1, !dbg !893
  store i8 8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !894
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !895
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_create_update_state_and_push(ptr noundef %object, i16 noundef zeroext %action, ptr noundef %state_list) #0 align 16 !dbg !896 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  %action.addr = alloca i16, align 2
  %state_list.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !901, metadata !DIExpression()), !dbg !905
  store i16 %action, ptr %action.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !902, metadata !DIExpression()), !dbg !906
  store ptr %state_list, ptr %state_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_list.addr, metadata !903, metadata !DIExpression()), !dbg !907
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #5, !dbg !908
  call void @llvm.dbg.declare(metadata ptr %state, metadata !904, metadata !DIExpression()), !dbg !909
  %0 = load ptr, ptr %object.addr, align 8, !dbg !910
  %tobool = icmp ne ptr %0, null, !dbg !910
  br i1 %tobool, label %if.end, label %if.then, !dbg !912

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !913

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8, !dbg !915
  %2 = load i16, ptr %action.addr, align 2, !dbg !916
  %call = call ptr @acpi_ut_create_update_state(ptr noundef %1, i16 noundef zeroext %2) #4, !dbg !917
  store ptr %call, ptr %state, align 8, !dbg !918
  %3 = load ptr, ptr %state, align 8, !dbg !919
  %tobool1 = icmp ne ptr %3, null, !dbg !919
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !921

if.then2:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !922

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %state_list.addr, align 8, !dbg !924
  %5 = load ptr, ptr %state, align 8, !dbg !925
  call void @acpi_ut_push_generic_state(ptr noundef %4, ptr noundef %5) #4, !dbg !926
  store i32 0, ptr %retval, align 4, !dbg !927
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !927

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #5, !dbg !928
  %6 = load i32, ptr %retval, align 4, !dbg !928
  ret i32 %6, !dbg !928
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !929 dso_local ptr @acpi_ut_create_update_state(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !933 dso_local void @acpi_ut_push_generic_state(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_walk_package_tree(ptr noundef %source_object, ptr noundef %target_object, ptr noundef %walk_callback, ptr noundef %context) #0 align 16 !dbg !936 {
entry:
  %retval = alloca i32, align 4
  %source_object.addr = alloca ptr, align 8
  %target_object.addr = alloca ptr, align 8
  %walk_callback.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %state_list = alloca ptr, align 8
  %state = alloca ptr, align 8
  %this_source_obj = alloca ptr, align 8
  %this_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_object, ptr %source_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_object.addr, metadata !944, metadata !DIExpression()), !dbg !953
  store ptr %target_object, ptr %target_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target_object.addr, metadata !945, metadata !DIExpression()), !dbg !954
  store ptr %walk_callback, ptr %walk_callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_callback.addr, metadata !946, metadata !DIExpression()), !dbg !955
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !947, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !957
  call void @llvm.dbg.declare(metadata ptr %status, metadata !948, metadata !DIExpression()), !dbg !958
  store i32 0, ptr %status, align 4, !dbg !958
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_list) #5, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %state_list, metadata !949, metadata !DIExpression()), !dbg !960
  store ptr null, ptr %state_list, align 8, !dbg !960
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #5, !dbg !961
  call void @llvm.dbg.declare(metadata ptr %state, metadata !950, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 8, ptr %this_source_obj) #5, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %this_source_obj, metadata !951, metadata !DIExpression()), !dbg !964
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_index) #5, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %this_index, metadata !952, metadata !DIExpression()), !dbg !966
  %0 = load ptr, ptr %source_object.addr, align 8, !dbg !967
  %1 = load ptr, ptr %target_object.addr, align 8, !dbg !968
  %call = call ptr @acpi_ut_create_pkg_state(ptr noundef %0, ptr noundef %1, i32 noundef 0) #4, !dbg !969
  store ptr %call, ptr %state, align 8, !dbg !970
  %2 = load ptr, ptr %state, align 8, !dbg !971
  %tobool = icmp ne ptr %2, null, !dbg !971
  br i1 %tobool, label %if.end, label %if.then, !dbg !973

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !974

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !976

while.cond:                                       ; preds = %if.end45, %if.end
  %3 = load ptr, ptr %state, align 8, !dbg !977
  %tobool1 = icmp ne ptr %3, null, !dbg !976
  br i1 %tobool1, label %while.body, label %while.end46, !dbg !976

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %state, align 8, !dbg !978
  %index = getelementptr inbounds %struct.acpi_pkg_state, ptr %4, i32 0, i32 5, !dbg !980
  %5 = load i32, ptr %index, align 8, !dbg !980
  store i32 %5, ptr %this_index, align 4, !dbg !981
  %6 = load ptr, ptr %state, align 8, !dbg !982
  %source_object2 = getelementptr inbounds %struct.acpi_pkg_state, ptr %6, i32 0, i32 6, !dbg !983
  %7 = load ptr, ptr %source_object2, align 8, !dbg !983
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %7, i32 0, i32 6, !dbg !984
  %8 = load ptr, ptr %elements, align 8, !dbg !984
  %9 = load i32, ptr %this_index, align 4, !dbg !985
  %idxprom = zext i32 %9 to i64, !dbg !982
  %arrayidx = getelementptr ptr, ptr %8, i64 %idxprom, !dbg !982
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !982
  store ptr %10, ptr %this_source_obj, align 8, !dbg !986
  %11 = load ptr, ptr %state, align 8, !dbg !987
  %source_object3 = getelementptr inbounds %struct.acpi_pkg_state, ptr %11, i32 0, i32 6, !dbg !988
  %12 = load ptr, ptr %source_object3, align 8, !dbg !988
  %elements4 = getelementptr inbounds %struct.acpi_object_package, ptr %12, i32 0, i32 6, !dbg !989
  %13 = load ptr, ptr %elements4, align 8, !dbg !989
  %14 = load i32, ptr %this_index, align 4, !dbg !990
  %idxprom5 = zext i32 %14 to i64, !dbg !987
  %arrayidx6 = getelementptr ptr, ptr %13, i64 %idxprom5, !dbg !987
  %15 = load ptr, ptr %state, align 8, !dbg !991
  %this_target_obj = getelementptr inbounds %struct.acpi_pkg_state, ptr %15, i32 0, i32 9, !dbg !992
  store ptr %arrayidx6, ptr %this_target_obj, align 8, !dbg !993
  %16 = load ptr, ptr %this_source_obj, align 8, !dbg !994
  %tobool7 = icmp ne ptr %16, null, !dbg !994
  br i1 %tobool7, label %lor.lhs.false, label %if.then13, !dbg !996

lor.lhs.false:                                    ; preds = %while.body
  %17 = load ptr, ptr %this_source_obj, align 8, !dbg !997
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %17, i32 0, i32 1, !dbg !997
  %18 = load i8, ptr %descriptor_type, align 8, !dbg !997
  %conv = zext i8 %18 to i32, !dbg !997
  %cmp = icmp ne i32 %conv, 14, !dbg !998
  br i1 %cmp, label %if.then13, label %lor.lhs.false9, !dbg !999

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %19 = load ptr, ptr %this_source_obj, align 8, !dbg !1000
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %19, i32 0, i32 2, !dbg !1001
  %20 = load i8, ptr %type, align 1, !dbg !1001
  %conv10 = zext i8 %20 to i32, !dbg !1000
  %cmp11 = icmp ne i32 %conv10, 4, !dbg !1002
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1003

if.then13:                                        ; preds = %lor.lhs.false9, %lor.lhs.false, %while.body
  %21 = load ptr, ptr %walk_callback.addr, align 8, !dbg !1004
  %22 = load ptr, ptr %this_source_obj, align 8, !dbg !1006
  %23 = load ptr, ptr %state, align 8, !dbg !1007
  %24 = load ptr, ptr %context.addr, align 8, !dbg !1008
  %call14 = call i32 %21(i8 noundef zeroext 0, ptr noundef %22, ptr noundef %23, ptr noundef %24) #4, !dbg !1004
  store i32 %call14, ptr %status, align 4, !dbg !1009
  %25 = load i32, ptr %status, align 4, !dbg !1010
  %tobool15 = icmp ne i32 %25, 0, !dbg !1010
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1012

if.then16:                                        ; preds = %if.then13
  %26 = load i32, ptr %status, align 4, !dbg !1013
  store i32 %26, ptr %retval, align 4, !dbg !1013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1013

if.end17:                                         ; preds = %if.then13
  %27 = load ptr, ptr %state, align 8, !dbg !1015
  %index18 = getelementptr inbounds %struct.acpi_pkg_state, ptr %27, i32 0, i32 5, !dbg !1016
  %28 = load i32, ptr %index18, align 8, !dbg !1017
  %inc = add i32 %28, 1, !dbg !1017
  store i32 %inc, ptr %index18, align 8, !dbg !1017
  br label %while.cond19, !dbg !1018

while.cond19:                                     ; preds = %if.end28, %if.end17
  %29 = load ptr, ptr %state, align 8, !dbg !1019
  %index20 = getelementptr inbounds %struct.acpi_pkg_state, ptr %29, i32 0, i32 5, !dbg !1020
  %30 = load i32, ptr %index20, align 8, !dbg !1020
  %31 = load ptr, ptr %state, align 8, !dbg !1021
  %source_object21 = getelementptr inbounds %struct.acpi_pkg_state, ptr %31, i32 0, i32 6, !dbg !1022
  %32 = load ptr, ptr %source_object21, align 8, !dbg !1022
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %32, i32 0, i32 9, !dbg !1023
  %33 = load i32, ptr %count, align 4, !dbg !1023
  %cmp22 = icmp uge i32 %30, %33, !dbg !1024
  br i1 %cmp22, label %while.body24, label %while.end, !dbg !1018

while.body24:                                     ; preds = %while.cond19
  %34 = load ptr, ptr %state, align 8, !dbg !1025
  call void @acpi_ut_delete_generic_state(ptr noundef %34) #4, !dbg !1027
  %call25 = call ptr @acpi_ut_pop_generic_state(ptr noundef %state_list) #4, !dbg !1028
  store ptr %call25, ptr %state, align 8, !dbg !1029
  %35 = load ptr, ptr %state, align 8, !dbg !1030
  %tobool26 = icmp ne ptr %35, null, !dbg !1030
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !1032

if.then27:                                        ; preds = %while.body24
  store i32 0, ptr %retval, align 4, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

if.end28:                                         ; preds = %while.body24
  %36 = load ptr, ptr %state, align 8, !dbg !1035
  %index29 = getelementptr inbounds %struct.acpi_pkg_state, ptr %36, i32 0, i32 5, !dbg !1036
  %37 = load i32, ptr %index29, align 8, !dbg !1037
  %inc30 = add i32 %37, 1, !dbg !1037
  store i32 %inc30, ptr %index29, align 8, !dbg !1037
  br label %while.cond19, !dbg !1018, !llvm.loop !1038

while.end:                                        ; preds = %while.cond19
  br label %if.end45, !dbg !1042

if.else:                                          ; preds = %lor.lhs.false9
  %38 = load ptr, ptr %walk_callback.addr, align 8, !dbg !1043
  %39 = load ptr, ptr %this_source_obj, align 8, !dbg !1045
  %40 = load ptr, ptr %state, align 8, !dbg !1046
  %41 = load ptr, ptr %context.addr, align 8, !dbg !1047
  %call31 = call i32 %38(i8 noundef zeroext 1, ptr noundef %39, ptr noundef %40, ptr noundef %41) #4, !dbg !1043
  store i32 %call31, ptr %status, align 4, !dbg !1048
  %42 = load i32, ptr %status, align 4, !dbg !1049
  %tobool32 = icmp ne i32 %42, 0, !dbg !1049
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1051

if.then33:                                        ; preds = %if.else
  %43 = load i32, ptr %status, align 4, !dbg !1052
  store i32 %43, ptr %retval, align 4, !dbg !1052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1052

if.end34:                                         ; preds = %if.else
  %44 = load ptr, ptr %state, align 8, !dbg !1054
  call void @acpi_ut_push_generic_state(ptr noundef %state_list, ptr noundef %44) #4, !dbg !1055
  %45 = load ptr, ptr %this_source_obj, align 8, !dbg !1056
  %46 = load ptr, ptr %state, align 8, !dbg !1057
  %this_target_obj35 = getelementptr inbounds %struct.acpi_pkg_state, ptr %46, i32 0, i32 9, !dbg !1058
  %47 = load ptr, ptr %this_target_obj35, align 8, !dbg !1058
  %call36 = call ptr @acpi_ut_create_pkg_state(ptr noundef %45, ptr noundef %47, i32 noundef 0) #4, !dbg !1059
  store ptr %call36, ptr %state, align 8, !dbg !1060
  %48 = load ptr, ptr %state, align 8, !dbg !1061
  %tobool37 = icmp ne ptr %48, null, !dbg !1061
  br i1 %tobool37, label %if.end44, label %if.then38, !dbg !1063

if.then38:                                        ; preds = %if.end34
  br label %while.cond39, !dbg !1064

while.cond39:                                     ; preds = %while.body41, %if.then38
  %49 = load ptr, ptr %state_list, align 8, !dbg !1066
  %tobool40 = icmp ne ptr %49, null, !dbg !1064
  br i1 %tobool40, label %while.body41, label %while.end43, !dbg !1064

while.body41:                                     ; preds = %while.cond39
  %call42 = call ptr @acpi_ut_pop_generic_state(ptr noundef %state_list) #4, !dbg !1067
  store ptr %call42, ptr %state, align 8, !dbg !1069
  %50 = load ptr, ptr %state, align 8, !dbg !1070
  call void @acpi_ut_delete_generic_state(ptr noundef %50) #4, !dbg !1071
  br label %while.cond39, !dbg !1064, !llvm.loop !1072

while.end43:                                      ; preds = %while.cond39
  store i32 4, ptr %retval, align 4, !dbg !1074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1074

if.end44:                                         ; preds = %if.end34
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %while.end
  br label %while.cond, !dbg !976, !llvm.loop !1075

while.end46:                                      ; preds = %while.cond
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 309, ptr noundef @.str.2) #4, !dbg !1077
  store i32 12303, ptr %retval, align 4, !dbg !1078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1078

cleanup:                                          ; preds = %while.end46, %while.end43, %if.then33, %if.then27, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_index) #5, !dbg !1079
  call void @llvm.lifetime.end.p0(i64 8, ptr %this_source_obj) #5, !dbg !1079
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #5, !dbg !1079
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_list) #5, !dbg !1079
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1079
  %51 = load i32, ptr %retval, align 4, !dbg !1079
  ret i32 %51, !dbg !1079
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1080 dso_local ptr @acpi_ut_create_pkg_state(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1083 dso_local void @acpi_ut_delete_generic_state(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1086 dso_local ptr @acpi_ut_pop_generic_state(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1089 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!11}
!llvm.module.flags = !{!806, !807, !808, !809, !810, !811, !812, !813}
!llvm.ident = !{!814}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/utmisc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "20896e9c06c324001c1dca7769a0b3c3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !11, file: !2, line: 13, type: !804, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utmisc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utmisc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utmisc.ll drivers/acpi/acpica/utmisc.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !12, globals: !798, splitDebugInlining: false, nameTableKind: None)
!12 = !{!13, !20, !28}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !14, line: 421, baseType: !15)
!14 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !19)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !22, line: 434, size: 1600, elements: !23)
!22 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!23 = !{!24, !33, !796, !797}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !21, file: !22, line: 435, baseType: !25, size: 128)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !22, line: 429, size: 128, elements: !26)
!26 = !{!27, !29}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !25, file: !22, line: 430, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !25, file: !22, line: 431, baseType: !30, size: 8, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !21, file: !22, line: 436, baseType: !34, size: 576)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !22, line: 369, size: 576, elements: !35)
!35 = !{!36, !48, !64, !75, !111, !125, !134, !445, !462, !478, !491, !569, !581, !595, !605, !623, !645, !664, !683, !702, !715, !742, !759, !772, !786, !795}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !34, file: !22, line: 370, baseType: !37, size: 128)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !22, line: 73, size: 128, elements: !38)
!38 = !{!39, !41, !42, !43, !47}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !37, file: !22, line: 74, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !37, file: !22, line: 74, baseType: !30, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !37, file: !22, line: 74, baseType: !30, size: 8, offset: 72)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !37, file: !22, line: 74, baseType: !44, size: 16, offset: 80)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !37, file: !22, line: 74, baseType: !30, size: 8, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !34, file: !22, line: 371, baseType: !49, size: 192)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !22, line: 76, size: 192, elements: !50)
!50 = !{!51, !52, !53, !54, !55, !56, !60}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !49, file: !22, line: 77, baseType: !40, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !22, line: 77, baseType: !30, size: 8, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !22, line: 77, baseType: !30, size: 8, offset: 72)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !49, file: !22, line: 77, baseType: !44, size: 16, offset: 80)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !22, line: 77, baseType: !30, size: 8, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !49, file: !22, line: 77, baseType: !57, size: 24, offset: 104)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 3)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !49, file: !22, line: 78, baseType: !61, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !16, line: 23, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !18, line: 31, baseType: !63)
!63 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !34, file: !22, line: 372, baseType: !65, size: 256)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !22, line: 93, size: 256, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !74}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !65, file: !22, line: 94, baseType: !40, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !65, file: !22, line: 94, baseType: !30, size: 8, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !22, line: 94, baseType: !30, size: 8, offset: 72)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !65, file: !22, line: 94, baseType: !44, size: 16, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !22, line: 94, baseType: !30, size: 8, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !65, file: !22, line: 94, baseType: !73, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !65, file: !22, line: 94, baseType: !15, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !34, file: !22, line: 373, baseType: !76, size: 384)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !22, line: 97, size: 384, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !85, !86, !87, !88}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !76, file: !22, line: 98, baseType: !40, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !76, file: !22, line: 98, baseType: !30, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !22, line: 98, baseType: !30, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !76, file: !22, line: 98, baseType: !44, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !22, line: 98, baseType: !30, size: 8, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !76, file: !22, line: 98, baseType: !84, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !76, file: !22, line: 98, baseType: !15, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !76, file: !22, line: 99, baseType: !15, size: 32, offset: 224)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !76, file: !22, line: 100, baseType: !84, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !76, file: !22, line: 101, baseType: !89, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !91, line: 133, size: 384, elements: !92)
!91 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!92 = !{!93, !94, !95, !96, !97, !106, !107, !108, !109}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !90, file: !91, line: 134, baseType: !40, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !91, line: 135, baseType: !30, size: 8, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !91, line: 136, baseType: !30, size: 8, offset: 72)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !91, line: 137, baseType: !44, size: 16, offset: 80)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !91, line: 138, baseType: !98, size: 32, offset: 96)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !99, line: 328, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !98, file: !99, line: 329, baseType: !15, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !98, file: !99, line: 330, baseType: !103, size: 32)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 4)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !90, file: !91, line: 139, baseType: !89, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !90, file: !91, line: 140, baseType: !89, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !90, file: !91, line: 141, baseType: !89, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !90, file: !91, line: 142, baseType: !110, size: 16, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !14, line: 445, baseType: !44)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !34, file: !22, line: 374, baseType: !112, size: 384)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !22, line: 104, size: 384, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !122, !123, !124}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !112, file: !22, line: 105, baseType: !40, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !112, file: !22, line: 105, baseType: !30, size: 8, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !22, line: 105, baseType: !30, size: 8, offset: 72)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !112, file: !22, line: 105, baseType: !44, size: 16, offset: 80)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !22, line: 105, baseType: !30, size: 8, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !112, file: !22, line: 105, baseType: !89, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !112, file: !22, line: 106, baseType: !121, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !112, file: !22, line: 107, baseType: !84, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !112, file: !22, line: 108, baseType: !15, size: 32, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !112, file: !22, line: 109, baseType: !15, size: 32, offset: 352)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !34, file: !22, line: 375, baseType: !126, size: 192)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !22, line: 118, size: 192, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !22, line: 119, baseType: !40, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !22, line: 119, baseType: !30, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !22, line: 119, baseType: !30, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !22, line: 119, baseType: !44, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !22, line: 119, baseType: !30, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !126, file: !22, line: 119, baseType: !28, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !34, file: !22, line: 376, baseType: !135, size: 448)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !22, line: 144, size: 448, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !442, !443, !444}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !135, file: !22, line: 145, baseType: !40, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !135, file: !22, line: 145, baseType: !30, size: 8, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !22, line: 145, baseType: !30, size: 8, offset: 72)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !135, file: !22, line: 145, baseType: !44, size: 16, offset: 80)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !22, line: 145, baseType: !30, size: 8, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !135, file: !22, line: 145, baseType: !30, size: 8, offset: 104)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !135, file: !22, line: 146, baseType: !30, size: 8, offset: 112)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !135, file: !22, line: 147, baseType: !30, size: 8, offset: 120)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !135, file: !22, line: 148, baseType: !40, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !135, file: !22, line: 149, baseType: !40, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !135, file: !22, line: 150, baseType: !84, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !135, file: !22, line: 154, baseType: !149, size: 64, offset: 320)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !135, file: !22, line: 151, size: 64, elements: !150)
!150 = !{!151, !441}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !149, file: !22, line: 152, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !91, line: 248, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!13, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !158, line: 37, size: 9024, elements: !159)
!158 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !387, !388, !389, !390, !391, !395, !397, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !424, !425, !426, !427, !428, !429, !430, !431, !433, !439}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !158, line: 38, baseType: !156, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !157, file: !158, line: 39, baseType: !30, size: 8, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !157, file: !158, line: 40, baseType: !30, size: 8, offset: 72)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !157, file: !158, line: 41, baseType: !44, size: 16, offset: 80)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !157, file: !158, line: 42, baseType: !30, size: 8, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !157, file: !158, line: 43, baseType: !30, size: 8, offset: 104)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !157, file: !158, line: 44, baseType: !30, size: 8, offset: 112)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !157, file: !158, line: 45, baseType: !110, size: 16, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !157, file: !158, line: 46, baseType: !30, size: 8, offset: 144)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !157, file: !158, line: 47, baseType: !30, size: 8, offset: 152)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !157, file: !158, line: 48, baseType: !30, size: 8, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !157, file: !158, line: 49, baseType: !30, size: 8, offset: 168)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !157, file: !158, line: 50, baseType: !30, size: 8, offset: 176)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !157, file: !158, line: 51, baseType: !30, size: 8, offset: 184)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !157, file: !158, line: 52, baseType: !30, size: 8, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !157, file: !158, line: 53, baseType: !30, size: 8, offset: 200)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !157, file: !158, line: 54, baseType: !84, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !157, file: !158, line: 55, baseType: !15, size: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !157, file: !158, line: 56, baseType: !15, size: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !157, file: !158, line: 57, baseType: !15, size: 32, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !157, file: !158, line: 58, baseType: !15, size: 32, offset: 416)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !157, file: !158, line: 60, baseType: !182, size: 640, offset: 448)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !91, line: 909, size: 640, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !270, !271, !385, !386}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !182, file: !91, line: 910, baseType: !84, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !182, file: !91, line: 911, baseType: !84, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !182, file: !91, line: 912, baseType: !84, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !182, file: !91, line: 913, baseType: !84, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !182, file: !91, line: 914, baseType: !84, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !182, file: !91, line: 915, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !91, line: 891, size: 1600, elements: !192)
!192 = !{!193, !213, !229}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !191, file: !91, line: 892, baseType: !194, size: 448)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !91, line: 844, size: 448, elements: !195)
!195 = !{!196, !197, !198, !199, !200, !201, !202, !203, !212}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !91, line: 845, baseType: !190, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !194, file: !91, line: 845, baseType: !30, size: 8, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !194, file: !91, line: 845, baseType: !30, size: 8, offset: 72)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !194, file: !91, line: 845, baseType: !44, size: 16, offset: 80)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !194, file: !91, line: 845, baseType: !84, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !194, file: !91, line: 845, baseType: !190, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !194, file: !91, line: 845, baseType: !89, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !194, file: !91, line: 845, baseType: !204, size: 64, offset: 320)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !91, line: 732, size: 64, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !204, file: !91, line: 733, baseType: !61, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !204, file: !91, line: 734, baseType: !15, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !204, file: !91, line: 735, baseType: !73, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !204, file: !91, line: 736, baseType: !84, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !91, line: 737, baseType: !73, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !204, file: !91, line: 738, baseType: !190, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !194, file: !91, line: 845, baseType: !30, size: 8, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !191, file: !91, line: 893, baseType: !214, size: 640)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !91, line: 851, size: 640, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !214, file: !91, line: 852, baseType: !190, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !214, file: !91, line: 852, baseType: !30, size: 8, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !214, file: !91, line: 852, baseType: !30, size: 8, offset: 72)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !214, file: !91, line: 852, baseType: !44, size: 16, offset: 80)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !214, file: !91, line: 852, baseType: !84, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !91, line: 852, baseType: !190, size: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !214, file: !91, line: 852, baseType: !89, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !214, file: !91, line: 852, baseType: !204, size: 64, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !214, file: !91, line: 852, baseType: !30, size: 8, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !214, file: !91, line: 852, baseType: !73, size: 64, offset: 448)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !214, file: !91, line: 853, baseType: !84, size: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !214, file: !91, line: 854, baseType: !15, size: 32, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !91, line: 855, baseType: !15, size: 32, offset: 608)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !191, file: !91, line: 894, baseType: !230, size: 1600)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !91, line: 862, size: 1600, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !230, file: !91, line: 863, baseType: !190, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !230, file: !91, line: 863, baseType: !30, size: 8, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !230, file: !91, line: 863, baseType: !30, size: 8, offset: 72)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !230, file: !91, line: 863, baseType: !44, size: 16, offset: 80)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !230, file: !91, line: 863, baseType: !84, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !91, line: 863, baseType: !190, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !230, file: !91, line: 863, baseType: !89, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !230, file: !91, line: 863, baseType: !204, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !230, file: !91, line: 863, baseType: !30, size: 8, offset: 384)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !230, file: !91, line: 863, baseType: !190, size: 64, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !230, file: !91, line: 864, baseType: !190, size: 64, offset: 512)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !230, file: !91, line: 865, baseType: !73, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !230, file: !91, line: 866, baseType: !30, size: 8, offset: 640)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !230, file: !91, line: 867, baseType: !73, size: 64, offset: 704)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !230, file: !91, line: 868, baseType: !73, size: 64, offset: 768)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !230, file: !91, line: 869, baseType: !73, size: 64, offset: 832)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !230, file: !91, line: 870, baseType: !103, size: 32, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !230, file: !91, line: 871, baseType: !15, size: 32, offset: 928)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !230, file: !91, line: 872, baseType: !15, size: 32, offset: 960)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !230, file: !91, line: 873, baseType: !15, size: 32, offset: 992)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !230, file: !91, line: 874, baseType: !15, size: 32, offset: 1024)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !230, file: !91, line: 875, baseType: !15, size: 32, offset: 1056)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !230, file: !91, line: 876, baseType: !15, size: 32, offset: 1088)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !230, file: !91, line: 877, baseType: !15, size: 32, offset: 1120)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !230, file: !91, line: 878, baseType: !15, size: 32, offset: 1152)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !230, file: !91, line: 879, baseType: !15, size: 32, offset: 1184)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !230, file: !91, line: 880, baseType: !15, size: 32, offset: 1216)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !230, file: !91, line: 881, baseType: !15, size: 32, offset: 1248)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !230, file: !91, line: 882, baseType: !15, size: 32, offset: 1280)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !230, file: !91, line: 883, baseType: !15, size: 32, offset: 1312)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !230, file: !91, line: 884, baseType: !44, size: 16, offset: 1344)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !230, file: !91, line: 885, baseType: !30, size: 8, offset: 1360)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !230, file: !91, line: 886, baseType: !30, size: 8, offset: 1368)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !230, file: !91, line: 887, baseType: !30, size: 8, offset: 1376)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !230, file: !91, line: 888, baseType: !267, size: 160, offset: 1384)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 20)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !182, file: !91, line: 916, baseType: !89, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !182, file: !91, line: 917, baseType: !272, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !91, line: 679, size: 640, elements: !274)
!274 = !{!275, !283, !296, !305, !314, !327, !341, !353, !363}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !273, file: !91, line: 680, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !91, line: 575, size: 128, elements: !277)
!277 = !{!278, !279, !280, !281, !282}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !91, line: 576, baseType: !28, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !91, line: 576, baseType: !30, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !91, line: 576, baseType: !30, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !91, line: 576, baseType: !44, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !91, line: 576, baseType: !44, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !273, file: !91, line: 681, baseType: !284, size: 384)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !91, line: 604, size: 384, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !91, line: 605, baseType: !28, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !284, file: !91, line: 605, baseType: !30, size: 8, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !91, line: 605, baseType: !30, size: 8, offset: 72)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !284, file: !91, line: 605, baseType: !44, size: 16, offset: 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !284, file: !91, line: 605, baseType: !44, size: 16, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !284, file: !91, line: 606, baseType: !44, size: 16, offset: 112)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !284, file: !91, line: 607, baseType: !190, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !284, file: !91, line: 608, baseType: !84, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !284, file: !91, line: 609, baseType: !84, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !284, file: !91, line: 610, baseType: !61, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !273, file: !91, line: 682, baseType: !297, size: 192)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !91, line: 582, size: 192, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !91, line: 583, baseType: !28, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !91, line: 583, baseType: !30, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !91, line: 583, baseType: !30, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !91, line: 583, baseType: !44, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !91, line: 583, baseType: !44, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !297, file: !91, line: 584, baseType: !40, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !273, file: !91, line: 683, baseType: !306, size: 192)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !91, line: 616, size: 192, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !91, line: 617, baseType: !28, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !306, file: !91, line: 617, baseType: !30, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !91, line: 617, baseType: !30, size: 8, offset: 72)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !91, line: 617, baseType: !44, size: 16, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !306, file: !91, line: 617, baseType: !44, size: 16, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !306, file: !91, line: 618, baseType: !89, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !273, file: !91, line: 684, baseType: !315, size: 448)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !91, line: 621, size: 448, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !91, line: 622, baseType: !28, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !91, line: 622, baseType: !30, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !91, line: 622, baseType: !30, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !91, line: 622, baseType: !44, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !91, line: 622, baseType: !44, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !315, file: !91, line: 623, baseType: !15, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !315, file: !91, line: 624, baseType: !190, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !315, file: !91, line: 625, baseType: !84, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !315, file: !91, line: 626, baseType: !84, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !315, file: !91, line: 627, baseType: !15, size: 32, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !273, file: !91, line: 685, baseType: !328, size: 512)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !91, line: 590, size: 512, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !91, line: 591, baseType: !28, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !91, line: 591, baseType: !30, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !91, line: 591, baseType: !30, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !91, line: 591, baseType: !44, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !91, line: 591, baseType: !44, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !328, file: !91, line: 592, baseType: !15, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !328, file: !91, line: 593, baseType: !40, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !328, file: !91, line: 594, baseType: !40, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !328, file: !91, line: 595, baseType: !156, size: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !328, file: !91, line: 596, baseType: !28, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !328, file: !91, line: 597, baseType: !15, size: 32, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !273, file: !91, line: 686, baseType: !342, size: 320)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !91, line: 634, size: 320, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !91, line: 635, baseType: !28, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !342, file: !91, line: 635, baseType: !30, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !342, file: !91, line: 635, baseType: !30, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !342, file: !91, line: 635, baseType: !44, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !342, file: !91, line: 635, baseType: !44, size: 16, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !342, file: !91, line: 636, baseType: !30, size: 8, offset: 112)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !342, file: !91, line: 637, baseType: !156, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !342, file: !91, line: 638, baseType: !40, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !342, file: !91, line: 639, baseType: !61, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !273, file: !91, line: 687, baseType: !354, size: 640)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !91, line: 646, size: 640, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !91, line: 647, baseType: !28, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !91, line: 647, baseType: !30, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !91, line: 647, baseType: !30, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !91, line: 647, baseType: !44, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !91, line: 647, baseType: !44, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !354, file: !91, line: 648, baseType: !362, size: 512, offset: 128)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 512, elements: !5)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !273, file: !91, line: 688, baseType: !364, size: 320)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !91, line: 669, size: 320, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !91, line: 670, baseType: !28, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !364, file: !91, line: 670, baseType: !30, size: 8, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !91, line: 670, baseType: !30, size: 8, offset: 72)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !364, file: !91, line: 670, baseType: !44, size: 16, offset: 80)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !364, file: !91, line: 670, baseType: !44, size: 16, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !364, file: !91, line: 671, baseType: !30, size: 8, offset: 112)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !364, file: !91, line: 672, baseType: !89, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !364, file: !91, line: 673, baseType: !40, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !364, file: !91, line: 674, baseType: !375, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !91, line: 660, size: 128, elements: !377)
!377 = !{!378, !384}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !376, file: !91, line: 661, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !14, line: 1061, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !383, !15, !28}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !14, line: 424, baseType: !28)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !376, file: !91, line: 662, baseType: !28, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !182, file: !91, line: 918, baseType: !190, size: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !182, file: !91, line: 919, baseType: !15, size: 32, offset: 576)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !157, file: !158, line: 61, baseType: !15, size: 32, offset: 1088)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !157, file: !158, line: 62, baseType: !15, size: 32, offset: 1120)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !157, file: !158, line: 63, baseType: !44, size: 16, offset: 1152)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !157, file: !158, line: 64, baseType: !30, size: 8, offset: 1168)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !157, file: !158, line: 66, baseType: !392, size: 2688, offset: 1216)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2688, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 7)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !157, file: !158, line: 67, baseType: !396, size: 3072, offset: 3904)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 3072, elements: !5)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !157, file: !158, line: 68, baseType: !398, size: 576, offset: 6976)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 576, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 9)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !157, file: !158, line: 69, baseType: !121, size: 64, offset: 7552)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !157, file: !158, line: 71, baseType: !84, size: 64, offset: 7616)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !157, file: !158, line: 72, baseType: !121, size: 64, offset: 7680)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !157, file: !158, line: 73, baseType: !272, size: 64, offset: 7744)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !157, file: !158, line: 74, baseType: !89, size: 64, offset: 7808)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !157, file: !158, line: 75, baseType: !40, size: 64, offset: 7872)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !157, file: !158, line: 76, baseType: !89, size: 64, offset: 7936)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !157, file: !158, line: 77, baseType: !190, size: 64, offset: 8000)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !157, file: !158, line: 78, baseType: !40, size: 64, offset: 8064)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !157, file: !158, line: 79, baseType: !89, size: 64, offset: 8128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !157, file: !158, line: 80, baseType: !73, size: 64, offset: 8192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !157, file: !158, line: 81, baseType: !190, size: 64, offset: 8256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !157, file: !158, line: 82, baseType: !414, size: 64, offset: 8320)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !91, line: 718, size: 128, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !423}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !416, file: !91, line: 722, baseType: !15, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !416, file: !91, line: 723, baseType: !15, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !91, line: 724, baseType: !44, size: 16, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !416, file: !91, line: 725, baseType: !30, size: 8, offset: 80)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !416, file: !91, line: 726, baseType: !30, size: 8, offset: 88)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !416, file: !91, line: 727, baseType: !30, size: 8, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !157, file: !158, line: 83, baseType: !190, size: 64, offset: 8384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !157, file: !158, line: 84, baseType: !40, size: 64, offset: 8448)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !157, file: !158, line: 85, baseType: !272, size: 64, offset: 8512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !157, file: !158, line: 86, baseType: !40, size: 64, offset: 8576)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !157, file: !158, line: 87, baseType: !272, size: 64, offset: 8640)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !157, file: !158, line: 88, baseType: !190, size: 64, offset: 8704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !157, file: !158, line: 89, baseType: !190, size: 64, offset: 8768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !157, file: !158, line: 90, baseType: !432, size: 64, offset: 8832)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !157, file: !158, line: 91, baseType: !434, size: 64, offset: 8896)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !91, line: 652, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!13, !156, !438}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !157, file: !158, line: 92, baseType: !440, size: 64, offset: 8960)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !91, line: 656, baseType: !153)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !149, file: !22, line: 153, baseType: !40, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !135, file: !22, line: 156, baseType: !15, size: 32, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !135, file: !22, line: 157, baseType: !110, size: 16, offset: 416)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !135, file: !22, line: 158, baseType: !30, size: 8, offset: 432)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !34, file: !22, line: 377, baseType: !446, size: 576)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !22, line: 122, size: 576, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !446, file: !22, line: 123, baseType: !40, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !446, file: !22, line: 123, baseType: !30, size: 8, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !446, file: !22, line: 123, baseType: !30, size: 8, offset: 72)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !446, file: !22, line: 123, baseType: !44, size: 16, offset: 80)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !22, line: 123, baseType: !30, size: 8, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !446, file: !22, line: 123, baseType: !30, size: 8, offset: 104)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !446, file: !22, line: 124, baseType: !44, size: 16, offset: 112)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !446, file: !22, line: 125, baseType: !28, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !446, file: !22, line: 126, baseType: !61, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !446, file: !22, line: 127, baseType: !432, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !446, file: !22, line: 128, baseType: !40, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !22, line: 129, baseType: !40, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !446, file: !22, line: 130, baseType: !89, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !446, file: !22, line: 131, baseType: !30, size: 8, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !34, file: !22, line: 378, baseType: !463, size: 512)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !22, line: 134, size: 512, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !476, !477}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !463, file: !22, line: 135, baseType: !40, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !22, line: 135, baseType: !30, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !22, line: 135, baseType: !30, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !22, line: 135, baseType: !44, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !22, line: 135, baseType: !30, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !463, file: !22, line: 135, baseType: !30, size: 8, offset: 104)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !463, file: !22, line: 136, baseType: !89, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !463, file: !22, line: 137, baseType: !40, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !463, file: !22, line: 138, baseType: !40, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !463, file: !22, line: 139, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !14, line: 129, baseType: !61)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !463, file: !22, line: 140, baseType: !15, size: 32, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !463, file: !22, line: 141, baseType: !28, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !34, file: !22, line: 379, baseType: !479, size: 320)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !22, line: 185, size: 320, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !490}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !479, file: !22, line: 186, baseType: !40, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !479, file: !22, line: 186, baseType: !30, size: 8, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !479, file: !22, line: 186, baseType: !30, size: 8, offset: 72)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !479, file: !22, line: 186, baseType: !44, size: 16, offset: 80)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !22, line: 186, baseType: !30, size: 8, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !479, file: !22, line: 186, baseType: !487, size: 128, offset: 128)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 2)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !479, file: !22, line: 186, baseType: !40, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !34, file: !22, line: 380, baseType: !492, size: 384)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !22, line: 188, size: 384, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !492, file: !22, line: 189, baseType: !40, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !492, file: !22, line: 189, baseType: !30, size: 8, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !492, file: !22, line: 189, baseType: !30, size: 8, offset: 72)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !492, file: !22, line: 189, baseType: !44, size: 16, offset: 80)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !22, line: 189, baseType: !30, size: 8, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !492, file: !22, line: 190, baseType: !487, size: 128, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !492, file: !22, line: 190, baseType: !40, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !492, file: !22, line: 190, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !91, line: 480, size: 576, elements: !504)
!504 = !{!505, !506, !507, !508, !516, !531, !563, !564, !565, !566, !567, !568}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !503, file: !91, line: 481, baseType: !89, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !503, file: !91, line: 482, baseType: !502, size: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !91, line: 483, baseType: !502, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !503, file: !91, line: 484, baseType: !509, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !91, line: 497, size: 256, elements: !511)
!511 = !{!512, !513, !514, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !510, file: !91, line: 498, baseType: !509, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !91, line: 499, baseType: !509, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !510, file: !91, line: 500, baseType: !502, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !510, file: !91, line: 501, baseType: !15, size: 32, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !503, file: !91, line: 485, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !91, line: 466, size: 320, elements: !519)
!519 = !{!520, !525, !526, !527, !528, !529, !530}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !518, file: !91, line: 467, baseType: !521, size: 128)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !91, line: 459, size: 128, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !521, file: !91, line: 460, baseType: !30, size: 8)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !521, file: !91, line: 461, baseType: !61, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !518, file: !91, line: 468, baseType: !521, size: 128, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !518, file: !91, line: 469, baseType: !44, size: 16, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !518, file: !91, line: 470, baseType: !30, size: 8, offset: 272)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !518, file: !91, line: 471, baseType: !30, size: 8, offset: 280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !518, file: !91, line: 472, baseType: !30, size: 8, offset: 288)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !518, file: !91, line: 473, baseType: !30, size: 8, offset: 296)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !503, file: !91, line: 486, baseType: !532, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !91, line: 448, size: 192, elements: !534)
!534 = !{!535, !558, !559, !560, !561, !562}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !533, file: !91, line: 449, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !91, line: 438, size: 64, elements: !537)
!537 = !{!538, !539, !552}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !536, file: !91, line: 439, baseType: !89, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !536, file: !91, line: 440, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !91, line: 419, size: 256, elements: !542)
!542 = !{!543, !548, !549, !550, !551}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !541, file: !91, line: 420, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !14, line: 1058, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!15, !383, !15, !28}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !541, file: !91, line: 421, baseType: !28, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !541, file: !91, line: 422, baseType: !89, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !541, file: !91, line: 423, baseType: !30, size: 8, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !541, file: !91, line: 424, baseType: !30, size: 8, offset: 200)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !536, file: !91, line: 441, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !91, line: 429, size: 128, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !554, file: !91, line: 430, baseType: !89, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !554, file: !91, line: 431, baseType: !553, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !533, file: !91, line: 450, baseType: !517, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !533, file: !91, line: 451, baseType: !30, size: 8, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !533, file: !91, line: 452, baseType: !30, size: 8, offset: 136)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !533, file: !91, line: 453, baseType: !30, size: 8, offset: 144)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !533, file: !91, line: 454, baseType: !30, size: 8, offset: 152)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !503, file: !91, line: 487, baseType: !61, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !503, file: !91, line: 488, baseType: !15, size: 32, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !503, file: !91, line: 489, baseType: !44, size: 16, offset: 480)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !503, file: !91, line: 490, baseType: !44, size: 16, offset: 496)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !503, file: !91, line: 491, baseType: !30, size: 8, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !503, file: !91, line: 492, baseType: !30, size: 8, offset: 520)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !34, file: !22, line: 381, baseType: !570, size: 384)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !22, line: 193, size: 384, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579, !580}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !570, file: !22, line: 194, baseType: !40, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !570, file: !22, line: 194, baseType: !30, size: 8, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !570, file: !22, line: 194, baseType: !30, size: 8, offset: 72)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !570, file: !22, line: 194, baseType: !44, size: 16, offset: 80)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !570, file: !22, line: 194, baseType: !30, size: 8, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !570, file: !22, line: 194, baseType: !487, size: 128, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !570, file: !22, line: 194, baseType: !40, size: 64, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !570, file: !22, line: 194, baseType: !15, size: 32, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !570, file: !22, line: 195, baseType: !15, size: 32, offset: 352)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !34, file: !22, line: 382, baseType: !582, size: 384)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !22, line: 198, size: 384, elements: !583)
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592, !593}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !582, file: !22, line: 199, baseType: !40, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !582, file: !22, line: 199, baseType: !30, size: 8, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !582, file: !22, line: 199, baseType: !30, size: 8, offset: 72)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !582, file: !22, line: 199, baseType: !44, size: 16, offset: 80)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !582, file: !22, line: 199, baseType: !30, size: 8, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !582, file: !22, line: 201, baseType: !30, size: 8, offset: 104)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !582, file: !22, line: 202, baseType: !30, size: 8, offset: 112)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !582, file: !22, line: 203, baseType: !487, size: 128, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !582, file: !22, line: 203, baseType: !40, size: 64, offset: 256)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !582, file: !22, line: 203, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !14, line: 128, baseType: !61)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !34, file: !22, line: 383, baseType: !596, size: 320)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !22, line: 206, size: 320, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !596, file: !22, line: 207, baseType: !40, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !22, line: 207, baseType: !30, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !22, line: 207, baseType: !30, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !596, file: !22, line: 207, baseType: !44, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !22, line: 207, baseType: !30, size: 8, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !596, file: !22, line: 207, baseType: !487, size: 128, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !596, file: !22, line: 207, baseType: !40, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !34, file: !22, line: 384, baseType: !606, size: 384)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !22, line: 234, size: 384, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !606, file: !22, line: 235, baseType: !40, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !606, file: !22, line: 235, baseType: !30, size: 8, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !22, line: 235, baseType: !30, size: 8, offset: 72)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !606, file: !22, line: 235, baseType: !44, size: 16, offset: 80)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !22, line: 235, baseType: !30, size: 8, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !606, file: !22, line: 235, baseType: !30, size: 8, offset: 104)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !606, file: !22, line: 235, baseType: !30, size: 8, offset: 112)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !606, file: !22, line: 235, baseType: !30, size: 8, offset: 120)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !606, file: !22, line: 235, baseType: !89, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !606, file: !22, line: 235, baseType: !15, size: 32, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !606, file: !22, line: 235, baseType: !15, size: 32, offset: 224)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !606, file: !22, line: 235, baseType: !15, size: 32, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !606, file: !22, line: 235, baseType: !30, size: 8, offset: 288)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !606, file: !22, line: 235, baseType: !30, size: 8, offset: 296)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !606, file: !22, line: 235, baseType: !40, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !34, file: !22, line: 385, baseType: !624, size: 576)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !22, line: 238, size: 576, elements: !625)
!625 = !{!626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !624, file: !22, line: 239, baseType: !40, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !624, file: !22, line: 239, baseType: !30, size: 8, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !624, file: !22, line: 239, baseType: !30, size: 8, offset: 72)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !624, file: !22, line: 239, baseType: !44, size: 16, offset: 80)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !624, file: !22, line: 239, baseType: !30, size: 8, offset: 96)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !624, file: !22, line: 239, baseType: !30, size: 8, offset: 104)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !624, file: !22, line: 239, baseType: !30, size: 8, offset: 112)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !624, file: !22, line: 239, baseType: !30, size: 8, offset: 120)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !624, file: !22, line: 239, baseType: !89, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !624, file: !22, line: 239, baseType: !15, size: 32, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !624, file: !22, line: 239, baseType: !15, size: 32, offset: 224)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !624, file: !22, line: 239, baseType: !15, size: 32, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !624, file: !22, line: 239, baseType: !30, size: 8, offset: 288)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !624, file: !22, line: 239, baseType: !30, size: 8, offset: 296)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !624, file: !22, line: 239, baseType: !44, size: 16, offset: 304)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !624, file: !22, line: 240, baseType: !40, size: 64, offset: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !624, file: !22, line: 241, baseType: !84, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !624, file: !22, line: 242, baseType: !44, size: 16, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !624, file: !22, line: 243, baseType: !84, size: 64, offset: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !34, file: !22, line: 386, baseType: !646, size: 384)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !22, line: 263, size: 384, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !646, file: !22, line: 264, baseType: !40, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !646, file: !22, line: 264, baseType: !30, size: 8, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !22, line: 264, baseType: !30, size: 8, offset: 72)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !646, file: !22, line: 264, baseType: !44, size: 16, offset: 80)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !22, line: 264, baseType: !30, size: 8, offset: 96)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !646, file: !22, line: 264, baseType: !30, size: 8, offset: 104)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !646, file: !22, line: 264, baseType: !30, size: 8, offset: 112)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !646, file: !22, line: 264, baseType: !30, size: 8, offset: 120)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !22, line: 264, baseType: !89, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !646, file: !22, line: 264, baseType: !15, size: 32, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !646, file: !22, line: 264, baseType: !15, size: 32, offset: 224)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !646, file: !22, line: 264, baseType: !15, size: 32, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !646, file: !22, line: 264, baseType: !30, size: 8, offset: 288)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !646, file: !22, line: 264, baseType: !30, size: 8, offset: 296)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !646, file: !22, line: 264, baseType: !30, size: 8, offset: 304)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !646, file: !22, line: 265, baseType: !40, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !34, file: !22, line: 387, baseType: !665, size: 448)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !22, line: 246, size: 448, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !665, file: !22, line: 247, baseType: !40, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !665, file: !22, line: 247, baseType: !30, size: 8, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !665, file: !22, line: 247, baseType: !30, size: 8, offset: 72)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !665, file: !22, line: 247, baseType: !44, size: 16, offset: 80)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !665, file: !22, line: 247, baseType: !30, size: 8, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !665, file: !22, line: 247, baseType: !30, size: 8, offset: 104)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !665, file: !22, line: 247, baseType: !30, size: 8, offset: 112)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !665, file: !22, line: 247, baseType: !30, size: 8, offset: 120)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !665, file: !22, line: 247, baseType: !89, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !665, file: !22, line: 247, baseType: !15, size: 32, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !665, file: !22, line: 247, baseType: !15, size: 32, offset: 224)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !665, file: !22, line: 247, baseType: !15, size: 32, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !665, file: !22, line: 247, baseType: !30, size: 8, offset: 288)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !665, file: !22, line: 247, baseType: !30, size: 8, offset: 296)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !665, file: !22, line: 247, baseType: !40, size: 64, offset: 320)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !665, file: !22, line: 248, baseType: !40, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !34, file: !22, line: 388, baseType: !684, size: 448)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !22, line: 251, size: 448, elements: !685)
!685 = !{!686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !684, file: !22, line: 252, baseType: !40, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !684, file: !22, line: 252, baseType: !30, size: 8, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !684, file: !22, line: 252, baseType: !30, size: 8, offset: 72)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !684, file: !22, line: 252, baseType: !44, size: 16, offset: 80)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !22, line: 252, baseType: !30, size: 8, offset: 96)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !684, file: !22, line: 252, baseType: !30, size: 8, offset: 104)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !684, file: !22, line: 252, baseType: !30, size: 8, offset: 112)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !684, file: !22, line: 252, baseType: !30, size: 8, offset: 120)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !684, file: !22, line: 252, baseType: !89, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !684, file: !22, line: 252, baseType: !15, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !684, file: !22, line: 252, baseType: !15, size: 32, offset: 224)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !684, file: !22, line: 252, baseType: !15, size: 32, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !684, file: !22, line: 252, baseType: !30, size: 8, offset: 288)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !684, file: !22, line: 252, baseType: !30, size: 8, offset: 296)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !684, file: !22, line: 257, baseType: !40, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !684, file: !22, line: 258, baseType: !40, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !34, file: !22, line: 389, baseType: !703, size: 512)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !22, line: 274, size: 512, elements: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713, !714}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !703, file: !22, line: 275, baseType: !40, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !703, file: !22, line: 275, baseType: !30, size: 8, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !703, file: !22, line: 275, baseType: !30, size: 8, offset: 72)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !703, file: !22, line: 275, baseType: !44, size: 16, offset: 80)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !22, line: 275, baseType: !30, size: 8, offset: 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !22, line: 275, baseType: !89, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !703, file: !22, line: 276, baseType: !15, size: 32, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !703, file: !22, line: 277, baseType: !379, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !703, file: !22, line: 278, baseType: !28, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !703, file: !22, line: 279, baseType: !487, size: 128, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !34, file: !22, line: 390, baseType: !716, size: 576)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !22, line: 282, size: 576, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723, !724, !725, !731, !732, !733, !734, !740, !741}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !716, file: !22, line: 283, baseType: !40, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !22, line: 283, baseType: !30, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !22, line: 283, baseType: !30, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !22, line: 283, baseType: !44, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !22, line: 283, baseType: !30, size: 8, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !716, file: !22, line: 283, baseType: !30, size: 8, offset: 104)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !716, file: !22, line: 284, baseType: !30, size: 8, offset: 112)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !716, file: !22, line: 285, baseType: !726, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !14, line: 1093, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!13, !15, !475, !15, !730, !28, !28}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !716, file: !22, line: 286, baseType: !89, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !716, file: !22, line: 287, baseType: !28, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !716, file: !22, line: 288, baseType: !28, size: 64, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !716, file: !22, line: 289, baseType: !735, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !14, line: 1126, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!13, !383, !15, !28, !739}
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !716, file: !22, line: 290, baseType: !40, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !22, line: 291, baseType: !40, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !34, file: !22, line: 391, baseType: !743, size: 512)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !22, line: 309, size: 512, elements: !744)
!744 = !{!745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !743, file: !22, line: 310, baseType: !40, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !743, file: !22, line: 310, baseType: !30, size: 8, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !743, file: !22, line: 310, baseType: !30, size: 8, offset: 72)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !743, file: !22, line: 310, baseType: !44, size: 16, offset: 80)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !22, line: 310, baseType: !30, size: 8, offset: 96)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !743, file: !22, line: 310, baseType: !30, size: 8, offset: 104)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !743, file: !22, line: 311, baseType: !30, size: 8, offset: 112)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !743, file: !22, line: 312, baseType: !30, size: 8, offset: 120)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !743, file: !22, line: 313, baseType: !28, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !743, file: !22, line: 314, baseType: !89, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !743, file: !22, line: 315, baseType: !121, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !743, file: !22, line: 316, baseType: !84, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !743, file: !22, line: 317, baseType: !84, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !743, file: !22, line: 318, baseType: !15, size: 32, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !34, file: !22, line: 392, baseType: !760, size: 448)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !22, line: 342, size: 448, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !770, !771}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !760, file: !22, line: 343, baseType: !40, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !22, line: 343, baseType: !30, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !760, file: !22, line: 343, baseType: !30, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !760, file: !22, line: 343, baseType: !44, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !22, line: 343, baseType: !30, size: 8, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !760, file: !22, line: 343, baseType: !89, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !760, file: !22, line: 344, baseType: !89, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !760, file: !22, line: 345, baseType: !28, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !760, file: !22, line: 346, baseType: !84, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !760, file: !22, line: 347, baseType: !15, size: 32, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !34, file: !22, line: 393, baseType: !773, size: 256)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !22, line: 352, size: 256, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !785}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !773, file: !22, line: 353, baseType: !40, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !773, file: !22, line: 353, baseType: !30, size: 8, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !773, file: !22, line: 353, baseType: !30, size: 8, offset: 72)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !773, file: !22, line: 353, baseType: !44, size: 16, offset: 80)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !22, line: 353, baseType: !30, size: 8, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !773, file: !22, line: 353, baseType: !781, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !14, line: 1064, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !383, !28}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !773, file: !22, line: 354, baseType: !28, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !34, file: !22, line: 394, baseType: !787, size: 192)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !22, line: 359, size: 192, elements: !788)
!788 = !{!789, !790, !791, !792, !793, !794}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !787, file: !22, line: 360, baseType: !40, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !787, file: !22, line: 360, baseType: !30, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !22, line: 360, baseType: !30, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !787, file: !22, line: 360, baseType: !44, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !22, line: 360, baseType: !30, size: 8, offset: 96)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !787, file: !22, line: 360, baseType: !40, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !34, file: !22, line: 401, baseType: !90, size: 384)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !21, file: !22, line: 437, baseType: !90, size: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !21, file: !22, line: 438, baseType: !191, size: 1600)
!798 = !{!0, !7, !799, !9}
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !2, line: 309, type: !801, isLocal: true, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 39)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 56, elements: !393)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!806 = !{i32 7, !"Dwarf Version", i32 5}
!807 = !{i32 2, !"Debug Info Version", i32 3}
!808 = !{i32 1, !"wchar_size", i32 2}
!809 = !{i32 8, !"cf-protection-branch", i32 1}
!810 = !{i32 4, !"function_return_thunk_extern", i32 1}
!811 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!812 = !{i32 1, !"Code Model", i32 2}
!813 = !{i32 1, !"override-stack-alignment", i32 8}
!814 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!815 = distinct !DISubprogram(name: "acpi_ut_is_pci_root_bridge", scope: !2, file: !2, line: 26, type: !816, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !818)
!816 = !DISubroutineType(types: !817)
!817 = !{!30, !73}
!818 = !{!819}
!819 = !DILocalVariable(name: "id", arg: 1, scope: !815, file: !2, line: 26, type: !73)
!820 = !DILocation(line: 26, column: 37, scope: !815)
!821 = !DILocation(line: 33, column: 15, scope: !822)
!822 = distinct !DILexicalBlock(scope: !815, file: !2, line: 33, column: 6)
!823 = !DILocation(line: 33, column: 8, scope: !822)
!824 = !DILocation(line: 34, column: 30, scope: !822)
!825 = !DILocation(line: 35, column: 15, scope: !822)
!826 = !DILocation(line: 35, column: 8, scope: !822)
!827 = !DILocation(line: 33, column: 6, scope: !815)
!828 = !DILocation(line: 36, column: 3, scope: !829)
!829 = distinct !DILexicalBlock(scope: !822, file: !2, line: 35, column: 50)
!830 = !DILocation(line: 39, column: 2, scope: !815)
!831 = !DILocation(line: 40, column: 1, scope: !815)
!832 = !DISubprogram(name: "strcmp", scope: !833, file: !833, line: 88, type: !834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!833 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!834 = !DISubroutineType(types: !835)
!835 = !{!836, !837, !837}
!836 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!838 = distinct !DISubprogram(name: "acpi_ut_dword_byte_swap", scope: !2, file: !2, line: 86, type: !839, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !841)
!839 = !DISubroutineType(types: !840)
!840 = !{!15, !15}
!841 = !{!842, !843, !849}
!842 = !DILocalVariable(name: "value", arg: 1, scope: !838, file: !2, line: 86, type: !15)
!843 = !DILocalVariable(name: "out", scope: !838, file: !2, line: 91, type: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !2, line: 88, size: 32, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !844, file: !2, line: 89, baseType: !15, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !844, file: !2, line: 90, baseType: !848, size: 32)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !104)
!849 = !DILocalVariable(name: "in", scope: !838, file: !2, line: 95, type: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !2, line: 92, size: 32, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !850, file: !2, line: 93, baseType: !15, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !850, file: !2, line: 94, baseType: !848, size: 32)
!854 = !DILocation(line: 86, column: 33, scope: !838)
!855 = !DILocation(line: 88, column: 2, scope: !838)
!856 = !DILocation(line: 91, column: 4, scope: !838)
!857 = !DILocation(line: 92, column: 2, scope: !838)
!858 = !DILocation(line: 95, column: 4, scope: !838)
!859 = !DILocation(line: 99, column: 13, scope: !838)
!860 = !DILocation(line: 99, column: 11, scope: !838)
!861 = !DILocation(line: 101, column: 17, scope: !838)
!862 = !DILocation(line: 101, column: 2, scope: !838)
!863 = !DILocation(line: 101, column: 15, scope: !838)
!864 = !DILocation(line: 102, column: 17, scope: !838)
!865 = !DILocation(line: 102, column: 2, scope: !838)
!866 = !DILocation(line: 102, column: 15, scope: !838)
!867 = !DILocation(line: 103, column: 17, scope: !838)
!868 = !DILocation(line: 103, column: 2, scope: !838)
!869 = !DILocation(line: 103, column: 15, scope: !838)
!870 = !DILocation(line: 104, column: 17, scope: !838)
!871 = !DILocation(line: 104, column: 2, scope: !838)
!872 = !DILocation(line: 104, column: 15, scope: !838)
!873 = !DILocation(line: 106, column: 14, scope: !838)
!874 = !DILocation(line: 107, column: 1, scope: !838)
!875 = !DILocation(line: 106, column: 2, scope: !838)
!876 = distinct !DISubprogram(name: "acpi_ut_set_integer_width", scope: !2, file: !2, line: 124, type: !877, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !30}
!879 = !{!880}
!880 = !DILocalVariable(name: "revision", arg: 1, scope: !876, file: !2, line: 124, type: !30)
!881 = !DILocation(line: 124, column: 35, scope: !876)
!882 = !DILocation(line: 127, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !876, file: !2, line: 127, column: 6)
!884 = !DILocation(line: 127, column: 15, scope: !883)
!885 = !DILocation(line: 127, column: 6, scope: !876)
!886 = !DILocation(line: 131, column: 30, scope: !887)
!887 = distinct !DILexicalBlock(scope: !883, file: !2, line: 127, column: 20)
!888 = !DILocation(line: 132, column: 33, scope: !887)
!889 = !DILocation(line: 133, column: 31, scope: !887)
!890 = !DILocation(line: 134, column: 2, scope: !887)
!891 = !DILocation(line: 137, column: 30, scope: !892)
!892 = distinct !DILexicalBlock(scope: !883, file: !2, line: 134, column: 9)
!893 = !DILocation(line: 138, column: 33, scope: !892)
!894 = !DILocation(line: 139, column: 31, scope: !892)
!895 = !DILocation(line: 141, column: 1, scope: !876)
!896 = distinct !DISubprogram(name: "acpi_ut_create_update_state_and_push", scope: !2, file: !2, line: 158, type: !897, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !900)
!897 = !DISubroutineType(types: !898)
!898 = !{!13, !40, !44, !899}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!900 = !{!901, !902, !903, !904}
!901 = !DILocalVariable(name: "object", arg: 1, scope: !896, file: !2, line: 158, type: !40)
!902 = !DILocalVariable(name: "action", arg: 2, scope: !896, file: !2, line: 159, type: !44)
!903 = !DILocalVariable(name: "state_list", arg: 3, scope: !896, file: !2, line: 160, type: !899)
!904 = !DILocalVariable(name: "state", scope: !896, file: !2, line: 162, type: !272)
!905 = !DILocation(line: 158, column: 65, scope: !896)
!906 = !DILocation(line: 159, column: 14, scope: !896)
!907 = !DILocation(line: 160, column: 37, scope: !896)
!908 = !DILocation(line: 162, column: 2, scope: !896)
!909 = !DILocation(line: 162, column: 28, scope: !896)
!910 = !DILocation(line: 168, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !896, file: !2, line: 168, column: 6)
!912 = !DILocation(line: 168, column: 6, scope: !896)
!913 = !DILocation(line: 169, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !2, line: 168, column: 15)
!915 = !DILocation(line: 172, column: 38, scope: !896)
!916 = !DILocation(line: 172, column: 46, scope: !896)
!917 = !DILocation(line: 172, column: 10, scope: !896)
!918 = !DILocation(line: 172, column: 8, scope: !896)
!919 = !DILocation(line: 173, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !896, file: !2, line: 173, column: 6)
!921 = !DILocation(line: 173, column: 6, scope: !896)
!922 = !DILocation(line: 174, column: 3, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !2, line: 173, column: 14)
!924 = !DILocation(line: 177, column: 29, scope: !896)
!925 = !DILocation(line: 177, column: 41, scope: !896)
!926 = !DILocation(line: 177, column: 2, scope: !896)
!927 = !DILocation(line: 178, column: 2, scope: !896)
!928 = !DILocation(line: 179, column: 1, scope: !896)
!929 = !DISubprogram(name: "acpi_ut_create_update_state", scope: !930, file: !930, line: 517, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!931 = !DISubroutineType(types: !932)
!932 = !{!272, !40, !44}
!933 = !DISubprogram(name: "acpi_ut_push_generic_state", scope: !930, file: !930, line: 507, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !899, !272}
!936 = distinct !DISubprogram(name: "acpi_ut_walk_package_tree", scope: !2, file: !2, line: 197, type: !937, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !11, retainedNodes: !943)
!937 = !DISubroutineType(types: !938)
!938 = !{!13, !40, !28, !939, !28}
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_pkg_callback", file: !930, line: 129, baseType: !940)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!13, !30, !40, !272, !28}
!943 = !{!944, !945, !946, !947, !948, !949, !950, !951, !952}
!944 = !DILocalVariable(name: "source_object", arg: 1, scope: !936, file: !2, line: 197, type: !40)
!945 = !DILocalVariable(name: "target_object", arg: 2, scope: !936, file: !2, line: 198, type: !28)
!946 = !DILocalVariable(name: "walk_callback", arg: 3, scope: !936, file: !2, line: 199, type: !939)
!947 = !DILocalVariable(name: "context", arg: 4, scope: !936, file: !2, line: 199, type: !28)
!948 = !DILocalVariable(name: "status", scope: !936, file: !2, line: 201, type: !13)
!949 = !DILocalVariable(name: "state_list", scope: !936, file: !2, line: 202, type: !272)
!950 = !DILocalVariable(name: "state", scope: !936, file: !2, line: 203, type: !272)
!951 = !DILocalVariable(name: "this_source_obj", scope: !936, file: !2, line: 204, type: !40)
!952 = !DILocalVariable(name: "this_index", scope: !936, file: !2, line: 205, type: !15)
!953 = !DILocation(line: 197, column: 54, scope: !936)
!954 = !DILocation(line: 198, column: 12, scope: !936)
!955 = !DILocation(line: 199, column: 24, scope: !936)
!956 = !DILocation(line: 199, column: 45, scope: !936)
!957 = !DILocation(line: 201, column: 2, scope: !936)
!958 = !DILocation(line: 201, column: 14, scope: !936)
!959 = !DILocation(line: 202, column: 2, scope: !936)
!960 = !DILocation(line: 202, column: 28, scope: !936)
!961 = !DILocation(line: 203, column: 2, scope: !936)
!962 = !DILocation(line: 203, column: 28, scope: !936)
!963 = !DILocation(line: 204, column: 2, scope: !936)
!964 = !DILocation(line: 204, column: 29, scope: !936)
!965 = !DILocation(line: 205, column: 2, scope: !936)
!966 = !DILocation(line: 205, column: 6, scope: !936)
!967 = !DILocation(line: 209, column: 35, scope: !936)
!968 = !DILocation(line: 209, column: 50, scope: !936)
!969 = !DILocation(line: 209, column: 10, scope: !936)
!970 = !DILocation(line: 209, column: 8, scope: !936)
!971 = !DILocation(line: 210, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !936, file: !2, line: 210, column: 6)
!973 = !DILocation(line: 210, column: 6, scope: !936)
!974 = !DILocation(line: 211, column: 3, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !2, line: 210, column: 14)
!976 = !DILocation(line: 214, column: 2, scope: !936)
!977 = !DILocation(line: 214, column: 9, scope: !936)
!978 = !DILocation(line: 218, column: 16, scope: !979)
!979 = distinct !DILexicalBlock(scope: !936, file: !2, line: 214, column: 16)
!980 = !DILocation(line: 218, column: 27, scope: !979)
!981 = !DILocation(line: 218, column: 14, scope: !979)
!982 = !DILocation(line: 220, column: 7, scope: !979)
!983 = !DILocation(line: 220, column: 18, scope: !979)
!984 = !DILocation(line: 220, column: 41, scope: !979)
!985 = !DILocation(line: 220, column: 50, scope: !979)
!986 = !DILocation(line: 219, column: 19, scope: !979)
!987 = !DILocation(line: 222, column: 8, scope: !979)
!988 = !DILocation(line: 222, column: 19, scope: !979)
!989 = !DILocation(line: 222, column: 42, scope: !979)
!990 = !DILocation(line: 222, column: 51, scope: !979)
!991 = !DILocation(line: 221, column: 3, scope: !979)
!992 = !DILocation(line: 221, column: 14, scope: !979)
!993 = !DILocation(line: 221, column: 30, scope: !979)
!994 = !DILocation(line: 232, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !979, file: !2, line: 232, column: 7)
!996 = !DILocation(line: 232, column: 26, scope: !995)
!997 = !DILocation(line: 233, column: 8, scope: !995)
!998 = !DILocation(line: 233, column: 50, scope: !995)
!999 = !DILocation(line: 234, column: 32, scope: !995)
!1000 = !DILocation(line: 235, column: 8, scope: !995)
!1001 = !DILocation(line: 235, column: 32, scope: !995)
!1002 = !DILocation(line: 235, column: 37, scope: !995)
!1003 = !DILocation(line: 232, column: 7, scope: !979)
!1004 = !DILocation(line: 237, column: 8, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !995, file: !2, line: 235, column: 60)
!1006 = !DILocation(line: 238, column: 8, scope: !1005)
!1007 = !DILocation(line: 238, column: 25, scope: !1005)
!1008 = !DILocation(line: 238, column: 32, scope: !1005)
!1009 = !DILocation(line: 236, column: 11, scope: !1005)
!1010 = !DILocation(line: 239, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 239, column: 8)
!1012 = !DILocation(line: 239, column: 8, scope: !1005)
!1013 = !DILocation(line: 240, column: 5, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 239, column: 30)
!1015 = !DILocation(line: 243, column: 4, scope: !1005)
!1016 = !DILocation(line: 243, column: 15, scope: !1005)
!1017 = !DILocation(line: 243, column: 20, scope: !1005)
!1018 = !DILocation(line: 244, column: 4, scope: !1005)
!1019 = !DILocation(line: 244, column: 11, scope: !1005)
!1020 = !DILocation(line: 244, column: 22, scope: !1005)
!1021 = !DILocation(line: 245, column: 11, scope: !1005)
!1022 = !DILocation(line: 245, column: 22, scope: !1005)
!1023 = !DILocation(line: 245, column: 45, scope: !1005)
!1024 = !DILocation(line: 244, column: 28, scope: !1005)
!1025 = !DILocation(line: 253, column: 34, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 245, column: 52)
!1027 = !DILocation(line: 253, column: 5, scope: !1026)
!1028 = !DILocation(line: 254, column: 13, scope: !1026)
!1029 = !DILocation(line: 254, column: 11, scope: !1026)
!1030 = !DILocation(line: 258, column: 10, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 258, column: 9)
!1032 = !DILocation(line: 258, column: 9, scope: !1026)
!1033 = !DILocation(line: 264, column: 6, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 258, column: 17)
!1035 = !DILocation(line: 271, column: 5, scope: !1026)
!1036 = !DILocation(line: 271, column: 16, scope: !1026)
!1037 = !DILocation(line: 271, column: 21, scope: !1026)
!1038 = distinct !{!1038, !1018, !1039, !1040, !1041}
!1039 = !DILocation(line: 272, column: 4, scope: !1005)
!1040 = !{!"llvm.loop.mustprogress"}
!1041 = !{!"llvm.loop.unroll.disable"}
!1042 = !DILocation(line: 273, column: 3, scope: !1005)
!1043 = !DILocation(line: 277, column: 8, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !995, file: !2, line: 273, column: 10)
!1045 = !DILocation(line: 278, column: 8, scope: !1044)
!1046 = !DILocation(line: 278, column: 25, scope: !1044)
!1047 = !DILocation(line: 278, column: 32, scope: !1044)
!1048 = !DILocation(line: 276, column: 11, scope: !1044)
!1049 = !DILocation(line: 279, column: 8, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 279, column: 8)
!1051 = !DILocation(line: 279, column: 8, scope: !1044)
!1052 = !DILocation(line: 280, column: 5, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 279, column: 30)
!1054 = !DILocation(line: 287, column: 44, scope: !1044)
!1055 = !DILocation(line: 287, column: 4, scope: !1044)
!1056 = !DILocation(line: 289, column: 33, scope: !1044)
!1057 = !DILocation(line: 290, column: 12, scope: !1044)
!1058 = !DILocation(line: 290, column: 23, scope: !1044)
!1059 = !DILocation(line: 289, column: 8, scope: !1044)
!1060 = !DILocation(line: 288, column: 10, scope: !1044)
!1061 = !DILocation(line: 292, column: 9, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 292, column: 8)
!1063 = !DILocation(line: 292, column: 8, scope: !1044)
!1064 = !DILocation(line: 296, column: 5, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 292, column: 16)
!1066 = !DILocation(line: 296, column: 12, scope: !1065)
!1067 = !DILocation(line: 298, column: 10, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 296, column: 24)
!1069 = !DILocation(line: 297, column: 12, scope: !1068)
!1070 = !DILocation(line: 300, column: 35, scope: !1068)
!1071 = !DILocation(line: 300, column: 6, scope: !1068)
!1072 = distinct !{!1072, !1064, !1073, !1040, !1041}
!1073 = !DILocation(line: 301, column: 5, scope: !1065)
!1074 = !DILocation(line: 302, column: 5, scope: !1065)
!1075 = distinct !{!1075, !976, !1076, !1040, !1041}
!1076 = !DILocation(line: 305, column: 2, scope: !936)
!1077 = !DILocation(line: 309, column: 2, scope: !936)
!1078 = !DILocation(line: 311, column: 2, scope: !936)
!1079 = !DILocation(line: 312, column: 1, scope: !936)
!1080 = !DISubprogram(name: "acpi_ut_create_pkg_state", scope: !930, file: !930, line: 520, type: !1081, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!272, !28, !28, !15}
!1083 = !DISubprogram(name: "acpi_ut_delete_generic_state", scope: !930, file: !930, line: 531, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !272}
!1086 = !DISubprogram(name: "acpi_ut_pop_generic_state", scope: !930, file: !930, line: 510, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!272, !899}
!1089 = !DISubprogram(name: "acpi_error", scope: !1090, file: !1090, line: 901, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1090 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !837, !15, !837, null}
