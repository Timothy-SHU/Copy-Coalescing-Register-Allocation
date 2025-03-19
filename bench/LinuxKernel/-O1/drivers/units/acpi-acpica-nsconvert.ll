; ModuleID = 'drivers/acpi/acpica/nsconvert.c'
source_filename = "drivers/acpi/acpica/nsconvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { ptr, i8, i8, i16, i16, [8 x ptr] }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }

@_acpi_module_name = internal constant [10 x i8] c"nsconvert\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_convert_to_integer(ptr noundef %original_object, ptr noundef %return_object) #0 align 16 !dbg !817 {
entry:
  %retval = alloca i32, align 4
  %original_object.addr = alloca ptr, align 8
  %return_object.addr = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %status = alloca i32, align 4
  %value = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %original_object, ptr %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %original_object.addr, metadata !821, metadata !DIExpression()), !dbg !827
  store ptr %return_object, ptr %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object.addr, metadata !822, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_object) #6, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %new_object, metadata !823, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %status, metadata !824, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #6, !dbg !833
  call void @llvm.dbg.declare(metadata ptr %value, metadata !825, metadata !DIExpression()), !dbg !834
  store i64 0, ptr %value, align 8, !dbg !834
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !835
  call void @llvm.dbg.declare(metadata ptr %i, metadata !826, metadata !DIExpression()), !dbg !836
  %0 = load ptr, ptr %original_object.addr, align 8, !dbg !837
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !838
  %1 = load i8, ptr %type, align 1, !dbg !838
  %conv = zext i8 %1 to i32, !dbg !837
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
  ], !dbg !839

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %original_object.addr, align 8, !dbg !840
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %2, i32 0, i32 5, !dbg !842
  %3 = load ptr, ptr %pointer, align 8, !dbg !842
  %call = call i32 @acpi_ut_strtoul64(ptr noundef %3, ptr noundef %value) #7, !dbg !843
  store i32 %call, ptr %status, align 4, !dbg !844
  %4 = load i32, ptr %status, align 4, !dbg !845
  %tobool = icmp ne i32 %4, 0, !dbg !845
  br i1 %tobool, label %if.then, label %if.end, !dbg !847

if.then:                                          ; preds = %sw.bb
  %5 = load i32, ptr %status, align 4, !dbg !848
  store i32 %5, ptr %retval, align 4, !dbg !850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !850

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !851

sw.bb1:                                           ; preds = %entry
  %6 = load ptr, ptr %original_object.addr, align 8, !dbg !852
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %6, i32 0, i32 6, !dbg !854
  %7 = load i32, ptr %length, align 8, !dbg !854
  %cmp = icmp ugt i32 %7, 8, !dbg !855
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !856

if.then3:                                         ; preds = %sw.bb1
  store i32 12291, ptr %retval, align 4, !dbg !857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !857

if.end4:                                          ; preds = %sw.bb1
  store i32 0, ptr %i, align 4, !dbg !859
  br label %for.cond, !dbg !861

for.cond:                                         ; preds = %for.inc, %if.end4
  %8 = load i32, ptr %i, align 4, !dbg !862
  %9 = load ptr, ptr %original_object.addr, align 8, !dbg !864
  %length5 = getelementptr inbounds %struct.acpi_object_buffer, ptr %9, i32 0, i32 6, !dbg !865
  %10 = load i32, ptr %length5, align 8, !dbg !865
  %cmp6 = icmp ult i32 %8, %10, !dbg !866
  br i1 %cmp6, label %for.body, label %for.end, !dbg !867

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %original_object.addr, align 8, !dbg !868
  %pointer8 = getelementptr inbounds %struct.acpi_object_buffer, ptr %11, i32 0, i32 5, !dbg !870
  %12 = load ptr, ptr %pointer8, align 8, !dbg !870
  %13 = load i32, ptr %i, align 4, !dbg !871
  %idxprom = zext i32 %13 to i64, !dbg !868
  %arrayidx = getelementptr i8, ptr %12, i64 %idxprom, !dbg !868
  %14 = load i8, ptr %arrayidx, align 1, !dbg !868
  %conv9 = zext i8 %14 to i64, !dbg !872
  %15 = load i32, ptr %i, align 4, !dbg !873
  %mul = mul i32 %15, 8, !dbg !874
  %sh_prom = zext i32 %mul to i64, !dbg !875
  %shl = shl i64 %conv9, %sh_prom, !dbg !875
  %16 = load i64, ptr %value, align 8, !dbg !876
  %or = or i64 %16, %shl, !dbg !876
  store i64 %or, ptr %value, align 8, !dbg !876
  br label %for.inc, !dbg !877

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4, !dbg !878
  %inc = add i32 %17, 1, !dbg !878
  store i32 %inc, ptr %i, align 4, !dbg !878
  br label %for.cond, !dbg !879, !llvm.loop !880

for.end:                                          ; preds = %for.cond
  br label %sw.epilog, !dbg !884

sw.default:                                       ; preds = %entry
  store i32 12291, ptr %retval, align 4, !dbg !885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !885

sw.epilog:                                        ; preds = %for.end, %if.end
  %18 = load i64, ptr %value, align 8, !dbg !886
  %call10 = call ptr @acpi_ut_create_integer_object(i64 noundef %18) #7, !dbg !887
  store ptr %call10, ptr %new_object, align 8, !dbg !888
  %19 = load ptr, ptr %new_object, align 8, !dbg !889
  %tobool11 = icmp ne ptr %19, null, !dbg !889
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !891

if.then12:                                        ; preds = %sw.epilog
  store i32 4, ptr %retval, align 4, !dbg !892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !892

if.end13:                                         ; preds = %sw.epilog
  %20 = load ptr, ptr %new_object, align 8, !dbg !894
  %21 = load ptr, ptr %return_object.addr, align 8, !dbg !895
  store ptr %20, ptr %21, align 8, !dbg !896
  store i32 0, ptr %retval, align 4, !dbg !897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !897

cleanup:                                          ; preds = %if.end13, %if.then12, %sw.default, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #6, !dbg !898
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !898
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_object) #6, !dbg !898
  %22 = load i32, ptr %retval, align 4, !dbg !898
  ret i32 %22, !dbg !898
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !899 dso_local i32 @acpi_ut_strtoul64(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !903 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_convert_to_string(ptr noundef %original_object, ptr noundef %return_object) #0 align 16 !dbg !906 {
entry:
  %retval = alloca i32, align 4
  %original_object.addr = alloca ptr, align 8
  %return_object.addr = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %length = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %original_object, ptr %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %original_object.addr, metadata !908, metadata !DIExpression()), !dbg !914
  store ptr %return_object, ptr %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object.addr, metadata !909, metadata !DIExpression()), !dbg !915
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_object) #6, !dbg !916
  call void @llvm.dbg.declare(metadata ptr %new_object, metadata !910, metadata !DIExpression()), !dbg !917
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #6, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %length, metadata !911, metadata !DIExpression()), !dbg !919
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !920
  call void @llvm.dbg.declare(metadata ptr %status, metadata !913, metadata !DIExpression()), !dbg !921
  %0 = load ptr, ptr %original_object.addr, align 8, !dbg !922
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !923
  %1 = load i8, ptr %type, align 1, !dbg !923
  %conv = zext i8 %1 to i32, !dbg !922
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb8
  ], !dbg !924

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %original_object.addr, align 8, !dbg !925
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %2, i32 0, i32 6, !dbg !928
  %3 = load i64, ptr %value, align 8, !dbg !928
  %cmp = icmp eq i64 %3, 0, !dbg !929
  br i1 %cmp, label %if.then, label %if.else, !dbg !930

if.then:                                          ; preds = %sw.bb
  %call = call ptr @acpi_ut_create_string_object(i64 noundef 0) #7, !dbg !931
  store ptr %call, ptr %new_object, align 8, !dbg !933
  %4 = load ptr, ptr %new_object, align 8, !dbg !934
  %tobool = icmp ne ptr %4, null, !dbg !934
  br i1 %tobool, label %if.end, label %if.then2, !dbg !936

if.then2:                                         ; preds = %if.then
  store i32 4, ptr %retval, align 4, !dbg !937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !939

if.else:                                          ; preds = %sw.bb
  %5 = load ptr, ptr %original_object.addr, align 8, !dbg !940
  %call3 = call i32 @acpi_ex_convert_to_string(ptr noundef %5, ptr noundef %new_object, i32 noundef 2) #7, !dbg !942
  store i32 %call3, ptr %status, align 4, !dbg !943
  %6 = load i32, ptr %status, align 4, !dbg !944
  %tobool4 = icmp ne i32 %6, 0, !dbg !944
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !946

if.then5:                                         ; preds = %if.else
  %7 = load i32, ptr %status, align 4, !dbg !947
  store i32 %7, ptr %retval, align 4, !dbg !949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !949

if.end6:                                          ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  br label %sw.epilog, !dbg !950

sw.bb8:                                           ; preds = %entry
  store i64 0, ptr %length, align 8, !dbg !951
  br label %while.cond, !dbg !952

while.cond:                                       ; preds = %while.body, %sw.bb8
  %8 = load i64, ptr %length, align 8, !dbg !953
  %9 = load ptr, ptr %original_object.addr, align 8, !dbg !954
  %length9 = getelementptr inbounds %struct.acpi_object_buffer, ptr %9, i32 0, i32 6, !dbg !955
  %10 = load i32, ptr %length9, align 8, !dbg !955
  %conv10 = zext i32 %10 to i64, !dbg !954
  %cmp11 = icmp ult i64 %8, %conv10, !dbg !956
  br i1 %cmp11, label %land.rhs, label %land.end, !dbg !957

land.rhs:                                         ; preds = %while.cond
  %11 = load ptr, ptr %original_object.addr, align 8, !dbg !958
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %11, i32 0, i32 5, !dbg !959
  %12 = load ptr, ptr %pointer, align 8, !dbg !959
  %13 = load i64, ptr %length, align 8, !dbg !960
  %arrayidx = getelementptr i8, ptr %12, i64 %13, !dbg !958
  %14 = load i8, ptr %arrayidx, align 1, !dbg !958
  %conv13 = zext i8 %14 to i32, !dbg !961
  %tobool14 = icmp ne i32 %conv13, 0, !dbg !957
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %tobool14, %land.rhs ], !dbg !962
  br i1 %15, label %while.body, label %while.end, !dbg !952

while.body:                                       ; preds = %land.end
  %16 = load i64, ptr %length, align 8, !dbg !963
  %inc = add i64 %16, 1, !dbg !963
  store i64 %inc, ptr %length, align 8, !dbg !963
  br label %while.cond, !dbg !952, !llvm.loop !965

while.end:                                        ; preds = %land.end
  %17 = load i64, ptr %length, align 8, !dbg !967
  %call15 = call ptr @acpi_ut_create_string_object(i64 noundef %17) #7, !dbg !968
  store ptr %call15, ptr %new_object, align 8, !dbg !969
  %18 = load ptr, ptr %new_object, align 8, !dbg !970
  %tobool16 = icmp ne ptr %18, null, !dbg !970
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !972

if.then17:                                        ; preds = %while.end
  store i32 4, ptr %retval, align 4, !dbg !973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !973

if.end18:                                         ; preds = %while.end
  %19 = load ptr, ptr %new_object, align 8, !dbg !975
  %pointer19 = getelementptr inbounds %struct.acpi_object_string, ptr %19, i32 0, i32 5, !dbg !976
  %20 = load ptr, ptr %pointer19, align 8, !dbg !976
  %21 = load ptr, ptr %original_object.addr, align 8, !dbg !977
  %pointer20 = getelementptr inbounds %struct.acpi_object_buffer, ptr %21, i32 0, i32 5, !dbg !978
  %22 = load ptr, ptr %pointer20, align 8, !dbg !978
  %23 = load i64, ptr %length, align 8, !dbg !979
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %22, i64 %23, i1 false), !dbg !980
  br label %sw.epilog, !dbg !981

sw.default:                                       ; preds = %entry
  store i32 12291, ptr %retval, align 4, !dbg !982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !982

sw.epilog:                                        ; preds = %if.end18, %if.end7
  %24 = load ptr, ptr %new_object, align 8, !dbg !983
  %25 = load ptr, ptr %return_object.addr, align 8, !dbg !984
  store ptr %24, ptr %25, align 8, !dbg !985
  store i32 0, ptr %retval, align 4, !dbg !986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !986

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then17, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !987
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #6, !dbg !987
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_object) #6, !dbg !987
  %26 = load i32, ptr %retval, align 4, !dbg !987
  ret i32 %26, !dbg !987
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !988 dso_local ptr @acpi_ut_create_string_object(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !991 dso_local i32 @acpi_ex_convert_to_string(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_convert_to_buffer(ptr noundef %original_object, ptr noundef %return_object) #0 align 16 !dbg !995 {
entry:
  %retval = alloca i32, align 4
  %original_object.addr = alloca ptr, align 8
  %return_object.addr = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %status = alloca i32, align 4
  %elements = alloca ptr, align 8
  %dword_buffer = alloca ptr, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %original_object, ptr %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %original_object.addr, metadata !997, metadata !DIExpression()), !dbg !1005
  store ptr %return_object, ptr %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object.addr, metadata !998, metadata !DIExpression()), !dbg !1006
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_object) #6, !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %new_object, metadata !999, metadata !DIExpression()), !dbg !1008
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1000, metadata !DIExpression()), !dbg !1010
  call void @llvm.lifetime.start.p0(i64 8, ptr %elements) #6, !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %elements, metadata !1001, metadata !DIExpression()), !dbg !1012
  call void @llvm.lifetime.start.p0(i64 8, ptr %dword_buffer) #6, !dbg !1013
  call void @llvm.dbg.declare(metadata ptr %dword_buffer, metadata !1002, metadata !DIExpression()), !dbg !1014
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #6, !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1003, metadata !DIExpression()), !dbg !1016
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1004, metadata !DIExpression()), !dbg !1018
  %0 = load ptr, ptr %original_object.addr, align 8, !dbg !1019
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !1020
  %1 = load i8, ptr %type, align 1, !dbg !1020
  %conv = zext i8 %1 to i32, !dbg !1019
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb10
  ], !dbg !1021

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %original_object.addr, align 8, !dbg !1022
  %call = call i32 @acpi_ex_convert_to_buffer(ptr noundef %2, ptr noundef %new_object) #7, !dbg !1024
  store i32 %call, ptr %status, align 4, !dbg !1025
  %3 = load i32, ptr %status, align 4, !dbg !1026
  %tobool = icmp ne i32 %3, 0, !dbg !1026
  br i1 %tobool, label %if.then, label %if.end, !dbg !1028

