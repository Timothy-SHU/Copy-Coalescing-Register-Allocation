; ModuleID = 'drivers/acpi/acpica/pstree.c'
source_filename = "drivers/acpi/acpica/pstree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }

@_acpi_module_name = internal constant [7 x i8] c"pstree\00", align 1, !dbg !0
@.str = private unnamed_addr constant [28 x i8] c"Invalid AML Opcode: 0x%2.2X\00", align 1, !dbg !5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ps_get_arg(ptr noundef %op, i32 noundef %argn) #0 align 16 !dbg !24 {
entry:
  %retval = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %argn.addr = alloca i32, align 4
  %arg = alloca ptr, align 8
  %op_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !802, metadata !DIExpression()), !dbg !806
  store i32 %argn, ptr %argn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %argn.addr, metadata !803, metadata !DIExpression()), !dbg !807
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #4, !dbg !808
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !804, metadata !DIExpression()), !dbg !809
  store ptr null, ptr %arg, align 8, !dbg !809
  call void @llvm.lifetime.start.p0(i64 8, ptr %op_info) #4, !dbg !810
  call void @llvm.dbg.declare(metadata ptr %op_info, metadata !805, metadata !DIExpression()), !dbg !811
  %0 = load ptr, ptr %op.addr, align 8, !dbg !812
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 3, !dbg !813
  %1 = load i16, ptr %aml_opcode, align 2, !dbg !813
  %call = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %1) #5, !dbg !814
  store ptr %call, ptr %op_info, align 8, !dbg !815
  %2 = load ptr, ptr %op_info, align 8, !dbg !816
  %class = getelementptr inbounds %struct.acpi_opcode_info, ptr %2, i32 0, i32 4, !dbg !818
  %3 = load i8, ptr %class, align 1, !dbg !818
  %conv = zext i8 %3 to i32, !dbg !816
  %cmp = icmp eq i32 %conv, 10, !dbg !819
  br i1 %cmp, label %if.then, label %if.end, !dbg !820

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !821

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %op_info, align 8, !dbg !823
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %4, i32 0, i32 2, !dbg !825
  %5 = load i16, ptr %flags, align 4, !dbg !825
  %conv2 = zext i16 %5 to i32, !dbg !823
  %and = and i32 %conv2, 4096, !dbg !826
  %tobool = icmp ne i32 %and, 0, !dbg !826
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !827

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !828
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !828

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %op.addr, align 8, !dbg !830
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %6, i32 0, i32 7, !dbg !831
  %7 = load ptr, ptr %value, align 8, !dbg !832
  store ptr %7, ptr %arg, align 8, !dbg !833
  br label %while.cond, !dbg !834

while.cond:                                       ; preds = %while.body, %if.end4
  %8 = load ptr, ptr %arg, align 8, !dbg !835
  %tobool5 = icmp ne ptr %8, null, !dbg !835
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !836

land.rhs:                                         ; preds = %while.cond
  %9 = load i32, ptr %argn.addr, align 4, !dbg !837
  %tobool6 = icmp ne i32 %9, 0, !dbg !836
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool6, %land.rhs ], !dbg !838
  br i1 %10, label %while.body, label %while.end, !dbg !834

while.body:                                       ; preds = %land.end
  %11 = load i32, ptr %argn.addr, align 4, !dbg !839
  %dec = add i32 %11, -1, !dbg !839
  store i32 %dec, ptr %argn.addr, align 4, !dbg !839
  %12 = load ptr, ptr %arg, align 8, !dbg !841
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %12, i32 0, i32 5, !dbg !842
  %13 = load ptr, ptr %next, align 8, !dbg !842
  store ptr %13, ptr %arg, align 8, !dbg !843
  br label %while.cond, !dbg !834, !llvm.loop !844

while.end:                                        ; preds = %land.end
  %14 = load ptr, ptr %arg, align 8, !dbg !848
  store ptr %14, ptr %retval, align 8, !dbg !849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !849

cleanup:                                          ; preds = %while.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %op_info) #4, !dbg !850
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #4, !dbg !850
  %15 = load ptr, ptr %retval, align 8, !dbg !850
  ret ptr %15, !dbg !850
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !851 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ps_append_arg(ptr noundef %op, ptr noundef %arg) #0 align 16 !dbg !855 {
entry:
  %op.addr = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  %prev_arg = alloca ptr, align 8
  %op_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !859, metadata !DIExpression()), !dbg !863
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !860, metadata !DIExpression()), !dbg !864
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_arg) #4, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %prev_arg, metadata !861, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 8, ptr %op_info) #4, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %op_info, metadata !862, metadata !DIExpression()), !dbg !868
  %0 = load ptr, ptr %op.addr, align 8, !dbg !869
  %tobool = icmp ne ptr %0, null, !dbg !869
  br i1 %tobool, label %if.end, label %if.then, !dbg !871

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !872

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !dbg !874
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %1, i32 0, i32 3, !dbg !875
  %2 = load i16, ptr %aml_opcode, align 2, !dbg !875
  %call = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %2) #5, !dbg !876
  store ptr %call, ptr %op_info, align 8, !dbg !877
  %3 = load ptr, ptr %op_info, align 8, !dbg !878
  %class = getelementptr inbounds %struct.acpi_opcode_info, ptr %3, i32 0, i32 4, !dbg !880
  %4 = load i8, ptr %class, align 1, !dbg !880
  %conv = zext i8 %4 to i32, !dbg !878
  %cmp = icmp eq i32 %conv, 10, !dbg !881
  br i1 %cmp, label %if.then2, label %if.end5, !dbg !882

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %op.addr, align 8, !dbg !883
  %aml_opcode3 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %5, i32 0, i32 3, !dbg !883
  %6 = load i16, ptr %aml_opcode3, align 2, !dbg !883
  %conv4 = zext i16 %6 to i32, !dbg !883
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 112, ptr noundef @.str, i32 noundef %conv4) #5, !dbg !883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !885

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %op_info, align 8, !dbg !886
  %flags = getelementptr inbounds %struct.acpi_opcode_info, ptr %7, i32 0, i32 2, !dbg !888
  %8 = load i16, ptr %flags, align 4, !dbg !888
  %conv6 = zext i16 %8 to i32, !dbg !886
  %and = and i32 %conv6, 4096, !dbg !889
  %tobool7 = icmp ne i32 %and, 0, !dbg !889
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !890

if.then8:                                         ; preds = %if.end5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !891

if.end9:                                          ; preds = %if.end5
  %9 = load ptr, ptr %op.addr, align 8, !dbg !893
  %value = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %9, i32 0, i32 7, !dbg !895
  %10 = load ptr, ptr %value, align 8, !dbg !896
  %tobool10 = icmp ne ptr %10, null, !dbg !893
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !897

if.then11:                                        ; preds = %if.end9
  %11 = load ptr, ptr %op.addr, align 8, !dbg !898
  %value12 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %11, i32 0, i32 7, !dbg !900
  %12 = load ptr, ptr %value12, align 8, !dbg !901
  store ptr %12, ptr %prev_arg, align 8, !dbg !902
  br label %while.cond, !dbg !903

while.cond:                                       ; preds = %while.body, %if.then11
  %13 = load ptr, ptr %prev_arg, align 8, !dbg !904
  %next = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %13, i32 0, i32 5, !dbg !905
  %14 = load ptr, ptr %next, align 8, !dbg !905
  %tobool13 = icmp ne ptr %14, null, !dbg !903
  br i1 %tobool13, label %while.body, label %while.end, !dbg !903

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %prev_arg, align 8, !dbg !906
  %next14 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %15, i32 0, i32 5, !dbg !908
  %16 = load ptr, ptr %next14, align 8, !dbg !908
  store ptr %16, ptr %prev_arg, align 8, !dbg !909
  br label %while.cond, !dbg !903, !llvm.loop !910

while.end:                                        ; preds = %while.cond
  %17 = load ptr, ptr %arg.addr, align 8, !dbg !912
  %18 = load ptr, ptr %prev_arg, align 8, !dbg !913
  %next15 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %18, i32 0, i32 5, !dbg !914
  store ptr %17, ptr %next15, align 8, !dbg !915
  br label %if.end17, !dbg !916

if.else:                                          ; preds = %if.end9
  %19 = load ptr, ptr %arg.addr, align 8, !dbg !917
  %20 = load ptr, ptr %op.addr, align 8, !dbg !919
  %value16 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %20, i32 0, i32 7, !dbg !920
  store ptr %19, ptr %value16, align 8, !dbg !921
  br label %if.end17

if.end17:                                         ; preds = %if.else, %while.end
  br label %while.cond18, !dbg !922

while.cond18:                                     ; preds = %while.body20, %if.end17
  %21 = load ptr, ptr %arg.addr, align 8, !dbg !923
  %tobool19 = icmp ne ptr %21, null, !dbg !922
  br i1 %tobool19, label %while.body20, label %while.end22, !dbg !922

