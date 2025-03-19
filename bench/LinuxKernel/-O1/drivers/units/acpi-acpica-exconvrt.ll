; ModuleID = 'drivers/acpi/acpica/exconvrt.c'
source_filename = "drivers/acpi/acpica/exconvrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }

@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@_acpi_module_name = internal constant [9 x i8] c"exconvrt\00", align 1, !dbg !0
@.str = private unnamed_addr constant [45 x i8] c"Bad destination type during conversion: 0x%X\00", align 1, !dbg !25
@.str.1 = private unnamed_addr constant [55 x i8] c"Unknown Target type ID 0x%X AmlOpcode 0x%X DestType %s\00", align 1, !dbg !30

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_convert_to_integer(ptr noundef %obj_desc, ptr noundef %result_desc, i32 noundef %implicit_conversion) #0 align 16 !dbg !48 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %result_desc.addr = alloca ptr, align 8
  %implicit_conversion.addr = alloca i32, align 4
  %return_desc = alloca ptr, align 8
  %pointer = alloca ptr, align 8
  %result = alloca i64, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !812, metadata !DIExpression()), !dbg !820
  store ptr %result_desc, ptr %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result_desc.addr, metadata !813, metadata !DIExpression()), !dbg !821
  store i32 %implicit_conversion, ptr %implicit_conversion.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %implicit_conversion.addr, metadata !814, metadata !DIExpression()), !dbg !822
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #5, !dbg !823
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !815, metadata !DIExpression()), !dbg !824
  call void @llvm.lifetime.start.p0(i64 8, ptr %pointer) #5, !dbg !825
  call void @llvm.dbg.declare(metadata ptr %pointer, metadata !816, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #5, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %result, metadata !817, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %i, metadata !818, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #5, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %count, metadata !819, metadata !DIExpression()), !dbg !832
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !833
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !834
  %1 = load i8, ptr %type, align 1, !dbg !834
  %conv = zext i8 %1 to i32, !dbg !833
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 2, label %sw.bb1
  ], !dbg !835

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !836
  %3 = load ptr, ptr %result_desc.addr, align 8, !dbg !838
  store ptr %2, ptr %3, align 8, !dbg !839
  store i32 0, ptr %retval, align 4, !dbg !840
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !840

sw.bb1:                                           ; preds = %entry, %entry
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !841
  %pointer2 = getelementptr inbounds %struct.acpi_object_buffer, ptr %4, i32 0, i32 5, !dbg !842
  %5 = load ptr, ptr %pointer2, align 8, !dbg !842
  store ptr %5, ptr %pointer, align 8, !dbg !843
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !844
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %6, i32 0, i32 6, !dbg !845
  %7 = load i32, ptr %length, align 8, !dbg !845
  store i32 %7, ptr %count, align 4, !dbg !846
  br label %sw.epilog, !dbg !847

sw.default:                                       ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !848

sw.epilog:                                        ; preds = %sw.bb1
  store i64 0, ptr %result, align 8, !dbg !849
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !850
  %type3 = getelementptr inbounds %struct.acpi_object_common, ptr %8, i32 0, i32 2, !dbg !851
  %9 = load i8, ptr %type3, align 1, !dbg !851
  %conv4 = zext i8 %9 to i32, !dbg !850
  switch i32 %conv4, label %sw.default19 [
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ], !dbg !852

sw.bb5:                                           ; preds = %sw.epilog
  %10 = load i32, ptr %implicit_conversion.addr, align 4, !dbg !853
  %tobool = icmp ne i32 %10, 0, !dbg !853
  br i1 %tobool, label %if.then, label %if.else, !dbg !856

if.then:                                          ; preds = %sw.bb5
  %11 = load ptr, ptr %pointer, align 8, !dbg !857
  %12 = ptrtoint ptr %11 to i64, !dbg !857
  %13 = inttoptr i64 %12 to ptr, !dbg !857
  %call = call i64 @acpi_ut_implicit_strtoul64(ptr noundef %13) #6, !dbg !859
  store i64 %call, ptr %result, align 8, !dbg !860
  br label %if.end, !dbg !861

if.else:                                          ; preds = %sw.bb5
  %14 = load ptr, ptr %pointer, align 8, !dbg !862
  %15 = ptrtoint ptr %14 to i64, !dbg !862
  %16 = inttoptr i64 %15 to ptr, !dbg !862
  %call6 = call i64 @acpi_ut_explicit_strtoul64(ptr noundef %16) #6, !dbg !864
  store i64 %call6, ptr %result, align 8, !dbg !865
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog20, !dbg !866

sw.bb7:                                           ; preds = %sw.epilog
  %17 = load i32, ptr %count, align 4, !dbg !867
  %tobool8 = icmp ne i32 %17, 0, !dbg !867
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !869

if.then9:                                         ; preds = %sw.bb7
  store i32 12298, ptr %retval, align 4, !dbg !870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !870

if.end10:                                         ; preds = %sw.bb7
  %18 = load i32, ptr %count, align 4, !dbg !872
  %19 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !874
  %conv11 = zext i8 %19 to i32, !dbg !874
  %cmp = icmp ugt i32 %18, %conv11, !dbg !875
  br i1 %cmp, label %if.then13, label %if.end15, !dbg !876

if.then13:                                        ; preds = %if.end10
  %20 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !877
  %conv14 = zext i8 %20 to i32, !dbg !877
  store i32 %conv14, ptr %count, align 4, !dbg !879
  br label %if.end15, !dbg !880

if.end15:                                         ; preds = %if.then13, %if.end10
  store i32 0, ptr %i, align 4, !dbg !881
  br label %for.cond, !dbg !883

for.cond:                                         ; preds = %for.inc, %if.end15
  %21 = load i32, ptr %i, align 4, !dbg !884
  %22 = load i32, ptr %count, align 4, !dbg !886
  %cmp16 = icmp ult i32 %21, %22, !dbg !887
  br i1 %cmp16, label %for.body, label %for.end, !dbg !888

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %pointer, align 8, !dbg !889
  %24 = load i32, ptr %i, align 4, !dbg !891
  %idxprom = zext i32 %24 to i64, !dbg !889
  %arrayidx = getelementptr i8, ptr %23, i64 %idxprom, !dbg !889
  %25 = load i8, ptr %arrayidx, align 1, !dbg !889
  %conv18 = zext i8 %25 to i64, !dbg !892
  %26 = load i32, ptr %i, align 4, !dbg !893
  %mul = mul i32 %26, 8, !dbg !894
  %sh_prom = zext i32 %mul to i64, !dbg !895
  %shl = shl i64 %conv18, %sh_prom, !dbg !895
  %27 = load i64, ptr %result, align 8, !dbg !896
  %or = or i64 %27, %shl, !dbg !896
  store i64 %or, ptr %result, align 8, !dbg !896
  br label %for.inc, !dbg !897

for.inc:                                          ; preds = %for.body
  %28 = load i32, ptr %i, align 4, !dbg !898
  %inc = add i32 %28, 1, !dbg !898
  store i32 %inc, ptr %i, align 4, !dbg !898
  br label %for.cond, !dbg !899, !llvm.loop !900

for.end:                                          ; preds = %for.cond
  br label %sw.epilog20, !dbg !904

sw.default19:                                     ; preds = %sw.epilog
  br label %sw.epilog20, !dbg !905

sw.epilog20:                                      ; preds = %sw.default19, %for.end, %if.end
  %29 = load i64, ptr %result, align 8, !dbg !906
  %call21 = call ptr @acpi_ut_create_integer_object(i64 noundef %29) #6, !dbg !907
  store ptr %call21, ptr %return_desc, align 8, !dbg !908
  %30 = load ptr, ptr %return_desc, align 8, !dbg !909
  %tobool22 = icmp ne ptr %30, null, !dbg !909
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !911

if.then23:                                        ; preds = %sw.epilog20
  store i32 4, ptr %retval, align 4, !dbg !912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !912

if.end24:                                         ; preds = %sw.epilog20
  %31 = load ptr, ptr %return_desc, align 8, !dbg !914
  %call25 = call zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef %31) #6, !dbg !915
  %32 = load ptr, ptr %return_desc, align 8, !dbg !916
  %33 = load ptr, ptr %result_desc.addr, align 8, !dbg !917
  store ptr %32, ptr %33, align 8, !dbg !918
  store i32 0, ptr %retval, align 4, !dbg !919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !919

cleanup:                                          ; preds = %if.end24, %if.then23, %if.then9, %sw.default, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #5, !dbg !920
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !920
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #5, !dbg !920
  call void @llvm.lifetime.end.p0(i64 8, ptr %pointer) #5, !dbg !920
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #5, !dbg !920
  %34 = load i32, ptr %retval, align 4, !dbg !920
  ret i32 %34, !dbg !920
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !921 dso_local i64 @acpi_ut_implicit_strtoul64(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !925 dso_local i64 @acpi_ut_explicit_strtoul64(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !926 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !929 dso_local zeroext i8 @acpi_ex_truncate_for32bit_table(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_convert_to_buffer(ptr noundef %obj_desc, ptr noundef %result_desc) #0 align 16 !dbg !933 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %result_desc.addr = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %new_buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !937, metadata !DIExpression()), !dbg !941
  store ptr %result_desc, ptr %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result_desc.addr, metadata !938, metadata !DIExpression()), !dbg !942
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #5, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !939, metadata !DIExpression()), !dbg !944
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_buf) #5, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %new_buf, metadata !940, metadata !DIExpression()), !dbg !946
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !947
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !948
  %1 = load i8, ptr %type, align 1, !dbg !948
  %conv = zext i8 %1 to i32, !dbg !947
  switch i32 %conv, label %sw.default [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ], !dbg !949

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !950
  %3 = load ptr, ptr %result_desc.addr, align 8, !dbg !952
  store ptr %2, ptr %3, align 8, !dbg !953
  store i32 0, ptr %retval, align 4, !dbg !954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !954

sw.bb1:                                           ; preds = %entry
  %4 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !955
  %conv2 = zext i8 %4 to i64, !dbg !955
  %call = call ptr @acpi_ut_create_buffer_object(i64 noundef %conv2) #6, !dbg !956
  store ptr %call, ptr %return_desc, align 8, !dbg !957
  %5 = load ptr, ptr %return_desc, align 8, !dbg !958
  %tobool = icmp ne ptr %5, null, !dbg !958
  br i1 %tobool, label %if.end, label %if.then, !dbg !960

if.then:                                          ; preds = %sw.bb1
  store i32 4, ptr %retval, align 4, !dbg !961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !961

if.end:                                           ; preds = %sw.bb1
  %6 = load ptr, ptr %return_desc, align 8, !dbg !963
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %6, i32 0, i32 5, !dbg !964
  %7 = load ptr, ptr %pointer, align 8, !dbg !964
  store ptr %7, ptr %new_buf, align 8, !dbg !965
  %8 = load ptr, ptr %new_buf, align 8, !dbg !966
  %9 = load ptr, ptr %obj_desc.addr, align 8, !dbg !967
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %9, i32 0, i32 6, !dbg !968
  %10 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !969
  %conv3 = zext i8 %10 to i64, !dbg !969
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 8 %value, i64 %conv3, i1 false), !dbg !970
  br label %sw.epilog, !dbg !971

sw.bb4:                                           ; preds = %entry
  %11 = load ptr, ptr %obj_desc.addr, align 8, !dbg !972
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %11, i32 0, i32 6, !dbg !973
  %12 = load i32, ptr %length, align 8, !dbg !973
  %conv5 = zext i32 %12 to i64, !dbg !974
  %add = add i64 %conv5, 1, !dbg !975
  %call6 = call ptr @acpi_ut_create_buffer_object(i64 noundef %add) #6, !dbg !976
  store ptr %call6, ptr %return_desc, align 8, !dbg !977
  %13 = load ptr, ptr %return_desc, align 8, !dbg !978
  %tobool7 = icmp ne ptr %13, null, !dbg !978
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !980

if.then8:                                         ; preds = %sw.bb4
  store i32 4, ptr %retval, align 4, !dbg !981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !981

if.end9:                                          ; preds = %sw.bb4
  %14 = load ptr, ptr %return_desc, align 8, !dbg !983
  %pointer10 = getelementptr inbounds %struct.acpi_object_buffer, ptr %14, i32 0, i32 5, !dbg !984
  %15 = load ptr, ptr %pointer10, align 8, !dbg !984
  store ptr %15, ptr %new_buf, align 8, !dbg !985
  %16 = load ptr, ptr %new_buf, align 8, !dbg !986
  %17 = load ptr, ptr %obj_desc.addr, align 8, !dbg !987
  %pointer11 = getelementptr inbounds %struct.acpi_object_string, ptr %17, i32 0, i32 5, !dbg !988
  %18 = load ptr, ptr %pointer11, align 8, !dbg !988
  %19 = load ptr, ptr %obj_desc.addr, align 8, !dbg !989
  %length12 = getelementptr inbounds %struct.acpi_object_string, ptr %19, i32 0, i32 6, !dbg !990
  %20 = load i32, ptr %length12, align 8, !dbg !990
  %conv13 = zext i32 %20 to i64, !dbg !989
  %call14 = call ptr @strncpy(ptr noundef %16, ptr noundef %18, i64 noundef %conv13) #6, !dbg !991
  br label %sw.epilog, !dbg !992

sw.default:                                       ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !993

sw.epilog:                                        ; preds = %if.end9, %if.end
  %21 = load ptr, ptr %return_desc, align 8, !dbg !994
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %21, i32 0, i32 4, !dbg !995
  %22 = load i8, ptr %flags, align 4, !dbg !996
  %conv15 = zext i8 %22 to i32, !dbg !996
  %or = or i32 %conv15, 4, !dbg !996
  %conv16 = trunc i32 %or to i8, !dbg !996
  store i8 %conv16, ptr %flags, align 4, !dbg !996
  %23 = load ptr, ptr %return_desc, align 8, !dbg !997
  %24 = load ptr, ptr %result_desc.addr, align 8, !dbg !998
  store ptr %23, ptr %24, align 8, !dbg !999
  store i32 0, ptr %retval, align 4, !dbg !1000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1000

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then8, %if.then, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_buf) #5, !dbg !1001
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #5, !dbg !1001
  %25 = load i32, ptr %retval, align 4, !dbg !1001
  ret i32 %25, !dbg !1001
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1002 dso_local ptr @acpi_ut_create_buffer_object(i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1005 dso_local ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_convert_to_string(ptr noundef %obj_desc, ptr noundef %result_desc, i32 noundef %type) #0 align 16 !dbg !1013 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %result_desc.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %return_desc = alloca ptr, align 8
  %new_buf = alloca ptr, align 8
  %i = alloca i32, align 4
  %string_length = alloca i32, align 4
  %base = alloca i16, align 2
  %separator = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1015, metadata !DIExpression()), !dbg !1024
  store ptr %result_desc, ptr %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result_desc.addr, metadata !1016, metadata !DIExpression()), !dbg !1025
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1017, metadata !DIExpression()), !dbg !1026
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #5, !dbg !1027
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !1018, metadata !DIExpression()), !dbg !1028
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_buf) #5, !dbg !1029
  call void @llvm.dbg.declare(metadata ptr %new_buf, metadata !1019, metadata !DIExpression()), !dbg !1030
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1031
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1020, metadata !DIExpression()), !dbg !1032
  call void @llvm.lifetime.start.p0(i64 4, ptr %string_length) #5, !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %string_length, metadata !1021, metadata !DIExpression()), !dbg !1034
  store i32 0, ptr %string_length, align 4, !dbg !1034
  call void @llvm.lifetime.start.p0(i64 2, ptr %base) #5, !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %base, metadata !1022, metadata !DIExpression()), !dbg !1036
  store i16 16, ptr %base, align 2, !dbg !1036
  call void @llvm.lifetime.start.p0(i64 1, ptr %separator) #5, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %separator, metadata !1023, metadata !DIExpression()), !dbg !1038
  store i8 44, ptr %separator, align 1, !dbg !1038
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1039
  %type1 = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !1040
  %1 = load i8, ptr %type1, align 1, !dbg !1040
  %conv = zext i8 %1 to i32, !dbg !1039
  switch i32 %conv, label %sw.default71 [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb7
  ], !dbg !1041

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1042
  %3 = load ptr, ptr %result_desc.addr, align 8, !dbg !1044
  store ptr %2, ptr %3, align 8, !dbg !1045
  store i32 0, ptr %retval, align 4, !dbg !1046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1046

