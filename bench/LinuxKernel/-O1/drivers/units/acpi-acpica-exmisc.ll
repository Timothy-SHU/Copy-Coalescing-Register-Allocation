; ModuleID = 'drivers/acpi/acpica/exmisc.c'
source_filename = "drivers/acpi/acpica/exmisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }

@_acpi_module_name = internal constant [7 x i8] c"exmisc\00", align 1, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"Invalid Reference Class 0x%2.2X\00", align 1, !dbg !805
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid descriptor type 0x%X\00", align 1, !dbg !810
@acpi_gbl_integer_bit_width = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid numeric logical opcode: %X\00", align 1, !dbg !815
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid object type for logical operator: %X\00", align 1, !dbg !820
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid comparison opcode: %X\00", align 1, !dbg !825

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_get_object_reference(ptr noundef %obj_desc, ptr noundef %return_desc, ptr noundef %walk_state) #0 align 16 !dbg !841 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %return_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %reference_obj = alloca ptr, align 8
  %referenced_obj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !845, metadata !DIExpression()), !dbg !850
  store ptr %return_desc, ptr %return_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_desc.addr, metadata !846, metadata !DIExpression()), !dbg !851
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !847, metadata !DIExpression()), !dbg !852
  call void @llvm.lifetime.start.p0(i64 8, ptr %reference_obj) #4, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %reference_obj, metadata !848, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 8, ptr %referenced_obj) #4, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %referenced_obj, metadata !849, metadata !DIExpression()), !dbg !856
  %0 = load ptr, ptr %return_desc.addr, align 8, !dbg !857
  store ptr null, ptr %0, align 8, !dbg !858
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !859
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %1, i32 0, i32 1, !dbg !859
  %2 = load i8, ptr %descriptor_type, align 8, !dbg !859
  %conv = zext i8 %2 to i32, !dbg !859
  switch i32 %conv, label %sw.default8 [
    i32 14, label %sw.bb
    i32 15, label %sw.bb7
  ], !dbg !860

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !861
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !864
  %4 = load i8, ptr %type, align 1, !dbg !864
  %conv1 = zext i8 %4 to i32, !dbg !861
  %cmp = icmp ne i32 %conv1, 20, !dbg !865
  br i1 %cmp, label %if.then, label %if.end, !dbg !866

if.then:                                          ; preds = %sw.bb
  store i32 12291, ptr %retval, align 4, !dbg !867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !867

if.end:                                           ; preds = %sw.bb
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !869
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %5, i32 0, i32 5, !dbg !870
  %6 = load i8, ptr %class, align 1, !dbg !870
  %conv3 = zext i8 %6 to i32, !dbg !869
  switch i32 %conv3, label %sw.default [
    i32 0, label %sw.bb4
    i32 1, label %sw.bb4
    i32 6, label %sw.bb4
  ], !dbg !871

sw.bb4:                                           ; preds = %if.end, %if.end, %if.end
  %7 = load ptr, ptr %obj_desc.addr, align 8, !dbg !872
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %7, i32 0, i32 8, !dbg !874
  %8 = load ptr, ptr %object, align 8, !dbg !874
  store ptr %8, ptr %referenced_obj, align 8, !dbg !875
  br label %sw.epilog, !dbg !876

sw.default:                                       ; preds = %if.end
  %9 = load ptr, ptr %obj_desc.addr, align 8, !dbg !877
  %class5 = getelementptr inbounds %struct.acpi_object_reference, ptr %9, i32 0, i32 5, !dbg !877
  %10 = load i8, ptr %class5, align 1, !dbg !877
  %conv6 = zext i8 %10 to i32, !dbg !877
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 66, ptr noundef @.str, i32 noundef %conv6) #5, !dbg !877
  store i32 12291, ptr %retval, align 4, !dbg !878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !878

sw.epilog:                                        ; preds = %sw.bb4
  br label %sw.epilog11, !dbg !879

sw.bb7:                                           ; preds = %entry
  %11 = load ptr, ptr %obj_desc.addr, align 8, !dbg !880
  store ptr %11, ptr %referenced_obj, align 8, !dbg !881
  br label %sw.epilog11, !dbg !882

sw.default8:                                      ; preds = %entry
  %12 = load ptr, ptr %obj_desc.addr, align 8, !dbg !883
  %descriptor_type9 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %12, i32 0, i32 1, !dbg !883
  %13 = load i8, ptr %descriptor_type9, align 8, !dbg !883
  %conv10 = zext i8 %13 to i32, !dbg !883
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 81, ptr noundef @.str.1, i32 noundef %conv10) #5, !dbg !883
  store i32 8, ptr %retval, align 4, !dbg !884
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !884

sw.epilog11:                                      ; preds = %sw.bb7, %sw.epilog
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 89, i32 noundef 128, i32 noundef 20) #5, !dbg !885
  store ptr %call, ptr %reference_obj, align 8, !dbg !886
  %14 = load ptr, ptr %reference_obj, align 8, !dbg !887
  %tobool = icmp ne ptr %14, null, !dbg !887
  br i1 %tobool, label %if.end13, label %if.then12, !dbg !889

if.then12:                                        ; preds = %sw.epilog11
  store i32 4, ptr %retval, align 4, !dbg !890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !890

if.end13:                                         ; preds = %sw.epilog11
  %15 = load ptr, ptr %reference_obj, align 8, !dbg !892
  %class14 = getelementptr inbounds %struct.acpi_object_reference, ptr %15, i32 0, i32 5, !dbg !893
  store i8 2, ptr %class14, align 1, !dbg !894
  %16 = load ptr, ptr %referenced_obj, align 8, !dbg !895
  %17 = load ptr, ptr %reference_obj, align 8, !dbg !896
  %object15 = getelementptr inbounds %struct.acpi_object_reference, ptr %17, i32 0, i32 8, !dbg !897
  store ptr %16, ptr %object15, align 8, !dbg !898
  %18 = load ptr, ptr %reference_obj, align 8, !dbg !899
  %19 = load ptr, ptr %return_desc.addr, align 8, !dbg !900
  store ptr %18, ptr %19, align 8, !dbg !901
  store i32 0, ptr %retval, align 4, !dbg !902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !902

cleanup:                                          ; preds = %if.end13, %if.then12, %sw.default8, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %referenced_obj) #4, !dbg !903
  call void @llvm.lifetime.end.p0(i64 8, ptr %reference_obj) #4, !dbg !903
  %20 = load i32, ptr %retval, align 4, !dbg !903
  ret i32 %20, !dbg !903
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !904 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !909 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @acpi_ex_do_math_op(i16 noundef zeroext %opcode, i64 noundef %integer0, i64 noundef %integer1) #0 align 16 !dbg !914 {
entry:
  %retval = alloca i64, align 8
  %opcode.addr = alloca i16, align 2
  %integer0.addr = alloca i64, align 8
  %integer1.addr = alloca i64, align 8
  store i16 %opcode, ptr %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !918, metadata !DIExpression()), !dbg !921
  store i64 %integer0, ptr %integer0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %integer0.addr, metadata !919, metadata !DIExpression()), !dbg !922
  store i64 %integer1, ptr %integer1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %integer1.addr, metadata !920, metadata !DIExpression()), !dbg !923
  %0 = load i16, ptr %opcode.addr, align 2, !dbg !924
  %conv = zext i16 %0 to i32, !dbg !924
  switch i32 %conv, label %sw.default [
    i32 114, label %sw.bb
    i32 123, label %sw.bb1
    i32 124, label %sw.bb2
    i32 125, label %sw.bb4
    i32 126, label %sw.bb5
    i32 127, label %sw.bb8
    i32 119, label %sw.bb9
    i32 121, label %sw.bb10
    i32 122, label %sw.bb13
    i32 116, label %sw.bb19
  ], !dbg !925

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %integer0.addr, align 8, !dbg !926
  %2 = load i64, ptr %integer1.addr, align 8, !dbg !928
  %add = add i64 %1, %2, !dbg !929
  store i64 %add, ptr %retval, align 8, !dbg !930
  br label %return, !dbg !930

sw.bb1:                                           ; preds = %entry
  %3 = load i64, ptr %integer0.addr, align 8, !dbg !931
  %4 = load i64, ptr %integer1.addr, align 8, !dbg !932
  %and = and i64 %3, %4, !dbg !933
  store i64 %and, ptr %retval, align 8, !dbg !934
  br label %return, !dbg !934

sw.bb2:                                           ; preds = %entry
  %5 = load i64, ptr %integer0.addr, align 8, !dbg !935
  %6 = load i64, ptr %integer1.addr, align 8, !dbg !936
  %and3 = and i64 %5, %6, !dbg !937
  %not = xor i64 %and3, -1, !dbg !938
  store i64 %not, ptr %retval, align 8, !dbg !939
  br label %return, !dbg !939

sw.bb4:                                           ; preds = %entry
  %7 = load i64, ptr %integer0.addr, align 8, !dbg !940
  %8 = load i64, ptr %integer1.addr, align 8, !dbg !941
  %or = or i64 %7, %8, !dbg !942
  store i64 %or, ptr %retval, align 8, !dbg !943
  br label %return, !dbg !943

sw.bb5:                                           ; preds = %entry
  %9 = load i64, ptr %integer0.addr, align 8, !dbg !944
  %10 = load i64, ptr %integer1.addr, align 8, !dbg !945
  %or6 = or i64 %9, %10, !dbg !946
  %not7 = xor i64 %or6, -1, !dbg !947
  store i64 %not7, ptr %retval, align 8, !dbg !948
  br label %return, !dbg !948

sw.bb8:                                           ; preds = %entry
  %11 = load i64, ptr %integer0.addr, align 8, !dbg !949
  %12 = load i64, ptr %integer1.addr, align 8, !dbg !950
  %xor = xor i64 %11, %12, !dbg !951
  store i64 %xor, ptr %retval, align 8, !dbg !952
  br label %return, !dbg !952

sw.bb9:                                           ; preds = %entry
  %13 = load i64, ptr %integer0.addr, align 8, !dbg !953
  %14 = load i64, ptr %integer1.addr, align 8, !dbg !954
  %mul = mul i64 %13, %14, !dbg !955
  store i64 %mul, ptr %retval, align 8, !dbg !956
  br label %return, !dbg !956

sw.bb10:                                          ; preds = %entry
  %15 = load i64, ptr %integer1.addr, align 8, !dbg !957
  %16 = load i8, ptr @acpi_gbl_integer_bit_width, align 1, !dbg !959
  %conv11 = zext i8 %16 to i64, !dbg !959
  %cmp = icmp uge i64 %15, %conv11, !dbg !960
  br i1 %cmp, label %if.then, label %if.end, !dbg !961

if.then:                                          ; preds = %sw.bb10
  store i64 0, ptr %retval, align 8, !dbg !962
  br label %return, !dbg !962

if.end:                                           ; preds = %sw.bb10
  %17 = load i64, ptr %integer0.addr, align 8, !dbg !964
  %18 = load i64, ptr %integer1.addr, align 8, !dbg !965
  %shl = shl i64 %17, %18, !dbg !966
  store i64 %shl, ptr %retval, align 8, !dbg !967
  br label %return, !dbg !967

sw.bb13:                                          ; preds = %entry
  %19 = load i64, ptr %integer1.addr, align 8, !dbg !968
  %20 = load i8, ptr @acpi_gbl_integer_bit_width, align 1, !dbg !970
  %conv14 = zext i8 %20 to i64, !dbg !970
  %cmp15 = icmp uge i64 %19, %conv14, !dbg !971
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !972

if.then17:                                        ; preds = %sw.bb13
  store i64 0, ptr %retval, align 8, !dbg !973
  br label %return, !dbg !973

