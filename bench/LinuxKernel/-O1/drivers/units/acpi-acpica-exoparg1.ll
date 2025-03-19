; ModuleID = 'drivers/acpi/acpica/exoparg1.c'
source_filename = "drivers/acpi/acpica/exoparg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }

@_acpi_module_name = internal constant [9 x i8] c"exoparg1\00", align 1, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1, !dbg !809
@acpi_gbl_integer_nybble_width = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"BCD digit too large (not decimal): 0x%X\00", align 1, !dbg !814
@.str.2 = private unnamed_addr constant [50 x i8] c"Integer too large to convert to BCD: 0x%8.8X%8.8X\00", align 1, !dbg !819
@acpi_gbl_root_node = external dso_local global ptr, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"%s is obsolete and not implemented\00", align 1, !dbg !824
@.str.4 = private unnamed_addr constant [34 x i8] c"While resolving operands for [%s]\00", align 1, !dbg !829
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Operand must be Buffer/Integer/String/Package - found type %s\00", align 1, !dbg !834
@.str.6 = private unnamed_addr constant [53 x i8] c"Unknown Index TargetType 0x%X in reference object %p\00", align 1, !dbg !839
@.str.7 = private unnamed_addr constant [41 x i8] c"Unknown class in reference(%p) - 0x%2.2X\00", align 1, !dbg !844

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_0A_0T_1R(ptr noundef %walk_state) #0 align 16 !dbg !860 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %return_desc = alloca ptr, align 8
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !862, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %status, metadata !863, metadata !DIExpression()), !dbg !868
  store i32 0, ptr %status, align 4, !dbg !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #4, !dbg !869
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !864, metadata !DIExpression()), !dbg !870
  store ptr null, ptr %return_desc, align 8, !dbg !870
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !871
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 3, !dbg !872
  %1 = load i16, ptr %opcode, align 2, !dbg !872
  %conv = zext i16 %1 to i32, !dbg !871
  switch i32 %conv, label %sw.default [
    i32 23347, label %sw.bb
  ], !dbg !873

sw.bb:                                            ; preds = %entry
  %call = call i64 @acpi_os_get_timer() #5, !dbg !874
  %call1 = call ptr @acpi_ut_create_integer_object(i64 noundef %call) #5, !dbg !876
  store ptr %call1, ptr %return_desc, align 8, !dbg !877
  %2 = load ptr, ptr %return_desc, align 8, !dbg !878
  %tobool = icmp ne ptr %2, null, !dbg !878
  br i1 %tobool, label %if.end, label %if.then, !dbg !880

if.then:                                          ; preds = %sw.bb
  store i32 4, ptr %status, align 4, !dbg !881
  br label %cleanup, !dbg !883

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !884

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %walk_state.addr, align 8, !dbg !885
  %opcode2 = getelementptr inbounds %struct.acpi_walk_state, ptr %3, i32 0, i32 3, !dbg !885
  %4 = load i16, ptr %opcode2, align 2, !dbg !885
  %conv3 = zext i16 %4 to i32, !dbg !885
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 78, ptr noundef @.str, i32 noundef %conv3) #5, !dbg !885
  store i32 12289, ptr %status, align 4, !dbg !886
  br label %sw.epilog, !dbg !887

sw.epilog:                                        ; preds = %sw.default, %if.end
  br label %cleanup, !dbg !888

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.dbg.label(metadata !865), !dbg !889
  %5 = load i32, ptr %status, align 4, !dbg !890
  %tobool4 = icmp ne i32 %5, 0, !dbg !892
  br i1 %tobool4, label %if.then6, label %lor.lhs.false, !dbg !893

lor.lhs.false:                                    ; preds = %cleanup
  %6 = load ptr, ptr %walk_state.addr, align 8, !dbg !894
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %6, i32 0, i32 43, !dbg !895
  %7 = load ptr, ptr %result_obj, align 8, !dbg !895
  %tobool5 = icmp ne ptr %7, null, !dbg !894
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !896

if.then6:                                         ; preds = %lor.lhs.false, %cleanup
  %8 = load ptr, ptr %return_desc, align 8, !dbg !897
  call void @acpi_ut_remove_reference(ptr noundef %8) #5, !dbg !899
  %9 = load ptr, ptr %walk_state.addr, align 8, !dbg !900
  %result_obj7 = getelementptr inbounds %struct.acpi_walk_state, ptr %9, i32 0, i32 43, !dbg !901
  store ptr null, ptr %result_obj7, align 8, !dbg !902
  br label %if.end9, !dbg !903

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %return_desc, align 8, !dbg !904
  %11 = load ptr, ptr %walk_state.addr, align 8, !dbg !906
  %result_obj8 = getelementptr inbounds %struct.acpi_walk_state, ptr %11, i32 0, i32 43, !dbg !907
  store ptr %10, ptr %result_obj8, align 8, !dbg !908
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %12 = load i32, ptr %status, align 4, !dbg !909
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #4, !dbg !910
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !910
  ret i32 %12, !dbg !909
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !911 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !915 dso_local i64 @acpi_os_get_timer() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !919 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !924 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_1A_0T_0R(ptr noundef %walk_state) #0 align 16 !dbg !927 {
entry:
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !929, metadata !DIExpression()), !dbg !932
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #4, !dbg !933
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !930, metadata !DIExpression()), !dbg !934
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !935
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !936
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !935
  store ptr %arrayidx, ptr %operand, align 8, !dbg !934
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !937
  call void @llvm.dbg.declare(metadata ptr %status, metadata !931, metadata !DIExpression()), !dbg !938
  store i32 0, ptr %status, align 4, !dbg !938
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !939
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 3, !dbg !940
  %2 = load i16, ptr %opcode, align 2, !dbg !940
  %conv = zext i16 %2 to i32, !dbg !939
  switch i32 %conv, label %sw.default [
    i32 23335, label %sw.bb
    i32 23334, label %sw.bb2
    i32 23332, label %sw.bb5
    i32 23330, label %sw.bb8
    i32 23329, label %sw.bb11
    i32 23338, label %sw.bb16
  ], !dbg !941

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %operand, align 8, !dbg !942
  %arrayidx1 = getelementptr ptr, ptr %3, i64 0, !dbg !942
  %4 = load ptr, ptr %arrayidx1, align 8, !dbg !942
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !944
  %call = call i32 @acpi_ex_release_mutex(ptr noundef %4, ptr noundef %5) #5, !dbg !945
  store i32 %call, ptr %status, align 4, !dbg !946
  br label %sw.epilog, !dbg !947

sw.bb2:                                           ; preds = %entry
  %6 = load ptr, ptr %operand, align 8, !dbg !948
  %arrayidx3 = getelementptr ptr, ptr %6, i64 0, !dbg !948
  %7 = load ptr, ptr %arrayidx3, align 8, !dbg !948
  %call4 = call i32 @acpi_ex_system_reset_event(ptr noundef %7) #5, !dbg !949
  store i32 %call4, ptr %status, align 4, !dbg !950
  br label %sw.epilog, !dbg !951

sw.bb5:                                           ; preds = %entry
  %8 = load ptr, ptr %operand, align 8, !dbg !952
  %arrayidx6 = getelementptr ptr, ptr %8, i64 0, !dbg !952
  %9 = load ptr, ptr %arrayidx6, align 8, !dbg !952
  %call7 = call i32 @acpi_ex_system_signal_event(ptr noundef %9) #5, !dbg !953
  store i32 %call7, ptr %status, align 4, !dbg !954
  br label %sw.epilog, !dbg !955

sw.bb8:                                           ; preds = %entry
  %10 = load ptr, ptr %operand, align 8, !dbg !956
  %arrayidx9 = getelementptr ptr, ptr %10, i64 0, !dbg !956
  %11 = load ptr, ptr %arrayidx9, align 8, !dbg !956
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %11, i32 0, i32 6, !dbg !957
  %12 = load i64, ptr %value, align 8, !dbg !957
  %call10 = call i32 @acpi_ex_system_do_sleep(i64 noundef %12) #5, !dbg !958
  store i32 %call10, ptr %status, align 4, !dbg !959
  br label %sw.epilog, !dbg !960

sw.bb11:                                          ; preds = %entry
  %13 = load ptr, ptr %operand, align 8, !dbg !961
  %arrayidx12 = getelementptr ptr, ptr %13, i64 0, !dbg !961
  %14 = load ptr, ptr %arrayidx12, align 8, !dbg !961
  %value13 = getelementptr inbounds %struct.acpi_object_integer, ptr %14, i32 0, i32 6, !dbg !962
  %15 = load i64, ptr %value13, align 8, !dbg !962
  %conv14 = trunc i64 %15 to i32, !dbg !963
  %call15 = call i32 @acpi_ex_system_do_stall(i32 noundef %conv14) #5, !dbg !964
  store i32 %call15, ptr %status, align 4, !dbg !965
  br label %sw.epilog, !dbg !966

sw.bb16:                                          ; preds = %entry
  %16 = load ptr, ptr %operand, align 8, !dbg !967
  %arrayidx17 = getelementptr ptr, ptr %16, i64 0, !dbg !967
  %17 = load ptr, ptr %arrayidx17, align 8, !dbg !967
  %call18 = call i32 @acpi_ex_unload_table(ptr noundef %17) #5, !dbg !968
  store i32 %call18, ptr %status, align 4, !dbg !969
  br label %sw.epilog, !dbg !970

sw.default:                                       ; preds = %entry
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !971
  %opcode19 = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 3, !dbg !971
  %19 = load i16, ptr %opcode19, align 2, !dbg !971
  %conv20 = zext i16 %19 to i32, !dbg !971
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 157, ptr noundef @.str, i32 noundef %conv20) #5, !dbg !971
  store i32 12289, ptr %status, align 4, !dbg !972
  br label %sw.epilog, !dbg !973

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %20 = load i32, ptr %status, align 4, !dbg !974
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !975
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #4, !dbg !975
  ret i32 %20, !dbg !974
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !976 dso_local i32 @acpi_ex_release_mutex(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !980 dso_local i32 @acpi_ex_system_reset_event(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !983 dso_local i32 @acpi_ex_system_signal_event(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !984 dso_local i32 @acpi_ex_system_do_sleep(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !987 dso_local i32 @acpi_ex_system_do_stall(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !990 dso_local i32 @acpi_ex_unload_table(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_1A_1T_1R(ptr noundef %walk_state) #0 align 16 !dbg !991 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %operand = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %return_desc2 = alloca ptr, align 8
  %temp32 = alloca i32, align 4
  %i = alloca i32, align 4
  %power_of_ten = alloca i64, align 8
  %digit = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !993, metadata !DIExpression()), !dbg !1003
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1004
  call void @llvm.dbg.declare(metadata ptr %status, metadata !994, metadata !DIExpression()), !dbg !1005
  store i32 0, ptr %status, align 4, !dbg !1005
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #4, !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !995, metadata !DIExpression()), !dbg !1007
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1008
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !1009
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1008
  store ptr %arrayidx, ptr %operand, align 8, !dbg !1007
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #4, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !996, metadata !DIExpression()), !dbg !1011
  store ptr null, ptr %return_desc, align 8, !dbg !1011
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc2) #4, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %return_desc2, metadata !997, metadata !DIExpression()), !dbg !1013
  store ptr null, ptr %return_desc2, align 8, !dbg !1013
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp32) #4, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %temp32, metadata !998, metadata !DIExpression()), !dbg !1015
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %i, metadata !999, metadata !DIExpression()), !dbg !1017
  call void @llvm.lifetime.start.p0(i64 8, ptr %power_of_ten) #4, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %power_of_ten, metadata !1000, metadata !DIExpression()), !dbg !1019
  call void @llvm.lifetime.start.p0(i64 8, ptr %digit) #4, !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %digit, metadata !1001, metadata !DIExpression()), !dbg !1021
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1022
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 3, !dbg !1023
  %2 = load i16, ptr %opcode, align 2, !dbg !1023
  %conv = zext i16 %2 to i32, !dbg !1022
  switch i32 %conv, label %sw.default168 [
    i32 128, label %sw.bb
    i32 129, label %sw.bb
    i32 130, label %sw.bb
    i32 23336, label %sw.bb
    i32 23328, label %sw.bb
    i32 23337, label %sw.bb
    i32 23314, label %sw.bb
    i32 112, label %sw.bb116
    i32 157, label %sw.bb130
    i32 151, label %sw.bb133
    i32 152, label %sw.bb141
    i32 150, label %sw.bb149
    i32 153, label %sw.bb157
    i32 23313, label %sw.bb165
    i32 23312, label %sw.bb165
  ], !dbg !1024

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 254, i32 noundef 128, i32 noundef 1) #5, !dbg !1025
  store ptr %call, ptr %return_desc, align 8, !dbg !1027
  %3 = load ptr, ptr %return_desc, align 8, !dbg !1028
  %tobool = icmp ne ptr %3, null, !dbg !1028
  br i1 %tobool, label %if.end, label %if.then, !dbg !1030

if.then:                                          ; preds = %sw.bb
  store i32 4, ptr %status, align 4, !dbg !1031
  br label %cleanup, !dbg !1033

if.end:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %walk_state.addr, align 8, !dbg !1034
  %opcode1 = getelementptr inbounds %struct.acpi_walk_state, ptr %4, i32 0, i32 3, !dbg !1035
  %5 = load i16, ptr %opcode1, align 2, !dbg !1035
  %conv2 = zext i16 %5 to i32, !dbg !1034
  switch i32 %conv2, label %sw.default [
    i32 128, label %sw.bb3
    i32 129, label %sw.bb6
    i32 130, label %sw.bb16
    i32 23336, label %sw.bb36
    i32 23328, label %sw.bb61
    i32 23337, label %sw.bb69
    i32 23314, label %sw.bb101
  ], !dbg !1036

sw.bb3:                                           ; preds = %if.end
  %6 = load ptr, ptr %operand, align 8, !dbg !1037
  %arrayidx4 = getelementptr ptr, ptr %6, i64 0, !dbg !1037
  %7 = load ptr, ptr %arrayidx4, align 8, !dbg !1037
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %7, i32 0, i32 6, !dbg !1039
  %8 = load i64, ptr %value, align 8, !dbg !1039
  %not = xor i64 %8, -1, !dbg !1040
  %9 = load ptr, ptr %return_desc, align 8, !dbg !1041
  %value5 = getelementptr inbounds %struct.acpi_object_integer, ptr %9, i32 0, i32 6, !dbg !1042
  store i64 %not, ptr %value5, align 8, !dbg !1043
  br label %sw.epilog, !dbg !1044

sw.bb6:                                           ; preds = %if.end
  %10 = load ptr, ptr %operand, align 8, !dbg !1045
  %arrayidx7 = getelementptr ptr, ptr %10, i64 0, !dbg !1045
  %11 = load ptr, ptr %arrayidx7, align 8, !dbg !1045
  %value8 = getelementptr inbounds %struct.acpi_object_integer, ptr %11, i32 0, i32 6, !dbg !1046
  %12 = load i64, ptr %value8, align 8, !dbg !1046
  %13 = load ptr, ptr %return_desc, align 8, !dbg !1047
  %value9 = getelementptr inbounds %struct.acpi_object_integer, ptr %13, i32 0, i32 6, !dbg !1048
  store i64 %12, ptr %value9, align 8, !dbg !1049
  store i32 0, ptr %temp32, align 4, !dbg !1050
  br label %for.cond, !dbg !1052

for.cond:                                         ; preds = %for.inc, %sw.bb6
  %14 = load ptr, ptr %return_desc, align 8, !dbg !1053
  %value10 = getelementptr inbounds %struct.acpi_object_integer, ptr %14, i32 0, i32 6, !dbg !1055
  %15 = load i64, ptr %value10, align 8, !dbg !1055
  %tobool11 = icmp ne i64 %15, 0, !dbg !1053
  br i1 %tobool11, label %land.rhs, label %land.end, !dbg !1056

land.rhs:                                         ; preds = %for.cond
  %16 = load i32, ptr %temp32, align 4, !dbg !1057
  %cmp = icmp ult i32 %16, 64, !dbg !1058
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !1059
  br i1 %17, label %for.body, label %for.end, !dbg !1060

for.body:                                         ; preds = %land.end
  %18 = load ptr, ptr %return_desc, align 8, !dbg !1061
  %value13 = getelementptr inbounds %struct.acpi_object_integer, ptr %18, i32 0, i32 6, !dbg !1063
  %19 = load i64, ptr %value13, align 8, !dbg !1064
  %shr = lshr i64 %19, 1, !dbg !1064
  store i64 %shr, ptr %value13, align 8, !dbg !1064
  br label %for.inc, !dbg !1065

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %temp32, align 4, !dbg !1066
  %inc = add i32 %20, 1, !dbg !1066
  store i32 %inc, ptr %temp32, align 4, !dbg !1066
  br label %for.cond, !dbg !1067, !llvm.loop !1068

for.end:                                          ; preds = %land.end
  %21 = load i32, ptr %temp32, align 4, !dbg !1072
  %conv14 = zext i32 %21 to i64, !dbg !1072
  %22 = load ptr, ptr %return_desc, align 8, !dbg !1073
  %value15 = getelementptr inbounds %struct.acpi_object_integer, ptr %22, i32 0, i32 6, !dbg !1074
  store i64 %conv14, ptr %value15, align 8, !dbg !1075
  br label %sw.epilog, !dbg !1076

sw.bb16:                                          ; preds = %if.end
  %23 = load ptr, ptr %operand, align 8, !dbg !1077
  %arrayidx17 = getelementptr ptr, ptr %23, i64 0, !dbg !1077
  %24 = load ptr, ptr %arrayidx17, align 8, !dbg !1077
  %value18 = getelementptr inbounds %struct.acpi_object_integer, ptr %24, i32 0, i32 6, !dbg !1078
  %25 = load i64, ptr %value18, align 8, !dbg !1078
  %26 = load ptr, ptr %return_desc, align 8, !dbg !1079
  %value19 = getelementptr inbounds %struct.acpi_object_integer, ptr %26, i32 0, i32 6, !dbg !1080
  store i64 %25, ptr %value19, align 8, !dbg !1081
  store i32 0, ptr %temp32, align 4, !dbg !1082
  br label %for.cond20, !dbg !1084

for.cond20:                                       ; preds = %for.inc29, %sw.bb16
  %27 = load ptr, ptr %return_desc, align 8, !dbg !1085
  %value21 = getelementptr inbounds %struct.acpi_object_integer, ptr %27, i32 0, i32 6, !dbg !1087
  %28 = load i64, ptr %value21, align 8, !dbg !1087
  %tobool22 = icmp ne i64 %28, 0, !dbg !1085
  br i1 %tobool22, label %land.rhs23, label %land.end26, !dbg !1088

land.rhs23:                                       ; preds = %for.cond20
  %29 = load i32, ptr %temp32, align 4, !dbg !1089
  %cmp24 = icmp ult i32 %29, 64, !dbg !1090
  br label %land.end26

land.end26:                                       ; preds = %land.rhs23, %for.cond20
  %30 = phi i1 [ false, %for.cond20 ], [ %cmp24, %land.rhs23 ], !dbg !1091
  br i1 %30, label %for.body27, label %for.end31, !dbg !1092

for.body27:                                       ; preds = %land.end26
  %31 = load ptr, ptr %return_desc, align 8, !dbg !1093
  %value28 = getelementptr inbounds %struct.acpi_object_integer, ptr %31, i32 0, i32 6, !dbg !1095
  %32 = load i64, ptr %value28, align 8, !dbg !1096
  %shl = shl i64 %32, 1, !dbg !1096
  store i64 %shl, ptr %value28, align 8, !dbg !1096
  br label %for.inc29, !dbg !1097

for.inc29:                                        ; preds = %for.body27
  %33 = load i32, ptr %temp32, align 4, !dbg !1098
  %inc30 = add i32 %33, 1, !dbg !1098
  store i32 %inc30, ptr %temp32, align 4, !dbg !1098
  br label %for.cond20, !dbg !1099, !llvm.loop !1100

for.end31:                                        ; preds = %land.end26
  %34 = load i32, ptr %temp32, align 4, !dbg !1102
  %cmp32 = icmp eq i32 %34, 0, !dbg !1103
  br i1 %cmp32, label %cond.true, label %cond.false, !dbg !1102

cond.true:                                        ; preds = %for.end31
  br label %cond.end, !dbg !1102

cond.false:                                       ; preds = %for.end31
  %35 = load i32, ptr %temp32, align 4, !dbg !1104
  %sub = sub i32 65, %35, !dbg !1105
  br label %cond.end, !dbg !1102

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %sub, %cond.false ], !dbg !1102
  %conv34 = zext i32 %cond to i64, !dbg !1102
  %36 = load ptr, ptr %return_desc, align 8, !dbg !1106
  %value35 = getelementptr inbounds %struct.acpi_object_integer, ptr %36, i32 0, i32 6, !dbg !1107
  store i64 %conv34, ptr %value35, align 8, !dbg !1108
  br label %sw.epilog, !dbg !1109

sw.bb36:                                          ; preds = %if.end
  store i64 1, ptr %power_of_ten, align 8, !dbg !1110
  %37 = load ptr, ptr %return_desc, align 8, !dbg !1111
  %value37 = getelementptr inbounds %struct.acpi_object_integer, ptr %37, i32 0, i32 6, !dbg !1112
  store i64 0, ptr %value37, align 8, !dbg !1113
  %38 = load ptr, ptr %operand, align 8, !dbg !1114
  %arrayidx38 = getelementptr ptr, ptr %38, i64 0, !dbg !1114
  %39 = load ptr, ptr %arrayidx38, align 8, !dbg !1114
  %value39 = getelementptr inbounds %struct.acpi_object_integer, ptr %39, i32 0, i32 6, !dbg !1115
  %40 = load i64, ptr %value39, align 8, !dbg !1115
  store i64 %40, ptr %digit, align 8, !dbg !1116
  store i32 0, ptr %i, align 4, !dbg !1117
  br label %for.cond40, !dbg !1119

for.cond40:                                       ; preds = %for.inc58, %sw.bb36
  %41 = load i32, ptr %i, align 4, !dbg !1120
  %42 = load i8, ptr @acpi_gbl_integer_nybble_width, align 1, !dbg !1122
  %conv41 = zext i8 %42 to i32, !dbg !1122
  %cmp42 = icmp ult i32 %41, %conv41, !dbg !1123
  br i1 %cmp42, label %land.rhs44, label %land.end47, !dbg !1124

land.rhs44:                                       ; preds = %for.cond40
  %43 = load i64, ptr %digit, align 8, !dbg !1125
  %cmp45 = icmp ugt i64 %43, 0, !dbg !1126
  br label %land.end47

land.end47:                                       ; preds = %land.rhs44, %for.cond40
  %44 = phi i1 [ false, %for.cond40 ], [ %cmp45, %land.rhs44 ], !dbg !1127
  br i1 %44, label %for.body48, label %for.end60, !dbg !1128

for.body48:                                       ; preds = %land.end47
  %45 = load i64, ptr %digit, align 8, !dbg !1129
  %conv49 = trunc i64 %45 to i32, !dbg !1131
  %and = and i32 %conv49, 15, !dbg !1132
  store i32 %and, ptr %temp32, align 4, !dbg !1133
  %46 = load i32, ptr %temp32, align 4, !dbg !1134
  %cmp50 = icmp ugt i32 %46, 9, !dbg !1136
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1137

if.then52:                                        ; preds = %for.body48
  %47 = load i32, ptr %temp32, align 4, !dbg !1138
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 325, ptr noundef @.str.1, i32 noundef %47) #5, !dbg !1138
  store i32 12296, ptr %status, align 4, !dbg !1140
  br label %cleanup, !dbg !1141