sw.bb2:                                           ; preds = %entry
  %4 = load i32, ptr %type.addr, align 4, !dbg !1047
  switch i32 %4, label %sw.default [
    i32 3, label %sw.bb3
  ], !dbg !1048

sw.bb3:                                           ; preds = %sw.bb2
  store i32 20, ptr %string_length, align 4, !dbg !1049
  store i16 10, ptr %base, align 2, !dbg !1051
  br label %sw.epilog, !dbg !1052

sw.default:                                       ; preds = %sw.bb2
  %5 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !1053
  %conv4 = zext i8 %5 to i32, !dbg !1053
  %shl = shl i32 %conv4, 1, !dbg !1053
  store i32 %shl, ptr %string_length, align 4, !dbg !1054
  br label %sw.epilog, !dbg !1055

sw.epilog:                                        ; preds = %sw.default, %sw.bb3
  %6 = load i32, ptr %string_length, align 4, !dbg !1056
  %conv5 = zext i32 %6 to i64, !dbg !1057
  %call = call ptr @acpi_ut_create_string_object(i64 noundef %conv5) #6, !dbg !1058
  store ptr %call, ptr %return_desc, align 8, !dbg !1059
  %7 = load ptr, ptr %return_desc, align 8, !dbg !1060
  %tobool = icmp ne ptr %7, null, !dbg !1060
  br i1 %tobool, label %if.end, label %if.then, !dbg !1062

if.then:                                          ; preds = %sw.epilog
  store i32 4, ptr %retval, align 4, !dbg !1063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1063

if.end:                                           ; preds = %sw.epilog
  %8 = load ptr, ptr %return_desc, align 8, !dbg !1065
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %8, i32 0, i32 5, !dbg !1066
  %9 = load ptr, ptr %pointer, align 8, !dbg !1066
  store ptr %9, ptr %new_buf, align 8, !dbg !1067
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1068
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %10, i32 0, i32 6, !dbg !1069
  %11 = load i64, ptr %value, align 8, !dbg !1069
  %12 = load i16, ptr %base, align 2, !dbg !1070
  %13 = load ptr, ptr %new_buf, align 8, !dbg !1071
  %14 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !1072
  %call6 = call i32 @acpi_ex_convert_to_ascii(i64 noundef %11, i16 noundef zeroext %12, ptr noundef %13, i8 noundef zeroext %14) #6, !dbg !1073
  store i32 %call6, ptr %string_length, align 4, !dbg !1074
  %15 = load i32, ptr %string_length, align 4, !dbg !1075
  %16 = load ptr, ptr %return_desc, align 8, !dbg !1076
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %16, i32 0, i32 6, !dbg !1077
  store i32 %15, ptr %length, align 8, !dbg !1078
  %17 = load ptr, ptr %new_buf, align 8, !dbg !1079
  %18 = load i32, ptr %string_length, align 4, !dbg !1080
  %idxprom = zext i32 %18 to i64, !dbg !1079
  %arrayidx = getelementptr i8, ptr %17, i64 %idxprom, !dbg !1079
  store i8 0, ptr %arrayidx, align 1, !dbg !1081
  br label %sw.epilog72, !dbg !1082

sw.bb7:                                           ; preds = %entry
  %19 = load i32, ptr %type.addr, align 4, !dbg !1083
  switch i32 %19, label %sw.default35 [
    i32 3, label %sw.bb8
    i32 2, label %sw.bb30
    i32 1, label %sw.bb32
  ], !dbg !1084

sw.bb8:                                           ; preds = %sw.bb7
  store i16 10, ptr %base, align 2, !dbg !1085
  store i32 0, ptr %i, align 4, !dbg !1087
  br label %for.cond, !dbg !1089

for.cond:                                         ; preds = %for.inc, %sw.bb8
  %20 = load i32, ptr %i, align 4, !dbg !1090
  %21 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1092
  %length9 = getelementptr inbounds %struct.acpi_object_buffer, ptr %21, i32 0, i32 6, !dbg !1093
  %22 = load i32, ptr %length9, align 8, !dbg !1093
  %cmp = icmp ult i32 %20, %22, !dbg !1094
  br i1 %cmp, label %for.body, label %for.end, !dbg !1095

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1096
  %pointer11 = getelementptr inbounds %struct.acpi_object_buffer, ptr %23, i32 0, i32 5, !dbg !1099
  %24 = load ptr, ptr %pointer11, align 8, !dbg !1099
  %25 = load i32, ptr %i, align 4, !dbg !1100
  %idxprom12 = zext i32 %25 to i64, !dbg !1096
  %arrayidx13 = getelementptr i8, ptr %24, i64 %idxprom12, !dbg !1096
  %26 = load i8, ptr %arrayidx13, align 1, !dbg !1096
  %conv14 = zext i8 %26 to i32, !dbg !1096
  %cmp15 = icmp sge i32 %conv14, 100, !dbg !1101
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !1102

if.then17:                                        ; preds = %for.body
  %27 = load i32, ptr %string_length, align 4, !dbg !1103
  %add = add i32 %27, 4, !dbg !1103
  store i32 %add, ptr %string_length, align 4, !dbg !1103
  br label %if.end29, !dbg !1105

if.else:                                          ; preds = %for.body
  %28 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1106
  %pointer18 = getelementptr inbounds %struct.acpi_object_buffer, ptr %28, i32 0, i32 5, !dbg !1108
  %29 = load ptr, ptr %pointer18, align 8, !dbg !1108
  %30 = load i32, ptr %i, align 4, !dbg !1109
  %idxprom19 = zext i32 %30 to i64, !dbg !1106
  %arrayidx20 = getelementptr i8, ptr %29, i64 %idxprom19, !dbg !1106
  %31 = load i8, ptr %arrayidx20, align 1, !dbg !1106
  %conv21 = zext i8 %31 to i32, !dbg !1106
  %cmp22 = icmp sge i32 %conv21, 10, !dbg !1110
  br i1 %cmp22, label %if.then24, label %if.else26, !dbg !1111

if.then24:                                        ; preds = %if.else
  %32 = load i32, ptr %string_length, align 4, !dbg !1112
  %add25 = add i32 %32, 3, !dbg !1112
  store i32 %add25, ptr %string_length, align 4, !dbg !1112
  br label %if.end28, !dbg !1114

if.else26:                                        ; preds = %if.else
  %33 = load i32, ptr %string_length, align 4, !dbg !1115
  %add27 = add i32 %33, 2, !dbg !1115
  store i32 %add27, ptr %string_length, align 4, !dbg !1115
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then17
  br label %for.inc, !dbg !1117

for.inc:                                          ; preds = %if.end29
  %34 = load i32, ptr %i, align 4, !dbg !1118
  %inc = add i32 %34, 1, !dbg !1118
  store i32 %inc, ptr %i, align 4, !dbg !1118
  br label %for.cond, !dbg !1119, !llvm.loop !1120

for.end:                                          ; preds = %for.cond
  br label %sw.epilog36, !dbg !1122

sw.bb30:                                          ; preds = %sw.bb7
  store i8 32, ptr %separator, align 1, !dbg !1123
  %35 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1124
  %length31 = getelementptr inbounds %struct.acpi_object_buffer, ptr %35, i32 0, i32 6, !dbg !1125
  %36 = load i32, ptr %length31, align 8, !dbg !1125
  %mul = mul i32 %36, 5, !dbg !1126
  store i32 %mul, ptr %string_length, align 4, !dbg !1127
  br label %sw.epilog36, !dbg !1128

sw.bb32:                                          ; preds = %sw.bb7
  store i8 44, ptr %separator, align 1, !dbg !1129
  %37 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1130
  %length33 = getelementptr inbounds %struct.acpi_object_buffer, ptr %37, i32 0, i32 6, !dbg !1131
  %38 = load i32, ptr %length33, align 8, !dbg !1131
  %mul34 = mul i32 %38, 5, !dbg !1132
  store i32 %mul34, ptr %string_length, align 4, !dbg !1133
  br label %sw.epilog36, !dbg !1134

sw.default35:                                     ; preds = %sw.bb7
  store i32 4097, ptr %retval, align 4, !dbg !1135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1135

sw.epilog36:                                      ; preds = %sw.bb32, %sw.bb30, %for.end
  %39 = load i32, ptr %string_length, align 4, !dbg !1136
  %tobool37 = icmp ne i32 %39, 0, !dbg !1136
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1138

if.then38:                                        ; preds = %sw.epilog36
  %40 = load i32, ptr %string_length, align 4, !dbg !1139
  %dec = add i32 %40, -1, !dbg !1139
  store i32 %dec, ptr %string_length, align 4, !dbg !1139
  br label %if.end39, !dbg !1141

if.end39:                                         ; preds = %if.then38, %sw.epilog36
  %41 = load i32, ptr %string_length, align 4, !dbg !1142
  %conv40 = zext i32 %41 to i64, !dbg !1143
  %call41 = call ptr @acpi_ut_create_string_object(i64 noundef %conv40) #6, !dbg !1144
  store ptr %call41, ptr %return_desc, align 8, !dbg !1145
  %42 = load ptr, ptr %return_desc, align 8, !dbg !1146
  %tobool42 = icmp ne ptr %42, null, !dbg !1146
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !1148

if.then43:                                        ; preds = %if.end39
  store i32 4, ptr %retval, align 4, !dbg !1149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1149

if.end44:                                         ; preds = %if.end39
  %43 = load ptr, ptr %return_desc, align 8, !dbg !1151
  %pointer45 = getelementptr inbounds %struct.acpi_object_buffer, ptr %43, i32 0, i32 5, !dbg !1152
  %44 = load ptr, ptr %pointer45, align 8, !dbg !1152
  store ptr %44, ptr %new_buf, align 8, !dbg !1153
  store i32 0, ptr %i, align 4, !dbg !1154
  br label %for.cond46, !dbg !1156

for.cond46:                                       ; preds = %for.inc63, %if.end44
  %45 = load i32, ptr %i, align 4, !dbg !1157
  %46 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1159
  %length47 = getelementptr inbounds %struct.acpi_object_buffer, ptr %46, i32 0, i32 6, !dbg !1160
  %47 = load i32, ptr %length47, align 8, !dbg !1160
  %cmp48 = icmp ult i32 %45, %47, !dbg !1161
  br i1 %cmp48, label %for.body50, label %for.end65, !dbg !1162

for.body50:                                       ; preds = %for.cond46
  %48 = load i16, ptr %base, align 2, !dbg !1163
  %conv51 = zext i16 %48 to i32, !dbg !1163
  %cmp52 = icmp eq i32 %conv51, 16, !dbg !1166
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !1167

if.then54:                                        ; preds = %for.body50
  %49 = load ptr, ptr %new_buf, align 8, !dbg !1168
  %incdec.ptr = getelementptr i8, ptr %49, i32 1, !dbg !1168
  store ptr %incdec.ptr, ptr %new_buf, align 8, !dbg !1168
  store i8 48, ptr %49, align 1, !dbg !1170
  %50 = load ptr, ptr %new_buf, align 8, !dbg !1171
  %incdec.ptr55 = getelementptr i8, ptr %50, i32 1, !dbg !1171
  store ptr %incdec.ptr55, ptr %new_buf, align 8, !dbg !1171
  store i8 120, ptr %50, align 1, !dbg !1172
  br label %if.end56, !dbg !1173

if.end56:                                         ; preds = %if.then54, %for.body50
  %51 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1174
  %pointer57 = getelementptr inbounds %struct.acpi_object_buffer, ptr %51, i32 0, i32 5, !dbg !1175
  %52 = load ptr, ptr %pointer57, align 8, !dbg !1175
  %53 = load i32, ptr %i, align 4, !dbg !1176
  %idxprom58 = zext i32 %53 to i64, !dbg !1174
  %arrayidx59 = getelementptr i8, ptr %52, i64 %idxprom58, !dbg !1174
  %54 = load i8, ptr %arrayidx59, align 1, !dbg !1174
  %conv60 = zext i8 %54 to i64, !dbg !1177
  %55 = load i16, ptr %base, align 2, !dbg !1178
  %56 = load ptr, ptr %new_buf, align 8, !dbg !1179
  %call61 = call i32 @acpi_ex_convert_to_ascii(i64 noundef %conv60, i16 noundef zeroext %55, ptr noundef %56, i8 noundef zeroext 1) #6, !dbg !1180
  %57 = load ptr, ptr %new_buf, align 8, !dbg !1181
  %idx.ext = zext i32 %call61 to i64, !dbg !1181
  %add.ptr = getelementptr i8, ptr %57, i64 %idx.ext, !dbg !1181
  store ptr %add.ptr, ptr %new_buf, align 8, !dbg !1181
  %58 = load i8, ptr %separator, align 1, !dbg !1182
  %59 = load ptr, ptr %new_buf, align 8, !dbg !1183
  %incdec.ptr62 = getelementptr i8, ptr %59, i32 1, !dbg !1183
  store ptr %incdec.ptr62, ptr %new_buf, align 8, !dbg !1183
  store i8 %58, ptr %59, align 1, !dbg !1184
  br label %for.inc63, !dbg !1185

for.inc63:                                        ; preds = %if.end56
  %60 = load i32, ptr %i, align 4, !dbg !1186
  %inc64 = add i32 %60, 1, !dbg !1186
  store i32 %inc64, ptr %i, align 4, !dbg !1186
  br label %for.cond46, !dbg !1187, !llvm.loop !1188

for.end65:                                        ; preds = %for.cond46
  %61 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1190
  %length66 = getelementptr inbounds %struct.acpi_object_buffer, ptr %61, i32 0, i32 6, !dbg !1192
  %62 = load i32, ptr %length66, align 8, !dbg !1192
  %tobool67 = icmp ne i32 %62, 0, !dbg !1190
  br i1 %tobool67, label %if.then68, label %if.end70, !dbg !1193

if.then68:                                        ; preds = %for.end65
  %63 = load ptr, ptr %new_buf, align 8, !dbg !1194
  %incdec.ptr69 = getelementptr i8, ptr %63, i32 -1, !dbg !1194
  store ptr %incdec.ptr69, ptr %new_buf, align 8, !dbg !1194
  br label %if.end70, !dbg !1196

if.end70:                                         ; preds = %if.then68, %for.end65
  %64 = load ptr, ptr %new_buf, align 8, !dbg !1197
  store i8 0, ptr %64, align 1, !dbg !1198
  br label %sw.epilog72, !dbg !1199

sw.default71:                                     ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !1200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1200

sw.epilog72:                                      ; preds = %if.end70, %if.end
  %65 = load ptr, ptr %return_desc, align 8, !dbg !1201
  %66 = load ptr, ptr %result_desc.addr, align 8, !dbg !1202
  store ptr %65, ptr %66, align 8, !dbg !1203
  store i32 0, ptr %retval, align 4, !dbg !1204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1204