while.body20:                                     ; preds = %while.cond18
  %22 = load ptr, ptr %op.addr, align 8, !dbg !924
  %23 = load ptr, ptr %arg.addr, align 8, !dbg !926
  %parent = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %23, i32 0, i32 0, !dbg !927
  store ptr %22, ptr %parent, align 8, !dbg !928
  %24 = load ptr, ptr %arg.addr, align 8, !dbg !929
  %next21 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %24, i32 0, i32 5, !dbg !930
  %25 = load ptr, ptr %next21, align 8, !dbg !930
  store ptr %25, ptr %arg.addr, align 8, !dbg !931
  %26 = load ptr, ptr %op.addr, align 8, !dbg !932
  %arg_list_length = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %26, i32 0, i32 8, !dbg !933
  %27 = load i8, ptr %arg_list_length, align 8, !dbg !934
  %inc = add i8 %27, 1, !dbg !934
  store i8 %inc, ptr %arg_list_length, align 8, !dbg !934
  br label %while.cond18, !dbg !922, !llvm.loop !935

while.end22:                                      ; preds = %while.cond18
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

cleanup:                                          ; preds = %while.end22, %if.then8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %op_info) #4, !dbg !938
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_arg) #4, !dbg !938
  ret void, !dbg !938
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !939 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ps_get_depth_next(ptr noundef %origin, ptr noundef %op) #0 align 16 !dbg !944 {
entry:
  %retval = alloca ptr, align 8
  %origin.addr = alloca ptr, align 8
  %op.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %arg = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %origin, ptr %origin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %origin.addr, metadata !948, metadata !DIExpression()), !dbg !953
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !949, metadata !DIExpression()), !dbg !954
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #4, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %next, metadata !950, metadata !DIExpression()), !dbg !956
  store ptr null, ptr %next, align 8, !dbg !956
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #4, !dbg !957
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !951, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #4, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !952, metadata !DIExpression()), !dbg !960
  %0 = load ptr, ptr %op.addr, align 8, !dbg !961
  %tobool = icmp ne ptr %0, null, !dbg !961
  br i1 %tobool, label %if.end, label %if.then, !dbg !963

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !964

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %op.addr, align 8, !dbg !966
  %call = call ptr @acpi_ps_get_arg(ptr noundef %1, i32 noundef 0) #5, !dbg !967
  store ptr %call, ptr %next, align 8, !dbg !968
  %2 = load ptr, ptr %next, align 8, !dbg !969
  %tobool1 = icmp ne ptr %2, null, !dbg !969
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !971

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %next, align 8, !dbg !972
  store ptr %3, ptr %retval, align 8, !dbg !974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !974

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %op.addr, align 8, !dbg !975
  %next4 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %4, i32 0, i32 5, !dbg !976
  %5 = load ptr, ptr %next4, align 8, !dbg !976
  store ptr %5, ptr %next, align 8, !dbg !977
  %6 = load ptr, ptr %next, align 8, !dbg !978
  %tobool5 = icmp ne ptr %6, null, !dbg !978
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !980

if.then6:                                         ; preds = %if.end3
  %7 = load ptr, ptr %next, align 8, !dbg !981
  store ptr %7, ptr %retval, align 8, !dbg !983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !983

if.end7:                                          ; preds = %if.end3
  %8 = load ptr, ptr %op.addr, align 8, !dbg !984
  %parent8 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %8, i32 0, i32 0, !dbg !985
  %9 = load ptr, ptr %parent8, align 8, !dbg !985
  store ptr %9, ptr %parent, align 8, !dbg !986
  br label %while.cond, !dbg !987

while.cond:                                       ; preds = %if.end23, %if.end7
  %10 = load ptr, ptr %parent, align 8, !dbg !988
  %tobool9 = icmp ne ptr %10, null, !dbg !987
  br i1 %tobool9, label %while.body, label %while.end25, !dbg !987

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %parent, align 8, !dbg !989
  %call10 = call ptr @acpi_ps_get_arg(ptr noundef %11, i32 noundef 0) #5, !dbg !991
  store ptr %call10, ptr %arg, align 8, !dbg !992
  br label %while.cond11, !dbg !993

while.cond11:                                     ; preds = %while.body14, %while.body
  %12 = load ptr, ptr %arg, align 8, !dbg !994
  %tobool12 = icmp ne ptr %12, null, !dbg !994
  br i1 %tobool12, label %land.lhs.true, label %land.end, !dbg !995

land.lhs.true:                                    ; preds = %while.cond11
  %13 = load ptr, ptr %arg, align 8, !dbg !996
  %14 = load ptr, ptr %origin.addr, align 8, !dbg !997
  %cmp = icmp ne ptr %13, %14, !dbg !998
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !999

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %arg, align 8, !dbg !1000
  %16 = load ptr, ptr %op.addr, align 8, !dbg !1001
  %cmp13 = icmp ne ptr %15, %16, !dbg !1002
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond11
  %17 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond11 ], [ %cmp13, %land.rhs ], !dbg !1003
  br i1 %17, label %while.body14, label %while.end, !dbg !993

while.body14:                                     ; preds = %land.end
  %18 = load ptr, ptr %arg, align 8, !dbg !1004
  %next15 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %18, i32 0, i32 5, !dbg !1006
  %19 = load ptr, ptr %next15, align 8, !dbg !1006
  store ptr %19, ptr %arg, align 8, !dbg !1007
  br label %while.cond11, !dbg !993, !llvm.loop !1008

while.end:                                        ; preds = %land.end
  %20 = load ptr, ptr %arg, align 8, !dbg !1010
  %21 = load ptr, ptr %origin.addr, align 8, !dbg !1012
  %cmp16 = icmp eq ptr %20, %21, !dbg !1013
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !1014

if.then17:                                        ; preds = %while.end
  store ptr null, ptr %retval, align 8, !dbg !1015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1015

if.end18:                                         ; preds = %while.end
  %22 = load ptr, ptr %parent, align 8, !dbg !1017
  %next19 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %22, i32 0, i32 5, !dbg !1019
  %23 = load ptr, ptr %next19, align 8, !dbg !1019
  %tobool20 = icmp ne ptr %23, null, !dbg !1017
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !1020

if.then21:                                        ; preds = %if.end18
  %24 = load ptr, ptr %parent, align 8, !dbg !1021
  %next22 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %24, i32 0, i32 5, !dbg !1023
  %25 = load ptr, ptr %next22, align 8, !dbg !1023
  store ptr %25, ptr %retval, align 8, !dbg !1024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1024

if.end23:                                         ; preds = %if.end18
  %26 = load ptr, ptr %parent, align 8, !dbg !1025
  store ptr %26, ptr %op.addr, align 8, !dbg !1026
  %27 = load ptr, ptr %parent, align 8, !dbg !1027
  %parent24 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %27, i32 0, i32 0, !dbg !1028
  %28 = load ptr, ptr %parent24, align 8, !dbg !1028
  store ptr %28, ptr %parent, align 8, !dbg !1029
  br label %while.cond, !dbg !987, !llvm.loop !1030

while.end25:                                      ; preds = %while.cond
  %29 = load ptr, ptr %next, align 8, !dbg !1032
  store ptr %29, ptr %retval, align 8, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