if.then:                                          ; preds = %sw.bb
  %4 = load i32, ptr %status, align 4, !dbg !1029
  store i32 %4, ptr %retval, align 4, !dbg !1031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1031

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !1032

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr %original_object.addr, align 8, !dbg !1033
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %5, i32 0, i32 6, !dbg !1034
  %6 = load i32, ptr %length, align 8, !dbg !1034
  %conv2 = zext i32 %6 to i64, !dbg !1033
  %call3 = call ptr @acpi_ut_create_buffer_object(i64 noundef %conv2) #7, !dbg !1035
  store ptr %call3, ptr %new_object, align 8, !dbg !1036
  %7 = load ptr, ptr %new_object, align 8, !dbg !1037
  %tobool4 = icmp ne ptr %7, null, !dbg !1037
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1039

if.then5:                                         ; preds = %sw.bb1
  store i32 4, ptr %retval, align 4, !dbg !1040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1040

if.end6:                                          ; preds = %sw.bb1
  %8 = load ptr, ptr %new_object, align 8, !dbg !1042
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %8, i32 0, i32 5, !dbg !1043
  %9 = load ptr, ptr %pointer, align 8, !dbg !1043
  %10 = load ptr, ptr %original_object.addr, align 8, !dbg !1044
  %pointer7 = getelementptr inbounds %struct.acpi_object_string, ptr %10, i32 0, i32 5, !dbg !1045
  %11 = load ptr, ptr %pointer7, align 8, !dbg !1045
  %12 = load ptr, ptr %original_object.addr, align 8, !dbg !1046
  %length8 = getelementptr inbounds %struct.acpi_object_string, ptr %12, i32 0, i32 6, !dbg !1047
  %13 = load i32, ptr %length8, align 8, !dbg !1047
  %conv9 = zext i32 %13 to i64, !dbg !1046
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %11, i64 %conv9, i1 false), !dbg !1048
  br label %sw.epilog, !dbg !1049

sw.bb10:                                          ; preds = %entry
  %14 = load ptr, ptr %original_object.addr, align 8, !dbg !1050
  %elements11 = getelementptr inbounds %struct.acpi_object_package, ptr %14, i32 0, i32 6, !dbg !1051
  %15 = load ptr, ptr %elements11, align 8, !dbg !1051
  store ptr %15, ptr %elements, align 8, !dbg !1052
  %16 = load ptr, ptr %original_object.addr, align 8, !dbg !1053
  %count12 = getelementptr inbounds %struct.acpi_object_package, ptr %16, i32 0, i32 9, !dbg !1054
  %17 = load i32, ptr %count12, align 4, !dbg !1054
  store i32 %17, ptr %count, align 4, !dbg !1055
  store i32 0, ptr %i, align 4, !dbg !1056
  br label %for.cond, !dbg !1058

for.cond:                                         ; preds = %for.inc, %sw.bb10
  %18 = load i32, ptr %i, align 4, !dbg !1059
  %19 = load i32, ptr %count, align 4, !dbg !1061
  %cmp = icmp ult i32 %18, %19, !dbg !1062
  br i1 %cmp, label %for.body, label %for.end, !dbg !1063

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %elements, align 8, !dbg !1064
  %21 = load ptr, ptr %20, align 8, !dbg !1067
  %tobool14 = icmp ne ptr %21, null, !dbg !1067
  br i1 %tobool14, label %lor.lhs.false, label %if.then19, !dbg !1068

lor.lhs.false:                                    ; preds = %for.body
  %22 = load ptr, ptr %elements, align 8, !dbg !1069
  %23 = load ptr, ptr %22, align 8, !dbg !1070
  %type15 = getelementptr inbounds %struct.acpi_object_common, ptr %23, i32 0, i32 2, !dbg !1071
  %24 = load i8, ptr %type15, align 1, !dbg !1071
  %conv16 = zext i8 %24 to i32, !dbg !1072
  %cmp17 = icmp ne i32 %conv16, 1, !dbg !1073
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !1074

if.then19:                                        ; preds = %lor.lhs.false, %for.body
  store i32 12291, ptr %retval, align 4, !dbg !1075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1075

if.end20:                                         ; preds = %lor.lhs.false
  %25 = load ptr, ptr %elements, align 8, !dbg !1077
  %incdec.ptr = getelementptr ptr, ptr %25, i32 1, !dbg !1077
  store ptr %incdec.ptr, ptr %elements, align 8, !dbg !1077
  br label %for.inc, !dbg !1078

for.inc:                                          ; preds = %if.end20
  %26 = load i32, ptr %i, align 4, !dbg !1079
  %inc = add i32 %26, 1, !dbg !1079
  store i32 %inc, ptr %i, align 4, !dbg !1079
  br label %for.cond, !dbg !1080, !llvm.loop !1081

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr %count, align 4, !dbg !1083
  %shl = shl i32 %27, 2, !dbg !1083
  %conv21 = zext i32 %shl to i64, !dbg !1083
  %call22 = call ptr @acpi_ut_create_buffer_object(i64 noundef %conv21) #7, !dbg !1084
  store ptr %call22, ptr %new_object, align 8, !dbg !1085
  %28 = load ptr, ptr %new_object, align 8, !dbg !1086
  %tobool23 = icmp ne ptr %28, null, !dbg !1086
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !1088

if.then24:                                        ; preds = %for.end
  store i32 4, ptr %retval, align 4, !dbg !1089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1089

if.end25:                                         ; preds = %for.end
  %29 = load ptr, ptr %original_object.addr, align 8, !dbg !1091
  %elements26 = getelementptr inbounds %struct.acpi_object_package, ptr %29, i32 0, i32 6, !dbg !1092
  %30 = load ptr, ptr %elements26, align 8, !dbg !1092
  store ptr %30, ptr %elements, align 8, !dbg !1093
  %31 = load ptr, ptr %new_object, align 8, !dbg !1094
  %pointer27 = getelementptr inbounds %struct.acpi_object_buffer, ptr %31, i32 0, i32 5, !dbg !1094
  %32 = load ptr, ptr %pointer27, align 8, !dbg !1094
  %33 = ptrtoint ptr %32 to i64, !dbg !1094
  %34 = inttoptr i64 %33 to ptr, !dbg !1094
  store ptr %34, ptr %dword_buffer, align 8, !dbg !1095
  store i32 0, ptr %i, align 4, !dbg !1096
  br label %for.cond28, !dbg !1098

for.cond28:                                       ; preds = %for.inc35, %if.end25
  %35 = load i32, ptr %i, align 4, !dbg !1099
  %36 = load i32, ptr %count, align 4, !dbg !1101
  %cmp29 = icmp ult i32 %35, %36, !dbg !1102
  br i1 %cmp29, label %for.body31, label %for.end37, !dbg !1103

for.body31:                                       ; preds = %for.cond28
  %37 = load ptr, ptr %elements, align 8, !dbg !1104
  %38 = load ptr, ptr %37, align 8, !dbg !1106
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %38, i32 0, i32 6, !dbg !1107
  %39 = load i64, ptr %value, align 8, !dbg !1107
  %conv32 = trunc i64 %39 to i32, !dbg !1108
  %40 = load ptr, ptr %dword_buffer, align 8, !dbg !1109
  store i32 %conv32, ptr %40, align 4, !dbg !1110
  %41 = load ptr, ptr %dword_buffer, align 8, !dbg !1111
  %incdec.ptr33 = getelementptr i32, ptr %41, i32 1, !dbg !1111
  store ptr %incdec.ptr33, ptr %dword_buffer, align 8, !dbg !1111
  %42 = load ptr, ptr %elements, align 8, !dbg !1112
  %incdec.ptr34 = getelementptr ptr, ptr %42, i32 1, !dbg !1112
  store ptr %incdec.ptr34, ptr %elements, align 8, !dbg !1112
  br label %for.inc35, !dbg !1113

for.inc35:                                        ; preds = %for.body31
  %43 = load i32, ptr %i, align 4, !dbg !1114
  %inc36 = add i32 %43, 1, !dbg !1114
  store i32 %inc36, ptr %i, align 4, !dbg !1114
  br label %for.cond28, !dbg !1115, !llvm.loop !1116

for.end37:                                        ; preds = %for.cond28
  br label %sw.epilog, !dbg !1118

sw.default:                                       ; preds = %entry
  store i32 12291, ptr %retval, align 4, !dbg !1119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1119

sw.epilog:                                        ; preds = %for.end37, %if.end6, %if.end
  %44 = load ptr, ptr %new_object, align 8, !dbg !1120
  %45 = load ptr, ptr %return_object.addr, align 8, !dbg !1121
  store ptr %44, ptr %45, align 8, !dbg !1122
  store i32 0, ptr %retval, align 4, !dbg !1123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1123

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then24, %if.then19, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #6, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %dword_buffer) #6, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %elements) #6, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_object) #6, !dbg !1124
  %46 = load i32, ptr %retval, align 4, !dbg !1124
  ret i32 %46, !dbg !1124
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1125 dso_local i32 @acpi_ex_convert_to_buffer(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1126 dso_local ptr @acpi_ut_create_buffer_object(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_convert_to_unicode(ptr noundef %scope, ptr noundef %original_object, ptr noundef %return_object) #0 align 16 !dbg !1127 {
entry:
  %retval = alloca i32, align 4
  %scope.addr = alloca ptr, align 8
  %original_object.addr = alloca ptr, align 8
  %return_object.addr = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %ascii_string = alloca ptr, align 8
  %unicode_buffer = alloca ptr, align 8
  %unicode_length = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %scope, ptr %scope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scope.addr, metadata !1131, metadata !DIExpression()), !dbg !1139
  store ptr %original_object, ptr %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %original_object.addr, metadata !1132, metadata !DIExpression()), !dbg !1140
  store ptr %return_object, ptr %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object.addr, metadata !1133, metadata !DIExpression()), !dbg !1141
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_object) #6, !dbg !1142
  call void @llvm.dbg.declare(metadata ptr %new_object, metadata !1134, metadata !DIExpression()), !dbg !1143
  call void @llvm.lifetime.start.p0(i64 8, ptr %ascii_string) #6, !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %ascii_string, metadata !1135, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 8, ptr %unicode_buffer) #6, !dbg !1146
  call void @llvm.dbg.declare(metadata ptr %unicode_buffer, metadata !1136, metadata !DIExpression()), !dbg !1147
  call void @llvm.lifetime.start.p0(i64 4, ptr %unicode_length) #6, !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %unicode_length, metadata !1137, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1138, metadata !DIExpression()), !dbg !1151
  %0 = load ptr, ptr %original_object.addr, align 8, !dbg !1152
  %tobool = icmp ne ptr %0, null, !dbg !1152
  br i1 %tobool, label %if.end, label %if.then, !dbg !1154

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1155

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %original_object.addr, align 8, !dbg !1157
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 2, !dbg !1159
  %2 = load i8, ptr %type, align 1, !dbg !1159
  %conv = zext i8 %2 to i32, !dbg !1157
  %cmp = icmp eq i32 %conv, 3, !dbg !1160
  br i1 %cmp, label %if.then2, label %if.end7, !dbg !1161

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %original_object.addr, align 8, !dbg !1162
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %3, i32 0, i32 6, !dbg !1165
  %4 = load i32, ptr %length, align 8, !dbg !1165
  %cmp3 = icmp ult i32 %4, 2, !dbg !1166
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1167

if.then5:                                         ; preds = %if.then2
  store i32 12292, ptr %retval, align 4, !dbg !1168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1168

if.end6:                                          ; preds = %if.then2
  %5 = load ptr, ptr %return_object.addr, align 8, !dbg !1170
  store ptr null, ptr %5, align 8, !dbg !1171
  store i32 0, ptr %retval, align 4, !dbg !1172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1172

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %original_object.addr, align 8, !dbg !1173
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %6, i32 0, i32 5, !dbg !1174
  %7 = load ptr, ptr %pointer, align 8, !dbg !1174
  store ptr %7, ptr %ascii_string, align 8, !dbg !1175
  %8 = load ptr, ptr %original_object.addr, align 8, !dbg !1176
  %length8 = getelementptr inbounds %struct.acpi_object_string, ptr %8, i32 0, i32 6, !dbg !1177
  %9 = load i32, ptr %length8, align 8, !dbg !1177
  %mul = mul i32 %9, 2, !dbg !1178
  %add = add i32 %mul, 2, !dbg !1179
  store i32 %add, ptr %unicode_length, align 4, !dbg !1180
  %10 = load i32, ptr %unicode_length, align 4, !dbg !1181
  %conv9 = zext i32 %10 to i64, !dbg !1181
  %call = call ptr @acpi_ut_create_buffer_object(i64 noundef %conv9) #7, !dbg !1182
  store ptr %call, ptr %new_object, align 8, !dbg !1183
  %11 = load ptr, ptr %new_object, align 8, !dbg !1184
  %tobool10 = icmp ne ptr %11, null, !dbg !1184
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !1186

if.then11:                                        ; preds = %if.end7
  store i32 4, ptr %retval, align 4, !dbg !1187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1187

if.end12:                                         ; preds = %if.end7
  %12 = load ptr, ptr %new_object, align 8, !dbg !1189
  %pointer13 = getelementptr inbounds %struct.acpi_object_buffer, ptr %12, i32 0, i32 5, !dbg !1189
  %13 = load ptr, ptr %pointer13, align 8, !dbg !1189
  %14 = ptrtoint ptr %13 to i64, !dbg !1189
  %15 = inttoptr i64 %14 to ptr, !dbg !1189
  store ptr %15, ptr %unicode_buffer, align 8, !dbg !1190
  store i32 0, ptr %i, align 4, !dbg !1191
  br label %for.cond, !dbg !1193

for.cond:                                         ; preds = %for.inc, %if.end12
  %16 = load i32, ptr %i, align 4, !dbg !1194
  %17 = load ptr, ptr %original_object.addr, align 8, !dbg !1196
  %length14 = getelementptr inbounds %struct.acpi_object_string, ptr %17, i32 0, i32 6, !dbg !1197
  %18 = load i32, ptr %length14, align 8, !dbg !1197
  %cmp15 = icmp ult i32 %16, %18, !dbg !1198
  br i1 %cmp15, label %for.body, label %for.end, !dbg !1199

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %ascii_string, align 8, !dbg !1200
  %20 = load i32, ptr %i, align 4, !dbg !1202
  %idxprom = zext i32 %20 to i64, !dbg !1200
  %arrayidx = getelementptr i8, ptr %19, i64 %idxprom, !dbg !1200
  %21 = load i8, ptr %arrayidx, align 1, !dbg !1200
  %conv17 = zext i8 %21 to i16, !dbg !1203
  %22 = load ptr, ptr %unicode_buffer, align 8, !dbg !1204
  %23 = load i32, ptr %i, align 4, !dbg !1205
  %idxprom18 = zext i32 %23 to i64, !dbg !1204
  %arrayidx19 = getelementptr i16, ptr %22, i64 %idxprom18, !dbg !1204
  store i16 %conv17, ptr %arrayidx19, align 2, !dbg !1206
  br label %for.inc, !dbg !1207