if.end53:                                         ; preds = %for.body48
  %48 = load i32, ptr %temp32, align 4, !dbg !1142
  %conv54 = zext i32 %48 to i64, !dbg !1143
  %49 = load i64, ptr %power_of_ten, align 8, !dbg !1144
  %mul = mul i64 %conv54, %49, !dbg !1145
  %50 = load ptr, ptr %return_desc, align 8, !dbg !1146
  %value55 = getelementptr inbounds %struct.acpi_object_integer, ptr %50, i32 0, i32 6, !dbg !1147
  %51 = load i64, ptr %value55, align 8, !dbg !1148
  %add = add i64 %51, %mul, !dbg !1148
  store i64 %add, ptr %value55, align 8, !dbg !1148
  %52 = load i64, ptr %digit, align 8, !dbg !1149
  %shr56 = lshr i64 %52, 4, !dbg !1149
  store i64 %shr56, ptr %digit, align 8, !dbg !1149
  %53 = load i64, ptr %power_of_ten, align 8, !dbg !1150
  %mul57 = mul i64 %53, 10, !dbg !1150
  store i64 %mul57, ptr %power_of_ten, align 8, !dbg !1150
  br label %for.inc58, !dbg !1151

for.inc58:                                        ; preds = %if.end53
  %54 = load i32, ptr %i, align 4, !dbg !1152
  %inc59 = add i32 %54, 1, !dbg !1152
  store i32 %inc59, ptr %i, align 4, !dbg !1152
  br label %for.cond40, !dbg !1153, !llvm.loop !1154

for.end60:                                        ; preds = %land.end47
  br label %sw.epilog, !dbg !1156

sw.bb61:                                          ; preds = %if.end
  %55 = load ptr, ptr %return_desc, align 8, !dbg !1157
  %value62 = getelementptr inbounds %struct.acpi_object_integer, ptr %55, i32 0, i32 6, !dbg !1158
  store i64 0, ptr %value62, align 8, !dbg !1159
  %56 = load ptr, ptr %operand, align 8, !dbg !1160
  %arrayidx63 = getelementptr ptr, ptr %56, i64 0, !dbg !1160
  %57 = load ptr, ptr %arrayidx63, align 8, !dbg !1160
  %58 = load ptr, ptr %return_desc, align 8, !dbg !1161
  %59 = load ptr, ptr %walk_state.addr, align 8, !dbg !1162
  %call64 = call i32 @acpi_ex_load_op(ptr noundef %57, ptr noundef %58, ptr noundef %59) #5, !dbg !1163
  store i32 %call64, ptr %status, align 4, !dbg !1164
  %60 = load i32, ptr %status, align 4, !dbg !1165
  %tobool65 = icmp ne i32 %60, 0, !dbg !1165
  br i1 %tobool65, label %if.end68, label %if.then66, !dbg !1167

if.then66:                                        ; preds = %sw.bb61
  %61 = load ptr, ptr %return_desc, align 8, !dbg !1168
  %value67 = getelementptr inbounds %struct.acpi_object_integer, ptr %61, i32 0, i32 6, !dbg !1170
  store i64 -1, ptr %value67, align 8, !dbg !1171
  br label %if.end68, !dbg !1172

if.end68:                                         ; preds = %if.then66, %sw.bb61
  br label %sw.epilog, !dbg !1173

sw.bb69:                                          ; preds = %if.end
  %62 = load ptr, ptr %return_desc, align 8, !dbg !1174
  %value70 = getelementptr inbounds %struct.acpi_object_integer, ptr %62, i32 0, i32 6, !dbg !1175
  store i64 0, ptr %value70, align 8, !dbg !1176
  %63 = load ptr, ptr %operand, align 8, !dbg !1177
  %arrayidx71 = getelementptr ptr, ptr %63, i64 0, !dbg !1177
  %64 = load ptr, ptr %arrayidx71, align 8, !dbg !1177
  %value72 = getelementptr inbounds %struct.acpi_object_integer, ptr %64, i32 0, i32 6, !dbg !1178
  %65 = load i64, ptr %value72, align 8, !dbg !1178
  store i64 %65, ptr %digit, align 8, !dbg !1179
  store i32 0, ptr %i, align 4, !dbg !1180
  br label %for.cond73, !dbg !1182

for.cond73:                                       ; preds = %for.inc87, %sw.bb69
  %66 = load i32, ptr %i, align 4, !dbg !1183
  %67 = load i8, ptr @acpi_gbl_integer_nybble_width, align 1, !dbg !1185
  %conv74 = zext i8 %67 to i32, !dbg !1185
  %cmp75 = icmp ult i32 %66, %conv74, !dbg !1186
  br i1 %cmp75, label %land.rhs77, label %land.end80, !dbg !1187

land.rhs77:                                       ; preds = %for.cond73
  %68 = load i64, ptr %digit, align 8, !dbg !1188
  %cmp78 = icmp ugt i64 %68, 0, !dbg !1189
  br label %land.end80

land.end80:                                       ; preds = %land.rhs77, %for.cond73
  %69 = phi i1 [ false, %for.cond73 ], [ %cmp78, %land.rhs77 ], !dbg !1190
  br i1 %69, label %for.body81, label %for.end89, !dbg !1191

for.body81:                                       ; preds = %land.end80
  %70 = load i64, ptr %digit, align 8, !dbg !1192
  %call82 = call i32 @acpi_ut_short_divide(i64 noundef %70, i32 noundef 10, ptr noundef %digit, ptr noundef %temp32) #5, !dbg !1194
  %71 = load i32, ptr %temp32, align 4, !dbg !1195
  %conv83 = zext i32 %71 to i64, !dbg !1196
  %72 = load i32, ptr %i, align 4, !dbg !1197
  %shl84 = shl i32 %72, 2, !dbg !1197
  %sh_prom = zext i32 %shl84 to i64, !dbg !1198
  %shl85 = shl i64 %conv83, %sh_prom, !dbg !1198
  %73 = load ptr, ptr %return_desc, align 8, !dbg !1199
  %value86 = getelementptr inbounds %struct.acpi_object_integer, ptr %73, i32 0, i32 6, !dbg !1200
  %74 = load i64, ptr %value86, align 8, !dbg !1201
  %or = or i64 %74, %shl85, !dbg !1201
  store i64 %or, ptr %value86, align 8, !dbg !1201
  br label %for.inc87, !dbg !1202

for.inc87:                                        ; preds = %for.body81
  %75 = load i32, ptr %i, align 4, !dbg !1203
  %inc88 = add i32 %75, 1, !dbg !1203
  store i32 %inc88, ptr %i, align 4, !dbg !1203
  br label %for.cond73, !dbg !1204, !llvm.loop !1205

for.end89:                                        ; preds = %land.end80
  %76 = load i64, ptr %digit, align 8, !dbg !1207
  %cmp90 = icmp ugt i64 %76, 0, !dbg !1209
  br i1 %cmp90, label %if.then92, label %if.end100, !dbg !1210

if.then92:                                        ; preds = %for.end89
  %77 = load ptr, ptr %operand, align 8, !dbg !1211
  %arrayidx93 = getelementptr ptr, ptr %77, i64 0, !dbg !1211
  %78 = load ptr, ptr %arrayidx93, align 8, !dbg !1211
  %value94 = getelementptr inbounds %struct.acpi_object_integer, ptr %78, i32 0, i32 6, !dbg !1211
  %79 = load i64, ptr %value94, align 8, !dbg !1211
  %shr95 = lshr i64 %79, 32, !dbg !1211
  %conv96 = trunc i64 %shr95 to i32, !dbg !1211
  %80 = load ptr, ptr %operand, align 8, !dbg !1211
  %arrayidx97 = getelementptr ptr, ptr %80, i64 0, !dbg !1211
  %81 = load ptr, ptr %arrayidx97, align 8, !dbg !1211
  %value98 = getelementptr inbounds %struct.acpi_object_integer, ptr %81, i32 0, i32 6, !dbg !1211
  %82 = load i64, ptr %value98, align 8, !dbg !1211
  %conv99 = trunc i64 %82 to i32, !dbg !1211
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 386, ptr noundef @.str.2, i32 noundef %conv96, i32 noundef %conv99) #5, !dbg !1211
  store i32 12296, ptr %status, align 4, !dbg !1213
  br label %cleanup, !dbg !1214

if.end100:                                        ; preds = %for.end89
  br label %sw.epilog, !dbg !1215

sw.bb101:                                         ; preds = %if.end
  %83 = load ptr, ptr %operand, align 8, !dbg !1216
  %arrayidx102 = getelementptr ptr, ptr %83, i64 0, !dbg !1216
  %84 = load ptr, ptr %arrayidx102, align 8, !dbg !1216
  %85 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1218
  %cmp103 = icmp eq ptr %84, %85, !dbg !1219
  br i1 %cmp103, label %if.then105, label %if.end107, !dbg !1220

if.then105:                                       ; preds = %sw.bb101
  %86 = load ptr, ptr %return_desc, align 8, !dbg !1221
  %value106 = getelementptr inbounds %struct.acpi_object_integer, ptr %86, i32 0, i32 6, !dbg !1223
  store i64 0, ptr %value106, align 8, !dbg !1224
  br label %cleanup, !dbg !1225

if.end107:                                        ; preds = %sw.bb101
  %87 = load ptr, ptr %operand, align 8, !dbg !1226
  %arrayidx108 = getelementptr ptr, ptr %87, i64 0, !dbg !1226
  %88 = load ptr, ptr %arrayidx108, align 8, !dbg !1226
  %89 = load ptr, ptr %walk_state.addr, align 8, !dbg !1227
  %call109 = call i32 @acpi_ex_get_object_reference(ptr noundef %88, ptr noundef %return_desc2, ptr noundef %89) #5, !dbg !1228
  store i32 %call109, ptr %status, align 4, !dbg !1229
  %90 = load i32, ptr %status, align 4, !dbg !1230
  %tobool110 = icmp ne i32 %90, 0, !dbg !1230
  br i1 %tobool110, label %if.then111, label %if.end112, !dbg !1232

if.then111:                                       ; preds = %if.end107
  br label %cleanup, !dbg !1233

if.end112:                                        ; preds = %if.end107
  %91 = load ptr, ptr %return_desc2, align 8, !dbg !1235
  %92 = load ptr, ptr %operand, align 8, !dbg !1236
  %arrayidx113 = getelementptr ptr, ptr %92, i64 1, !dbg !1236
  %93 = load ptr, ptr %arrayidx113, align 8, !dbg !1236
  %94 = load ptr, ptr %walk_state.addr, align 8, !dbg !1237
  %call114 = call i32 @acpi_ex_store(ptr noundef %91, ptr noundef %93, ptr noundef %94) #5, !dbg !1238
  store i32 %call114, ptr %status, align 4, !dbg !1239
  %95 = load ptr, ptr %return_desc2, align 8, !dbg !1240
  call void @acpi_ut_remove_reference(ptr noundef %95) #5, !dbg !1241
  %96 = load ptr, ptr %return_desc, align 8, !dbg !1242
  %value115 = getelementptr inbounds %struct.acpi_object_integer, ptr %96, i32 0, i32 6, !dbg !1243
  store i64 -1, ptr %value115, align 8, !dbg !1244
  br label %cleanup, !dbg !1245

sw.default:                                       ; preds = %if.end
  br label %sw.epilog, !dbg !1246

sw.epilog:                                        ; preds = %sw.default, %if.end100, %if.end68, %for.end60, %cond.end, %for.end, %sw.bb3
  br label %sw.epilog171, !dbg !1247

sw.bb116:                                         ; preds = %entry
  %97 = load ptr, ptr %operand, align 8, !dbg !1248
  %arrayidx117 = getelementptr ptr, ptr %97, i64 0, !dbg !1248
  %98 = load ptr, ptr %arrayidx117, align 8, !dbg !1248
  %99 = load ptr, ptr %operand, align 8, !dbg !1249
  %arrayidx118 = getelementptr ptr, ptr %99, i64 1, !dbg !1249
  %100 = load ptr, ptr %arrayidx118, align 8, !dbg !1249
  %101 = load ptr, ptr %walk_state.addr, align 8, !dbg !1250
  %call119 = call i32 @acpi_ex_store(ptr noundef %98, ptr noundef %100, ptr noundef %101) #5, !dbg !1251
  store i32 %call119, ptr %status, align 4, !dbg !1252
  %102 = load i32, ptr %status, align 4, !dbg !1253
  %tobool120 = icmp ne i32 %102, 0, !dbg !1253
  br i1 %tobool120, label %if.then121, label %if.end122, !dbg !1255

if.then121:                                       ; preds = %sw.bb116
  %103 = load i32, ptr %status, align 4, !dbg !1256
  store i32 %103, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup185, !dbg !1256

if.end122:                                        ; preds = %sw.bb116
  %104 = load ptr, ptr %walk_state.addr, align 8, !dbg !1258
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %104, i32 0, i32 43, !dbg !1260
  %105 = load ptr, ptr %result_obj, align 8, !dbg !1260
  %tobool123 = icmp ne ptr %105, null, !dbg !1258
  br i1 %tobool123, label %if.end129, label %if.then124, !dbg !1261

if.then124:                                       ; preds = %if.end122
  %106 = load ptr, ptr %operand, align 8, !dbg !1262
  %arrayidx125 = getelementptr ptr, ptr %106, i64 0, !dbg !1262
  %107 = load ptr, ptr %arrayidx125, align 8, !dbg !1262
  %108 = load ptr, ptr %walk_state.addr, align 8, !dbg !1264
  %result_obj126 = getelementptr inbounds %struct.acpi_walk_state, ptr %108, i32 0, i32 43, !dbg !1265
  store ptr %107, ptr %result_obj126, align 8, !dbg !1266
  %109 = load ptr, ptr %walk_state.addr, align 8, !dbg !1267
  %operands127 = getelementptr inbounds %struct.acpi_walk_state, ptr %109, i32 0, i32 28, !dbg !1268
  %arrayidx128 = getelementptr [9 x ptr], ptr %operands127, i64 0, i64 0, !dbg !1267
  store ptr null, ptr %arrayidx128, align 8, !dbg !1269
  br label %if.end129, !dbg !1270

if.end129:                                        ; preds = %if.then124, %if.end122
  %110 = load i32, ptr %status, align 4, !dbg !1271
  store i32 %110, ptr %retval, align 4, !dbg !1271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup185, !dbg !1271

sw.bb130:                                         ; preds = %entry
  %111 = load ptr, ptr %operand, align 8, !dbg !1272
  %arrayidx131 = getelementptr ptr, ptr %111, i64 0, !dbg !1272
  %112 = load ptr, ptr %arrayidx131, align 8, !dbg !1272
  %113 = load ptr, ptr %walk_state.addr, align 8, !dbg !1273
  %call132 = call i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef %112, ptr noundef %return_desc, ptr noundef %113) #5, !dbg !1274
  store i32 %call132, ptr %status, align 4, !dbg !1275
  br label %sw.epilog171, !dbg !1276

sw.bb133:                                         ; preds = %entry
  %114 = load ptr, ptr %operand, align 8, !dbg !1277
  %arrayidx134 = getelementptr ptr, ptr %114, i64 0, !dbg !1277
  %115 = load ptr, ptr %arrayidx134, align 8, !dbg !1277
  %call135 = call i32 @acpi_ex_convert_to_string(ptr noundef %115, ptr noundef %return_desc, i32 noundef 3) #5, !dbg !1278
  store i32 %call135, ptr %status, align 4, !dbg !1279
  %116 = load ptr, ptr %return_desc, align 8, !dbg !1280
  %117 = load ptr, ptr %operand, align 8, !dbg !1282
  %arrayidx136 = getelementptr ptr, ptr %117, i64 0, !dbg !1282
  %118 = load ptr, ptr %arrayidx136, align 8, !dbg !1282
  %cmp137 = icmp eq ptr %116, %118, !dbg !1283
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !1284

if.then139:                                       ; preds = %sw.bb133
  %119 = load ptr, ptr %return_desc, align 8, !dbg !1285
  call void @acpi_ut_add_reference(ptr noundef %119) #5, !dbg !1287
  br label %if.end140, !dbg !1288

if.end140:                                        ; preds = %if.then139, %sw.bb133
  br label %sw.epilog171, !dbg !1289

sw.bb141:                                         ; preds = %entry
  %120 = load ptr, ptr %operand, align 8, !dbg !1290
  %arrayidx142 = getelementptr ptr, ptr %120, i64 0, !dbg !1290
  %121 = load ptr, ptr %arrayidx142, align 8, !dbg !1290
  %call143 = call i32 @acpi_ex_convert_to_string(ptr noundef %121, ptr noundef %return_desc, i32 noundef 1) #5, !dbg !1291
  store i32 %call143, ptr %status, align 4, !dbg !1292
  %122 = load ptr, ptr %return_desc, align 8, !dbg !1293
  %123 = load ptr, ptr %operand, align 8, !dbg !1295
  %arrayidx144 = getelementptr ptr, ptr %123, i64 0, !dbg !1295
  %124 = load ptr, ptr %arrayidx144, align 8, !dbg !1295
  %cmp145 = icmp eq ptr %122, %124, !dbg !1296
  br i1 %cmp145, label %if.then147, label %if.end148, !dbg !1297

if.then147:                                       ; preds = %sw.bb141
  %125 = load ptr, ptr %return_desc, align 8, !dbg !1298
  call void @acpi_ut_add_reference(ptr noundef %125) #5, !dbg !1300
  br label %if.end148, !dbg !1301

if.end148:                                        ; preds = %if.then147, %sw.bb141
  br label %sw.epilog171, !dbg !1302

sw.bb149:                                         ; preds = %entry
  %126 = load ptr, ptr %operand, align 8, !dbg !1303
  %arrayidx150 = getelementptr ptr, ptr %126, i64 0, !dbg !1303
  %127 = load ptr, ptr %arrayidx150, align 8, !dbg !1303
  %call151 = call i32 @acpi_ex_convert_to_buffer(ptr noundef %127, ptr noundef %return_desc) #5, !dbg !1304
  store i32 %call151, ptr %status, align 4, !dbg !1305
  %128 = load ptr, ptr %return_desc, align 8, !dbg !1306
  %129 = load ptr, ptr %operand, align 8, !dbg !1308
  %arrayidx152 = getelementptr ptr, ptr %129, i64 0, !dbg !1308
  %130 = load ptr, ptr %arrayidx152, align 8, !dbg !1308
  %cmp153 = icmp eq ptr %128, %130, !dbg !1309
  br i1 %cmp153, label %if.then155, label %if.end156, !dbg !1310

if.then155:                                       ; preds = %sw.bb149
  %131 = load ptr, ptr %return_desc, align 8, !dbg !1311
  call void @acpi_ut_add_reference(ptr noundef %131) #5, !dbg !1313
  br label %if.end156, !dbg !1314

if.end156:                                        ; preds = %if.then155, %sw.bb149
  br label %sw.epilog171, !dbg !1315

sw.bb157:                                         ; preds = %entry
  %132 = load ptr, ptr %operand, align 8, !dbg !1316
  %arrayidx158 = getelementptr ptr, ptr %132, i64 0, !dbg !1316
  %133 = load ptr, ptr %arrayidx158, align 8, !dbg !1316
  %call159 = call i32 @acpi_ex_convert_to_integer(ptr noundef %133, ptr noundef %return_desc, i32 noundef 0) #5, !dbg !1317
  store i32 %call159, ptr %status, align 4, !dbg !1318
  %134 = load ptr, ptr %return_desc, align 8, !dbg !1319
  %135 = load ptr, ptr %operand, align 8, !dbg !1321
  %arrayidx160 = getelementptr ptr, ptr %135, i64 0, !dbg !1321
  %136 = load ptr, ptr %arrayidx160, align 8, !dbg !1321
  %cmp161 = icmp eq ptr %134, %136, !dbg !1322
  br i1 %cmp161, label %if.then163, label %if.end164, !dbg !1323

if.then163:                                       ; preds = %sw.bb157
  %137 = load ptr, ptr %return_desc, align 8, !dbg !1324
  call void @acpi_ut_add_reference(ptr noundef %137) #5, !dbg !1326
  br label %if.end164, !dbg !1327

if.end164:                                        ; preds = %if.then163, %sw.bb157
  br label %sw.epilog171, !dbg !1328

sw.bb165:                                         ; preds = %entry, %entry
  %138 = load ptr, ptr %walk_state.addr, align 8, !dbg !1329
  %opcode166 = getelementptr inbounds %struct.acpi_walk_state, ptr %138, i32 0, i32 3, !dbg !1329
  %139 = load i16, ptr %opcode166, align 2, !dbg !1329
  %call167 = call ptr @acpi_ps_get_opcode_name(i16 noundef zeroext %139) #5, !dbg !1329
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 528, ptr noundef @.str.3, ptr noundef %call167) #5, !dbg !1329
  store i32 15, ptr %status, align 4, !dbg !1330
  br label %cleanup, !dbg !1331

sw.default168:                                    ; preds = %entry
  %140 = load ptr, ptr %walk_state.addr, align 8, !dbg !1332
  %opcode169 = getelementptr inbounds %struct.acpi_walk_state, ptr %140, i32 0, i32 3, !dbg !1332
  %141 = load i16, ptr %opcode169, align 2, !dbg !1332
  %conv170 = zext i16 %141 to i32, !dbg !1332
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 536, ptr noundef @.str, i32 noundef %conv170) #5, !dbg !1332
  store i32 12289, ptr %status, align 4, !dbg !1333
  br label %cleanup, !dbg !1334

sw.epilog171:                                     ; preds = %if.end164, %if.end156, %if.end148, %if.end140, %sw.bb130, %sw.epilog
  %142 = load i32, ptr %status, align 4, !dbg !1335
  %tobool172 = icmp ne i32 %142, 0, !dbg !1335
  br i1 %tobool172, label %if.end176, label %if.then173, !dbg !1337

if.then173:                                       ; preds = %sw.epilog171
  %143 = load ptr, ptr %return_desc, align 8, !dbg !1338
  %144 = load ptr, ptr %operand, align 8, !dbg !1340
  %arrayidx174 = getelementptr ptr, ptr %144, i64 1, !dbg !1340
  %145 = load ptr, ptr %arrayidx174, align 8, !dbg !1340
  %146 = load ptr, ptr %walk_state.addr, align 8, !dbg !1341
  %call175 = call i32 @acpi_ex_store(ptr noundef %143, ptr noundef %145, ptr noundef %146) #5, !dbg !1342
  store i32 %call175, ptr %status, align 4, !dbg !1343
  br label %if.end176, !dbg !1344

if.end176:                                        ; preds = %if.then173, %sw.epilog171
  br label %cleanup, !dbg !1335

cleanup:                                          ; preds = %if.end176, %sw.default168, %sw.bb165, %if.end112, %if.then111, %if.then105, %if.then92, %if.then52, %if.then
  call void @llvm.dbg.label(metadata !1002), !dbg !1345
  %147 = load i32, ptr %status, align 4, !dbg !1346
  %tobool177 = icmp ne i32 %147, 0, !dbg !1346
  br i1 %tobool177, label %if.then178, label %if.else, !dbg !1348

if.then178:                                       ; preds = %cleanup
  %148 = load ptr, ptr %return_desc, align 8, !dbg !1349
  call void @acpi_ut_remove_reference(ptr noundef %148) #5, !dbg !1351
  br label %if.end184, !dbg !1352

if.else:                                          ; preds = %cleanup
  %149 = load ptr, ptr %walk_state.addr, align 8, !dbg !1353
  %result_obj179 = getelementptr inbounds %struct.acpi_walk_state, ptr %149, i32 0, i32 43, !dbg !1355
  %150 = load ptr, ptr %result_obj179, align 8, !dbg !1355
  %tobool180 = icmp ne ptr %150, null, !dbg !1353
  br i1 %tobool180, label %if.end183, label %if.then181, !dbg !1356

if.then181:                                       ; preds = %if.else
  %151 = load ptr, ptr %return_desc, align 8, !dbg !1357
  %152 = load ptr, ptr %walk_state.addr, align 8, !dbg !1359
  %result_obj182 = getelementptr inbounds %struct.acpi_walk_state, ptr %152, i32 0, i32 43, !dbg !1360
  store ptr %151, ptr %result_obj182, align 8, !dbg !1361
  br label %if.end183, !dbg !1362

if.end183:                                        ; preds = %if.then181, %if.else
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.then178
  %153 = load i32, ptr %status, align 4, !dbg !1363
  store i32 %153, ptr %retval, align 4, !dbg !1363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup185, !dbg !1363