if.end18:                                         ; preds = %sw.bb13
  %21 = load i64, ptr %integer0.addr, align 8, !dbg !975
  %22 = load i64, ptr %integer1.addr, align 8, !dbg !976
  %shr = lshr i64 %21, %22, !dbg !977
  store i64 %shr, ptr %retval, align 8, !dbg !978
  br label %return, !dbg !978

sw.bb19:                                          ; preds = %entry
  %23 = load i64, ptr %integer0.addr, align 8, !dbg !979
  %24 = load i64, ptr %integer1.addr, align 8, !dbg !980
  %sub = sub i64 %23, %24, !dbg !981
  store i64 %sub, ptr %retval, align 8, !dbg !982
  br label %return, !dbg !982

sw.default:                                       ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !983
  br label %return, !dbg !983

return:                                           ; preds = %sw.default, %sw.bb19, %if.end18, %if.then17, %if.end, %if.then, %sw.bb9, %sw.bb8, %sw.bb5, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %25 = load i64, ptr %retval, align 8, !dbg !984
  ret i64 %25, !dbg !984
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_do_logical_numeric_op(i16 noundef zeroext %opcode, i64 noundef %integer0, i64 noundef %integer1, ptr noundef %logical_result) #0 align 16 !dbg !985 {
entry:
  %opcode.addr = alloca i16, align 2
  %integer0.addr = alloca i64, align 8
  %integer1.addr = alloca i64, align 8
  %logical_result.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %local_result = alloca i8, align 1
  store i16 %opcode, ptr %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !989, metadata !DIExpression()), !dbg !995
  store i64 %integer0, ptr %integer0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %integer0.addr, metadata !990, metadata !DIExpression()), !dbg !996
  store i64 %integer1, ptr %integer1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %integer1.addr, metadata !991, metadata !DIExpression()), !dbg !997
  store ptr %logical_result, ptr %logical_result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %logical_result.addr, metadata !992, metadata !DIExpression()), !dbg !998
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %status, metadata !993, metadata !DIExpression()), !dbg !1000
  store i32 0, ptr %status, align 4, !dbg !1000
  call void @llvm.lifetime.start.p0(i64 1, ptr %local_result) #4, !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %local_result, metadata !994, metadata !DIExpression()), !dbg !1002
  store i8 0, ptr %local_result, align 1, !dbg !1002
  %0 = load i16, ptr %opcode.addr, align 2, !dbg !1003
  %conv = zext i16 %0 to i32, !dbg !1003
  switch i32 %conv, label %sw.default [
    i32 144, label %sw.bb
    i32 145, label %sw.bb2
  ], !dbg !1004

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr %integer0.addr, align 8, !dbg !1005
  %tobool = icmp ne i64 %1, 0, !dbg !1005
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1008

land.lhs.true:                                    ; preds = %sw.bb
  %2 = load i64, ptr %integer1.addr, align 8, !dbg !1009
  %tobool1 = icmp ne i64 %2, 0, !dbg !1009
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1010

if.then:                                          ; preds = %land.lhs.true
  store i8 1, ptr %local_result, align 1, !dbg !1011
  br label %if.end, !dbg !1013

if.end:                                           ; preds = %if.then, %land.lhs.true, %sw.bb
  br label %sw.epilog, !dbg !1014

sw.bb2:                                           ; preds = %entry
  %3 = load i64, ptr %integer0.addr, align 8, !dbg !1015
  %tobool3 = icmp ne i64 %3, 0, !dbg !1015
  br i1 %tobool3, label %if.then5, label %lor.lhs.false, !dbg !1017

lor.lhs.false:                                    ; preds = %sw.bb2
  %4 = load i64, ptr %integer1.addr, align 8, !dbg !1018
  %tobool4 = icmp ne i64 %4, 0, !dbg !1018
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1019

if.then5:                                         ; preds = %lor.lhs.false, %sw.bb2
  store i8 1, ptr %local_result, align 1, !dbg !1020
  br label %if.end6, !dbg !1022

if.end6:                                          ; preds = %if.then5, %lor.lhs.false
  br label %sw.epilog, !dbg !1023

sw.default:                                       ; preds = %entry
  %5 = load i16, ptr %opcode.addr, align 2, !dbg !1024
  %conv7 = zext i16 %5 to i32, !dbg !1024
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 234, ptr noundef @.str.2, i32 noundef %conv7) #5, !dbg !1024
  store i32 12303, ptr %status, align 4, !dbg !1025
  br label %sw.epilog, !dbg !1026

sw.epilog:                                        ; preds = %sw.default, %if.end6, %if.end
  %6 = load i8, ptr %local_result, align 1, !dbg !1027
  %7 = load ptr, ptr %logical_result.addr, align 8, !dbg !1028
  store i8 %6, ptr %7, align 1, !dbg !1029
  %8 = load i32, ptr %status, align 4, !dbg !1030
  call void @llvm.lifetime.end.p0(i64 1, ptr %local_result) #4, !dbg !1031
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1031
  ret i32 %8, !dbg !1030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_do_logical_op(i16 noundef zeroext %opcode, ptr noundef %operand0, ptr noundef %operand1, ptr noundef %logical_result) #0 align 16 !dbg !1032 {
entry:
  %opcode.addr = alloca i16, align 2
  %operand0.addr = alloca ptr, align 8
  %operand1.addr = alloca ptr, align 8
  %logical_result.addr = alloca ptr, align 8
  %local_operand1 = alloca ptr, align 8
  %integer0 = alloca i64, align 8
  %integer1 = alloca i64, align 8
  %length0 = alloca i32, align 4
  %length1 = alloca i32, align 4
  %status = alloca i32, align 4
  %local_result = alloca i8, align 1
  %compare = alloca i32, align 4
  store i16 %opcode, ptr %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !1036, metadata !DIExpression()), !dbg !1050
  store ptr %operand0, ptr %operand0.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %operand0.addr, metadata !1037, metadata !DIExpression()), !dbg !1051
  store ptr %operand1, ptr %operand1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %operand1.addr, metadata !1038, metadata !DIExpression()), !dbg !1052
  store ptr %logical_result, ptr %logical_result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %logical_result.addr, metadata !1039, metadata !DIExpression()), !dbg !1053
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_operand1) #4, !dbg !1054
  call void @llvm.dbg.declare(metadata ptr %local_operand1, metadata !1040, metadata !DIExpression()), !dbg !1055
  %0 = load ptr, ptr %operand1.addr, align 8, !dbg !1056
  store ptr %0, ptr %local_operand1, align 8, !dbg !1055
  call void @llvm.lifetime.start.p0(i64 8, ptr %integer0) #4, !dbg !1057
  call void @llvm.dbg.declare(metadata ptr %integer0, metadata !1041, metadata !DIExpression()), !dbg !1058
  call void @llvm.lifetime.start.p0(i64 8, ptr %integer1) #4, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %integer1, metadata !1042, metadata !DIExpression()), !dbg !1060
  call void @llvm.lifetime.start.p0(i64 4, ptr %length0) #4, !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %length0, metadata !1043, metadata !DIExpression()), !dbg !1062
  call void @llvm.lifetime.start.p0(i64 4, ptr %length1) #4, !dbg !1063
  call void @llvm.dbg.declare(metadata ptr %length1, metadata !1044, metadata !DIExpression()), !dbg !1064
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1065
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1045, metadata !DIExpression()), !dbg !1066
  store i32 0, ptr %status, align 4, !dbg !1066
  call void @llvm.lifetime.start.p0(i64 1, ptr %local_result) #4, !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %local_result, metadata !1046, metadata !DIExpression()), !dbg !1068
  store i8 0, ptr %local_result, align 1, !dbg !1068
  call void @llvm.lifetime.start.p0(i64 4, ptr %compare) #4, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %compare, metadata !1047, metadata !DIExpression()), !dbg !1070
  %1 = load ptr, ptr %operand0.addr, align 8, !dbg !1071
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 2, !dbg !1072
  %2 = load i8, ptr %type, align 1, !dbg !1072
  %conv = zext i8 %2 to i32, !dbg !1071
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
  ], !dbg !1073

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %operand1.addr, align 8, !dbg !1074
  %call = call i32 @acpi_ex_convert_to_integer(ptr noundef %3, ptr noundef %local_operand1, i32 noundef 1) #5, !dbg !1076
  store i32 %call, ptr %status, align 4, !dbg !1077
  br label %sw.epilog, !dbg !1078

sw.bb1:                                           ; preds = %entry
  %4 = load ptr, ptr %operand1.addr, align 8, !dbg !1079
  %call2 = call i32 @acpi_ex_convert_to_string(ptr noundef %4, ptr noundef %local_operand1, i32 noundef 2) #5, !dbg !1080
  store i32 %call2, ptr %status, align 4, !dbg !1081
  br label %sw.epilog, !dbg !1082

sw.bb3:                                           ; preds = %entry
  %5 = load ptr, ptr %operand1.addr, align 8, !dbg !1083
  %call4 = call i32 @acpi_ex_convert_to_buffer(ptr noundef %5, ptr noundef %local_operand1) #5, !dbg !1084
  store i32 %call4, ptr %status, align 4, !dbg !1085
  br label %sw.epilog, !dbg !1086

sw.default:                                       ; preds = %entry
  %6 = load ptr, ptr %operand0.addr, align 8, !dbg !1087
  %type5 = getelementptr inbounds %struct.acpi_object_common, ptr %6, i32 0, i32 2, !dbg !1087
  %7 = load i8, ptr %type5, align 1, !dbg !1087
  %conv6 = zext i8 %7 to i32, !dbg !1087
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 316, ptr noundef @.str.3, i32 noundef %conv6) #5, !dbg !1087
  store i32 12303, ptr %status, align 4, !dbg !1088
  br label %sw.epilog, !dbg !1089

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %8 = load i32, ptr %status, align 4, !dbg !1090
  %tobool = icmp ne i32 %8, 0, !dbg !1090
  br i1 %tobool, label %if.then, label %if.end, !dbg !1092

if.then:                                          ; preds = %sw.epilog
  br label %cleanup, !dbg !1093

if.end:                                           ; preds = %sw.epilog
  %9 = load ptr, ptr %operand0.addr, align 8, !dbg !1095
  %type7 = getelementptr inbounds %struct.acpi_object_common, ptr %9, i32 0, i32 2, !dbg !1097
  %10 = load i8, ptr %type7, align 1, !dbg !1097
  %conv8 = zext i8 %10 to i32, !dbg !1095
  %cmp = icmp eq i32 %conv8, 1, !dbg !1098
  br i1 %cmp, label %if.then10, label %if.else, !dbg !1099

if.then10:                                        ; preds = %if.end
  %11 = load ptr, ptr %operand0.addr, align 8, !dbg !1100
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %11, i32 0, i32 6, !dbg !1102
  %12 = load i64, ptr %value, align 8, !dbg !1102
  store i64 %12, ptr %integer0, align 8, !dbg !1103
  %13 = load ptr, ptr %local_operand1, align 8, !dbg !1104
  %value11 = getelementptr inbounds %struct.acpi_object_integer, ptr %13, i32 0, i32 6, !dbg !1105
  %14 = load i64, ptr %value11, align 8, !dbg !1105
  store i64 %14, ptr %integer1, align 8, !dbg !1106
  %15 = load i16, ptr %opcode.addr, align 2, !dbg !1107
  %conv12 = zext i16 %15 to i32, !dbg !1107
  switch i32 %conv12, label %sw.default28 [
    i32 147, label %sw.bb13
    i32 148, label %sw.bb18
    i32 149, label %sw.bb23
  ], !dbg !1108