for.inc:                                          ; preds = %for.body
  %24 = load i32, ptr %i, align 4, !dbg !1208
  %inc = add i32 %24, 1, !dbg !1208
  store i32 %inc, ptr %i, align 4, !dbg !1208
  br label %for.cond, !dbg !1209, !llvm.loop !1210

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %new_object, align 8, !dbg !1212
  %26 = load ptr, ptr %return_object.addr, align 8, !dbg !1213
  store ptr %25, ptr %26, align 8, !dbg !1214
  store i32 0, ptr %retval, align 4, !dbg !1215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1215

cleanup:                                          ; preds = %for.end, %if.then11, %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !1216
  call void @llvm.lifetime.end.p0(i64 4, ptr %unicode_length) #6, !dbg !1216
  call void @llvm.lifetime.end.p0(i64 8, ptr %unicode_buffer) #6, !dbg !1216
  call void @llvm.lifetime.end.p0(i64 8, ptr %ascii_string) #6, !dbg !1216
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_object) #6, !dbg !1216
  %27 = load i32, ptr %retval, align 4, !dbg !1216
  ret i32 %27, !dbg !1216
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_convert_to_resource(ptr noundef %scope, ptr noundef %original_object, ptr noundef %return_object) #0 align 16 !dbg !1217 {
entry:
  %retval = alloca i32, align 4
  %scope.addr = alloca ptr, align 8
  %original_object.addr = alloca ptr, align 8
  %return_object.addr = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %scope, ptr %scope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scope.addr, metadata !1219, metadata !DIExpression()), !dbg !1224
  store ptr %original_object, ptr %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %original_object.addr, metadata !1220, metadata !DIExpression()), !dbg !1225
  store ptr %return_object, ptr %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object.addr, metadata !1221, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_object) #6, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %new_object, metadata !1222, metadata !DIExpression()), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #6, !dbg !1229
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1223, metadata !DIExpression()), !dbg !1230
  %0 = load ptr, ptr %original_object.addr, align 8, !dbg !1231
  %tobool = icmp ne ptr %0, null, !dbg !1231
  br i1 %tobool, label %if.then, label %if.end8, !dbg !1233

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %original_object.addr, align 8, !dbg !1234
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 2, !dbg !1236
  %2 = load i8, ptr %type, align 1, !dbg !1236
  %conv = zext i8 %2 to i32, !dbg !1234
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb7
  ], !dbg !1237

sw.bb:                                            ; preds = %if.then
  %3 = load ptr, ptr %original_object.addr, align 8, !dbg !1238
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %3, i32 0, i32 6, !dbg !1241
  %4 = load i64, ptr %value, align 8, !dbg !1241
  %tobool1 = icmp ne i64 %4, 0, !dbg !1238
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1242

if.then2:                                         ; preds = %sw.bb
  store i32 12291, ptr %retval, align 4, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !1245

sw.bb3:                                           ; preds = %if.then
  %5 = load ptr, ptr %original_object.addr, align 8, !dbg !1246
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %5, i32 0, i32 6, !dbg !1248
  %6 = load i32, ptr %length, align 8, !dbg !1248
  %tobool4 = icmp ne i32 %6, 0, !dbg !1246
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1249

if.then5:                                         ; preds = %sw.bb3
  %7 = load ptr, ptr %return_object.addr, align 8, !dbg !1250
  store ptr null, ptr %7, align 8, !dbg !1252
  store i32 0, ptr %retval, align 4, !dbg !1253
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1253

if.end6:                                          ; preds = %sw.bb3
  br label %sw.epilog, !dbg !1254

sw.bb7:                                           ; preds = %if.then
  br label %sw.default, !dbg !1255

sw.default:                                       ; preds = %if.then, %sw.bb7
  store i32 12291, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1256

sw.epilog:                                        ; preds = %if.end6, %if.end
  br label %if.end8, !dbg !1257

if.end8:                                          ; preds = %sw.epilog, %entry
  %call = call ptr @acpi_ut_create_buffer_object(i64 noundef 2) #7, !dbg !1258
  store ptr %call, ptr %new_object, align 8, !dbg !1259
  %8 = load ptr, ptr %new_object, align 8, !dbg !1260
  %tobool9 = icmp ne ptr %8, null, !dbg !1260
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !1262

if.then10:                                        ; preds = %if.end8
  store i32 4, ptr %retval, align 4, !dbg !1263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1263

if.end11:                                         ; preds = %if.end8
  %9 = load ptr, ptr %new_object, align 8, !dbg !1265
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %9, i32 0, i32 5, !dbg !1265
  %10 = load ptr, ptr %pointer, align 8, !dbg !1265
  %11 = ptrtoint ptr %10 to i64, !dbg !1265
  %12 = inttoptr i64 %11 to ptr, !dbg !1265
  store ptr %12, ptr %buffer, align 8, !dbg !1266
  %13 = load ptr, ptr %buffer, align 8, !dbg !1267
  %arrayidx = getelementptr i8, ptr %13, i64 0, !dbg !1267
  store i8 121, ptr %arrayidx, align 1, !dbg !1268
  %14 = load ptr, ptr %buffer, align 8, !dbg !1269
  %arrayidx12 = getelementptr i8, ptr %14, i64 1, !dbg !1269
  store i8 0, ptr %arrayidx12, align 1, !dbg !1270
  %15 = load ptr, ptr %new_object, align 8, !dbg !1271
  %16 = load ptr, ptr %return_object.addr, align 8, !dbg !1272
  store ptr %15, ptr %16, align 8, !dbg !1273
  store i32 0, ptr %retval, align 4, !dbg !1274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1274

cleanup:                                          ; preds = %if.end11, %if.then10, %sw.default, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #6, !dbg !1275
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_object) #6, !dbg !1275
  %17 = load i32, ptr %retval, align 4, !dbg !1275
  ret i32 %17, !dbg !1275
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_convert_to_reference(ptr noundef %scope, ptr noundef %original_object, ptr noundef %return_object) #0 align 16 !dbg !1276 {
entry:
  %retval = alloca i32, align 4
  %scope.addr = alloca ptr, align 8
  %original_object.addr = alloca ptr, align 8
  %return_object.addr = alloca ptr, align 8
  %new_object = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %scope_info = alloca %union.acpi_generic_state, align 8
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %scope, ptr %scope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scope.addr, metadata !1278, metadata !DIExpression()), !dbg !1287
  store ptr %original_object, ptr %original_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %original_object.addr, metadata !1279, metadata !DIExpression()), !dbg !1288
  store ptr %return_object, ptr %return_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_object.addr, metadata !1280, metadata !DIExpression()), !dbg !1289
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_object) #6, !dbg !1290
  call void @llvm.dbg.declare(metadata ptr %new_object, metadata !1281, metadata !DIExpression()), !dbg !1291
  store ptr null, ptr %new_object, align 8, !dbg !1291
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1292
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1282, metadata !DIExpression()), !dbg !1293
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1283, metadata !DIExpression()), !dbg !1295
  call void @llvm.lifetime.start.p0(i64 80, ptr %scope_info) #6, !dbg !1296
  call void @llvm.dbg.declare(metadata ptr %scope_info, metadata !1284, metadata !DIExpression()), !dbg !1297
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #6, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1285, metadata !DIExpression()), !dbg !1299
  %0 = load ptr, ptr %original_object.addr, align 8, !dbg !1300
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %0, i32 0, i32 5, !dbg !1301
  %1 = load ptr, ptr %pointer, align 8, !dbg !1301
  %call = call i32 @acpi_ns_internalize_name(ptr noundef %1, ptr noundef %name) #7, !dbg !1302
  store i32 %call, ptr %status, align 4, !dbg !1303
  %2 = load i32, ptr %status, align 4, !dbg !1304
  %tobool = icmp ne i32 %2, 0, !dbg !1304
  br i1 %tobool, label %if.then, label %if.end, !dbg !1306

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !1307
  store i32 %3, ptr %retval, align 4, !dbg !1307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1307

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %scope.addr, align 8, !dbg !1309
  %5 = ptrtoint ptr %4 to i64, !dbg !1309
  %6 = inttoptr i64 %5 to ptr, !dbg !1309
  %node1 = getelementptr inbounds %struct.acpi_scope_state, ptr %scope_info, i32 0, i32 5, !dbg !1310
  store ptr %6, ptr %node1, align 8, !dbg !1311
  %7 = load ptr, ptr %name, align 8, !dbg !1312
  %call2 = call i32 @acpi_ns_lookup(ptr noundef %scope_info, ptr noundef %7, i32 noundef 0, i32 noundef 3, i32 noundef 3, ptr noundef null, ptr noundef %node) #7, !dbg !1313
  store i32 %call2, ptr %status, align 4, !dbg !1314
  %8 = load i32, ptr %status, align 4, !dbg !1315
  %tobool3 = icmp ne i32 %8, 0, !dbg !1315
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !1317

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %original_object.addr, align 8, !dbg !1318
  %pointer5 = getelementptr inbounds %struct.acpi_object_string, ptr %9, i32 0, i32 5, !dbg !1318
  %10 = load ptr, ptr %pointer5, align 8, !dbg !1318
  %11 = load i32, ptr %status, align 4, !dbg !1318
  call void @acpi_ut_prefixed_namespace_error(ptr noundef @_acpi_module_name, i32 noundef 465, ptr noundef %scope_info, ptr noundef %10, i32 noundef %11) #7, !dbg !1318
  br label %error_exit, !dbg !1320

if.end6:                                          ; preds = %if.end
  %call7 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 471, i32 noundef 16, i32 noundef 20) #7, !dbg !1321
  store ptr %call7, ptr %new_object, align 8, !dbg !1322
  %12 = load ptr, ptr %new_object, align 8, !dbg !1323
  %tobool8 = icmp ne ptr %12, null, !dbg !1323
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1325

if.then9:                                         ; preds = %if.end6
  store i32 4, ptr %status, align 4, !dbg !1326
  br label %error_exit, !dbg !1328

if.end10:                                         ; preds = %if.end6
  %13 = load ptr, ptr %node, align 8, !dbg !1329
  %14 = load ptr, ptr %new_object, align 8, !dbg !1330
  %node11 = getelementptr inbounds %struct.acpi_object_reference, ptr %14, i32 0, i32 9, !dbg !1331
  store ptr %13, ptr %node11, align 8, !dbg !1332
  %15 = load ptr, ptr %node, align 8, !dbg !1333
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %15, i32 0, i32 0, !dbg !1334
  %16 = load ptr, ptr %object, align 8, !dbg !1334
  %17 = load ptr, ptr %new_object, align 8, !dbg !1335
  %object12 = getelementptr inbounds %struct.acpi_object_reference, ptr %17, i32 0, i32 8, !dbg !1336
  store ptr %16, ptr %object12, align 8, !dbg !1337
  %18 = load ptr, ptr %new_object, align 8, !dbg !1338
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %18, i32 0, i32 5, !dbg !1339
  store i8 5, ptr %class, align 1, !dbg !1340
  %19 = load ptr, ptr %node, align 8, !dbg !1341
  %object13 = getelementptr inbounds %struct.acpi_namespace_node, ptr %19, i32 0, i32 0, !dbg !1342
  %20 = load ptr, ptr %object13, align 8, !dbg !1342
  call void @acpi_ut_add_reference(ptr noundef %20) #7, !dbg !1343
  br label %error_exit, !dbg !1343

error_exit:                                       ; preds = %if.end10, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !1286), !dbg !1344
  %21 = load ptr, ptr %name, align 8, !dbg !1345
  call void @acpi_os_free(ptr noundef %21) #7, !dbg !1345
  %22 = load ptr, ptr %new_object, align 8, !dbg !1346
  %23 = load ptr, ptr %return_object.addr, align 8, !dbg !1347
  store ptr %22, ptr %23, align 8, !dbg !1348
  %24 = load i32, ptr %status, align 4, !dbg !1349
  store i32 %24, ptr %retval, align 4, !dbg !1350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1350