cleanup185:                                       ; preds = %if.end184, %if.end129, %if.then121
  call void @llvm.lifetime.end.p0(i64 8, ptr %digit) #4, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %power_of_ten) #4, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp32) #4, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc2) #4, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #4, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #4, !dbg !1364
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1364
  %154 = load i32, ptr %retval, align 4, !dbg !1364
  ret i32 %154, !dbg !1364
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1365 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1369 dso_local i32 @acpi_ex_load_op(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1372 dso_local i32 @acpi_ut_short_divide(i64 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1376 dso_local i32 @acpi_ex_get_object_reference(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1379 dso_local i32 @acpi_ex_store(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1380 dso_local i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1381 dso_local i32 @acpi_ex_convert_to_string(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1384 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1385 dso_local i32 @acpi_ex_convert_to_buffer(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1388 dso_local i32 @acpi_ex_convert_to_integer(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1389 dso_local ptr @acpi_ps_get_opcode_name(i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_opcode_1A_0T_1R(ptr noundef %walk_state) #0 align 16 !dbg !1393 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %operand = alloca ptr, align 8
  %temp_desc = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %type = alloca i32, align 4
  %value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1395, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.start.p0(i64 8, ptr %operand) #4, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %operand, metadata !1396, metadata !DIExpression()), !dbg !1405
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1406
  %operands = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 28, !dbg !1407
  %arrayidx = getelementptr [9 x ptr], ptr %operands, i64 0, i64 0, !dbg !1406
  store ptr %arrayidx, ptr %operand, align 8, !dbg !1405
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_desc) #4, !dbg !1408
  call void @llvm.dbg.declare(metadata ptr %temp_desc, metadata !1397, metadata !DIExpression()), !dbg !1409
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #4, !dbg !1410
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !1398, metadata !DIExpression()), !dbg !1411
  store ptr null, ptr %return_desc, align 8, !dbg !1411
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1412
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1399, metadata !DIExpression()), !dbg !1413
  store i32 0, ptr %status, align 4, !dbg !1413
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #4, !dbg !1414
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #4, !dbg !1416
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1401, metadata !DIExpression()), !dbg !1417
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1418
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %1, i32 0, i32 3, !dbg !1419
  %2 = load i16, ptr %opcode, align 2, !dbg !1419
  %conv = zext i16 %2 to i32, !dbg !1418
  switch i32 %conv, label %sw.default220 [
    i32 146, label %sw.bb
    i32 118, label %sw.bb7
    i32 117, label %sw.bb7
    i32 142, label %sw.bb35
    i32 135, label %sw.bb46
    i32 113, label %sw.bb71
    i32 131, label %sw.bb77
  ], !dbg !1420

sw.bb:                                            ; preds = %entry
  %call = call ptr @acpi_ut_create_integer_object(i64 noundef 0) #5, !dbg !1421
  store ptr %call, ptr %return_desc, align 8, !dbg !1423
  %3 = load ptr, ptr %return_desc, align 8, !dbg !1424
  %tobool = icmp ne ptr %3, null, !dbg !1424
  br i1 %tobool, label %if.end, label %if.then, !dbg !1426

if.then:                                          ; preds = %sw.bb
  store i32 4, ptr %status, align 4, !dbg !1427
  br label %cleanup, !dbg !1429

if.end:                                           ; preds = %sw.bb
  %4 = load ptr, ptr %operand, align 8, !dbg !1430
  %arrayidx1 = getelementptr ptr, ptr %4, i64 0, !dbg !1430
  %5 = load ptr, ptr %arrayidx1, align 8, !dbg !1430
  %value2 = getelementptr inbounds %struct.acpi_object_integer, ptr %5, i32 0, i32 6, !dbg !1432
  %6 = load i64, ptr %value2, align 8, !dbg !1432
  %tobool3 = icmp ne i64 %6, 0, !dbg !1430
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !1433

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %return_desc, align 8, !dbg !1434
  %value5 = getelementptr inbounds %struct.acpi_object_integer, ptr %7, i32 0, i32 6, !dbg !1436
  store i64 -1, ptr %value5, align 8, !dbg !1437
  br label %if.end6, !dbg !1438

if.end6:                                          ; preds = %if.then4, %if.end
  br label %sw.epilog223, !dbg !1439

sw.bb7:                                           ; preds = %entry, %entry
  %call8 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 616, i32 noundef 128, i32 noundef 1) #5, !dbg !1440
  store ptr %call8, ptr %return_desc, align 8, !dbg !1441
  %8 = load ptr, ptr %return_desc, align 8, !dbg !1442
  %tobool9 = icmp ne ptr %8, null, !dbg !1442
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1444

if.then10:                                        ; preds = %sw.bb7
  store i32 4, ptr %status, align 4, !dbg !1445
  br label %cleanup, !dbg !1447

if.end11:                                         ; preds = %sw.bb7
  %9 = load ptr, ptr %operand, align 8, !dbg !1448
  %arrayidx12 = getelementptr ptr, ptr %9, i64 0, !dbg !1448
  %10 = load ptr, ptr %arrayidx12, align 8, !dbg !1448
  store ptr %10, ptr %temp_desc, align 8, !dbg !1449
  %11 = load ptr, ptr %temp_desc, align 8, !dbg !1450
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %11, i32 0, i32 1, !dbg !1450
  %12 = load i8, ptr %descriptor_type, align 8, !dbg !1450
  %conv13 = zext i8 %12 to i32, !dbg !1450
  %cmp = icmp eq i32 %conv13, 14, !dbg !1452
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !1453

if.then15:                                        ; preds = %if.end11
  %13 = load ptr, ptr %temp_desc, align 8, !dbg !1454
  call void @acpi_ut_add_reference(ptr noundef %13) #5, !dbg !1456
  br label %if.end16, !dbg !1457

if.end16:                                         ; preds = %if.then15, %if.end11
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1458
  %call17 = call i32 @acpi_ex_resolve_operands(i16 noundef zeroext 146, ptr noundef %temp_desc, ptr noundef %14) #5, !dbg !1459
  store i32 %call17, ptr %status, align 4, !dbg !1460
  %15 = load i32, ptr %status, align 4, !dbg !1461
  %tobool18 = icmp ne i32 %15, 0, !dbg !1461
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !1463

if.then19:                                        ; preds = %if.end16
  %16 = load i32, ptr %status, align 4, !dbg !1464
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1464
  %opcode20 = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 3, !dbg !1464
  %18 = load i16, ptr %opcode20, align 2, !dbg !1464
  %call21 = call ptr @acpi_ps_get_opcode_name(i16 noundef zeroext %18) #5, !dbg !1464
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 645, i32 noundef %16, ptr noundef @.str.4, ptr noundef %call21) #5, !dbg !1464
  br label %cleanup, !dbg !1466

if.end22:                                         ; preds = %if.end16
  %19 = load ptr, ptr %walk_state.addr, align 8, !dbg !1467
  %opcode23 = getelementptr inbounds %struct.acpi_walk_state, ptr %19, i32 0, i32 3, !dbg !1469
  %20 = load i16, ptr %opcode23, align 2, !dbg !1469
  %conv24 = zext i16 %20 to i32, !dbg !1467
  %cmp25 = icmp eq i32 %conv24, 117, !dbg !1470
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !1471

if.then27:                                        ; preds = %if.end22
  %21 = load ptr, ptr %temp_desc, align 8, !dbg !1472
  %value28 = getelementptr inbounds %struct.acpi_object_integer, ptr %21, i32 0, i32 6, !dbg !1474
  %22 = load i64, ptr %value28, align 8, !dbg !1474
  %add = add i64 %22, 1, !dbg !1475
  %23 = load ptr, ptr %return_desc, align 8, !dbg !1476
  %value29 = getelementptr inbounds %struct.acpi_object_integer, ptr %23, i32 0, i32 6, !dbg !1477
  store i64 %add, ptr %value29, align 8, !dbg !1478
  br label %if.end32, !dbg !1479

if.else:                                          ; preds = %if.end22
  %24 = load ptr, ptr %temp_desc, align 8, !dbg !1480
  %value30 = getelementptr inbounds %struct.acpi_object_integer, ptr %24, i32 0, i32 6, !dbg !1482
  %25 = load i64, ptr %value30, align 8, !dbg !1482
  %sub = sub i64 %25, 1, !dbg !1483
  %26 = load ptr, ptr %return_desc, align 8, !dbg !1484
  %value31 = getelementptr inbounds %struct.acpi_object_integer, ptr %26, i32 0, i32 6, !dbg !1485
  store i64 %sub, ptr %value31, align 8, !dbg !1486
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then27
  %27 = load ptr, ptr %temp_desc, align 8, !dbg !1487
  call void @acpi_ut_remove_reference(ptr noundef %27) #5, !dbg !1488
  %28 = load ptr, ptr %return_desc, align 8, !dbg !1489
  %29 = load ptr, ptr %operand, align 8, !dbg !1490
  %arrayidx33 = getelementptr ptr, ptr %29, i64 0, !dbg !1490
  %30 = load ptr, ptr %arrayidx33, align 8, !dbg !1490
  %31 = load ptr, ptr %walk_state.addr, align 8, !dbg !1491
  %call34 = call i32 @acpi_ex_store(ptr noundef %28, ptr noundef %30, ptr noundef %31) #5, !dbg !1492
  store i32 %call34, ptr %status, align 4, !dbg !1493
  br label %sw.epilog223, !dbg !1494

sw.bb35:                                          ; preds = %entry
  %32 = load ptr, ptr %walk_state.addr, align 8, !dbg !1495
  %33 = load ptr, ptr %operand, align 8, !dbg !1496
  %arrayidx36 = getelementptr ptr, ptr %33, i64 0, !dbg !1496
  %34 = load ptr, ptr %arrayidx36, align 8, !dbg !1496
  %call37 = call i32 @acpi_ex_resolve_multiple(ptr noundef %32, ptr noundef %34, ptr noundef %type, ptr noundef null) #5, !dbg !1497
  store i32 %call37, ptr %status, align 4, !dbg !1498
  %35 = load i32, ptr %status, align 4, !dbg !1499
  %tobool38 = icmp ne i32 %35, 0, !dbg !1499
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1501

if.then39:                                        ; preds = %sw.bb35
  br label %cleanup, !dbg !1502

if.end40:                                         ; preds = %sw.bb35
  %36 = load i32, ptr %type, align 4, !dbg !1504
  %conv41 = zext i32 %36 to i64, !dbg !1505
  %call42 = call ptr @acpi_ut_create_integer_object(i64 noundef %conv41) #5, !dbg !1506
  store ptr %call42, ptr %return_desc, align 8, !dbg !1507
  %37 = load ptr, ptr %return_desc, align 8, !dbg !1508
  %tobool43 = icmp ne ptr %37, null, !dbg !1508
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !1510

if.then44:                                        ; preds = %if.end40
  store i32 4, ptr %status, align 4, !dbg !1511
  br label %cleanup, !dbg !1513

if.end45:                                         ; preds = %if.end40
  br label %sw.epilog223, !dbg !1514

sw.bb46:                                          ; preds = %entry
  %38 = load ptr, ptr %walk_state.addr, align 8, !dbg !1515
  %39 = load ptr, ptr %operand, align 8, !dbg !1516
  %arrayidx47 = getelementptr ptr, ptr %39, i64 0, !dbg !1516
  %40 = load ptr, ptr %arrayidx47, align 8, !dbg !1516
  %call48 = call i32 @acpi_ex_resolve_multiple(ptr noundef %38, ptr noundef %40, ptr noundef %type, ptr noundef %temp_desc) #5, !dbg !1517
  store i32 %call48, ptr %status, align 4, !dbg !1518
  %41 = load i32, ptr %status, align 4, !dbg !1519
  %tobool49 = icmp ne i32 %41, 0, !dbg !1519
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !1521

if.then50:                                        ; preds = %sw.bb46
  br label %cleanup, !dbg !1522

if.end51:                                         ; preds = %sw.bb46
  %42 = load i32, ptr %type, align 4, !dbg !1524
  switch i32 %42, label %sw.default [
    i32 1, label %sw.bb52
    i32 2, label %sw.bb54
    i32 3, label %sw.bb56
    i32 4, label %sw.bb60
  ], !dbg !1525

sw.bb52:                                          ; preds = %if.end51
  %43 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !1526
  %conv53 = zext i8 %43 to i64, !dbg !1526
  store i64 %conv53, ptr %value, align 8, !dbg !1528
  br label %sw.epilog, !dbg !1529

sw.bb54:                                          ; preds = %if.end51
  %44 = load ptr, ptr %temp_desc, align 8, !dbg !1530
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %44, i32 0, i32 6, !dbg !1531
  %45 = load i32, ptr %length, align 8, !dbg !1531
  %conv55 = zext i32 %45 to i64, !dbg !1530
  store i64 %conv55, ptr %value, align 8, !dbg !1532
  br label %sw.epilog, !dbg !1533

sw.bb56:                                          ; preds = %if.end51
  %46 = load ptr, ptr %temp_desc, align 8, !dbg !1534
  %call57 = call i32 @acpi_ds_get_buffer_arguments(ptr noundef %46) #5, !dbg !1535
  store i32 %call57, ptr %status, align 4, !dbg !1536
  %47 = load ptr, ptr %temp_desc, align 8, !dbg !1537
  %length58 = getelementptr inbounds %struct.acpi_object_buffer, ptr %47, i32 0, i32 6, !dbg !1538
  %48 = load i32, ptr %length58, align 8, !dbg !1538
  %conv59 = zext i32 %48 to i64, !dbg !1537
  store i64 %conv59, ptr %value, align 8, !dbg !1539
  br label %sw.epilog, !dbg !1540

sw.bb60:                                          ; preds = %if.end51
  %49 = load ptr, ptr %temp_desc, align 8, !dbg !1541
  %call61 = call i32 @acpi_ds_get_package_arguments(ptr noundef %49) #5, !dbg !1542
  store i32 %call61, ptr %status, align 4, !dbg !1543
  %50 = load ptr, ptr %temp_desc, align 8, !dbg !1544
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %50, i32 0, i32 9, !dbg !1545
  %51 = load i32, ptr %count, align 4, !dbg !1545
  %conv62 = zext i32 %51 to i64, !dbg !1544
  store i64 %conv62, ptr %value, align 8, !dbg !1546
  br label %sw.epilog, !dbg !1547

sw.default:                                       ; preds = %if.end51
  %52 = load i32, ptr %type, align 4, !dbg !1548
  %call63 = call ptr @acpi_ut_get_type_name(i32 noundef %52) #5, !dbg !1548
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 755, ptr noundef @.str.5, ptr noundef %call63) #5, !dbg !1548
  store i32 12291, ptr %status, align 4, !dbg !1549
  br label %cleanup, !dbg !1550

sw.epilog:                                        ; preds = %sw.bb60, %sw.bb56, %sw.bb54, %sw.bb52
  %53 = load i32, ptr %status, align 4, !dbg !1551
  %tobool64 = icmp ne i32 %53, 0, !dbg !1551
  br i1 %tobool64, label %if.then65, label %if.end66, !dbg !1553

if.then65:                                        ; preds = %sw.epilog
  br label %cleanup, !dbg !1554

if.end66:                                         ; preds = %sw.epilog
  %54 = load i64, ptr %value, align 8, !dbg !1556
  %call67 = call ptr @acpi_ut_create_integer_object(i64 noundef %54) #5, !dbg !1557
  store ptr %call67, ptr %return_desc, align 8, !dbg !1558
  %55 = load ptr, ptr %return_desc, align 8, !dbg !1559
  %tobool68 = icmp ne ptr %55, null, !dbg !1559
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !1561

if.then69:                                        ; preds = %if.end66
  store i32 4, ptr %status, align 4, !dbg !1562
  br label %cleanup, !dbg !1564

if.end70:                                         ; preds = %if.end66
  br label %sw.epilog223, !dbg !1565

sw.bb71:                                          ; preds = %entry
  %56 = load ptr, ptr %operand, align 8, !dbg !1566
  %arrayidx72 = getelementptr ptr, ptr %56, i64 0, !dbg !1566
  %57 = load ptr, ptr %arrayidx72, align 8, !dbg !1566
  %58 = load ptr, ptr %walk_state.addr, align 8, !dbg !1567
  %call73 = call i32 @acpi_ex_get_object_reference(ptr noundef %57, ptr noundef %return_desc, ptr noundef %58) #5, !dbg !1568
  store i32 %call73, ptr %status, align 4, !dbg !1569
  %59 = load i32, ptr %status, align 4, !dbg !1570
  %tobool74 = icmp ne i32 %59, 0, !dbg !1570
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !1572

if.then75:                                        ; preds = %sw.bb71
  br label %cleanup, !dbg !1573

if.end76:                                         ; preds = %sw.bb71
  br label %sw.epilog223, !dbg !1575

sw.bb77:                                          ; preds = %entry
  %60 = load ptr, ptr %operand, align 8, !dbg !1576
  %arrayidx78 = getelementptr ptr, ptr %60, i64 0, !dbg !1576
  %61 = load ptr, ptr %arrayidx78, align 8, !dbg !1576
  %descriptor_type79 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %61, i32 0, i32 1, !dbg !1576
  %62 = load i8, ptr %descriptor_type79, align 8, !dbg !1576
  %conv80 = zext i8 %62 to i32, !dbg !1576
  %cmp81 = icmp eq i32 %conv80, 15, !dbg !1578
  br i1 %cmp81, label %if.then83, label %if.else99, !dbg !1579

if.then83:                                        ; preds = %sw.bb77
  %63 = load ptr, ptr %operand, align 8, !dbg !1580
  %arrayidx84 = getelementptr ptr, ptr %63, i64 0, !dbg !1580
  %64 = load ptr, ptr %arrayidx84, align 8, !dbg !1580
  %call85 = call ptr @acpi_ns_get_attached_object(ptr noundef %64) #5, !dbg !1582
  store ptr %call85, ptr %temp_desc, align 8, !dbg !1583
  %65 = load ptr, ptr %temp_desc, align 8, !dbg !1584
  %tobool86 = icmp ne ptr %65, null, !dbg !1584
  br i1 %tobool86, label %land.lhs.true, label %if.else97, !dbg !1586

land.lhs.true:                                    ; preds = %if.then83
  %66 = load ptr, ptr %temp_desc, align 8, !dbg !1587
  %type87 = getelementptr inbounds %struct.acpi_object_common, ptr %66, i32 0, i32 2, !dbg !1588
  %67 = load i8, ptr %type87, align 1, !dbg !1588
  %conv88 = zext i8 %67 to i32, !dbg !1587
  %cmp89 = icmp eq i32 %conv88, 2, !dbg !1589
  br i1 %cmp89, label %if.then95, label %lor.lhs.false, !dbg !1590

lor.lhs.false:                                    ; preds = %land.lhs.true
  %68 = load ptr, ptr %temp_desc, align 8, !dbg !1591
  %type91 = getelementptr inbounds %struct.acpi_object_common, ptr %68, i32 0, i32 2, !dbg !1592
  %69 = load i8, ptr %type91, align 1, !dbg !1592
  %conv92 = zext i8 %69 to i32, !dbg !1591
  %cmp93 = icmp eq i32 %conv92, 20, !dbg !1593
  br i1 %cmp93, label %if.then95, label %if.else97, !dbg !1594

if.then95:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %70 = load ptr, ptr %temp_desc, align 8, !dbg !1595
  %71 = load ptr, ptr %operand, align 8, !dbg !1597
  %arrayidx96 = getelementptr ptr, ptr %71, i64 0, !dbg !1597
  store ptr %70, ptr %arrayidx96, align 8, !dbg !1598
  %72 = load ptr, ptr %temp_desc, align 8, !dbg !1599
  call void @acpi_ut_add_reference(ptr noundef %72) #5, !dbg !1600
  br label %if.end98, !dbg !1601

if.else97:                                        ; preds = %lor.lhs.false, %if.then83
  store i32 12291, ptr %status, align 4, !dbg !1602
  br label %cleanup, !dbg !1604

if.end98:                                         ; preds = %if.then95
  br label %if.end125, !dbg !1605

if.else99:                                        ; preds = %sw.bb77
  %73 = load ptr, ptr %operand, align 8, !dbg !1606
  %arrayidx100 = getelementptr ptr, ptr %73, i64 0, !dbg !1606
  %74 = load ptr, ptr %arrayidx100, align 8, !dbg !1606
  %type101 = getelementptr inbounds %struct.acpi_object_common, ptr %74, i32 0, i32 2, !dbg !1608
  %75 = load i8, ptr %type101, align 1, !dbg !1608
  %conv102 = zext i8 %75 to i32, !dbg !1609
  switch i32 %conv102, label %sw.default123 [
    i32 20, label %sw.bb103
    i32 2, label %sw.epilog124
  ], !dbg !1610

sw.bb103:                                         ; preds = %if.else99
  %76 = load ptr, ptr %operand, align 8, !dbg !1611
  %arrayidx104 = getelementptr ptr, ptr %76, i64 0, !dbg !1611
  %77 = load ptr, ptr %arrayidx104, align 8, !dbg !1611
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %77, i32 0, i32 5, !dbg !1613
  %78 = load i8, ptr %class, align 1, !dbg !1613
  %conv105 = zext i8 %78 to i32, !dbg !1611
  switch i32 %conv105, label %sw.default121 [
    i32 0, label %sw.bb106
    i32 1, label %sw.bb106
    i32 2, label %sw.bb117
  ], !dbg !1614

sw.bb106:                                         ; preds = %sw.bb103, %sw.bb103
  %79 = load ptr, ptr %operand, align 8, !dbg !1615
  %arrayidx107 = getelementptr ptr, ptr %79, i64 0, !dbg !1615
  %80 = load ptr, ptr %arrayidx107, align 8, !dbg !1615
  %class108 = getelementptr inbounds %struct.acpi_object_reference, ptr %80, i32 0, i32 5, !dbg !1617
  %81 = load i8, ptr %class108, align 1, !dbg !1617
  %82 = load ptr, ptr %operand, align 8, !dbg !1618
  %arrayidx109 = getelementptr ptr, ptr %82, i64 0, !dbg !1618
  %83 = load ptr, ptr %arrayidx109, align 8, !dbg !1618
  %value110 = getelementptr inbounds %struct.acpi_object_reference, ptr %83, i32 0, i32 13, !dbg !1619
  %84 = load i32, ptr %value110, align 8, !dbg !1619
  %85 = load ptr, ptr %walk_state.addr, align 8, !dbg !1620
  %call111 = call i32 @acpi_ds_method_data_get_value(i8 noundef zeroext %81, i32 noundef %84, ptr noundef %85, ptr noundef %temp_desc) #5, !dbg !1621
  store i32 %call111, ptr %status, align 4, !dbg !1622
  %86 = load i32, ptr %status, align 4, !dbg !1623
  %tobool112 = icmp ne i32 %86, 0, !dbg !1623
  br i1 %tobool112, label %if.then113, label %if.end114, !dbg !1625

if.then113:                                       ; preds = %sw.bb106
  br label %cleanup, !dbg !1626

if.end114:                                        ; preds = %sw.bb106
  %87 = load ptr, ptr %operand, align 8, !dbg !1628
  %arrayidx115 = getelementptr ptr, ptr %87, i64 0, !dbg !1628
  %88 = load ptr, ptr %arrayidx115, align 8, !dbg !1628
  call void @acpi_ut_remove_reference(ptr noundef %88) #5, !dbg !1629
  %89 = load ptr, ptr %temp_desc, align 8, !dbg !1630
  %90 = load ptr, ptr %operand, align 8, !dbg !1631
  %arrayidx116 = getelementptr ptr, ptr %90, i64 0, !dbg !1631
  store ptr %89, ptr %arrayidx116, align 8, !dbg !1632
  br label %sw.epilog122, !dbg !1633

sw.bb117:                                         ; preds = %sw.bb103
  %91 = load ptr, ptr %operand, align 8, !dbg !1634
  %arrayidx118 = getelementptr ptr, ptr %91, i64 0, !dbg !1634
  %92 = load ptr, ptr %arrayidx118, align 8, !dbg !1634
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %92, i32 0, i32 8, !dbg !1635
  %93 = load ptr, ptr %object, align 8, !dbg !1635
  store ptr %93, ptr %temp_desc, align 8, !dbg !1636
  %94 = load ptr, ptr %operand, align 8, !dbg !1637
  %arrayidx119 = getelementptr ptr, ptr %94, i64 0, !dbg !1637
  %95 = load ptr, ptr %arrayidx119, align 8, !dbg !1637
  call void @acpi_ut_remove_reference(ptr noundef %95) #5, !dbg !1638
  %96 = load ptr, ptr %temp_desc, align 8, !dbg !1639
  %97 = load ptr, ptr %operand, align 8, !dbg !1640
  %arrayidx120 = getelementptr ptr, ptr %97, i64 0, !dbg !1640
  store ptr %96, ptr %arrayidx120, align 8, !dbg !1641
  br label %sw.epilog122, !dbg !1642

sw.default121:                                    ; preds = %sw.bb103
  br label %sw.epilog122, !dbg !1643

sw.epilog122:                                     ; preds = %sw.default121, %sw.bb117, %if.end114
  br label %sw.epilog124, !dbg !1644

sw.default123:                                    ; preds = %if.else99
  store i32 12291, ptr %status, align 4, !dbg !1645
  br label %cleanup, !dbg !1646

sw.epilog124:                                     ; preds = %if.else99, %sw.epilog122
  br label %if.end125

if.end125:                                        ; preds = %sw.epilog124, %if.end98
  %98 = load ptr, ptr %operand, align 8, !dbg !1647
  %arrayidx126 = getelementptr ptr, ptr %98, i64 0, !dbg !1647
  %99 = load ptr, ptr %arrayidx126, align 8, !dbg !1647
  %descriptor_type127 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %99, i32 0, i32 1, !dbg !1647
  %100 = load i8, ptr %descriptor_type127, align 8, !dbg !1647
  %conv128 = zext i8 %100 to i32, !dbg !1647
  %cmp129 = icmp ne i32 %conv128, 15, !dbg !1649
  br i1 %cmp129, label %if.then131, label %if.end145, !dbg !1650

if.then131:                                       ; preds = %if.end125
  %101 = load ptr, ptr %operand, align 8, !dbg !1651
  %arrayidx132 = getelementptr ptr, ptr %101, i64 0, !dbg !1651
  %102 = load ptr, ptr %arrayidx132, align 8, !dbg !1651
  %type133 = getelementptr inbounds %struct.acpi_object_common, ptr %102, i32 0, i32 2, !dbg !1654
  %103 = load i8, ptr %type133, align 1, !dbg !1654
  %conv134 = zext i8 %103 to i32, !dbg !1655
  %cmp135 = icmp eq i32 %conv134, 2, !dbg !1656
  br i1 %cmp135, label %if.then137, label %if.end144, !dbg !1657

if.then137:                                       ; preds = %if.then131
  %104 = load ptr, ptr %walk_state.addr, align 8, !dbg !1658
  %scope_info = getelementptr inbounds %struct.acpi_walk_state, ptr %104, i32 0, i32 46, !dbg !1660
  %105 = load ptr, ptr %scope_info, align 8, !dbg !1660
  %node = getelementptr inbounds %struct.acpi_scope_state, ptr %105, i32 0, i32 5, !dbg !1661
  %106 = load ptr, ptr %node, align 8, !dbg !1661
  %107 = load ptr, ptr %operand, align 8, !dbg !1662
  %arrayidx138 = getelementptr ptr, ptr %107, i64 0, !dbg !1662
  %108 = load ptr, ptr %arrayidx138, align 8, !dbg !1662
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %108, i32 0, i32 5, !dbg !1663
  %109 = load ptr, ptr %pointer, align 8, !dbg !1663
  %110 = ptrtoint ptr %return_desc to i64, !dbg !1664
  %111 = inttoptr i64 %110 to ptr, !dbg !1664
  %call139 = call i32 @acpi_ns_get_node_unlocked(ptr noundef %106, ptr noundef %109, i32 noundef 1, ptr noundef %111) #5, !dbg !1665
  store i32 %call139, ptr %status, align 4, !dbg !1666
  %112 = load i32, ptr %status, align 4, !dbg !1667
  %tobool140 = icmp ne i32 %112, 0, !dbg !1667
  br i1 %tobool140, label %if.then141, label %if.end142, !dbg !1669

if.then141:                                       ; preds = %if.then137
  br label %cleanup, !dbg !1670

if.end142:                                        ; preds = %if.then137
  %113 = ptrtoint ptr %return_desc to i64, !dbg !1672
  %114 = inttoptr i64 %113 to ptr, !dbg !1672
  %115 = load ptr, ptr %walk_state.addr, align 8, !dbg !1673
  %call143 = call i32 @acpi_ex_resolve_node_to_value(ptr noundef %114, ptr noundef %115) #5, !dbg !1674
  store i32 %call143, ptr %status, align 4, !dbg !1675
  br label %cleanup, !dbg !1676

if.end144:                                        ; preds = %if.then131
  br label %if.end145, !dbg !1677

if.end145:                                        ; preds = %if.end144, %if.end125
  %116 = load ptr, ptr %operand, align 8, !dbg !1678
  %arrayidx146 = getelementptr ptr, ptr %116, i64 0, !dbg !1678
  %117 = load ptr, ptr %arrayidx146, align 8, !dbg !1678
  %descriptor_type147 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %117, i32 0, i32 1, !dbg !1678
  %118 = load i8, ptr %descriptor_type147, align 8, !dbg !1678
  %conv148 = zext i8 %118 to i32, !dbg !1678
  %cmp149 = icmp eq i32 %conv148, 15, !dbg !1680
  br i1 %cmp149, label %if.then151, label %if.else161, !dbg !1681

if.then151:                                       ; preds = %if.end145
  %119 = load ptr, ptr %operand, align 8, !dbg !1682
  %arrayidx152 = getelementptr ptr, ptr %119, i64 0, !dbg !1682
  %120 = load ptr, ptr %arrayidx152, align 8, !dbg !1682
  %type153 = getelementptr inbounds %struct.acpi_namespace_node, ptr %120, i32 0, i32 2, !dbg !1684
  %121 = load i8, ptr %type153, align 1, !dbg !1684
  %conv154 = zext i8 %121 to i32, !dbg !1685
  switch i32 %conv154, label %sw.default157 [
    i32 6, label %sw.bb155
    i32 13, label %sw.bb155
  ], !dbg !1686

sw.bb155:                                         ; preds = %if.then151, %if.then151
  %122 = load ptr, ptr %operand, align 8, !dbg !1687
  %arrayidx156 = getelementptr ptr, ptr %122, i64 0, !dbg !1687
  %123 = load ptr, ptr %arrayidx156, align 8, !dbg !1687
  store ptr %123, ptr %return_desc, align 8, !dbg !1689
  br label %sw.epilog160, !dbg !1690

sw.default157:                                    ; preds = %if.then151
  %124 = load ptr, ptr %operand, align 8, !dbg !1691
  %arrayidx158 = getelementptr ptr, ptr %124, i64 0, !dbg !1691
  %125 = load ptr, ptr %arrayidx158, align 8, !dbg !1691
  %call159 = call ptr @acpi_ns_get_attached_object(ptr noundef %125) #5, !dbg !1692
  store ptr %call159, ptr %return_desc, align 8, !dbg !1693
  %126 = load ptr, ptr %return_desc, align 8, !dbg !1694
  call void @acpi_ut_add_reference(ptr noundef %126) #5, !dbg !1695
  br label %sw.epilog160, !dbg !1696

sw.epilog160:                                     ; preds = %sw.default157, %sw.bb155
  br label %if.end219, !dbg !1697

if.else161:                                       ; preds = %if.end145
  %127 = load ptr, ptr %operand, align 8, !dbg !1698
  %arrayidx162 = getelementptr ptr, ptr %127, i64 0, !dbg !1698
  %128 = load ptr, ptr %arrayidx162, align 8, !dbg !1698
  %class163 = getelementptr inbounds %struct.acpi_object_reference, ptr %128, i32 0, i32 5, !dbg !1700
  %129 = load i8, ptr %class163, align 1, !dbg !1700
  %conv164 = zext i8 %129 to i32, !dbg !1698
  switch i32 %conv164, label %sw.default213 [
    i32 3, label %sw.bb165
    i32 2, label %sw.bb191
  ], !dbg !1701

sw.bb165:                                         ; preds = %if.else161
  %130 = load ptr, ptr %operand, align 8, !dbg !1702
  %arrayidx166 = getelementptr ptr, ptr %130, i64 0, !dbg !1702
  %131 = load ptr, ptr %arrayidx166, align 8, !dbg !1702
  %target_type = getelementptr inbounds %struct.acpi_object_reference, ptr %131, i32 0, i32 6, !dbg !1704
  %132 = load i8, ptr %target_type, align 2, !dbg !1704
  %conv167 = zext i8 %132 to i32, !dbg !1702
  switch i32 %conv167, label %sw.default185 [
    i32 14, label %sw.bb168
    i32 4, label %sw.bb180
  ], !dbg !1705

sw.bb168:                                         ; preds = %sw.bb165
  %133 = load ptr, ptr %operand, align 8, !dbg !1706
  %arrayidx169 = getelementptr ptr, ptr %133, i64 0, !dbg !1706
  %134 = load ptr, ptr %arrayidx169, align 8, !dbg !1706
  %object170 = getelementptr inbounds %struct.acpi_object_reference, ptr %134, i32 0, i32 8, !dbg !1708
  %135 = load ptr, ptr %object170, align 8, !dbg !1708
  store ptr %135, ptr %temp_desc, align 8, !dbg !1709
  %136 = load ptr, ptr %temp_desc, align 8, !dbg !1710
  %pointer171 = getelementptr inbounds %struct.acpi_object_buffer, ptr %136, i32 0, i32 5, !dbg !1711
  %137 = load ptr, ptr %pointer171, align 8, !dbg !1711
  %138 = load ptr, ptr %operand, align 8, !dbg !1712
  %arrayidx172 = getelementptr ptr, ptr %138, i64 0, !dbg !1712
  %139 = load ptr, ptr %arrayidx172, align 8, !dbg !1712
  %value173 = getelementptr inbounds %struct.acpi_object_reference, ptr %139, i32 0, i32 13, !dbg !1713
  %140 = load i32, ptr %value173, align 8, !dbg !1713
  %idxprom = zext i32 %140 to i64, !dbg !1710
  %arrayidx174 = getelementptr i8, ptr %137, i64 %idxprom, !dbg !1710
  %141 = load i8, ptr %arrayidx174, align 1, !dbg !1710
  %conv175 = zext i8 %141 to i64, !dbg !1714
  %call176 = call ptr @acpi_ut_create_integer_object(i64 noundef %conv175) #5, !dbg !1715
  store ptr %call176, ptr %return_desc, align 8, !dbg !1716
  %142 = load ptr, ptr %return_desc, align 8, !dbg !1717
  %tobool177 = icmp ne ptr %142, null, !dbg !1717
  br i1 %tobool177, label %if.end179, label %if.then178, !dbg !1719

if.then178:                                       ; preds = %sw.bb168
  store i32 4, ptr %status, align 4, !dbg !1720
  br label %cleanup, !dbg !1722

if.end179:                                        ; preds = %sw.bb168
  br label %sw.epilog190, !dbg !1723

sw.bb180:                                         ; preds = %sw.bb165
  %143 = load ptr, ptr %operand, align 8, !dbg !1724
  %arrayidx181 = getelementptr ptr, ptr %143, i64 0, !dbg !1724
  %144 = load ptr, ptr %arrayidx181, align 8, !dbg !1724
  %where = getelementptr inbounds %struct.acpi_object_reference, ptr %144, i32 0, i32 10, !dbg !1725
  %145 = load ptr, ptr %where, align 8, !dbg !1725
  %146 = load ptr, ptr %145, align 8, !dbg !1726
  store ptr %146, ptr %return_desc, align 8, !dbg !1727
  %147 = load ptr, ptr %return_desc, align 8, !dbg !1728
  %tobool182 = icmp ne ptr %147, null, !dbg !1728
  br i1 %tobool182, label %if.end184, label %if.then183, !dbg !1730

if.then183:                                       ; preds = %sw.bb180
  store i32 12295, ptr %retval, align 4, !dbg !1731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup228, !dbg !1731

if.end184:                                        ; preds = %sw.bb180
  %148 = load ptr, ptr %return_desc, align 8, !dbg !1733
  call void @acpi_ut_add_reference(ptr noundef %148) #5, !dbg !1734
  br label %sw.epilog190, !dbg !1735

sw.default185:                                    ; preds = %sw.bb165
  %149 = load ptr, ptr %operand, align 8, !dbg !1736
  %arrayidx186 = getelementptr ptr, ptr %149, i64 0, !dbg !1736
  %150 = load ptr, ptr %arrayidx186, align 8, !dbg !1736
  %target_type187 = getelementptr inbounds %struct.acpi_object_reference, ptr %150, i32 0, i32 6, !dbg !1736
  %151 = load i8, ptr %target_type187, align 2, !dbg !1736
  %conv188 = zext i8 %151 to i32, !dbg !1736
  %152 = load ptr, ptr %operand, align 8, !dbg !1736
  %arrayidx189 = getelementptr ptr, ptr %152, i64 0, !dbg !1736
  %153 = load ptr, ptr %arrayidx189, align 8, !dbg !1736
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 991, ptr noundef @.str.6, i32 noundef %conv188, ptr noundef %153) #5, !dbg !1736
  store i32 12291, ptr %status, align 4, !dbg !1737
  br label %cleanup, !dbg !1738