sw.bb13:                                          ; preds = %if.then10
  %16 = load i64, ptr %integer0, align 8, !dbg !1109
  %17 = load i64, ptr %integer1, align 8, !dbg !1112
  %cmp14 = icmp eq i64 %16, %17, !dbg !1113
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1114

if.then16:                                        ; preds = %sw.bb13
  store i8 1, ptr %local_result, align 1, !dbg !1115
  br label %if.end17, !dbg !1117

if.end17:                                         ; preds = %if.then16, %sw.bb13
  br label %sw.epilog30, !dbg !1118

sw.bb18:                                          ; preds = %if.then10
  %18 = load i64, ptr %integer0, align 8, !dbg !1119
  %19 = load i64, ptr %integer1, align 8, !dbg !1121
  %cmp19 = icmp ugt i64 %18, %19, !dbg !1122
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !1123

if.then21:                                        ; preds = %sw.bb18
  store i8 1, ptr %local_result, align 1, !dbg !1124
  br label %if.end22, !dbg !1126

if.end22:                                         ; preds = %if.then21, %sw.bb18
  br label %sw.epilog30, !dbg !1127

sw.bb23:                                          ; preds = %if.then10
  %20 = load i64, ptr %integer0, align 8, !dbg !1128
  %21 = load i64, ptr %integer1, align 8, !dbg !1130
  %cmp24 = icmp ult i64 %20, %21, !dbg !1131
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1132

if.then26:                                        ; preds = %sw.bb23
  store i8 1, ptr %local_result, align 1, !dbg !1133
  br label %if.end27, !dbg !1135

if.end27:                                         ; preds = %if.then26, %sw.bb23
  br label %sw.epilog30, !dbg !1136

sw.default28:                                     ; preds = %if.then10
  %22 = load i16, ptr %opcode.addr, align 2, !dbg !1137
  %conv29 = zext i16 %22 to i32, !dbg !1137
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 362, ptr noundef @.str.4, i32 noundef %conv29) #5, !dbg !1137
  store i32 12303, ptr %status, align 4, !dbg !1138
  br label %sw.epilog30, !dbg !1139

sw.epilog30:                                      ; preds = %sw.default28, %if.end27, %if.end22, %if.end17
  br label %if.end74, !dbg !1140

if.else:                                          ; preds = %if.end
  %23 = load ptr, ptr %operand0.addr, align 8, !dbg !1141
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %23, i32 0, i32 6, !dbg !1143
  %24 = load i32, ptr %length, align 8, !dbg !1143
  store i32 %24, ptr %length0, align 4, !dbg !1144
  %25 = load ptr, ptr %local_operand1, align 8, !dbg !1145
  %length31 = getelementptr inbounds %struct.acpi_object_buffer, ptr %25, i32 0, i32 6, !dbg !1146
  %26 = load i32, ptr %length31, align 8, !dbg !1146
  store i32 %26, ptr %length1, align 4, !dbg !1147
  %27 = load ptr, ptr %operand0.addr, align 8, !dbg !1148
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %27, i32 0, i32 5, !dbg !1149
  %28 = load ptr, ptr %pointer, align 8, !dbg !1149
  %29 = load ptr, ptr %local_operand1, align 8, !dbg !1150
  %pointer32 = getelementptr inbounds %struct.acpi_object_buffer, ptr %29, i32 0, i32 5, !dbg !1151
  %30 = load ptr, ptr %pointer32, align 8, !dbg !1151
  %31 = load i32, ptr %length0, align 4, !dbg !1152
  %32 = load i32, ptr %length1, align 4, !dbg !1153
  %cmp33 = icmp ugt i32 %31, %32, !dbg !1154
  br i1 %cmp33, label %cond.true, label %cond.false, !dbg !1155

cond.true:                                        ; preds = %if.else
  %33 = load i32, ptr %length1, align 4, !dbg !1156
  br label %cond.end, !dbg !1155

cond.false:                                       ; preds = %if.else
  %34 = load i32, ptr %length0, align 4, !dbg !1157
  br label %cond.end, !dbg !1155

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ %34, %cond.false ], !dbg !1155
  %conv35 = zext i32 %cond to i64, !dbg !1155
  %call36 = call i32 @memcmp(ptr noundef %28, ptr noundef %30, i64 noundef %conv35) #5, !dbg !1158
  store i32 %call36, ptr %compare, align 4, !dbg !1159
  %35 = load i16, ptr %opcode.addr, align 2, !dbg !1160
  %conv37 = zext i16 %35 to i32, !dbg !1160
  switch i32 %conv37, label %sw.default71 [
    i32 147, label %sw.bb38
    i32 148, label %sw.bb45
    i32 149, label %sw.bb58
  ], !dbg !1161

sw.bb38:                                          ; preds = %cond.end
  %36 = load i32, ptr %length0, align 4, !dbg !1162
  %37 = load i32, ptr %length1, align 4, !dbg !1165
  %cmp39 = icmp eq i32 %36, %37, !dbg !1166
  br i1 %cmp39, label %land.lhs.true, label %if.end44, !dbg !1167

land.lhs.true:                                    ; preds = %sw.bb38
  %38 = load i32, ptr %compare, align 4, !dbg !1168
  %cmp41 = icmp eq i32 %38, 0, !dbg !1169
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !1170

if.then43:                                        ; preds = %land.lhs.true
  store i8 1, ptr %local_result, align 1, !dbg !1171
  br label %if.end44, !dbg !1173

if.end44:                                         ; preds = %if.then43, %land.lhs.true, %sw.bb38
  br label %sw.epilog73, !dbg !1174

sw.bb45:                                          ; preds = %cond.end
  %39 = load i32, ptr %compare, align 4, !dbg !1175
  %cmp46 = icmp sgt i32 %39, 0, !dbg !1177
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !1178

if.then48:                                        ; preds = %sw.bb45
  store i8 1, ptr %local_result, align 1, !dbg !1179
  br label %cleanup, !dbg !1181

if.end49:                                         ; preds = %sw.bb45
  %40 = load i32, ptr %compare, align 4, !dbg !1182
  %cmp50 = icmp slt i32 %40, 0, !dbg !1184
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !1185

if.then52:                                        ; preds = %if.end49
  br label %cleanup, !dbg !1186

if.end53:                                         ; preds = %if.end49
  %41 = load i32, ptr %length0, align 4, !dbg !1188
  %42 = load i32, ptr %length1, align 4, !dbg !1190
  %cmp54 = icmp ugt i32 %41, %42, !dbg !1191
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !1192

if.then56:                                        ; preds = %if.end53
  store i8 1, ptr %local_result, align 1, !dbg !1193
  br label %if.end57, !dbg !1195

if.end57:                                         ; preds = %if.then56, %if.end53
  br label %sw.epilog73, !dbg !1196

sw.bb58:                                          ; preds = %cond.end
  %43 = load i32, ptr %compare, align 4, !dbg !1197
  %cmp59 = icmp sgt i32 %43, 0, !dbg !1199
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !1200

if.then61:                                        ; preds = %sw.bb58
  br label %cleanup, !dbg !1201

if.end62:                                         ; preds = %sw.bb58
  %44 = load i32, ptr %compare, align 4, !dbg !1203
  %cmp63 = icmp slt i32 %44, 0, !dbg !1205
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !1206

if.then65:                                        ; preds = %if.end62
  store i8 1, ptr %local_result, align 1, !dbg !1207
  br label %cleanup, !dbg !1209

if.end66:                                         ; preds = %if.end62
  %45 = load i32, ptr %length0, align 4, !dbg !1210
  %46 = load i32, ptr %length1, align 4, !dbg !1212
  %cmp67 = icmp ult i32 %45, %46, !dbg !1213
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !1214

if.then69:                                        ; preds = %if.end66
  store i8 1, ptr %local_result, align 1, !dbg !1215
  br label %if.end70, !dbg !1217

if.end70:                                         ; preds = %if.then69, %if.end66
  br label %sw.epilog73, !dbg !1218

sw.default71:                                     ; preds = %cond.end
  %47 = load i16, ptr %opcode.addr, align 2, !dbg !1219
  %conv72 = zext i16 %47 to i32, !dbg !1219
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 432, ptr noundef @.str.4, i32 noundef %conv72) #5, !dbg !1219
  store i32 12303, ptr %status, align 4, !dbg !1220
  br label %sw.epilog73, !dbg !1221

sw.epilog73:                                      ; preds = %sw.default71, %if.end70, %if.end57, %if.end44
  br label %if.end74

if.end74:                                         ; preds = %sw.epilog73, %sw.epilog30
  br label %cleanup, !dbg !1222

cleanup:                                          ; preds = %if.end74, %if.then65, %if.then61, %if.then52, %if.then48, %if.then
  call void @llvm.dbg.label(metadata !1049), !dbg !1223
  %48 = load ptr, ptr %local_operand1, align 8, !dbg !1224
  %49 = load ptr, ptr %operand1.addr, align 8, !dbg !1226
  %cmp75 = icmp ne ptr %48, %49, !dbg !1227
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !1228

if.then77:                                        ; preds = %cleanup
  %50 = load ptr, ptr %local_operand1, align 8, !dbg !1229
  call void @acpi_ut_remove_reference(ptr noundef %50) #5, !dbg !1231
  br label %if.end78, !dbg !1232