cleanup:                                          ; preds = %sw.epilog72, %sw.default71, %if.then43, %sw.default35, %if.then, %sw.bb
  call void @llvm.lifetime.end.p0(i64 1, ptr %separator) #5, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 2, ptr %base) #5, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 4, ptr %string_length) #5, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_buf) #5, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #5, !dbg !1205
  %67 = load i32, ptr %retval, align 4, !dbg !1205
  ret i32 %67, !dbg !1205
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1206 dso_local ptr @acpi_ut_create_string_object(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_convert_to_ascii(i64 noundef %integer, i16 noundef zeroext %base, ptr noundef %string, i8 noundef zeroext %data_width) #0 align 16 !dbg !1207 {
entry:
  %retval = alloca i32, align 4
  %integer.addr = alloca i64, align 8
  %base.addr = alloca i16, align 2
  %string.addr = alloca ptr, align 8
  %data_width.addr = alloca i8, align 1
  %digit = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %hex_length = alloca i32, align 4
  %decimal_length = alloca i32, align 4
  %remainder = alloca i32, align 4
  %supress_zeros = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %integer, ptr %integer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %integer.addr, metadata !1211, metadata !DIExpression()), !dbg !1223
  store i16 %base, ptr %base.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !1212, metadata !DIExpression()), !dbg !1224
  store ptr %string, ptr %string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string.addr, metadata !1213, metadata !DIExpression()), !dbg !1225
  store i8 %data_width, ptr %data_width.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data_width.addr, metadata !1214, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 8, ptr %digit) #5, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %digit, metadata !1215, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1216, metadata !DIExpression()), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5, !dbg !1231
  call void @llvm.dbg.declare(metadata ptr %j, metadata !1217, metadata !DIExpression()), !dbg !1232
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5, !dbg !1233
  call void @llvm.dbg.declare(metadata ptr %k, metadata !1218, metadata !DIExpression()), !dbg !1234
  store i32 0, ptr %k, align 4, !dbg !1234
  call void @llvm.lifetime.start.p0(i64 4, ptr %hex_length) #5, !dbg !1235
  call void @llvm.dbg.declare(metadata ptr %hex_length, metadata !1219, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.start.p0(i64 4, ptr %decimal_length) #5, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %decimal_length, metadata !1220, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #5, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !1221, metadata !DIExpression()), !dbg !1240
  call void @llvm.lifetime.start.p0(i64 1, ptr %supress_zeros) #5, !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %supress_zeros, metadata !1222, metadata !DIExpression()), !dbg !1242
  %0 = load i16, ptr %base.addr, align 2, !dbg !1243
  %conv = zext i16 %0 to i32, !dbg !1243
  switch i32 %conv, label %sw.default32 [
    i32 10, label %sw.bb
    i32 16, label %sw.bb18
  ], !dbg !1244

sw.bb:                                            ; preds = %entry
  %1 = load i8, ptr %data_width.addr, align 1, !dbg !1245
  %conv1 = zext i8 %1 to i32, !dbg !1245
  switch i32 %conv1, label %sw.default [
    i32 1, label %sw.bb2
    i32 4, label %sw.bb3
    i32 8, label %sw.bb4
  ], !dbg !1247

sw.bb2:                                           ; preds = %sw.bb
  store i32 3, ptr %decimal_length, align 4, !dbg !1248
  br label %sw.epilog, !dbg !1250

sw.bb3:                                           ; preds = %sw.bb
  store i32 10, ptr %decimal_length, align 4, !dbg !1251
  br label %sw.epilog, !dbg !1252

sw.bb4:                                           ; preds = %sw.bb
  br label %sw.default, !dbg !1253

sw.default:                                       ; preds = %sw.bb, %sw.bb4
  store i32 20, ptr %decimal_length, align 4, !dbg !1254
  br label %sw.epilog, !dbg !1255

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2
  store i8 1, ptr %supress_zeros, align 1, !dbg !1256
  store i32 0, ptr %remainder, align 4, !dbg !1257
  %2 = load i32, ptr %decimal_length, align 4, !dbg !1258
  store i32 %2, ptr %i, align 4, !dbg !1260
  br label %for.cond, !dbg !1261

for.cond:                                         ; preds = %for.inc16, %sw.epilog
  %3 = load i32, ptr %i, align 4, !dbg !1262
  %cmp = icmp ugt i32 %3, 0, !dbg !1264
  br i1 %cmp, label %for.body, label %for.end17, !dbg !1265

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %integer.addr, align 8, !dbg !1266
  store i64 %4, ptr %digit, align 8, !dbg !1268
  store i32 0, ptr %j, align 4, !dbg !1269
  br label %for.cond6, !dbg !1271

for.cond6:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !dbg !1272
  %6 = load i32, ptr %i, align 4, !dbg !1274
  %cmp7 = icmp ult i32 %5, %6, !dbg !1275
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !1276

for.body9:                                        ; preds = %for.cond6
  %7 = load i64, ptr %digit, align 8, !dbg !1277
  %call = call i32 @acpi_ut_short_divide(i64 noundef %7, i32 noundef 10, ptr noundef %digit, ptr noundef %remainder) #6, !dbg !1279
  br label %for.inc, !dbg !1280

for.inc:                                          ; preds = %for.body9
  %8 = load i32, ptr %j, align 4, !dbg !1281
  %inc = add i32 %8, 1, !dbg !1281
  store i32 %inc, ptr %j, align 4, !dbg !1281
  br label %for.cond6, !dbg !1282, !llvm.loop !1283

for.end:                                          ; preds = %for.cond6
  %9 = load i32, ptr %remainder, align 4, !dbg !1285
  %cmp10 = icmp ne i32 %9, 0, !dbg !1287
  br i1 %cmp10, label %if.then, label %if.end, !dbg !1288

if.then:                                          ; preds = %for.end
  store i8 0, ptr %supress_zeros, align 1, !dbg !1289
  br label %if.end, !dbg !1291

if.end:                                           ; preds = %if.then, %for.end
  %10 = load i8, ptr %supress_zeros, align 1, !dbg !1292
  %tobool = icmp ne i8 %10, 0, !dbg !1292
  br i1 %tobool, label %if.end15, label %if.then12, !dbg !1294

if.then12:                                        ; preds = %if.end
  %11 = load i32, ptr %remainder, align 4, !dbg !1295
  %add = add i32 48, %11, !dbg !1297
  %conv13 = trunc i32 %add to i8, !dbg !1298
  %12 = load ptr, ptr %string.addr, align 8, !dbg !1299
  %13 = load i32, ptr %k, align 4, !dbg !1300
  %idxprom = zext i32 %13 to i64, !dbg !1299
  %arrayidx = getelementptr i8, ptr %12, i64 %idxprom, !dbg !1299
  store i8 %conv13, ptr %arrayidx, align 1, !dbg !1301
  %14 = load i32, ptr %k, align 4, !dbg !1302
  %inc14 = add i32 %14, 1, !dbg !1302
  store i32 %inc14, ptr %k, align 4, !dbg !1302
  br label %if.end15, !dbg !1303

if.end15:                                         ; preds = %if.then12, %if.end
  br label %for.inc16, !dbg !1304

for.inc16:                                        ; preds = %if.end15
  %15 = load i32, ptr %i, align 4, !dbg !1305
  %dec = add i32 %15, -1, !dbg !1305
  store i32 %dec, ptr %i, align 4, !dbg !1305
  br label %for.cond, !dbg !1306, !llvm.loop !1307

for.end17:                                        ; preds = %for.cond
  br label %sw.epilog33, !dbg !1309

sw.bb18:                                          ; preds = %entry
  %16 = load i8, ptr %data_width.addr, align 1, !dbg !1310
  %conv19 = zext i8 %16 to i32, !dbg !1310
  %mul = mul i32 %conv19, 2, !dbg !1311
  store i32 %mul, ptr %hex_length, align 4, !dbg !1312
  store i32 0, ptr %i, align 4, !dbg !1313
  %17 = load i32, ptr %hex_length, align 4, !dbg !1315
  %sub = sub i32 %17, 1, !dbg !1316
  store i32 %sub, ptr %j, align 4, !dbg !1317
  br label %for.cond20, !dbg !1318

for.cond20:                                       ; preds = %for.inc28, %sw.bb18
  %18 = load i32, ptr %i, align 4, !dbg !1319
  %19 = load i32, ptr %hex_length, align 4, !dbg !1321
  %cmp21 = icmp ult i32 %18, %19, !dbg !1322
  br i1 %cmp21, label %for.body23, label %for.end31, !dbg !1323

for.body23:                                       ; preds = %for.cond20
  %20 = load i64, ptr %integer.addr, align 8, !dbg !1324
  %21 = load i32, ptr %j, align 4, !dbg !1326
  %shl = shl i32 %21, 2, !dbg !1326
  %call24 = call zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef %20, i32 noundef %shl) #6, !dbg !1327
  %22 = load ptr, ptr %string.addr, align 8, !dbg !1328
  %23 = load i32, ptr %k, align 4, !dbg !1329
  %idxprom25 = zext i32 %23 to i64, !dbg !1328
  %arrayidx26 = getelementptr i8, ptr %22, i64 %idxprom25, !dbg !1328
  store i8 %call24, ptr %arrayidx26, align 1, !dbg !1330
  %24 = load i32, ptr %k, align 4, !dbg !1331
  %inc27 = add i32 %24, 1, !dbg !1331
  store i32 %inc27, ptr %k, align 4, !dbg !1331
  br label %for.inc28, !dbg !1332

for.inc28:                                        ; preds = %for.body23
  %25 = load i32, ptr %i, align 4, !dbg !1333
  %inc29 = add i32 %25, 1, !dbg !1333
  store i32 %inc29, ptr %i, align 4, !dbg !1333
  %26 = load i32, ptr %j, align 4, !dbg !1334
  %dec30 = add i32 %26, -1, !dbg !1334
  store i32 %dec30, ptr %j, align 4, !dbg !1334
  br label %for.cond20, !dbg !1335, !llvm.loop !1336

for.end31:                                        ; preds = %for.cond20
  br label %sw.epilog33, !dbg !1338

sw.default32:                                     ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1339

sw.epilog33:                                      ; preds = %for.end31, %for.end17
  %27 = load i32, ptr %k, align 4, !dbg !1340
  %tobool34 = icmp ne i32 %27, 0, !dbg !1340
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !1342

if.then35:                                        ; preds = %sw.epilog33
  %28 = load ptr, ptr %string.addr, align 8, !dbg !1343
  %arrayidx36 = getelementptr i8, ptr %28, i64 0, !dbg !1343
  store i8 48, ptr %arrayidx36, align 1, !dbg !1345
  store i32 1, ptr %k, align 4, !dbg !1346
  br label %if.end37, !dbg !1347

if.end37:                                         ; preds = %if.then35, %sw.epilog33
  %29 = load ptr, ptr %string.addr, align 8, !dbg !1348
  %30 = load i32, ptr %k, align 4, !dbg !1349
  %idxprom38 = zext i32 %30 to i64, !dbg !1348
  %arrayidx39 = getelementptr i8, ptr %29, i64 %idxprom38, !dbg !1348
  store i8 0, ptr %arrayidx39, align 1, !dbg !1350
  %31 = load i32, ptr %k, align 4, !dbg !1351
  store i32 %31, ptr %retval, align 4, !dbg !1352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1352

cleanup:                                          ; preds = %if.end37, %sw.default32
  call void @llvm.lifetime.end.p0(i64 1, ptr %supress_zeros) #5, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #5, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 4, ptr %decimal_length) #5, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 4, ptr %hex_length) #5, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1353
  call void @llvm.lifetime.end.p0(i64 8, ptr %digit) #5, !dbg !1353
  %32 = load i32, ptr %retval, align 4, !dbg !1353
  ret i32 %32, !dbg !1353
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_convert_to_target_type(i32 noundef %destination_type, ptr noundef %source_desc, ptr noundef %result_desc, ptr noundef %walk_state) #0 align 16 !dbg !1354 {
entry:
  %destination_type.addr = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %result_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store i32 %destination_type, ptr %destination_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %destination_type.addr, metadata !1359, metadata !DIExpression()), !dbg !1364
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !1360, metadata !DIExpression()), !dbg !1365
  store ptr %result_desc, ptr %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result_desc.addr, metadata !1361, metadata !DIExpression()), !dbg !1366
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1362, metadata !DIExpression()), !dbg !1367
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1363, metadata !DIExpression()), !dbg !1369
  store i32 0, ptr %status, align 4, !dbg !1369
  %0 = load ptr, ptr %source_desc.addr, align 8, !dbg !1370
  %1 = load ptr, ptr %result_desc.addr, align 8, !dbg !1371
  store ptr %0, ptr %1, align 8, !dbg !1372
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !1373
  %op_info = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 41, !dbg !1373
  %3 = load ptr, ptr %op_info, align 8, !dbg !1373
  %runtime_args = getelementptr inbounds %struct.acpi_opcode_info, ptr %3, i32 0, i32 1, !dbg !1373
  %4 = load i32, ptr %runtime_args, align 4, !dbg !1373
  %and = and i32 %4, 31, !dbg !1373
  switch i32 %and, label %sw.default10 [
    i32 17, label %sw.bb
    i32 16, label %sw.bb
    i32 11, label %sw.bb
    i32 15, label %sw.bb2
    i32 18, label %sw.bb2
    i32 14, label %sw.epilog16
  ], !dbg !1374

sw.bb:                                            ; preds = %entry, %entry, %entry
  %5 = load i32, ptr %destination_type.addr, align 4, !dbg !1375
  switch i32 %5, label %sw.default [
    i32 17, label %sw.epilog
  ], !dbg !1377

sw.default:                                       ; preds = %sw.bb
  %6 = load i32, ptr %destination_type.addr, align 4, !dbg !1378
  %7 = load ptr, ptr %source_desc.addr, align 8, !dbg !1381
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %7, i32 0, i32 2, !dbg !1382
  %8 = load i8, ptr %type, align 1, !dbg !1382
  %conv = zext i8 %8 to i32, !dbg !1381
  %cmp = icmp ne i32 %6, %conv, !dbg !1383
  br i1 %cmp, label %if.then, label %if.end, !dbg !1384

if.then:                                          ; preds = %sw.default
  store i32 8, ptr %status, align 4, !dbg !1385
  br label %if.end, !dbg !1387

if.end:                                           ; preds = %if.then, %sw.default
  br label %sw.epilog, !dbg !1388

sw.epilog:                                        ; preds = %if.end, %sw.bb
  br label %sw.epilog16, !dbg !1389

sw.bb2:                                           ; preds = %entry, %entry
  %9 = load i32, ptr %destination_type.addr, align 4, !dbg !1390
  switch i32 %9, label %sw.default8 [
    i32 1, label %sw.bb3
    i32 14, label %sw.bb3
    i32 18, label %sw.bb3
    i32 19, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
  ], !dbg !1391

sw.bb3:                                           ; preds = %sw.bb2, %sw.bb2, %sw.bb2, %sw.bb2
  %10 = load ptr, ptr %source_desc.addr, align 8, !dbg !1392
  %11 = load ptr, ptr %result_desc.addr, align 8, !dbg !1394
  %call = call i32 @acpi_ex_convert_to_integer(ptr noundef %10, ptr noundef %11, i32 noundef 1) #6, !dbg !1395
  store i32 %call, ptr %status, align 4, !dbg !1396
  br label %sw.epilog9, !dbg !1397

sw.bb4:                                           ; preds = %sw.bb2
  %12 = load ptr, ptr %source_desc.addr, align 8, !dbg !1398
  %13 = load ptr, ptr %result_desc.addr, align 8, !dbg !1399
  %call5 = call i32 @acpi_ex_convert_to_string(ptr noundef %12, ptr noundef %13, i32 noundef 2) #6, !dbg !1400
  store i32 %call5, ptr %status, align 4, !dbg !1401
  br label %sw.epilog9, !dbg !1402

sw.bb6:                                           ; preds = %sw.bb2
  %14 = load ptr, ptr %source_desc.addr, align 8, !dbg !1403
  %15 = load ptr, ptr %result_desc.addr, align 8, !dbg !1404
  %call7 = call i32 @acpi_ex_convert_to_buffer(ptr noundef %14, ptr noundef %15) #6, !dbg !1405
  store i32 %call7, ptr %status, align 4, !dbg !1406
  br label %sw.epilog9, !dbg !1407

sw.default8:                                      ; preds = %sw.bb2
  %16 = load i32, ptr %destination_type.addr, align 4, !dbg !1408
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 656, ptr noundef @.str, i32 noundef %16) #6, !dbg !1408
  store i32 12303, ptr %status, align 4, !dbg !1409
  br label %sw.epilog9, !dbg !1410

sw.epilog9:                                       ; preds = %sw.default8, %sw.bb6, %sw.bb4, %sw.bb3
  br label %sw.epilog16, !dbg !1411

sw.default10:                                     ; preds = %entry
  %17 = load ptr, ptr %walk_state.addr, align 8, !dbg !1412
  %op_info11 = getelementptr inbounds %struct.acpi_walk_state, ptr %17, i32 0, i32 41, !dbg !1412
  %18 = load ptr, ptr %op_info11, align 8, !dbg !1412
  %runtime_args12 = getelementptr inbounds %struct.acpi_opcode_info, ptr %18, i32 0, i32 1, !dbg !1412
  %19 = load i32, ptr %runtime_args12, align 4, !dbg !1412
  %and13 = and i32 %19, 31, !dbg !1412
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !1412
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %20, i32 0, i32 3, !dbg !1412
  %21 = load i16, ptr %opcode, align 2, !dbg !1412
  %conv14 = zext i16 %21 to i32, !dbg !1412
  %22 = load i32, ptr %destination_type.addr, align 4, !dbg !1412
  %call15 = call ptr @acpi_ut_get_type_name(i32 noundef %22) #6, !dbg !1412
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 672, ptr noundef @.str.1, i32 noundef %and13, i32 noundef %conv14, ptr noundef %call15) #6, !dbg !1412
  store i32 12303, ptr %status, align 4, !dbg !1413
  br label %sw.epilog16, !dbg !1414