cleanup:                                          ; preds = %error_exit, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #6, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 80, ptr %scope_info) #6, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_object) #6, !dbg !1351
  %25 = load i32, ptr %retval, align 4, !dbg !1351
  ret i32 %25, !dbg !1351
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1352 dso_local i32 @acpi_ns_internalize_name(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1358 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1364 dso_local void @acpi_ut_prefixed_namespace_error(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1367 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1370 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #5 align 16 !dbg !1373 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1378, metadata !DIExpression()), !dbg !1379
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1380
  call void @kfree(ptr noundef %0) #7, !dbg !1381
  ret void, !dbg !1382
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1383 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!808, !809, !810, !811, !812, !813, !814, !815}
!llvm.ident = !{!816}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 19, type: !804, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsconvert.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsconvert\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsconvert.ll drivers/acpi/acpica/nsconvert.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !803, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsconvert.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bee4f8758b48c4e0db4c0abab1c7d334")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 116, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!10 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!11 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 323, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!17 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!18 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!19 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!20 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!21 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!22 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!23 = !{!24, !30, !26, !33, !34, !37, !38, !41, !45}
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !25, line: 421, baseType: !26)
!25 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !27, line: 21, baseType: !28)
!27 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !29, line: 27, baseType: !7)
!29 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !27, line: 23, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !29, line: 31, baseType: !32)
!32 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !35, line: 42, baseType: !36)
!35 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !27, line: 19, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !29, line: 24, baseType: !40)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !27, line: 17, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !29, line: 21, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !6, line: 133, size: 384, elements: !47)
!47 = !{!48, !790, !791, !792, !793, !799, !800, !801, !802}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !46, file: !6, line: 134, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !13, line: 369, size: 576, elements: !51)
!51 = !{!52, !60, !73, !85, !98, !112, !122, !439, !456, !472, !485, !563, !575, !589, !599, !617, !639, !658, !677, !696, !709, !736, !753, !766, !780, !789}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !50, file: !13, line: 370, baseType: !53, size: 128)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !13, line: 73, size: 128, elements: !54)
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !13, line: 74, baseType: !49, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !13, line: 74, baseType: !42, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !13, line: 74, baseType: !42, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !13, line: 74, baseType: !38, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !13, line: 74, baseType: !42, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !50, file: !13, line: 371, baseType: !61, size: 192)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !13, line: 76, size: 192, elements: !62)
!62 = !{!63, !64, !65, !66, !67, !68, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !61, file: !13, line: 77, baseType: !49, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !61, file: !13, line: 77, baseType: !42, size: 8, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !13, line: 77, baseType: !42, size: 8, offset: 72)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !13, line: 77, baseType: !38, size: 16, offset: 80)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !61, file: !13, line: 77, baseType: !42, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !61, file: !13, line: 77, baseType: !69, size: 24, offset: 104)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !61, file: !13, line: 78, baseType: !30, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !50, file: !13, line: 372, baseType: !74, size: 256)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !13, line: 93, size: 256, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !84}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !74, file: !13, line: 94, baseType: !49, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !74, file: !13, line: 94, baseType: !42, size: 8, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !74, file: !13, line: 94, baseType: !42, size: 8, offset: 72)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !74, file: !13, line: 94, baseType: !38, size: 16, offset: 80)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !13, line: 94, baseType: !42, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !74, file: !13, line: 94, baseType: !82, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !74, file: !13, line: 94, baseType: !26, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !50, file: !13, line: 373, baseType: !86, size: 384)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !13, line: 97, size: 384, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !86, file: !13, line: 98, baseType: !49, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !86, file: !13, line: 98, baseType: !42, size: 8, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !13, line: 98, baseType: !42, size: 8, offset: 72)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !86, file: !13, line: 98, baseType: !38, size: 16, offset: 80)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !13, line: 98, baseType: !42, size: 8, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !86, file: !13, line: 98, baseType: !41, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !86, file: !13, line: 98, baseType: !26, size: 32, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !86, file: !13, line: 99, baseType: !26, size: 32, offset: 224)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !86, file: !13, line: 100, baseType: !41, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !86, file: !13, line: 101, baseType: !45, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !50, file: !13, line: 374, baseType: !99, size: 384)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !13, line: 104, size: 384, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !109, !110, !111}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !99, file: !13, line: 105, baseType: !49, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !99, file: !13, line: 105, baseType: !42, size: 8, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !13, line: 105, baseType: !42, size: 8, offset: 72)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !99, file: !13, line: 105, baseType: !38, size: 16, offset: 80)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !13, line: 105, baseType: !42, size: 8, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !99, file: !13, line: 105, baseType: !45, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !99, file: !13, line: 106, baseType: !108, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !99, file: !13, line: 107, baseType: !41, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !99, file: !13, line: 108, baseType: !26, size: 32, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !99, file: !13, line: 109, baseType: !26, size: 32, offset: 352)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !50, file: !13, line: 375, baseType: !113, size: 192)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !13, line: 118, size: 192, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !113, file: !13, line: 119, baseType: !49, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !113, file: !13, line: 119, baseType: !42, size: 8, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !113, file: !13, line: 119, baseType: !42, size: 8, offset: 72)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !113, file: !13, line: 119, baseType: !38, size: 16, offset: 80)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !13, line: 119, baseType: !42, size: 8, offset: 96)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !113, file: !13, line: 119, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !50, file: !13, line: 376, baseType: !123, size: 448)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !13, line: 144, size: 448, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !436, !437, !438}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !13, line: 145, baseType: !49, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !13, line: 145, baseType: !42, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !13, line: 145, baseType: !42, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !13, line: 145, baseType: !38, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !13, line: 145, baseType: !42, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !123, file: !13, line: 145, baseType: !42, size: 8, offset: 104)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !123, file: !13, line: 146, baseType: !42, size: 8, offset: 112)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !123, file: !13, line: 147, baseType: !42, size: 8, offset: 120)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !123, file: !13, line: 148, baseType: !49, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !13, line: 149, baseType: !49, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !123, file: !13, line: 150, baseType: !41, size: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !123, file: !13, line: 154, baseType: !137, size: 64, offset: 320)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !13, line: 151, size: 64, elements: !138)
!138 = !{!139, !435}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !137, file: !13, line: 152, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !6, line: 248, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!24, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !146, line: 37, size: 9024, elements: !147)
!146 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !381, !382, !383, !384, !385, !389, !391, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !418, !419, !420, !421, !422, !423, !424, !425, !427, !433}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !146, line: 38, baseType: !144, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !145, file: !146, line: 39, baseType: !42, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !145, file: !146, line: 40, baseType: !42, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !145, file: !146, line: 41, baseType: !38, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !145, file: !146, line: 42, baseType: !42, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !145, file: !146, line: 43, baseType: !42, size: 8, offset: 104)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !145, file: !146, line: 44, baseType: !42, size: 8, offset: 112)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !145, file: !146, line: 45, baseType: !156, size: 16, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !25, line: 445, baseType: !38)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !145, file: !146, line: 46, baseType: !42, size: 8, offset: 144)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !145, file: !146, line: 47, baseType: !42, size: 8, offset: 152)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !145, file: !146, line: 48, baseType: !42, size: 8, offset: 160)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !145, file: !146, line: 49, baseType: !42, size: 8, offset: 168)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !145, file: !146, line: 50, baseType: !42, size: 8, offset: 176)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !145, file: !146, line: 51, baseType: !42, size: 8, offset: 184)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !145, file: !146, line: 52, baseType: !42, size: 8, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !145, file: !146, line: 53, baseType: !42, size: 8, offset: 200)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !145, file: !146, line: 54, baseType: !41, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !145, file: !146, line: 55, baseType: !26, size: 32, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !145, file: !146, line: 56, baseType: !26, size: 32, offset: 352)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !145, file: !146, line: 57, baseType: !26, size: 32, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !145, file: !146, line: 58, baseType: !26, size: 32, offset: 416)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !145, file: !146, line: 60, baseType: !171, size: 640, offset: 448)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !6, line: 909, size: 640, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !262, !263, !379, !380}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !171, file: !6, line: 910, baseType: !41, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !171, file: !6, line: 911, baseType: !41, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !171, file: !6, line: 912, baseType: !41, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !171, file: !6, line: 913, baseType: !41, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !171, file: !6, line: 914, baseType: !41, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !171, file: !6, line: 915, baseType: !179, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !6, line: 891, size: 1600, elements: !181)
!181 = !{!182, !202, !218}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !180, file: !6, line: 892, baseType: !183, size: 448)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !6, line: 844, size: 448, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !201}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !6, line: 845, baseType: !179, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !183, file: !6, line: 845, baseType: !42, size: 8, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !6, line: 845, baseType: !42, size: 8, offset: 72)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !183, file: !6, line: 845, baseType: !38, size: 16, offset: 80)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !183, file: !6, line: 845, baseType: !41, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !6, line: 845, baseType: !179, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !6, line: 845, baseType: !45, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !183, file: !6, line: 845, baseType: !193, size: 64, offset: 320)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !6, line: 732, size: 64, elements: !194)
!194 = !{!195, !196, !197, !198, !199, !200}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !193, file: !6, line: 733, baseType: !30, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !193, file: !6, line: 734, baseType: !26, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !193, file: !6, line: 735, baseType: !82, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !193, file: !6, line: 736, baseType: !41, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !6, line: 737, baseType: !82, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !193, file: !6, line: 738, baseType: !179, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !183, file: !6, line: 845, baseType: !42, size: 8, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !180, file: !6, line: 893, baseType: !203, size: 640)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !6, line: 851, size: 640, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !6, line: 852, baseType: !179, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !203, file: !6, line: 852, baseType: !42, size: 8, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !6, line: 852, baseType: !42, size: 8, offset: 72)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !203, file: !6, line: 852, baseType: !38, size: 16, offset: 80)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !203, file: !6, line: 852, baseType: !41, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !6, line: 852, baseType: !179, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !6, line: 852, baseType: !45, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !203, file: !6, line: 852, baseType: !193, size: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !203, file: !6, line: 852, baseType: !42, size: 8, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !203, file: !6, line: 852, baseType: !82, size: 64, offset: 448)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !203, file: !6, line: 853, baseType: !41, size: 64, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !203, file: !6, line: 854, baseType: !26, size: 32, offset: 576)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !6, line: 855, baseType: !26, size: 32, offset: 608)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !180, file: !6, line: 894, baseType: !219, size: 1600)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !6, line: 862, size: 1600, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !6, line: 863, baseType: !179, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !6, line: 863, baseType: !42, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !6, line: 863, baseType: !42, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !219, file: !6, line: 863, baseType: !38, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !219, file: !6, line: 863, baseType: !41, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !6, line: 863, baseType: !179, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !6, line: 863, baseType: !45, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !6, line: 863, baseType: !193, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !219, file: !6, line: 863, baseType: !42, size: 8, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !219, file: !6, line: 863, baseType: !179, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !219, file: !6, line: 864, baseType: !179, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !219, file: !6, line: 865, baseType: !82, size: 64, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !219, file: !6, line: 866, baseType: !42, size: 8, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !219, file: !6, line: 867, baseType: !82, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !219, file: !6, line: 868, baseType: !82, size: 64, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !219, file: !6, line: 869, baseType: !82, size: 64, offset: 832)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !219, file: !6, line: 870, baseType: !238, size: 32, offset: 896)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 32, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 4)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !219, file: !6, line: 871, baseType: !26, size: 32, offset: 928)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !219, file: !6, line: 872, baseType: !26, size: 32, offset: 960)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !219, file: !6, line: 873, baseType: !26, size: 32, offset: 992)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !219, file: !6, line: 874, baseType: !26, size: 32, offset: 1024)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !219, file: !6, line: 875, baseType: !26, size: 32, offset: 1056)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !219, file: !6, line: 876, baseType: !26, size: 32, offset: 1088)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !219, file: !6, line: 877, baseType: !26, size: 32, offset: 1120)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !219, file: !6, line: 878, baseType: !26, size: 32, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !219, file: !6, line: 879, baseType: !26, size: 32, offset: 1184)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !219, file: !6, line: 880, baseType: !26, size: 32, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !219, file: !6, line: 881, baseType: !26, size: 32, offset: 1248)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !219, file: !6, line: 882, baseType: !26, size: 32, offset: 1280)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !219, file: !6, line: 883, baseType: !26, size: 32, offset: 1312)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !219, file: !6, line: 884, baseType: !38, size: 16, offset: 1344)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !219, file: !6, line: 885, baseType: !42, size: 8, offset: 1360)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !219, file: !6, line: 886, baseType: !42, size: 8, offset: 1368)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !219, file: !6, line: 887, baseType: !42, size: 8, offset: 1376)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !219, file: !6, line: 888, baseType: !259, size: 160, offset: 1384)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 160, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 20)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !171, file: !6, line: 916, baseType: !45, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !171, file: !6, line: 917, baseType: !264, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !6, line: 679, size: 640, elements: !266)
!266 = !{!267, !275, !288, !297, !306, !319, !333, !345, !357}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !265, file: !6, line: 680, baseType: !268, size: 128)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !6, line: 575, size: 128, elements: !269)
!269 = !{!270, !271, !272, !273, !274}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !268, file: !6, line: 576, baseType: !121, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !268, file: !6, line: 576, baseType: !42, size: 8, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !268, file: !6, line: 576, baseType: !42, size: 8, offset: 72)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !268, file: !6, line: 576, baseType: !38, size: 16, offset: 80)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !268, file: !6, line: 576, baseType: !38, size: 16, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !265, file: !6, line: 681, baseType: !276, size: 384)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !6, line: 604, size: 384, elements: !277)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286, !287}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !6, line: 605, baseType: !121, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !276, file: !6, line: 605, baseType: !42, size: 8, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !6, line: 605, baseType: !42, size: 8, offset: 72)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !276, file: !6, line: 605, baseType: !38, size: 16, offset: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !276, file: !6, line: 605, baseType: !38, size: 16, offset: 96)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !276, file: !6, line: 606, baseType: !38, size: 16, offset: 112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !276, file: !6, line: 607, baseType: !179, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !276, file: !6, line: 608, baseType: !41, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !276, file: !6, line: 609, baseType: !41, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !276, file: !6, line: 610, baseType: !30, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !265, file: !6, line: 682, baseType: !289, size: 192)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !6, line: 582, size: 192, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !6, line: 583, baseType: !121, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !6, line: 583, baseType: !42, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !6, line: 583, baseType: !42, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !6, line: 583, baseType: !38, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !6, line: 583, baseType: !38, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !289, file: !6, line: 584, baseType: !49, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !265, file: !6, line: 683, baseType: !298, size: 192)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !6, line: 616, size: 192, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !6, line: 617, baseType: !121, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !6, line: 617, baseType: !42, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !6, line: 617, baseType: !42, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !6, line: 617, baseType: !38, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !298, file: !6, line: 617, baseType: !38, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !298, file: !6, line: 618, baseType: !45, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !265, file: !6, line: 684, baseType: !307, size: 448)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !6, line: 621, size: 448, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !6, line: 622, baseType: !121, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !6, line: 622, baseType: !42, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !6, line: 622, baseType: !42, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !6, line: 622, baseType: !38, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !6, line: 622, baseType: !38, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !307, file: !6, line: 623, baseType: !26, size: 32, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !307, file: !6, line: 624, baseType: !179, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !307, file: !6, line: 625, baseType: !41, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !307, file: !6, line: 626, baseType: !41, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !307, file: !6, line: 627, baseType: !26, size: 32, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !265, file: !6, line: 685, baseType: !320, size: 512)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !6, line: 590, size: 512, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !6, line: 591, baseType: !121, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !6, line: 591, baseType: !42, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !6, line: 591, baseType: !42, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !6, line: 591, baseType: !38, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !6, line: 591, baseType: !38, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !320, file: !6, line: 592, baseType: !26, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !320, file: !6, line: 593, baseType: !49, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !320, file: !6, line: 594, baseType: !49, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !320, file: !6, line: 595, baseType: !144, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !320, file: !6, line: 596, baseType: !121, size: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !320, file: !6, line: 597, baseType: !26, size: 32, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !265, file: !6, line: 686, baseType: !334, size: 320)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !6, line: 634, size: 320, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !6, line: 635, baseType: !121, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !6, line: 635, baseType: !42, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !6, line: 635, baseType: !42, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !6, line: 635, baseType: !38, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !334, file: !6, line: 635, baseType: !38, size: 16, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !334, file: !6, line: 636, baseType: !42, size: 8, offset: 112)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !334, file: !6, line: 637, baseType: !144, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !334, file: !6, line: 638, baseType: !49, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !334, file: !6, line: 639, baseType: !30, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !265, file: !6, line: 687, baseType: !346, size: 640)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !6, line: 646, size: 640, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !6, line: 647, baseType: !121, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !6, line: 647, baseType: !42, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !6, line: 647, baseType: !42, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !6, line: 647, baseType: !38, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !6, line: 647, baseType: !38, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !346, file: !6, line: 648, baseType: !354, size: 512, offset: 128)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 512, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 8)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !265, file: !6, line: 688, baseType: !358, size: 320)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !6, line: 669, size: 320, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !6, line: 670, baseType: !121, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !6, line: 670, baseType: !42, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !6, line: 670, baseType: !42, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !6, line: 670, baseType: !38, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !6, line: 670, baseType: !38, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !358, file: !6, line: 671, baseType: !42, size: 8, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !358, file: !6, line: 672, baseType: !45, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !358, file: !6, line: 673, baseType: !49, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !358, file: !6, line: 674, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !6, line: 660, size: 128, elements: !371)
!371 = !{!372, !378}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !370, file: !6, line: 661, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !25, line: 1061, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377, !26, !121}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !25, line: 424, baseType: !121)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !370, file: !6, line: 662, baseType: !121, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !171, file: !6, line: 918, baseType: !179, size: 64, offset: 512)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !171, file: !6, line: 919, baseType: !26, size: 32, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !145, file: !146, line: 61, baseType: !26, size: 32, offset: 1088)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !145, file: !146, line: 62, baseType: !26, size: 32, offset: 1120)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !145, file: !146, line: 63, baseType: !38, size: 16, offset: 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !145, file: !146, line: 64, baseType: !42, size: 8, offset: 1168)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !145, file: !146, line: 66, baseType: !386, size: 2688, offset: 1216)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2688, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 7)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !145, file: !146, line: 67, baseType: !390, size: 3072, offset: 3904)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 3072, elements: !355)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !145, file: !146, line: 68, baseType: !392, size: 576, offset: 6976)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 576, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 9)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !145, file: !146, line: 69, baseType: !108, size: 64, offset: 7552)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !145, file: !146, line: 71, baseType: !41, size: 64, offset: 7616)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !145, file: !146, line: 72, baseType: !108, size: 64, offset: 7680)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !145, file: !146, line: 73, baseType: !264, size: 64, offset: 7744)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !145, file: !146, line: 74, baseType: !45, size: 64, offset: 7808)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !145, file: !146, line: 75, baseType: !49, size: 64, offset: 7872)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !145, file: !146, line: 76, baseType: !45, size: 64, offset: 7936)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !145, file: !146, line: 77, baseType: !179, size: 64, offset: 8000)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !145, file: !146, line: 78, baseType: !49, size: 64, offset: 8064)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !145, file: !146, line: 79, baseType: !45, size: 64, offset: 8128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !145, file: !146, line: 80, baseType: !82, size: 64, offset: 8192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !145, file: !146, line: 81, baseType: !179, size: 64, offset: 8256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !145, file: !146, line: 82, baseType: !408, size: 64, offset: 8320)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !6, line: 718, size: 128, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !410, file: !6, line: 722, baseType: !26, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !410, file: !6, line: 723, baseType: !26, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !6, line: 724, baseType: !38, size: 16, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !410, file: !6, line: 725, baseType: !42, size: 8, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !410, file: !6, line: 726, baseType: !42, size: 8, offset: 88)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !6, line: 727, baseType: !42, size: 8, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !145, file: !146, line: 83, baseType: !179, size: 64, offset: 8384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !145, file: !146, line: 84, baseType: !49, size: 64, offset: 8448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !145, file: !146, line: 85, baseType: !264, size: 64, offset: 8512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !145, file: !146, line: 86, baseType: !49, size: 64, offset: 8576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !145, file: !146, line: 87, baseType: !264, size: 64, offset: 8640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !145, file: !146, line: 88, baseType: !179, size: 64, offset: 8704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !145, file: !146, line: 89, baseType: !179, size: 64, offset: 8768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !145, file: !146, line: 90, baseType: !426, size: 64, offset: 8832)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !145, file: !146, line: 91, baseType: !428, size: 64, offset: 8896)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !6, line: 652, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!24, !144, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !145, file: !146, line: 92, baseType: !434, size: 64, offset: 8960)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !6, line: 656, baseType: !141)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !137, file: !13, line: 153, baseType: !49, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !123, file: !13, line: 156, baseType: !26, size: 32, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !123, file: !13, line: 157, baseType: !156, size: 16, offset: 416)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !123, file: !13, line: 158, baseType: !42, size: 8, offset: 432)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !50, file: !13, line: 377, baseType: !440, size: 576)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !13, line: 122, size: 576, elements: !441)
!441 = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !440, file: !13, line: 123, baseType: !49, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !440, file: !13, line: 123, baseType: !42, size: 8, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !440, file: !13, line: 123, baseType: !42, size: 8, offset: 72)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !440, file: !13, line: 123, baseType: !38, size: 16, offset: 80)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !440, file: !13, line: 123, baseType: !42, size: 8, offset: 96)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !440, file: !13, line: 123, baseType: !42, size: 8, offset: 104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !440, file: !13, line: 124, baseType: !38, size: 16, offset: 112)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !440, file: !13, line: 125, baseType: !121, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !440, file: !13, line: 126, baseType: !30, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !440, file: !13, line: 127, baseType: !426, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !440, file: !13, line: 128, baseType: !49, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !440, file: !13, line: 129, baseType: !49, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !440, file: !13, line: 130, baseType: !45, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !440, file: !13, line: 131, baseType: !42, size: 8, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !50, file: !13, line: 378, baseType: !457, size: 512)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !13, line: 134, size: 512, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !470, !471}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !13, line: 135, baseType: !49, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !13, line: 135, baseType: !42, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !13, line: 135, baseType: !42, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !13, line: 135, baseType: !38, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !13, line: 135, baseType: !42, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !457, file: !13, line: 135, baseType: !42, size: 8, offset: 104)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !13, line: 136, baseType: !45, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !457, file: !13, line: 137, baseType: !49, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !13, line: 138, baseType: !49, size: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !457, file: !13, line: 139, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !25, line: 129, baseType: !30)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !457, file: !13, line: 140, baseType: !26, size: 32, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !457, file: !13, line: 141, baseType: !121, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !50, file: !13, line: 379, baseType: !473, size: 320)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !13, line: 185, size: 320, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !484}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !473, file: !13, line: 186, baseType: !49, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !473, file: !13, line: 186, baseType: !42, size: 8, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !473, file: !13, line: 186, baseType: !42, size: 8, offset: 72)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !473, file: !13, line: 186, baseType: !38, size: 16, offset: 80)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !13, line: 186, baseType: !42, size: 8, offset: 96)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !473, file: !13, line: 186, baseType: !481, size: 128, offset: 128)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 128, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 2)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !473, file: !13, line: 186, baseType: !49, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !50, file: !13, line: 380, baseType: !486, size: 384)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !13, line: 188, size: 384, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !494, !495}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !13, line: 189, baseType: !49, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !13, line: 189, baseType: !42, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !13, line: 189, baseType: !42, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !13, line: 189, baseType: !38, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !13, line: 189, baseType: !42, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !486, file: !13, line: 190, baseType: !481, size: 128, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !486, file: !13, line: 190, baseType: !49, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !486, file: !13, line: 190, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !6, line: 480, size: 576, elements: !498)
!498 = !{!499, !500, !501, !502, !510, !525, !557, !558, !559, !560, !561, !562}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !497, file: !6, line: 481, baseType: !45, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !497, file: !6, line: 482, baseType: !496, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !497, file: !6, line: 483, baseType: !496, size: 64, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !497, file: !6, line: 484, baseType: !503, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !6, line: 497, size: 256, elements: !505)
!505 = !{!506, !507, !508, !509}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !504, file: !6, line: 498, baseType: !503, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !504, file: !6, line: 499, baseType: !503, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !504, file: !6, line: 500, baseType: !496, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !504, file: !6, line: 501, baseType: !26, size: 32, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !497, file: !6, line: 485, baseType: !511, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !6, line: 466, size: 320, elements: !513)
!513 = !{!514, !519, !520, !521, !522, !523, !524}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !512, file: !6, line: 467, baseType: !515, size: 128)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !6, line: 459, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !515, file: !6, line: 460, baseType: !42, size: 8)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !515, file: !6, line: 461, baseType: !30, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !512, file: !6, line: 468, baseType: !515, size: 128, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !512, file: !6, line: 469, baseType: !38, size: 16, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !512, file: !6, line: 470, baseType: !42, size: 8, offset: 272)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !512, file: !6, line: 471, baseType: !42, size: 8, offset: 280)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !512, file: !6, line: 472, baseType: !42, size: 8, offset: 288)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !512, file: !6, line: 473, baseType: !42, size: 8, offset: 296)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !497, file: !6, line: 486, baseType: !526, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !6, line: 448, size: 192, elements: !528)
!528 = !{!529, !552, !553, !554, !555, !556}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !527, file: !6, line: 449, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !6, line: 438, size: 64, elements: !531)
!531 = !{!532, !533, !546}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !530, file: !6, line: 439, baseType: !45, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !530, file: !6, line: 440, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !6, line: 419, size: 256, elements: !536)
!536 = !{!537, !542, !543, !544, !545}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !535, file: !6, line: 420, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !25, line: 1058, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!26, !377, !26, !121}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !535, file: !6, line: 421, baseType: !121, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !535, file: !6, line: 422, baseType: !45, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !535, file: !6, line: 423, baseType: !42, size: 8, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !535, file: !6, line: 424, baseType: !42, size: 8, offset: 200)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !530, file: !6, line: 441, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !6, line: 429, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !548, file: !6, line: 430, baseType: !45, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !6, line: 431, baseType: !547, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !527, file: !6, line: 450, baseType: !511, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !6, line: 451, baseType: !42, size: 8, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !527, file: !6, line: 452, baseType: !42, size: 8, offset: 136)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !527, file: !6, line: 453, baseType: !42, size: 8, offset: 144)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !527, file: !6, line: 454, baseType: !42, size: 8, offset: 152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !497, file: !6, line: 487, baseType: !30, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !497, file: !6, line: 488, baseType: !26, size: 32, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !497, file: !6, line: 489, baseType: !38, size: 16, offset: 480)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !497, file: !6, line: 490, baseType: !38, size: 16, offset: 496)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !497, file: !6, line: 491, baseType: !42, size: 8, offset: 512)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !497, file: !6, line: 492, baseType: !42, size: 8, offset: 520)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !50, file: !13, line: 381, baseType: !564, size: 384)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !13, line: 193, size: 384, elements: !565)
!565 = !{!566, !567, !568, !569, !570, !571, !572, !573, !574}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !564, file: !13, line: 194, baseType: !49, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !564, file: !13, line: 194, baseType: !42, size: 8, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !564, file: !13, line: 194, baseType: !42, size: 8, offset: 72)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !564, file: !13, line: 194, baseType: !38, size: 16, offset: 80)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !13, line: 194, baseType: !42, size: 8, offset: 96)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !564, file: !13, line: 194, baseType: !481, size: 128, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !564, file: !13, line: 194, baseType: !49, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !564, file: !13, line: 194, baseType: !26, size: 32, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !564, file: !13, line: 195, baseType: !26, size: 32, offset: 352)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !50, file: !13, line: 382, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !13, line: 198, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !13, line: 199, baseType: !49, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !13, line: 199, baseType: !42, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !13, line: 199, baseType: !42, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !13, line: 199, baseType: !38, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !13, line: 199, baseType: !42, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !576, file: !13, line: 201, baseType: !42, size: 8, offset: 104)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !576, file: !13, line: 202, baseType: !42, size: 8, offset: 112)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !13, line: 203, baseType: !481, size: 128, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !13, line: 203, baseType: !49, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !576, file: !13, line: 203, baseType: !588, size: 64, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !25, line: 128, baseType: !30)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !50, file: !13, line: 383, baseType: !590, size: 320)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !13, line: 206, size: 320, elements: !591)
!591 = !{!592, !593, !594, !595, !596, !597, !598}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !590, file: !13, line: 207, baseType: !49, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !590, file: !13, line: 207, baseType: !42, size: 8, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !590, file: !13, line: 207, baseType: !42, size: 8, offset: 72)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !590, file: !13, line: 207, baseType: !38, size: 16, offset: 80)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !590, file: !13, line: 207, baseType: !42, size: 8, offset: 96)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !590, file: !13, line: 207, baseType: !481, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !590, file: !13, line: 207, baseType: !49, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !50, file: !13, line: 384, baseType: !600, size: 384)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !13, line: 234, size: 384, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !600, file: !13, line: 235, baseType: !49, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !600, file: !13, line: 235, baseType: !42, size: 8, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !600, file: !13, line: 235, baseType: !42, size: 8, offset: 72)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !600, file: !13, line: 235, baseType: !38, size: 16, offset: 80)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !13, line: 235, baseType: !42, size: 8, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !600, file: !13, line: 235, baseType: !42, size: 8, offset: 104)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !600, file: !13, line: 235, baseType: !42, size: 8, offset: 112)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !600, file: !13, line: 235, baseType: !42, size: 8, offset: 120)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !600, file: !13, line: 235, baseType: !45, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !600, file: !13, line: 235, baseType: !26, size: 32, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !600, file: !13, line: 235, baseType: !26, size: 32, offset: 224)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !600, file: !13, line: 235, baseType: !26, size: 32, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !600, file: !13, line: 235, baseType: !42, size: 8, offset: 288)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !600, file: !13, line: 235, baseType: !42, size: 8, offset: 296)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !600, file: !13, line: 235, baseType: !49, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !50, file: !13, line: 385, baseType: !618, size: 576)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !13, line: 238, size: 576, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !13, line: 239, baseType: !49, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !13, line: 239, baseType: !42, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !13, line: 239, baseType: !42, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !13, line: 239, baseType: !38, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !13, line: 239, baseType: !42, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !618, file: !13, line: 239, baseType: !42, size: 8, offset: 104)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !618, file: !13, line: 239, baseType: !42, size: 8, offset: 112)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !618, file: !13, line: 239, baseType: !42, size: 8, offset: 120)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !13, line: 239, baseType: !45, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !618, file: !13, line: 239, baseType: !26, size: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !618, file: !13, line: 239, baseType: !26, size: 32, offset: 224)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !618, file: !13, line: 239, baseType: !26, size: 32, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !618, file: !13, line: 239, baseType: !42, size: 8, offset: 288)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !618, file: !13, line: 239, baseType: !42, size: 8, offset: 296)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !618, file: !13, line: 239, baseType: !38, size: 16, offset: 304)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !618, file: !13, line: 240, baseType: !49, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !618, file: !13, line: 241, baseType: !41, size: 64, offset: 384)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !618, file: !13, line: 242, baseType: !38, size: 16, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !618, file: !13, line: 243, baseType: !41, size: 64, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !50, file: !13, line: 386, baseType: !640, size: 384)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !13, line: 263, size: 384, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !640, file: !13, line: 264, baseType: !49, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !640, file: !13, line: 264, baseType: !42, size: 8, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !640, file: !13, line: 264, baseType: !42, size: 8, offset: 72)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !640, file: !13, line: 264, baseType: !38, size: 16, offset: 80)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !13, line: 264, baseType: !42, size: 8, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !640, file: !13, line: 264, baseType: !42, size: 8, offset: 104)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !640, file: !13, line: 264, baseType: !42, size: 8, offset: 112)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !640, file: !13, line: 264, baseType: !42, size: 8, offset: 120)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !640, file: !13, line: 264, baseType: !45, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !640, file: !13, line: 264, baseType: !26, size: 32, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !640, file: !13, line: 264, baseType: !26, size: 32, offset: 224)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !640, file: !13, line: 264, baseType: !26, size: 32, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !640, file: !13, line: 264, baseType: !42, size: 8, offset: 288)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !640, file: !13, line: 264, baseType: !42, size: 8, offset: 296)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !640, file: !13, line: 264, baseType: !42, size: 8, offset: 304)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !640, file: !13, line: 265, baseType: !49, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !50, file: !13, line: 387, baseType: !659, size: 448)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !13, line: 246, size: 448, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !659, file: !13, line: 247, baseType: !49, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !659, file: !13, line: 247, baseType: !42, size: 8, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !659, file: !13, line: 247, baseType: !42, size: 8, offset: 72)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !659, file: !13, line: 247, baseType: !38, size: 16, offset: 80)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !13, line: 247, baseType: !42, size: 8, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !659, file: !13, line: 247, baseType: !42, size: 8, offset: 104)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !659, file: !13, line: 247, baseType: !42, size: 8, offset: 112)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !659, file: !13, line: 247, baseType: !42, size: 8, offset: 120)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !659, file: !13, line: 247, baseType: !45, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !659, file: !13, line: 247, baseType: !26, size: 32, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !659, file: !13, line: 247, baseType: !26, size: 32, offset: 224)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !659, file: !13, line: 247, baseType: !26, size: 32, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !659, file: !13, line: 247, baseType: !42, size: 8, offset: 288)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !659, file: !13, line: 247, baseType: !42, size: 8, offset: 296)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !659, file: !13, line: 247, baseType: !49, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !659, file: !13, line: 248, baseType: !49, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !50, file: !13, line: 388, baseType: !678, size: 448)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !13, line: 251, size: 448, elements: !679)
!679 = !{!680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !678, file: !13, line: 252, baseType: !49, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !678, file: !13, line: 252, baseType: !42, size: 8, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !13, line: 252, baseType: !42, size: 8, offset: 72)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !678, file: !13, line: 252, baseType: !38, size: 16, offset: 80)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !13, line: 252, baseType: !42, size: 8, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !678, file: !13, line: 252, baseType: !42, size: 8, offset: 104)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !678, file: !13, line: 252, baseType: !42, size: 8, offset: 112)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !678, file: !13, line: 252, baseType: !42, size: 8, offset: 120)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !678, file: !13, line: 252, baseType: !45, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !678, file: !13, line: 252, baseType: !26, size: 32, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !678, file: !13, line: 252, baseType: !26, size: 32, offset: 224)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !678, file: !13, line: 252, baseType: !26, size: 32, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !678, file: !13, line: 252, baseType: !42, size: 8, offset: 288)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !678, file: !13, line: 252, baseType: !42, size: 8, offset: 296)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !678, file: !13, line: 257, baseType: !49, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !678, file: !13, line: 258, baseType: !49, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !50, file: !13, line: 389, baseType: !697, size: 512)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !13, line: 274, size: 512, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !697, file: !13, line: 275, baseType: !49, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !13, line: 275, baseType: !42, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !13, line: 275, baseType: !42, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !697, file: !13, line: 275, baseType: !38, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !13, line: 275, baseType: !42, size: 8, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !697, file: !13, line: 275, baseType: !45, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !697, file: !13, line: 276, baseType: !26, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !697, file: !13, line: 277, baseType: !373, size: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !697, file: !13, line: 278, baseType: !121, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !697, file: !13, line: 279, baseType: !481, size: 128, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !50, file: !13, line: 390, baseType: !710, size: 576)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !13, line: 282, size: 576, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !725, !726, !727, !728, !734, !735}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !710, file: !13, line: 283, baseType: !49, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !710, file: !13, line: 283, baseType: !42, size: 8, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !13, line: 283, baseType: !42, size: 8, offset: 72)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !710, file: !13, line: 283, baseType: !38, size: 16, offset: 80)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !13, line: 283, baseType: !42, size: 8, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !710, file: !13, line: 283, baseType: !42, size: 8, offset: 104)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !710, file: !13, line: 284, baseType: !42, size: 8, offset: 112)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !710, file: !13, line: 285, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !25, line: 1093, baseType: !721)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!24, !26, !469, !26, !724, !121, !121}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !13, line: 286, baseType: !45, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !710, file: !13, line: 287, baseType: !121, size: 64, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !710, file: !13, line: 288, baseType: !121, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !710, file: !13, line: 289, baseType: !729, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !25, line: 1126, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!24, !377, !26, !121, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !710, file: !13, line: 290, baseType: !49, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !13, line: 291, baseType: !49, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !50, file: !13, line: 391, baseType: !737, size: 512)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !13, line: 309, size: 512, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !737, file: !13, line: 310, baseType: !49, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !737, file: !13, line: 310, baseType: !42, size: 8, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !13, line: 310, baseType: !42, size: 8, offset: 72)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !737, file: !13, line: 310, baseType: !38, size: 16, offset: 80)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !737, file: !13, line: 310, baseType: !42, size: 8, offset: 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !737, file: !13, line: 310, baseType: !42, size: 8, offset: 104)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !737, file: !13, line: 311, baseType: !42, size: 8, offset: 112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !737, file: !13, line: 312, baseType: !42, size: 8, offset: 120)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !737, file: !13, line: 313, baseType: !121, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !737, file: !13, line: 314, baseType: !45, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !737, file: !13, line: 315, baseType: !108, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !737, file: !13, line: 316, baseType: !41, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !737, file: !13, line: 317, baseType: !41, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !737, file: !13, line: 318, baseType: !26, size: 32, offset: 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !50, file: !13, line: 392, baseType: !754, size: 448)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !13, line: 342, size: 448, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !754, file: !13, line: 343, baseType: !49, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !13, line: 343, baseType: !42, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !13, line: 343, baseType: !42, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !754, file: !13, line: 343, baseType: !38, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !13, line: 343, baseType: !42, size: 8, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !754, file: !13, line: 343, baseType: !45, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !754, file: !13, line: 344, baseType: !45, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !754, file: !13, line: 345, baseType: !121, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !754, file: !13, line: 346, baseType: !41, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !754, file: !13, line: 347, baseType: !26, size: 32, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !50, file: !13, line: 393, baseType: !767, size: 256)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !13, line: 352, size: 256, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !779}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !13, line: 353, baseType: !49, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !13, line: 353, baseType: !42, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !13, line: 353, baseType: !42, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !13, line: 353, baseType: !38, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !13, line: 353, baseType: !42, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !767, file: !13, line: 353, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !25, line: 1064, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !377, !121}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !767, file: !13, line: 354, baseType: !121, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !50, file: !13, line: 394, baseType: !781, size: 192)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !13, line: 359, size: 192, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !13, line: 360, baseType: !49, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !13, line: 360, baseType: !42, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !13, line: 360, baseType: !42, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !13, line: 360, baseType: !38, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !13, line: 360, baseType: !42, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !13, line: 360, baseType: !49, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !50, file: !13, line: 401, baseType: !46, size: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !46, file: !6, line: 135, baseType: !42, size: 8, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !6, line: 136, baseType: !42, size: 8, offset: 72)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !46, file: !6, line: 137, baseType: !38, size: 16, offset: 80)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !46, file: !6, line: 138, baseType: !794, size: 32, offset: 96)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !795, line: 328, size: 32, elements: !796)
!795 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !794, file: !795, line: 329, baseType: !26, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !794, file: !795, line: 330, baseType: !238, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !46, file: !6, line: 139, baseType: !45, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !46, file: !6, line: 140, baseType: !45, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !46, file: !6, line: 141, baseType: !45, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !46, file: !6, line: 142, baseType: !156, size: 16, offset: 320)
!803 = !{!0}
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !805, size: 80, elements: !806)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!806 = !{!807}
!807 = !DISubrange(count: 10)
!808 = !{i32 7, !"Dwarf Version", i32 5}
!809 = !{i32 2, !"Debug Info Version", i32 3}
!810 = !{i32 1, !"wchar_size", i32 2}
!811 = !{i32 8, !"cf-protection-branch", i32 1}
!812 = !{i32 4, !"function_return_thunk_extern", i32 1}
!813 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!814 = !{i32 1, !"Code Model", i32 2}
!815 = !{i32 1, !"override-stack-alignment", i32 8}
!816 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!817 = distinct !DISubprogram(name: "acpi_ns_convert_to_integer", scope: !3, file: !3, line: 34, type: !818, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!24, !49, !108}
!820 = !{!821, !822, !823, !824, !825, !826}
!821 = !DILocalVariable(name: "original_object", arg: 1, scope: !817, file: !3, line: 34, type: !49)
!822 = !DILocalVariable(name: "return_object", arg: 2, scope: !817, file: !3, line: 35, type: !108)
!823 = !DILocalVariable(name: "new_object", scope: !817, file: !3, line: 37, type: !49)
!824 = !DILocalVariable(name: "status", scope: !817, file: !3, line: 38, type: !24)
!825 = !DILocalVariable(name: "value", scope: !817, file: !3, line: 39, type: !30)
!826 = !DILocalVariable(name: "i", scope: !817, file: !3, line: 40, type: !26)
!827 = !DILocation(line: 34, column: 55, scope: !817)
!828 = !DILocation(line: 35, column: 35, scope: !817)
!829 = !DILocation(line: 37, column: 2, scope: !817)
!830 = !DILocation(line: 37, column: 29, scope: !817)
!831 = !DILocation(line: 38, column: 2, scope: !817)
!832 = !DILocation(line: 38, column: 14, scope: !817)
!833 = !DILocation(line: 39, column: 2, scope: !817)
!834 = !DILocation(line: 39, column: 6, scope: !817)
!835 = !DILocation(line: 40, column: 2, scope: !817)
!836 = !DILocation(line: 40, column: 6, scope: !817)
!837 = !DILocation(line: 42, column: 10, scope: !817)
!838 = !DILocation(line: 42, column: 34, scope: !817)
!839 = !DILocation(line: 42, column: 2, scope: !817)
!840 = !DILocation(line: 48, column: 25, scope: !841)
!841 = distinct !DILexicalBlock(scope: !817, file: !3, line: 42, column: 40)
!842 = !DILocation(line: 48, column: 49, scope: !841)
!843 = !DILocation(line: 48, column: 7, scope: !841)
!844 = !DILocation(line: 47, column: 10, scope: !841)
!845 = !DILocation(line: 49, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !3, line: 49, column: 7)
!847 = !DILocation(line: 49, column: 7, scope: !841)
!848 = !DILocation(line: 50, column: 12, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !3, line: 49, column: 29)
!850 = !DILocation(line: 50, column: 4, scope: !849)
!851 = !DILocation(line: 52, column: 3, scope: !841)
!852 = !DILocation(line: 58, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !841, file: !3, line: 58, column: 7)
!854 = !DILocation(line: 58, column: 31, scope: !853)
!855 = !DILocation(line: 58, column: 38, scope: !853)
!856 = !DILocation(line: 58, column: 7, scope: !841)
!857 = !DILocation(line: 59, column: 4, scope: !858)
!858 = distinct !DILexicalBlock(scope: !853, file: !3, line: 58, column: 43)
!859 = !DILocation(line: 64, column: 10, scope: !860)
!860 = distinct !DILexicalBlock(scope: !841, file: !3, line: 64, column: 3)
!861 = !DILocation(line: 64, column: 8, scope: !860)
!862 = !DILocation(line: 64, column: 15, scope: !863)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 64, column: 3)
!864 = !DILocation(line: 64, column: 19, scope: !863)
!865 = !DILocation(line: 64, column: 43, scope: !863)
!866 = !DILocation(line: 64, column: 17, scope: !863)
!867 = !DILocation(line: 64, column: 3, scope: !860)
!868 = !DILocation(line: 66, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !863, file: !3, line: 64, column: 56)
!870 = !DILocation(line: 66, column: 31, scope: !869)
!871 = !DILocation(line: 66, column: 39, scope: !869)
!872 = !DILocation(line: 65, column: 14, scope: !869)
!873 = !DILocation(line: 66, column: 46, scope: !869)
!874 = !DILocation(line: 66, column: 48, scope: !869)
!875 = !DILocation(line: 66, column: 42, scope: !869)
!876 = !DILocation(line: 65, column: 10, scope: !869)
!877 = !DILocation(line: 68, column: 3, scope: !869)
!878 = !DILocation(line: 64, column: 52, scope: !863)
!879 = !DILocation(line: 64, column: 3, scope: !863)
!880 = distinct !{!880, !867, !881, !882, !883}
!881 = !DILocation(line: 68, column: 3, scope: !860)
!882 = !{!"llvm.loop.mustprogress"}
!883 = !{!"llvm.loop.unroll.disable"}
!884 = !DILocation(line: 69, column: 3, scope: !841)
!885 = !DILocation(line: 73, column: 3, scope: !841)
!886 = !DILocation(line: 76, column: 45, scope: !817)
!887 = !DILocation(line: 76, column: 15, scope: !817)
!888 = !DILocation(line: 76, column: 13, scope: !817)
!889 = !DILocation(line: 77, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !817, file: !3, line: 77, column: 6)
!891 = !DILocation(line: 77, column: 6, scope: !817)
!892 = !DILocation(line: 78, column: 3, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 77, column: 19)
!894 = !DILocation(line: 81, column: 19, scope: !817)
!895 = !DILocation(line: 81, column: 3, scope: !817)
!896 = !DILocation(line: 81, column: 17, scope: !817)
!897 = !DILocation(line: 82, column: 2, scope: !817)
!898 = !DILocation(line: 83, column: 1, scope: !817)
!899 = !DISubprogram(name: "acpi_ut_strtoul64", scope: !900, file: !900, line: 207, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!900 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!901 = !DISubroutineType(types: !902)
!902 = !{!24, !82, !724}
!903 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !900, file: !900, line: 455, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!904 = !DISubroutineType(types: !905)
!905 = !{!49, !30}
!906 = distinct !DISubprogram(name: "acpi_ns_convert_to_string", scope: !3, file: !3, line: 99, type: !818, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !907)
!907 = !{!908, !909, !910, !911, !913}
!908 = !DILocalVariable(name: "original_object", arg: 1, scope: !906, file: !3, line: 99, type: !49)
!909 = !DILocalVariable(name: "return_object", arg: 2, scope: !906, file: !3, line: 100, type: !108)
!910 = !DILocalVariable(name: "new_object", scope: !906, file: !3, line: 102, type: !49)
!911 = !DILocalVariable(name: "length", scope: !906, file: !3, line: 103, type: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !25, line: 127, baseType: !30)
!913 = !DILocalVariable(name: "status", scope: !906, file: !3, line: 104, type: !24)
!914 = !DILocation(line: 99, column: 54, scope: !906)
!915 = !DILocation(line: 100, column: 34, scope: !906)
!916 = !DILocation(line: 102, column: 2, scope: !906)
!917 = !DILocation(line: 102, column: 29, scope: !906)
!918 = !DILocation(line: 103, column: 2, scope: !906)
!919 = !DILocation(line: 103, column: 12, scope: !906)
!920 = !DILocation(line: 104, column: 2, scope: !906)
!921 = !DILocation(line: 104, column: 14, scope: !906)
!922 = !DILocation(line: 106, column: 10, scope: !906)
!923 = !DILocation(line: 106, column: 34, scope: !906)
!924 = !DILocation(line: 106, column: 2, scope: !906)
!925 = !DILocation(line: 113, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 113, column: 7)
!927 = distinct !DILexicalBlock(scope: !906, file: !3, line: 106, column: 40)
!928 = !DILocation(line: 113, column: 32, scope: !926)
!929 = !DILocation(line: 113, column: 38, scope: !926)
!930 = !DILocation(line: 113, column: 7, scope: !927)
!931 = !DILocation(line: 117, column: 17, scope: !932)
!932 = distinct !DILexicalBlock(scope: !926, file: !3, line: 113, column: 44)
!933 = !DILocation(line: 117, column: 15, scope: !932)
!934 = !DILocation(line: 118, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !3, line: 118, column: 8)
!936 = !DILocation(line: 118, column: 8, scope: !932)
!937 = !DILocation(line: 119, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 118, column: 21)
!939 = !DILocation(line: 121, column: 3, scope: !932)
!940 = !DILocation(line: 122, column: 39, scope: !941)
!941 = distinct !DILexicalBlock(scope: !926, file: !3, line: 121, column: 10)
!942 = !DILocation(line: 122, column: 13, scope: !941)
!943 = !DILocation(line: 122, column: 11, scope: !941)
!944 = !DILocation(line: 125, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !941, file: !3, line: 125, column: 8)
!946 = !DILocation(line: 125, column: 8, scope: !941)
!947 = !DILocation(line: 126, column: 13, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 125, column: 30)
!949 = !DILocation(line: 126, column: 5, scope: !948)
!950 = !DILocation(line: 129, column: 3, scope: !927)
!951 = !DILocation(line: 138, column: 10, scope: !927)
!952 = !DILocation(line: 139, column: 3, scope: !927)
!953 = !DILocation(line: 139, column: 11, scope: !927)
!954 = !DILocation(line: 139, column: 20, scope: !927)
!955 = !DILocation(line: 139, column: 44, scope: !927)
!956 = !DILocation(line: 139, column: 18, scope: !927)
!957 = !DILocation(line: 139, column: 52, scope: !927)
!958 = !DILocation(line: 140, column: 11, scope: !927)
!959 = !DILocation(line: 140, column: 35, scope: !927)
!960 = !DILocation(line: 140, column: 43, scope: !927)
!961 = !DILocation(line: 140, column: 10, scope: !927)
!962 = !DILocation(line: 0, scope: !927)
!963 = !DILocation(line: 141, column: 10, scope: !964)
!964 = distinct !DILexicalBlock(scope: !927, file: !3, line: 140, column: 53)
!965 = distinct !{!965, !952, !966, !882, !883}
!966 = !DILocation(line: 142, column: 3, scope: !927)
!967 = !DILocation(line: 146, column: 45, scope: !927)
!968 = !DILocation(line: 146, column: 16, scope: !927)
!969 = !DILocation(line: 146, column: 14, scope: !927)
!970 = !DILocation(line: 147, column: 8, scope: !971)
!971 = distinct !DILexicalBlock(scope: !927, file: !3, line: 147, column: 7)
!972 = !DILocation(line: 147, column: 7, scope: !927)
!973 = !DILocation(line: 148, column: 4, scope: !974)
!974 = distinct !DILexicalBlock(scope: !971, file: !3, line: 147, column: 20)
!975 = !DILocation(line: 155, column: 10, scope: !927)
!976 = !DILocation(line: 155, column: 29, scope: !927)
!977 = !DILocation(line: 156, column: 10, scope: !927)
!978 = !DILocation(line: 156, column: 34, scope: !927)
!979 = !DILocation(line: 156, column: 43, scope: !927)
!980 = !DILocation(line: 155, column: 3, scope: !927)
!981 = !DILocation(line: 157, column: 3, scope: !927)
!982 = !DILocation(line: 161, column: 3, scope: !927)
!983 = !DILocation(line: 164, column: 19, scope: !906)
!984 = !DILocation(line: 164, column: 3, scope: !906)
!985 = !DILocation(line: 164, column: 17, scope: !906)
!986 = !DILocation(line: 165, column: 2, scope: !906)
!987 = !DILocation(line: 166, column: 1, scope: !906)
!988 = !DISubprogram(name: "acpi_ut_create_string_object", scope: !900, file: !900, line: 459, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubroutineType(types: !990)
!990 = !{!49, !912}
!991 = !DISubprogram(name: "acpi_ex_convert_to_string", scope: !992, file: !992, line: 78, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!993 = !DISubroutineType(types: !994)
!994 = !{!24, !49, !108, !26}
!995 = distinct !DISubprogram(name: "acpi_ns_convert_to_buffer", scope: !3, file: !3, line: 182, type: !818, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !996)
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1004}
!997 = !DILocalVariable(name: "original_object", arg: 1, scope: !995, file: !3, line: 182, type: !49)
!998 = !DILocalVariable(name: "return_object", arg: 2, scope: !995, file: !3, line: 183, type: !108)
!999 = !DILocalVariable(name: "new_object", scope: !995, file: !3, line: 185, type: !49)
!1000 = !DILocalVariable(name: "status", scope: !995, file: !3, line: 186, type: !24)
!1001 = !DILocalVariable(name: "elements", scope: !995, file: !3, line: 187, type: !108)
!1002 = !DILocalVariable(name: "dword_buffer", scope: !995, file: !3, line: 188, type: !33)
!1003 = !DILocalVariable(name: "count", scope: !995, file: !3, line: 189, type: !26)
!1004 = !DILocalVariable(name: "i", scope: !995, file: !3, line: 190, type: !26)
!1005 = !DILocation(line: 182, column: 54, scope: !995)
!1006 = !DILocation(line: 183, column: 34, scope: !995)
!1007 = !DILocation(line: 185, column: 2, scope: !995)
!1008 = !DILocation(line: 185, column: 29, scope: !995)
!1009 = !DILocation(line: 186, column: 2, scope: !995)
!1010 = !DILocation(line: 186, column: 14, scope: !995)
!1011 = !DILocation(line: 187, column: 2, scope: !995)
!1012 = !DILocation(line: 187, column: 30, scope: !995)
!1013 = !DILocation(line: 188, column: 2, scope: !995)
!1014 = !DILocation(line: 188, column: 7, scope: !995)
!1015 = !DILocation(line: 189, column: 2, scope: !995)
!1016 = !DILocation(line: 189, column: 6, scope: !995)
!1017 = !DILocation(line: 190, column: 2, scope: !995)
!1018 = !DILocation(line: 190, column: 6, scope: !995)
!1019 = !DILocation(line: 192, column: 10, scope: !995)
!1020 = !DILocation(line: 192, column: 34, scope: !995)
!1021 = !DILocation(line: 192, column: 2, scope: !995)
!1022 = !DILocation(line: 202, column: 33, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !995, file: !3, line: 192, column: 40)
!1024 = !DILocation(line: 202, column: 7, scope: !1023)
!1025 = !DILocation(line: 201, column: 10, scope: !1023)
!1026 = !DILocation(line: 203, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 203, column: 7)
!1028 = !DILocation(line: 203, column: 7, scope: !1023)
!1029 = !DILocation(line: 204, column: 12, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 203, column: 29)
!1031 = !DILocation(line: 204, column: 4, scope: !1030)
!1032 = !DILocation(line: 206, column: 3, scope: !1023)
!1033 = !DILocation(line: 213, column: 8, scope: !1023)
!1034 = !DILocation(line: 213, column: 32, scope: !1023)
!1035 = !DILocation(line: 212, column: 16, scope: !1023)
!1036 = !DILocation(line: 212, column: 14, scope: !1023)
!1037 = !DILocation(line: 214, column: 8, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 214, column: 7)
!1039 = !DILocation(line: 214, column: 7, scope: !1023)
!1040 = !DILocation(line: 215, column: 4, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 214, column: 20)
!1042 = !DILocation(line: 218, column: 10, scope: !1023)
!1043 = !DILocation(line: 218, column: 29, scope: !1023)
!1044 = !DILocation(line: 219, column: 10, scope: !1023)
!1045 = !DILocation(line: 219, column: 34, scope: !1023)
!1046 = !DILocation(line: 220, column: 10, scope: !1023)
!1047 = !DILocation(line: 220, column: 34, scope: !1023)
!1048 = !DILocation(line: 218, column: 3, scope: !1023)
!1049 = !DILocation(line: 221, column: 3, scope: !1023)
!1050 = !DILocation(line: 232, column: 14, scope: !1023)
!1051 = !DILocation(line: 232, column: 39, scope: !1023)
!1052 = !DILocation(line: 232, column: 12, scope: !1023)
!1053 = !DILocation(line: 233, column: 11, scope: !1023)
!1054 = !DILocation(line: 233, column: 36, scope: !1023)
!1055 = !DILocation(line: 233, column: 9, scope: !1023)
!1056 = !DILocation(line: 235, column: 10, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 235, column: 3)
!1058 = !DILocation(line: 235, column: 8, scope: !1057)
!1059 = !DILocation(line: 235, column: 15, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 235, column: 3)
!1061 = !DILocation(line: 235, column: 19, scope: !1060)
!1062 = !DILocation(line: 235, column: 17, scope: !1060)
!1063 = !DILocation(line: 235, column: 3, scope: !1057)
!1064 = !DILocation(line: 236, column: 11, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 236, column: 8)
!1066 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 235, column: 31)
!1067 = !DILocation(line: 236, column: 10, scope: !1065)
!1068 = !DILocation(line: 236, column: 21, scope: !1065)
!1069 = !DILocation(line: 237, column: 11, scope: !1065)
!1070 = !DILocation(line: 237, column: 10, scope: !1065)
!1071 = !DILocation(line: 237, column: 29, scope: !1065)
!1072 = !DILocation(line: 237, column: 9, scope: !1065)
!1073 = !DILocation(line: 237, column: 34, scope: !1065)
!1074 = !DILocation(line: 236, column: 8, scope: !1066)
!1075 = !DILocation(line: 238, column: 5, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 237, column: 57)
!1077 = !DILocation(line: 240, column: 12, scope: !1066)
!1078 = !DILocation(line: 241, column: 3, scope: !1066)
!1079 = !DILocation(line: 235, column: 27, scope: !1060)
!1080 = !DILocation(line: 235, column: 3, scope: !1060)
!1081 = distinct !{!1081, !1063, !1082, !882, !883}
!1082 = !DILocation(line: 241, column: 3, scope: !1057)
!1083 = !DILocation(line: 245, column: 45, scope: !1023)
!1084 = !DILocation(line: 245, column: 16, scope: !1023)
!1085 = !DILocation(line: 245, column: 14, scope: !1023)
!1086 = !DILocation(line: 246, column: 8, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 246, column: 7)
!1088 = !DILocation(line: 246, column: 7, scope: !1023)
!1089 = !DILocation(line: 247, column: 4, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 246, column: 20)
!1091 = !DILocation(line: 252, column: 14, scope: !1023)
!1092 = !DILocation(line: 252, column: 39, scope: !1023)
!1093 = !DILocation(line: 252, column: 12, scope: !1023)
!1094 = !DILocation(line: 253, column: 18, scope: !1023)
!1095 = !DILocation(line: 253, column: 16, scope: !1023)
!1096 = !DILocation(line: 255, column: 10, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 255, column: 3)
!1098 = !DILocation(line: 255, column: 8, scope: !1097)
!1099 = !DILocation(line: 255, column: 15, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 255, column: 3)
!1101 = !DILocation(line: 255, column: 19, scope: !1100)
!1102 = !DILocation(line: 255, column: 17, scope: !1100)
!1103 = !DILocation(line: 255, column: 3, scope: !1097)
!1104 = !DILocation(line: 256, column: 27, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 255, column: 31)
!1106 = !DILocation(line: 256, column: 26, scope: !1105)
!1107 = !DILocation(line: 256, column: 46, scope: !1105)
!1108 = !DILocation(line: 256, column: 20, scope: !1105)
!1109 = !DILocation(line: 256, column: 5, scope: !1105)
!1110 = !DILocation(line: 256, column: 18, scope: !1105)
!1111 = !DILocation(line: 257, column: 16, scope: !1105)
!1112 = !DILocation(line: 258, column: 12, scope: !1105)
!1113 = !DILocation(line: 259, column: 3, scope: !1105)
!1114 = !DILocation(line: 255, column: 27, scope: !1100)
!1115 = !DILocation(line: 255, column: 3, scope: !1100)
!1116 = distinct !{!1116, !1103, !1117, !882, !883}
!1117 = !DILocation(line: 259, column: 3, scope: !1097)
!1118 = !DILocation(line: 260, column: 3, scope: !1023)
!1119 = !DILocation(line: 264, column: 3, scope: !1023)
!1120 = !DILocation(line: 267, column: 19, scope: !995)
!1121 = !DILocation(line: 267, column: 3, scope: !995)
!1122 = !DILocation(line: 267, column: 17, scope: !995)
!1123 = !DILocation(line: 268, column: 2, scope: !995)
!1124 = !DILocation(line: 269, column: 1, scope: !995)
!1125 = !DISubprogram(name: "acpi_ex_convert_to_buffer", scope: !992, file: !992, line: 74, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1126 = !DISubprogram(name: "acpi_ut_create_buffer_object", scope: !900, file: !900, line: 457, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1127 = distinct !DISubprogram(name: "acpi_ns_convert_to_unicode", scope: !3, file: !3, line: 286, type: !1128, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1130)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!24, !45, !49, !108}
!1130 = !{!1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138}
!1131 = !DILocalVariable(name: "scope", arg: 1, scope: !1127, file: !3, line: 286, type: !45)
!1132 = !DILocalVariable(name: "original_object", arg: 2, scope: !1127, file: !3, line: 287, type: !49)
!1133 = !DILocalVariable(name: "return_object", arg: 3, scope: !1127, file: !3, line: 288, type: !108)
!1134 = !DILocalVariable(name: "new_object", scope: !1127, file: !3, line: 290, type: !49)
!1135 = !DILocalVariable(name: "ascii_string", scope: !1127, file: !3, line: 291, type: !82)
!1136 = !DILocalVariable(name: "unicode_buffer", scope: !1127, file: !3, line: 292, type: !37)
!1137 = !DILocalVariable(name: "unicode_length", scope: !1127, file: !3, line: 293, type: !26)
!1138 = !DILocalVariable(name: "i", scope: !1127, file: !3, line: 294, type: !26)
!1139 = !DILocation(line: 286, column: 56, scope: !1127)
!1140 = !DILocation(line: 287, column: 34, scope: !1127)
!1141 = !DILocation(line: 288, column: 35, scope: !1127)
!1142 = !DILocation(line: 290, column: 2, scope: !1127)
!1143 = !DILocation(line: 290, column: 29, scope: !1127)
!1144 = !DILocation(line: 291, column: 2, scope: !1127)
!1145 = !DILocation(line: 291, column: 8, scope: !1127)
!1146 = !DILocation(line: 292, column: 2, scope: !1127)
!1147 = !DILocation(line: 292, column: 7, scope: !1127)
!1148 = !DILocation(line: 293, column: 2, scope: !1127)
!1149 = !DILocation(line: 293, column: 6, scope: !1127)
!1150 = !DILocation(line: 294, column: 2, scope: !1127)
!1151 = !DILocation(line: 294, column: 6, scope: !1127)
!1152 = !DILocation(line: 296, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 296, column: 6)
!1154 = !DILocation(line: 296, column: 6, scope: !1127)
!1155 = !DILocation(line: 297, column: 3, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 296, column: 24)
!1157 = !DILocation(line: 302, column: 6, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 302, column: 6)
!1159 = !DILocation(line: 302, column: 30, scope: !1158)
!1160 = !DILocation(line: 302, column: 35, scope: !1158)
!1161 = !DILocation(line: 302, column: 6, scope: !1127)
!1162 = !DILocation(line: 303, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 303, column: 7)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 302, column: 56)
!1165 = !DILocation(line: 303, column: 31, scope: !1163)
!1166 = !DILocation(line: 303, column: 38, scope: !1163)
!1167 = !DILocation(line: 303, column: 7, scope: !1164)
!1168 = !DILocation(line: 304, column: 4, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 303, column: 43)
!1170 = !DILocation(line: 307, column: 4, scope: !1164)
!1171 = !DILocation(line: 307, column: 18, scope: !1164)
!1172 = !DILocation(line: 308, column: 3, scope: !1164)
!1173 = !DILocation(line: 315, column: 17, scope: !1127)
!1174 = !DILocation(line: 315, column: 41, scope: !1127)
!1175 = !DILocation(line: 315, column: 15, scope: !1127)
!1176 = !DILocation(line: 316, column: 20, scope: !1127)
!1177 = !DILocation(line: 316, column: 44, scope: !1127)
!1178 = !DILocation(line: 316, column: 51, scope: !1127)
!1179 = !DILocation(line: 316, column: 56, scope: !1127)
!1180 = !DILocation(line: 316, column: 17, scope: !1127)
!1181 = !DILocation(line: 320, column: 44, scope: !1127)
!1182 = !DILocation(line: 320, column: 15, scope: !1127)
!1183 = !DILocation(line: 320, column: 13, scope: !1127)
!1184 = !DILocation(line: 321, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 321, column: 6)
!1186 = !DILocation(line: 321, column: 6, scope: !1127)
!1187 = !DILocation(line: 322, column: 3, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 321, column: 19)
!1189 = !DILocation(line: 325, column: 19, scope: !1127)
!1190 = !DILocation(line: 325, column: 17, scope: !1127)
!1191 = !DILocation(line: 329, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 329, column: 2)
!1193 = !DILocation(line: 329, column: 7, scope: !1192)
!1194 = !DILocation(line: 329, column: 14, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 329, column: 2)
!1196 = !DILocation(line: 329, column: 18, scope: !1195)
!1197 = !DILocation(line: 329, column: 42, scope: !1195)
!1198 = !DILocation(line: 329, column: 16, scope: !1195)
!1199 = !DILocation(line: 329, column: 2, scope: !1192)
!1200 = !DILocation(line: 330, column: 28, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 329, column: 55)
!1202 = !DILocation(line: 330, column: 41, scope: !1201)
!1203 = !DILocation(line: 330, column: 23, scope: !1201)
!1204 = !DILocation(line: 330, column: 3, scope: !1201)
!1205 = !DILocation(line: 330, column: 18, scope: !1201)
!1206 = !DILocation(line: 330, column: 21, scope: !1201)
!1207 = !DILocation(line: 331, column: 2, scope: !1201)
!1208 = !DILocation(line: 329, column: 51, scope: !1195)
!1209 = !DILocation(line: 329, column: 2, scope: !1195)
!1210 = distinct !{!1210, !1199, !1211, !882, !883}
!1211 = !DILocation(line: 331, column: 2, scope: !1192)
!1212 = !DILocation(line: 333, column: 19, scope: !1127)
!1213 = !DILocation(line: 333, column: 3, scope: !1127)
!1214 = !DILocation(line: 333, column: 17, scope: !1127)
!1215 = !DILocation(line: 334, column: 2, scope: !1127)
!1216 = !DILocation(line: 335, column: 1, scope: !1127)
!1217 = distinct !DISubprogram(name: "acpi_ns_convert_to_resource", scope: !3, file: !3, line: 353, type: !1128, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1223}
!1219 = !DILocalVariable(name: "scope", arg: 1, scope: !1217, file: !3, line: 353, type: !45)
!1220 = !DILocalVariable(name: "original_object", arg: 2, scope: !1217, file: !3, line: 354, type: !49)
!1221 = !DILocalVariable(name: "return_object", arg: 3, scope: !1217, file: !3, line: 355, type: !108)
!1222 = !DILocalVariable(name: "new_object", scope: !1217, file: !3, line: 357, type: !49)
!1223 = !DILocalVariable(name: "buffer", scope: !1217, file: !3, line: 358, type: !41)
!1224 = !DILocation(line: 353, column: 57, scope: !1217)
!1225 = !DILocation(line: 354, column: 35, scope: !1217)
!1226 = !DILocation(line: 355, column: 36, scope: !1217)
!1227 = !DILocation(line: 357, column: 2, scope: !1217)
!1228 = !DILocation(line: 357, column: 29, scope: !1217)
!1229 = !DILocation(line: 358, column: 2, scope: !1217)
!1230 = !DILocation(line: 358, column: 6, scope: !1217)
!1231 = !DILocation(line: 369, column: 6, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 369, column: 6)
!1233 = !DILocation(line: 369, column: 6, scope: !1217)
!1234 = !DILocation(line: 370, column: 11, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 369, column: 23)
!1236 = !DILocation(line: 370, column: 35, scope: !1235)
!1237 = !DILocation(line: 370, column: 3, scope: !1235)
!1238 = !DILocation(line: 375, column: 8, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 375, column: 8)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 370, column: 41)
!1241 = !DILocation(line: 375, column: 33, scope: !1239)
!1242 = !DILocation(line: 375, column: 8, scope: !1240)
!1243 = !DILocation(line: 376, column: 5, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 375, column: 40)
!1245 = !DILocation(line: 378, column: 4, scope: !1240)
!1246 = !DILocation(line: 382, column: 8, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 382, column: 8)
!1248 = !DILocation(line: 382, column: 32, scope: !1247)
!1249 = !DILocation(line: 382, column: 8, scope: !1240)
!1250 = !DILocation(line: 386, column: 6, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 382, column: 40)
!1252 = !DILocation(line: 386, column: 20, scope: !1251)
!1253 = !DILocation(line: 387, column: 5, scope: !1251)
!1254 = !DILocation(line: 389, column: 4, scope: !1240)
!1255 = !DILocation(line: 391, column: 3, scope: !1240)
!1256 = !DILocation(line: 394, column: 4, scope: !1240)
!1257 = !DILocation(line: 396, column: 2, scope: !1235)
!1258 = !DILocation(line: 400, column: 15, scope: !1217)
!1259 = !DILocation(line: 400, column: 13, scope: !1217)
!1260 = !DILocation(line: 401, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 401, column: 6)
!1262 = !DILocation(line: 401, column: 6, scope: !1217)
!1263 = !DILocation(line: 402, column: 3, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 401, column: 19)
!1265 = !DILocation(line: 405, column: 11, scope: !1217)
!1266 = !DILocation(line: 405, column: 9, scope: !1217)
!1267 = !DILocation(line: 409, column: 2, scope: !1217)
!1268 = !DILocation(line: 409, column: 12, scope: !1217)
!1269 = !DILocation(line: 410, column: 2, scope: !1217)
!1270 = !DILocation(line: 410, column: 12, scope: !1217)
!1271 = !DILocation(line: 412, column: 19, scope: !1217)
!1272 = !DILocation(line: 412, column: 3, scope: !1217)
!1273 = !DILocation(line: 412, column: 17, scope: !1217)
!1274 = !DILocation(line: 413, column: 2, scope: !1217)
!1275 = !DILocation(line: 414, column: 1, scope: !1217)
!1276 = distinct !DISubprogram(name: "acpi_ns_convert_to_reference", scope: !3, file: !3, line: 432, type: !1128, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286}
!1278 = !DILocalVariable(name: "scope", arg: 1, scope: !1276, file: !3, line: 432, type: !45)
!1279 = !DILocalVariable(name: "original_object", arg: 2, scope: !1276, file: !3, line: 433, type: !49)
!1280 = !DILocalVariable(name: "return_object", arg: 3, scope: !1276, file: !3, line: 434, type: !108)
!1281 = !DILocalVariable(name: "new_object", scope: !1276, file: !3, line: 436, type: !49)
!1282 = !DILocalVariable(name: "status", scope: !1276, file: !3, line: 437, type: !24)
!1283 = !DILocalVariable(name: "node", scope: !1276, file: !3, line: 438, type: !45)
!1284 = !DILocalVariable(name: "scope_info", scope: !1276, file: !3, line: 439, type: !265)
!1285 = !DILocalVariable(name: "name", scope: !1276, file: !3, line: 440, type: !82)
!1286 = !DILabel(scope: !1276, name: "error_exit", file: !3, line: 486)
!1287 = !DILocation(line: 432, column: 58, scope: !1276)
!1288 = !DILocation(line: 433, column: 36, scope: !1276)
!1289 = !DILocation(line: 434, column: 37, scope: !1276)
!1290 = !DILocation(line: 436, column: 2, scope: !1276)
!1291 = !DILocation(line: 436, column: 29, scope: !1276)
!1292 = !DILocation(line: 437, column: 2, scope: !1276)
!1293 = !DILocation(line: 437, column: 14, scope: !1276)
!1294 = !DILocation(line: 438, column: 2, scope: !1276)
!1295 = !DILocation(line: 438, column: 30, scope: !1276)
!1296 = !DILocation(line: 439, column: 2, scope: !1276)
!1297 = !DILocation(line: 439, column: 27, scope: !1276)
!1298 = !DILocation(line: 440, column: 2, scope: !1276)
!1299 = !DILocation(line: 440, column: 8, scope: !1276)
!1300 = !DILocation(line: 447, column: 31, scope: !1276)
!1301 = !DILocation(line: 447, column: 55, scope: !1276)
!1302 = !DILocation(line: 447, column: 6, scope: !1276)
!1303 = !DILocation(line: 446, column: 9, scope: !1276)
!1304 = !DILocation(line: 448, column: 6, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 448, column: 6)
!1306 = !DILocation(line: 448, column: 6, scope: !1276)
!1307 = !DILocation(line: 449, column: 3, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 448, column: 28)
!1309 = !DILocation(line: 455, column: 6, scope: !1276)
!1310 = !DILocation(line: 454, column: 19, scope: !1276)
!1311 = !DILocation(line: 454, column: 24, scope: !1276)
!1312 = !DILocation(line: 457, column: 34, scope: !1276)
!1313 = !DILocation(line: 457, column: 6, scope: !1276)
!1314 = !DILocation(line: 456, column: 9, scope: !1276)
!1315 = !DILocation(line: 460, column: 6, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 460, column: 6)
!1317 = !DILocation(line: 460, column: 6, scope: !1276)
!1318 = !DILocation(line: 464, column: 3, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 460, column: 28)
!1320 = !DILocation(line: 466, column: 3, scope: !1319)
!1321 = !DILocation(line: 471, column: 15, scope: !1276)
!1322 = !DILocation(line: 471, column: 13, scope: !1276)
!1323 = !DILocation(line: 472, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 472, column: 6)
!1325 = !DILocation(line: 472, column: 6, scope: !1276)
!1326 = !DILocation(line: 473, column: 10, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 472, column: 19)
!1328 = !DILocation(line: 474, column: 3, scope: !1327)
!1329 = !DILocation(line: 476, column: 31, scope: !1276)
!1330 = !DILocation(line: 476, column: 2, scope: !1276)
!1331 = !DILocation(line: 476, column: 24, scope: !1276)
!1332 = !DILocation(line: 476, column: 29, scope: !1276)
!1333 = !DILocation(line: 477, column: 33, scope: !1276)
!1334 = !DILocation(line: 477, column: 39, scope: !1276)
!1335 = !DILocation(line: 477, column: 2, scope: !1276)
!1336 = !DILocation(line: 477, column: 24, scope: !1276)
!1337 = !DILocation(line: 477, column: 31, scope: !1276)
!1338 = !DILocation(line: 478, column: 2, scope: !1276)
!1339 = !DILocation(line: 478, column: 24, scope: !1276)
!1340 = !DILocation(line: 478, column: 30, scope: !1276)
!1341 = !DILocation(line: 484, column: 24, scope: !1276)
!1342 = !DILocation(line: 484, column: 30, scope: !1276)
!1343 = !DILocation(line: 484, column: 2, scope: !1276)
!1344 = !DILocation(line: 486, column: 1, scope: !1276)
!1345 = !DILocation(line: 487, column: 2, scope: !1276)
!1346 = !DILocation(line: 488, column: 19, scope: !1276)
!1347 = !DILocation(line: 488, column: 3, scope: !1276)
!1348 = !DILocation(line: 488, column: 17, scope: !1276)
!1349 = !DILocation(line: 489, column: 10, scope: !1276)
!1350 = !DILocation(line: 489, column: 2, scope: !1276)
!1351 = !DILocation(line: 490, column: 1, scope: !1276)
!1352 = !DISubprogram(name: "acpi_ns_internalize_name", scope: !1353, file: !1353, line: 391, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!24, !1356, !1357}
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!1358 = !DISubprogram(name: "acpi_ns_lookup", scope: !1353, file: !1353, line: 118, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!24, !264, !82, !1361, !1362, !26, !144, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !25, line: 644, baseType: !26)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !6, line: 120, baseType: !5)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!1364 = !DISubprogram(name: "acpi_ut_prefixed_namespace_error", scope: !900, file: !900, line: 728, type: !1365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{null, !1356, !26, !264, !1356, !24}
!1367 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !900, file: !900, line: 436, type: !1368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!49, !1356, !26, !26, !1361}
!1370 = !DISubprogram(name: "acpi_ut_add_reference", scope: !900, file: !900, line: 367, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !49}
!1373 = distinct !DISubprogram(name: "acpi_os_free", scope: !1374, file: !1374, line: 60, type: !1375, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1377)
!1374 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !121}
!1377 = !{!1378}
!1378 = !DILocalVariable(name: "memory", arg: 1, scope: !1373, file: !1374, line: 60, type: !121)
!1379 = !DILocation(line: 60, column: 39, scope: !1373)
!1380 = !DILocation(line: 62, column: 8, scope: !1373)
!1381 = !DILocation(line: 62, column: 2, scope: !1373)
!1382 = !DILocation(line: 63, column: 1, scope: !1373)
!1383 = !DISubprogram(name: "kfree", scope: !1384, file: !1384, line: 227, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1384 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !1387}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