if.end78:                                         ; preds = %if.then77, %cleanup
  %51 = load i8, ptr %local_result, align 1, !dbg !1233
  %52 = load ptr, ptr %logical_result.addr, align 8, !dbg !1234
  store i8 %51, ptr %52, align 1, !dbg !1235
  %53 = load i32, ptr %status, align 4, !dbg !1236
  call void @llvm.lifetime.end.p0(i64 4, ptr %compare) #4, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 1, ptr %local_result) #4, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 4, ptr %length1) #4, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 4, ptr %length0) #4, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 8, ptr %integer1) #4, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 8, ptr %integer0) #4, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_operand1) #4, !dbg !1237
  ret i32 %53, !dbg !1236
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1238 dso_local i32 @acpi_ex_convert_to_integer(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1242 dso_local i32 @acpi_ex_convert_to_string(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1243 dso_local i32 @acpi_ex_convert_to_buffer(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1246 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1256 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!832, !833, !834, !835, !836, !837, !838, !839}
!llvm.ident = !{!840}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !830, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exmisc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exmisc\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exmisc.ll drivers/acpi/acpica/exmisc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !804, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exmisc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a1543ebc5637a46ab50bec3119cb10c3")
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
!17 = !{!18, !25, !159}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 434, size: 1600, elements: !20)
!20 = !{!21, !32, !802, !803}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !19, file: !6, line: 435, baseType: !22, size: 128)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 429, size: 128, elements: !23)
!23 = !{!24, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !22, file: !6, line: 430, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !22, file: !6, line: 431, baseType: !27, size: 8, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !28, line: 17, baseType: !29)
!28 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !30, line: 21, baseType: !31)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !19, file: !6, line: 436, baseType: !33, size: 576)
!33 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !34)
!34 = !{!35, !47, !63, !77, !114, !128, !137, !451, !468, !484, !497, !575, !587, !601, !611, !629, !651, !670, !689, !708, !721, !748, !765, !778, !792, !801}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !33, file: !6, line: 370, baseType: !36, size: 128)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !37)
!37 = !{!38, !40, !41, !42, !46}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !36, file: !6, line: 74, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !36, file: !6, line: 74, baseType: !27, size: 8, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !36, file: !6, line: 74, baseType: !27, size: 8, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !36, file: !6, line: 74, baseType: !43, size: 16, offset: 80)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !28, line: 19, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !45)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !6, line: 74, baseType: !27, size: 8, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !33, file: !6, line: 371, baseType: !48, size: 192)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !59}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !48, file: !6, line: 77, baseType: !39, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !48, file: !6, line: 77, baseType: !27, size: 8, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !6, line: 77, baseType: !27, size: 8, offset: 72)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !48, file: !6, line: 77, baseType: !43, size: 16, offset: 80)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !48, file: !6, line: 77, baseType: !27, size: 8, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !48, file: !6, line: 77, baseType: !56, size: 24, offset: 104)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 3)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !48, file: !6, line: 78, baseType: !60, size: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !28, line: 23, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !62)
!62 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !33, file: !6, line: 372, baseType: !64, size: 256)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !65)
!65 = !{!66, !67, !68, !69, !70, !71, !74}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !64, file: !6, line: 94, baseType: !39, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !64, file: !6, line: 94, baseType: !27, size: 8, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !6, line: 94, baseType: !27, size: 8, offset: 72)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !64, file: !6, line: 94, baseType: !43, size: 16, offset: 80)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !64, file: !6, line: 94, baseType: !27, size: 8, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !64, file: !6, line: 94, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !64, file: !6, line: 94, baseType: !75, size: 32, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !28, line: 21, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !7)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !33, file: !6, line: 373, baseType: !78, size: 384)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !87, !88, !89, !90}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !78, file: !6, line: 98, baseType: !39, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !78, file: !6, line: 98, baseType: !27, size: 8, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !6, line: 98, baseType: !27, size: 8, offset: 72)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !78, file: !6, line: 98, baseType: !43, size: 16, offset: 80)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !78, file: !6, line: 98, baseType: !27, size: 8, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !78, file: !6, line: 98, baseType: !86, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !78, file: !6, line: 98, baseType: !75, size: 32, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !78, file: !6, line: 99, baseType: !75, size: 32, offset: 224)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !78, file: !6, line: 100, baseType: !86, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !78, file: !6, line: 101, baseType: !91, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !93, line: 133, size: 384, elements: !94)
!93 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!94 = !{!95, !96, !97, !98, !99, !108, !109, !110, !111}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !92, file: !93, line: 134, baseType: !39, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !92, file: !93, line: 135, baseType: !27, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !93, line: 136, baseType: !27, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !92, file: !93, line: 137, baseType: !43, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !92, file: !93, line: 138, baseType: !100, size: 32, offset: 96)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !101, line: 328, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !100, file: !101, line: 329, baseType: !75, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !100, file: !101, line: 330, baseType: !105, size: 32)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 32, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !92, file: !93, line: 139, baseType: !91, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !92, file: !93, line: 140, baseType: !91, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !92, file: !93, line: 141, baseType: !91, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !92, file: !93, line: 142, baseType: !112, size: 16, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !113, line: 445, baseType: !43)
!113 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !33, file: !6, line: 374, baseType: !115, size: 384)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !125, !126, !127}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !115, file: !6, line: 105, baseType: !39, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !6, line: 105, baseType: !27, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !6, line: 105, baseType: !27, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !115, file: !6, line: 105, baseType: !43, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !6, line: 105, baseType: !27, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !115, file: !6, line: 105, baseType: !91, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !115, file: !6, line: 106, baseType: !124, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !115, file: !6, line: 107, baseType: !86, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !115, file: !6, line: 108, baseType: !75, size: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !115, file: !6, line: 109, baseType: !75, size: 32, offset: 352)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !33, file: !6, line: 375, baseType: !129, size: 192)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !129, file: !6, line: 119, baseType: !39, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !6, line: 119, baseType: !27, size: 8, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !6, line: 119, baseType: !27, size: 8, offset: 72)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !129, file: !6, line: 119, baseType: !43, size: 16, offset: 80)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !6, line: 119, baseType: !27, size: 8, offset: 96)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !129, file: !6, line: 119, baseType: !25, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !33, file: !6, line: 376, baseType: !138, size: 448)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !448, !449, !450}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !138, file: !6, line: 145, baseType: !39, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !138, file: !6, line: 145, baseType: !27, size: 8, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !138, file: !6, line: 145, baseType: !27, size: 8, offset: 72)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !138, file: !6, line: 145, baseType: !43, size: 16, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !138, file: !6, line: 145, baseType: !27, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !138, file: !6, line: 145, baseType: !27, size: 8, offset: 104)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !138, file: !6, line: 146, baseType: !27, size: 8, offset: 112)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !138, file: !6, line: 147, baseType: !27, size: 8, offset: 120)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !138, file: !6, line: 148, baseType: !39, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !6, line: 149, baseType: !39, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !138, file: !6, line: 150, baseType: !86, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !138, file: !6, line: 154, baseType: !152, size: 64, offset: 320)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !6, line: 151, size: 64, elements: !153)
!153 = !{!154, !447}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !152, file: !6, line: 152, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !93, line: 248, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !113, line: 421, baseType: !75)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !162, line: 37, size: 9024, elements: !163)
!162 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !393, !394, !395, !396, !397, !401, !403, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !430, !431, !432, !433, !434, !435, !436, !437, !439, !445}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 38, baseType: !160, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !162, line: 39, baseType: !27, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !161, file: !162, line: 40, baseType: !27, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !161, file: !162, line: 41, baseType: !43, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !161, file: !162, line: 42, baseType: !27, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !161, file: !162, line: 43, baseType: !27, size: 8, offset: 104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !161, file: !162, line: 44, baseType: !27, size: 8, offset: 112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !161, file: !162, line: 45, baseType: !112, size: 16, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !161, file: !162, line: 46, baseType: !27, size: 8, offset: 144)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !161, file: !162, line: 47, baseType: !27, size: 8, offset: 152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !161, file: !162, line: 48, baseType: !27, size: 8, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !161, file: !162, line: 49, baseType: !27, size: 8, offset: 168)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !161, file: !162, line: 50, baseType: !27, size: 8, offset: 176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !161, file: !162, line: 51, baseType: !27, size: 8, offset: 184)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !161, file: !162, line: 52, baseType: !27, size: 8, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !161, file: !162, line: 53, baseType: !27, size: 8, offset: 200)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !162, line: 54, baseType: !86, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !161, file: !162, line: 55, baseType: !75, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !161, file: !162, line: 56, baseType: !75, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !161, file: !162, line: 57, baseType: !75, size: 32, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !161, file: !162, line: 58, baseType: !75, size: 32, offset: 416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !161, file: !162, line: 60, baseType: !186, size: 640, offset: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !93, line: 909, size: 640, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !274, !275, !391, !392}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !93, line: 910, baseType: !86, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !93, line: 911, baseType: !86, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !186, file: !93, line: 912, baseType: !86, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !186, file: !93, line: 913, baseType: !86, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !186, file: !93, line: 914, baseType: !86, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !186, file: !93, line: 915, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !93, line: 891, size: 1600, elements: !196)
!196 = !{!197, !217, !233}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !195, file: !93, line: 892, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !93, line: 844, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !93, line: 845, baseType: !194, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !93, line: 845, baseType: !27, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !93, line: 845, baseType: !27, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !93, line: 845, baseType: !43, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !93, line: 845, baseType: !86, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !93, line: 845, baseType: !194, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !93, line: 845, baseType: !91, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !93, line: 845, baseType: !208, size: 64, offset: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !93, line: 732, size: 64, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !208, file: !93, line: 733, baseType: !60, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !93, line: 734, baseType: !75, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !208, file: !93, line: 735, baseType: !72, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !208, file: !93, line: 736, baseType: !86, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !93, line: 737, baseType: !72, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !208, file: !93, line: 738, baseType: !194, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !93, line: 845, baseType: !27, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !195, file: !93, line: 893, baseType: !218, size: 640)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !93, line: 851, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !93, line: 852, baseType: !194, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !93, line: 852, baseType: !27, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !93, line: 852, baseType: !27, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !218, file: !93, line: 852, baseType: !43, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !93, line: 852, baseType: !86, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !93, line: 852, baseType: !194, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !93, line: 852, baseType: !91, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !93, line: 852, baseType: !208, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !218, file: !93, line: 852, baseType: !27, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !218, file: !93, line: 852, baseType: !72, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !218, file: !93, line: 853, baseType: !86, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !218, file: !93, line: 854, baseType: !75, size: 32, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !93, line: 855, baseType: !75, size: 32, offset: 608)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !195, file: !93, line: 894, baseType: !234, size: 1600)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !93, line: 862, size: 1600, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !93, line: 863, baseType: !194, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !93, line: 863, baseType: !27, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !93, line: 863, baseType: !27, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !93, line: 863, baseType: !43, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !93, line: 863, baseType: !86, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !93, line: 863, baseType: !194, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !93, line: 863, baseType: !91, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !93, line: 863, baseType: !208, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !93, line: 863, baseType: !27, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !234, file: !93, line: 863, baseType: !194, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !234, file: !93, line: 864, baseType: !194, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !234, file: !93, line: 865, baseType: !72, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !234, file: !93, line: 866, baseType: !27, size: 8, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !234, file: !93, line: 867, baseType: !72, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !234, file: !93, line: 868, baseType: !72, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !234, file: !93, line: 869, baseType: !72, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !234, file: !93, line: 870, baseType: !105, size: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !234, file: !93, line: 871, baseType: !75, size: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !234, file: !93, line: 872, baseType: !75, size: 32, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !234, file: !93, line: 873, baseType: !75, size: 32, offset: 992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !234, file: !93, line: 874, baseType: !75, size: 32, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !234, file: !93, line: 875, baseType: !75, size: 32, offset: 1056)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !234, file: !93, line: 876, baseType: !75, size: 32, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !234, file: !93, line: 877, baseType: !75, size: 32, offset: 1120)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !234, file: !93, line: 878, baseType: !75, size: 32, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !234, file: !93, line: 879, baseType: !75, size: 32, offset: 1184)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !234, file: !93, line: 880, baseType: !75, size: 32, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !234, file: !93, line: 881, baseType: !75, size: 32, offset: 1248)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !234, file: !93, line: 882, baseType: !75, size: 32, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !234, file: !93, line: 883, baseType: !75, size: 32, offset: 1312)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !234, file: !93, line: 884, baseType: !43, size: 16, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !234, file: !93, line: 885, baseType: !27, size: 8, offset: 1360)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !234, file: !93, line: 886, baseType: !27, size: 8, offset: 1368)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !234, file: !93, line: 887, baseType: !27, size: 8, offset: 1376)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !234, file: !93, line: 888, baseType: !271, size: 160, offset: 1384)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 160, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 20)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !186, file: !93, line: 916, baseType: !91, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !93, line: 917, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !93, line: 679, size: 640, elements: !278)
!278 = !{!279, !287, !300, !309, !318, !331, !345, !357, !369}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !277, file: !93, line: 680, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !93, line: 575, size: 128, elements: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !93, line: 576, baseType: !25, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !93, line: 576, baseType: !27, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !93, line: 576, baseType: !27, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !93, line: 576, baseType: !43, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !93, line: 576, baseType: !43, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !277, file: !93, line: 681, baseType: !288, size: 384)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !93, line: 604, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !93, line: 605, baseType: !25, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !93, line: 605, baseType: !27, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !93, line: 605, baseType: !27, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !93, line: 605, baseType: !43, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !93, line: 605, baseType: !43, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !288, file: !93, line: 606, baseType: !43, size: 16, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !288, file: !93, line: 607, baseType: !194, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !288, file: !93, line: 608, baseType: !86, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !288, file: !93, line: 609, baseType: !86, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !288, file: !93, line: 610, baseType: !60, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !277, file: !93, line: 682, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !93, line: 582, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !93, line: 583, baseType: !25, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !93, line: 583, baseType: !27, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !93, line: 583, baseType: !27, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !93, line: 583, baseType: !43, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !93, line: 583, baseType: !43, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !301, file: !93, line: 584, baseType: !39, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !277, file: !93, line: 683, baseType: !310, size: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !93, line: 616, size: 192, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !93, line: 617, baseType: !25, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !93, line: 617, baseType: !27, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !93, line: 617, baseType: !27, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !93, line: 617, baseType: !43, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !93, line: 617, baseType: !43, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !93, line: 618, baseType: !91, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !277, file: !93, line: 684, baseType: !319, size: 448)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !93, line: 621, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !93, line: 622, baseType: !25, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !93, line: 622, baseType: !27, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !93, line: 622, baseType: !27, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !93, line: 622, baseType: !43, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !93, line: 622, baseType: !43, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !319, file: !93, line: 623, baseType: !75, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !319, file: !93, line: 624, baseType: !194, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !93, line: 625, baseType: !86, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !319, file: !93, line: 626, baseType: !86, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !319, file: !93, line: 627, baseType: !75, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !277, file: !93, line: 685, baseType: !332, size: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !93, line: 590, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !93, line: 591, baseType: !25, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !93, line: 591, baseType: !27, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !93, line: 591, baseType: !27, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !93, line: 591, baseType: !43, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !93, line: 591, baseType: !43, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !332, file: !93, line: 592, baseType: !75, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !332, file: !93, line: 593, baseType: !39, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !332, file: !93, line: 594, baseType: !39, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !332, file: !93, line: 595, baseType: !160, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !332, file: !93, line: 596, baseType: !25, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !332, file: !93, line: 597, baseType: !75, size: 32, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !277, file: !93, line: 686, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !93, line: 634, size: 320, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !93, line: 635, baseType: !25, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !93, line: 635, baseType: !27, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !93, line: 635, baseType: !27, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !93, line: 635, baseType: !43, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !93, line: 635, baseType: !43, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !346, file: !93, line: 636, baseType: !27, size: 8, offset: 112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !346, file: !93, line: 637, baseType: !160, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !346, file: !93, line: 638, baseType: !39, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !346, file: !93, line: 639, baseType: !60, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !277, file: !93, line: 687, baseType: !358, size: 640)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !93, line: 646, size: 640, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !93, line: 647, baseType: !25, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !93, line: 647, baseType: !27, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !93, line: 647, baseType: !27, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !93, line: 647, baseType: !43, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !93, line: 647, baseType: !43, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !358, file: !93, line: 648, baseType: !366, size: 512, offset: 128)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !277, file: !93, line: 688, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !93, line: 669, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !93, line: 670, baseType: !25, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !370, file: !93, line: 670, baseType: !27, size: 8, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !93, line: 670, baseType: !27, size: 8, offset: 72)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !370, file: !93, line: 670, baseType: !43, size: 16, offset: 80)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !93, line: 670, baseType: !43, size: 16, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !370, file: !93, line: 671, baseType: !27, size: 8, offset: 112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !370, file: !93, line: 672, baseType: !91, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !370, file: !93, line: 673, baseType: !39, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !370, file: !93, line: 674, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !93, line: 660, size: 128, elements: !383)
!383 = !{!384, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !382, file: !93, line: 661, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !113, line: 1061, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !75, !25}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !113, line: 424, baseType: !25)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !382, file: !93, line: 662, baseType: !25, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !186, file: !93, line: 918, baseType: !194, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !186, file: !93, line: 919, baseType: !75, size: 32, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !161, file: !162, line: 61, baseType: !75, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !161, file: !162, line: 62, baseType: !75, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !161, file: !162, line: 63, baseType: !43, size: 16, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !161, file: !162, line: 64, baseType: !27, size: 8, offset: 1168)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !161, file: !162, line: 66, baseType: !398, size: 2688, offset: 1216)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2688, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !161, file: !162, line: 67, baseType: !402, size: 3072, offset: 3904)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 3072, elements: !367)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !161, file: !162, line: 68, baseType: !404, size: 576, offset: 6976)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 576, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 9)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !161, file: !162, line: 69, baseType: !124, size: 64, offset: 7552)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !161, file: !162, line: 71, baseType: !86, size: 64, offset: 7616)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !161, file: !162, line: 72, baseType: !124, size: 64, offset: 7680)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !161, file: !162, line: 73, baseType: !276, size: 64, offset: 7744)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !161, file: !162, line: 74, baseType: !91, size: 64, offset: 7808)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !161, file: !162, line: 75, baseType: !39, size: 64, offset: 7872)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !161, file: !162, line: 76, baseType: !91, size: 64, offset: 7936)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !161, file: !162, line: 77, baseType: !194, size: 64, offset: 8000)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !161, file: !162, line: 78, baseType: !39, size: 64, offset: 8064)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !161, file: !162, line: 79, baseType: !91, size: 64, offset: 8128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !161, file: !162, line: 80, baseType: !72, size: 64, offset: 8192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !161, file: !162, line: 81, baseType: !194, size: 64, offset: 8256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !161, file: !162, line: 82, baseType: !420, size: 64, offset: 8320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !93, line: 718, size: 128, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !422, file: !93, line: 722, baseType: !75, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !422, file: !93, line: 723, baseType: !75, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !93, line: 724, baseType: !43, size: 16, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !422, file: !93, line: 725, baseType: !27, size: 8, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !422, file: !93, line: 726, baseType: !27, size: 8, offset: 88)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !93, line: 727, baseType: !27, size: 8, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !161, file: !162, line: 83, baseType: !194, size: 64, offset: 8384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !161, file: !162, line: 84, baseType: !39, size: 64, offset: 8448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !161, file: !162, line: 85, baseType: !276, size: 64, offset: 8512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !161, file: !162, line: 86, baseType: !39, size: 64, offset: 8576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !161, file: !162, line: 87, baseType: !276, size: 64, offset: 8640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !161, file: !162, line: 88, baseType: !194, size: 64, offset: 8704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !161, file: !162, line: 89, baseType: !194, size: 64, offset: 8768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !161, file: !162, line: 90, baseType: !438, size: 64, offset: 8832)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !161, file: !162, line: 91, baseType: !440, size: 64, offset: 8896)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !93, line: 652, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!159, !160, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !161, file: !162, line: 92, baseType: !446, size: 64, offset: 8960)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !93, line: 656, baseType: !156)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !152, file: !6, line: 153, baseType: !39, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !138, file: !6, line: 156, baseType: !75, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !138, file: !6, line: 157, baseType: !112, size: 16, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !138, file: !6, line: 158, baseType: !27, size: 8, offset: 432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !33, file: !6, line: 377, baseType: !452, size: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !6, line: 123, baseType: !39, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !6, line: 123, baseType: !27, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !6, line: 123, baseType: !27, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !6, line: 123, baseType: !43, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !6, line: 123, baseType: !27, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !452, file: !6, line: 123, baseType: !27, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !452, file: !6, line: 124, baseType: !43, size: 16, offset: 112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !452, file: !6, line: 125, baseType: !25, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !452, file: !6, line: 126, baseType: !60, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !452, file: !6, line: 127, baseType: !438, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !452, file: !6, line: 128, baseType: !39, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !6, line: 129, baseType: !39, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !6, line: 130, baseType: !91, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !452, file: !6, line: 131, baseType: !27, size: 8, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !33, file: !6, line: 378, baseType: !469, size: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482, !483}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !6, line: 135, baseType: !39, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !6, line: 135, baseType: !27, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !6, line: 135, baseType: !27, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !6, line: 135, baseType: !43, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !6, line: 135, baseType: !27, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !469, file: !6, line: 135, baseType: !27, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !6, line: 136, baseType: !91, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !6, line: 137, baseType: !39, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !6, line: 138, baseType: !39, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !469, file: !6, line: 139, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !113, line: 129, baseType: !60)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !469, file: !6, line: 140, baseType: !75, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !469, file: !6, line: 141, baseType: !25, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !33, file: !6, line: 379, baseType: !485, size: 320)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !496}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !6, line: 186, baseType: !39, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !6, line: 186, baseType: !27, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !6, line: 186, baseType: !27, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !6, line: 186, baseType: !43, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !6, line: 186, baseType: !27, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !6, line: 186, baseType: !493, size: 128, offset: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 2)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !6, line: 186, baseType: !39, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !33, file: !6, line: 380, baseType: !498, size: 384)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !6, line: 189, baseType: !39, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !6, line: 189, baseType: !27, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !6, line: 189, baseType: !27, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !6, line: 189, baseType: !43, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !6, line: 189, baseType: !27, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !498, file: !6, line: 190, baseType: !493, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !498, file: !6, line: 190, baseType: !39, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !498, file: !6, line: 190, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !93, line: 480, size: 576, elements: !510)
!510 = !{!511, !512, !513, !514, !522, !537, !569, !570, !571, !572, !573, !574}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !93, line: 481, baseType: !91, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !93, line: 482, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !93, line: 483, baseType: !508, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !509, file: !93, line: 484, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !93, line: 497, size: 256, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !516, file: !93, line: 498, baseType: !515, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !93, line: 499, baseType: !515, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !516, file: !93, line: 500, baseType: !508, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !516, file: !93, line: 501, baseType: !75, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !509, file: !93, line: 485, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !93, line: 466, size: 320, elements: !525)
!525 = !{!526, !531, !532, !533, !534, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !524, file: !93, line: 467, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !93, line: 459, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !527, file: !93, line: 460, baseType: !27, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !93, line: 461, baseType: !60, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !524, file: !93, line: 468, baseType: !527, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !524, file: !93, line: 469, baseType: !43, size: 16, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !524, file: !93, line: 470, baseType: !27, size: 8, offset: 272)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !524, file: !93, line: 471, baseType: !27, size: 8, offset: 280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !524, file: !93, line: 472, baseType: !27, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !524, file: !93, line: 473, baseType: !27, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !509, file: !93, line: 486, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !93, line: 448, size: 192, elements: !540)
!540 = !{!541, !564, !565, !566, !567, !568}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !539, file: !93, line: 449, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !93, line: 438, size: 64, elements: !543)
!543 = !{!544, !545, !558}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !93, line: 439, baseType: !91, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !93, line: 440, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !93, line: 419, size: 256, elements: !548)
!548 = !{!549, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !93, line: 420, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !113, line: 1058, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!75, !389, !75, !25}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !547, file: !93, line: 421, baseType: !25, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !93, line: 422, baseType: !91, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !547, file: !93, line: 423, baseType: !27, size: 8, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !547, file: !93, line: 424, baseType: !27, size: 8, offset: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !542, file: !93, line: 441, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !93, line: 429, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !560, file: !93, line: 430, baseType: !91, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !93, line: 431, baseType: !559, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !539, file: !93, line: 450, baseType: !523, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !93, line: 451, baseType: !27, size: 8, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !539, file: !93, line: 452, baseType: !27, size: 8, offset: 136)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !539, file: !93, line: 453, baseType: !27, size: 8, offset: 144)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !539, file: !93, line: 454, baseType: !27, size: 8, offset: 152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !509, file: !93, line: 487, baseType: !60, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !509, file: !93, line: 488, baseType: !75, size: 32, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !509, file: !93, line: 489, baseType: !43, size: 16, offset: 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !509, file: !93, line: 490, baseType: !43, size: 16, offset: 496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !509, file: !93, line: 491, baseType: !27, size: 8, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !509, file: !93, line: 492, baseType: !27, size: 8, offset: 520)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !33, file: !6, line: 381, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !6, line: 194, baseType: !39, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !6, line: 194, baseType: !27, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !6, line: 194, baseType: !27, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !6, line: 194, baseType: !43, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !6, line: 194, baseType: !27, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !6, line: 194, baseType: !493, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !6, line: 194, baseType: !39, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !576, file: !6, line: 194, baseType: !75, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !576, file: !6, line: 195, baseType: !75, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !33, file: !6, line: 382, baseType: !588, size: 384)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !6, line: 199, baseType: !39, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !6, line: 199, baseType: !27, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !6, line: 199, baseType: !27, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !6, line: 199, baseType: !43, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !6, line: 199, baseType: !27, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !588, file: !6, line: 201, baseType: !27, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !6, line: 202, baseType: !27, size: 8, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !6, line: 203, baseType: !493, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !6, line: 203, baseType: !39, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !588, file: !6, line: 203, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !113, line: 128, baseType: !60)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !33, file: !6, line: 383, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !6, line: 207, baseType: !39, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !6, line: 207, baseType: !27, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !6, line: 207, baseType: !27, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !6, line: 207, baseType: !43, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !6, line: 207, baseType: !27, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !6, line: 207, baseType: !493, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !6, line: 207, baseType: !39, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !33, file: !6, line: 384, baseType: !612, size: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !6, line: 235, baseType: !39, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !6, line: 235, baseType: !27, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !6, line: 235, baseType: !27, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !6, line: 235, baseType: !43, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !6, line: 235, baseType: !27, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !6, line: 235, baseType: !27, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !6, line: 235, baseType: !27, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !6, line: 235, baseType: !27, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !6, line: 235, baseType: !91, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !6, line: 235, baseType: !75, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !6, line: 235, baseType: !75, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !6, line: 235, baseType: !75, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !6, line: 235, baseType: !27, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !6, line: 235, baseType: !27, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !6, line: 235, baseType: !39, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !33, file: !6, line: 385, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 239, baseType: !39, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 239, baseType: !27, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 239, baseType: !27, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 239, baseType: !43, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 239, baseType: !27, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 239, baseType: !27, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 239, baseType: !27, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 239, baseType: !27, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 239, baseType: !91, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 239, baseType: !75, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 239, baseType: !75, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 239, baseType: !75, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 239, baseType: !27, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 239, baseType: !27, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !6, line: 239, baseType: !43, size: 16, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !630, file: !6, line: 240, baseType: !39, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !630, file: !6, line: 241, baseType: !86, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !630, file: !6, line: 242, baseType: !43, size: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !630, file: !6, line: 243, baseType: !86, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !33, file: !6, line: 386, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !6, line: 264, baseType: !39, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !6, line: 264, baseType: !27, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !6, line: 264, baseType: !27, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !6, line: 264, baseType: !43, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !6, line: 264, baseType: !27, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !6, line: 264, baseType: !27, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !6, line: 264, baseType: !27, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !6, line: 264, baseType: !27, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !6, line: 264, baseType: !91, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !6, line: 264, baseType: !75, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !6, line: 264, baseType: !75, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !6, line: 264, baseType: !75, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !6, line: 264, baseType: !27, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !6, line: 264, baseType: !27, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !652, file: !6, line: 264, baseType: !27, size: 8, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !652, file: !6, line: 265, baseType: !39, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !33, file: !6, line: 387, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !6, line: 247, baseType: !39, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !6, line: 247, baseType: !27, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !6, line: 247, baseType: !27, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !6, line: 247, baseType: !43, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !6, line: 247, baseType: !27, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !6, line: 247, baseType: !27, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !6, line: 247, baseType: !27, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !6, line: 247, baseType: !27, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !6, line: 247, baseType: !91, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !6, line: 247, baseType: !75, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !6, line: 247, baseType: !75, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !6, line: 247, baseType: !75, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !6, line: 247, baseType: !27, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !6, line: 247, baseType: !27, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !6, line: 247, baseType: !39, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !671, file: !6, line: 248, baseType: !39, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !33, file: !6, line: 388, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !6, line: 252, baseType: !39, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !6, line: 252, baseType: !27, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !6, line: 252, baseType: !27, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !6, line: 252, baseType: !43, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !6, line: 252, baseType: !27, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !6, line: 252, baseType: !27, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !6, line: 252, baseType: !27, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !6, line: 252, baseType: !27, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !6, line: 252, baseType: !91, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !6, line: 252, baseType: !75, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !6, line: 252, baseType: !75, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !6, line: 252, baseType: !75, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !6, line: 252, baseType: !27, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !6, line: 252, baseType: !27, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !690, file: !6, line: 257, baseType: !39, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !690, file: !6, line: 258, baseType: !39, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !33, file: !6, line: 389, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !6, line: 275, baseType: !39, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !6, line: 275, baseType: !27, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !6, line: 275, baseType: !27, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !6, line: 275, baseType: !43, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !6, line: 275, baseType: !27, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 275, baseType: !91, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !709, file: !6, line: 276, baseType: !75, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !6, line: 277, baseType: !385, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !6, line: 278, baseType: !25, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !6, line: 279, baseType: !493, size: 128, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !33, file: !6, line: 390, baseType: !722, size: 576)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !737, !738, !739, !740, !746, !747}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !6, line: 283, baseType: !39, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !6, line: 283, baseType: !27, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !6, line: 283, baseType: !27, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !6, line: 283, baseType: !43, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !6, line: 283, baseType: !27, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !722, file: !6, line: 283, baseType: !27, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !722, file: !6, line: 284, baseType: !27, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !722, file: !6, line: 285, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !113, line: 1093, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!159, !75, !481, !75, !736, !25, !25}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !6, line: 286, baseType: !91, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !722, file: !6, line: 287, baseType: !25, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !722, file: !6, line: 288, baseType: !25, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !722, file: !6, line: 289, baseType: !741, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !113, line: 1126, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!159, !389, !75, !25, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !722, file: !6, line: 290, baseType: !39, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !6, line: 291, baseType: !39, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !33, file: !6, line: 391, baseType: !749, size: 512)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !6, line: 310, baseType: !39, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !6, line: 310, baseType: !27, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !6, line: 310, baseType: !27, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !6, line: 310, baseType: !43, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !6, line: 310, baseType: !27, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !749, file: !6, line: 310, baseType: !27, size: 8, offset: 104)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !749, file: !6, line: 311, baseType: !27, size: 8, offset: 112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !749, file: !6, line: 312, baseType: !27, size: 8, offset: 120)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !749, file: !6, line: 313, baseType: !25, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !6, line: 314, baseType: !91, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !749, file: !6, line: 315, baseType: !124, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !749, file: !6, line: 316, baseType: !86, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !749, file: !6, line: 317, baseType: !86, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !749, file: !6, line: 318, baseType: !75, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !33, file: !6, line: 392, baseType: !766, size: 448)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !6, line: 343, baseType: !39, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !6, line: 343, baseType: !27, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !6, line: 343, baseType: !27, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !6, line: 343, baseType: !43, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !6, line: 343, baseType: !27, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !766, file: !6, line: 343, baseType: !91, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !766, file: !6, line: 344, baseType: !91, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !766, file: !6, line: 345, baseType: !25, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !766, file: !6, line: 346, baseType: !86, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !766, file: !6, line: 347, baseType: !75, size: 32, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !6, line: 393, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !6, line: 353, baseType: !39, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !6, line: 353, baseType: !27, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !6, line: 353, baseType: !27, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !6, line: 353, baseType: !43, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !6, line: 353, baseType: !27, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !779, file: !6, line: 353, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !113, line: 1064, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !389, !25}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !779, file: !6, line: 354, baseType: !25, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !33, file: !6, line: 394, baseType: !793, size: 192)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !793, file: !6, line: 360, baseType: !39, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !793, file: !6, line: 360, baseType: !27, size: 8, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !6, line: 360, baseType: !27, size: 8, offset: 72)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !793, file: !6, line: 360, baseType: !43, size: 16, offset: 80)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !6, line: 360, baseType: !27, size: 8, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !793, file: !6, line: 360, baseType: !39, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !33, file: !6, line: 401, baseType: !92, size: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !19, file: !6, line: 437, baseType: !92, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !19, file: !6, line: 438, baseType: !195, size: 1600)
!804 = !{!805, !810, !815, !820, !825, !0}
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 32)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 232, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 29)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 280, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 35)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 316, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 360, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 45)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 240, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 30)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !831, size: 56, elements: !399)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!832 = !{i32 7, !"Dwarf Version", i32 5}
!833 = !{i32 2, !"Debug Info Version", i32 3}
!834 = !{i32 1, !"wchar_size", i32 2}
!835 = !{i32 8, !"cf-protection-branch", i32 1}
!836 = !{i32 4, !"function_return_thunk_extern", i32 1}
!837 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!838 = !{i32 1, !"Code Model", i32 2}
!839 = !{i32 1, !"override-stack-alignment", i32 8}
!840 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!841 = distinct !DISubprogram(name: "acpi_ex_get_object_reference", scope: !3, file: !3, line: 33, type: !842, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!159, !39, !124, !160}
!844 = !{!845, !846, !847, !848, !849}
!845 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !841, file: !3, line: 33, type: !39)
!846 = !DILocalVariable(name: "return_desc", arg: 2, scope: !841, file: !3, line: 34, type: !124)
!847 = !DILocalVariable(name: "walk_state", arg: 3, scope: !841, file: !3, line: 35, type: !160)
!848 = !DILocalVariable(name: "reference_obj", scope: !841, file: !3, line: 37, type: !39)
!849 = !DILocalVariable(name: "referenced_obj", scope: !841, file: !3, line: 38, type: !39)
!850 = !DILocation(line: 33, column: 57, scope: !841)
!851 = !DILocation(line: 34, column: 37, scope: !841)
!852 = !DILocation(line: 35, column: 33, scope: !841)
!853 = !DILocation(line: 37, column: 2, scope: !841)
!854 = !DILocation(line: 37, column: 29, scope: !841)
!855 = !DILocation(line: 38, column: 2, scope: !841)
!856 = !DILocation(line: 38, column: 29, scope: !841)
!857 = !DILocation(line: 42, column: 3, scope: !841)
!858 = !DILocation(line: 42, column: 15, scope: !841)
!859 = !DILocation(line: 44, column: 10, scope: !841)
!860 = !DILocation(line: 44, column: 2, scope: !841)
!861 = !DILocation(line: 47, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 47, column: 7)
!863 = distinct !DILexicalBlock(scope: !841, file: !3, line: 44, column: 46)
!864 = !DILocation(line: 47, column: 24, scope: !862)
!865 = !DILocation(line: 47, column: 29, scope: !862)
!866 = !DILocation(line: 47, column: 7, scope: !863)
!867 = !DILocation(line: 48, column: 4, scope: !868)
!868 = distinct !DILexicalBlock(scope: !862, file: !3, line: 47, column: 59)
!869 = !DILocation(line: 54, column: 11, scope: !863)
!870 = !DILocation(line: 54, column: 31, scope: !863)
!871 = !DILocation(line: 54, column: 3, scope: !863)
!872 = !DILocation(line: 61, column: 21, scope: !873)
!873 = distinct !DILexicalBlock(scope: !863, file: !3, line: 54, column: 38)
!874 = !DILocation(line: 61, column: 41, scope: !873)
!875 = !DILocation(line: 61, column: 19, scope: !873)
!876 = !DILocation(line: 62, column: 4, scope: !873)
!877 = !DILocation(line: 66, column: 4, scope: !873)
!878 = !DILocation(line: 68, column: 4, scope: !873)
!879 = !DILocation(line: 70, column: 3, scope: !863)
!880 = !DILocation(line: 76, column: 20, scope: !863)
!881 = !DILocation(line: 76, column: 18, scope: !863)
!882 = !DILocation(line: 77, column: 3, scope: !863)
!883 = !DILocation(line: 81, column: 3, scope: !863)
!884 = !DILocation(line: 83, column: 3, scope: !863)
!885 = !DILocation(line: 89, column: 6, scope: !841)
!886 = !DILocation(line: 88, column: 16, scope: !841)
!887 = !DILocation(line: 90, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !841, file: !3, line: 90, column: 6)
!889 = !DILocation(line: 90, column: 6, scope: !841)
!890 = !DILocation(line: 91, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !3, line: 90, column: 22)
!892 = !DILocation(line: 94, column: 2, scope: !841)
!893 = !DILocation(line: 94, column: 27, scope: !841)
!894 = !DILocation(line: 94, column: 33, scope: !841)
!895 = !DILocation(line: 95, column: 36, scope: !841)
!896 = !DILocation(line: 95, column: 2, scope: !841)
!897 = !DILocation(line: 95, column: 27, scope: !841)
!898 = !DILocation(line: 95, column: 34, scope: !841)
!899 = !DILocation(line: 96, column: 17, scope: !841)
!900 = !DILocation(line: 96, column: 3, scope: !841)
!901 = !DILocation(line: 96, column: 15, scope: !841)
!902 = !DILocation(line: 103, column: 2, scope: !841)
!903 = !DILocation(line: 104, column: 1, scope: !841)
!904 = !DISubprogram(name: "acpi_error", scope: !905, file: !905, line: 901, type: !906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!905 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!906 = !DISubroutineType(types: !907)
!907 = !{null, !908, !75, !908, null}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!909 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !910, file: !910, line: 436, type: !911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!910 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!911 = !DISubroutineType(types: !912)
!912 = !{!39, !908, !75, !75, !913}
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !113, line: 644, baseType: !75)
!914 = distinct !DISubprogram(name: "acpi_ex_do_math_op", scope: !3, file: !3, line: 122, type: !915, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!60, !43, !60, !60}
!917 = !{!918, !919, !920}
!918 = !DILocalVariable(name: "opcode", arg: 1, scope: !914, file: !3, line: 122, type: !43)
!919 = !DILocalVariable(name: "integer0", arg: 2, scope: !914, file: !3, line: 122, type: !60)
!920 = !DILocalVariable(name: "integer1", arg: 3, scope: !914, file: !3, line: 122, type: !60)
!921 = !DILocation(line: 122, column: 28, scope: !914)
!922 = !DILocation(line: 122, column: 40, scope: !914)
!923 = !DILocation(line: 122, column: 54, scope: !914)
!924 = !DILocation(line: 127, column: 10, scope: !914)
!925 = !DILocation(line: 127, column: 2, scope: !914)
!926 = !DILocation(line: 130, column: 11, scope: !927)
!927 = distinct !DILexicalBlock(scope: !914, file: !3, line: 127, column: 18)
!928 = !DILocation(line: 130, column: 22, scope: !927)
!929 = !DILocation(line: 130, column: 20, scope: !927)
!930 = !DILocation(line: 130, column: 3, scope: !927)
!931 = !DILocation(line: 134, column: 11, scope: !927)
!932 = !DILocation(line: 134, column: 22, scope: !927)
!933 = !DILocation(line: 134, column: 20, scope: !927)
!934 = !DILocation(line: 134, column: 3, scope: !927)
!935 = !DILocation(line: 138, column: 13, scope: !927)
!936 = !DILocation(line: 138, column: 24, scope: !927)
!937 = !DILocation(line: 138, column: 22, scope: !927)
!938 = !DILocation(line: 138, column: 11, scope: !927)
!939 = !DILocation(line: 138, column: 3, scope: !927)
!940 = !DILocation(line: 142, column: 11, scope: !927)
!941 = !DILocation(line: 142, column: 22, scope: !927)
!942 = !DILocation(line: 142, column: 20, scope: !927)
!943 = !DILocation(line: 142, column: 3, scope: !927)
!944 = !DILocation(line: 146, column: 13, scope: !927)
!945 = !DILocation(line: 146, column: 24, scope: !927)
!946 = !DILocation(line: 146, column: 22, scope: !927)
!947 = !DILocation(line: 146, column: 11, scope: !927)
!948 = !DILocation(line: 146, column: 3, scope: !927)
!949 = !DILocation(line: 150, column: 11, scope: !927)
!950 = !DILocation(line: 150, column: 22, scope: !927)
!951 = !DILocation(line: 150, column: 20, scope: !927)
!952 = !DILocation(line: 150, column: 3, scope: !927)
!953 = !DILocation(line: 154, column: 11, scope: !927)
!954 = !DILocation(line: 154, column: 22, scope: !927)
!955 = !DILocation(line: 154, column: 20, scope: !927)
!956 = !DILocation(line: 154, column: 3, scope: !927)
!957 = !DILocation(line: 162, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !927, file: !3, line: 162, column: 7)
!959 = !DILocation(line: 162, column: 19, scope: !958)
!960 = !DILocation(line: 162, column: 16, scope: !958)
!961 = !DILocation(line: 162, column: 7, scope: !927)
!962 = !DILocation(line: 163, column: 4, scope: !963)
!963 = distinct !DILexicalBlock(scope: !958, file: !3, line: 162, column: 47)
!964 = !DILocation(line: 165, column: 11, scope: !927)
!965 = !DILocation(line: 165, column: 23, scope: !927)
!966 = !DILocation(line: 165, column: 20, scope: !927)
!967 = !DILocation(line: 165, column: 3, scope: !927)
!968 = !DILocation(line: 173, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !927, file: !3, line: 173, column: 7)
!970 = !DILocation(line: 173, column: 19, scope: !969)
!971 = !DILocation(line: 173, column: 16, scope: !969)
!972 = !DILocation(line: 173, column: 7, scope: !927)
!973 = !DILocation(line: 174, column: 4, scope: !974)
!974 = distinct !DILexicalBlock(scope: !969, file: !3, line: 173, column: 47)
!975 = !DILocation(line: 176, column: 11, scope: !927)
!976 = !DILocation(line: 176, column: 23, scope: !927)
!977 = !DILocation(line: 176, column: 20, scope: !927)
!978 = !DILocation(line: 176, column: 3, scope: !927)
!979 = !DILocation(line: 180, column: 11, scope: !927)
!980 = !DILocation(line: 180, column: 22, scope: !927)
!981 = !DILocation(line: 180, column: 20, scope: !927)
!982 = !DILocation(line: 180, column: 3, scope: !927)
!983 = !DILocation(line: 184, column: 3, scope: !927)
!984 = !DILocation(line: 186, column: 1, scope: !914)
!985 = distinct !DISubprogram(name: "acpi_ex_do_logical_numeric_op", scope: !3, file: !3, line: 209, type: !986, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{!159, !43, !60, !60, !86}
!988 = !{!989, !990, !991, !992, !993, !994}
!989 = !DILocalVariable(name: "opcode", arg: 1, scope: !985, file: !3, line: 209, type: !43)
!990 = !DILocalVariable(name: "integer0", arg: 2, scope: !985, file: !3, line: 210, type: !60)
!991 = !DILocalVariable(name: "integer1", arg: 3, scope: !985, file: !3, line: 210, type: !60)
!992 = !DILocalVariable(name: "logical_result", arg: 4, scope: !985, file: !3, line: 210, type: !86)
!993 = !DILocalVariable(name: "status", scope: !985, file: !3, line: 212, type: !159)
!994 = !DILocalVariable(name: "local_result", scope: !985, file: !3, line: 213, type: !27)
!995 = !DILocation(line: 209, column: 35, scope: !985)
!996 = !DILocation(line: 210, column: 14, scope: !985)
!997 = !DILocation(line: 210, column: 28, scope: !985)
!998 = !DILocation(line: 210, column: 42, scope: !985)
!999 = !DILocation(line: 212, column: 2, scope: !985)
!1000 = !DILocation(line: 212, column: 14, scope: !985)
!1001 = !DILocation(line: 213, column: 2, scope: !985)
!1002 = !DILocation(line: 213, column: 5, scope: !985)
!1003 = !DILocation(line: 217, column: 10, scope: !985)
!1004 = !DILocation(line: 217, column: 2, scope: !985)
!1005 = !DILocation(line: 220, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 220, column: 7)
!1007 = distinct !DILexicalBlock(scope: !985, file: !3, line: 217, column: 18)
!1008 = !DILocation(line: 220, column: 16, scope: !1006)
!1009 = !DILocation(line: 220, column: 19, scope: !1006)
!1010 = !DILocation(line: 220, column: 7, scope: !1007)
!1011 = !DILocation(line: 221, column: 17, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 220, column: 29)
!1013 = !DILocation(line: 222, column: 3, scope: !1012)
!1014 = !DILocation(line: 223, column: 3, scope: !1007)
!1015 = !DILocation(line: 227, column: 7, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 227, column: 7)
!1017 = !DILocation(line: 227, column: 16, scope: !1016)
!1018 = !DILocation(line: 227, column: 19, scope: !1016)
!1019 = !DILocation(line: 227, column: 7, scope: !1007)
!1020 = !DILocation(line: 228, column: 17, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 227, column: 29)
!1022 = !DILocation(line: 229, column: 3, scope: !1021)
!1023 = !DILocation(line: 230, column: 3, scope: !1007)
!1024 = !DILocation(line: 234, column: 3, scope: !1007)
!1025 = !DILocation(line: 236, column: 10, scope: !1007)
!1026 = !DILocation(line: 237, column: 3, scope: !1007)
!1027 = !DILocation(line: 242, column: 20, scope: !985)
!1028 = !DILocation(line: 242, column: 3, scope: !985)
!1029 = !DILocation(line: 242, column: 18, scope: !985)
!1030 = !DILocation(line: 243, column: 2, scope: !985)
!1031 = !DILocation(line: 244, column: 1, scope: !985)
!1032 = distinct !DISubprogram(name: "acpi_ex_do_logical_op", scope: !3, file: !3, line: 273, type: !1033, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1035)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!159, !43, !39, !39, !86}
!1035 = !{!1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1049}
!1036 = !DILocalVariable(name: "opcode", arg: 1, scope: !1032, file: !3, line: 273, type: !43)
!1037 = !DILocalVariable(name: "operand0", arg: 2, scope: !1032, file: !3, line: 274, type: !39)
!1038 = !DILocalVariable(name: "operand1", arg: 3, scope: !1032, file: !3, line: 275, type: !39)
!1039 = !DILocalVariable(name: "logical_result", arg: 4, scope: !1032, file: !3, line: 275, type: !86)
!1040 = !DILocalVariable(name: "local_operand1", scope: !1032, file: !3, line: 277, type: !39)
!1041 = !DILocalVariable(name: "integer0", scope: !1032, file: !3, line: 278, type: !60)
!1042 = !DILocalVariable(name: "integer1", scope: !1032, file: !3, line: 279, type: !60)
!1043 = !DILocalVariable(name: "length0", scope: !1032, file: !3, line: 280, type: !75)
!1044 = !DILocalVariable(name: "length1", scope: !1032, file: !3, line: 281, type: !75)
!1045 = !DILocalVariable(name: "status", scope: !1032, file: !3, line: 282, type: !159)
!1046 = !DILocalVariable(name: "local_result", scope: !1032, file: !3, line: 283, type: !27)
!1047 = !DILocalVariable(name: "compare", scope: !1032, file: !3, line: 284, type: !1048)
!1048 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1049 = !DILabel(scope: !1032, name: "cleanup", file: !3, line: 439)
!1050 = !DILocation(line: 273, column: 27, scope: !1032)
!1051 = !DILocation(line: 274, column: 36, scope: !1032)
!1052 = !DILocation(line: 275, column: 36, scope: !1032)
!1053 = !DILocation(line: 275, column: 51, scope: !1032)
!1054 = !DILocation(line: 277, column: 2, scope: !1032)
!1055 = !DILocation(line: 277, column: 29, scope: !1032)
!1056 = !DILocation(line: 277, column: 46, scope: !1032)
!1057 = !DILocation(line: 278, column: 2, scope: !1032)
!1058 = !DILocation(line: 278, column: 6, scope: !1032)
!1059 = !DILocation(line: 279, column: 2, scope: !1032)
!1060 = !DILocation(line: 279, column: 6, scope: !1032)
!1061 = !DILocation(line: 280, column: 2, scope: !1032)
!1062 = !DILocation(line: 280, column: 6, scope: !1032)
!1063 = !DILocation(line: 281, column: 2, scope: !1032)
!1064 = !DILocation(line: 281, column: 6, scope: !1032)
!1065 = !DILocation(line: 282, column: 2, scope: !1032)
!1066 = !DILocation(line: 282, column: 14, scope: !1032)
!1067 = !DILocation(line: 283, column: 2, scope: !1032)
!1068 = !DILocation(line: 283, column: 5, scope: !1032)
!1069 = !DILocation(line: 284, column: 2, scope: !1032)
!1070 = !DILocation(line: 284, column: 6, scope: !1032)
!1071 = !DILocation(line: 295, column: 10, scope: !1032)
!1072 = !DILocation(line: 295, column: 27, scope: !1032)
!1073 = !DILocation(line: 295, column: 2, scope: !1032)
!1074 = !DILocation(line: 298, column: 39, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 295, column: 33)
!1076 = !DILocation(line: 298, column: 12, scope: !1075)
!1077 = !DILocation(line: 298, column: 10, scope: !1075)
!1078 = !DILocation(line: 300, column: 3, scope: !1075)
!1079 = !DILocation(line: 305, column: 33, scope: !1075)
!1080 = !DILocation(line: 305, column: 7, scope: !1075)
!1081 = !DILocation(line: 304, column: 10, scope: !1075)
!1082 = !DILocation(line: 307, column: 3, scope: !1075)
!1083 = !DILocation(line: 311, column: 38, scope: !1075)
!1084 = !DILocation(line: 311, column: 12, scope: !1075)
!1085 = !DILocation(line: 311, column: 10, scope: !1075)
!1086 = !DILocation(line: 312, column: 3, scope: !1075)
!1087 = !DILocation(line: 316, column: 3, scope: !1075)
!1088 = !DILocation(line: 319, column: 10, scope: !1075)
!1089 = !DILocation(line: 320, column: 3, scope: !1075)
!1090 = !DILocation(line: 323, column: 6, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 323, column: 6)
!1092 = !DILocation(line: 323, column: 6, scope: !1032)
!1093 = !DILocation(line: 324, column: 3, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 323, column: 28)
!1095 = !DILocation(line: 330, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 330, column: 6)
!1097 = !DILocation(line: 330, column: 23, scope: !1096)
!1098 = !DILocation(line: 330, column: 28, scope: !1096)
!1099 = !DILocation(line: 330, column: 6, scope: !1032)
!1100 = !DILocation(line: 335, column: 14, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 330, column: 50)
!1102 = !DILocation(line: 335, column: 32, scope: !1101)
!1103 = !DILocation(line: 335, column: 12, scope: !1101)
!1104 = !DILocation(line: 336, column: 14, scope: !1101)
!1105 = !DILocation(line: 336, column: 38, scope: !1101)
!1106 = !DILocation(line: 336, column: 12, scope: !1101)
!1107 = !DILocation(line: 338, column: 11, scope: !1101)
!1108 = !DILocation(line: 338, column: 3, scope: !1101)
!1109 = !DILocation(line: 341, column: 8, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 341, column: 8)
!1111 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 338, column: 19)
!1112 = !DILocation(line: 341, column: 20, scope: !1110)
!1113 = !DILocation(line: 341, column: 17, scope: !1110)
!1114 = !DILocation(line: 341, column: 8, scope: !1111)
!1115 = !DILocation(line: 342, column: 18, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 341, column: 30)
!1117 = !DILocation(line: 343, column: 4, scope: !1116)
!1118 = !DILocation(line: 344, column: 4, scope: !1111)
!1119 = !DILocation(line: 348, column: 8, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 348, column: 8)
!1121 = !DILocation(line: 348, column: 19, scope: !1120)
!1122 = !DILocation(line: 348, column: 17, scope: !1120)
!1123 = !DILocation(line: 348, column: 8, scope: !1111)
!1124 = !DILocation(line: 349, column: 18, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 348, column: 29)
!1126 = !DILocation(line: 350, column: 4, scope: !1125)
!1127 = !DILocation(line: 351, column: 4, scope: !1111)
!1128 = !DILocation(line: 355, column: 8, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 355, column: 8)
!1130 = !DILocation(line: 355, column: 19, scope: !1129)
!1131 = !DILocation(line: 355, column: 17, scope: !1129)
!1132 = !DILocation(line: 355, column: 8, scope: !1111)
!1133 = !DILocation(line: 356, column: 18, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 355, column: 29)
!1135 = !DILocation(line: 357, column: 4, scope: !1134)
!1136 = !DILocation(line: 358, column: 4, scope: !1111)
!1137 = !DILocation(line: 362, column: 4, scope: !1111)
!1138 = !DILocation(line: 364, column: 11, scope: !1111)
!1139 = !DILocation(line: 365, column: 4, scope: !1111)
!1140 = !DILocation(line: 367, column: 2, scope: !1101)
!1141 = !DILocation(line: 374, column: 13, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 367, column: 9)
!1143 = !DILocation(line: 374, column: 30, scope: !1142)
!1144 = !DILocation(line: 374, column: 11, scope: !1142)
!1145 = !DILocation(line: 375, column: 13, scope: !1142)
!1146 = !DILocation(line: 375, column: 36, scope: !1142)
!1147 = !DILocation(line: 375, column: 11, scope: !1142)
!1148 = !DILocation(line: 379, column: 20, scope: !1142)
!1149 = !DILocation(line: 379, column: 37, scope: !1142)
!1150 = !DILocation(line: 380, column: 6, scope: !1142)
!1151 = !DILocation(line: 380, column: 29, scope: !1142)
!1152 = !DILocation(line: 381, column: 7, scope: !1142)
!1153 = !DILocation(line: 381, column: 17, scope: !1142)
!1154 = !DILocation(line: 381, column: 15, scope: !1142)
!1155 = !DILocation(line: 381, column: 6, scope: !1142)
!1156 = !DILocation(line: 381, column: 28, scope: !1142)
!1157 = !DILocation(line: 381, column: 38, scope: !1142)
!1158 = !DILocation(line: 379, column: 13, scope: !1142)
!1159 = !DILocation(line: 379, column: 11, scope: !1142)
!1160 = !DILocation(line: 383, column: 11, scope: !1142)
!1161 = !DILocation(line: 383, column: 3, scope: !1142)
!1162 = !DILocation(line: 388, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 388, column: 8)
!1164 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 383, column: 19)
!1165 = !DILocation(line: 388, column: 20, scope: !1163)
!1166 = !DILocation(line: 388, column: 17, scope: !1163)
!1167 = !DILocation(line: 388, column: 29, scope: !1163)
!1168 = !DILocation(line: 388, column: 33, scope: !1163)
!1169 = !DILocation(line: 388, column: 41, scope: !1163)
!1170 = !DILocation(line: 388, column: 8, scope: !1164)
!1171 = !DILocation(line: 392, column: 18, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 388, column: 48)
!1173 = !DILocation(line: 393, column: 4, scope: !1172)
!1174 = !DILocation(line: 394, column: 4, scope: !1164)
!1175 = !DILocation(line: 398, column: 8, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 398, column: 8)
!1177 = !DILocation(line: 398, column: 16, scope: !1176)
!1178 = !DILocation(line: 398, column: 8, scope: !1164)
!1179 = !DILocation(line: 399, column: 18, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 398, column: 21)
!1181 = !DILocation(line: 400, column: 5, scope: !1180)
!1182 = !DILocation(line: 402, column: 8, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 402, column: 8)
!1184 = !DILocation(line: 402, column: 16, scope: !1183)
!1185 = !DILocation(line: 402, column: 8, scope: !1164)
!1186 = !DILocation(line: 403, column: 5, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 402, column: 21)
!1188 = !DILocation(line: 408, column: 8, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 408, column: 8)
!1190 = !DILocation(line: 408, column: 18, scope: !1189)
!1191 = !DILocation(line: 408, column: 16, scope: !1189)
!1192 = !DILocation(line: 408, column: 8, scope: !1164)
!1193 = !DILocation(line: 409, column: 18, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 408, column: 27)
!1195 = !DILocation(line: 410, column: 4, scope: !1194)
!1196 = !DILocation(line: 411, column: 4, scope: !1164)
!1197 = !DILocation(line: 415, column: 8, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 415, column: 8)
!1199 = !DILocation(line: 415, column: 16, scope: !1198)
!1200 = !DILocation(line: 415, column: 8, scope: !1164)
!1201 = !DILocation(line: 416, column: 5, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 415, column: 21)
!1203 = !DILocation(line: 418, column: 8, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 418, column: 8)
!1205 = !DILocation(line: 418, column: 16, scope: !1204)
!1206 = !DILocation(line: 418, column: 8, scope: !1164)
!1207 = !DILocation(line: 419, column: 18, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 418, column: 21)
!1209 = !DILocation(line: 420, column: 5, scope: !1208)
!1210 = !DILocation(line: 425, column: 8, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 425, column: 8)
!1212 = !DILocation(line: 425, column: 18, scope: !1211)
!1213 = !DILocation(line: 425, column: 16, scope: !1211)
!1214 = !DILocation(line: 425, column: 8, scope: !1164)
!1215 = !DILocation(line: 426, column: 18, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 425, column: 27)
!1217 = !DILocation(line: 427, column: 4, scope: !1216)
!1218 = !DILocation(line: 428, column: 4, scope: !1164)
!1219 = !DILocation(line: 432, column: 4, scope: !1164)
!1220 = !DILocation(line: 434, column: 11, scope: !1164)
!1221 = !DILocation(line: 435, column: 4, scope: !1164)
!1222 = !DILocation(line: 330, column: 31, scope: !1096)
!1223 = !DILocation(line: 439, column: 1, scope: !1032)
!1224 = !DILocation(line: 443, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 443, column: 6)
!1226 = !DILocation(line: 443, column: 24, scope: !1225)
!1227 = !DILocation(line: 443, column: 21, scope: !1225)
!1228 = !DILocation(line: 443, column: 6, scope: !1032)
!1229 = !DILocation(line: 444, column: 28, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 443, column: 34)
!1231 = !DILocation(line: 444, column: 3, scope: !1230)
!1232 = !DILocation(line: 445, column: 2, scope: !1230)
!1233 = !DILocation(line: 449, column: 20, scope: !1032)
!1234 = !DILocation(line: 449, column: 3, scope: !1032)
!1235 = !DILocation(line: 449, column: 18, scope: !1032)
!1236 = !DILocation(line: 450, column: 2, scope: !1032)
!1237 = !DILocation(line: 451, column: 1, scope: !1032)
!1238 = !DISubprogram(name: "acpi_ex_convert_to_integer", scope: !1239, file: !1239, line: 69, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!159, !39, !124, !75}
!1242 = !DISubprogram(name: "acpi_ex_convert_to_string", scope: !1239, file: !1239, line: 78, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !DISubprogram(name: "acpi_ex_convert_to_buffer", scope: !1239, file: !1239, line: 74, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!159, !39, !124}
!1246 = !DISubprogram(name: "memcmp", scope: !1247, file: !1247, line: 196, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!1048, !1250, !1250, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1253, line: 72, baseType: !1254)
!1253 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1253, line: 16, baseType: !1255)
!1255 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1256 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !910, file: !910, line: 369, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !39}