sw.epilog16:                                      ; preds = %sw.default10, %entry, %sw.epilog9, %sw.epilog
  %23 = load i32, ptr %status, align 4, !dbg !1415
  %cmp17 = icmp eq i32 %23, 8, !dbg !1417
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1418

if.then19:                                        ; preds = %sw.epilog16
  store i32 0, ptr %status, align 4, !dbg !1419
  br label %if.end20, !dbg !1421

if.end20:                                         ; preds = %if.then19, %sw.epilog16
  %24 = load i32, ptr %status, align 4, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1423
  ret i32 %24, !dbg !1422
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1424 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1428 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1431 dso_local i32 @acpi_ut_short_divide(i64 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1435 dso_local zeroext i8 @acpi_ut_hex_to_ascii_char(i64 noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !35, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exconvrt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exconvrt\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exconvrt.ll drivers/acpi/acpica/exconvrt.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exconvrt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f5b9c01c59623a08096d507ce0f4ba30")
!4 = !{!5, !12, !14, !17, !20, !7, !21}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !15, line: 42, baseType: !16)
!15 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!16 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !19)
!19 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !17)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !23)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !{!25, !30, !0}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !3, line: 656, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 360, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 45)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !3, line: 672, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 440, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 55)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 72, elements: !37)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!37 = !{!38}
!38 = !DISubrange(count: 9)
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 8, !"cf-protection-branch", i32 1}
!43 = !{i32 4, !"function_return_thunk_extern", i32 1}
!44 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!45 = !{i32 1, !"Code Model", i32 2}
!46 = !{i32 1, !"override-stack-alignment", i32 8}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = distinct !DISubprogram(name: "acpi_ex_convert_to_integer", scope: !3, file: !3, line: 38, type: !49, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !811)
!49 = !DISubroutineType(types: !50)
!50 = !{!5, !51, !135, !7}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !53, line: 369, size: 576, elements: !54)
!53 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!54 = !{!55, !66, !79, !89, !125, !139, !149, !460, !477, !493, !506, !584, !596, !610, !620, !638, !660, !679, !698, !717, !730, !757, !774, !787, !801, !810}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !52, file: !53, line: 370, baseType: !56, size: 128)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !53, line: 73, size: 128, elements: !57)
!57 = !{!58, !59, !60, !61, !65}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !56, file: !53, line: 74, baseType: !51, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !56, file: !53, line: 74, baseType: !21, size: 8, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !56, file: !53, line: 74, baseType: !21, size: 8, offset: 72)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !56, file: !53, line: 74, baseType: !62, size: 16, offset: 80)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !64)
!64 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !53, line: 74, baseType: !21, size: 8, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !52, file: !53, line: 371, baseType: !67, size: 192)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !53, line: 76, size: 192, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !78}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !67, file: !53, line: 77, baseType: !51, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !67, file: !53, line: 77, baseType: !21, size: 8, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !53, line: 77, baseType: !21, size: 8, offset: 72)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !67, file: !53, line: 77, baseType: !62, size: 16, offset: 80)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !67, file: !53, line: 77, baseType: !21, size: 8, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !67, file: !53, line: 77, baseType: !75, size: 24, offset: 104)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 3)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !67, file: !53, line: 78, baseType: !17, size: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !52, file: !53, line: 372, baseType: !80, size: 256)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !53, line: 93, size: 256, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !53, line: 94, baseType: !51, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !53, line: 94, baseType: !21, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !53, line: 94, baseType: !21, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !53, line: 94, baseType: !62, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !53, line: 94, baseType: !21, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !53, line: 94, baseType: !12, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !53, line: 94, baseType: !7, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !52, file: !53, line: 373, baseType: !90, size: 384)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !53, line: 97, size: 384, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !99, !100, !101, !102}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !90, file: !53, line: 98, baseType: !51, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !90, file: !53, line: 98, baseType: !21, size: 8, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !90, file: !53, line: 98, baseType: !21, size: 8, offset: 72)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !90, file: !53, line: 98, baseType: !62, size: 16, offset: 80)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !53, line: 98, baseType: !21, size: 8, offset: 96)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !90, file: !53, line: 98, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !90, file: !53, line: 98, baseType: !7, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !90, file: !53, line: 99, baseType: !7, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !90, file: !53, line: 100, baseType: !98, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !90, file: !53, line: 101, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !105, line: 133, size: 384, elements: !106)
!105 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!106 = !{!107, !108, !109, !110, !111, !120, !121, !122, !123}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !104, file: !105, line: 134, baseType: !51, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !104, file: !105, line: 135, baseType: !21, size: 8, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !105, line: 136, baseType: !21, size: 8, offset: 72)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !105, line: 137, baseType: !62, size: 16, offset: 80)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !105, line: 138, baseType: !112, size: 32, offset: 96)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !113, line: 328, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!114 = !{!115, !116}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !112, file: !113, line: 329, baseType: !7, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !112, file: !113, line: 330, baseType: !117, size: 32)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !104, file: !105, line: 139, baseType: !103, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !104, file: !105, line: 140, baseType: !103, size: 64, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !104, file: !105, line: 141, baseType: !103, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !104, file: !105, line: 142, baseType: !124, size: 16, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !62)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !52, file: !53, line: 374, baseType: !126, size: 384)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !53, line: 104, size: 384, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !136, !137, !138}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !126, file: !53, line: 105, baseType: !51, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !53, line: 105, baseType: !21, size: 8, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !53, line: 105, baseType: !21, size: 8, offset: 72)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !126, file: !53, line: 105, baseType: !62, size: 16, offset: 80)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !53, line: 105, baseType: !21, size: 8, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !53, line: 105, baseType: !103, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !126, file: !53, line: 106, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !126, file: !53, line: 107, baseType: !98, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !126, file: !53, line: 108, baseType: !7, size: 32, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !126, file: !53, line: 109, baseType: !7, size: 32, offset: 352)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !52, file: !53, line: 375, baseType: !140, size: 192)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !53, line: 118, size: 192, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !53, line: 119, baseType: !51, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !53, line: 119, baseType: !21, size: 8, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !53, line: 119, baseType: !21, size: 8, offset: 72)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !53, line: 119, baseType: !62, size: 16, offset: 80)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !53, line: 119, baseType: !21, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !140, file: !53, line: 119, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !52, file: !53, line: 376, baseType: !150, size: 448)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !53, line: 144, size: 448, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !457, !458, !459}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !150, file: !53, line: 145, baseType: !51, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !150, file: !53, line: 145, baseType: !21, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !150, file: !53, line: 145, baseType: !21, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !150, file: !53, line: 145, baseType: !62, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !150, file: !53, line: 145, baseType: !21, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !150, file: !53, line: 145, baseType: !21, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !150, file: !53, line: 146, baseType: !21, size: 8, offset: 112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !150, file: !53, line: 147, baseType: !21, size: 8, offset: 120)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !150, file: !53, line: 148, baseType: !51, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !150, file: !53, line: 149, baseType: !51, size: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !150, file: !53, line: 150, baseType: !98, size: 64, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !150, file: !53, line: 154, baseType: !164, size: 64, offset: 320)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !53, line: 151, size: 64, elements: !165)
!165 = !{!166, !456}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !164, file: !53, line: 152, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !105, line: 248, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!5, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !173, line: 37, size: 9024, elements: !174)
!173 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !404, !405, !406, !407, !408, !412, !414, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !439, !440, !441, !442, !443, !444, !445, !446, !448, !454}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !173, line: 38, baseType: !171, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !172, file: !173, line: 39, baseType: !21, size: 8, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !172, file: !173, line: 40, baseType: !21, size: 8, offset: 72)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !172, file: !173, line: 41, baseType: !62, size: 16, offset: 80)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !172, file: !173, line: 42, baseType: !21, size: 8, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !172, file: !173, line: 43, baseType: !21, size: 8, offset: 104)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !172, file: !173, line: 44, baseType: !21, size: 8, offset: 112)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !172, file: !173, line: 45, baseType: !124, size: 16, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !172, file: !173, line: 46, baseType: !21, size: 8, offset: 144)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !172, file: !173, line: 47, baseType: !21, size: 8, offset: 152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !172, file: !173, line: 48, baseType: !21, size: 8, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !172, file: !173, line: 49, baseType: !21, size: 8, offset: 168)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !172, file: !173, line: 50, baseType: !21, size: 8, offset: 176)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !172, file: !173, line: 51, baseType: !21, size: 8, offset: 184)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !172, file: !173, line: 52, baseType: !21, size: 8, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !172, file: !173, line: 53, baseType: !21, size: 8, offset: 200)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !172, file: !173, line: 54, baseType: !98, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !172, file: !173, line: 55, baseType: !7, size: 32, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !172, file: !173, line: 56, baseType: !7, size: 32, offset: 352)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !172, file: !173, line: 57, baseType: !7, size: 32, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !172, file: !173, line: 58, baseType: !7, size: 32, offset: 416)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !172, file: !173, line: 60, baseType: !197, size: 640, offset: 448)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !105, line: 909, size: 640, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !285, !286, !402, !403}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !197, file: !105, line: 910, baseType: !98, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !197, file: !105, line: 911, baseType: !98, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !197, file: !105, line: 912, baseType: !98, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !197, file: !105, line: 913, baseType: !98, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !197, file: !105, line: 914, baseType: !98, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !197, file: !105, line: 915, baseType: !205, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !105, line: 891, size: 1600, elements: !207)
!207 = !{!208, !228, !244}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !206, file: !105, line: 892, baseType: !209, size: 448)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !105, line: 844, size: 448, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !227}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !209, file: !105, line: 845, baseType: !205, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !209, file: !105, line: 845, baseType: !21, size: 8, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !209, file: !105, line: 845, baseType: !21, size: 8, offset: 72)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !209, file: !105, line: 845, baseType: !62, size: 16, offset: 80)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !209, file: !105, line: 845, baseType: !98, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !209, file: !105, line: 845, baseType: !205, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !105, line: 845, baseType: !103, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !209, file: !105, line: 845, baseType: !219, size: 64, offset: 320)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !105, line: 732, size: 64, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !219, file: !105, line: 733, baseType: !17, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !219, file: !105, line: 734, baseType: !7, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !219, file: !105, line: 735, baseType: !12, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !219, file: !105, line: 736, baseType: !98, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !105, line: 737, baseType: !12, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !219, file: !105, line: 738, baseType: !205, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !209, file: !105, line: 845, baseType: !21, size: 8, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !206, file: !105, line: 893, baseType: !229, size: 640)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !105, line: 851, size: 640, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !229, file: !105, line: 852, baseType: !205, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !105, line: 852, baseType: !21, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !105, line: 852, baseType: !21, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !229, file: !105, line: 852, baseType: !62, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !229, file: !105, line: 852, baseType: !98, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !105, line: 852, baseType: !205, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !105, line: 852, baseType: !103, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !229, file: !105, line: 852, baseType: !219, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !229, file: !105, line: 852, baseType: !21, size: 8, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !229, file: !105, line: 852, baseType: !12, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !229, file: !105, line: 853, baseType: !98, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !229, file: !105, line: 854, baseType: !7, size: 32, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !105, line: 855, baseType: !7, size: 32, offset: 608)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !206, file: !105, line: 894, baseType: !245, size: 1600)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !105, line: 862, size: 1600, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !105, line: 863, baseType: !205, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !245, file: !105, line: 863, baseType: !21, size: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !105, line: 863, baseType: !21, size: 8, offset: 72)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !245, file: !105, line: 863, baseType: !62, size: 16, offset: 80)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !245, file: !105, line: 863, baseType: !98, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !105, line: 863, baseType: !205, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !245, file: !105, line: 863, baseType: !103, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !245, file: !105, line: 863, baseType: !219, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !245, file: !105, line: 863, baseType: !21, size: 8, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !245, file: !105, line: 863, baseType: !205, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !245, file: !105, line: 864, baseType: !205, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !245, file: !105, line: 865, baseType: !12, size: 64, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !245, file: !105, line: 866, baseType: !21, size: 8, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !245, file: !105, line: 867, baseType: !12, size: 64, offset: 704)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !245, file: !105, line: 868, baseType: !12, size: 64, offset: 768)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !245, file: !105, line: 869, baseType: !12, size: 64, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !245, file: !105, line: 870, baseType: !117, size: 32, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !245, file: !105, line: 871, baseType: !7, size: 32, offset: 928)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !245, file: !105, line: 872, baseType: !7, size: 32, offset: 960)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !245, file: !105, line: 873, baseType: !7, size: 32, offset: 992)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !245, file: !105, line: 874, baseType: !7, size: 32, offset: 1024)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !245, file: !105, line: 875, baseType: !7, size: 32, offset: 1056)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !245, file: !105, line: 876, baseType: !7, size: 32, offset: 1088)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !245, file: !105, line: 877, baseType: !7, size: 32, offset: 1120)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !245, file: !105, line: 878, baseType: !7, size: 32, offset: 1152)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !245, file: !105, line: 879, baseType: !7, size: 32, offset: 1184)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !245, file: !105, line: 880, baseType: !7, size: 32, offset: 1216)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !245, file: !105, line: 881, baseType: !7, size: 32, offset: 1248)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !245, file: !105, line: 882, baseType: !7, size: 32, offset: 1280)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !245, file: !105, line: 883, baseType: !7, size: 32, offset: 1312)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !245, file: !105, line: 884, baseType: !62, size: 16, offset: 1344)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !245, file: !105, line: 885, baseType: !21, size: 8, offset: 1360)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !245, file: !105, line: 886, baseType: !21, size: 8, offset: 1368)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !245, file: !105, line: 887, baseType: !21, size: 8, offset: 1376)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !245, file: !105, line: 888, baseType: !282, size: 160, offset: 1384)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 20)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !197, file: !105, line: 916, baseType: !103, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !197, file: !105, line: 917, baseType: !287, size: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !105, line: 679, size: 640, elements: !289)
!289 = !{!290, !298, !311, !320, !329, !342, !356, !368, !380}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !288, file: !105, line: 680, baseType: !291, size: 128)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !105, line: 575, size: 128, elements: !292)
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !105, line: 576, baseType: !148, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !291, file: !105, line: 576, baseType: !21, size: 8, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !105, line: 576, baseType: !21, size: 8, offset: 72)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !291, file: !105, line: 576, baseType: !62, size: 16, offset: 80)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !291, file: !105, line: 576, baseType: !62, size: 16, offset: 96)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !288, file: !105, line: 681, baseType: !299, size: 384)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !105, line: 604, size: 384, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !105, line: 605, baseType: !148, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !105, line: 605, baseType: !21, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !105, line: 605, baseType: !21, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !105, line: 605, baseType: !62, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !299, file: !105, line: 605, baseType: !62, size: 16, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !299, file: !105, line: 606, baseType: !62, size: 16, offset: 112)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !299, file: !105, line: 607, baseType: !205, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !299, file: !105, line: 608, baseType: !98, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !299, file: !105, line: 609, baseType: !98, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !299, file: !105, line: 610, baseType: !17, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !288, file: !105, line: 682, baseType: !312, size: 192)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !105, line: 582, size: 192, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !312, file: !105, line: 583, baseType: !148, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !312, file: !105, line: 583, baseType: !21, size: 8, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !105, line: 583, baseType: !21, size: 8, offset: 72)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !312, file: !105, line: 583, baseType: !62, size: 16, offset: 80)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !312, file: !105, line: 583, baseType: !62, size: 16, offset: 96)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !312, file: !105, line: 584, baseType: !51, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !288, file: !105, line: 683, baseType: !321, size: 192)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !105, line: 616, size: 192, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !321, file: !105, line: 617, baseType: !148, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !321, file: !105, line: 617, baseType: !21, size: 8, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !105, line: 617, baseType: !21, size: 8, offset: 72)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !321, file: !105, line: 617, baseType: !62, size: 16, offset: 80)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !321, file: !105, line: 617, baseType: !62, size: 16, offset: 96)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !321, file: !105, line: 618, baseType: !103, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !288, file: !105, line: 684, baseType: !330, size: 448)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !105, line: 621, size: 448, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !330, file: !105, line: 622, baseType: !148, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !330, file: !105, line: 622, baseType: !21, size: 8, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !105, line: 622, baseType: !21, size: 8, offset: 72)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !330, file: !105, line: 622, baseType: !62, size: 16, offset: 80)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !105, line: 622, baseType: !62, size: 16, offset: 96)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !330, file: !105, line: 623, baseType: !7, size: 32, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !330, file: !105, line: 624, baseType: !205, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !330, file: !105, line: 625, baseType: !98, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !330, file: !105, line: 626, baseType: !98, size: 64, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !330, file: !105, line: 627, baseType: !7, size: 32, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !288, file: !105, line: 685, baseType: !343, size: 512)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !105, line: 590, size: 512, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !105, line: 591, baseType: !148, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !343, file: !105, line: 591, baseType: !21, size: 8, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !105, line: 591, baseType: !21, size: 8, offset: 72)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !343, file: !105, line: 591, baseType: !62, size: 16, offset: 80)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !343, file: !105, line: 591, baseType: !62, size: 16, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !343, file: !105, line: 592, baseType: !7, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !343, file: !105, line: 593, baseType: !51, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !343, file: !105, line: 594, baseType: !51, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !343, file: !105, line: 595, baseType: !171, size: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !343, file: !105, line: 596, baseType: !148, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !343, file: !105, line: 597, baseType: !7, size: 32, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !288, file: !105, line: 686, baseType: !357, size: 320)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !105, line: 634, size: 320, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !357, file: !105, line: 635, baseType: !148, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !357, file: !105, line: 635, baseType: !21, size: 8, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !105, line: 635, baseType: !21, size: 8, offset: 72)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !357, file: !105, line: 635, baseType: !62, size: 16, offset: 80)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !357, file: !105, line: 635, baseType: !62, size: 16, offset: 96)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !357, file: !105, line: 636, baseType: !21, size: 8, offset: 112)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !357, file: !105, line: 637, baseType: !171, size: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !357, file: !105, line: 638, baseType: !51, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !357, file: !105, line: 639, baseType: !17, size: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !288, file: !105, line: 687, baseType: !369, size: 640)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !105, line: 646, size: 640, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !105, line: 647, baseType: !148, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !369, file: !105, line: 647, baseType: !21, size: 8, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !369, file: !105, line: 647, baseType: !21, size: 8, offset: 72)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !369, file: !105, line: 647, baseType: !62, size: 16, offset: 80)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !105, line: 647, baseType: !62, size: 16, offset: 96)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !369, file: !105, line: 648, baseType: !377, size: 512, offset: 128)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 512, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 8)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !288, file: !105, line: 688, baseType: !381, size: 320)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !105, line: 669, size: 320, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !105, line: 670, baseType: !148, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !381, file: !105, line: 670, baseType: !21, size: 8, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !105, line: 670, baseType: !21, size: 8, offset: 72)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !381, file: !105, line: 670, baseType: !62, size: 16, offset: 80)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !381, file: !105, line: 670, baseType: !62, size: 16, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !381, file: !105, line: 671, baseType: !21, size: 8, offset: 112)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !381, file: !105, line: 672, baseType: !103, size: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !381, file: !105, line: 673, baseType: !51, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !381, file: !105, line: 674, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !105, line: 660, size: 128, elements: !394)
!394 = !{!395, !401}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !393, file: !105, line: 661, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400, !7, !148}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !148)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !393, file: !105, line: 662, baseType: !148, size: 64, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !197, file: !105, line: 918, baseType: !205, size: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !197, file: !105, line: 919, baseType: !7, size: 32, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !172, file: !173, line: 61, baseType: !7, size: 32, offset: 1088)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !172, file: !173, line: 62, baseType: !7, size: 32, offset: 1120)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !172, file: !173, line: 63, baseType: !62, size: 16, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !172, file: !173, line: 64, baseType: !21, size: 8, offset: 1168)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !172, file: !173, line: 66, baseType: !409, size: 2688, offset: 1216)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2688, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 7)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !172, file: !173, line: 67, baseType: !413, size: 3072, offset: 3904)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3072, elements: !378)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !172, file: !173, line: 68, baseType: !415, size: 576, offset: 6976)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 576, elements: !37)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !172, file: !173, line: 69, baseType: !135, size: 64, offset: 7552)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !172, file: !173, line: 71, baseType: !98, size: 64, offset: 7616)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !172, file: !173, line: 72, baseType: !135, size: 64, offset: 7680)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !172, file: !173, line: 73, baseType: !287, size: 64, offset: 7744)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !172, file: !173, line: 74, baseType: !103, size: 64, offset: 7808)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !172, file: !173, line: 75, baseType: !51, size: 64, offset: 7872)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !172, file: !173, line: 76, baseType: !103, size: 64, offset: 7936)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !172, file: !173, line: 77, baseType: !205, size: 64, offset: 8000)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !172, file: !173, line: 78, baseType: !51, size: 64, offset: 8064)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !172, file: !173, line: 79, baseType: !103, size: 64, offset: 8128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !172, file: !173, line: 80, baseType: !12, size: 64, offset: 8192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !172, file: !173, line: 81, baseType: !205, size: 64, offset: 8256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !172, file: !173, line: 82, baseType: !429, size: 64, offset: 8320)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !105, line: 718, size: 128, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !431, file: !105, line: 722, baseType: !7, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !431, file: !105, line: 723, baseType: !7, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !431, file: !105, line: 724, baseType: !62, size: 16, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !431, file: !105, line: 725, baseType: !21, size: 8, offset: 80)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !431, file: !105, line: 726, baseType: !21, size: 8, offset: 88)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !431, file: !105, line: 727, baseType: !21, size: 8, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !172, file: !173, line: 83, baseType: !205, size: 64, offset: 8384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !172, file: !173, line: 84, baseType: !51, size: 64, offset: 8448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !172, file: !173, line: 85, baseType: !287, size: 64, offset: 8512)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !172, file: !173, line: 86, baseType: !51, size: 64, offset: 8576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !172, file: !173, line: 87, baseType: !287, size: 64, offset: 8640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !172, file: !173, line: 88, baseType: !205, size: 64, offset: 8704)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !172, file: !173, line: 89, baseType: !205, size: 64, offset: 8768)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !172, file: !173, line: 90, baseType: !447, size: 64, offset: 8832)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !172, file: !173, line: 91, baseType: !449, size: 64, offset: 8896)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !105, line: 652, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!5, !171, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !172, file: !173, line: 92, baseType: !455, size: 64, offset: 8960)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !105, line: 656, baseType: !168)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !164, file: !53, line: 153, baseType: !51, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !150, file: !53, line: 156, baseType: !7, size: 32, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !150, file: !53, line: 157, baseType: !124, size: 16, offset: 416)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !150, file: !53, line: 158, baseType: !21, size: 8, offset: 432)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !52, file: !53, line: 377, baseType: !461, size: 576)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !53, line: 122, size: 576, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !461, file: !53, line: 123, baseType: !51, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !461, file: !53, line: 123, baseType: !21, size: 8, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !53, line: 123, baseType: !21, size: 8, offset: 72)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !461, file: !53, line: 123, baseType: !62, size: 16, offset: 80)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !461, file: !53, line: 123, baseType: !21, size: 8, offset: 96)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !461, file: !53, line: 123, baseType: !21, size: 8, offset: 104)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !461, file: !53, line: 124, baseType: !62, size: 16, offset: 112)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !461, file: !53, line: 125, baseType: !148, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !461, file: !53, line: 126, baseType: !17, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !461, file: !53, line: 127, baseType: !447, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !461, file: !53, line: 128, baseType: !51, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !53, line: 129, baseType: !51, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !461, file: !53, line: 130, baseType: !103, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !461, file: !53, line: 131, baseType: !21, size: 8, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !52, file: !53, line: 378, baseType: !478, size: 512)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !53, line: 134, size: 512, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !491, !492}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !478, file: !53, line: 135, baseType: !51, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !478, file: !53, line: 135, baseType: !21, size: 8, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !53, line: 135, baseType: !21, size: 8, offset: 72)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !478, file: !53, line: 135, baseType: !62, size: 16, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !53, line: 135, baseType: !21, size: 8, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !478, file: !53, line: 135, baseType: !21, size: 8, offset: 104)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !478, file: !53, line: 136, baseType: !103, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !478, file: !53, line: 137, baseType: !51, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !53, line: 138, baseType: !51, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !478, file: !53, line: 139, baseType: !490, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !17)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !478, file: !53, line: 140, baseType: !7, size: 32, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !478, file: !53, line: 141, baseType: !148, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !52, file: !53, line: 379, baseType: !494, size: 320)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !53, line: 185, size: 320, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !505}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !494, file: !53, line: 186, baseType: !51, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !494, file: !53, line: 186, baseType: !21, size: 8, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !53, line: 186, baseType: !21, size: 8, offset: 72)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !494, file: !53, line: 186, baseType: !62, size: 16, offset: 80)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !53, line: 186, baseType: !21, size: 8, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !494, file: !53, line: 186, baseType: !502, size: 128, offset: 128)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 128, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 2)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !494, file: !53, line: 186, baseType: !51, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !52, file: !53, line: 380, baseType: !507, size: 384)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !53, line: 188, size: 384, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !507, file: !53, line: 189, baseType: !51, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !507, file: !53, line: 189, baseType: !21, size: 8, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !507, file: !53, line: 189, baseType: !21, size: 8, offset: 72)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !507, file: !53, line: 189, baseType: !62, size: 16, offset: 80)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !53, line: 189, baseType: !21, size: 8, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !507, file: !53, line: 190, baseType: !502, size: 128, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !507, file: !53, line: 190, baseType: !51, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !507, file: !53, line: 190, baseType: !517, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !105, line: 480, size: 576, elements: !519)
!519 = !{!520, !521, !522, !523, !531, !546, !578, !579, !580, !581, !582, !583}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !518, file: !105, line: 481, baseType: !103, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !518, file: !105, line: 482, baseType: !517, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !105, line: 483, baseType: !517, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !518, file: !105, line: 484, baseType: !524, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !105, line: 497, size: 256, elements: !526)
!526 = !{!527, !528, !529, !530}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !525, file: !105, line: 498, baseType: !524, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !525, file: !105, line: 499, baseType: !524, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !525, file: !105, line: 500, baseType: !517, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !525, file: !105, line: 501, baseType: !7, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !518, file: !105, line: 485, baseType: !532, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !105, line: 466, size: 320, elements: !534)
!534 = !{!535, !540, !541, !542, !543, !544, !545}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !533, file: !105, line: 467, baseType: !536, size: 128)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !105, line: 459, size: 128, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !536, file: !105, line: 460, baseType: !21, size: 8)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !536, file: !105, line: 461, baseType: !17, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !533, file: !105, line: 468, baseType: !536, size: 128, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !533, file: !105, line: 469, baseType: !62, size: 16, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !533, file: !105, line: 470, baseType: !21, size: 8, offset: 272)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !533, file: !105, line: 471, baseType: !21, size: 8, offset: 280)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !533, file: !105, line: 472, baseType: !21, size: 8, offset: 288)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !533, file: !105, line: 473, baseType: !21, size: 8, offset: 296)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !518, file: !105, line: 486, baseType: !547, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !105, line: 448, size: 192, elements: !549)
!549 = !{!550, !573, !574, !575, !576, !577}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !548, file: !105, line: 449, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !105, line: 438, size: 64, elements: !552)
!552 = !{!553, !554, !567}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !551, file: !105, line: 439, baseType: !103, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !551, file: !105, line: 440, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !105, line: 419, size: 256, elements: !557)
!557 = !{!558, !563, !564, !565, !566}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !556, file: !105, line: 420, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!7, !400, !7, !148}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !556, file: !105, line: 421, baseType: !148, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !556, file: !105, line: 422, baseType: !103, size: 64, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !556, file: !105, line: 423, baseType: !21, size: 8, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !556, file: !105, line: 424, baseType: !21, size: 8, offset: 200)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !551, file: !105, line: 441, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !105, line: 429, size: 128, elements: !570)
!570 = !{!571, !572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !569, file: !105, line: 430, baseType: !103, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !569, file: !105, line: 431, baseType: !568, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !548, file: !105, line: 450, baseType: !532, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !105, line: 451, baseType: !21, size: 8, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !548, file: !105, line: 452, baseType: !21, size: 8, offset: 136)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !548, file: !105, line: 453, baseType: !21, size: 8, offset: 144)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !548, file: !105, line: 454, baseType: !21, size: 8, offset: 152)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !518, file: !105, line: 487, baseType: !17, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !518, file: !105, line: 488, baseType: !7, size: 32, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !518, file: !105, line: 489, baseType: !62, size: 16, offset: 480)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !518, file: !105, line: 490, baseType: !62, size: 16, offset: 496)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !518, file: !105, line: 491, baseType: !21, size: 8, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !518, file: !105, line: 492, baseType: !21, size: 8, offset: 520)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !52, file: !53, line: 381, baseType: !585, size: 384)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !53, line: 193, size: 384, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !585, file: !53, line: 194, baseType: !51, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !585, file: !53, line: 194, baseType: !21, size: 8, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !585, file: !53, line: 194, baseType: !21, size: 8, offset: 72)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !585, file: !53, line: 194, baseType: !62, size: 16, offset: 80)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !585, file: !53, line: 194, baseType: !21, size: 8, offset: 96)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !585, file: !53, line: 194, baseType: !502, size: 128, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !585, file: !53, line: 194, baseType: !51, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !585, file: !53, line: 194, baseType: !7, size: 32, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !585, file: !53, line: 195, baseType: !7, size: 32, offset: 352)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !52, file: !53, line: 382, baseType: !597, size: 384)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !53, line: 198, size: 384, elements: !598)
!598 = !{!599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !597, file: !53, line: 199, baseType: !51, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !597, file: !53, line: 199, baseType: !21, size: 8, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !597, file: !53, line: 199, baseType: !21, size: 8, offset: 72)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !597, file: !53, line: 199, baseType: !62, size: 16, offset: 80)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !597, file: !53, line: 199, baseType: !21, size: 8, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !597, file: !53, line: 201, baseType: !21, size: 8, offset: 104)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !597, file: !53, line: 202, baseType: !21, size: 8, offset: 112)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !597, file: !53, line: 203, baseType: !502, size: 128, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !597, file: !53, line: 203, baseType: !51, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !597, file: !53, line: 203, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !17)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !52, file: !53, line: 383, baseType: !611, size: 320)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !53, line: 206, size: 320, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !611, file: !53, line: 207, baseType: !51, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !611, file: !53, line: 207, baseType: !21, size: 8, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !53, line: 207, baseType: !21, size: 8, offset: 72)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !611, file: !53, line: 207, baseType: !62, size: 16, offset: 80)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !53, line: 207, baseType: !21, size: 8, offset: 96)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !611, file: !53, line: 207, baseType: !502, size: 128, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !611, file: !53, line: 207, baseType: !51, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !52, file: !53, line: 384, baseType: !621, size: 384)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !53, line: 234, size: 384, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !621, file: !53, line: 235, baseType: !51, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !53, line: 235, baseType: !21, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !53, line: 235, baseType: !21, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !621, file: !53, line: 235, baseType: !62, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !53, line: 235, baseType: !21, size: 8, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !621, file: !53, line: 235, baseType: !21, size: 8, offset: 104)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !621, file: !53, line: 235, baseType: !21, size: 8, offset: 112)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !621, file: !53, line: 235, baseType: !21, size: 8, offset: 120)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !621, file: !53, line: 235, baseType: !103, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !621, file: !53, line: 235, baseType: !7, size: 32, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !621, file: !53, line: 235, baseType: !7, size: 32, offset: 224)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !621, file: !53, line: 235, baseType: !7, size: 32, offset: 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !621, file: !53, line: 235, baseType: !21, size: 8, offset: 288)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !621, file: !53, line: 235, baseType: !21, size: 8, offset: 296)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !621, file: !53, line: 235, baseType: !51, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !52, file: !53, line: 385, baseType: !639, size: 576)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !53, line: 238, size: 576, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !639, file: !53, line: 239, baseType: !51, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !639, file: !53, line: 239, baseType: !21, size: 8, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !53, line: 239, baseType: !21, size: 8, offset: 72)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !639, file: !53, line: 239, baseType: !62, size: 16, offset: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !53, line: 239, baseType: !21, size: 8, offset: 96)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !639, file: !53, line: 239, baseType: !21, size: 8, offset: 104)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !639, file: !53, line: 239, baseType: !21, size: 8, offset: 112)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !639, file: !53, line: 239, baseType: !21, size: 8, offset: 120)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !639, file: !53, line: 239, baseType: !103, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !639, file: !53, line: 239, baseType: !7, size: 32, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !639, file: !53, line: 239, baseType: !7, size: 32, offset: 224)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !639, file: !53, line: 239, baseType: !7, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !639, file: !53, line: 239, baseType: !21, size: 8, offset: 288)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !639, file: !53, line: 239, baseType: !21, size: 8, offset: 296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !639, file: !53, line: 239, baseType: !62, size: 16, offset: 304)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !639, file: !53, line: 240, baseType: !51, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !639, file: !53, line: 241, baseType: !98, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !639, file: !53, line: 242, baseType: !62, size: 16, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !639, file: !53, line: 243, baseType: !98, size: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !52, file: !53, line: 386, baseType: !661, size: 384)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !53, line: 263, size: 384, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !53, line: 264, baseType: !51, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !53, line: 264, baseType: !21, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !53, line: 264, baseType: !21, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !53, line: 264, baseType: !62, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !53, line: 264, baseType: !21, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !661, file: !53, line: 264, baseType: !21, size: 8, offset: 104)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !661, file: !53, line: 264, baseType: !21, size: 8, offset: 112)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !661, file: !53, line: 264, baseType: !21, size: 8, offset: 120)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !661, file: !53, line: 264, baseType: !103, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !661, file: !53, line: 264, baseType: !7, size: 32, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !661, file: !53, line: 264, baseType: !7, size: 32, offset: 224)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !661, file: !53, line: 264, baseType: !7, size: 32, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !661, file: !53, line: 264, baseType: !21, size: 8, offset: 288)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !661, file: !53, line: 264, baseType: !21, size: 8, offset: 296)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !661, file: !53, line: 264, baseType: !21, size: 8, offset: 304)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !661, file: !53, line: 265, baseType: !51, size: 64, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !52, file: !53, line: 387, baseType: !680, size: 448)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !53, line: 246, size: 448, elements: !681)
!681 = !{!682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !680, file: !53, line: 247, baseType: !51, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !53, line: 247, baseType: !21, size: 8, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !53, line: 247, baseType: !21, size: 8, offset: 72)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !680, file: !53, line: 247, baseType: !62, size: 16, offset: 80)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !53, line: 247, baseType: !21, size: 8, offset: 96)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !680, file: !53, line: 247, baseType: !21, size: 8, offset: 104)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !680, file: !53, line: 247, baseType: !21, size: 8, offset: 112)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !680, file: !53, line: 247, baseType: !21, size: 8, offset: 120)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !680, file: !53, line: 247, baseType: !103, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !680, file: !53, line: 247, baseType: !7, size: 32, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !680, file: !53, line: 247, baseType: !7, size: 32, offset: 224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !680, file: !53, line: 247, baseType: !7, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !680, file: !53, line: 247, baseType: !21, size: 8, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !680, file: !53, line: 247, baseType: !21, size: 8, offset: 296)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !680, file: !53, line: 247, baseType: !51, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !680, file: !53, line: 248, baseType: !51, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !52, file: !53, line: 388, baseType: !699, size: 448)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !53, line: 251, size: 448, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !699, file: !53, line: 252, baseType: !51, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !53, line: 252, baseType: !21, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !53, line: 252, baseType: !21, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !699, file: !53, line: 252, baseType: !62, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !53, line: 252, baseType: !21, size: 8, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !699, file: !53, line: 252, baseType: !21, size: 8, offset: 104)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !699, file: !53, line: 252, baseType: !21, size: 8, offset: 112)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !699, file: !53, line: 252, baseType: !21, size: 8, offset: 120)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !699, file: !53, line: 252, baseType: !103, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !699, file: !53, line: 252, baseType: !7, size: 32, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !699, file: !53, line: 252, baseType: !7, size: 32, offset: 224)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !699, file: !53, line: 252, baseType: !7, size: 32, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !699, file: !53, line: 252, baseType: !21, size: 8, offset: 288)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !699, file: !53, line: 252, baseType: !21, size: 8, offset: 296)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !699, file: !53, line: 257, baseType: !51, size: 64, offset: 320)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !699, file: !53, line: 258, baseType: !51, size: 64, offset: 384)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !52, file: !53, line: 389, baseType: !718, size: 512)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !53, line: 274, size: 512, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !718, file: !53, line: 275, baseType: !51, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !718, file: !53, line: 275, baseType: !21, size: 8, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !718, file: !53, line: 275, baseType: !21, size: 8, offset: 72)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !718, file: !53, line: 275, baseType: !62, size: 16, offset: 80)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !718, file: !53, line: 275, baseType: !21, size: 8, offset: 96)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !53, line: 275, baseType: !103, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !718, file: !53, line: 276, baseType: !7, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !718, file: !53, line: 277, baseType: !396, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !718, file: !53, line: 278, baseType: !148, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !53, line: 279, baseType: !502, size: 128, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !52, file: !53, line: 390, baseType: !731, size: 576)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !53, line: 282, size: 576, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !746, !747, !748, !749, !755, !756}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !731, file: !53, line: 283, baseType: !51, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !731, file: !53, line: 283, baseType: !21, size: 8, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !731, file: !53, line: 283, baseType: !21, size: 8, offset: 72)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !731, file: !53, line: 283, baseType: !62, size: 16, offset: 80)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !53, line: 283, baseType: !21, size: 8, offset: 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !731, file: !53, line: 283, baseType: !21, size: 8, offset: 104)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !731, file: !53, line: 284, baseType: !21, size: 8, offset: 112)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !731, file: !53, line: 285, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!5, !7, !490, !7, !745, !148, !148}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !731, file: !53, line: 286, baseType: !103, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !731, file: !53, line: 287, baseType: !148, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !731, file: !53, line: 288, baseType: !148, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !731, file: !53, line: 289, baseType: !750, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !751)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!5, !400, !7, !148, !754}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !731, file: !53, line: 290, baseType: !51, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !53, line: 291, baseType: !51, size: 64, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !52, file: !53, line: 391, baseType: !758, size: 512)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !53, line: 309, size: 512, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !758, file: !53, line: 310, baseType: !51, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !758, file: !53, line: 310, baseType: !21, size: 8, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !53, line: 310, baseType: !21, size: 8, offset: 72)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !758, file: !53, line: 310, baseType: !62, size: 16, offset: 80)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !53, line: 310, baseType: !21, size: 8, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !758, file: !53, line: 310, baseType: !21, size: 8, offset: 104)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !758, file: !53, line: 311, baseType: !21, size: 8, offset: 112)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !758, file: !53, line: 312, baseType: !21, size: 8, offset: 120)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !758, file: !53, line: 313, baseType: !148, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !758, file: !53, line: 314, baseType: !103, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !758, file: !53, line: 315, baseType: !135, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !758, file: !53, line: 316, baseType: !98, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !758, file: !53, line: 317, baseType: !98, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !758, file: !53, line: 318, baseType: !7, size: 32, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !52, file: !53, line: 392, baseType: !775, size: 448)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !53, line: 342, size: 448, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !775, file: !53, line: 343, baseType: !51, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !775, file: !53, line: 343, baseType: !21, size: 8, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !53, line: 343, baseType: !21, size: 8, offset: 72)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !775, file: !53, line: 343, baseType: !62, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !775, file: !53, line: 343, baseType: !21, size: 8, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !775, file: !53, line: 343, baseType: !103, size: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !775, file: !53, line: 344, baseType: !103, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !775, file: !53, line: 345, baseType: !148, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !775, file: !53, line: 346, baseType: !98, size: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !775, file: !53, line: 347, baseType: !7, size: 32, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !52, file: !53, line: 393, baseType: !788, size: 256)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !53, line: 352, size: 256, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !800}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !788, file: !53, line: 353, baseType: !51, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !788, file: !53, line: 353, baseType: !21, size: 8, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !788, file: !53, line: 353, baseType: !21, size: 8, offset: 72)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !788, file: !53, line: 353, baseType: !62, size: 16, offset: 80)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !788, file: !53, line: 353, baseType: !21, size: 8, offset: 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !788, file: !53, line: 353, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !400, !148}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !788, file: !53, line: 354, baseType: !148, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !52, file: !53, line: 394, baseType: !802, size: 192)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !53, line: 359, size: 192, elements: !803)
!803 = !{!804, !805, !806, !807, !808, !809}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !802, file: !53, line: 360, baseType: !51, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !802, file: !53, line: 360, baseType: !21, size: 8, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !802, file: !53, line: 360, baseType: !21, size: 8, offset: 72)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !802, file: !53, line: 360, baseType: !62, size: 16, offset: 80)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !802, file: !53, line: 360, baseType: !21, size: 8, offset: 96)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !802, file: !53, line: 360, baseType: !51, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !52, file: !53, line: 401, baseType: !104, size: 384)
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819}
!812 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !48, file: !3, line: 38, type: !51)
!813 = !DILocalVariable(name: "result_desc", arg: 2, scope: !48, file: !3, line: 39, type: !135)
!814 = !DILocalVariable(name: "implicit_conversion", arg: 3, scope: !48, file: !3, line: 40, type: !7)
!815 = !DILocalVariable(name: "return_desc", scope: !48, file: !3, line: 42, type: !51)
!816 = !DILocalVariable(name: "pointer", scope: !48, file: !3, line: 43, type: !98)
!817 = !DILocalVariable(name: "result", scope: !48, file: !3, line: 44, type: !17)
!818 = !DILocalVariable(name: "i", scope: !48, file: !3, line: 45, type: !7)
!819 = !DILocalVariable(name: "count", scope: !48, file: !3, line: 46, type: !7)
!820 = !DILocation(line: 38, column: 55, scope: !48)
!821 = !DILocation(line: 39, column: 35, scope: !48)
!822 = !DILocation(line: 40, column: 11, scope: !48)
!823 = !DILocation(line: 42, column: 2, scope: !48)
!824 = !DILocation(line: 42, column: 29, scope: !48)
!825 = !DILocation(line: 43, column: 2, scope: !48)
!826 = !DILocation(line: 43, column: 6, scope: !48)
!827 = !DILocation(line: 44, column: 2, scope: !48)
!828 = !DILocation(line: 44, column: 6, scope: !48)
!829 = !DILocation(line: 45, column: 2, scope: !48)
!830 = !DILocation(line: 45, column: 6, scope: !48)
!831 = !DILocation(line: 46, column: 2, scope: !48)
!832 = !DILocation(line: 46, column: 6, scope: !48)
!833 = !DILocation(line: 50, column: 10, scope: !48)
!834 = !DILocation(line: 50, column: 27, scope: !48)
!835 = !DILocation(line: 50, column: 2, scope: !48)
!836 = !DILocation(line: 55, column: 18, scope: !837)
!837 = distinct !DILexicalBlock(scope: !48, file: !3, line: 50, column: 33)
!838 = !DILocation(line: 55, column: 4, scope: !837)
!839 = !DILocation(line: 55, column: 16, scope: !837)
!840 = !DILocation(line: 56, column: 3, scope: !837)
!841 = !DILocation(line: 63, column: 13, scope: !837)
!842 = !DILocation(line: 63, column: 30, scope: !837)
!843 = !DILocation(line: 63, column: 11, scope: !837)
!844 = !DILocation(line: 64, column: 11, scope: !837)
!845 = !DILocation(line: 64, column: 28, scope: !837)
!846 = !DILocation(line: 64, column: 9, scope: !837)
!847 = !DILocation(line: 65, column: 3, scope: !837)
!848 = !DILocation(line: 69, column: 3, scope: !837)
!849 = !DILocation(line: 81, column: 9, scope: !48)
!850 = !DILocation(line: 85, column: 10, scope: !48)
!851 = !DILocation(line: 85, column: 27, scope: !48)
!852 = !DILocation(line: 85, column: 2, scope: !48)
!853 = !DILocation(line: 96, column: 7, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 96, column: 7)
!855 = distinct !DILexicalBlock(scope: !48, file: !3, line: 85, column: 33)
!856 = !DILocation(line: 96, column: 7, scope: !855)
!857 = !DILocation(line: 98, column: 35, scope: !858)
!858 = distinct !DILexicalBlock(scope: !854, file: !3, line: 96, column: 28)
!859 = !DILocation(line: 98, column: 8, scope: !858)
!860 = !DILocation(line: 97, column: 11, scope: !858)
!861 = !DILocation(line: 100, column: 3, scope: !858)
!862 = !DILocation(line: 102, column: 35, scope: !863)
!863 = distinct !DILexicalBlock(scope: !854, file: !3, line: 100, column: 10)
!864 = !DILocation(line: 102, column: 8, scope: !863)
!865 = !DILocation(line: 101, column: 11, scope: !863)
!866 = !DILocation(line: 105, column: 3, scope: !855)
!867 = !DILocation(line: 111, column: 8, scope: !868)
!868 = distinct !DILexicalBlock(scope: !855, file: !3, line: 111, column: 7)
!869 = !DILocation(line: 111, column: 7, scope: !855)
!870 = !DILocation(line: 112, column: 4, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !3, line: 111, column: 15)
!872 = !DILocation(line: 117, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !855, file: !3, line: 117, column: 7)
!874 = !DILocation(line: 117, column: 15, scope: !873)
!875 = !DILocation(line: 117, column: 13, scope: !873)
!876 = !DILocation(line: 117, column: 7, scope: !855)
!877 = !DILocation(line: 118, column: 12, scope: !878)
!878 = distinct !DILexicalBlock(scope: !873, file: !3, line: 117, column: 44)
!879 = !DILocation(line: 118, column: 10, scope: !878)
!880 = !DILocation(line: 119, column: 3, scope: !878)
!881 = !DILocation(line: 125, column: 10, scope: !882)
!882 = distinct !DILexicalBlock(scope: !855, file: !3, line: 125, column: 3)
!883 = !DILocation(line: 125, column: 8, scope: !882)
!884 = !DILocation(line: 125, column: 15, scope: !885)
!885 = distinct !DILexicalBlock(scope: !882, file: !3, line: 125, column: 3)
!886 = !DILocation(line: 125, column: 19, scope: !885)
!887 = !DILocation(line: 125, column: 17, scope: !885)
!888 = !DILocation(line: 125, column: 3, scope: !882)
!889 = !DILocation(line: 131, column: 22, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !3, line: 125, column: 31)
!891 = !DILocation(line: 131, column: 30, scope: !890)
!892 = !DILocation(line: 131, column: 16, scope: !890)
!893 = !DILocation(line: 131, column: 38, scope: !890)
!894 = !DILocation(line: 131, column: 40, scope: !890)
!895 = !DILocation(line: 131, column: 34, scope: !890)
!896 = !DILocation(line: 131, column: 11, scope: !890)
!897 = !DILocation(line: 132, column: 3, scope: !890)
!898 = !DILocation(line: 125, column: 27, scope: !885)
!899 = !DILocation(line: 125, column: 3, scope: !885)
!900 = distinct !{!900, !888, !901, !902, !903}
!901 = !DILocation(line: 132, column: 3, scope: !882)
!902 = !{!"llvm.loop.mustprogress"}
!903 = !{!"llvm.loop.unroll.disable"}
!904 = !DILocation(line: 133, column: 3, scope: !855)
!905 = !DILocation(line: 139, column: 3, scope: !855)
!906 = !DILocation(line: 144, column: 46, scope: !48)
!907 = !DILocation(line: 144, column: 16, scope: !48)
!908 = !DILocation(line: 144, column: 14, scope: !48)
!909 = !DILocation(line: 145, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !48, file: !3, line: 145, column: 6)
!911 = !DILocation(line: 145, column: 6, scope: !48)
!912 = !DILocation(line: 146, column: 3, scope: !913)
!913 = distinct !DILexicalBlock(scope: !910, file: !3, line: 145, column: 20)
!914 = !DILocation(line: 154, column: 40, scope: !48)
!915 = !DILocation(line: 154, column: 8, scope: !48)
!916 = !DILocation(line: 155, column: 17, scope: !48)
!917 = !DILocation(line: 155, column: 3, scope: !48)
!918 = !DILocation(line: 155, column: 15, scope: !48)
!919 = !DILocation(line: 156, column: 2, scope: !48)
!920 = !DILocation(line: 157, column: 1, scope: !48)
!921 = !DISubprogram(name: "acpi_ut_implicit_strtoul64", scope: !922, file: !922, line: 211, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!922 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!923 = !DISubroutineType(types: !924)
!924 = !{!17, !12}
!925 = !DISubprogram(name: "acpi_ut_explicit_strtoul64", scope: !922, file: !922, line: 209, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !922, file: !922, line: 455, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!927 = !DISubroutineType(types: !928)
!928 = !{!51, !17}
!929 = !DISubprogram(name: "acpi_ex_truncate_for32bit_table", scope: !930, file: !930, line: 468, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!931 = !DISubroutineType(types: !932)
!932 = !{!21, !51}
!933 = distinct !DISubprogram(name: "acpi_ex_convert_to_buffer", scope: !3, file: !3, line: 174, type: !934, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !936)
!934 = !DISubroutineType(types: !935)
!935 = !{!5, !51, !135}
!936 = !{!937, !938, !939, !940}
!937 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !933, file: !3, line: 174, type: !51)
!938 = !DILocalVariable(name: "result_desc", arg: 2, scope: !933, file: !3, line: 175, type: !135)
!939 = !DILocalVariable(name: "return_desc", scope: !933, file: !3, line: 177, type: !51)
!940 = !DILocalVariable(name: "new_buf", scope: !933, file: !3, line: 178, type: !98)
!941 = !DILocation(line: 174, column: 54, scope: !933)
!942 = !DILocation(line: 175, column: 34, scope: !933)
!943 = !DILocation(line: 177, column: 2, scope: !933)
!944 = !DILocation(line: 177, column: 29, scope: !933)
!945 = !DILocation(line: 178, column: 2, scope: !933)
!946 = !DILocation(line: 178, column: 6, scope: !933)
!947 = !DILocation(line: 182, column: 10, scope: !933)
!948 = !DILocation(line: 182, column: 27, scope: !933)
!949 = !DILocation(line: 182, column: 2, scope: !933)
!950 = !DILocation(line: 187, column: 18, scope: !951)
!951 = distinct !DILexicalBlock(scope: !933, file: !3, line: 182, column: 33)
!952 = !DILocation(line: 187, column: 4, scope: !951)
!953 = !DILocation(line: 187, column: 16, scope: !951)
!954 = !DILocation(line: 188, column: 3, scope: !951)
!955 = !DILocation(line: 196, column: 36, scope: !951)
!956 = !DILocation(line: 196, column: 7, scope: !951)
!957 = !DILocation(line: 195, column: 15, scope: !951)
!958 = !DILocation(line: 197, column: 8, scope: !959)
!959 = distinct !DILexicalBlock(scope: !951, file: !3, line: 197, column: 7)
!960 = !DILocation(line: 197, column: 7, scope: !951)
!961 = !DILocation(line: 198, column: 4, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 197, column: 21)
!963 = !DILocation(line: 203, column: 13, scope: !951)
!964 = !DILocation(line: 203, column: 33, scope: !951)
!965 = !DILocation(line: 203, column: 11, scope: !951)
!966 = !DILocation(line: 204, column: 10, scope: !951)
!967 = !DILocation(line: 204, column: 20, scope: !951)
!968 = !DILocation(line: 204, column: 38, scope: !951)
!969 = !DILocation(line: 205, column: 10, scope: !951)
!970 = !DILocation(line: 204, column: 3, scope: !951)
!971 = !DILocation(line: 206, column: 3, scope: !951)
!972 = !DILocation(line: 219, column: 11, scope: !951)
!973 = !DILocation(line: 220, column: 11, scope: !951)
!974 = !DILocation(line: 218, column: 46, scope: !951)
!975 = !DILocation(line: 220, column: 18, scope: !951)
!976 = !DILocation(line: 218, column: 17, scope: !951)
!977 = !DILocation(line: 218, column: 15, scope: !951)
!978 = !DILocation(line: 221, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !951, file: !3, line: 221, column: 7)
!980 = !DILocation(line: 221, column: 7, scope: !951)
!981 = !DILocation(line: 222, column: 4, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !3, line: 221, column: 21)
!983 = !DILocation(line: 227, column: 13, scope: !951)
!984 = !DILocation(line: 227, column: 33, scope: !951)
!985 = !DILocation(line: 227, column: 11, scope: !951)
!986 = !DILocation(line: 228, column: 19, scope: !951)
!987 = !DILocation(line: 228, column: 36, scope: !951)
!988 = !DILocation(line: 228, column: 53, scope: !951)
!989 = !DILocation(line: 229, column: 4, scope: !951)
!990 = !DILocation(line: 229, column: 21, scope: !951)
!991 = !DILocation(line: 228, column: 3, scope: !951)
!992 = !DILocation(line: 230, column: 3, scope: !951)
!993 = !DILocation(line: 234, column: 3, scope: !951)
!994 = !DILocation(line: 239, column: 2, scope: !933)
!995 = !DILocation(line: 239, column: 22, scope: !933)
!996 = !DILocation(line: 239, column: 28, scope: !933)
!997 = !DILocation(line: 240, column: 17, scope: !933)
!998 = !DILocation(line: 240, column: 3, scope: !933)
!999 = !DILocation(line: 240, column: 15, scope: !933)
!1000 = !DILocation(line: 241, column: 2, scope: !933)
!1001 = !DILocation(line: 242, column: 1, scope: !933)
!1002 = !DISubprogram(name: "acpi_ut_create_buffer_object", scope: !922, file: !922, line: 457, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!51, !20}
!1005 = !DISubprogram(name: "strncpy", scope: !1006, file: !1006, line: 66, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!12, !12, !1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1011, line: 72, baseType: !1012)
!1011 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1011, line: 16, baseType: !16)
!1013 = distinct !DISubprogram(name: "acpi_ex_convert_to_string", scope: !3, file: !3, line: 373, type: !49, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023}
!1015 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1013, file: !3, line: 373, type: !51)
!1016 = !DILocalVariable(name: "result_desc", arg: 2, scope: !1013, file: !3, line: 374, type: !135)
!1017 = !DILocalVariable(name: "type", arg: 3, scope: !1013, file: !3, line: 374, type: !7)
!1018 = !DILocalVariable(name: "return_desc", scope: !1013, file: !3, line: 376, type: !51)
!1019 = !DILocalVariable(name: "new_buf", scope: !1013, file: !3, line: 377, type: !98)
!1020 = !DILocalVariable(name: "i", scope: !1013, file: !3, line: 378, type: !7)
!1021 = !DILocalVariable(name: "string_length", scope: !1013, file: !3, line: 379, type: !7)
!1022 = !DILocalVariable(name: "base", scope: !1013, file: !3, line: 380, type: !62)
!1023 = !DILocalVariable(name: "separator", scope: !1013, file: !3, line: 381, type: !21)
!1024 = !DILocation(line: 373, column: 55, scope: !1013)
!1025 = !DILocation(line: 374, column: 35, scope: !1013)
!1026 = !DILocation(line: 374, column: 52, scope: !1013)
!1027 = !DILocation(line: 376, column: 2, scope: !1013)
!1028 = !DILocation(line: 376, column: 29, scope: !1013)
!1029 = !DILocation(line: 377, column: 2, scope: !1013)
!1030 = !DILocation(line: 377, column: 6, scope: !1013)
!1031 = !DILocation(line: 378, column: 2, scope: !1013)
!1032 = !DILocation(line: 378, column: 6, scope: !1013)
!1033 = !DILocation(line: 379, column: 2, scope: !1013)
!1034 = !DILocation(line: 379, column: 6, scope: !1013)
!1035 = !DILocation(line: 380, column: 2, scope: !1013)
!1036 = !DILocation(line: 380, column: 6, scope: !1013)
!1037 = !DILocation(line: 381, column: 2, scope: !1013)
!1038 = !DILocation(line: 381, column: 5, scope: !1013)
!1039 = !DILocation(line: 385, column: 10, scope: !1013)
!1040 = !DILocation(line: 385, column: 27, scope: !1013)
!1041 = !DILocation(line: 385, column: 2, scope: !1013)
!1042 = !DILocation(line: 390, column: 18, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 385, column: 33)
!1044 = !DILocation(line: 390, column: 4, scope: !1043)
!1045 = !DILocation(line: 390, column: 16, scope: !1043)
!1046 = !DILocation(line: 391, column: 3, scope: !1043)
!1047 = !DILocation(line: 395, column: 11, scope: !1043)
!1048 = !DILocation(line: 395, column: 3, scope: !1043)
!1049 = !DILocation(line: 402, column: 18, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 395, column: 17)
!1051 = !DILocation(line: 403, column: 9, scope: !1050)
!1052 = !DILocation(line: 404, column: 4, scope: !1050)
!1053 = !DILocation(line: 410, column: 20, scope: !1050)
!1054 = !DILocation(line: 410, column: 18, scope: !1050)
!1055 = !DILocation(line: 411, column: 4, scope: !1050)
!1056 = !DILocation(line: 419, column: 47, scope: !1043)
!1057 = !DILocation(line: 419, column: 36, scope: !1043)
!1058 = !DILocation(line: 419, column: 7, scope: !1043)
!1059 = !DILocation(line: 418, column: 15, scope: !1043)
!1060 = !DILocation(line: 420, column: 8, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 420, column: 7)
!1062 = !DILocation(line: 420, column: 7, scope: !1043)
!1063 = !DILocation(line: 421, column: 4, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 420, column: 21)
!1065 = !DILocation(line: 424, column: 13, scope: !1043)
!1066 = !DILocation(line: 424, column: 33, scope: !1043)
!1067 = !DILocation(line: 424, column: 11, scope: !1043)
!1068 = !DILocation(line: 429, column: 32, scope: !1043)
!1069 = !DILocation(line: 429, column: 50, scope: !1043)
!1070 = !DILocation(line: 429, column: 57, scope: !1043)
!1071 = !DILocation(line: 430, column: 11, scope: !1043)
!1072 = !DILocation(line: 431, column: 11, scope: !1043)
!1073 = !DILocation(line: 429, column: 7, scope: !1043)
!1074 = !DILocation(line: 428, column: 17, scope: !1043)
!1075 = !DILocation(line: 435, column: 32, scope: !1043)
!1076 = !DILocation(line: 435, column: 3, scope: !1043)
!1077 = !DILocation(line: 435, column: 23, scope: !1043)
!1078 = !DILocation(line: 435, column: 30, scope: !1043)
!1079 = !DILocation(line: 436, column: 3, scope: !1043)
!1080 = !DILocation(line: 436, column: 11, scope: !1043)
!1081 = !DILocation(line: 436, column: 26, scope: !1043)
!1082 = !DILocation(line: 437, column: 3, scope: !1043)
!1083 = !DILocation(line: 443, column: 11, scope: !1043)
!1084 = !DILocation(line: 443, column: 3, scope: !1043)
!1085 = !DILocation(line: 451, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 443, column: 17)
!1087 = !DILocation(line: 457, column: 11, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 457, column: 4)
!1089 = !DILocation(line: 457, column: 9, scope: !1088)
!1090 = !DILocation(line: 457, column: 16, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 457, column: 4)
!1092 = !DILocation(line: 457, column: 20, scope: !1091)
!1093 = !DILocation(line: 457, column: 37, scope: !1091)
!1094 = !DILocation(line: 457, column: 18, scope: !1091)
!1095 = !DILocation(line: 457, column: 4, scope: !1088)
!1096 = !DILocation(line: 458, column: 9, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 458, column: 9)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 457, column: 50)
!1099 = !DILocation(line: 458, column: 26, scope: !1097)
!1100 = !DILocation(line: 458, column: 34, scope: !1097)
!1101 = !DILocation(line: 458, column: 37, scope: !1097)
!1102 = !DILocation(line: 458, column: 9, scope: !1098)
!1103 = !DILocation(line: 459, column: 20, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 458, column: 45)
!1105 = !DILocation(line: 460, column: 5, scope: !1104)
!1106 = !DILocation(line: 460, column: 16, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 460, column: 16)
!1108 = !DILocation(line: 460, column: 33, scope: !1107)
!1109 = !DILocation(line: 460, column: 41, scope: !1107)
!1110 = !DILocation(line: 460, column: 44, scope: !1107)
!1111 = !DILocation(line: 460, column: 16, scope: !1097)
!1112 = !DILocation(line: 461, column: 20, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 460, column: 51)
!1114 = !DILocation(line: 462, column: 5, scope: !1113)
!1115 = !DILocation(line: 463, column: 20, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 462, column: 12)
!1117 = !DILocation(line: 465, column: 4, scope: !1098)
!1118 = !DILocation(line: 457, column: 46, scope: !1091)
!1119 = !DILocation(line: 457, column: 4, scope: !1091)
!1120 = distinct !{!1120, !1095, !1121, !902, !903}
!1121 = !DILocation(line: 465, column: 4, scope: !1088)
!1122 = !DILocation(line: 466, column: 4, scope: !1086)
!1123 = !DILocation(line: 478, column: 14, scope: !1086)
!1124 = !DILocation(line: 479, column: 21, scope: !1086)
!1125 = !DILocation(line: 479, column: 38, scope: !1086)
!1126 = !DILocation(line: 479, column: 45, scope: !1086)
!1127 = !DILocation(line: 479, column: 18, scope: !1086)
!1128 = !DILocation(line: 480, column: 4, scope: !1086)
!1129 = !DILocation(line: 491, column: 14, scope: !1086)
!1130 = !DILocation(line: 492, column: 21, scope: !1086)
!1131 = !DILocation(line: 492, column: 38, scope: !1086)
!1132 = !DILocation(line: 492, column: 45, scope: !1086)
!1133 = !DILocation(line: 492, column: 18, scope: !1086)
!1134 = !DILocation(line: 493, column: 4, scope: !1086)
!1135 = !DILocation(line: 496, column: 4, scope: !1086)
!1136 = !DILocation(line: 504, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 504, column: 7)
!1138 = !DILocation(line: 504, column: 7, scope: !1043)
!1139 = !DILocation(line: 505, column: 17, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 504, column: 22)
!1141 = !DILocation(line: 506, column: 3, scope: !1140)
!1142 = !DILocation(line: 509, column: 47, scope: !1043)
!1143 = !DILocation(line: 509, column: 36, scope: !1043)
!1144 = !DILocation(line: 509, column: 7, scope: !1043)
!1145 = !DILocation(line: 508, column: 15, scope: !1043)
!1146 = !DILocation(line: 510, column: 8, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 510, column: 7)
!1148 = !DILocation(line: 510, column: 7, scope: !1043)
!1149 = !DILocation(line: 511, column: 4, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 510, column: 21)
!1151 = !DILocation(line: 514, column: 13, scope: !1043)
!1152 = !DILocation(line: 514, column: 33, scope: !1043)
!1153 = !DILocation(line: 514, column: 11, scope: !1043)
!1154 = !DILocation(line: 520, column: 10, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 520, column: 3)
!1156 = !DILocation(line: 520, column: 8, scope: !1155)
!1157 = !DILocation(line: 520, column: 15, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 520, column: 3)
!1159 = !DILocation(line: 520, column: 19, scope: !1158)
!1160 = !DILocation(line: 520, column: 36, scope: !1158)
!1161 = !DILocation(line: 520, column: 17, scope: !1158)
!1162 = !DILocation(line: 520, column: 3, scope: !1155)
!1163 = !DILocation(line: 521, column: 8, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 521, column: 8)
!1165 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 520, column: 49)
!1166 = !DILocation(line: 521, column: 13, scope: !1164)
!1167 = !DILocation(line: 521, column: 8, scope: !1165)
!1168 = !DILocation(line: 525, column: 13, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 521, column: 20)
!1170 = !DILocation(line: 525, column: 16, scope: !1169)
!1171 = !DILocation(line: 526, column: 13, scope: !1169)
!1172 = !DILocation(line: 526, column: 16, scope: !1169)
!1173 = !DILocation(line: 527, column: 4, scope: !1169)
!1174 = !DILocation(line: 529, column: 46, scope: !1165)
!1175 = !DILocation(line: 530, column: 19, scope: !1165)
!1176 = !DILocation(line: 530, column: 27, scope: !1165)
!1177 = !DILocation(line: 529, column: 40, scope: !1165)
!1178 = !DILocation(line: 531, column: 12, scope: !1165)
!1179 = !DILocation(line: 531, column: 18, scope: !1165)
!1180 = !DILocation(line: 529, column: 15, scope: !1165)
!1181 = !DILocation(line: 529, column: 12, scope: !1165)
!1182 = !DILocation(line: 535, column: 17, scope: !1165)
!1183 = !DILocation(line: 535, column: 12, scope: !1165)
!1184 = !DILocation(line: 535, column: 15, scope: !1165)
!1185 = !DILocation(line: 536, column: 3, scope: !1165)
!1186 = !DILocation(line: 520, column: 45, scope: !1158)
!1187 = !DILocation(line: 520, column: 3, scope: !1158)
!1188 = distinct !{!1188, !1162, !1189, !902, !903}
!1189 = !DILocation(line: 536, column: 3, scope: !1155)
!1190 = !DILocation(line: 542, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 542, column: 7)
!1192 = !DILocation(line: 542, column: 24, scope: !1191)
!1193 = !DILocation(line: 542, column: 7, scope: !1043)
!1194 = !DILocation(line: 543, column: 11, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 542, column: 32)
!1196 = !DILocation(line: 544, column: 3, scope: !1195)
!1197 = !DILocation(line: 545, column: 4, scope: !1043)
!1198 = !DILocation(line: 545, column: 12, scope: !1043)
!1199 = !DILocation(line: 546, column: 3, scope: !1043)
!1200 = !DILocation(line: 550, column: 3, scope: !1043)
!1201 = !DILocation(line: 553, column: 17, scope: !1013)
!1202 = !DILocation(line: 553, column: 3, scope: !1013)
!1203 = !DILocation(line: 553, column: 15, scope: !1013)
!1204 = !DILocation(line: 554, column: 2, scope: !1013)
!1205 = !DILocation(line: 555, column: 1, scope: !1013)
!1206 = !DISubprogram(name: "acpi_ut_create_string_object", scope: !922, file: !922, line: 459, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1207 = distinct !DISubprogram(name: "acpi_ex_convert_to_ascii", scope: !3, file: !3, line: 260, type: !1208, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1210)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!7, !17, !62, !98, !21}
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222}
!1211 = !DILocalVariable(name: "integer", arg: 1, scope: !1207, file: !3, line: 260, type: !17)
!1212 = !DILocalVariable(name: "base", arg: 2, scope: !1207, file: !3, line: 260, type: !62)
!1213 = !DILocalVariable(name: "string", arg: 3, scope: !1207, file: !3, line: 260, type: !98)
!1214 = !DILocalVariable(name: "data_width", arg: 4, scope: !1207, file: !3, line: 260, type: !21)
!1215 = !DILocalVariable(name: "digit", scope: !1207, file: !3, line: 262, type: !17)
!1216 = !DILocalVariable(name: "i", scope: !1207, file: !3, line: 263, type: !7)
!1217 = !DILocalVariable(name: "j", scope: !1207, file: !3, line: 264, type: !7)
!1218 = !DILocalVariable(name: "k", scope: !1207, file: !3, line: 265, type: !7)
!1219 = !DILocalVariable(name: "hex_length", scope: !1207, file: !3, line: 266, type: !7)
!1220 = !DILocalVariable(name: "decimal_length", scope: !1207, file: !3, line: 267, type: !7)
!1221 = !DILocalVariable(name: "remainder", scope: !1207, file: !3, line: 268, type: !7)
!1222 = !DILocalVariable(name: "supress_zeros", scope: !1207, file: !3, line: 269, type: !21)
!1223 = !DILocation(line: 260, column: 30, scope: !1207)
!1224 = !DILocation(line: 260, column: 43, scope: !1207)
!1225 = !DILocation(line: 260, column: 53, scope: !1207)
!1226 = !DILocation(line: 260, column: 64, scope: !1207)
!1227 = !DILocation(line: 262, column: 2, scope: !1207)
!1228 = !DILocation(line: 262, column: 6, scope: !1207)
!1229 = !DILocation(line: 263, column: 2, scope: !1207)
!1230 = !DILocation(line: 263, column: 6, scope: !1207)
!1231 = !DILocation(line: 264, column: 2, scope: !1207)
!1232 = !DILocation(line: 264, column: 6, scope: !1207)
!1233 = !DILocation(line: 265, column: 2, scope: !1207)
!1234 = !DILocation(line: 265, column: 6, scope: !1207)
!1235 = !DILocation(line: 266, column: 2, scope: !1207)
!1236 = !DILocation(line: 266, column: 6, scope: !1207)
!1237 = !DILocation(line: 267, column: 2, scope: !1207)
!1238 = !DILocation(line: 267, column: 6, scope: !1207)
!1239 = !DILocation(line: 268, column: 2, scope: !1207)
!1240 = !DILocation(line: 268, column: 6, scope: !1207)
!1241 = !DILocation(line: 269, column: 2, scope: !1207)
!1242 = !DILocation(line: 269, column: 5, scope: !1207)
!1243 = !DILocation(line: 273, column: 10, scope: !1207)
!1244 = !DILocation(line: 273, column: 2, scope: !1207)
!1245 = !DILocation(line: 278, column: 11, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 273, column: 16)
!1247 = !DILocation(line: 278, column: 3, scope: !1246)
!1248 = !DILocation(line: 281, column: 19, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 278, column: 23)
!1250 = !DILocation(line: 282, column: 4, scope: !1249)
!1251 = !DILocation(line: 286, column: 19, scope: !1249)
!1252 = !DILocation(line: 287, column: 4, scope: !1249)
!1253 = !DILocation(line: 289, column: 3, scope: !1249)
!1254 = !DILocation(line: 292, column: 19, scope: !1249)
!1255 = !DILocation(line: 293, column: 4, scope: !1249)
!1256 = !DILocation(line: 296, column: 17, scope: !1246)
!1257 = !DILocation(line: 297, column: 13, scope: !1246)
!1258 = !DILocation(line: 299, column: 12, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 299, column: 3)
!1260 = !DILocation(line: 299, column: 10, scope: !1259)
!1261 = !DILocation(line: 299, column: 8, scope: !1259)
!1262 = !DILocation(line: 299, column: 28, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 299, column: 3)
!1264 = !DILocation(line: 299, column: 30, scope: !1263)
!1265 = !DILocation(line: 299, column: 3, scope: !1259)
!1266 = !DILocation(line: 303, column: 12, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 299, column: 40)
!1268 = !DILocation(line: 303, column: 10, scope: !1267)
!1269 = !DILocation(line: 304, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 304, column: 4)
!1271 = !DILocation(line: 304, column: 9, scope: !1270)
!1272 = !DILocation(line: 304, column: 16, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 304, column: 4)
!1274 = !DILocation(line: 304, column: 20, scope: !1273)
!1275 = !DILocation(line: 304, column: 18, scope: !1273)
!1276 = !DILocation(line: 304, column: 4, scope: !1270)
!1277 = !DILocation(line: 305, column: 32, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 304, column: 28)
!1279 = !DILocation(line: 305, column: 11, scope: !1278)
!1280 = !DILocation(line: 307, column: 4, scope: !1278)
!1281 = !DILocation(line: 304, column: 24, scope: !1273)
!1282 = !DILocation(line: 304, column: 4, scope: !1273)
!1283 = distinct !{!1283, !1276, !1284, !902, !903}
!1284 = !DILocation(line: 307, column: 4, scope: !1270)
!1285 = !DILocation(line: 311, column: 8, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 311, column: 8)
!1287 = !DILocation(line: 311, column: 18, scope: !1286)
!1288 = !DILocation(line: 311, column: 8, scope: !1267)
!1289 = !DILocation(line: 312, column: 19, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 311, column: 24)
!1291 = !DILocation(line: 313, column: 4, scope: !1290)
!1292 = !DILocation(line: 315, column: 9, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 315, column: 8)
!1294 = !DILocation(line: 315, column: 8, scope: !1267)
!1295 = !DILocation(line: 316, column: 41, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 315, column: 24)
!1297 = !DILocation(line: 316, column: 39, scope: !1296)
!1298 = !DILocation(line: 316, column: 17, scope: !1296)
!1299 = !DILocation(line: 316, column: 5, scope: !1296)
!1300 = !DILocation(line: 316, column: 12, scope: !1296)
!1301 = !DILocation(line: 316, column: 15, scope: !1296)
!1302 = !DILocation(line: 317, column: 6, scope: !1296)
!1303 = !DILocation(line: 318, column: 4, scope: !1296)
!1304 = !DILocation(line: 319, column: 3, scope: !1267)
!1305 = !DILocation(line: 299, column: 36, scope: !1263)
!1306 = !DILocation(line: 299, column: 3, scope: !1263)
!1307 = distinct !{!1307, !1265, !1308, !902, !903}
!1308 = !DILocation(line: 319, column: 3, scope: !1259)
!1309 = !DILocation(line: 320, column: 3, scope: !1246)
!1310 = !DILocation(line: 326, column: 17, scope: !1246)
!1311 = !DILocation(line: 326, column: 28, scope: !1246)
!1312 = !DILocation(line: 326, column: 14, scope: !1246)
!1313 = !DILocation(line: 327, column: 10, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 327, column: 3)
!1315 = !DILocation(line: 327, column: 20, scope: !1314)
!1316 = !DILocation(line: 327, column: 31, scope: !1314)
!1317 = !DILocation(line: 327, column: 17, scope: !1314)
!1318 = !DILocation(line: 327, column: 8, scope: !1314)
!1319 = !DILocation(line: 327, column: 37, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 327, column: 3)
!1321 = !DILocation(line: 327, column: 41, scope: !1320)
!1322 = !DILocation(line: 327, column: 39, scope: !1320)
!1323 = !DILocation(line: 327, column: 3, scope: !1314)
!1324 = !DILocation(line: 332, column: 34, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 327, column: 63)
!1326 = !DILocation(line: 332, column: 43, scope: !1325)
!1327 = !DILocation(line: 332, column: 8, scope: !1325)
!1328 = !DILocation(line: 331, column: 4, scope: !1325)
!1329 = !DILocation(line: 331, column: 11, scope: !1325)
!1330 = !DILocation(line: 331, column: 14, scope: !1325)
!1331 = !DILocation(line: 333, column: 5, scope: !1325)
!1332 = !DILocation(line: 334, column: 3, scope: !1325)
!1333 = !DILocation(line: 327, column: 54, scope: !1320)
!1334 = !DILocation(line: 327, column: 59, scope: !1320)
!1335 = !DILocation(line: 327, column: 3, scope: !1320)
!1336 = distinct !{!1336, !1323, !1337, !902, !903}
!1337 = !DILocation(line: 334, column: 3, scope: !1314)
!1338 = !DILocation(line: 335, column: 3, scope: !1246)
!1339 = !DILocation(line: 338, column: 3, scope: !1246)
!1340 = !DILocation(line: 347, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 347, column: 6)
!1342 = !DILocation(line: 347, column: 6, scope: !1207)
!1343 = !DILocation(line: 348, column: 3, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 347, column: 10)
!1345 = !DILocation(line: 348, column: 13, scope: !1344)
!1346 = !DILocation(line: 349, column: 5, scope: !1344)
!1347 = !DILocation(line: 350, column: 2, scope: !1344)
!1348 = !DILocation(line: 352, column: 2, scope: !1207)
!1349 = !DILocation(line: 352, column: 9, scope: !1207)
!1350 = !DILocation(line: 352, column: 12, scope: !1207)
!1351 = !DILocation(line: 353, column: 16, scope: !1207)
!1352 = !DILocation(line: 353, column: 2, scope: !1207)
!1353 = !DILocation(line: 354, column: 1, scope: !1207)
!1354 = distinct !DISubprogram(name: "acpi_ex_convert_to_target_type", scope: !3, file: !3, line: 573, type: !1355, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1358)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!5, !1357, !51, !135, !171}
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !7)
!1358 = !{!1359, !1360, !1361, !1362, !1363}
!1359 = !DILocalVariable(name: "destination_type", arg: 1, scope: !1354, file: !3, line: 573, type: !1357)
!1360 = !DILocalVariable(name: "source_desc", arg: 2, scope: !1354, file: !3, line: 574, type: !51)
!1361 = !DILocalVariable(name: "result_desc", arg: 3, scope: !1354, file: !3, line: 575, type: !135)
!1362 = !DILocalVariable(name: "walk_state", arg: 4, scope: !1354, file: !3, line: 576, type: !171)
!1363 = !DILocalVariable(name: "status", scope: !1354, file: !3, line: 578, type: !5)
!1364 = !DILocation(line: 573, column: 49, scope: !1354)
!1365 = !DILocation(line: 574, column: 38, scope: !1354)
!1366 = !DILocation(line: 575, column: 39, scope: !1354)
!1367 = !DILocation(line: 576, column: 35, scope: !1354)
!1368 = !DILocation(line: 578, column: 2, scope: !1354)
!1369 = !DILocation(line: 578, column: 14, scope: !1354)
!1370 = !DILocation(line: 584, column: 17, scope: !1354)
!1371 = !DILocation(line: 584, column: 3, scope: !1354)
!1372 = !DILocation(line: 584, column: 15, scope: !1354)
!1373 = !DILocation(line: 590, column: 10, scope: !1354)
!1374 = !DILocation(line: 590, column: 2, scope: !1354)
!1375 = !DILocation(line: 595, column: 11, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 590, column: 67)
!1377 = !DILocation(line: 595, column: 3, scope: !1376)
!1378 = !DILocation(line: 606, column: 8, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !3, line: 606, column: 8)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 595, column: 29)
!1381 = !DILocation(line: 606, column: 28, scope: !1379)
!1382 = !DILocation(line: 606, column: 48, scope: !1379)
!1383 = !DILocation(line: 606, column: 25, scope: !1379)
!1384 = !DILocation(line: 606, column: 8, scope: !1380)
!1385 = !DILocation(line: 613, column: 12, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 606, column: 54)
!1387 = !DILocation(line: 614, column: 4, scope: !1386)
!1388 = !DILocation(line: 615, column: 3, scope: !1380)
!1389 = !DILocation(line: 616, column: 3, scope: !1376)
!1390 = !DILocation(line: 621, column: 11, scope: !1376)
!1391 = !DILocation(line: 621, column: 3, scope: !1376)
!1392 = !DILocation(line: 631, column: 35, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 621, column: 29)
!1394 = !DILocation(line: 631, column: 48, scope: !1393)
!1395 = !DILocation(line: 631, column: 8, scope: !1393)
!1396 = !DILocation(line: 630, column: 11, scope: !1393)
!1397 = !DILocation(line: 633, column: 4, scope: !1393)
!1398 = !DILocation(line: 641, column: 34, scope: !1393)
!1399 = !DILocation(line: 641, column: 47, scope: !1393)
!1400 = !DILocation(line: 641, column: 8, scope: !1393)
!1401 = !DILocation(line: 640, column: 11, scope: !1393)
!1402 = !DILocation(line: 643, column: 4, scope: !1393)
!1403 = !DILocation(line: 651, column: 34, scope: !1393)
!1404 = !DILocation(line: 651, column: 47, scope: !1393)
!1405 = !DILocation(line: 651, column: 8, scope: !1393)
!1406 = !DILocation(line: 650, column: 11, scope: !1393)
!1407 = !DILocation(line: 652, column: 4, scope: !1393)
!1408 = !DILocation(line: 656, column: 4, scope: !1393)
!1409 = !DILocation(line: 659, column: 11, scope: !1393)
!1410 = !DILocation(line: 660, column: 4, scope: !1393)
!1411 = !DILocation(line: 662, column: 3, scope: !1376)
!1412 = !DILocation(line: 672, column: 3, scope: !1376)
!1413 = !DILocation(line: 678, column: 10, scope: !1376)
!1414 = !DILocation(line: 679, column: 2, scope: !1376)
!1415 = !DILocation(line: 687, column: 6, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 687, column: 6)
!1417 = !DILocation(line: 687, column: 13, scope: !1416)
!1418 = !DILocation(line: 687, column: 6, scope: !1354)
!1419 = !DILocation(line: 688, column: 10, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 687, column: 25)
!1421 = !DILocation(line: 689, column: 2, scope: !1420)
!1422 = !DILocation(line: 691, column: 2, scope: !1354)
!1423 = !DILocation(line: 692, column: 1, scope: !1354)
!1424 = !DISubprogram(name: "acpi_error", scope: !1425, file: !1425, line: 901, type: !1426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1425 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !1009, !7, !1009, null}
!1428 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !922, file: !922, line: 225, type: !1429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1009, !1357}
!1431 = !DISubprogram(name: "acpi_ut_short_divide", scope: !922, file: !922, line: 541, type: !1432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!5, !17, !7, !745, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1435 = !DISubprogram(name: "acpi_ut_hex_to_ascii_char", scope: !922, file: !922, line: 241, type: !1436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!13, !17, !7}