sw.epilog190:                                     ; preds = %if.end184, %if.end179
  br label %sw.epilog218, !dbg !1739

sw.bb191:                                         ; preds = %if.else161
  %154 = load ptr, ptr %operand, align 8, !dbg !1740
  %arrayidx192 = getelementptr ptr, ptr %154, i64 0, !dbg !1740
  %155 = load ptr, ptr %arrayidx192, align 8, !dbg !1740
  %object193 = getelementptr inbounds %struct.acpi_object_reference, ptr %155, i32 0, i32 8, !dbg !1741
  %156 = load ptr, ptr %object193, align 8, !dbg !1741
  store ptr %156, ptr %return_desc, align 8, !dbg !1742
  %157 = load ptr, ptr %return_desc, align 8, !dbg !1743
  %descriptor_type194 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %157, i32 0, i32 1, !dbg !1743
  %158 = load i8, ptr %descriptor_type194, align 8, !dbg !1743
  %conv195 = zext i8 %158 to i32, !dbg !1743
  %cmp196 = icmp eq i32 %conv195, 15, !dbg !1745
  br i1 %cmp196, label %if.then198, label %if.end212, !dbg !1746

if.then198:                                       ; preds = %sw.bb191
  %159 = load ptr, ptr %return_desc, align 8, !dbg !1747
  %call199 = call ptr @acpi_ns_get_attached_object(ptr noundef %159) #5, !dbg !1749
  store ptr %call199, ptr %return_desc, align 8, !dbg !1750
  %160 = load ptr, ptr %return_desc, align 8, !dbg !1751
  %tobool200 = icmp ne ptr %160, null, !dbg !1751
  br i1 %tobool200, label %if.end202, label %if.then201, !dbg !1753

if.then201:                                       ; preds = %if.then198
  br label %sw.epilog218, !dbg !1754

if.end202:                                        ; preds = %if.then198
  %161 = load ptr, ptr %return_desc, align 8, !dbg !1756
  %type203 = getelementptr inbounds %struct.acpi_object_common, ptr %161, i32 0, i32 2, !dbg !1757
  %162 = load i8, ptr %type203, align 1, !dbg !1757
  %conv204 = zext i8 %162 to i32, !dbg !1756
  switch i32 %conv204, label %sw.default210 [
    i32 14, label %sw.bb205
    i32 17, label %sw.bb205
    i32 18, label %sw.bb205
    i32 19, label %sw.bb205
  ], !dbg !1758

sw.bb205:                                         ; preds = %if.end202, %if.end202, %if.end202, %if.end202
  %163 = load ptr, ptr %walk_state.addr, align 8, !dbg !1759
  %164 = load ptr, ptr %return_desc, align 8, !dbg !1761
  %call206 = call i32 @acpi_ex_read_data_from_field(ptr noundef %163, ptr noundef %164, ptr noundef %temp_desc) #5, !dbg !1762
  store i32 %call206, ptr %status, align 4, !dbg !1763
  %165 = load i32, ptr %status, align 4, !dbg !1764
  %tobool207 = icmp ne i32 %165, 0, !dbg !1764
  br i1 %tobool207, label %if.then208, label %if.end209, !dbg !1766

if.then208:                                       ; preds = %sw.bb205
  %166 = load i32, ptr %status, align 4, !dbg !1767
  store i32 %166, ptr %retval, align 4, !dbg !1767
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup228, !dbg !1767

if.end209:                                        ; preds = %sw.bb205
  %167 = load ptr, ptr %temp_desc, align 8, !dbg !1769
  store ptr %167, ptr %return_desc, align 8, !dbg !1770
  br label %sw.epilog211, !dbg !1771

sw.default210:                                    ; preds = %if.end202
  %168 = load ptr, ptr %return_desc, align 8, !dbg !1772
  call void @acpi_ut_add_reference(ptr noundef %168) #5, !dbg !1773
  br label %sw.epilog211, !dbg !1774

sw.epilog211:                                     ; preds = %sw.default210, %if.end209
  br label %if.end212, !dbg !1775

if.end212:                                        ; preds = %sw.epilog211, %sw.bb191
  br label %sw.epilog218, !dbg !1776

sw.default213:                                    ; preds = %if.else161
  %169 = load ptr, ptr %operand, align 8, !dbg !1777
  %arrayidx214 = getelementptr ptr, ptr %169, i64 0, !dbg !1777
  %170 = load ptr, ptr %arrayidx214, align 8, !dbg !1777
  %171 = load ptr, ptr %operand, align 8, !dbg !1777
  %arrayidx215 = getelementptr ptr, ptr %171, i64 0, !dbg !1777
  %172 = load ptr, ptr %arrayidx215, align 8, !dbg !1777
  %class216 = getelementptr inbounds %struct.acpi_object_reference, ptr %172, i32 0, i32 5, !dbg !1777
  %173 = load i8, ptr %class216, align 1, !dbg !1777
  %conv217 = zext i8 %173 to i32, !dbg !1777
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 1051, ptr noundef @.str.7, ptr noundef %170, i32 noundef %conv217) #5, !dbg !1777
  store i32 8, ptr %status, align 4, !dbg !1778
  br label %cleanup, !dbg !1779

sw.epilog218:                                     ; preds = %if.end212, %if.then201, %sw.epilog190
  br label %if.end219

if.end219:                                        ; preds = %sw.epilog218, %sw.epilog160
  br label %sw.epilog223, !dbg !1780

sw.default220:                                    ; preds = %entry
  %174 = load ptr, ptr %walk_state.addr, align 8, !dbg !1781
  %opcode221 = getelementptr inbounds %struct.acpi_walk_state, ptr %174, i32 0, i32 3, !dbg !1781
  %175 = load i16, ptr %opcode221, align 2, !dbg !1781
  %conv222 = zext i16 %175 to i32, !dbg !1781
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 1064, ptr noundef @.str, i32 noundef %conv222) #5, !dbg !1781
  store i32 12289, ptr %status, align 4, !dbg !1782
  br label %cleanup, !dbg !1783

sw.epilog223:                                     ; preds = %if.end219, %if.end76, %if.end70, %if.end45, %if.end32, %if.end6
  br label %cleanup, !dbg !1784

cleanup:                                          ; preds = %sw.epilog223, %sw.default220, %sw.default213, %sw.default185, %if.then178, %if.end142, %if.then141, %sw.default123, %if.then113, %if.else97, %if.then75, %if.then69, %if.then65, %sw.default, %if.then50, %if.then44, %if.then39, %if.then19, %if.then10, %if.then
  call void @llvm.dbg.label(metadata !1402), !dbg !1785
  %176 = load i32, ptr %status, align 4, !dbg !1786
  %tobool224 = icmp ne i32 %176, 0, !dbg !1786
  br i1 %tobool224, label %if.then225, label %if.else226, !dbg !1788

if.then225:                                       ; preds = %cleanup
  %177 = load ptr, ptr %return_desc, align 8, !dbg !1789
  call void @acpi_ut_remove_reference(ptr noundef %177) #5, !dbg !1791
  br label %if.end227, !dbg !1792

if.else226:                                       ; preds = %cleanup
  %178 = load ptr, ptr %return_desc, align 8, !dbg !1793
  %179 = load ptr, ptr %walk_state.addr, align 8, !dbg !1795
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %179, i32 0, i32 43, !dbg !1796
  store ptr %178, ptr %result_obj, align 8, !dbg !1797
  br label %if.end227

if.end227:                                        ; preds = %if.else226, %if.then225
  %180 = load i32, ptr %status, align 4, !dbg !1798
  store i32 %180, ptr %retval, align 4, !dbg !1798
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup228, !dbg !1798