cleanup:                                          ; preds = %while.end25, %if.then21, %if.then17, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #4, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #4, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #4, !dbg !1034
  %30 = load ptr, ptr %retval, align 8, !dbg !1034
  ret ptr %30, !dbg !1034
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.pstree.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22pstree\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/pstree.ll drivers/acpi/acpica/pstree.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/pstree.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e56a296b197a4678c2a1f9346d6e95e9")
!4 = !{!5, !0}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !7, isLocal: true, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 224, elements: !9)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !{!10}
!10 = !DISubrange(count: 28)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 56, elements: !13)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!13 = !{!14}
!14 = !DISubrange(count: 7)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 8, !"cf-protection-branch", i32 1}
!19 = !{i32 4, !"function_return_thunk_extern", i32 1}
!20 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!21 = !{i32 1, !"Code Model", i32 2}
!22 = !{i32 1, !"override-stack-alignment", i32 8}
!23 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!24 = distinct !DISubprogram(name: "acpi_ps_get_arg", scope: !3, file: !3, line: 37, type: !25, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !801)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !27, !93}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !29, line: 891, size: 1600, elements: !30)
!29 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!30 = !{!31, !744, !760}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !28, file: !29, line: 892, baseType: !32, size: 448)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !29, line: 844, size: 448, elements: !33)
!33 = !{!34, !35, !41, !42, !46, !48, !49, !734, !743}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !32, file: !29, line: 845, baseType: !27, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !32, file: !29, line: 845, baseType: !36, size: 8, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !37, line: 17, baseType: !38)
!37 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !39, line: 21, baseType: !40)
!39 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !32, file: !29, line: 845, baseType: !36, size: 8, offset: 72)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !32, file: !29, line: 845, baseType: !43, size: 16, offset: 80)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !37, line: 19, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !39, line: 24, baseType: !45)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !32, file: !29, line: 845, baseType: !47, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !29, line: 845, baseType: !27, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !32, file: !29, line: 845, baseType: !50, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !29, line: 133, size: 384, elements: !52)
!52 = !{!53, !718, !719, !720, !721, !730, !731, !732, !733}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !51, file: !29, line: 134, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !56, line: 369, size: 576, elements: !57)
!56 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!57 = !{!58, !66, !82, !96, !109, !123, !133, !367, !384, !400, !413, !491, !503, !517, !527, !545, !567, !586, !605, !624, !637, !664, !681, !694, !708, !717}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !55, file: !56, line: 370, baseType: !59, size: 128)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !56, line: 73, size: 128, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !59, file: !56, line: 74, baseType: !54, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !59, file: !56, line: 74, baseType: !36, size: 8, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !59, file: !56, line: 74, baseType: !36, size: 8, offset: 72)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !59, file: !56, line: 74, baseType: !43, size: 16, offset: 80)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !56, line: 74, baseType: !36, size: 8, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !55, file: !56, line: 371, baseType: !67, size: 192)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !56, line: 76, size: 192, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !78}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !67, file: !56, line: 77, baseType: !54, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !67, file: !56, line: 77, baseType: !36, size: 8, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !56, line: 77, baseType: !36, size: 8, offset: 72)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !67, file: !56, line: 77, baseType: !43, size: 16, offset: 80)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !56, line: 77, baseType: !36, size: 8, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !67, file: !56, line: 77, baseType: !75, size: 24, offset: 104)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !67, file: !56, line: 78, baseType: !79, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !37, line: 23, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !39, line: 31, baseType: !81)
!81 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !55, file: !56, line: 372, baseType: !83, size: 256)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !56, line: 93, size: 256, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !92}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !83, file: !56, line: 94, baseType: !54, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !56, line: 94, baseType: !36, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !56, line: 94, baseType: !36, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !83, file: !56, line: 94, baseType: !43, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !56, line: 94, baseType: !36, size: 8, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !83, file: !56, line: 94, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !83, file: !56, line: 94, baseType: !93, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !37, line: 21, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !39, line: 27, baseType: !95)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !55, file: !56, line: 373, baseType: !97, size: 384)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !56, line: 97, size: 384, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !97, file: !56, line: 98, baseType: !54, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !56, line: 98, baseType: !36, size: 8, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !56, line: 98, baseType: !36, size: 8, offset: 72)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !97, file: !56, line: 98, baseType: !43, size: 16, offset: 80)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !56, line: 98, baseType: !36, size: 8, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !97, file: !56, line: 98, baseType: !47, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !97, file: !56, line: 98, baseType: !93, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !97, file: !56, line: 99, baseType: !93, size: 32, offset: 224)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !97, file: !56, line: 100, baseType: !47, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !97, file: !56, line: 101, baseType: !50, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !55, file: !56, line: 374, baseType: !110, size: 384)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !56, line: 104, size: 384, elements: !111)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !120, !121, !122}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !110, file: !56, line: 105, baseType: !54, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !110, file: !56, line: 105, baseType: !36, size: 8, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !110, file: !56, line: 105, baseType: !36, size: 8, offset: 72)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !110, file: !56, line: 105, baseType: !43, size: 16, offset: 80)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !110, file: !56, line: 105, baseType: !36, size: 8, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !110, file: !56, line: 105, baseType: !50, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !110, file: !56, line: 106, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !110, file: !56, line: 107, baseType: !47, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !110, file: !56, line: 108, baseType: !93, size: 32, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !110, file: !56, line: 109, baseType: !93, size: 32, offset: 352)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !55, file: !56, line: 375, baseType: !124, size: 192)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !56, line: 118, size: 192, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !124, file: !56, line: 119, baseType: !54, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !124, file: !56, line: 119, baseType: !36, size: 8, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !124, file: !56, line: 119, baseType: !36, size: 8, offset: 72)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !124, file: !56, line: 119, baseType: !43, size: 16, offset: 80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !56, line: 119, baseType: !36, size: 8, offset: 96)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !124, file: !56, line: 119, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !55, file: !56, line: 376, baseType: !134, size: 448)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !56, line: 144, size: 448, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !364, !365, !366}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !56, line: 145, baseType: !54, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !56, line: 145, baseType: !36, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !56, line: 145, baseType: !36, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !56, line: 145, baseType: !43, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !56, line: 145, baseType: !36, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !134, file: !56, line: 145, baseType: !36, size: 8, offset: 104)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !134, file: !56, line: 146, baseType: !36, size: 8, offset: 112)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !134, file: !56, line: 147, baseType: !36, size: 8, offset: 120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !134, file: !56, line: 148, baseType: !54, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !134, file: !56, line: 149, baseType: !54, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !134, file: !56, line: 150, baseType: !47, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !134, file: !56, line: 154, baseType: !148, size: 64, offset: 320)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !56, line: 151, size: 64, elements: !149)
!149 = !{!150, !363}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !148, file: !56, line: 152, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !29, line: 248, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !157}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !156, line: 421, baseType: !93)
!156 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !159, line: 37, size: 9024, elements: !160)
!159 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !311, !312, !313, !314, !315, !317, !319, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !346, !347, !348, !349, !350, !351, !352, !353, !355, !361}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !159, line: 38, baseType: !157, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !158, file: !159, line: 39, baseType: !36, size: 8, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !158, file: !159, line: 40, baseType: !36, size: 8, offset: 72)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !158, file: !159, line: 41, baseType: !43, size: 16, offset: 80)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !158, file: !159, line: 42, baseType: !36, size: 8, offset: 96)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !158, file: !159, line: 43, baseType: !36, size: 8, offset: 104)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !158, file: !159, line: 44, baseType: !36, size: 8, offset: 112)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !158, file: !159, line: 45, baseType: !169, size: 16, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !156, line: 445, baseType: !43)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !158, file: !159, line: 46, baseType: !36, size: 8, offset: 144)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !158, file: !159, line: 47, baseType: !36, size: 8, offset: 152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !158, file: !159, line: 48, baseType: !36, size: 8, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !158, file: !159, line: 49, baseType: !36, size: 8, offset: 168)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !158, file: !159, line: 50, baseType: !36, size: 8, offset: 176)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !158, file: !159, line: 51, baseType: !36, size: 8, offset: 184)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !158, file: !159, line: 52, baseType: !36, size: 8, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !158, file: !159, line: 53, baseType: !36, size: 8, offset: 200)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !158, file: !159, line: 54, baseType: !47, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !158, file: !159, line: 55, baseType: !93, size: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !158, file: !159, line: 56, baseType: !93, size: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !158, file: !159, line: 57, baseType: !93, size: 32, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !158, file: !159, line: 58, baseType: !93, size: 32, offset: 416)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !158, file: !159, line: 60, baseType: !184, size: 640, offset: 448)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !29, line: 909, size: 640, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !309, !310}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !184, file: !29, line: 910, baseType: !47, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !184, file: !29, line: 911, baseType: !47, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !184, file: !29, line: 912, baseType: !47, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !184, file: !29, line: 913, baseType: !47, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !184, file: !29, line: 914, baseType: !47, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !184, file: !29, line: 915, baseType: !27, size: 64, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !184, file: !29, line: 916, baseType: !50, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !184, file: !29, line: 917, baseType: !194, size: 64, offset: 448)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !29, line: 679, size: 640, elements: !196)
!196 = !{!197, !205, !218, !227, !236, !249, !263, !275, !287}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !195, file: !29, line: 680, baseType: !198, size: 128)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !29, line: 575, size: 128, elements: !199)
!199 = !{!200, !201, !202, !203, !204}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !29, line: 576, baseType: !132, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !29, line: 576, baseType: !36, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !29, line: 576, baseType: !36, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !29, line: 576, baseType: !43, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !198, file: !29, line: 576, baseType: !43, size: 16, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !195, file: !29, line: 681, baseType: !206, size: 384)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !29, line: 604, size: 384, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !29, line: 605, baseType: !132, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !29, line: 605, baseType: !36, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !29, line: 605, baseType: !36, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !206, file: !29, line: 605, baseType: !43, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !206, file: !29, line: 605, baseType: !43, size: 16, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !206, file: !29, line: 606, baseType: !43, size: 16, offset: 112)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !206, file: !29, line: 607, baseType: !27, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !206, file: !29, line: 608, baseType: !47, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !206, file: !29, line: 609, baseType: !47, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !206, file: !29, line: 610, baseType: !79, size: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !195, file: !29, line: 682, baseType: !219, size: 192)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !29, line: 582, size: 192, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !29, line: 583, baseType: !132, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !29, line: 583, baseType: !36, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !29, line: 583, baseType: !36, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !29, line: 583, baseType: !43, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !219, file: !29, line: 583, baseType: !43, size: 16, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !219, file: !29, line: 584, baseType: !54, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !195, file: !29, line: 683, baseType: !228, size: 192)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !29, line: 616, size: 192, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !29, line: 617, baseType: !132, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !228, file: !29, line: 617, baseType: !36, size: 8, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !29, line: 617, baseType: !36, size: 8, offset: 72)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !228, file: !29, line: 617, baseType: !43, size: 16, offset: 80)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !228, file: !29, line: 617, baseType: !43, size: 16, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !228, file: !29, line: 618, baseType: !50, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !195, file: !29, line: 684, baseType: !237, size: 448)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !29, line: 621, size: 448, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !29, line: 622, baseType: !132, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !237, file: !29, line: 622, baseType: !36, size: 8, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !29, line: 622, baseType: !36, size: 8, offset: 72)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !237, file: !29, line: 622, baseType: !43, size: 16, offset: 80)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !237, file: !29, line: 622, baseType: !43, size: 16, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !237, file: !29, line: 623, baseType: !93, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !237, file: !29, line: 624, baseType: !27, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !237, file: !29, line: 625, baseType: !47, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !237, file: !29, line: 626, baseType: !47, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !237, file: !29, line: 627, baseType: !93, size: 32, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !195, file: !29, line: 685, baseType: !250, size: 512)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !29, line: 590, size: 512, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !29, line: 591, baseType: !132, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !250, file: !29, line: 591, baseType: !36, size: 8, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !29, line: 591, baseType: !36, size: 8, offset: 72)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !250, file: !29, line: 591, baseType: !43, size: 16, offset: 80)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !250, file: !29, line: 591, baseType: !43, size: 16, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !250, file: !29, line: 592, baseType: !93, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !250, file: !29, line: 593, baseType: !54, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !250, file: !29, line: 594, baseType: !54, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !250, file: !29, line: 595, baseType: !157, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !250, file: !29, line: 596, baseType: !132, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !250, file: !29, line: 597, baseType: !93, size: 32, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !195, file: !29, line: 686, baseType: !264, size: 320)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !29, line: 634, size: 320, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !29, line: 635, baseType: !132, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !264, file: !29, line: 635, baseType: !36, size: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !29, line: 635, baseType: !36, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !264, file: !29, line: 635, baseType: !43, size: 16, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !264, file: !29, line: 635, baseType: !43, size: 16, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !264, file: !29, line: 636, baseType: !36, size: 8, offset: 112)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !264, file: !29, line: 637, baseType: !157, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !264, file: !29, line: 638, baseType: !54, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !264, file: !29, line: 639, baseType: !79, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !195, file: !29, line: 687, baseType: !276, size: 640)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !29, line: 646, size: 640, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !29, line: 647, baseType: !132, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !29, line: 647, baseType: !36, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !29, line: 647, baseType: !36, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !29, line: 647, baseType: !43, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !29, line: 647, baseType: !43, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !276, file: !29, line: 648, baseType: !284, size: 512, offset: 128)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 512, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 8)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !195, file: !29, line: 688, baseType: !288, size: 320)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !29, line: 669, size: 320, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !29, line: 670, baseType: !132, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !29, line: 670, baseType: !36, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !29, line: 670, baseType: !36, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !29, line: 670, baseType: !43, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !29, line: 670, baseType: !43, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !288, file: !29, line: 671, baseType: !36, size: 8, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !288, file: !29, line: 672, baseType: !50, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !288, file: !29, line: 673, baseType: !54, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !288, file: !29, line: 674, baseType: !299, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !29, line: 660, size: 128, elements: !301)
!301 = !{!302, !308}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !300, file: !29, line: 661, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !156, line: 1061, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307, !93, !132}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !156, line: 424, baseType: !132)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !300, file: !29, line: 662, baseType: !132, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !184, file: !29, line: 918, baseType: !27, size: 64, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !184, file: !29, line: 919, baseType: !93, size: 32, offset: 576)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !158, file: !159, line: 61, baseType: !93, size: 32, offset: 1088)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !158, file: !159, line: 62, baseType: !93, size: 32, offset: 1120)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !158, file: !159, line: 63, baseType: !43, size: 16, offset: 1152)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !158, file: !159, line: 64, baseType: !36, size: 8, offset: 1168)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !158, file: !159, line: 66, baseType: !316, size: 2688, offset: 1216)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 2688, elements: !13)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !158, file: !159, line: 67, baseType: !318, size: 3072, offset: 3904)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 3072, elements: !285)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !158, file: !159, line: 68, baseType: !320, size: 576, offset: 6976)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 576, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 9)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !158, file: !159, line: 69, baseType: !119, size: 64, offset: 7552)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !158, file: !159, line: 71, baseType: !47, size: 64, offset: 7616)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !158, file: !159, line: 72, baseType: !119, size: 64, offset: 7680)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !158, file: !159, line: 73, baseType: !194, size: 64, offset: 7744)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !158, file: !159, line: 74, baseType: !50, size: 64, offset: 7808)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !158, file: !159, line: 75, baseType: !54, size: 64, offset: 7872)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !158, file: !159, line: 76, baseType: !50, size: 64, offset: 7936)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !158, file: !159, line: 77, baseType: !27, size: 64, offset: 8000)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !158, file: !159, line: 78, baseType: !54, size: 64, offset: 8064)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !158, file: !159, line: 79, baseType: !50, size: 64, offset: 8128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !158, file: !159, line: 80, baseType: !91, size: 64, offset: 8192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !158, file: !159, line: 81, baseType: !27, size: 64, offset: 8256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !158, file: !159, line: 82, baseType: !336, size: 64, offset: 8320)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !29, line: 718, size: 128, elements: !339)
!339 = !{!340, !341, !342, !343, !344, !345}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !338, file: !29, line: 722, baseType: !93, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !338, file: !29, line: 723, baseType: !93, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !29, line: 724, baseType: !43, size: 16, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !338, file: !29, line: 725, baseType: !36, size: 8, offset: 80)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !338, file: !29, line: 726, baseType: !36, size: 8, offset: 88)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !338, file: !29, line: 727, baseType: !36, size: 8, offset: 96)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !158, file: !159, line: 83, baseType: !27, size: 64, offset: 8384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !158, file: !159, line: 84, baseType: !54, size: 64, offset: 8448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !158, file: !159, line: 85, baseType: !194, size: 64, offset: 8512)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !158, file: !159, line: 86, baseType: !54, size: 64, offset: 8576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !158, file: !159, line: 87, baseType: !194, size: 64, offset: 8640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !158, file: !159, line: 88, baseType: !27, size: 64, offset: 8704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !158, file: !159, line: 89, baseType: !27, size: 64, offset: 8768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !158, file: !159, line: 90, baseType: !354, size: 64, offset: 8832)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !158, file: !159, line: 91, baseType: !356, size: 64, offset: 8896)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !29, line: 652, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!155, !157, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !158, file: !159, line: 92, baseType: !362, size: 64, offset: 8960)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !29, line: 656, baseType: !152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !148, file: !56, line: 153, baseType: !54, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !134, file: !56, line: 156, baseType: !93, size: 32, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !134, file: !56, line: 157, baseType: !169, size: 16, offset: 416)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !134, file: !56, line: 158, baseType: !36, size: 8, offset: 432)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !55, file: !56, line: 377, baseType: !368, size: 576)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !56, line: 122, size: 576, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !368, file: !56, line: 123, baseType: !54, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !368, file: !56, line: 123, baseType: !36, size: 8, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !368, file: !56, line: 123, baseType: !36, size: 8, offset: 72)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !368, file: !56, line: 123, baseType: !43, size: 16, offset: 80)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !368, file: !56, line: 123, baseType: !36, size: 8, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !368, file: !56, line: 123, baseType: !36, size: 8, offset: 104)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !368, file: !56, line: 124, baseType: !43, size: 16, offset: 112)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !368, file: !56, line: 125, baseType: !132, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !368, file: !56, line: 126, baseType: !79, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !368, file: !56, line: 127, baseType: !354, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !368, file: !56, line: 128, baseType: !54, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !56, line: 129, baseType: !54, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !368, file: !56, line: 130, baseType: !50, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !368, file: !56, line: 131, baseType: !36, size: 8, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !55, file: !56, line: 378, baseType: !385, size: 512)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !56, line: 134, size: 512, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !398, !399}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !385, file: !56, line: 135, baseType: !54, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !385, file: !56, line: 135, baseType: !36, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !385, file: !56, line: 135, baseType: !36, size: 8, offset: 72)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !385, file: !56, line: 135, baseType: !43, size: 16, offset: 80)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !56, line: 135, baseType: !36, size: 8, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !385, file: !56, line: 135, baseType: !36, size: 8, offset: 104)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !385, file: !56, line: 136, baseType: !50, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !385, file: !56, line: 137, baseType: !54, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !56, line: 138, baseType: !54, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !385, file: !56, line: 139, baseType: !397, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !156, line: 129, baseType: !79)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !385, file: !56, line: 140, baseType: !93, size: 32, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !385, file: !56, line: 141, baseType: !132, size: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !55, file: !56, line: 379, baseType: !401, size: 320)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !56, line: 185, size: 320, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !412}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !401, file: !56, line: 186, baseType: !54, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !401, file: !56, line: 186, baseType: !36, size: 8, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !401, file: !56, line: 186, baseType: !36, size: 8, offset: 72)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !401, file: !56, line: 186, baseType: !43, size: 16, offset: 80)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !56, line: 186, baseType: !36, size: 8, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !401, file: !56, line: 186, baseType: !409, size: 128, offset: 128)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 128, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 2)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !401, file: !56, line: 186, baseType: !54, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !55, file: !56, line: 380, baseType: !414, size: 384)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !56, line: 188, size: 384, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !414, file: !56, line: 189, baseType: !54, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !414, file: !56, line: 189, baseType: !36, size: 8, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !56, line: 189, baseType: !36, size: 8, offset: 72)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !414, file: !56, line: 189, baseType: !43, size: 16, offset: 80)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !56, line: 189, baseType: !36, size: 8, offset: 96)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !414, file: !56, line: 190, baseType: !409, size: 128, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !414, file: !56, line: 190, baseType: !54, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !414, file: !56, line: 190, baseType: !424, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !29, line: 480, size: 576, elements: !426)
!426 = !{!427, !428, !429, !430, !438, !453, !485, !486, !487, !488, !489, !490}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !425, file: !29, line: 481, baseType: !50, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !425, file: !29, line: 482, baseType: !424, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !29, line: 483, baseType: !424, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !425, file: !29, line: 484, baseType: !431, size: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !29, line: 497, size: 256, elements: !433)
!433 = !{!434, !435, !436, !437}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !432, file: !29, line: 498, baseType: !431, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !432, file: !29, line: 499, baseType: !431, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !432, file: !29, line: 500, baseType: !424, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !432, file: !29, line: 501, baseType: !93, size: 32, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !425, file: !29, line: 485, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !29, line: 466, size: 320, elements: !441)
!441 = !{!442, !447, !448, !449, !450, !451, !452}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !440, file: !29, line: 467, baseType: !443, size: 128)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !29, line: 459, size: 128, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !443, file: !29, line: 460, baseType: !36, size: 8)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !443, file: !29, line: 461, baseType: !79, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !440, file: !29, line: 468, baseType: !443, size: 128, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !440, file: !29, line: 469, baseType: !43, size: 16, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !440, file: !29, line: 470, baseType: !36, size: 8, offset: 272)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !440, file: !29, line: 471, baseType: !36, size: 8, offset: 280)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !440, file: !29, line: 472, baseType: !36, size: 8, offset: 288)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !440, file: !29, line: 473, baseType: !36, size: 8, offset: 296)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !425, file: !29, line: 486, baseType: !454, size: 64, offset: 320)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !29, line: 448, size: 192, elements: !456)
!456 = !{!457, !480, !481, !482, !483, !484}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !455, file: !29, line: 449, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !29, line: 438, size: 64, elements: !459)
!459 = !{!460, !461, !474}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !458, file: !29, line: 439, baseType: !50, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !458, file: !29, line: 440, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !29, line: 419, size: 256, elements: !464)
!464 = !{!465, !470, !471, !472, !473}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !463, file: !29, line: 420, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !156, line: 1058, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!93, !307, !93, !132}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !463, file: !29, line: 421, baseType: !132, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !463, file: !29, line: 422, baseType: !50, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !463, file: !29, line: 423, baseType: !36, size: 8, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !463, file: !29, line: 424, baseType: !36, size: 8, offset: 200)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !458, file: !29, line: 441, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !29, line: 429, size: 128, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !476, file: !29, line: 430, baseType: !50, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !29, line: 431, baseType: !475, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !455, file: !29, line: 450, baseType: !439, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !455, file: !29, line: 451, baseType: !36, size: 8, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !455, file: !29, line: 452, baseType: !36, size: 8, offset: 136)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !455, file: !29, line: 453, baseType: !36, size: 8, offset: 144)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !455, file: !29, line: 454, baseType: !36, size: 8, offset: 152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !425, file: !29, line: 487, baseType: !79, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !425, file: !29, line: 488, baseType: !93, size: 32, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !425, file: !29, line: 489, baseType: !43, size: 16, offset: 480)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !425, file: !29, line: 490, baseType: !43, size: 16, offset: 496)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !425, file: !29, line: 491, baseType: !36, size: 8, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !425, file: !29, line: 492, baseType: !36, size: 8, offset: 520)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !55, file: !56, line: 381, baseType: !492, size: 384)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !56, line: 193, size: 384, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !492, file: !56, line: 194, baseType: !54, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !492, file: !56, line: 194, baseType: !36, size: 8, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !492, file: !56, line: 194, baseType: !36, size: 8, offset: 72)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !492, file: !56, line: 194, baseType: !43, size: 16, offset: 80)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !56, line: 194, baseType: !36, size: 8, offset: 96)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !492, file: !56, line: 194, baseType: !409, size: 128, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !492, file: !56, line: 194, baseType: !54, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !492, file: !56, line: 194, baseType: !93, size: 32, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !492, file: !56, line: 195, baseType: !93, size: 32, offset: 352)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !55, file: !56, line: 382, baseType: !504, size: 384)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !56, line: 198, size: 384, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !504, file: !56, line: 199, baseType: !54, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !504, file: !56, line: 199, baseType: !36, size: 8, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !56, line: 199, baseType: !36, size: 8, offset: 72)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !504, file: !56, line: 199, baseType: !43, size: 16, offset: 80)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !56, line: 199, baseType: !36, size: 8, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !504, file: !56, line: 201, baseType: !36, size: 8, offset: 104)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !504, file: !56, line: 202, baseType: !36, size: 8, offset: 112)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !504, file: !56, line: 203, baseType: !409, size: 128, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !504, file: !56, line: 203, baseType: !54, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !504, file: !56, line: 203, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !156, line: 128, baseType: !79)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !55, file: !56, line: 383, baseType: !518, size: 320)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !56, line: 206, size: 320, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525, !526}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !518, file: !56, line: 207, baseType: !54, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !518, file: !56, line: 207, baseType: !36, size: 8, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !56, line: 207, baseType: !36, size: 8, offset: 72)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !518, file: !56, line: 207, baseType: !43, size: 16, offset: 80)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !56, line: 207, baseType: !36, size: 8, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !518, file: !56, line: 207, baseType: !409, size: 128, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !518, file: !56, line: 207, baseType: !54, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !55, file: !56, line: 384, baseType: !528, size: 384)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !56, line: 234, size: 384, elements: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !528, file: !56, line: 235, baseType: !54, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !528, file: !56, line: 235, baseType: !36, size: 8, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !528, file: !56, line: 235, baseType: !36, size: 8, offset: 72)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !528, file: !56, line: 235, baseType: !43, size: 16, offset: 80)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !528, file: !56, line: 235, baseType: !36, size: 8, offset: 96)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !528, file: !56, line: 235, baseType: !36, size: 8, offset: 104)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !528, file: !56, line: 235, baseType: !36, size: 8, offset: 112)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !528, file: !56, line: 235, baseType: !36, size: 8, offset: 120)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !528, file: !56, line: 235, baseType: !50, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !528, file: !56, line: 235, baseType: !93, size: 32, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !528, file: !56, line: 235, baseType: !93, size: 32, offset: 224)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !528, file: !56, line: 235, baseType: !93, size: 32, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !528, file: !56, line: 235, baseType: !36, size: 8, offset: 288)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !528, file: !56, line: 235, baseType: !36, size: 8, offset: 296)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !528, file: !56, line: 235, baseType: !54, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !55, file: !56, line: 385, baseType: !546, size: 576)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !56, line: 238, size: 576, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !546, file: !56, line: 239, baseType: !54, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !546, file: !56, line: 239, baseType: !36, size: 8, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !546, file: !56, line: 239, baseType: !36, size: 8, offset: 72)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !546, file: !56, line: 239, baseType: !43, size: 16, offset: 80)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !56, line: 239, baseType: !36, size: 8, offset: 96)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !546, file: !56, line: 239, baseType: !36, size: 8, offset: 104)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !546, file: !56, line: 239, baseType: !36, size: 8, offset: 112)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !546, file: !56, line: 239, baseType: !36, size: 8, offset: 120)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !546, file: !56, line: 239, baseType: !50, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !546, file: !56, line: 239, baseType: !93, size: 32, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !546, file: !56, line: 239, baseType: !93, size: 32, offset: 224)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !546, file: !56, line: 239, baseType: !93, size: 32, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !546, file: !56, line: 239, baseType: !36, size: 8, offset: 288)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !546, file: !56, line: 239, baseType: !36, size: 8, offset: 296)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !546, file: !56, line: 239, baseType: !43, size: 16, offset: 304)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !546, file: !56, line: 240, baseType: !54, size: 64, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !546, file: !56, line: 241, baseType: !47, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !546, file: !56, line: 242, baseType: !43, size: 16, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !546, file: !56, line: 243, baseType: !47, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !55, file: !56, line: 386, baseType: !568, size: 384)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !56, line: 263, size: 384, elements: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !568, file: !56, line: 264, baseType: !54, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !568, file: !56, line: 264, baseType: !36, size: 8, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !568, file: !56, line: 264, baseType: !36, size: 8, offset: 72)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !568, file: !56, line: 264, baseType: !43, size: 16, offset: 80)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !56, line: 264, baseType: !36, size: 8, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !568, file: !56, line: 264, baseType: !36, size: 8, offset: 104)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !568, file: !56, line: 264, baseType: !36, size: 8, offset: 112)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !568, file: !56, line: 264, baseType: !36, size: 8, offset: 120)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !568, file: !56, line: 264, baseType: !50, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !568, file: !56, line: 264, baseType: !93, size: 32, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !568, file: !56, line: 264, baseType: !93, size: 32, offset: 224)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !568, file: !56, line: 264, baseType: !93, size: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !568, file: !56, line: 264, baseType: !36, size: 8, offset: 288)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !568, file: !56, line: 264, baseType: !36, size: 8, offset: 296)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !568, file: !56, line: 264, baseType: !36, size: 8, offset: 304)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !568, file: !56, line: 265, baseType: !54, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !55, file: !56, line: 387, baseType: !587, size: 448)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !56, line: 246, size: 448, elements: !588)
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !587, file: !56, line: 247, baseType: !54, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !587, file: !56, line: 247, baseType: !36, size: 8, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !56, line: 247, baseType: !36, size: 8, offset: 72)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !587, file: !56, line: 247, baseType: !43, size: 16, offset: 80)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !56, line: 247, baseType: !36, size: 8, offset: 96)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !587, file: !56, line: 247, baseType: !36, size: 8, offset: 104)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !587, file: !56, line: 247, baseType: !36, size: 8, offset: 112)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !587, file: !56, line: 247, baseType: !36, size: 8, offset: 120)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !587, file: !56, line: 247, baseType: !50, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !587, file: !56, line: 247, baseType: !93, size: 32, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !587, file: !56, line: 247, baseType: !93, size: 32, offset: 224)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !587, file: !56, line: 247, baseType: !93, size: 32, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !587, file: !56, line: 247, baseType: !36, size: 8, offset: 288)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !587, file: !56, line: 247, baseType: !36, size: 8, offset: 296)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !587, file: !56, line: 247, baseType: !54, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !587, file: !56, line: 248, baseType: !54, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !55, file: !56, line: 388, baseType: !606, size: 448)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !56, line: 251, size: 448, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !606, file: !56, line: 252, baseType: !54, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !606, file: !56, line: 252, baseType: !36, size: 8, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !606, file: !56, line: 252, baseType: !36, size: 8, offset: 72)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !606, file: !56, line: 252, baseType: !43, size: 16, offset: 80)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !606, file: !56, line: 252, baseType: !36, size: 8, offset: 96)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !606, file: !56, line: 252, baseType: !36, size: 8, offset: 104)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !606, file: !56, line: 252, baseType: !36, size: 8, offset: 112)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !606, file: !56, line: 252, baseType: !36, size: 8, offset: 120)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !606, file: !56, line: 252, baseType: !50, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !606, file: !56, line: 252, baseType: !93, size: 32, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !606, file: !56, line: 252, baseType: !93, size: 32, offset: 224)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !606, file: !56, line: 252, baseType: !93, size: 32, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !606, file: !56, line: 252, baseType: !36, size: 8, offset: 288)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !606, file: !56, line: 252, baseType: !36, size: 8, offset: 296)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !606, file: !56, line: 257, baseType: !54, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !606, file: !56, line: 258, baseType: !54, size: 64, offset: 384)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !55, file: !56, line: 389, baseType: !625, size: 512)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !56, line: 274, size: 512, elements: !626)
!626 = !{!627, !628, !629, !630, !631, !632, !633, !634, !635, !636}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !625, file: !56, line: 275, baseType: !54, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !625, file: !56, line: 275, baseType: !36, size: 8, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !625, file: !56, line: 275, baseType: !36, size: 8, offset: 72)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !625, file: !56, line: 275, baseType: !43, size: 16, offset: 80)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !625, file: !56, line: 275, baseType: !36, size: 8, offset: 96)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !625, file: !56, line: 275, baseType: !50, size: 64, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !625, file: !56, line: 276, baseType: !93, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !625, file: !56, line: 277, baseType: !303, size: 64, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !625, file: !56, line: 278, baseType: !132, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !625, file: !56, line: 279, baseType: !409, size: 128, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !55, file: !56, line: 390, baseType: !638, size: 576)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !56, line: 282, size: 576, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !653, !654, !655, !656, !662, !663}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !638, file: !56, line: 283, baseType: !54, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !638, file: !56, line: 283, baseType: !36, size: 8, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !56, line: 283, baseType: !36, size: 8, offset: 72)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !638, file: !56, line: 283, baseType: !43, size: 16, offset: 80)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !56, line: 283, baseType: !36, size: 8, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !638, file: !56, line: 283, baseType: !36, size: 8, offset: 104)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !638, file: !56, line: 284, baseType: !36, size: 8, offset: 112)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !638, file: !56, line: 285, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !156, line: 1093, baseType: !649)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!155, !93, !397, !93, !652, !132, !132}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !638, file: !56, line: 286, baseType: !50, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !638, file: !56, line: 287, baseType: !132, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !638, file: !56, line: 288, baseType: !132, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !638, file: !56, line: 289, baseType: !657, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !156, line: 1126, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!155, !307, !93, !132, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !638, file: !56, line: 290, baseType: !54, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !56, line: 291, baseType: !54, size: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !55, file: !56, line: 391, baseType: !665, size: 512)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !56, line: 309, size: 512, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !665, file: !56, line: 310, baseType: !54, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !665, file: !56, line: 310, baseType: !36, size: 8, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !665, file: !56, line: 310, baseType: !36, size: 8, offset: 72)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !665, file: !56, line: 310, baseType: !43, size: 16, offset: 80)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !665, file: !56, line: 310, baseType: !36, size: 8, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !665, file: !56, line: 310, baseType: !36, size: 8, offset: 104)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !665, file: !56, line: 311, baseType: !36, size: 8, offset: 112)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !665, file: !56, line: 312, baseType: !36, size: 8, offset: 120)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !665, file: !56, line: 313, baseType: !132, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !665, file: !56, line: 314, baseType: !50, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !665, file: !56, line: 315, baseType: !119, size: 64, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !665, file: !56, line: 316, baseType: !47, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !665, file: !56, line: 317, baseType: !47, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !665, file: !56, line: 318, baseType: !93, size: 32, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !55, file: !56, line: 392, baseType: !682, size: 448)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !56, line: 342, size: 448, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !682, file: !56, line: 343, baseType: !54, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !56, line: 343, baseType: !36, size: 8, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !56, line: 343, baseType: !36, size: 8, offset: 72)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !682, file: !56, line: 343, baseType: !43, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !56, line: 343, baseType: !36, size: 8, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !682, file: !56, line: 343, baseType: !50, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !682, file: !56, line: 344, baseType: !50, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !682, file: !56, line: 345, baseType: !132, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !682, file: !56, line: 346, baseType: !47, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !682, file: !56, line: 347, baseType: !93, size: 32, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !55, file: !56, line: 393, baseType: !695, size: 256)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !56, line: 352, size: 256, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !707}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !695, file: !56, line: 353, baseType: !54, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !695, file: !56, line: 353, baseType: !36, size: 8, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !695, file: !56, line: 353, baseType: !36, size: 8, offset: 72)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !695, file: !56, line: 353, baseType: !43, size: 16, offset: 80)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !56, line: 353, baseType: !36, size: 8, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !695, file: !56, line: 353, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !156, line: 1064, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !307, !132}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !695, file: !56, line: 354, baseType: !132, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !55, file: !56, line: 394, baseType: !709, size: 192)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !56, line: 359, size: 192, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !56, line: 360, baseType: !54, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !56, line: 360, baseType: !36, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !56, line: 360, baseType: !36, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !56, line: 360, baseType: !43, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !56, line: 360, baseType: !36, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !56, line: 360, baseType: !54, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !55, file: !56, line: 401, baseType: !51, size: 384)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !51, file: !29, line: 135, baseType: !36, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !51, file: !29, line: 136, baseType: !36, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !51, file: !29, line: 137, baseType: !43, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !51, file: !29, line: 138, baseType: !722, size: 32, offset: 96)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !723, line: 328, size: 32, elements: !724)
!723 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !722, file: !723, line: 329, baseType: !93, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !722, file: !723, line: 330, baseType: !727, size: 32)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 4)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !51, file: !29, line: 139, baseType: !50, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !51, file: !29, line: 140, baseType: !50, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !51, file: !29, line: 141, baseType: !50, size: 64, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !51, file: !29, line: 142, baseType: !169, size: 16, offset: 320)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !29, line: 845, baseType: !735, size: 64, offset: 320)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !29, line: 732, size: 64, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !735, file: !29, line: 733, baseType: !79, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !735, file: !29, line: 734, baseType: !93, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !735, file: !29, line: 735, baseType: !91, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !735, file: !29, line: 736, baseType: !47, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !735, file: !29, line: 737, baseType: !91, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !735, file: !29, line: 738, baseType: !27, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !32, file: !29, line: 845, baseType: !36, size: 8, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !28, file: !29, line: 893, baseType: !745, size: 640)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !29, line: 851, size: 640, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !745, file: !29, line: 852, baseType: !27, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !29, line: 852, baseType: !36, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !29, line: 852, baseType: !36, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !745, file: !29, line: 852, baseType: !43, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !745, file: !29, line: 852, baseType: !47, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !29, line: 852, baseType: !27, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !745, file: !29, line: 852, baseType: !50, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !29, line: 852, baseType: !735, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !745, file: !29, line: 852, baseType: !36, size: 8, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !745, file: !29, line: 852, baseType: !91, size: 64, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !745, file: !29, line: 853, baseType: !47, size: 64, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !745, file: !29, line: 854, baseType: !93, size: 32, offset: 576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !745, file: !29, line: 855, baseType: !93, size: 32, offset: 608)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !28, file: !29, line: 894, baseType: !761, size: 1600)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !29, line: 862, size: 1600, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !761, file: !29, line: 863, baseType: !27, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !761, file: !29, line: 863, baseType: !36, size: 8, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !29, line: 863, baseType: !36, size: 8, offset: 72)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !761, file: !29, line: 863, baseType: !43, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !761, file: !29, line: 863, baseType: !47, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !761, file: !29, line: 863, baseType: !27, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !761, file: !29, line: 863, baseType: !50, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !761, file: !29, line: 863, baseType: !735, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !761, file: !29, line: 863, baseType: !36, size: 8, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !761, file: !29, line: 863, baseType: !27, size: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !761, file: !29, line: 864, baseType: !27, size: 64, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !761, file: !29, line: 865, baseType: !91, size: 64, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !761, file: !29, line: 866, baseType: !36, size: 8, offset: 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !761, file: !29, line: 867, baseType: !91, size: 64, offset: 704)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !761, file: !29, line: 868, baseType: !91, size: 64, offset: 768)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !761, file: !29, line: 869, baseType: !91, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !761, file: !29, line: 870, baseType: !727, size: 32, offset: 896)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !761, file: !29, line: 871, baseType: !93, size: 32, offset: 928)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !761, file: !29, line: 872, baseType: !93, size: 32, offset: 960)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !761, file: !29, line: 873, baseType: !93, size: 32, offset: 992)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !761, file: !29, line: 874, baseType: !93, size: 32, offset: 1024)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !761, file: !29, line: 875, baseType: !93, size: 32, offset: 1056)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !761, file: !29, line: 876, baseType: !93, size: 32, offset: 1088)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !761, file: !29, line: 877, baseType: !93, size: 32, offset: 1120)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !761, file: !29, line: 878, baseType: !93, size: 32, offset: 1152)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !761, file: !29, line: 879, baseType: !93, size: 32, offset: 1184)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !761, file: !29, line: 880, baseType: !93, size: 32, offset: 1216)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !761, file: !29, line: 881, baseType: !93, size: 32, offset: 1248)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !761, file: !29, line: 882, baseType: !93, size: 32, offset: 1280)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !761, file: !29, line: 883, baseType: !93, size: 32, offset: 1312)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !761, file: !29, line: 884, baseType: !43, size: 16, offset: 1344)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !761, file: !29, line: 885, baseType: !36, size: 8, offset: 1360)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !761, file: !29, line: 886, baseType: !36, size: 8, offset: 1368)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !761, file: !29, line: 887, baseType: !36, size: 8, offset: 1376)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !761, file: !29, line: 888, baseType: !798, size: 160, offset: 1384)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 20)
!801 = !{!802, !803, !804, !805}
!802 = !DILocalVariable(name: "op", arg: 1, scope: !24, file: !3, line: 37, type: !27)
!803 = !DILocalVariable(name: "argn", arg: 2, scope: !24, file: !3, line: 37, type: !93)
!804 = !DILocalVariable(name: "arg", scope: !24, file: !3, line: 39, type: !27)
!805 = !DILocalVariable(name: "op_info", scope: !24, file: !3, line: 40, type: !336)
!806 = !DILocation(line: 37, column: 67, scope: !24)
!807 = !DILocation(line: 37, column: 75, scope: !24)
!808 = !DILocation(line: 39, column: 2, scope: !24)
!809 = !DILocation(line: 39, column: 27, scope: !24)
!810 = !DILocation(line: 40, column: 2, scope: !24)
!811 = !DILocation(line: 40, column: 33, scope: !24)
!812 = !DILocation(line: 52, column: 36, scope: !24)
!813 = !DILocation(line: 52, column: 47, scope: !24)
!814 = !DILocation(line: 52, column: 12, scope: !24)
!815 = !DILocation(line: 52, column: 10, scope: !24)
!816 = !DILocation(line: 53, column: 6, scope: !817)
!817 = distinct !DILexicalBlock(scope: !24, file: !3, line: 53, column: 6)
!818 = !DILocation(line: 53, column: 15, scope: !817)
!819 = !DILocation(line: 53, column: 21, scope: !817)
!820 = !DILocation(line: 53, column: 6, scope: !24)
!821 = !DILocation(line: 57, column: 3, scope: !822)
!822 = distinct !DILexicalBlock(scope: !817, file: !3, line: 53, column: 43)
!823 = !DILocation(line: 62, column: 8, scope: !824)
!824 = distinct !DILexicalBlock(scope: !24, file: !3, line: 62, column: 6)
!825 = !DILocation(line: 62, column: 17, scope: !824)
!826 = !DILocation(line: 62, column: 23, scope: !824)
!827 = !DILocation(line: 62, column: 6, scope: !24)
!828 = !DILocation(line: 66, column: 3, scope: !829)
!829 = distinct !DILexicalBlock(scope: !824, file: !3, line: 62, column: 40)
!830 = !DILocation(line: 71, column: 8, scope: !24)
!831 = !DILocation(line: 71, column: 19, scope: !24)
!832 = !DILocation(line: 71, column: 25, scope: !24)
!833 = !DILocation(line: 71, column: 6, scope: !24)
!834 = !DILocation(line: 72, column: 2, scope: !24)
!835 = !DILocation(line: 72, column: 9, scope: !24)
!836 = !DILocation(line: 72, column: 13, scope: !24)
!837 = !DILocation(line: 72, column: 16, scope: !24)
!838 = !DILocation(line: 0, scope: !24)
!839 = !DILocation(line: 73, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !24, file: !3, line: 72, column: 22)
!841 = !DILocation(line: 74, column: 9, scope: !840)
!842 = !DILocation(line: 74, column: 21, scope: !840)
!843 = !DILocation(line: 74, column: 7, scope: !840)
!844 = distinct !{!844, !834, !845, !846, !847}
!845 = !DILocation(line: 75, column: 2, scope: !24)
!846 = !{!"llvm.loop.mustprogress"}
!847 = !{!"llvm.loop.unroll.disable"}
!848 = !DILocation(line: 77, column: 10, scope: !24)
!849 = !DILocation(line: 77, column: 2, scope: !24)
!850 = !DILocation(line: 78, column: 1, scope: !24)
!851 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !852, file: !852, line: 108, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!852 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!853 = !DISubroutineType(types: !854)
!854 = !{!336, !43}
!855 = distinct !DISubprogram(name: "acpi_ps_append_arg", scope: !3, file: !3, line: 94, type: !856, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !27, !27}
!858 = !{!859, !860, !861, !862}
!859 = !DILocalVariable(name: "op", arg: 1, scope: !855, file: !3, line: 94, type: !27)
!860 = !DILocalVariable(name: "arg", arg: 2, scope: !855, file: !3, line: 94, type: !27)
!861 = !DILocalVariable(name: "prev_arg", scope: !855, file: !3, line: 96, type: !27)
!862 = !DILocalVariable(name: "op_info", scope: !855, file: !3, line: 97, type: !336)
!863 = !DILocation(line: 94, column: 45, scope: !855)
!864 = !DILocation(line: 94, column: 74, scope: !855)
!865 = !DILocation(line: 96, column: 2, scope: !855)
!866 = !DILocation(line: 96, column: 27, scope: !855)
!867 = !DILocation(line: 97, column: 2, scope: !855)
!868 = !DILocation(line: 97, column: 33, scope: !855)
!869 = !DILocation(line: 101, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !855, file: !3, line: 101, column: 6)
!871 = !DILocation(line: 101, column: 6, scope: !855)
!872 = !DILocation(line: 102, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !3, line: 101, column: 11)
!874 = !DILocation(line: 107, column: 36, scope: !855)
!875 = !DILocation(line: 107, column: 47, scope: !855)
!876 = !DILocation(line: 107, column: 12, scope: !855)
!877 = !DILocation(line: 107, column: 10, scope: !855)
!878 = !DILocation(line: 108, column: 6, scope: !879)
!879 = distinct !DILexicalBlock(scope: !855, file: !3, line: 108, column: 6)
!880 = !DILocation(line: 108, column: 15, scope: !879)
!881 = !DILocation(line: 108, column: 21, scope: !879)
!882 = !DILocation(line: 108, column: 6, scope: !855)
!883 = !DILocation(line: 112, column: 3, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !3, line: 108, column: 43)
!885 = !DILocation(line: 114, column: 3, scope: !884)
!886 = !DILocation(line: 119, column: 8, scope: !887)
!887 = distinct !DILexicalBlock(scope: !855, file: !3, line: 119, column: 6)
!888 = !DILocation(line: 119, column: 17, scope: !887)
!889 = !DILocation(line: 119, column: 23, scope: !887)
!890 = !DILocation(line: 119, column: 6, scope: !855)
!891 = !DILocation(line: 123, column: 3, scope: !892)
!892 = distinct !DILexicalBlock(scope: !887, file: !3, line: 119, column: 40)
!893 = !DILocation(line: 128, column: 6, scope: !894)
!894 = distinct !DILexicalBlock(scope: !855, file: !3, line: 128, column: 6)
!895 = !DILocation(line: 128, column: 17, scope: !894)
!896 = !DILocation(line: 128, column: 23, scope: !894)
!897 = !DILocation(line: 128, column: 6, scope: !855)
!898 = !DILocation(line: 132, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !3, line: 128, column: 28)
!900 = !DILocation(line: 132, column: 25, scope: !899)
!901 = !DILocation(line: 132, column: 31, scope: !899)
!902 = !DILocation(line: 132, column: 12, scope: !899)
!903 = !DILocation(line: 133, column: 3, scope: !899)
!904 = !DILocation(line: 133, column: 10, scope: !899)
!905 = !DILocation(line: 133, column: 27, scope: !899)
!906 = !DILocation(line: 134, column: 15, scope: !907)
!907 = distinct !DILexicalBlock(scope: !899, file: !3, line: 133, column: 33)
!908 = !DILocation(line: 134, column: 32, scope: !907)
!909 = !DILocation(line: 134, column: 13, scope: !907)
!910 = distinct !{!910, !903, !911, !846, !847}
!911 = !DILocation(line: 135, column: 3, scope: !899)
!912 = !DILocation(line: 136, column: 27, scope: !899)
!913 = !DILocation(line: 136, column: 3, scope: !899)
!914 = !DILocation(line: 136, column: 20, scope: !899)
!915 = !DILocation(line: 136, column: 25, scope: !899)
!916 = !DILocation(line: 137, column: 2, scope: !899)
!917 = !DILocation(line: 140, column: 26, scope: !918)
!918 = distinct !DILexicalBlock(scope: !894, file: !3, line: 137, column: 9)
!919 = !DILocation(line: 140, column: 3, scope: !918)
!920 = !DILocation(line: 140, column: 14, scope: !918)
!921 = !DILocation(line: 140, column: 24, scope: !918)
!922 = !DILocation(line: 145, column: 2, scope: !855)
!923 = !DILocation(line: 145, column: 9, scope: !855)
!924 = !DILocation(line: 146, column: 24, scope: !925)
!925 = distinct !DILexicalBlock(scope: !855, file: !3, line: 145, column: 14)
!926 = !DILocation(line: 146, column: 3, scope: !925)
!927 = !DILocation(line: 146, column: 15, scope: !925)
!928 = !DILocation(line: 146, column: 22, scope: !925)
!929 = !DILocation(line: 147, column: 9, scope: !925)
!930 = !DILocation(line: 147, column: 21, scope: !925)
!931 = !DILocation(line: 147, column: 7, scope: !925)
!932 = !DILocation(line: 149, column: 3, scope: !925)
!933 = !DILocation(line: 149, column: 14, scope: !925)
!934 = !DILocation(line: 149, column: 29, scope: !925)
!935 = distinct !{!935, !922, !936, !846, !847}
!936 = !DILocation(line: 150, column: 2, scope: !855)
!937 = !DILocation(line: 152, column: 2, scope: !855)
!938 = !DILocation(line: 153, column: 1, scope: !855)
!939 = !DISubprogram(name: "acpi_error", scope: !940, file: !940, line: 901, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!941 = !DISubroutineType(types: !942)
!942 = !{null, !943, !93, !943, null}
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!944 = distinct !DISubprogram(name: "acpi_ps_get_depth_next", scope: !3, file: !3, line: 169, type: !945, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{!27, !27, !27}
!947 = !{!948, !949, !950, !951, !952}
!948 = !DILocalVariable(name: "origin", arg: 1, scope: !944, file: !3, line: 169, type: !27)
!949 = !DILocalVariable(name: "op", arg: 2, scope: !944, file: !3, line: 170, type: !27)
!950 = !DILocalVariable(name: "next", scope: !944, file: !3, line: 172, type: !27)
!951 = !DILocalVariable(name: "parent", scope: !944, file: !3, line: 173, type: !27)
!952 = !DILocalVariable(name: "arg", scope: !944, file: !3, line: 174, type: !27)
!953 = !DILocation(line: 169, column: 74, scope: !944)
!954 = !DILocation(line: 170, column: 32, scope: !944)
!955 = !DILocation(line: 172, column: 2, scope: !944)
!956 = !DILocation(line: 172, column: 27, scope: !944)
!957 = !DILocation(line: 173, column: 2, scope: !944)
!958 = !DILocation(line: 173, column: 27, scope: !944)
!959 = !DILocation(line: 174, column: 2, scope: !944)
!960 = !DILocation(line: 174, column: 27, scope: !944)
!961 = !DILocation(line: 178, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !944, file: !3, line: 178, column: 6)
!963 = !DILocation(line: 178, column: 6, scope: !944)
!964 = !DILocation(line: 179, column: 3, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !3, line: 178, column: 11)
!966 = !DILocation(line: 184, column: 25, scope: !944)
!967 = !DILocation(line: 184, column: 9, scope: !944)
!968 = !DILocation(line: 184, column: 7, scope: !944)
!969 = !DILocation(line: 185, column: 6, scope: !970)
!970 = distinct !DILexicalBlock(scope: !944, file: !3, line: 185, column: 6)
!971 = !DILocation(line: 185, column: 6, scope: !944)
!972 = !DILocation(line: 187, column: 11, scope: !973)
!973 = distinct !DILexicalBlock(scope: !970, file: !3, line: 185, column: 12)
!974 = !DILocation(line: 187, column: 3, scope: !973)
!975 = !DILocation(line: 192, column: 9, scope: !944)
!976 = !DILocation(line: 192, column: 20, scope: !944)
!977 = !DILocation(line: 192, column: 7, scope: !944)
!978 = !DILocation(line: 193, column: 6, scope: !979)
!979 = distinct !DILexicalBlock(scope: !944, file: !3, line: 193, column: 6)
!980 = !DILocation(line: 193, column: 6, scope: !944)
!981 = !DILocation(line: 195, column: 11, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !3, line: 193, column: 12)
!983 = !DILocation(line: 195, column: 3, scope: !982)
!984 = !DILocation(line: 200, column: 11, scope: !944)
!985 = !DILocation(line: 200, column: 22, scope: !944)
!986 = !DILocation(line: 200, column: 9, scope: !944)
!987 = !DILocation(line: 202, column: 2, scope: !944)
!988 = !DILocation(line: 202, column: 9, scope: !944)
!989 = !DILocation(line: 203, column: 25, scope: !990)
!990 = distinct !DILexicalBlock(scope: !944, file: !3, line: 202, column: 17)
!991 = !DILocation(line: 203, column: 9, scope: !990)
!992 = !DILocation(line: 203, column: 7, scope: !990)
!993 = !DILocation(line: 204, column: 3, scope: !990)
!994 = !DILocation(line: 204, column: 10, scope: !990)
!995 = !DILocation(line: 204, column: 14, scope: !990)
!996 = !DILocation(line: 204, column: 18, scope: !990)
!997 = !DILocation(line: 204, column: 25, scope: !990)
!998 = !DILocation(line: 204, column: 22, scope: !990)
!999 = !DILocation(line: 204, column: 33, scope: !990)
!1000 = !DILocation(line: 204, column: 37, scope: !990)
!1001 = !DILocation(line: 204, column: 44, scope: !990)
!1002 = !DILocation(line: 204, column: 41, scope: !990)
!1003 = !DILocation(line: 0, scope: !990)
!1004 = !DILocation(line: 207, column: 10, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !990, file: !3, line: 204, column: 49)
!1006 = !DILocation(line: 207, column: 22, scope: !1005)
!1007 = !DILocation(line: 207, column: 8, scope: !1005)
!1008 = distinct !{!1008, !993, !1009, !846, !847}
!1009 = !DILocation(line: 208, column: 3, scope: !990)
!1010 = !DILocation(line: 210, column: 7, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !990, file: !3, line: 210, column: 7)
!1012 = !DILocation(line: 210, column: 14, scope: !1011)
!1013 = !DILocation(line: 210, column: 11, scope: !1011)
!1014 = !DILocation(line: 210, column: 7, scope: !990)
!1015 = !DILocation(line: 214, column: 4, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 210, column: 22)
!1017 = !DILocation(line: 217, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !990, file: !3, line: 217, column: 7)
!1019 = !DILocation(line: 217, column: 22, scope: !1018)
!1020 = !DILocation(line: 217, column: 7, scope: !990)
!1021 = !DILocation(line: 222, column: 12, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 217, column: 28)
!1023 = !DILocation(line: 222, column: 27, scope: !1022)
!1024 = !DILocation(line: 222, column: 4, scope: !1022)
!1025 = !DILocation(line: 225, column: 8, scope: !990)
!1026 = !DILocation(line: 225, column: 6, scope: !990)
!1027 = !DILocation(line: 226, column: 12, scope: !990)
!1028 = !DILocation(line: 226, column: 27, scope: !990)
!1029 = !DILocation(line: 226, column: 10, scope: !990)
!1030 = distinct !{!1030, !987, !1031, !846, !847}
!1031 = !DILocation(line: 227, column: 2, scope: !944)
!1032 = !DILocation(line: 230, column: 10, scope: !944)
!1033 = !DILocation(line: 230, column: 2, scope: !944)
!1034 = !DILocation(line: 231, column: 1, scope: !944)