cleanup228:                                       ; preds = %if.end227, %if.then208, %if.then183
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #4, !dbg !1799
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #4, !dbg !1799
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1799
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #4, !dbg !1799
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_desc) #4, !dbg !1799
  call void @llvm.lifetime.end.p0(i64 8, ptr %operand) #4, !dbg !1799
  %181 = load i32, ptr %retval, align 4, !dbg !1799
  ret i32 %181, !dbg !1799
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1800 dso_local i32 @acpi_ex_resolve_operands(i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1803 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1806 dso_local i32 @acpi_ex_resolve_multiple(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1810 dso_local i32 @acpi_ds_get_buffer_arguments(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1812 dso_local i32 @acpi_ds_get_package_arguments(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1813 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1816 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1820 dso_local i32 @acpi_ds_method_data_get_value(i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1823 dso_local i32 @acpi_ns_get_node_unlocked(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1826 dso_local i32 @acpi_ex_resolve_node_to_value(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1829 dso_local i32 @acpi_ex_read_data_from_field(ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!851, !852, !853, !854, !855, !856, !857, !858}
!llvm.ident = !{!859}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !849, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exoparg1.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exoparg1\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exoparg1.ll drivers/acpi/acpica/exoparg1.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !808, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exoparg1.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ab4b67e07c61c86f633d2fb3355087a5")
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
!17 = !{!18, !20, !24, !27, !793, !111, !45, !804, !805}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !26)
!26 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !29, line: 133, size: 384, elements: !30)
!29 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!30 = !{!31, !780, !781, !782, !783, !789, !790, !791, !792}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !28, file: !29, line: 134, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !34)
!34 = !{!35, !49, !62, !74, !88, !102, !112, !429, !446, !462, !475, !553, !565, !579, !589, !607, !629, !648, !667, !686, !699, !726, !743, !756, !770, !779}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !33, file: !6, line: 370, baseType: !36, size: 128)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !37)
!37 = !{!38, !39, !43, !44, !48}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !36, file: !6, line: 74, baseType: !32, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !36, file: !6, line: 74, baseType: !40, size: 8, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !36, file: !6, line: 74, baseType: !40, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !36, file: !6, line: 74, baseType: !45, size: 16, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !6, line: 74, baseType: !40, size: 8, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !33, file: !6, line: 371, baseType: !50, size: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !6, line: 77, baseType: !32, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !6, line: 77, baseType: !40, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !6, line: 77, baseType: !40, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !6, line: 77, baseType: !45, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !6, line: 77, baseType: !40, size: 8, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !50, file: !6, line: 77, baseType: !58, size: 24, offset: 104)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 24, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !50, file: !6, line: 78, baseType: !24, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !33, file: !6, line: 372, baseType: !63, size: 256)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !73}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !63, file: !6, line: 94, baseType: !32, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !63, file: !6, line: 94, baseType: !40, size: 8, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !6, line: 94, baseType: !40, size: 8, offset: 72)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !63, file: !6, line: 94, baseType: !45, size: 16, offset: 80)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !63, file: !6, line: 94, baseType: !40, size: 8, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !63, file: !6, line: 94, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !63, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !33, file: !6, line: 373, baseType: !75, size: 384)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !84, !85, !86, !87}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !75, file: !6, line: 98, baseType: !32, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !75, file: !6, line: 98, baseType: !40, size: 8, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !75, file: !6, line: 98, baseType: !40, size: 8, offset: 72)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !75, file: !6, line: 98, baseType: !45, size: 16, offset: 80)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !75, file: !6, line: 98, baseType: !40, size: 8, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !75, file: !6, line: 98, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !75, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !75, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !75, file: !6, line: 100, baseType: !83, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !75, file: !6, line: 101, baseType: !27, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !33, file: !6, line: 374, baseType: !89, size: 384)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !99, !100, !101}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !89, file: !6, line: 105, baseType: !32, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !89, file: !6, line: 105, baseType: !40, size: 8, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !6, line: 105, baseType: !40, size: 8, offset: 72)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !89, file: !6, line: 105, baseType: !45, size: 16, offset: 80)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !6, line: 105, baseType: !40, size: 8, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !89, file: !6, line: 105, baseType: !27, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !89, file: !6, line: 106, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !89, file: !6, line: 107, baseType: !83, size: 64, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !89, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !89, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !33, file: !6, line: 375, baseType: !103, size: 192)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !103, file: !6, line: 119, baseType: !32, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !103, file: !6, line: 119, baseType: !40, size: 8, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !6, line: 119, baseType: !40, size: 8, offset: 72)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !103, file: !6, line: 119, baseType: !45, size: 16, offset: 80)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !103, file: !6, line: 119, baseType: !40, size: 8, offset: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !103, file: !6, line: 119, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !33, file: !6, line: 376, baseType: !113, size: 448)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !426, !427, !428}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !6, line: 145, baseType: !32, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !6, line: 145, baseType: !40, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !6, line: 145, baseType: !40, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !6, line: 145, baseType: !45, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !6, line: 145, baseType: !40, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !113, file: !6, line: 145, baseType: !40, size: 8, offset: 104)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !113, file: !6, line: 146, baseType: !40, size: 8, offset: 112)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !113, file: !6, line: 147, baseType: !40, size: 8, offset: 120)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !113, file: !6, line: 148, baseType: !32, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !6, line: 149, baseType: !32, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !113, file: !6, line: 150, baseType: !83, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !113, file: !6, line: 154, baseType: !127, size: 64, offset: 320)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !6, line: 151, size: 64, elements: !128)
!128 = !{!129, !425}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !127, file: !6, line: 152, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !29, line: 248, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!18, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !136, line: 37, size: 9024, elements: !137)
!136 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !371, !372, !373, !374, !375, !379, !381, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !408, !409, !410, !411, !412, !413, !414, !415, !417, !423}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !136, line: 38, baseType: !134, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !135, file: !136, line: 39, baseType: !40, size: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !135, file: !136, line: 40, baseType: !40, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !135, file: !136, line: 41, baseType: !45, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !135, file: !136, line: 42, baseType: !40, size: 8, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !135, file: !136, line: 43, baseType: !40, size: 8, offset: 104)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !135, file: !136, line: 44, baseType: !40, size: 8, offset: 112)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !135, file: !136, line: 45, baseType: !146, size: 16, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !45)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !135, file: !136, line: 46, baseType: !40, size: 8, offset: 144)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !135, file: !136, line: 47, baseType: !40, size: 8, offset: 152)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !135, file: !136, line: 48, baseType: !40, size: 8, offset: 160)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !135, file: !136, line: 49, baseType: !40, size: 8, offset: 168)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !135, file: !136, line: 50, baseType: !40, size: 8, offset: 176)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !135, file: !136, line: 51, baseType: !40, size: 8, offset: 184)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !135, file: !136, line: 52, baseType: !40, size: 8, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !135, file: !136, line: 53, baseType: !40, size: 8, offset: 200)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !135, file: !136, line: 54, baseType: !83, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !135, file: !136, line: 55, baseType: !20, size: 32, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !135, file: !136, line: 56, baseType: !20, size: 32, offset: 352)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !135, file: !136, line: 57, baseType: !20, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !135, file: !136, line: 58, baseType: !20, size: 32, offset: 416)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !135, file: !136, line: 60, baseType: !161, size: 640, offset: 448)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !29, line: 909, size: 640, elements: !162)
!162 = !{!163, !164, !165, !166, !167, !168, !252, !253, !369, !370}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !161, file: !29, line: 910, baseType: !83, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !29, line: 911, baseType: !83, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !161, file: !29, line: 912, baseType: !83, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !161, file: !29, line: 913, baseType: !83, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !161, file: !29, line: 914, baseType: !83, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !161, file: !29, line: 915, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !29, line: 891, size: 1600, elements: !171)
!171 = !{!172, !192, !208}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !170, file: !29, line: 892, baseType: !173, size: 448)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !29, line: 844, size: 448, elements: !174)
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !191}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !29, line: 845, baseType: !169, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !173, file: !29, line: 845, baseType: !40, size: 8, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !173, file: !29, line: 845, baseType: !40, size: 8, offset: 72)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !173, file: !29, line: 845, baseType: !45, size: 16, offset: 80)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !173, file: !29, line: 845, baseType: !83, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !29, line: 845, baseType: !169, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !173, file: !29, line: 845, baseType: !27, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !173, file: !29, line: 845, baseType: !183, size: 64, offset: 320)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !29, line: 732, size: 64, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !183, file: !29, line: 733, baseType: !24, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !29, line: 734, baseType: !20, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !183, file: !29, line: 735, baseType: !71, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !183, file: !29, line: 736, baseType: !83, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !29, line: 737, baseType: !71, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !183, file: !29, line: 738, baseType: !169, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !173, file: !29, line: 845, baseType: !40, size: 8, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !170, file: !29, line: 893, baseType: !193, size: 640)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !29, line: 851, size: 640, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !29, line: 852, baseType: !169, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !193, file: !29, line: 852, baseType: !40, size: 8, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !29, line: 852, baseType: !40, size: 8, offset: 72)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !193, file: !29, line: 852, baseType: !45, size: 16, offset: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !193, file: !29, line: 852, baseType: !83, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !193, file: !29, line: 852, baseType: !169, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !29, line: 852, baseType: !27, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !193, file: !29, line: 852, baseType: !183, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !193, file: !29, line: 852, baseType: !40, size: 8, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !193, file: !29, line: 852, baseType: !71, size: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !193, file: !29, line: 853, baseType: !83, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !193, file: !29, line: 854, baseType: !20, size: 32, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !29, line: 855, baseType: !20, size: 32, offset: 608)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !170, file: !29, line: 894, baseType: !209, size: 1600)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !29, line: 862, size: 1600, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !29, line: 863, baseType: !169, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !209, file: !29, line: 863, baseType: !40, size: 8, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !29, line: 863, baseType: !40, size: 8, offset: 72)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !209, file: !29, line: 863, baseType: !45, size: 16, offset: 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !209, file: !29, line: 863, baseType: !83, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !29, line: 863, baseType: !169, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !29, line: 863, baseType: !27, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !209, file: !29, line: 863, baseType: !183, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !209, file: !29, line: 863, baseType: !40, size: 8, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !209, file: !29, line: 863, baseType: !169, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !209, file: !29, line: 864, baseType: !169, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !209, file: !29, line: 865, baseType: !71, size: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !209, file: !29, line: 866, baseType: !40, size: 8, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !209, file: !29, line: 867, baseType: !71, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !209, file: !29, line: 868, baseType: !71, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !209, file: !29, line: 869, baseType: !71, size: 64, offset: 832)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !209, file: !29, line: 870, baseType: !228, size: 32, offset: 896)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 32, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 4)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !209, file: !29, line: 871, baseType: !20, size: 32, offset: 928)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !209, file: !29, line: 872, baseType: !20, size: 32, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !209, file: !29, line: 873, baseType: !20, size: 32, offset: 992)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !209, file: !29, line: 874, baseType: !20, size: 32, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !209, file: !29, line: 875, baseType: !20, size: 32, offset: 1056)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !209, file: !29, line: 876, baseType: !20, size: 32, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !209, file: !29, line: 877, baseType: !20, size: 32, offset: 1120)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !209, file: !29, line: 878, baseType: !20, size: 32, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !209, file: !29, line: 879, baseType: !20, size: 32, offset: 1184)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !209, file: !29, line: 880, baseType: !20, size: 32, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !209, file: !29, line: 881, baseType: !20, size: 32, offset: 1248)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !209, file: !29, line: 882, baseType: !20, size: 32, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !209, file: !29, line: 883, baseType: !20, size: 32, offset: 1312)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !209, file: !29, line: 884, baseType: !45, size: 16, offset: 1344)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !209, file: !29, line: 885, baseType: !40, size: 8, offset: 1360)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !209, file: !29, line: 886, baseType: !40, size: 8, offset: 1368)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !209, file: !29, line: 887, baseType: !40, size: 8, offset: 1376)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !209, file: !29, line: 888, baseType: !249, size: 160, offset: 1384)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 160, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 20)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !161, file: !29, line: 916, baseType: !27, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !161, file: !29, line: 917, baseType: !254, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !29, line: 679, size: 640, elements: !256)
!256 = !{!257, !265, !278, !287, !296, !309, !323, !335, !347}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !255, file: !29, line: 680, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !29, line: 575, size: 128, elements: !259)
!259 = !{!260, !261, !262, !263, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !29, line: 576, baseType: !111, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !258, file: !29, line: 576, baseType: !40, size: 8, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !258, file: !29, line: 576, baseType: !40, size: 8, offset: 72)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !258, file: !29, line: 576, baseType: !45, size: 16, offset: 80)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !258, file: !29, line: 576, baseType: !45, size: 16, offset: 96)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !255, file: !29, line: 681, baseType: !266, size: 384)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !29, line: 604, size: 384, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !29, line: 605, baseType: !111, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !266, file: !29, line: 605, baseType: !40, size: 8, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !29, line: 605, baseType: !40, size: 8, offset: 72)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !266, file: !29, line: 605, baseType: !45, size: 16, offset: 80)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !266, file: !29, line: 605, baseType: !45, size: 16, offset: 96)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !266, file: !29, line: 606, baseType: !45, size: 16, offset: 112)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !266, file: !29, line: 607, baseType: !169, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !266, file: !29, line: 608, baseType: !83, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !266, file: !29, line: 609, baseType: !83, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !266, file: !29, line: 610, baseType: !24, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !255, file: !29, line: 682, baseType: !279, size: 192)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !29, line: 582, size: 192, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !29, line: 583, baseType: !111, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !29, line: 583, baseType: !40, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !29, line: 583, baseType: !40, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !29, line: 583, baseType: !45, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !29, line: 583, baseType: !45, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !279, file: !29, line: 584, baseType: !32, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !255, file: !29, line: 683, baseType: !288, size: 192)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !29, line: 616, size: 192, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !29, line: 617, baseType: !111, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !29, line: 617, baseType: !40, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !29, line: 617, baseType: !40, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !29, line: 617, baseType: !45, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !29, line: 617, baseType: !45, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !288, file: !29, line: 618, baseType: !27, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !255, file: !29, line: 684, baseType: !297, size: 448)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !29, line: 621, size: 448, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !297, file: !29, line: 622, baseType: !111, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !297, file: !29, line: 622, baseType: !40, size: 8, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !29, line: 622, baseType: !40, size: 8, offset: 72)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !297, file: !29, line: 622, baseType: !45, size: 16, offset: 80)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !297, file: !29, line: 622, baseType: !45, size: 16, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !297, file: !29, line: 623, baseType: !20, size: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !297, file: !29, line: 624, baseType: !169, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !297, file: !29, line: 625, baseType: !83, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !297, file: !29, line: 626, baseType: !83, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !297, file: !29, line: 627, baseType: !20, size: 32, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !255, file: !29, line: 685, baseType: !310, size: 512)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !29, line: 590, size: 512, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !29, line: 591, baseType: !111, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !29, line: 591, baseType: !40, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !29, line: 591, baseType: !40, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !29, line: 591, baseType: !45, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !29, line: 591, baseType: !45, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !310, file: !29, line: 592, baseType: !20, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !310, file: !29, line: 593, baseType: !32, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !310, file: !29, line: 594, baseType: !32, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !310, file: !29, line: 595, baseType: !134, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !310, file: !29, line: 596, baseType: !111, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !310, file: !29, line: 597, baseType: !20, size: 32, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !255, file: !29, line: 686, baseType: !324, size: 320)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !29, line: 634, size: 320, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !29, line: 635, baseType: !111, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !29, line: 635, baseType: !40, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !29, line: 635, baseType: !40, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !324, file: !29, line: 635, baseType: !45, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !29, line: 635, baseType: !45, size: 16, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !324, file: !29, line: 636, baseType: !40, size: 8, offset: 112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !324, file: !29, line: 637, baseType: !134, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !324, file: !29, line: 638, baseType: !32, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !324, file: !29, line: 639, baseType: !24, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !255, file: !29, line: 687, baseType: !336, size: 640)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !29, line: 646, size: 640, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !29, line: 647, baseType: !111, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !336, file: !29, line: 647, baseType: !40, size: 8, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !29, line: 647, baseType: !40, size: 8, offset: 72)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !336, file: !29, line: 647, baseType: !45, size: 16, offset: 80)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !29, line: 647, baseType: !45, size: 16, offset: 96)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !336, file: !29, line: 648, baseType: !344, size: 512, offset: 128)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !255, file: !29, line: 688, baseType: !348, size: 320)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !29, line: 669, size: 320, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !29, line: 670, baseType: !111, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !348, file: !29, line: 670, baseType: !40, size: 8, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !29, line: 670, baseType: !40, size: 8, offset: 72)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !348, file: !29, line: 670, baseType: !45, size: 16, offset: 80)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !348, file: !29, line: 670, baseType: !45, size: 16, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !348, file: !29, line: 671, baseType: !40, size: 8, offset: 112)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !348, file: !29, line: 672, baseType: !27, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !348, file: !29, line: 673, baseType: !32, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !348, file: !29, line: 674, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !29, line: 660, size: 128, elements: !361)
!361 = !{!362, !368}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !360, file: !29, line: 661, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !367, !20, !111}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !111)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !360, file: !29, line: 662, baseType: !111, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !161, file: !29, line: 918, baseType: !169, size: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !161, file: !29, line: 919, baseType: !20, size: 32, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !135, file: !136, line: 61, baseType: !20, size: 32, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !135, file: !136, line: 62, baseType: !20, size: 32, offset: 1120)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !135, file: !136, line: 63, baseType: !45, size: 16, offset: 1152)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !135, file: !136, line: 64, baseType: !40, size: 8, offset: 1168)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !135, file: !136, line: 66, baseType: !376, size: 2688, offset: 1216)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2688, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 7)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !135, file: !136, line: 67, baseType: !380, size: 3072, offset: 3904)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 3072, elements: !345)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !135, file: !136, line: 68, baseType: !382, size: 576, offset: 6976)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 576, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 9)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !135, file: !136, line: 69, baseType: !98, size: 64, offset: 7552)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !135, file: !136, line: 71, baseType: !83, size: 64, offset: 7616)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !135, file: !136, line: 72, baseType: !98, size: 64, offset: 7680)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !135, file: !136, line: 73, baseType: !254, size: 64, offset: 7744)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !135, file: !136, line: 74, baseType: !27, size: 64, offset: 7808)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !135, file: !136, line: 75, baseType: !32, size: 64, offset: 7872)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !135, file: !136, line: 76, baseType: !27, size: 64, offset: 7936)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !135, file: !136, line: 77, baseType: !169, size: 64, offset: 8000)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !135, file: !136, line: 78, baseType: !32, size: 64, offset: 8064)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !135, file: !136, line: 79, baseType: !27, size: 64, offset: 8128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !135, file: !136, line: 80, baseType: !71, size: 64, offset: 8192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !135, file: !136, line: 81, baseType: !169, size: 64, offset: 8256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !135, file: !136, line: 82, baseType: !398, size: 64, offset: 8320)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !29, line: 718, size: 128, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !400, file: !29, line: 722, baseType: !20, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !400, file: !29, line: 723, baseType: !20, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !29, line: 724, baseType: !45, size: 16, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !400, file: !29, line: 725, baseType: !40, size: 8, offset: 80)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !400, file: !29, line: 726, baseType: !40, size: 8, offset: 88)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !400, file: !29, line: 727, baseType: !40, size: 8, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !135, file: !136, line: 83, baseType: !169, size: 64, offset: 8384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !135, file: !136, line: 84, baseType: !32, size: 64, offset: 8448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !135, file: !136, line: 85, baseType: !254, size: 64, offset: 8512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !135, file: !136, line: 86, baseType: !32, size: 64, offset: 8576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !135, file: !136, line: 87, baseType: !254, size: 64, offset: 8640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !135, file: !136, line: 88, baseType: !169, size: 64, offset: 8704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !135, file: !136, line: 89, baseType: !169, size: 64, offset: 8768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !135, file: !136, line: 90, baseType: !416, size: 64, offset: 8832)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !135, file: !136, line: 91, baseType: !418, size: 64, offset: 8896)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !29, line: 652, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!18, !134, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !135, file: !136, line: 92, baseType: !424, size: 64, offset: 8960)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !29, line: 656, baseType: !131)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !127, file: !6, line: 153, baseType: !32, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !113, file: !6, line: 156, baseType: !20, size: 32, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !113, file: !6, line: 157, baseType: !146, size: 16, offset: 416)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !113, file: !6, line: 158, baseType: !40, size: 8, offset: 432)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !33, file: !6, line: 377, baseType: !430, size: 576)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !430, file: !6, line: 123, baseType: !32, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !430, file: !6, line: 123, baseType: !40, size: 8, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !6, line: 123, baseType: !40, size: 8, offset: 72)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !430, file: !6, line: 123, baseType: !45, size: 16, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !6, line: 123, baseType: !40, size: 8, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !430, file: !6, line: 123, baseType: !40, size: 8, offset: 104)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !430, file: !6, line: 124, baseType: !45, size: 16, offset: 112)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !430, file: !6, line: 125, baseType: !111, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !430, file: !6, line: 126, baseType: !24, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !430, file: !6, line: 127, baseType: !416, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !430, file: !6, line: 128, baseType: !32, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !430, file: !6, line: 129, baseType: !32, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !430, file: !6, line: 130, baseType: !27, size: 64, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !430, file: !6, line: 131, baseType: !40, size: 8, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !33, file: !6, line: 378, baseType: !447, size: 512)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !460, !461}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !447, file: !6, line: 135, baseType: !32, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !447, file: !6, line: 135, baseType: !40, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !6, line: 135, baseType: !40, size: 8, offset: 72)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !447, file: !6, line: 135, baseType: !45, size: 16, offset: 80)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !6, line: 135, baseType: !40, size: 8, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !447, file: !6, line: 135, baseType: !40, size: 8, offset: 104)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !447, file: !6, line: 136, baseType: !27, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !447, file: !6, line: 137, baseType: !32, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !6, line: 138, baseType: !32, size: 64, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !447, file: !6, line: 139, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !24)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !447, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !447, file: !6, line: 141, baseType: !111, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !33, file: !6, line: 379, baseType: !463, size: 320)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !474}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !463, file: !6, line: 186, baseType: !32, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !463, file: !6, line: 186, baseType: !40, size: 8, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !463, file: !6, line: 186, baseType: !40, size: 8, offset: 72)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !463, file: !6, line: 186, baseType: !45, size: 16, offset: 80)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !6, line: 186, baseType: !40, size: 8, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !463, file: !6, line: 186, baseType: !471, size: 128, offset: 128)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 2)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !463, file: !6, line: 186, baseType: !32, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !33, file: !6, line: 380, baseType: !476, size: 384)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !476, file: !6, line: 189, baseType: !32, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !476, file: !6, line: 189, baseType: !40, size: 8, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !476, file: !6, line: 189, baseType: !40, size: 8, offset: 72)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !476, file: !6, line: 189, baseType: !45, size: 16, offset: 80)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !6, line: 189, baseType: !40, size: 8, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !476, file: !6, line: 190, baseType: !471, size: 128, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !476, file: !6, line: 190, baseType: !32, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !476, file: !6, line: 190, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !29, line: 480, size: 576, elements: !488)
!488 = !{!489, !490, !491, !492, !500, !515, !547, !548, !549, !550, !551, !552}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !487, file: !29, line: 481, baseType: !27, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !487, file: !29, line: 482, baseType: !486, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !29, line: 483, baseType: !486, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !487, file: !29, line: 484, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !29, line: 497, size: 256, elements: !495)
!495 = !{!496, !497, !498, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !494, file: !29, line: 498, baseType: !493, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !29, line: 499, baseType: !493, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !494, file: !29, line: 500, baseType: !486, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !494, file: !29, line: 501, baseType: !20, size: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !487, file: !29, line: 485, baseType: !501, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !29, line: 466, size: 320, elements: !503)
!503 = !{!504, !509, !510, !511, !512, !513, !514}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !502, file: !29, line: 467, baseType: !505, size: 128)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !29, line: 459, size: 128, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !505, file: !29, line: 460, baseType: !40, size: 8)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !505, file: !29, line: 461, baseType: !24, size: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !502, file: !29, line: 468, baseType: !505, size: 128, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !502, file: !29, line: 469, baseType: !45, size: 16, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !502, file: !29, line: 470, baseType: !40, size: 8, offset: 272)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !502, file: !29, line: 471, baseType: !40, size: 8, offset: 280)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !502, file: !29, line: 472, baseType: !40, size: 8, offset: 288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !502, file: !29, line: 473, baseType: !40, size: 8, offset: 296)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !487, file: !29, line: 486, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !29, line: 448, size: 192, elements: !518)
!518 = !{!519, !542, !543, !544, !545, !546}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !517, file: !29, line: 449, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !29, line: 438, size: 64, elements: !521)
!521 = !{!522, !523, !536}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !520, file: !29, line: 439, baseType: !27, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !520, file: !29, line: 440, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !29, line: 419, size: 256, elements: !526)
!526 = !{!527, !532, !533, !534, !535}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !525, file: !29, line: 420, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!20, !367, !20, !111}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !525, file: !29, line: 421, baseType: !111, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !525, file: !29, line: 422, baseType: !27, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !525, file: !29, line: 423, baseType: !40, size: 8, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !525, file: !29, line: 424, baseType: !40, size: 8, offset: 200)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !520, file: !29, line: 441, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !29, line: 429, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !538, file: !29, line: 430, baseType: !27, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !29, line: 431, baseType: !537, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !517, file: !29, line: 450, baseType: !501, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !29, line: 451, baseType: !40, size: 8, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !517, file: !29, line: 452, baseType: !40, size: 8, offset: 136)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !517, file: !29, line: 453, baseType: !40, size: 8, offset: 144)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !517, file: !29, line: 454, baseType: !40, size: 8, offset: 152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !487, file: !29, line: 487, baseType: !24, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !487, file: !29, line: 488, baseType: !20, size: 32, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !487, file: !29, line: 489, baseType: !45, size: 16, offset: 480)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !487, file: !29, line: 490, baseType: !45, size: 16, offset: 496)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !487, file: !29, line: 491, baseType: !40, size: 8, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !487, file: !29, line: 492, baseType: !40, size: 8, offset: 520)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !33, file: !6, line: 381, baseType: !554, size: 384)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !554, file: !6, line: 194, baseType: !32, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !554, file: !6, line: 194, baseType: !40, size: 8, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !554, file: !6, line: 194, baseType: !40, size: 8, offset: 72)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !554, file: !6, line: 194, baseType: !45, size: 16, offset: 80)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !6, line: 194, baseType: !40, size: 8, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !554, file: !6, line: 194, baseType: !471, size: 128, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !554, file: !6, line: 194, baseType: !32, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !554, file: !6, line: 194, baseType: !20, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !554, file: !6, line: 195, baseType: !20, size: 32, offset: 352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !33, file: !6, line: 382, baseType: !566, size: 384)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !566, file: !6, line: 199, baseType: !32, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !566, file: !6, line: 199, baseType: !40, size: 8, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !566, file: !6, line: 199, baseType: !40, size: 8, offset: 72)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !566, file: !6, line: 199, baseType: !45, size: 16, offset: 80)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !566, file: !6, line: 199, baseType: !40, size: 8, offset: 96)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !566, file: !6, line: 201, baseType: !40, size: 8, offset: 104)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !566, file: !6, line: 202, baseType: !40, size: 8, offset: 112)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !566, file: !6, line: 203, baseType: !471, size: 128, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !566, file: !6, line: 203, baseType: !32, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !566, file: !6, line: 203, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !24)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !33, file: !6, line: 383, baseType: !580, size: 320)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !6, line: 207, baseType: !32, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !6, line: 207, baseType: !40, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !6, line: 207, baseType: !40, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !6, line: 207, baseType: !45, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !6, line: 207, baseType: !40, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !580, file: !6, line: 207, baseType: !471, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !580, file: !6, line: 207, baseType: !32, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !33, file: !6, line: 384, baseType: !590, size: 384)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !590, file: !6, line: 235, baseType: !32, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !590, file: !6, line: 235, baseType: !40, size: 8, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !590, file: !6, line: 235, baseType: !40, size: 8, offset: 72)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !590, file: !6, line: 235, baseType: !45, size: 16, offset: 80)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !590, file: !6, line: 235, baseType: !40, size: 8, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !590, file: !6, line: 235, baseType: !40, size: 8, offset: 104)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !590, file: !6, line: 235, baseType: !40, size: 8, offset: 112)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !590, file: !6, line: 235, baseType: !40, size: 8, offset: 120)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !590, file: !6, line: 235, baseType: !27, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !590, file: !6, line: 235, baseType: !20, size: 32, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !590, file: !6, line: 235, baseType: !20, size: 32, offset: 224)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !590, file: !6, line: 235, baseType: !20, size: 32, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !590, file: !6, line: 235, baseType: !40, size: 8, offset: 288)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !590, file: !6, line: 235, baseType: !40, size: 8, offset: 296)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !590, file: !6, line: 235, baseType: !32, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !33, file: !6, line: 385, baseType: !608, size: 576)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !608, file: !6, line: 239, baseType: !32, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !608, file: !6, line: 239, baseType: !40, size: 8, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !6, line: 239, baseType: !40, size: 8, offset: 72)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !608, file: !6, line: 239, baseType: !45, size: 16, offset: 80)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !6, line: 239, baseType: !40, size: 8, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !608, file: !6, line: 239, baseType: !40, size: 8, offset: 104)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !608, file: !6, line: 239, baseType: !40, size: 8, offset: 112)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !608, file: !6, line: 239, baseType: !40, size: 8, offset: 120)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !608, file: !6, line: 239, baseType: !27, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !608, file: !6, line: 239, baseType: !20, size: 32, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !608, file: !6, line: 239, baseType: !20, size: 32, offset: 224)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !608, file: !6, line: 239, baseType: !20, size: 32, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !608, file: !6, line: 239, baseType: !40, size: 8, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !608, file: !6, line: 239, baseType: !40, size: 8, offset: 296)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !608, file: !6, line: 239, baseType: !45, size: 16, offset: 304)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !608, file: !6, line: 240, baseType: !32, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !608, file: !6, line: 241, baseType: !83, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !608, file: !6, line: 242, baseType: !45, size: 16, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !608, file: !6, line: 243, baseType: !83, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !33, file: !6, line: 386, baseType: !630, size: 384)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 264, baseType: !32, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 264, baseType: !40, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 264, baseType: !40, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 264, baseType: !45, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 264, baseType: !40, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 264, baseType: !40, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 264, baseType: !40, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 264, baseType: !40, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 264, baseType: !27, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 264, baseType: !20, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 264, baseType: !20, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 264, baseType: !20, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 264, baseType: !40, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 264, baseType: !40, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !630, file: !6, line: 264, baseType: !40, size: 8, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !630, file: !6, line: 265, baseType: !32, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !33, file: !6, line: 387, baseType: !649, size: 448)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !649, file: !6, line: 247, baseType: !32, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !649, file: !6, line: 247, baseType: !40, size: 8, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !649, file: !6, line: 247, baseType: !40, size: 8, offset: 72)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !649, file: !6, line: 247, baseType: !45, size: 16, offset: 80)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !649, file: !6, line: 247, baseType: !40, size: 8, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !649, file: !6, line: 247, baseType: !40, size: 8, offset: 104)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !649, file: !6, line: 247, baseType: !40, size: 8, offset: 112)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !649, file: !6, line: 247, baseType: !40, size: 8, offset: 120)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !649, file: !6, line: 247, baseType: !27, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !649, file: !6, line: 247, baseType: !20, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !649, file: !6, line: 247, baseType: !20, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !649, file: !6, line: 247, baseType: !20, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !649, file: !6, line: 247, baseType: !40, size: 8, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !649, file: !6, line: 247, baseType: !40, size: 8, offset: 296)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !649, file: !6, line: 247, baseType: !32, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !649, file: !6, line: 248, baseType: !32, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !33, file: !6, line: 388, baseType: !668, size: 448)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !668, file: !6, line: 252, baseType: !32, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !668, file: !6, line: 252, baseType: !40, size: 8, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !6, line: 252, baseType: !40, size: 8, offset: 72)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !668, file: !6, line: 252, baseType: !45, size: 16, offset: 80)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !6, line: 252, baseType: !40, size: 8, offset: 96)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !668, file: !6, line: 252, baseType: !40, size: 8, offset: 104)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !668, file: !6, line: 252, baseType: !40, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !668, file: !6, line: 252, baseType: !40, size: 8, offset: 120)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !668, file: !6, line: 252, baseType: !27, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !668, file: !6, line: 252, baseType: !20, size: 32, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !668, file: !6, line: 252, baseType: !20, size: 32, offset: 224)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !668, file: !6, line: 252, baseType: !20, size: 32, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !668, file: !6, line: 252, baseType: !40, size: 8, offset: 288)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !668, file: !6, line: 252, baseType: !40, size: 8, offset: 296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !668, file: !6, line: 257, baseType: !32, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !668, file: !6, line: 258, baseType: !32, size: 64, offset: 384)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !33, file: !6, line: 389, baseType: !687, size: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !687, file: !6, line: 275, baseType: !32, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !6, line: 275, baseType: !40, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !6, line: 275, baseType: !40, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !687, file: !6, line: 275, baseType: !45, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !6, line: 275, baseType: !40, size: 8, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !687, file: !6, line: 275, baseType: !27, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !687, file: !6, line: 276, baseType: !20, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !687, file: !6, line: 277, baseType: !363, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !687, file: !6, line: 278, baseType: !111, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !6, line: 279, baseType: !471, size: 128, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !33, file: !6, line: 390, baseType: !700, size: 576)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !715, !716, !717, !718, !724, !725}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !700, file: !6, line: 283, baseType: !32, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !700, file: !6, line: 283, baseType: !40, size: 8, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !6, line: 283, baseType: !40, size: 8, offset: 72)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !700, file: !6, line: 283, baseType: !45, size: 16, offset: 80)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !6, line: 283, baseType: !40, size: 8, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !700, file: !6, line: 283, baseType: !40, size: 8, offset: 104)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !700, file: !6, line: 284, baseType: !40, size: 8, offset: 112)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !700, file: !6, line: 285, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!18, !20, !459, !20, !714, !111, !111}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !700, file: !6, line: 286, baseType: !27, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !700, file: !6, line: 287, baseType: !111, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !700, file: !6, line: 288, baseType: !111, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !700, file: !6, line: 289, baseType: !719, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!18, !367, !20, !111, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !700, file: !6, line: 290, baseType: !32, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !700, file: !6, line: 291, baseType: !32, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !33, file: !6, line: 391, baseType: !727, size: 512)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !727, file: !6, line: 310, baseType: !32, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !6, line: 310, baseType: !40, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !6, line: 310, baseType: !40, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !727, file: !6, line: 310, baseType: !45, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !6, line: 310, baseType: !40, size: 8, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !727, file: !6, line: 310, baseType: !40, size: 8, offset: 104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !727, file: !6, line: 311, baseType: !40, size: 8, offset: 112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !727, file: !6, line: 312, baseType: !40, size: 8, offset: 120)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !727, file: !6, line: 313, baseType: !111, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !6, line: 314, baseType: !27, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !727, file: !6, line: 315, baseType: !98, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !727, file: !6, line: 316, baseType: !83, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !727, file: !6, line: 317, baseType: !83, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !727, file: !6, line: 318, baseType: !20, size: 32, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !33, file: !6, line: 392, baseType: !744, size: 448)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !744, file: !6, line: 343, baseType: !32, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !744, file: !6, line: 343, baseType: !40, size: 8, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !6, line: 343, baseType: !40, size: 8, offset: 72)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !744, file: !6, line: 343, baseType: !45, size: 16, offset: 80)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !744, file: !6, line: 343, baseType: !40, size: 8, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !744, file: !6, line: 343, baseType: !27, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !744, file: !6, line: 344, baseType: !27, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !744, file: !6, line: 345, baseType: !111, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !744, file: !6, line: 346, baseType: !83, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !744, file: !6, line: 347, baseType: !20, size: 32, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !6, line: 393, baseType: !757, size: 256)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !769}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !757, file: !6, line: 353, baseType: !32, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !6, line: 353, baseType: !40, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !6, line: 353, baseType: !40, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !757, file: !6, line: 353, baseType: !45, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !6, line: 353, baseType: !40, size: 8, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !757, file: !6, line: 353, baseType: !765, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !367, !111}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !757, file: !6, line: 354, baseType: !111, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !33, file: !6, line: 394, baseType: !771, size: 192)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !771, file: !6, line: 360, baseType: !32, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !771, file: !6, line: 360, baseType: !40, size: 8, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !6, line: 360, baseType: !40, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !771, file: !6, line: 360, baseType: !45, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !6, line: 360, baseType: !40, size: 8, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !771, file: !6, line: 360, baseType: !32, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !33, file: !6, line: 401, baseType: !28, size: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !28, file: !29, line: 135, baseType: !40, size: 8, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !28, file: !29, line: 136, baseType: !40, size: 8, offset: 72)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !28, file: !29, line: 137, baseType: !45, size: 16, offset: 80)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !28, file: !29, line: 138, baseType: !784, size: 32, offset: 96)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !785, line: 328, size: 32, elements: !786)
!785 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !784, file: !785, line: 329, baseType: !20, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !784, file: !785, line: 330, baseType: !228, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !28, file: !29, line: 139, baseType: !27, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !28, file: !29, line: 140, baseType: !27, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !28, file: !29, line: 141, baseType: !27, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !28, file: !29, line: 142, baseType: !146, size: 16, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 434, size: 1600, elements: !795)
!795 = !{!796, !801, !802, !803}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !794, file: !6, line: 435, baseType: !797, size: 128)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 429, size: 128, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !797, file: !6, line: 430, baseType: !111, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !797, file: !6, line: 431, baseType: !40, size: 8, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !794, file: !6, line: 436, baseType: !33, size: 576)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !794, file: !6, line: 437, baseType: !28, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !794, file: !6, line: 438, baseType: !170, size: 1600)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !806, line: 42, baseType: !807)
!806 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!807 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!808 = !{!809, !814, !819, !824, !829, !834, !839, !844, !0}
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !811, isLocal: true, isDefinition: true)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 192, elements: !812)
!812 = !{!813}
!813 = !DISubrange(count: 24)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !3, line: 325, type: !816, isLocal: true, isDefinition: true)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 320, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 40)
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(scope: null, file: !3, line: 386, type: !821, isLocal: true, isDefinition: true)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 400, elements: !822)
!822 = !{!823}
!823 = !DISubrange(count: 50)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !3, line: 528, type: !826, isLocal: true, isDefinition: true)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 280, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 35)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !3, line: 645, type: !831, isLocal: true, isDefinition: true)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 272, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 34)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 755, type: !836, isLocal: true, isDefinition: true)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 496, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 62)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !3, line: 991, type: !841, isLocal: true, isDefinition: true)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 424, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 53)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1051, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 328, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 41)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 72, elements: !383)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!851 = !{i32 7, !"Dwarf Version", i32 5}
!852 = !{i32 2, !"Debug Info Version", i32 3}
!853 = !{i32 1, !"wchar_size", i32 2}
!854 = !{i32 8, !"cf-protection-branch", i32 1}
!855 = !{i32 4, !"function_return_thunk_extern", i32 1}
!856 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!857 = !{i32 1, !"Code Model", i32 2}
!858 = !{i32 1, !"override-stack-alignment", i32 8}
!859 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!860 = distinct !DISubprogram(name: "acpi_ex_opcode_0A_0T_1R", scope: !3, file: !3, line: 53, type: !132, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!861 = !{!862, !863, !864, !865}
!862 = !DILocalVariable(name: "walk_state", arg: 1, scope: !860, file: !3, line: 53, type: !134)
!863 = !DILocalVariable(name: "status", scope: !860, file: !3, line: 55, type: !18)
!864 = !DILocalVariable(name: "return_desc", scope: !860, file: !3, line: 56, type: !32)
!865 = !DILabel(scope: !860, name: "cleanup", file: !3, line: 84)
!866 = !DILocation(line: 53, column: 61, scope: !860)
!867 = !DILocation(line: 55, column: 2, scope: !860)
!868 = !DILocation(line: 55, column: 14, scope: !860)
!869 = !DILocation(line: 56, column: 2, scope: !860)
!870 = !DILocation(line: 56, column: 29, scope: !860)
!871 = !DILocation(line: 63, column: 10, scope: !860)
!872 = !DILocation(line: 63, column: 22, scope: !860)
!873 = !DILocation(line: 63, column: 2, scope: !860)
!874 = !DILocation(line: 69, column: 37, scope: !875)
!875 = distinct !DILexicalBlock(scope: !860, file: !3, line: 63, column: 30)
!876 = !DILocation(line: 69, column: 7, scope: !875)
!877 = !DILocation(line: 68, column: 15, scope: !875)
!878 = !DILocation(line: 70, column: 8, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !3, line: 70, column: 7)
!880 = !DILocation(line: 70, column: 7, scope: !875)
!881 = !DILocation(line: 71, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !3, line: 70, column: 21)
!883 = !DILocation(line: 72, column: 4, scope: !882)
!884 = !DILocation(line: 74, column: 3, scope: !875)
!885 = !DILocation(line: 78, column: 3, scope: !875)
!886 = !DILocation(line: 80, column: 10, scope: !875)
!887 = !DILocation(line: 81, column: 3, scope: !875)
!888 = !DILocation(line: 82, column: 2, scope: !875)
!889 = !DILocation(line: 84, column: 1, scope: !860)
!890 = !DILocation(line: 88, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !860, file: !3, line: 88, column: 6)
!892 = !DILocation(line: 88, column: 6, scope: !891)
!893 = !DILocation(line: 88, column: 29, scope: !891)
!894 = !DILocation(line: 88, column: 32, scope: !891)
!895 = !DILocation(line: 88, column: 44, scope: !891)
!896 = !DILocation(line: 88, column: 6, scope: !860)
!897 = !DILocation(line: 89, column: 28, scope: !898)
!898 = distinct !DILexicalBlock(scope: !891, file: !3, line: 88, column: 56)
!899 = !DILocation(line: 89, column: 3, scope: !898)
!900 = !DILocation(line: 90, column: 3, scope: !898)
!901 = !DILocation(line: 90, column: 15, scope: !898)
!902 = !DILocation(line: 90, column: 26, scope: !898)
!903 = !DILocation(line: 91, column: 2, scope: !898)
!904 = !DILocation(line: 94, column: 28, scope: !905)
!905 = distinct !DILexicalBlock(scope: !891, file: !3, line: 91, column: 9)
!906 = !DILocation(line: 94, column: 3, scope: !905)
!907 = !DILocation(line: 94, column: 15, scope: !905)
!908 = !DILocation(line: 94, column: 26, scope: !905)
!909 = !DILocation(line: 97, column: 2, scope: !860)
!910 = !DILocation(line: 98, column: 1, scope: !860)
!911 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !912, file: !912, line: 455, type: !913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!912 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!913 = !DISubroutineType(types: !914)
!914 = !{!32, !24}
!915 = !DISubprogram(name: "acpi_os_get_timer", scope: !916, file: !916, line: 318, type: !917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!916 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!917 = !DISubroutineType(types: !918)
!918 = !{!24}
!919 = !DISubprogram(name: "acpi_error", scope: !920, file: !920, line: 901, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!921 = !DISubroutineType(types: !922)
!922 = !{null, !923, !20, !923, null}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!924 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !912, file: !912, line: 369, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !32}
!927 = distinct !DISubprogram(name: "acpi_ex_opcode_1A_0T_0R", scope: !3, file: !3, line: 113, type: !132, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!928 = !{!929, !930, !931}
!929 = !DILocalVariable(name: "walk_state", arg: 1, scope: !927, file: !3, line: 113, type: !134)
!930 = !DILocalVariable(name: "operand", scope: !927, file: !3, line: 115, type: !98)
!931 = !DILocalVariable(name: "status", scope: !927, file: !3, line: 116, type: !18)
!932 = !DILocation(line: 113, column: 61, scope: !927)
!933 = !DILocation(line: 115, column: 2, scope: !927)
!934 = !DILocation(line: 115, column: 30, scope: !927)
!935 = !DILocation(line: 115, column: 41, scope: !927)
!936 = !DILocation(line: 115, column: 53, scope: !927)
!937 = !DILocation(line: 116, column: 2, scope: !927)
!938 = !DILocation(line: 116, column: 14, scope: !927)
!939 = !DILocation(line: 123, column: 10, scope: !927)
!940 = !DILocation(line: 123, column: 22, scope: !927)
!941 = !DILocation(line: 123, column: 2, scope: !927)
!942 = !DILocation(line: 126, column: 34, scope: !943)
!943 = distinct !DILexicalBlock(scope: !927, file: !3, line: 123, column: 30)
!944 = !DILocation(line: 126, column: 46, scope: !943)
!945 = !DILocation(line: 126, column: 12, scope: !943)
!946 = !DILocation(line: 126, column: 10, scope: !943)
!947 = !DILocation(line: 127, column: 3, scope: !943)
!948 = !DILocation(line: 131, column: 39, scope: !943)
!949 = !DILocation(line: 131, column: 12, scope: !943)
!950 = !DILocation(line: 131, column: 10, scope: !943)
!951 = !DILocation(line: 132, column: 3, scope: !943)
!952 = !DILocation(line: 136, column: 40, scope: !943)
!953 = !DILocation(line: 136, column: 12, scope: !943)
!954 = !DILocation(line: 136, column: 10, scope: !943)
!955 = !DILocation(line: 137, column: 3, scope: !943)
!956 = !DILocation(line: 141, column: 36, scope: !943)
!957 = !DILocation(line: 141, column: 56, scope: !943)
!958 = !DILocation(line: 141, column: 12, scope: !943)
!959 = !DILocation(line: 141, column: 10, scope: !943)
!960 = !DILocation(line: 142, column: 3, scope: !943)
!961 = !DILocation(line: 147, column: 37, scope: !943)
!962 = !DILocation(line: 147, column: 57, scope: !943)
!963 = !DILocation(line: 147, column: 31, scope: !943)
!964 = !DILocation(line: 147, column: 7, scope: !943)
!965 = !DILocation(line: 146, column: 10, scope: !943)
!966 = !DILocation(line: 148, column: 3, scope: !943)
!967 = !DILocation(line: 152, column: 33, scope: !943)
!968 = !DILocation(line: 152, column: 12, scope: !943)
!969 = !DILocation(line: 152, column: 10, scope: !943)
!970 = !DILocation(line: 153, column: 3, scope: !943)
!971 = !DILocation(line: 157, column: 3, scope: !943)
!972 = !DILocation(line: 159, column: 10, scope: !943)
!973 = !DILocation(line: 160, column: 3, scope: !943)
!974 = !DILocation(line: 163, column: 2, scope: !927)
!975 = !DILocation(line: 164, column: 1, scope: !927)
!976 = !DISubprogram(name: "acpi_ex_release_mutex", scope: !977, file: !977, line: 253, type: !978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!977 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!978 = !DISubroutineType(types: !979)
!979 = !{!18, !32, !134}
!980 = !DISubprogram(name: "acpi_ex_system_reset_event", scope: !977, file: !977, line: 310, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DISubroutineType(types: !982)
!982 = !{!18, !32}
!983 = !DISubprogram(name: "acpi_ex_system_signal_event", scope: !977, file: !977, line: 304, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DISubprogram(name: "acpi_ex_system_do_sleep", scope: !977, file: !977, line: 300, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!985 = !DISubroutineType(types: !986)
!986 = !{!18, !24}
!987 = !DISubprogram(name: "acpi_ex_system_do_stall", scope: !977, file: !977, line: 302, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!988 = !DISubroutineType(types: !989)
!989 = !{!18, !20}
!990 = !DISubprogram(name: "acpi_ex_unload_table", scope: !977, file: !977, line: 237, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = distinct !DISubprogram(name: "acpi_ex_opcode_1A_1T_1R", scope: !3, file: !3, line: 227, type: !132, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !992)
!992 = !{!993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002}
!993 = !DILocalVariable(name: "walk_state", arg: 1, scope: !991, file: !3, line: 227, type: !134)
!994 = !DILocalVariable(name: "status", scope: !991, file: !3, line: 229, type: !18)
!995 = !DILocalVariable(name: "operand", scope: !991, file: !3, line: 230, type: !98)
!996 = !DILocalVariable(name: "return_desc", scope: !991, file: !3, line: 231, type: !32)
!997 = !DILocalVariable(name: "return_desc2", scope: !991, file: !3, line: 232, type: !32)
!998 = !DILocalVariable(name: "temp32", scope: !991, file: !3, line: 233, type: !20)
!999 = !DILocalVariable(name: "i", scope: !991, file: !3, line: 234, type: !20)
!1000 = !DILocalVariable(name: "power_of_ten", scope: !991, file: !3, line: 235, type: !24)
!1001 = !DILocalVariable(name: "digit", scope: !991, file: !3, line: 236, type: !24)
!1002 = !DILabel(scope: !991, name: "cleanup", file: !3, line: 549)
!1003 = !DILocation(line: 227, column: 61, scope: !991)
!1004 = !DILocation(line: 229, column: 2, scope: !991)
!1005 = !DILocation(line: 229, column: 14, scope: !991)
!1006 = !DILocation(line: 230, column: 2, scope: !991)
!1007 = !DILocation(line: 230, column: 30, scope: !991)
!1008 = !DILocation(line: 230, column: 41, scope: !991)
!1009 = !DILocation(line: 230, column: 53, scope: !991)
!1010 = !DILocation(line: 231, column: 2, scope: !991)
!1011 = !DILocation(line: 231, column: 29, scope: !991)
!1012 = !DILocation(line: 232, column: 2, scope: !991)
!1013 = !DILocation(line: 232, column: 29, scope: !991)
!1014 = !DILocation(line: 233, column: 2, scope: !991)
!1015 = !DILocation(line: 233, column: 6, scope: !991)
!1016 = !DILocation(line: 234, column: 2, scope: !991)
!1017 = !DILocation(line: 234, column: 6, scope: !991)
!1018 = !DILocation(line: 235, column: 2, scope: !991)
!1019 = !DILocation(line: 235, column: 6, scope: !991)
!1020 = !DILocation(line: 236, column: 2, scope: !991)
!1021 = !DILocation(line: 236, column: 6, scope: !991)
!1022 = !DILocation(line: 243, column: 10, scope: !991)
!1023 = !DILocation(line: 243, column: 22, scope: !991)
!1024 = !DILocation(line: 243, column: 2, scope: !991)
!1025 = !DILocation(line: 254, column: 17, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !991, file: !3, line: 243, column: 30)
!1027 = !DILocation(line: 254, column: 15, scope: !1026)
!1028 = !DILocation(line: 255, column: 8, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 255, column: 7)
!1030 = !DILocation(line: 255, column: 7, scope: !1026)
!1031 = !DILocation(line: 256, column: 11, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 255, column: 21)
!1033 = !DILocation(line: 257, column: 4, scope: !1032)
!1034 = !DILocation(line: 260, column: 11, scope: !1026)
!1035 = !DILocation(line: 260, column: 23, scope: !1026)
!1036 = !DILocation(line: 260, column: 3, scope: !1026)
!1037 = !DILocation(line: 263, column: 34, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 260, column: 31)
!1039 = !DILocation(line: 263, column: 54, scope: !1038)
!1040 = !DILocation(line: 263, column: 33, scope: !1038)
!1041 = !DILocation(line: 263, column: 4, scope: !1038)
!1042 = !DILocation(line: 263, column: 25, scope: !1038)
!1043 = !DILocation(line: 263, column: 31, scope: !1038)
!1044 = !DILocation(line: 264, column: 4, scope: !1038)
!1045 = !DILocation(line: 268, column: 33, scope: !1038)
!1046 = !DILocation(line: 268, column: 53, scope: !1038)
!1047 = !DILocation(line: 268, column: 4, scope: !1038)
!1048 = !DILocation(line: 268, column: 25, scope: !1038)
!1049 = !DILocation(line: 268, column: 31, scope: !1038)
!1050 = !DILocation(line: 274, column: 16, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 274, column: 4)
!1052 = !DILocation(line: 274, column: 9, scope: !1051)
!1053 = !DILocation(line: 274, column: 21, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 274, column: 4)
!1055 = !DILocation(line: 274, column: 42, scope: !1054)
!1056 = !DILocation(line: 274, column: 48, scope: !1054)
!1057 = !DILocation(line: 275, column: 9, scope: !1054)
!1058 = !DILocation(line: 275, column: 16, scope: !1054)
!1059 = !DILocation(line: 0, scope: !1054)
!1060 = !DILocation(line: 274, column: 4, scope: !1051)
!1061 = !DILocation(line: 276, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 275, column: 51)
!1063 = !DILocation(line: 276, column: 26, scope: !1062)
!1064 = !DILocation(line: 276, column: 32, scope: !1062)
!1065 = !DILocation(line: 277, column: 4, scope: !1062)
!1066 = !DILocation(line: 275, column: 41, scope: !1054)
!1067 = !DILocation(line: 274, column: 4, scope: !1054)
!1068 = distinct !{!1068, !1060, !1069, !1070, !1071}
!1069 = !DILocation(line: 277, column: 4, scope: !1051)
!1070 = !{!"llvm.loop.mustprogress"}
!1071 = !{!"llvm.loop.unroll.disable"}
!1072 = !DILocation(line: 279, column: 33, scope: !1038)
!1073 = !DILocation(line: 279, column: 4, scope: !1038)
!1074 = !DILocation(line: 279, column: 25, scope: !1038)
!1075 = !DILocation(line: 279, column: 31, scope: !1038)
!1076 = !DILocation(line: 280, column: 4, scope: !1038)
!1077 = !DILocation(line: 284, column: 33, scope: !1038)
!1078 = !DILocation(line: 284, column: 53, scope: !1038)
!1079 = !DILocation(line: 284, column: 4, scope: !1038)
!1080 = !DILocation(line: 284, column: 25, scope: !1038)
!1081 = !DILocation(line: 284, column: 31, scope: !1038)
!1082 = !DILocation(line: 290, column: 16, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 290, column: 4)
!1084 = !DILocation(line: 290, column: 9, scope: !1083)
!1085 = !DILocation(line: 290, column: 21, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 290, column: 4)
!1087 = !DILocation(line: 290, column: 42, scope: !1086)
!1088 = !DILocation(line: 290, column: 48, scope: !1086)
!1089 = !DILocation(line: 291, column: 9, scope: !1086)
!1090 = !DILocation(line: 291, column: 16, scope: !1086)
!1091 = !DILocation(line: 0, scope: !1086)
!1092 = !DILocation(line: 290, column: 4, scope: !1083)
!1093 = !DILocation(line: 292, column: 5, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 291, column: 51)
!1095 = !DILocation(line: 292, column: 26, scope: !1094)
!1096 = !DILocation(line: 292, column: 32, scope: !1094)
!1097 = !DILocation(line: 293, column: 4, scope: !1094)
!1098 = !DILocation(line: 291, column: 41, scope: !1086)
!1099 = !DILocation(line: 290, column: 4, scope: !1086)
!1100 = distinct !{!1100, !1092, !1101, !1070, !1071}
!1101 = !DILocation(line: 293, column: 4, scope: !1083)
!1102 = !DILocation(line: 298, column: 8, scope: !1038)
!1103 = !DILocation(line: 298, column: 15, scope: !1038)
!1104 = !DILocation(line: 299, column: 46, scope: !1038)
!1105 = !DILocation(line: 299, column: 44, scope: !1038)
!1106 = !DILocation(line: 297, column: 4, scope: !1038)
!1107 = !DILocation(line: 297, column: 25, scope: !1038)
!1108 = !DILocation(line: 297, column: 31, scope: !1038)
!1109 = !DILocation(line: 300, column: 4, scope: !1038)
!1110 = !DILocation(line: 308, column: 17, scope: !1038)
!1111 = !DILocation(line: 309, column: 4, scope: !1038)
!1112 = !DILocation(line: 309, column: 25, scope: !1038)
!1113 = !DILocation(line: 309, column: 31, scope: !1038)
!1114 = !DILocation(line: 310, column: 12, scope: !1038)
!1115 = !DILocation(line: 310, column: 32, scope: !1038)
!1116 = !DILocation(line: 310, column: 10, scope: !1038)
!1117 = !DILocation(line: 314, column: 11, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 314, column: 4)
!1119 = !DILocation(line: 314, column: 9, scope: !1118)
!1120 = !DILocation(line: 315, column: 10, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 314, column: 4)
!1122 = !DILocation(line: 315, column: 14, scope: !1121)
!1123 = !DILocation(line: 315, column: 12, scope: !1121)
!1124 = !DILocation(line: 315, column: 45, scope: !1121)
!1125 = !DILocation(line: 315, column: 49, scope: !1121)
!1126 = !DILocation(line: 315, column: 55, scope: !1121)
!1127 = !DILocation(line: 0, scope: !1121)
!1128 = !DILocation(line: 314, column: 4, scope: !1118)
!1129 = !DILocation(line: 320, column: 21, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 316, column: 14)
!1131 = !DILocation(line: 320, column: 15, scope: !1130)
!1132 = !DILocation(line: 320, column: 28, scope: !1130)
!1133 = !DILocation(line: 320, column: 12, scope: !1130)
!1134 = !DILocation(line: 324, column: 9, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 324, column: 9)
!1136 = !DILocation(line: 324, column: 16, scope: !1135)
!1137 = !DILocation(line: 324, column: 9, scope: !1130)
!1138 = !DILocation(line: 325, column: 6, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 324, column: 21)
!1140 = !DILocation(line: 329, column: 13, scope: !1139)
!1141 = !DILocation(line: 330, column: 6, scope: !1139)
!1142 = !DILocation(line: 336, column: 17, scope: !1130)
!1143 = !DILocation(line: 336, column: 11, scope: !1130)
!1144 = !DILocation(line: 336, column: 27, scope: !1130)
!1145 = !DILocation(line: 336, column: 25, scope: !1130)
!1146 = !DILocation(line: 335, column: 5, scope: !1130)
!1147 = !DILocation(line: 335, column: 26, scope: !1130)
!1148 = !DILocation(line: 335, column: 32, scope: !1130)
!1149 = !DILocation(line: 340, column: 11, scope: !1130)
!1150 = !DILocation(line: 344, column: 18, scope: !1130)
!1151 = !DILocation(line: 345, column: 4, scope: !1130)
!1152 = !DILocation(line: 316, column: 10, scope: !1121)
!1153 = !DILocation(line: 314, column: 4, scope: !1121)
!1154 = distinct !{!1154, !1128, !1155, !1070, !1071}
!1155 = !DILocation(line: 345, column: 4, scope: !1118)
!1156 = !DILocation(line: 346, column: 4, scope: !1038)
!1157 = !DILocation(line: 350, column: 4, scope: !1038)
!1158 = !DILocation(line: 350, column: 25, scope: !1038)
!1159 = !DILocation(line: 350, column: 31, scope: !1038)
!1160 = !DILocation(line: 352, column: 24, scope: !1038)
!1161 = !DILocation(line: 352, column: 36, scope: !1038)
!1162 = !DILocation(line: 353, column: 10, scope: !1038)
!1163 = !DILocation(line: 352, column: 8, scope: !1038)
!1164 = !DILocation(line: 351, column: 11, scope: !1038)
!1165 = !DILocation(line: 354, column: 8, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 354, column: 8)
!1167 = !DILocation(line: 354, column: 8, scope: !1038)
!1168 = !DILocation(line: 358, column: 5, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 354, column: 30)
!1170 = !DILocation(line: 358, column: 26, scope: !1169)
!1171 = !DILocation(line: 358, column: 32, scope: !1169)
!1172 = !DILocation(line: 359, column: 4, scope: !1169)
!1173 = !DILocation(line: 360, column: 4, scope: !1038)
!1174 = !DILocation(line: 364, column: 4, scope: !1038)
!1175 = !DILocation(line: 364, column: 25, scope: !1038)
!1176 = !DILocation(line: 364, column: 31, scope: !1038)
!1177 = !DILocation(line: 365, column: 12, scope: !1038)
!1178 = !DILocation(line: 365, column: 32, scope: !1038)
!1179 = !DILocation(line: 365, column: 10, scope: !1038)
!1180 = !DILocation(line: 369, column: 11, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 369, column: 4)
!1182 = !DILocation(line: 369, column: 9, scope: !1181)
!1183 = !DILocation(line: 370, column: 10, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 369, column: 4)
!1185 = !DILocation(line: 370, column: 14, scope: !1184)
!1186 = !DILocation(line: 370, column: 12, scope: !1184)
!1187 = !DILocation(line: 370, column: 45, scope: !1184)
!1188 = !DILocation(line: 370, column: 49, scope: !1184)
!1189 = !DILocation(line: 370, column: 55, scope: !1184)
!1190 = !DILocation(line: 0, scope: !1184)
!1191 = !DILocation(line: 369, column: 4, scope: !1181)
!1192 = !DILocation(line: 372, column: 32, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 371, column: 14)
!1194 = !DILocation(line: 372, column: 11, scope: !1193)
!1195 = !DILocation(line: 380, column: 17, scope: !1193)
!1196 = !DILocation(line: 380, column: 11, scope: !1193)
!1197 = !DILocation(line: 380, column: 28, scope: !1193)
!1198 = !DILocation(line: 380, column: 25, scope: !1193)
!1199 = !DILocation(line: 379, column: 5, scope: !1193)
!1200 = !DILocation(line: 379, column: 26, scope: !1193)
!1201 = !DILocation(line: 379, column: 32, scope: !1193)
!1202 = !DILocation(line: 381, column: 4, scope: !1193)
!1203 = !DILocation(line: 371, column: 10, scope: !1184)
!1204 = !DILocation(line: 369, column: 4, scope: !1184)
!1205 = distinct !{!1205, !1191, !1206, !1070, !1071}
!1206 = !DILocation(line: 381, column: 4, scope: !1181)
!1207 = !DILocation(line: 385, column: 8, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 385, column: 8)
!1209 = !DILocation(line: 385, column: 14, scope: !1208)
!1210 = !DILocation(line: 385, column: 8, scope: !1038)
!1211 = !DILocation(line: 386, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 385, column: 19)
!1213 = !DILocation(line: 390, column: 12, scope: !1212)
!1214 = !DILocation(line: 391, column: 5, scope: !1212)
!1215 = !DILocation(line: 393, column: 4, scope: !1038)
!1216 = !DILocation(line: 401, column: 38, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 401, column: 8)
!1218 = !DILocation(line: 402, column: 8, scope: !1217)
!1219 = !DILocation(line: 401, column: 49, scope: !1217)
!1220 = !DILocation(line: 401, column: 8, scope: !1038)
!1221 = !DILocation(line: 407, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 402, column: 28)
!1223 = !DILocation(line: 407, column: 26, scope: !1222)
!1224 = !DILocation(line: 407, column: 32, scope: !1222)
!1225 = !DILocation(line: 408, column: 5, scope: !1222)
!1226 = !DILocation(line: 413, column: 42, scope: !1038)
!1227 = !DILocation(line: 415, column: 14, scope: !1038)
!1228 = !DILocation(line: 413, column: 13, scope: !1038)
!1229 = !DILocation(line: 413, column: 11, scope: !1038)
!1230 = !DILocation(line: 416, column: 8, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 416, column: 8)
!1232 = !DILocation(line: 416, column: 8, scope: !1038)
!1233 = !DILocation(line: 417, column: 5, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 416, column: 30)
!1235 = !DILocation(line: 421, column: 22, scope: !1038)
!1236 = !DILocation(line: 421, column: 36, scope: !1038)
!1237 = !DILocation(line: 421, column: 48, scope: !1038)
!1238 = !DILocation(line: 421, column: 8, scope: !1038)
!1239 = !DILocation(line: 420, column: 11, scope: !1038)
!1240 = !DILocation(line: 422, column: 29, scope: !1038)
!1241 = !DILocation(line: 422, column: 4, scope: !1038)
!1242 = !DILocation(line: 426, column: 4, scope: !1038)
!1243 = !DILocation(line: 426, column: 25, scope: !1038)
!1244 = !DILocation(line: 426, column: 31, scope: !1038)
!1245 = !DILocation(line: 427, column: 4, scope: !1038)
!1246 = !DILocation(line: 433, column: 4, scope: !1038)
!1247 = !DILocation(line: 435, column: 3, scope: !1026)
!1248 = !DILocation(line: 443, column: 26, scope: !1026)
!1249 = !DILocation(line: 443, column: 38, scope: !1026)
!1250 = !DILocation(line: 443, column: 50, scope: !1026)
!1251 = !DILocation(line: 443, column: 12, scope: !1026)
!1252 = !DILocation(line: 443, column: 10, scope: !1026)
!1253 = !DILocation(line: 444, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 444, column: 7)
!1255 = !DILocation(line: 444, column: 7, scope: !1026)
!1256 = !DILocation(line: 445, column: 4, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 444, column: 29)
!1258 = !DILocation(line: 450, column: 8, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 450, column: 7)
!1260 = !DILocation(line: 450, column: 20, scope: !1259)
!1261 = !DILocation(line: 450, column: 7, scope: !1026)
!1262 = !DILocation(line: 457, column: 29, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 450, column: 32)
!1264 = !DILocation(line: 457, column: 4, scope: !1263)
!1265 = !DILocation(line: 457, column: 16, scope: !1263)
!1266 = !DILocation(line: 457, column: 27, scope: !1263)
!1267 = !DILocation(line: 458, column: 4, scope: !1263)
!1268 = !DILocation(line: 458, column: 16, scope: !1263)
!1269 = !DILocation(line: 458, column: 28, scope: !1263)
!1270 = !DILocation(line: 459, column: 3, scope: !1263)
!1271 = !DILocation(line: 460, column: 3, scope: !1026)
!1272 = !DILocation(line: 468, column: 39, scope: !1026)
!1273 = !DILocation(line: 469, column: 11, scope: !1026)
!1274 = !DILocation(line: 468, column: 7, scope: !1026)
!1275 = !DILocation(line: 467, column: 10, scope: !1026)
!1276 = !DILocation(line: 470, column: 3, scope: !1026)
!1277 = !DILocation(line: 475, column: 33, scope: !1026)
!1278 = !DILocation(line: 475, column: 7, scope: !1026)
!1279 = !DILocation(line: 474, column: 10, scope: !1026)
!1280 = !DILocation(line: 477, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 477, column: 7)
!1282 = !DILocation(line: 477, column: 22, scope: !1281)
!1283 = !DILocation(line: 477, column: 19, scope: !1281)
!1284 = !DILocation(line: 477, column: 7, scope: !1026)
!1285 = !DILocation(line: 481, column: 26, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 477, column: 34)
!1287 = !DILocation(line: 481, column: 4, scope: !1286)
!1288 = !DILocation(line: 482, column: 3, scope: !1286)
!1289 = !DILocation(line: 483, column: 3, scope: !1026)
!1290 = !DILocation(line: 488, column: 33, scope: !1026)
!1291 = !DILocation(line: 488, column: 7, scope: !1026)
!1292 = !DILocation(line: 487, column: 10, scope: !1026)
!1293 = !DILocation(line: 490, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 490, column: 7)
!1295 = !DILocation(line: 490, column: 22, scope: !1294)
!1296 = !DILocation(line: 490, column: 19, scope: !1294)
!1297 = !DILocation(line: 490, column: 7, scope: !1026)
!1298 = !DILocation(line: 494, column: 26, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 490, column: 34)
!1300 = !DILocation(line: 494, column: 4, scope: !1299)
!1301 = !DILocation(line: 495, column: 3, scope: !1299)
!1302 = !DILocation(line: 496, column: 3, scope: !1026)
!1303 = !DILocation(line: 500, column: 38, scope: !1026)
!1304 = !DILocation(line: 500, column: 12, scope: !1026)
!1305 = !DILocation(line: 500, column: 10, scope: !1026)
!1306 = !DILocation(line: 501, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 501, column: 7)
!1308 = !DILocation(line: 501, column: 22, scope: !1307)
!1309 = !DILocation(line: 501, column: 19, scope: !1307)
!1310 = !DILocation(line: 501, column: 7, scope: !1026)
!1311 = !DILocation(line: 505, column: 26, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 501, column: 34)
!1313 = !DILocation(line: 505, column: 4, scope: !1312)
!1314 = !DILocation(line: 506, column: 3, scope: !1312)
!1315 = !DILocation(line: 507, column: 3, scope: !1026)
!1316 = !DILocation(line: 514, column: 34, scope: !1026)
!1317 = !DILocation(line: 514, column: 7, scope: !1026)
!1318 = !DILocation(line: 513, column: 10, scope: !1026)
!1319 = !DILocation(line: 515, column: 7, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 515, column: 7)
!1321 = !DILocation(line: 515, column: 22, scope: !1320)
!1322 = !DILocation(line: 515, column: 19, scope: !1320)
!1323 = !DILocation(line: 515, column: 7, scope: !1026)
!1324 = !DILocation(line: 519, column: 26, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 515, column: 34)
!1326 = !DILocation(line: 519, column: 4, scope: !1325)
!1327 = !DILocation(line: 520, column: 3, scope: !1325)
!1328 = !DILocation(line: 521, column: 3, scope: !1026)
!1329 = !DILocation(line: 528, column: 3, scope: !1026)
!1330 = !DILocation(line: 531, column: 10, scope: !1026)
!1331 = !DILocation(line: 532, column: 3, scope: !1026)
!1332 = !DILocation(line: 536, column: 3, scope: !1026)
!1333 = !DILocation(line: 538, column: 10, scope: !1026)
!1334 = !DILocation(line: 539, column: 3, scope: !1026)
!1335 = !DILocation(line: 542, column: 6, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !991, file: !3, line: 542, column: 6)
!1337 = !DILocation(line: 542, column: 6, scope: !991)
!1338 = !DILocation(line: 546, column: 26, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 542, column: 28)
!1340 = !DILocation(line: 546, column: 39, scope: !1339)
!1341 = !DILocation(line: 546, column: 51, scope: !1339)
!1342 = !DILocation(line: 546, column: 12, scope: !1339)
!1343 = !DILocation(line: 546, column: 10, scope: !1339)
!1344 = !DILocation(line: 547, column: 2, scope: !1339)
!1345 = !DILocation(line: 549, column: 1, scope: !991)
!1346 = !DILocation(line: 553, column: 6, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !991, file: !3, line: 553, column: 6)
!1348 = !DILocation(line: 553, column: 6, scope: !991)
!1349 = !DILocation(line: 554, column: 28, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 553, column: 28)
!1351 = !DILocation(line: 554, column: 3, scope: !1350)
!1352 = !DILocation(line: 555, column: 2, scope: !1350)
!1353 = !DILocation(line: 559, column: 12, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 559, column: 11)
!1355 = !DILocation(line: 559, column: 24, scope: !1354)
!1356 = !DILocation(line: 559, column: 11, scope: !1347)
!1357 = !DILocation(line: 560, column: 28, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 559, column: 36)
!1359 = !DILocation(line: 560, column: 3, scope: !1358)
!1360 = !DILocation(line: 560, column: 15, scope: !1358)
!1361 = !DILocation(line: 560, column: 26, scope: !1358)
!1362 = !DILocation(line: 561, column: 2, scope: !1358)
!1363 = !DILocation(line: 563, column: 2, scope: !991)
!1364 = !DILocation(line: 564, column: 1, scope: !991)
!1365 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !912, file: !912, line: 436, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!32, !923, !20, !20, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!1369 = !DISubprogram(name: "acpi_ex_load_op", scope: !977, file: !977, line: 229, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!18, !32, !32, !134}
!1372 = !DISubprogram(name: "acpi_ut_short_divide", scope: !912, file: !912, line: 541, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!18, !24, !20, !714, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!1376 = !DISubprogram(name: "acpi_ex_get_object_reference", scope: !977, file: !977, line: 179, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!18, !32, !98, !134}
!1379 = !DISubprogram(name: "acpi_ex_store", scope: !977, file: !977, line: 407, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1380 = !DISubprogram(name: "acpi_ut_copy_iobject_to_iobject", scope: !912, file: !912, line: 281, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1381 = !DISubprogram(name: "acpi_ex_convert_to_string", scope: !977, file: !977, line: 78, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!18, !32, !98, !20}
!1384 = !DISubprogram(name: "acpi_ut_add_reference", scope: !912, file: !912, line: 367, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1385 = !DISubprogram(name: "acpi_ex_convert_to_buffer", scope: !977, file: !977, line: 74, type: !1386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!18, !32, !98}
!1388 = !DISubprogram(name: "acpi_ex_convert_to_integer", scope: !977, file: !977, line: 69, type: !1382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1389 = !DISubprogram(name: "acpi_ps_get_opcode_name", scope: !1390, file: !1390, line: 110, type: !1391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1390 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!923, !45}
!1393 = distinct !DISubprogram(name: "acpi_ex_opcode_1A_0T_1R", scope: !3, file: !3, line: 578, type: !132, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1395 = !DILocalVariable(name: "walk_state", arg: 1, scope: !1393, file: !3, line: 578, type: !134)
!1396 = !DILocalVariable(name: "operand", scope: !1393, file: !3, line: 580, type: !98)
!1397 = !DILocalVariable(name: "temp_desc", scope: !1393, file: !3, line: 581, type: !32)
!1398 = !DILocalVariable(name: "return_desc", scope: !1393, file: !3, line: 582, type: !32)
!1399 = !DILocalVariable(name: "status", scope: !1393, file: !3, line: 583, type: !18)
!1400 = !DILocalVariable(name: "type", scope: !1393, file: !3, line: 584, type: !20)
!1401 = !DILocalVariable(name: "value", scope: !1393, file: !3, line: 585, type: !24)
!1402 = !DILabel(scope: !1393, name: "cleanup", file: !3, line: 1071)
!1403 = !DILocation(line: 578, column: 61, scope: !1393)
!1404 = !DILocation(line: 580, column: 2, scope: !1393)
!1405 = !DILocation(line: 580, column: 30, scope: !1393)
!1406 = !DILocation(line: 580, column: 41, scope: !1393)
!1407 = !DILocation(line: 580, column: 53, scope: !1393)
!1408 = !DILocation(line: 581, column: 2, scope: !1393)
!1409 = !DILocation(line: 581, column: 29, scope: !1393)
!1410 = !DILocation(line: 582, column: 2, scope: !1393)
!1411 = !DILocation(line: 582, column: 29, scope: !1393)
!1412 = !DILocation(line: 583, column: 2, scope: !1393)
!1413 = !DILocation(line: 583, column: 14, scope: !1393)
!1414 = !DILocation(line: 584, column: 2, scope: !1393)
!1415 = !DILocation(line: 584, column: 6, scope: !1393)
!1416 = !DILocation(line: 585, column: 2, scope: !1393)
!1417 = !DILocation(line: 585, column: 6, scope: !1393)
!1418 = !DILocation(line: 592, column: 10, scope: !1393)
!1419 = !DILocation(line: 592, column: 22, scope: !1393)
!1420 = !DILocation(line: 592, column: 2, scope: !1393)
!1421 = !DILocation(line: 595, column: 17, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 592, column: 30)
!1423 = !DILocation(line: 595, column: 15, scope: !1422)
!1424 = !DILocation(line: 596, column: 8, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 596, column: 7)
!1426 = !DILocation(line: 596, column: 7, scope: !1422)
!1427 = !DILocation(line: 597, column: 11, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 596, column: 21)
!1429 = !DILocation(line: 598, column: 4, scope: !1428)
!1430 = !DILocation(line: 605, column: 8, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 605, column: 7)
!1432 = !DILocation(line: 605, column: 28, scope: !1431)
!1433 = !DILocation(line: 605, column: 7, scope: !1422)
!1434 = !DILocation(line: 606, column: 4, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 605, column: 35)
!1436 = !DILocation(line: 606, column: 25, scope: !1435)
!1437 = !DILocation(line: 606, column: 31, scope: !1435)
!1438 = !DILocation(line: 607, column: 3, scope: !1435)
!1439 = !DILocation(line: 608, column: 3, scope: !1422)
!1440 = !DILocation(line: 616, column: 17, scope: !1422)
!1441 = !DILocation(line: 616, column: 15, scope: !1422)
!1442 = !DILocation(line: 617, column: 8, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 617, column: 7)
!1444 = !DILocation(line: 617, column: 7, scope: !1422)
!1445 = !DILocation(line: 618, column: 11, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 617, column: 21)
!1447 = !DILocation(line: 619, column: 4, scope: !1446)
!1448 = !DILocation(line: 626, column: 15, scope: !1422)
!1449 = !DILocation(line: 626, column: 13, scope: !1422)
!1450 = !DILocation(line: 627, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 627, column: 7)
!1452 = !DILocation(line: 627, column: 43, scope: !1451)
!1453 = !DILocation(line: 627, column: 7, scope: !1422)
!1454 = !DILocation(line: 632, column: 26, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 628, column: 31)
!1456 = !DILocation(line: 632, column: 4, scope: !1455)
!1457 = !DILocation(line: 633, column: 3, scope: !1455)
!1458 = !DILocation(line: 643, column: 21, scope: !1422)
!1459 = !DILocation(line: 642, column: 12, scope: !1422)
!1460 = !DILocation(line: 642, column: 10, scope: !1422)
!1461 = !DILocation(line: 644, column: 7, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 644, column: 7)
!1463 = !DILocation(line: 644, column: 7, scope: !1422)
!1464 = !DILocation(line: 645, column: 4, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 644, column: 29)
!1466 = !DILocation(line: 650, column: 4, scope: !1465)
!1467 = !DILocation(line: 657, column: 7, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 657, column: 7)
!1469 = !DILocation(line: 657, column: 19, scope: !1468)
!1470 = !DILocation(line: 657, column: 26, scope: !1468)
!1471 = !DILocation(line: 657, column: 7, scope: !1422)
!1472 = !DILocation(line: 659, column: 8, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 657, column: 47)
!1474 = !DILocation(line: 659, column: 27, scope: !1473)
!1475 = !DILocation(line: 659, column: 33, scope: !1473)
!1476 = !DILocation(line: 658, column: 4, scope: !1473)
!1477 = !DILocation(line: 658, column: 25, scope: !1473)
!1478 = !DILocation(line: 658, column: 31, scope: !1473)
!1479 = !DILocation(line: 660, column: 3, scope: !1473)
!1480 = !DILocation(line: 662, column: 8, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 660, column: 10)
!1482 = !DILocation(line: 662, column: 27, scope: !1481)
!1483 = !DILocation(line: 662, column: 33, scope: !1481)
!1484 = !DILocation(line: 661, column: 4, scope: !1481)
!1485 = !DILocation(line: 661, column: 25, scope: !1481)
!1486 = !DILocation(line: 661, column: 31, scope: !1481)
!1487 = !DILocation(line: 667, column: 28, scope: !1422)
!1488 = !DILocation(line: 667, column: 3, scope: !1422)
!1489 = !DILocation(line: 673, column: 26, scope: !1422)
!1490 = !DILocation(line: 673, column: 39, scope: !1422)
!1491 = !DILocation(line: 673, column: 51, scope: !1422)
!1492 = !DILocation(line: 673, column: 12, scope: !1422)
!1493 = !DILocation(line: 673, column: 10, scope: !1422)
!1494 = !DILocation(line: 674, column: 3, scope: !1422)
!1495 = !DILocation(line: 687, column: 32, scope: !1422)
!1496 = !DILocation(line: 687, column: 44, scope: !1422)
!1497 = !DILocation(line: 687, column: 7, scope: !1422)
!1498 = !DILocation(line: 686, column: 10, scope: !1422)
!1499 = !DILocation(line: 689, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 689, column: 7)
!1501 = !DILocation(line: 689, column: 7, scope: !1422)
!1502 = !DILocation(line: 690, column: 4, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 689, column: 29)
!1504 = !DILocation(line: 695, column: 53, scope: !1422)
!1505 = !DILocation(line: 695, column: 47, scope: !1422)
!1506 = !DILocation(line: 695, column: 17, scope: !1422)
!1507 = !DILocation(line: 695, column: 15, scope: !1422)
!1508 = !DILocation(line: 696, column: 8, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 696, column: 7)
!1510 = !DILocation(line: 696, column: 7, scope: !1422)
!1511 = !DILocation(line: 697, column: 11, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 696, column: 21)
!1513 = !DILocation(line: 698, column: 4, scope: !1512)
!1514 = !DILocation(line: 700, column: 3, scope: !1422)
!1515 = !DILocation(line: 711, column: 32, scope: !1422)
!1516 = !DILocation(line: 711, column: 44, scope: !1422)
!1517 = !DILocation(line: 711, column: 7, scope: !1422)
!1518 = !DILocation(line: 710, column: 10, scope: !1422)
!1519 = !DILocation(line: 713, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 713, column: 7)
!1521 = !DILocation(line: 713, column: 7, scope: !1422)
!1522 = !DILocation(line: 714, column: 4, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 713, column: 29)
!1524 = !DILocation(line: 726, column: 11, scope: !1422)
!1525 = !DILocation(line: 726, column: 3, scope: !1422)
!1526 = !DILocation(line: 729, column: 12, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 726, column: 17)
!1528 = !DILocation(line: 729, column: 10, scope: !1527)
!1529 = !DILocation(line: 730, column: 4, scope: !1527)
!1530 = !DILocation(line: 734, column: 12, scope: !1527)
!1531 = !DILocation(line: 734, column: 30, scope: !1527)
!1532 = !DILocation(line: 734, column: 10, scope: !1527)
!1533 = !DILocation(line: 735, column: 4, scope: !1527)
!1534 = !DILocation(line: 741, column: 42, scope: !1527)
!1535 = !DILocation(line: 741, column: 13, scope: !1527)
!1536 = !DILocation(line: 741, column: 11, scope: !1527)
!1537 = !DILocation(line: 742, column: 12, scope: !1527)
!1538 = !DILocation(line: 742, column: 30, scope: !1527)
!1539 = !DILocation(line: 742, column: 10, scope: !1527)
!1540 = !DILocation(line: 743, column: 4, scope: !1527)
!1541 = !DILocation(line: 749, column: 43, scope: !1527)
!1542 = !DILocation(line: 749, column: 13, scope: !1527)
!1543 = !DILocation(line: 749, column: 11, scope: !1527)
!1544 = !DILocation(line: 750, column: 12, scope: !1527)
!1545 = !DILocation(line: 750, column: 31, scope: !1527)
!1546 = !DILocation(line: 750, column: 10, scope: !1527)
!1547 = !DILocation(line: 751, column: 4, scope: !1527)
!1548 = !DILocation(line: 755, column: 4, scope: !1527)
!1549 = !DILocation(line: 760, column: 11, scope: !1527)
!1550 = !DILocation(line: 761, column: 4, scope: !1527)
!1551 = !DILocation(line: 764, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 764, column: 7)
!1553 = !DILocation(line: 764, column: 7, scope: !1422)
!1554 = !DILocation(line: 765, column: 4, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 764, column: 29)
!1556 = !DILocation(line: 772, column: 47, scope: !1422)
!1557 = !DILocation(line: 772, column: 17, scope: !1422)
!1558 = !DILocation(line: 772, column: 15, scope: !1422)
!1559 = !DILocation(line: 773, column: 8, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 773, column: 7)
!1561 = !DILocation(line: 773, column: 7, scope: !1422)
!1562 = !DILocation(line: 774, column: 11, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 773, column: 21)
!1564 = !DILocation(line: 775, column: 4, scope: !1563)
!1565 = !DILocation(line: 777, column: 3, scope: !1422)
!1566 = !DILocation(line: 782, column: 36, scope: !1422)
!1567 = !DILocation(line: 783, column: 8, scope: !1422)
!1568 = !DILocation(line: 782, column: 7, scope: !1422)
!1569 = !DILocation(line: 781, column: 10, scope: !1422)
!1570 = !DILocation(line: 784, column: 7, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 784, column: 7)
!1572 = !DILocation(line: 784, column: 7, scope: !1422)
!1573 = !DILocation(line: 785, column: 4, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 784, column: 29)
!1575 = !DILocation(line: 787, column: 3, scope: !1422)
!1576 = !DILocation(line: 793, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 793, column: 7)
!1578 = !DILocation(line: 793, column: 44, scope: !1577)
!1579 = !DILocation(line: 793, column: 7, scope: !1422)
!1580 = !DILocation(line: 798, column: 8, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 794, column: 29)
!1582 = !DILocation(line: 796, column: 8, scope: !1581)
!1583 = !DILocation(line: 795, column: 14, scope: !1581)
!1584 = !DILocation(line: 799, column: 8, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 799, column: 8)
!1586 = !DILocation(line: 800, column: 8, scope: !1585)
!1587 = !DILocation(line: 800, column: 13, scope: !1585)
!1588 = !DILocation(line: 800, column: 31, scope: !1585)
!1589 = !DILocation(line: 800, column: 36, scope: !1585)
!1590 = !DILocation(line: 801, column: 5, scope: !1585)
!1591 = !DILocation(line: 801, column: 9, scope: !1585)
!1592 = !DILocation(line: 801, column: 27, scope: !1585)
!1593 = !DILocation(line: 801, column: 32, scope: !1585)
!1594 = !DILocation(line: 799, column: 8, scope: !1581)
!1595 = !DILocation(line: 803, column: 18, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 802, column: 38)
!1597 = !DILocation(line: 803, column: 5, scope: !1596)
!1598 = !DILocation(line: 803, column: 16, scope: !1596)
!1599 = !DILocation(line: 804, column: 27, scope: !1596)
!1600 = !DILocation(line: 804, column: 5, scope: !1596)
!1601 = !DILocation(line: 805, column: 4, scope: !1596)
!1602 = !DILocation(line: 806, column: 12, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 805, column: 11)
!1604 = !DILocation(line: 807, column: 5, scope: !1603)
!1605 = !DILocation(line: 809, column: 3, scope: !1581)
!1606 = !DILocation(line: 810, column: 13, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 809, column: 10)
!1608 = !DILocation(line: 810, column: 33, scope: !1607)
!1609 = !DILocation(line: 810, column: 12, scope: !1607)
!1610 = !DILocation(line: 810, column: 4, scope: !1607)
!1611 = !DILocation(line: 817, column: 13, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 810, column: 39)
!1613 = !DILocation(line: 817, column: 35, scope: !1612)
!1614 = !DILocation(line: 817, column: 5, scope: !1612)
!1615 = !DILocation(line: 825, column: 11, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 817, column: 42)
!1617 = !DILocation(line: 825, column: 33, scope: !1616)
!1618 = !DILocation(line: 826, column: 11, scope: !1616)
!1619 = !DILocation(line: 826, column: 33, scope: !1616)
!1620 = !DILocation(line: 827, column: 11, scope: !1616)
!1621 = !DILocation(line: 824, column: 10, scope: !1616)
!1622 = !DILocation(line: 823, column: 13, scope: !1616)
!1623 = !DILocation(line: 828, column: 10, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 828, column: 10)
!1625 = !DILocation(line: 828, column: 10, scope: !1616)
!1626 = !DILocation(line: 829, column: 7, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 828, column: 32)
!1628 = !DILocation(line: 836, column: 31, scope: !1616)
!1629 = !DILocation(line: 836, column: 6, scope: !1616)
!1630 = !DILocation(line: 837, column: 19, scope: !1616)
!1631 = !DILocation(line: 837, column: 6, scope: !1616)
!1632 = !DILocation(line: 837, column: 17, scope: !1616)
!1633 = !DILocation(line: 838, column: 6, scope: !1616)
!1634 = !DILocation(line: 845, column: 10, scope: !1616)
!1635 = !DILocation(line: 845, column: 32, scope: !1616)
!1636 = !DILocation(line: 844, column: 16, scope: !1616)
!1637 = !DILocation(line: 846, column: 31, scope: !1616)
!1638 = !DILocation(line: 846, column: 6, scope: !1616)
!1639 = !DILocation(line: 847, column: 19, scope: !1616)
!1640 = !DILocation(line: 847, column: 6, scope: !1616)
!1641 = !DILocation(line: 847, column: 17, scope: !1616)
!1642 = !DILocation(line: 848, column: 6, scope: !1616)
!1643 = !DILocation(line: 853, column: 6, scope: !1616)
!1644 = !DILocation(line: 855, column: 5, scope: !1612)
!1645 = !DILocation(line: 863, column: 12, scope: !1612)
!1646 = !DILocation(line: 864, column: 5, scope: !1612)
!1647 = !DILocation(line: 868, column: 7, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 868, column: 7)
!1649 = !DILocation(line: 868, column: 44, scope: !1648)
!1650 = !DILocation(line: 868, column: 7, scope: !1422)
!1651 = !DILocation(line: 870, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 870, column: 8)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 869, column: 29)
!1654 = !DILocation(line: 870, column: 29, scope: !1652)
!1655 = !DILocation(line: 870, column: 8, scope: !1652)
!1656 = !DILocation(line: 870, column: 34, scope: !1652)
!1657 = !DILocation(line: 870, column: 8, scope: !1653)
!1658 = !DILocation(line: 880, column: 35, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 870, column: 55)
!1660 = !DILocation(line: 881, column: 14, scope: !1659)
!1661 = !DILocation(line: 882, column: 14, scope: !1659)
!1662 = !DILocation(line: 883, column: 14, scope: !1659)
!1663 = !DILocation(line: 884, column: 21, scope: !1659)
!1664 = !DILocation(line: 886, column: 14, scope: !1659)
!1665 = !DILocation(line: 880, column: 9, scope: !1659)
!1666 = !DILocation(line: 879, column: 12, scope: !1659)
!1667 = !DILocation(line: 890, column: 9, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 890, column: 9)
!1669 = !DILocation(line: 890, column: 9, scope: !1659)
!1670 = !DILocation(line: 891, column: 6, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 890, column: 31)
!1672 = !DILocation(line: 896, column: 10, scope: !1659)
!1673 = !DILocation(line: 898, column: 10, scope: !1659)
!1674 = !DILocation(line: 895, column: 9, scope: !1659)
!1675 = !DILocation(line: 894, column: 12, scope: !1659)
!1676 = !DILocation(line: 899, column: 5, scope: !1659)
!1677 = !DILocation(line: 901, column: 3, scope: !1653)
!1678 = !DILocation(line: 905, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 905, column: 7)
!1680 = !DILocation(line: 905, column: 44, scope: !1679)
!1681 = !DILocation(line: 905, column: 7, scope: !1422)
!1682 = !DILocation(line: 914, column: 43, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 906, column: 29)
!1684 = !DILocation(line: 915, column: 5, scope: !1683)
!1685 = !DILocation(line: 914, column: 12, scope: !1683)
!1686 = !DILocation(line: 914, column: 4, scope: !1683)
!1687 = !DILocation(line: 921, column: 19, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 915, column: 11)
!1689 = !DILocation(line: 921, column: 17, scope: !1688)
!1690 = !DILocation(line: 922, column: 5, scope: !1688)
!1691 = !DILocation(line: 927, column: 77, scope: !1688)
!1692 = !DILocation(line: 927, column: 19, scope: !1688)
!1693 = !DILocation(line: 927, column: 17, scope: !1688)
!1694 = !DILocation(line: 928, column: 27, scope: !1688)
!1695 = !DILocation(line: 928, column: 5, scope: !1688)
!1696 = !DILocation(line: 929, column: 5, scope: !1688)
!1697 = !DILocation(line: 931, column: 3, scope: !1683)
!1698 = !DILocation(line: 936, column: 12, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 931, column: 10)
!1700 = !DILocation(line: 936, column: 34, scope: !1699)
!1701 = !DILocation(line: 936, column: 4, scope: !1699)
!1702 = !DILocation(line: 942, column: 13, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 936, column: 41)
!1704 = !DILocation(line: 942, column: 35, scope: !1703)
!1705 = !DILocation(line: 942, column: 5, scope: !1703)
!1706 = !DILocation(line: 946, column: 10, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 942, column: 48)
!1708 = !DILocation(line: 946, column: 32, scope: !1707)
!1709 = !DILocation(line: 945, column: 16, scope: !1707)
!1710 = !DILocation(line: 962, column: 12, scope: !1707)
!1711 = !DILocation(line: 962, column: 30, scope: !1707)
!1712 = !DILocation(line: 962, column: 38, scope: !1707)
!1713 = !DILocation(line: 962, column: 60, scope: !1707)
!1714 = !DILocation(line: 961, column: 40, scope: !1707)
!1715 = !DILocation(line: 961, column: 10, scope: !1707)
!1716 = !DILocation(line: 960, column: 18, scope: !1707)
!1717 = !DILocation(line: 963, column: 11, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 963, column: 10)
!1719 = !DILocation(line: 963, column: 10, scope: !1707)
!1720 = !DILocation(line: 964, column: 14, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 963, column: 24)
!1722 = !DILocation(line: 965, column: 7, scope: !1721)
!1723 = !DILocation(line: 967, column: 6, scope: !1707)
!1724 = !DILocation(line: 975, column: 12, scope: !1707)
!1725 = !DILocation(line: 975, column: 34, scope: !1707)
!1726 = !DILocation(line: 975, column: 10, scope: !1707)
!1727 = !DILocation(line: 974, column: 18, scope: !1707)
!1728 = !DILocation(line: 976, column: 11, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 976, column: 10)
!1730 = !DILocation(line: 976, column: 10, scope: !1707)
!1731 = !DILocation(line: 982, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 976, column: 24)
!1733 = !DILocation(line: 986, column: 28, scope: !1707)
!1734 = !DILocation(line: 986, column: 6, scope: !1707)
!1735 = !DILocation(line: 987, column: 6, scope: !1707)
!1736 = !DILocation(line: 991, column: 6, scope: !1707)
!1737 = !DILocation(line: 996, column: 13, scope: !1707)
!1738 = !DILocation(line: 997, column: 6, scope: !1707)
!1739 = !DILocation(line: 999, column: 5, scope: !1703)
!1740 = !DILocation(line: 1003, column: 19, scope: !1703)
!1741 = !DILocation(line: 1003, column: 41, scope: !1703)
!1742 = !DILocation(line: 1003, column: 17, scope: !1703)
!1743 = !DILocation(line: 1005, column: 9, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 1005, column: 9)
!1745 = !DILocation(line: 1005, column: 47, scope: !1744)
!1746 = !DILocation(line: 1005, column: 9, scope: !1703)
!1747 = !DILocation(line: 1011, column: 10, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 1006, column: 31)
!1749 = !DILocation(line: 1008, column: 10, scope: !1748)
!1750 = !DILocation(line: 1007, column: 18, scope: !1748)
!1751 = !DILocation(line: 1012, column: 11, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 1012, column: 10)
!1753 = !DILocation(line: 1012, column: 10, scope: !1748)
!1754 = !DILocation(line: 1013, column: 7, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 1012, column: 24)
!1756 = !DILocation(line: 1020, column: 14, scope: !1748)
!1757 = !DILocation(line: 1020, column: 34, scope: !1748)
!1758 = !DILocation(line: 1020, column: 6, scope: !1748)
!1759 = !DILocation(line: 1028, column: 12, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 1020, column: 40)
!1761 = !DILocation(line: 1028, column: 24, scope: !1760)
!1762 = !DILocation(line: 1027, column: 11, scope: !1760)
!1763 = !DILocation(line: 1026, column: 14, scope: !1760)
!1764 = !DILocation(line: 1030, column: 11, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 1030, column: 11)
!1766 = !DILocation(line: 1030, column: 11, scope: !1760)
!1767 = !DILocation(line: 1031, column: 8, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1030, column: 33)
!1769 = !DILocation(line: 1035, column: 21, scope: !1760)
!1770 = !DILocation(line: 1035, column: 19, scope: !1760)
!1771 = !DILocation(line: 1036, column: 7, scope: !1760)
!1772 = !DILocation(line: 1043, column: 12, scope: !1760)
!1773 = !DILocation(line: 1042, column: 7, scope: !1760)
!1774 = !DILocation(line: 1044, column: 7, scope: !1760)
!1775 = !DILocation(line: 1046, column: 5, scope: !1748)
!1776 = !DILocation(line: 1047, column: 5, scope: !1703)
!1777 = !DILocation(line: 1051, column: 5, scope: !1703)
!1778 = !DILocation(line: 1056, column: 12, scope: !1703)
!1779 = !DILocation(line: 1057, column: 5, scope: !1703)
!1780 = !DILocation(line: 1060, column: 3, scope: !1422)
!1781 = !DILocation(line: 1064, column: 3, scope: !1422)
!1782 = !DILocation(line: 1067, column: 10, scope: !1422)
!1783 = !DILocation(line: 1068, column: 3, scope: !1422)
!1784 = !DILocation(line: 1069, column: 2, scope: !1422)
!1785 = !DILocation(line: 1071, column: 1, scope: !1393)
!1786 = !DILocation(line: 1075, column: 6, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 1075, column: 6)
!1788 = !DILocation(line: 1075, column: 6, scope: !1393)
!1789 = !DILocation(line: 1076, column: 28, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1075, column: 28)
!1791 = !DILocation(line: 1076, column: 3, scope: !1790)
!1792 = !DILocation(line: 1077, column: 2, scope: !1790)
!1793 = !DILocation(line: 1082, column: 28, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 1081, column: 7)
!1795 = !DILocation(line: 1082, column: 3, scope: !1794)
!1796 = !DILocation(line: 1082, column: 15, scope: !1794)
!1797 = !DILocation(line: 1082, column: 26, scope: !1794)
!1798 = !DILocation(line: 1085, column: 2, scope: !1393)
!1799 = !DILocation(line: 1086, column: 1, scope: !1393)
!1800 = !DISubprogram(name: "acpi_ex_resolve_operands", scope: !977, file: !977, line: 377, type: !1801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!18, !45, !98, !134}
!1803 = !DISubprogram(name: "acpi_exception", scope: !920, file: !920, line: 906, type: !1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !923, !20, !18, !923, null}
!1806 = !DISubprogram(name: "acpi_ex_resolve_multiple", scope: !977, file: !977, line: 361, type: !1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!18, !134, !32, !1809, !98}
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1810 = !DISubprogram(name: "acpi_ds_get_buffer_arguments", scope: !1811, file: !1811, line: 27, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1811 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1812 = !DISubprogram(name: "acpi_ds_get_package_arguments", scope: !1811, file: !1811, line: 29, type: !981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1813 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !912, file: !912, line: 225, type: !1814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!923, !1368}
!1816 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1817, file: !1817, line: 298, type: !1818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1817 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!32, !27}
!1820 = !DISubprogram(name: "acpi_ds_method_data_get_value", scope: !1811, file: !1811, line: 149, type: !1821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!18, !40, !20, !134, !98}
!1823 = !DISubprogram(name: "acpi_ns_get_node_unlocked", scope: !1817, file: !1817, line: 280, type: !1824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!18, !27, !923, !20, !804}
!1826 = !DISubprogram(name: "acpi_ex_resolve_node_to_value", scope: !977, file: !977, line: 370, type: !1827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!18, !804, !134}
!1829 = !DISubprogram(name: "acpi_ex_read_data_from_field", scope: !977, file: !977, line: 151, type: !1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!18, !134, !32, !98}
