; ModuleID = 'drivers/acpi/acpica/exserial.c'
source_filename = "drivers/acpi/acpica/exserial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_field_common = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_region_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, i16, ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }

@_acpi_module_name = internal constant [9 x i8] c"exserial\00", align 1, !dbg !0
@.str = private unnamed_addr constant [65 x i8] c"Invalid direct read using bidirectional write-then-read protocol\00", align 1, !dbg !34
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid protocol ID for GSBus: 0x%4.4X\00", align 1, !dbg !40
@.str.2 = private unnamed_addr constant [65 x i8] c"SMBus/IPMI/GenericSerialBus write requires Buffer, found type %s\00", align 1, !dbg !45

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_read_gpio(ptr noundef %obj_desc, ptr noundef %buffer) #0 align 16 !dbg !60 {
entry:
  %obj_desc.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !827, metadata !DIExpression()), !dbg !830
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !828, metadata !DIExpression()), !dbg !831
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !832
  call void @llvm.dbg.declare(metadata ptr %status, metadata !829, metadata !DIExpression()), !dbg !833
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !834
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, ptr %0, i32 0, i32 5, !dbg !835
  %1 = load i8, ptr %field_flags, align 1, !dbg !835
  %conv = zext i8 %1 to i32, !dbg !834
  call void @acpi_ex_acquire_global_lock(i32 noundef %conv) #6, !dbg !836
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !837
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !838
  %call = call i32 @acpi_ex_access_region(ptr noundef %2, i32 noundef 0, ptr noundef %3, i32 noundef 0) #6, !dbg !839
  store i32 %call, ptr %status, align 4, !dbg !840
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !841
  %field_flags1 = getelementptr inbounds %struct.acpi_object_field_common, ptr %4, i32 0, i32 5, !dbg !842
  %5 = load i8, ptr %field_flags1, align 1, !dbg !842
  %conv2 = zext i8 %5 to i32, !dbg !841
  call void @acpi_ex_release_global_lock(i32 noundef %conv2) #6, !dbg !843
  %6 = load i32, ptr %status, align 4, !dbg !844
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !845
  ret i32 %6, !dbg !844
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !846 dso_local void @acpi_ex_acquire_global_lock(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !850 dso_local i32 @acpi_ex_access_region(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !853 dso_local void @acpi_ex_release_global_lock(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_write_gpio(ptr noundef %source_desc, ptr noundef %obj_desc, ptr noundef %return_buffer) #0 align 16 !dbg !854 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %return_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !858, metadata !DIExpression()), !dbg !863
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !859, metadata !DIExpression()), !dbg !864
  store ptr %return_buffer, ptr %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_buffer.addr, metadata !860, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %status, metadata !861, metadata !DIExpression()), !dbg !867
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #5, !dbg !868
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !862, metadata !DIExpression()), !dbg !869
  %0 = load ptr, ptr %source_desc.addr, align 8, !dbg !870
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !872
  %1 = load i8, ptr %type, align 1, !dbg !872
  %conv = zext i8 %1 to i32, !dbg !870
  %cmp = icmp ne i32 %conv, 1, !dbg !873
  br i1 %cmp, label %if.then, label %if.end, !dbg !874

if.then:                                          ; preds = %entry
  store i32 12291, ptr %retval, align 4, !dbg !875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !875

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %source_desc.addr, align 8, !dbg !877
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %2, i32 0, i32 6, !dbg !878
  store ptr %value, ptr %buffer, align 8, !dbg !879
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !880
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, ptr %3, i32 0, i32 5, !dbg !881
  %4 = load i8, ptr %field_flags, align 1, !dbg !881
  %conv2 = zext i8 %4 to i32, !dbg !880
  call void @acpi_ex_acquire_global_lock(i32 noundef %conv2) #6, !dbg !882
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !883
  %6 = load ptr, ptr %buffer, align 8, !dbg !884
  %call = call i32 @acpi_ex_access_region(ptr noundef %5, i32 noundef 0, ptr noundef %6, i32 noundef 1) #6, !dbg !885
  store i32 %call, ptr %status, align 4, !dbg !886
  %7 = load ptr, ptr %obj_desc.addr, align 8, !dbg !887
  %field_flags3 = getelementptr inbounds %struct.acpi_object_field_common, ptr %7, i32 0, i32 5, !dbg !888
  %8 = load i8, ptr %field_flags3, align 1, !dbg !888
  %conv4 = zext i8 %8 to i32, !dbg !887
  call void @acpi_ex_release_global_lock(i32 noundef %conv4) #6, !dbg !889
  %9 = load i32, ptr %status, align 4, !dbg !890
  store i32 %9, ptr %retval, align 4, !dbg !890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !890

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #5, !dbg !891
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !891
  %10 = load i32, ptr %retval, align 4, !dbg !891
  ret i32 %10, !dbg !891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_read_serial_bus(ptr noundef %obj_desc, ptr noundef %return_buffer) #0 align 16 !dbg !892 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %return_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %buffer_length = alloca i32, align 4
  %buffer_desc = alloca ptr, align 8
  %function = alloca i32, align 4
  %accessor_type = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !896, metadata !DIExpression()), !dbg !903
  store ptr %return_buffer, ptr %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_buffer.addr, metadata !897, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %status, metadata !898, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_length) #5, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %buffer_length, metadata !899, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_desc) #5, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %buffer_desc, metadata !900, metadata !DIExpression()), !dbg !910
  call void @llvm.lifetime.start.p0(i64 4, ptr %function) #5, !dbg !911
  call void @llvm.dbg.declare(metadata ptr %function, metadata !901, metadata !DIExpression()), !dbg !912
  call void @llvm.lifetime.start.p0(i64 2, ptr %accessor_type) #5, !dbg !913
  call void @llvm.dbg.declare(metadata ptr %accessor_type, metadata !902, metadata !DIExpression()), !dbg !914
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !915
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, ptr %0, i32 0, i32 15, !dbg !916
  %1 = load ptr, ptr %region_obj, align 8, !dbg !916
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %1, i32 0, i32 5, !dbg !917
  %2 = load i8, ptr %space_id, align 1, !dbg !917
  %conv = zext i8 %2 to i32, !dbg !915
  switch i32 %conv, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb2
    i32 9, label %sw.bb3
    i32 11, label %sw.bb15
  ], !dbg !918

sw.bb:                                            ; preds = %entry
  store i32 34, ptr %buffer_length, align 4, !dbg !919
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !921
  %attribute = getelementptr inbounds %struct.acpi_object_region_field, ptr %3, i32 0, i32 6, !dbg !922
  %4 = load i8, ptr %attribute, align 2, !dbg !922
  %conv1 = zext i8 %4 to i32, !dbg !921
  %shl = shl i32 %conv1, 16, !dbg !923
  %or = or i32 0, %shl, !dbg !924
  store i32 %or, ptr %function, align 4, !dbg !925
  br label %sw.epilog, !dbg !926

sw.bb2:                                           ; preds = %entry
  store i32 66, ptr %buffer_length, align 4, !dbg !927
  store i32 0, ptr %function, align 4, !dbg !928
  br label %sw.epilog, !dbg !929

sw.bb3:                                           ; preds = %entry
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !930
  %attribute4 = getelementptr inbounds %struct.acpi_object_region_field, ptr %5, i32 0, i32 6, !dbg !931
  %6 = load i8, ptr %attribute4, align 2, !dbg !931
  %conv5 = zext i8 %6 to i16, !dbg !930
  store i16 %conv5, ptr %accessor_type, align 2, !dbg !932
  %7 = load i16, ptr %accessor_type, align 2, !dbg !933
  %conv6 = zext i16 %7 to i32, !dbg !933
  %cmp = icmp eq i32 %conv6, 15, !dbg !935
  br i1 %cmp, label %if.then, label %if.end, !dbg !936

if.then:                                          ; preds = %sw.bb3
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 175, ptr noundef @.str) #6, !dbg !937
  store i32 12324, ptr %retval, align 4, !dbg !939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !939

if.end:                                           ; preds = %sw.bb3
  %8 = load i16, ptr %accessor_type, align 2, !dbg !940
  %conv8 = zext i16 %8 to i32, !dbg !940
  %call = call i32 @acpi_ex_get_protocol_buffer_length(i32 noundef %conv8, ptr noundef %buffer_length) #6, !dbg !941
  store i32 %call, ptr %status, align 4, !dbg !942
  %9 = load i32, ptr %status, align 4, !dbg !943
  %tobool = icmp ne i32 %9, 0, !dbg !943
  br i1 %tobool, label %if.then9, label %if.end11, !dbg !945

if.then9:                                         ; preds = %if.end
  %10 = load i16, ptr %accessor_type, align 2, !dbg !946
  %conv10 = zext i16 %10 to i32, !dbg !946
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 185, ptr noundef @.str.1, i32 noundef %conv10) #6, !dbg !946
  %11 = load i32, ptr %status, align 4, !dbg !948
  store i32 %11, ptr %retval, align 4, !dbg !948
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !948

if.end11:                                         ; preds = %if.end
  %12 = load i32, ptr %buffer_length, align 4, !dbg !949
  %add = add i32 %12, 2, !dbg !949
  store i32 %add, ptr %buffer_length, align 4, !dbg !949
  %13 = load i16, ptr %accessor_type, align 2, !dbg !950
  %conv12 = zext i16 %13 to i32, !dbg !950
  %shl13 = shl i32 %conv12, 16, !dbg !951
  %or14 = or i32 0, %shl13, !dbg !952
  store i32 %or14, ptr %function, align 4, !dbg !953
  br label %sw.epilog, !dbg !954

sw.bb15:                                          ; preds = %entry
  store i32 26, ptr %buffer_length, align 4, !dbg !955
  store i32 0, ptr %function, align 4, !dbg !956
  br label %sw.epilog, !dbg !957

sw.default:                                       ; preds = %entry
  store i32 12304, ptr %retval, align 4, !dbg !958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !958

sw.epilog:                                        ; preds = %sw.bb15, %if.end11, %sw.bb2, %sw.bb
  %14 = load i32, ptr %buffer_length, align 4, !dbg !959
  %conv16 = zext i32 %14 to i64, !dbg !959
  %call17 = call ptr @acpi_ut_create_buffer_object(i64 noundef %conv16) #6, !dbg !960
  store ptr %call17, ptr %buffer_desc, align 8, !dbg !961
  %15 = load ptr, ptr %buffer_desc, align 8, !dbg !962
  %tobool18 = icmp ne ptr %15, null, !dbg !962
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !964

if.then19:                                        ; preds = %sw.epilog
  store i32 4, ptr %retval, align 4, !dbg !965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !965

if.end20:                                         ; preds = %sw.epilog
  %16 = load ptr, ptr %obj_desc.addr, align 8, !dbg !967
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, ptr %16, i32 0, i32 5, !dbg !968
  %17 = load i8, ptr %field_flags, align 1, !dbg !968
  %conv21 = zext i8 %17 to i32, !dbg !967
  call void @acpi_ex_acquire_global_lock(i32 noundef %conv21) #6, !dbg !969
  %18 = load ptr, ptr %obj_desc.addr, align 8, !dbg !970
  %19 = load ptr, ptr %buffer_desc, align 8, !dbg !971
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %19, i32 0, i32 5, !dbg !971
  %20 = load ptr, ptr %pointer, align 8, !dbg !971
  %21 = ptrtoint ptr %20 to i64, !dbg !971
  %22 = inttoptr i64 %21 to ptr, !dbg !971
  %23 = load i32, ptr %function, align 4, !dbg !972
  %call22 = call i32 @acpi_ex_access_region(ptr noundef %18, i32 noundef 0, ptr noundef %22, i32 noundef %23) #6, !dbg !973
  store i32 %call22, ptr %status, align 4, !dbg !974
  %24 = load ptr, ptr %obj_desc.addr, align 8, !dbg !975
  %field_flags23 = getelementptr inbounds %struct.acpi_object_field_common, ptr %24, i32 0, i32 5, !dbg !976
  %25 = load i8, ptr %field_flags23, align 1, !dbg !976
  %conv24 = zext i8 %25 to i32, !dbg !975
  call void @acpi_ex_release_global_lock(i32 noundef %conv24) #6, !dbg !977
  %26 = load ptr, ptr %buffer_desc, align 8, !dbg !978
  %27 = load ptr, ptr %return_buffer.addr, align 8, !dbg !979
  store ptr %26, ptr %27, align 8, !dbg !980
  %28 = load i32, ptr %status, align 4, !dbg !981
  store i32 %28, ptr %retval, align 4, !dbg !981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !981

cleanup:                                          ; preds = %if.end20, %if.then19, %sw.default, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %accessor_type) #5, !dbg !982
  call void @llvm.lifetime.end.p0(i64 4, ptr %function) #5, !dbg !982
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_desc) #5, !dbg !982
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_length) #5, !dbg !982
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !982
  %29 = load i32, ptr %retval, align 4, !dbg !982
  ret i32 %29, !dbg !982
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !983 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !988 dso_local i32 @acpi_ex_get_protocol_buffer_length(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !992 dso_local ptr @acpi_ut_create_buffer_object(i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_write_serial_bus(ptr noundef %source_desc, ptr noundef %obj_desc, ptr noundef %return_buffer) #0 align 16 !dbg !997 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %return_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %buffer_length = alloca i32, align 4
  %data_length = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %buffer_desc = alloca ptr, align 8
  %function = alloca i32, align 4
  %accessor_type = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !999, metadata !DIExpression()), !dbg !1009
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1000, metadata !DIExpression()), !dbg !1010
  store ptr %return_buffer, ptr %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_buffer.addr, metadata !1001, metadata !DIExpression()), !dbg !1011
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1002, metadata !DIExpression()), !dbg !1013
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_length) #5, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %buffer_length, metadata !1003, metadata !DIExpression()), !dbg !1015
  call void @llvm.lifetime.start.p0(i64 4, ptr %data_length) #5, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %data_length, metadata !1004, metadata !DIExpression()), !dbg !1017
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #5, !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1005, metadata !DIExpression()), !dbg !1019
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_desc) #5, !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %buffer_desc, metadata !1006, metadata !DIExpression()), !dbg !1021
  call void @llvm.lifetime.start.p0(i64 4, ptr %function) #5, !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %function, metadata !1007, metadata !DIExpression()), !dbg !1023
  call void @llvm.lifetime.start.p0(i64 2, ptr %accessor_type) #5, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %accessor_type, metadata !1008, metadata !DIExpression()), !dbg !1025
  %0 = load ptr, ptr %source_desc.addr, align 8, !dbg !1026
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %0, i32 0, i32 2, !dbg !1028
  %1 = load i8, ptr %type, align 1, !dbg !1028
  %conv = zext i8 %1 to i32, !dbg !1026
  %cmp = icmp ne i32 %conv, 3, !dbg !1029
  br i1 %cmp, label %if.then, label %if.end, !dbg !1030

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %source_desc.addr, align 8, !dbg !1031
  %call = call ptr @acpi_ut_get_object_type_name(ptr noundef %2) #6, !dbg !1031
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 279, ptr noundef @.str.2, ptr noundef %call) #6, !dbg !1031
  store i32 12291, ptr %retval, align 4, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1034
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, ptr %3, i32 0, i32 15, !dbg !1035
  %4 = load ptr, ptr %region_obj, align 8, !dbg !1035
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %4, i32 0, i32 5, !dbg !1036
  %5 = load i8, ptr %space_id, align 1, !dbg !1036
  %conv2 = zext i8 %5 to i32, !dbg !1034
  switch i32 %conv2, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb4
    i32 9, label %sw.bb5
    i32 11, label %sw.bb16
    i32 127, label %sw.bb17
  ], !dbg !1037

sw.bb:                                            ; preds = %if.end
  store i32 34, ptr %buffer_length, align 4, !dbg !1038
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1040
  %attribute = getelementptr inbounds %struct.acpi_object_region_field, ptr %6, i32 0, i32 6, !dbg !1041
  %7 = load i8, ptr %attribute, align 2, !dbg !1041
  %conv3 = zext i8 %7 to i32, !dbg !1040
  %shl = shl i32 %conv3, 16, !dbg !1042
  %or = or i32 1, %shl, !dbg !1043
  store i32 %or, ptr %function, align 4, !dbg !1044
  br label %sw.epilog, !dbg !1045

sw.bb4:                                           ; preds = %if.end
  store i32 66, ptr %buffer_length, align 4, !dbg !1046
  store i32 1, ptr %function, align 4, !dbg !1047
  br label %sw.epilog, !dbg !1048

sw.bb5:                                           ; preds = %if.end
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1049
  %attribute6 = getelementptr inbounds %struct.acpi_object_region_field, ptr %8, i32 0, i32 6, !dbg !1050
  %9 = load i8, ptr %attribute6, align 2, !dbg !1050
  %conv7 = zext i8 %9 to i16, !dbg !1049
  store i16 %conv7, ptr %accessor_type, align 2, !dbg !1051
  %10 = load i16, ptr %accessor_type, align 2, !dbg !1052
  %conv8 = zext i16 %10 to i32, !dbg !1052
  %call9 = call i32 @acpi_ex_get_protocol_buffer_length(i32 noundef %conv8, ptr noundef %buffer_length) #6, !dbg !1053
  store i32 %call9, ptr %status, align 4, !dbg !1054
  %11 = load i32, ptr %status, align 4, !dbg !1055
  %tobool = icmp ne i32 %11, 0, !dbg !1055
  br i1 %tobool, label %if.then10, label %if.end12, !dbg !1057

if.then10:                                        ; preds = %sw.bb5
  %12 = load i16, ptr %accessor_type, align 2, !dbg !1058
  %conv11 = zext i16 %12 to i32, !dbg !1058
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 307, ptr noundef @.str.1, i32 noundef %conv11) #6, !dbg !1058
  %13 = load i32, ptr %status, align 4, !dbg !1060
  store i32 %13, ptr %retval, align 4, !dbg !1060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1060

if.end12:                                         ; preds = %sw.bb5
  %14 = load i32, ptr %buffer_length, align 4, !dbg !1061
  %add = add i32 %14, 2, !dbg !1061
  store i32 %add, ptr %buffer_length, align 4, !dbg !1061
  %15 = load i16, ptr %accessor_type, align 2, !dbg !1062
  %conv13 = zext i16 %15 to i32, !dbg !1062
  %shl14 = shl i32 %conv13, 16, !dbg !1063
  %or15 = or i32 1, %shl14, !dbg !1064
  store i32 %or15, ptr %function, align 4, !dbg !1065
  br label %sw.epilog, !dbg !1066

sw.bb16:                                          ; preds = %if.end
  store i32 26, ptr %buffer_length, align 4, !dbg !1067
  store i32 1, ptr %function, align 4, !dbg !1068
  br label %sw.epilog, !dbg !1069

sw.bb17:                                          ; preds = %if.end
  store i32 256, ptr %buffer_length, align 4, !dbg !1070
  store i32 1, ptr %function, align 4, !dbg !1071
  br label %sw.epilog, !dbg !1072

sw.default:                                       ; preds = %if.end
  store i32 12304, ptr %retval, align 4, !dbg !1073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1073

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb16, %if.end12, %sw.bb4, %sw.bb
  %16 = load i32, ptr %buffer_length, align 4, !dbg !1074
  %conv18 = zext i32 %16 to i64, !dbg !1074
  %call19 = call ptr @acpi_ut_create_buffer_object(i64 noundef %conv18) #6, !dbg !1075
  store ptr %call19, ptr %buffer_desc, align 8, !dbg !1076
  %17 = load ptr, ptr %buffer_desc, align 8, !dbg !1077
  %tobool20 = icmp ne ptr %17, null, !dbg !1077
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !1079

if.then21:                                        ; preds = %sw.epilog
  store i32 4, ptr %retval, align 4, !dbg !1080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1080

if.end22:                                         ; preds = %sw.epilog
  %18 = load ptr, ptr %buffer_desc, align 8, !dbg !1082
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %18, i32 0, i32 5, !dbg !1083
  %19 = load ptr, ptr %pointer, align 8, !dbg !1083
  store ptr %19, ptr %buffer, align 8, !dbg !1084
  %20 = load i32, ptr %buffer_length, align 4, !dbg !1085
  %21 = load ptr, ptr %source_desc.addr, align 8, !dbg !1085
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %21, i32 0, i32 6, !dbg !1085
  %22 = load i32, ptr %length, align 8, !dbg !1085
  %cmp23 = icmp ult i32 %20, %22, !dbg !1085
  br i1 %cmp23, label %cond.true, label %cond.false, !dbg !1085

cond.true:                                        ; preds = %if.end22
  %23 = load i32, ptr %buffer_length, align 4, !dbg !1085
  br label %cond.end, !dbg !1085

cond.false:                                       ; preds = %if.end22
  %24 = load ptr, ptr %source_desc.addr, align 8, !dbg !1085
  %length25 = getelementptr inbounds %struct.acpi_object_buffer, ptr %24, i32 0, i32 6, !dbg !1085
  %25 = load i32, ptr %length25, align 8, !dbg !1085
  br label %cond.end, !dbg !1085

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %25, %cond.false ], !dbg !1085
  store i32 %cond, ptr %data_length, align 4, !dbg !1086
  %26 = load ptr, ptr %buffer, align 8, !dbg !1087
  %27 = load ptr, ptr %source_desc.addr, align 8, !dbg !1088
  %pointer26 = getelementptr inbounds %struct.acpi_object_buffer, ptr %27, i32 0, i32 5, !dbg !1089
  %28 = load ptr, ptr %pointer26, align 8, !dbg !1089
  %29 = load i32, ptr %data_length, align 4, !dbg !1090
  %conv27 = zext i32 %29 to i64, !dbg !1090
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %28, i64 %conv27, i1 false), !dbg !1091
  %30 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1092
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, ptr %30, i32 0, i32 5, !dbg !1093
  %31 = load i8, ptr %field_flags, align 1, !dbg !1093
  %conv28 = zext i8 %31 to i32, !dbg !1092
  call void @acpi_ex_acquire_global_lock(i32 noundef %conv28) #6, !dbg !1094
  %32 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1095
  %33 = load ptr, ptr %buffer, align 8, !dbg !1096
  %34 = load i32, ptr %function, align 4, !dbg !1097
  %call29 = call i32 @acpi_ex_access_region(ptr noundef %32, i32 noundef 0, ptr noundef %33, i32 noundef %34) #6, !dbg !1098
  store i32 %call29, ptr %status, align 4, !dbg !1099
  %35 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1100
  %field_flags30 = getelementptr inbounds %struct.acpi_object_field_common, ptr %35, i32 0, i32 5, !dbg !1101
  %36 = load i8, ptr %field_flags30, align 1, !dbg !1101
  %conv31 = zext i8 %36 to i32, !dbg !1100
  call void @acpi_ex_release_global_lock(i32 noundef %conv31) #6, !dbg !1102
  %37 = load ptr, ptr %buffer_desc, align 8, !dbg !1103
  %38 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1104
  store ptr %37, ptr %38, align 8, !dbg !1105
  %39 = load i32, ptr %status, align 4, !dbg !1106
  store i32 %39, ptr %retval, align 4, !dbg !1106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1106

cleanup:                                          ; preds = %cond.end, %if.then21, %sw.default, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %accessor_type) #5, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 4, ptr %function) #5, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_desc) #5, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #5, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 4, ptr %data_length) #5, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_length) #5, !dbg !1107
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1107
  %40 = load i32, ptr %retval, align 4, !dbg !1107
  ret i32 %40, !dbg !1107
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1108 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exserial.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exserial\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exserial.ll drivers/acpi/acpica/exserial.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !33, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exserial.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f7f5f60404bf03c2b8c8a332ff2a7e2")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 433, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/amlcode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d3d08f7f5f071008a4fa29b292f7f44b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "AML_FIELD_ATTRIB_QUICK", value: 2)
!10 = !DIEnumerator(name: "AML_FIELD_ATTRIB_SEND_RECEIVE", value: 4)
!11 = !DIEnumerator(name: "AML_FIELD_ATTRIB_BYTE", value: 6)
!12 = !DIEnumerator(name: "AML_FIELD_ATTRIB_WORD", value: 8)
!13 = !DIEnumerator(name: "AML_FIELD_ATTRIB_BLOCK", value: 10)
!14 = !DIEnumerator(name: "AML_FIELD_ATTRIB_BYTES", value: 11)
!15 = !DIEnumerator(name: "AML_FIELD_ATTRIB_PROCESS_CALL", value: 12)
!16 = !DIEnumerator(name: "AML_FIELD_ATTRIB_BLOCK_PROCESS_CALL", value: 13)
!17 = !DIEnumerator(name: "AML_FIELD_ATTRIB_RAW_BYTES", value: 14)
!18 = !DIEnumerator(name: "AML_FIELD_ATTRIB_RAW_PROCESS_BYTES", value: 15)
!19 = !{!20, !26, !30}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !22, line: 23, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !24, line: 31, baseType: !25)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!25 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !27, line: 421, baseType: !28)
!27 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !7)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !31, line: 42, baseType: !32)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !{!34, !40, !45, !0}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 520, elements: !38)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !{!39}
!39 = !DISubrange(count: 65)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 312, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 39)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !36, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 72, elements: !49)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!49 = !{!50}
!50 = !DISubrange(count: 9)
!51 = !{i32 7, !"Dwarf Version", i32 5}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 8, !"cf-protection-branch", i32 1}
!55 = !{i32 4, !"function_return_thunk_extern", i32 1}
!56 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!57 = !{i32 1, !"Code Model", i32 2}
!58 = !{i32 1, !"override-stack-alignment", i32 8}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = distinct !DISubprogram(name: "acpi_ex_read_gpio", scope: !3, file: !3, line: 32, type: !61, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !826)
!61 = !DISubroutineType(types: !62)
!62 = !{!26, !63, !164}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !65, line: 369, size: 576, elements: !66)
!65 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!66 = !{!67, !81, !94, !105, !141, !155, !165, !476, !493, !509, !522, !600, !612, !626, !636, !654, !676, !695, !714, !733, !746, !772, !789, !802, !816, !825}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !64, file: !65, line: 370, baseType: !68, size: 128)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !65, line: 73, size: 128, elements: !69)
!69 = !{!70, !71, !75, !76, !80}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !65, line: 74, baseType: !63, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !65, line: 74, baseType: !72, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !24, line: 21, baseType: !74)
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !65, line: 74, baseType: !72, size: 8, offset: 72)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !65, line: 74, baseType: !77, size: 16, offset: 80)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !79)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !65, line: 74, baseType: !72, size: 8, offset: 96)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !64, file: !65, line: 371, baseType: !82, size: 192)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !65, line: 76, size: 192, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !93}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !65, line: 77, baseType: !63, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !65, line: 77, baseType: !72, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !65, line: 77, baseType: !72, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !65, line: 77, baseType: !77, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !65, line: 77, baseType: !72, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !82, file: !65, line: 77, baseType: !90, size: 24, offset: 104)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 24, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !82, file: !65, line: 78, baseType: !21, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !64, file: !65, line: 372, baseType: !95, size: 256)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !65, line: 93, size: 256, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !104}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !95, file: !65, line: 94, baseType: !63, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !95, file: !65, line: 94, baseType: !72, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !95, file: !65, line: 94, baseType: !72, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !95, file: !65, line: 94, baseType: !77, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !65, line: 94, baseType: !72, size: 8, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !95, file: !65, line: 94, baseType: !103, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !95, file: !65, line: 94, baseType: !28, size: 32, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !64, file: !65, line: 373, baseType: !106, size: 384)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !65, line: 97, size: 384, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !115, !116, !117, !118}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !106, file: !65, line: 98, baseType: !63, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !106, file: !65, line: 98, baseType: !72, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !65, line: 98, baseType: !72, size: 8, offset: 72)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !106, file: !65, line: 98, baseType: !77, size: 16, offset: 80)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !65, line: 98, baseType: !72, size: 8, offset: 96)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !106, file: !65, line: 98, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !106, file: !65, line: 98, baseType: !28, size: 32, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !106, file: !65, line: 99, baseType: !28, size: 32, offset: 224)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !106, file: !65, line: 100, baseType: !114, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !106, file: !65, line: 101, baseType: !119, size: 64, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !121, line: 133, size: 384, elements: !122)
!121 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!122 = !{!123, !124, !125, !126, !127, !136, !137, !138, !139}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !120, file: !121, line: 134, baseType: !63, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !121, line: 135, baseType: !72, size: 8, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !121, line: 136, baseType: !72, size: 8, offset: 72)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !121, line: 137, baseType: !77, size: 16, offset: 80)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !120, file: !121, line: 138, baseType: !128, size: 32, offset: 96)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !129, line: 328, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !128, file: !129, line: 329, baseType: !28, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !128, file: !129, line: 330, baseType: !133, size: 32)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !120, file: !121, line: 139, baseType: !119, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !120, file: !121, line: 140, baseType: !119, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !120, file: !121, line: 141, baseType: !119, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !120, file: !121, line: 142, baseType: !140, size: 16, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !27, line: 445, baseType: !77)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !64, file: !65, line: 374, baseType: !142, size: 384)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !65, line: 104, size: 384, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !152, !153, !154}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !142, file: !65, line: 105, baseType: !63, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !65, line: 105, baseType: !72, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !65, line: 105, baseType: !72, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !142, file: !65, line: 105, baseType: !77, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !65, line: 105, baseType: !72, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !142, file: !65, line: 105, baseType: !119, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !142, file: !65, line: 106, baseType: !151, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !142, file: !65, line: 107, baseType: !114, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !142, file: !65, line: 108, baseType: !28, size: 32, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !142, file: !65, line: 109, baseType: !28, size: 32, offset: 352)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !64, file: !65, line: 375, baseType: !156, size: 192)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !65, line: 118, size: 192, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !156, file: !65, line: 119, baseType: !63, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !156, file: !65, line: 119, baseType: !72, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !65, line: 119, baseType: !72, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !156, file: !65, line: 119, baseType: !77, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !65, line: 119, baseType: !72, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !156, file: !65, line: 119, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !64, file: !65, line: 376, baseType: !166, size: 448)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !65, line: 144, size: 448, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !473, !474, !475}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !166, file: !65, line: 145, baseType: !63, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !166, file: !65, line: 145, baseType: !72, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !65, line: 145, baseType: !72, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !166, file: !65, line: 145, baseType: !77, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !65, line: 145, baseType: !72, size: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !166, file: !65, line: 145, baseType: !72, size: 8, offset: 104)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !166, file: !65, line: 146, baseType: !72, size: 8, offset: 112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !166, file: !65, line: 147, baseType: !72, size: 8, offset: 120)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !166, file: !65, line: 148, baseType: !63, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !166, file: !65, line: 149, baseType: !63, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !166, file: !65, line: 150, baseType: !114, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !166, file: !65, line: 154, baseType: !180, size: 64, offset: 320)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !65, line: 151, size: 64, elements: !181)
!181 = !{!182, !472}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !180, file: !65, line: 152, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !121, line: 248, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!26, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !189, line: 37, size: 9024, elements: !190)
!189 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !420, !421, !422, !423, !424, !428, !430, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !455, !456, !457, !458, !459, !460, !461, !462, !464, !470}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !189, line: 38, baseType: !187, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !189, line: 39, baseType: !72, size: 8, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !188, file: !189, line: 40, baseType: !72, size: 8, offset: 72)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !188, file: !189, line: 41, baseType: !77, size: 16, offset: 80)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !188, file: !189, line: 42, baseType: !72, size: 8, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !188, file: !189, line: 43, baseType: !72, size: 8, offset: 104)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !188, file: !189, line: 44, baseType: !72, size: 8, offset: 112)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !188, file: !189, line: 45, baseType: !140, size: 16, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !188, file: !189, line: 46, baseType: !72, size: 8, offset: 144)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !188, file: !189, line: 47, baseType: !72, size: 8, offset: 152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !188, file: !189, line: 48, baseType: !72, size: 8, offset: 160)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !188, file: !189, line: 49, baseType: !72, size: 8, offset: 168)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !188, file: !189, line: 50, baseType: !72, size: 8, offset: 176)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !188, file: !189, line: 51, baseType: !72, size: 8, offset: 184)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !188, file: !189, line: 52, baseType: !72, size: 8, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !188, file: !189, line: 53, baseType: !72, size: 8, offset: 200)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !188, file: !189, line: 54, baseType: !114, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !188, file: !189, line: 55, baseType: !28, size: 32, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !188, file: !189, line: 56, baseType: !28, size: 32, offset: 352)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !188, file: !189, line: 57, baseType: !28, size: 32, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !188, file: !189, line: 58, baseType: !28, size: 32, offset: 416)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !188, file: !189, line: 60, baseType: !213, size: 640, offset: 448)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !121, line: 909, size: 640, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !301, !302, !418, !419}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !213, file: !121, line: 910, baseType: !114, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !213, file: !121, line: 911, baseType: !114, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !213, file: !121, line: 912, baseType: !114, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !213, file: !121, line: 913, baseType: !114, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !213, file: !121, line: 914, baseType: !114, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !213, file: !121, line: 915, baseType: !221, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !121, line: 891, size: 1600, elements: !223)
!223 = !{!224, !244, !260}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !222, file: !121, line: 892, baseType: !225, size: 448)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !121, line: 844, size: 448, elements: !226)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234, !243}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !121, line: 845, baseType: !221, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !225, file: !121, line: 845, baseType: !72, size: 8, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !225, file: !121, line: 845, baseType: !72, size: 8, offset: 72)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !225, file: !121, line: 845, baseType: !77, size: 16, offset: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !225, file: !121, line: 845, baseType: !114, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !121, line: 845, baseType: !221, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !225, file: !121, line: 845, baseType: !119, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !225, file: !121, line: 845, baseType: !235, size: 64, offset: 320)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !121, line: 732, size: 64, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !235, file: !121, line: 733, baseType: !21, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !235, file: !121, line: 734, baseType: !28, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !235, file: !121, line: 735, baseType: !103, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !235, file: !121, line: 736, baseType: !114, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !121, line: 737, baseType: !103, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !235, file: !121, line: 738, baseType: !221, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !225, file: !121, line: 845, baseType: !72, size: 8, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !222, file: !121, line: 893, baseType: !245, size: 640)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !121, line: 851, size: 640, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !121, line: 852, baseType: !221, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !245, file: !121, line: 852, baseType: !72, size: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !245, file: !121, line: 852, baseType: !72, size: 8, offset: 72)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !245, file: !121, line: 852, baseType: !77, size: 16, offset: 80)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !245, file: !121, line: 852, baseType: !114, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !121, line: 852, baseType: !221, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !245, file: !121, line: 852, baseType: !119, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !245, file: !121, line: 852, baseType: !235, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !245, file: !121, line: 852, baseType: !72, size: 8, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !245, file: !121, line: 852, baseType: !103, size: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !245, file: !121, line: 853, baseType: !114, size: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !245, file: !121, line: 854, baseType: !28, size: 32, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !121, line: 855, baseType: !28, size: 32, offset: 608)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !222, file: !121, line: 894, baseType: !261, size: 1600)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !121, line: 862, size: 1600, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !261, file: !121, line: 863, baseType: !221, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !261, file: !121, line: 863, baseType: !72, size: 8, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !121, line: 863, baseType: !72, size: 8, offset: 72)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !261, file: !121, line: 863, baseType: !77, size: 16, offset: 80)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !261, file: !121, line: 863, baseType: !114, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !121, line: 863, baseType: !221, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !261, file: !121, line: 863, baseType: !119, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !261, file: !121, line: 863, baseType: !235, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !261, file: !121, line: 863, baseType: !72, size: 8, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !261, file: !121, line: 863, baseType: !221, size: 64, offset: 448)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !261, file: !121, line: 864, baseType: !221, size: 64, offset: 512)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !261, file: !121, line: 865, baseType: !103, size: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !261, file: !121, line: 866, baseType: !72, size: 8, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !261, file: !121, line: 867, baseType: !103, size: 64, offset: 704)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !261, file: !121, line: 868, baseType: !103, size: 64, offset: 768)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !261, file: !121, line: 869, baseType: !103, size: 64, offset: 832)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !261, file: !121, line: 870, baseType: !133, size: 32, offset: 896)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !261, file: !121, line: 871, baseType: !28, size: 32, offset: 928)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !261, file: !121, line: 872, baseType: !28, size: 32, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !261, file: !121, line: 873, baseType: !28, size: 32, offset: 992)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !261, file: !121, line: 874, baseType: !28, size: 32, offset: 1024)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !261, file: !121, line: 875, baseType: !28, size: 32, offset: 1056)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !261, file: !121, line: 876, baseType: !28, size: 32, offset: 1088)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !261, file: !121, line: 877, baseType: !28, size: 32, offset: 1120)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !261, file: !121, line: 878, baseType: !28, size: 32, offset: 1152)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !261, file: !121, line: 879, baseType: !28, size: 32, offset: 1184)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !261, file: !121, line: 880, baseType: !28, size: 32, offset: 1216)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !261, file: !121, line: 881, baseType: !28, size: 32, offset: 1248)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !261, file: !121, line: 882, baseType: !28, size: 32, offset: 1280)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !261, file: !121, line: 883, baseType: !28, size: 32, offset: 1312)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !261, file: !121, line: 884, baseType: !77, size: 16, offset: 1344)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !261, file: !121, line: 885, baseType: !72, size: 8, offset: 1360)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !261, file: !121, line: 886, baseType: !72, size: 8, offset: 1368)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !261, file: !121, line: 887, baseType: !72, size: 8, offset: 1376)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !261, file: !121, line: 888, baseType: !298, size: 160, offset: 1384)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 20)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !213, file: !121, line: 916, baseType: !119, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !213, file: !121, line: 917, baseType: !303, size: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !121, line: 679, size: 640, elements: !305)
!305 = !{!306, !314, !327, !336, !345, !358, !372, !384, !396}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !304, file: !121, line: 680, baseType: !307, size: 128)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !121, line: 575, size: 128, elements: !308)
!308 = !{!309, !310, !311, !312, !313}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !121, line: 576, baseType: !164, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !307, file: !121, line: 576, baseType: !72, size: 8, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !121, line: 576, baseType: !72, size: 8, offset: 72)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !307, file: !121, line: 576, baseType: !77, size: 16, offset: 80)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !307, file: !121, line: 576, baseType: !77, size: 16, offset: 96)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !304, file: !121, line: 681, baseType: !315, size: 384)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !121, line: 604, size: 384, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !121, line: 605, baseType: !164, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !121, line: 605, baseType: !72, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !121, line: 605, baseType: !72, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !121, line: 605, baseType: !77, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !121, line: 605, baseType: !77, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !315, file: !121, line: 606, baseType: !77, size: 16, offset: 112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !315, file: !121, line: 607, baseType: !221, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !315, file: !121, line: 608, baseType: !114, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !315, file: !121, line: 609, baseType: !114, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !315, file: !121, line: 610, baseType: !21, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !304, file: !121, line: 682, baseType: !328, size: 192)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !121, line: 582, size: 192, elements: !329)
!329 = !{!330, !331, !332, !333, !334, !335}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !121, line: 583, baseType: !164, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !328, file: !121, line: 583, baseType: !72, size: 8, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !121, line: 583, baseType: !72, size: 8, offset: 72)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !328, file: !121, line: 583, baseType: !77, size: 16, offset: 80)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !328, file: !121, line: 583, baseType: !77, size: 16, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !328, file: !121, line: 584, baseType: !63, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !304, file: !121, line: 683, baseType: !337, size: 192)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !121, line: 616, size: 192, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !121, line: 617, baseType: !164, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !121, line: 617, baseType: !72, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !121, line: 617, baseType: !72, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !337, file: !121, line: 617, baseType: !77, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !121, line: 617, baseType: !77, size: 16, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !337, file: !121, line: 618, baseType: !119, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !304, file: !121, line: 684, baseType: !346, size: 448)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !121, line: 621, size: 448, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !121, line: 622, baseType: !164, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !121, line: 622, baseType: !72, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !121, line: 622, baseType: !72, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !121, line: 622, baseType: !77, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !121, line: 622, baseType: !77, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !346, file: !121, line: 623, baseType: !28, size: 32, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !346, file: !121, line: 624, baseType: !221, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !346, file: !121, line: 625, baseType: !114, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !346, file: !121, line: 626, baseType: !114, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !346, file: !121, line: 627, baseType: !28, size: 32, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !304, file: !121, line: 685, baseType: !359, size: 512)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !121, line: 590, size: 512, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !121, line: 591, baseType: !164, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !121, line: 591, baseType: !72, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !121, line: 591, baseType: !72, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !121, line: 591, baseType: !77, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !121, line: 591, baseType: !77, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !359, file: !121, line: 592, baseType: !28, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !359, file: !121, line: 593, baseType: !63, size: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !359, file: !121, line: 594, baseType: !63, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !359, file: !121, line: 595, baseType: !187, size: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !359, file: !121, line: 596, baseType: !164, size: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !359, file: !121, line: 597, baseType: !28, size: 32, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !304, file: !121, line: 686, baseType: !373, size: 320)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !121, line: 634, size: 320, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !121, line: 635, baseType: !164, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !373, file: !121, line: 635, baseType: !72, size: 8, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !121, line: 635, baseType: !72, size: 8, offset: 72)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !373, file: !121, line: 635, baseType: !77, size: 16, offset: 80)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !373, file: !121, line: 635, baseType: !77, size: 16, offset: 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !373, file: !121, line: 636, baseType: !72, size: 8, offset: 112)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !373, file: !121, line: 637, baseType: !187, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !373, file: !121, line: 638, baseType: !63, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !373, file: !121, line: 639, baseType: !21, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !304, file: !121, line: 687, baseType: !385, size: 640)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !121, line: 646, size: 640, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !121, line: 647, baseType: !164, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !385, file: !121, line: 647, baseType: !72, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !121, line: 647, baseType: !72, size: 8, offset: 72)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !385, file: !121, line: 647, baseType: !77, size: 16, offset: 80)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !385, file: !121, line: 647, baseType: !77, size: 16, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !385, file: !121, line: 648, baseType: !393, size: 512, offset: 128)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 512, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 8)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !304, file: !121, line: 688, baseType: !397, size: 320)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !121, line: 669, size: 320, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !121, line: 670, baseType: !164, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !397, file: !121, line: 670, baseType: !72, size: 8, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !121, line: 670, baseType: !72, size: 8, offset: 72)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !397, file: !121, line: 670, baseType: !77, size: 16, offset: 80)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !397, file: !121, line: 670, baseType: !77, size: 16, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !397, file: !121, line: 671, baseType: !72, size: 8, offset: 112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !397, file: !121, line: 672, baseType: !119, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !397, file: !121, line: 673, baseType: !63, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !397, file: !121, line: 674, baseType: !408, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !121, line: 660, size: 128, elements: !410)
!410 = !{!411, !417}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !409, file: !121, line: 661, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !27, line: 1061, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416, !28, !164}
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !27, line: 424, baseType: !164)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !409, file: !121, line: 662, baseType: !164, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !213, file: !121, line: 918, baseType: !221, size: 64, offset: 512)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !213, file: !121, line: 919, baseType: !28, size: 32, offset: 576)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !188, file: !189, line: 61, baseType: !28, size: 32, offset: 1088)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !188, file: !189, line: 62, baseType: !28, size: 32, offset: 1120)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !188, file: !189, line: 63, baseType: !77, size: 16, offset: 1152)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !188, file: !189, line: 64, baseType: !72, size: 8, offset: 1168)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !188, file: !189, line: 66, baseType: !425, size: 2688, offset: 1216)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 2688, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 7)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !188, file: !189, line: 67, baseType: !429, size: 3072, offset: 3904)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 3072, elements: !394)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !188, file: !189, line: 68, baseType: !431, size: 576, offset: 6976)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 576, elements: !49)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !188, file: !189, line: 69, baseType: !151, size: 64, offset: 7552)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !188, file: !189, line: 71, baseType: !114, size: 64, offset: 7616)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !188, file: !189, line: 72, baseType: !151, size: 64, offset: 7680)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !188, file: !189, line: 73, baseType: !303, size: 64, offset: 7744)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !188, file: !189, line: 74, baseType: !119, size: 64, offset: 7808)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !188, file: !189, line: 75, baseType: !63, size: 64, offset: 7872)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !188, file: !189, line: 76, baseType: !119, size: 64, offset: 7936)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !188, file: !189, line: 77, baseType: !221, size: 64, offset: 8000)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !188, file: !189, line: 78, baseType: !63, size: 64, offset: 8064)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !188, file: !189, line: 79, baseType: !119, size: 64, offset: 8128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !188, file: !189, line: 80, baseType: !103, size: 64, offset: 8192)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !188, file: !189, line: 81, baseType: !221, size: 64, offset: 8256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !188, file: !189, line: 82, baseType: !445, size: 64, offset: 8320)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !121, line: 718, size: 128, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !447, file: !121, line: 722, baseType: !28, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !447, file: !121, line: 723, baseType: !28, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !121, line: 724, baseType: !77, size: 16, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !447, file: !121, line: 725, baseType: !72, size: 8, offset: 80)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !447, file: !121, line: 726, baseType: !72, size: 8, offset: 88)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !121, line: 727, baseType: !72, size: 8, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !188, file: !189, line: 83, baseType: !221, size: 64, offset: 8384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !188, file: !189, line: 84, baseType: !63, size: 64, offset: 8448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !188, file: !189, line: 85, baseType: !303, size: 64, offset: 8512)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !188, file: !189, line: 86, baseType: !63, size: 64, offset: 8576)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !188, file: !189, line: 87, baseType: !303, size: 64, offset: 8640)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !188, file: !189, line: 88, baseType: !221, size: 64, offset: 8704)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !188, file: !189, line: 89, baseType: !221, size: 64, offset: 8768)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !188, file: !189, line: 90, baseType: !463, size: 64, offset: 8832)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !188, file: !189, line: 91, baseType: !465, size: 64, offset: 8896)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !121, line: 652, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!26, !187, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !188, file: !189, line: 92, baseType: !471, size: 64, offset: 8960)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !121, line: 656, baseType: !184)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !180, file: !65, line: 153, baseType: !63, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !166, file: !65, line: 156, baseType: !28, size: 32, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !166, file: !65, line: 157, baseType: !140, size: 16, offset: 416)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !166, file: !65, line: 158, baseType: !72, size: 8, offset: 432)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !64, file: !65, line: 377, baseType: !477, size: 576)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !65, line: 122, size: 576, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !477, file: !65, line: 123, baseType: !63, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !477, file: !65, line: 123, baseType: !72, size: 8, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !477, file: !65, line: 123, baseType: !72, size: 8, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !477, file: !65, line: 123, baseType: !77, size: 16, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !65, line: 123, baseType: !72, size: 8, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !477, file: !65, line: 123, baseType: !72, size: 8, offset: 104)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !477, file: !65, line: 124, baseType: !77, size: 16, offset: 112)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !477, file: !65, line: 125, baseType: !164, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !477, file: !65, line: 126, baseType: !21, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !477, file: !65, line: 127, baseType: !463, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !477, file: !65, line: 128, baseType: !63, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !65, line: 129, baseType: !63, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !65, line: 130, baseType: !119, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !477, file: !65, line: 131, baseType: !72, size: 8, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !64, file: !65, line: 378, baseType: !494, size: 512)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !65, line: 134, size: 512, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !507, !508}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !494, file: !65, line: 135, baseType: !63, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !494, file: !65, line: 135, baseType: !72, size: 8, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !494, file: !65, line: 135, baseType: !72, size: 8, offset: 72)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !494, file: !65, line: 135, baseType: !77, size: 16, offset: 80)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !65, line: 135, baseType: !72, size: 8, offset: 96)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !494, file: !65, line: 135, baseType: !72, size: 8, offset: 104)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !494, file: !65, line: 136, baseType: !119, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !494, file: !65, line: 137, baseType: !63, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !494, file: !65, line: 138, baseType: !63, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !494, file: !65, line: 139, baseType: !506, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !27, line: 129, baseType: !21)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !494, file: !65, line: 140, baseType: !28, size: 32, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !494, file: !65, line: 141, baseType: !164, size: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !64, file: !65, line: 379, baseType: !510, size: 320)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !65, line: 185, size: 320, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !521}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !510, file: !65, line: 186, baseType: !63, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !510, file: !65, line: 186, baseType: !72, size: 8, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !65, line: 186, baseType: !72, size: 8, offset: 72)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !510, file: !65, line: 186, baseType: !77, size: 16, offset: 80)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !510, file: !65, line: 186, baseType: !72, size: 8, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !510, file: !65, line: 186, baseType: !518, size: 128, offset: 128)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 2)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !510, file: !65, line: 186, baseType: !63, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !64, file: !65, line: 380, baseType: !523, size: 384)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !65, line: 188, size: 384, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !523, file: !65, line: 189, baseType: !63, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !523, file: !65, line: 189, baseType: !72, size: 8, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !523, file: !65, line: 189, baseType: !72, size: 8, offset: 72)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !523, file: !65, line: 189, baseType: !77, size: 16, offset: 80)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !65, line: 189, baseType: !72, size: 8, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !523, file: !65, line: 190, baseType: !518, size: 128, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !523, file: !65, line: 190, baseType: !63, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !523, file: !65, line: 190, baseType: !533, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !121, line: 480, size: 576, elements: !535)
!535 = !{!536, !537, !538, !539, !547, !562, !594, !595, !596, !597, !598, !599}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !534, file: !121, line: 481, baseType: !119, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !534, file: !121, line: 482, baseType: !533, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !121, line: 483, baseType: !533, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !534, file: !121, line: 484, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !121, line: 497, size: 256, elements: !542)
!542 = !{!543, !544, !545, !546}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !541, file: !121, line: 498, baseType: !540, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !121, line: 499, baseType: !540, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !541, file: !121, line: 500, baseType: !533, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !541, file: !121, line: 501, baseType: !28, size: 32, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !534, file: !121, line: 485, baseType: !548, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !121, line: 466, size: 320, elements: !550)
!550 = !{!551, !556, !557, !558, !559, !560, !561}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !549, file: !121, line: 467, baseType: !552, size: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !121, line: 459, size: 128, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !552, file: !121, line: 460, baseType: !72, size: 8)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !552, file: !121, line: 461, baseType: !21, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !549, file: !121, line: 468, baseType: !552, size: 128, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !549, file: !121, line: 469, baseType: !77, size: 16, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !549, file: !121, line: 470, baseType: !72, size: 8, offset: 272)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !549, file: !121, line: 471, baseType: !72, size: 8, offset: 280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !549, file: !121, line: 472, baseType: !72, size: 8, offset: 288)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !549, file: !121, line: 473, baseType: !72, size: 8, offset: 296)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !534, file: !121, line: 486, baseType: !563, size: 64, offset: 320)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !121, line: 448, size: 192, elements: !565)
!565 = !{!566, !589, !590, !591, !592, !593}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !564, file: !121, line: 449, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !121, line: 438, size: 64, elements: !568)
!568 = !{!569, !570, !583}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !567, file: !121, line: 439, baseType: !119, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !567, file: !121, line: 440, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !121, line: 419, size: 256, elements: !573)
!573 = !{!574, !579, !580, !581, !582}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !572, file: !121, line: 420, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !27, line: 1058, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!28, !416, !28, !164}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !572, file: !121, line: 421, baseType: !164, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !572, file: !121, line: 422, baseType: !119, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !572, file: !121, line: 423, baseType: !72, size: 8, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !572, file: !121, line: 424, baseType: !72, size: 8, offset: 200)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !567, file: !121, line: 441, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !121, line: 429, size: 128, elements: !586)
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !585, file: !121, line: 430, baseType: !119, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !585, file: !121, line: 431, baseType: !584, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !564, file: !121, line: 450, baseType: !548, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !121, line: 451, baseType: !72, size: 8, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !564, file: !121, line: 452, baseType: !72, size: 8, offset: 136)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !564, file: !121, line: 453, baseType: !72, size: 8, offset: 144)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !564, file: !121, line: 454, baseType: !72, size: 8, offset: 152)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !534, file: !121, line: 487, baseType: !21, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !534, file: !121, line: 488, baseType: !28, size: 32, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !534, file: !121, line: 489, baseType: !77, size: 16, offset: 480)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !534, file: !121, line: 490, baseType: !77, size: 16, offset: 496)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !534, file: !121, line: 491, baseType: !72, size: 8, offset: 512)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !534, file: !121, line: 492, baseType: !72, size: 8, offset: 520)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !64, file: !65, line: 381, baseType: !601, size: 384)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !65, line: 193, size: 384, elements: !602)
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !601, file: !65, line: 194, baseType: !63, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !601, file: !65, line: 194, baseType: !72, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !65, line: 194, baseType: !72, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !601, file: !65, line: 194, baseType: !77, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !65, line: 194, baseType: !72, size: 8, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !601, file: !65, line: 194, baseType: !518, size: 128, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !601, file: !65, line: 194, baseType: !63, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !601, file: !65, line: 194, baseType: !28, size: 32, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !601, file: !65, line: 195, baseType: !28, size: 32, offset: 352)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !64, file: !65, line: 382, baseType: !613, size: 384)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !65, line: 198, size: 384, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !65, line: 199, baseType: !63, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !65, line: 199, baseType: !72, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !65, line: 199, baseType: !72, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !65, line: 199, baseType: !77, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !65, line: 199, baseType: !72, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !613, file: !65, line: 201, baseType: !72, size: 8, offset: 104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !613, file: !65, line: 202, baseType: !72, size: 8, offset: 112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !613, file: !65, line: 203, baseType: !518, size: 128, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !613, file: !65, line: 203, baseType: !63, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !613, file: !65, line: 203, baseType: !625, size: 64, offset: 320)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !27, line: 128, baseType: !21)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !64, file: !65, line: 383, baseType: !627, size: 320)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !65, line: 206, size: 320, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !627, file: !65, line: 207, baseType: !63, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !627, file: !65, line: 207, baseType: !72, size: 8, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !627, file: !65, line: 207, baseType: !72, size: 8, offset: 72)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !627, file: !65, line: 207, baseType: !77, size: 16, offset: 80)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !65, line: 207, baseType: !72, size: 8, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !627, file: !65, line: 207, baseType: !518, size: 128, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !627, file: !65, line: 207, baseType: !63, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !64, file: !65, line: 384, baseType: !637, size: 384)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !65, line: 234, size: 384, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !637, file: !65, line: 235, baseType: !63, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !637, file: !65, line: 235, baseType: !72, size: 8, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !637, file: !65, line: 235, baseType: !72, size: 8, offset: 72)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !637, file: !65, line: 235, baseType: !77, size: 16, offset: 80)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !637, file: !65, line: 235, baseType: !72, size: 8, offset: 96)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !637, file: !65, line: 235, baseType: !72, size: 8, offset: 104)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !637, file: !65, line: 235, baseType: !72, size: 8, offset: 112)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !637, file: !65, line: 235, baseType: !72, size: 8, offset: 120)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !65, line: 235, baseType: !119, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !637, file: !65, line: 235, baseType: !28, size: 32, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !637, file: !65, line: 235, baseType: !28, size: 32, offset: 224)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !637, file: !65, line: 235, baseType: !28, size: 32, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !637, file: !65, line: 235, baseType: !72, size: 8, offset: 288)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !637, file: !65, line: 235, baseType: !72, size: 8, offset: 296)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !637, file: !65, line: 235, baseType: !63, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !64, file: !65, line: 385, baseType: !655, size: 576)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !65, line: 238, size: 576, elements: !656)
!656 = !{!657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !655, file: !65, line: 239, baseType: !63, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !655, file: !65, line: 239, baseType: !72, size: 8, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !65, line: 239, baseType: !72, size: 8, offset: 72)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !655, file: !65, line: 239, baseType: !77, size: 16, offset: 80)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !655, file: !65, line: 239, baseType: !72, size: 8, offset: 96)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !655, file: !65, line: 239, baseType: !72, size: 8, offset: 104)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !655, file: !65, line: 239, baseType: !72, size: 8, offset: 112)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !655, file: !65, line: 239, baseType: !72, size: 8, offset: 120)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !655, file: !65, line: 239, baseType: !119, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !655, file: !65, line: 239, baseType: !28, size: 32, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !655, file: !65, line: 239, baseType: !28, size: 32, offset: 224)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !655, file: !65, line: 239, baseType: !28, size: 32, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !655, file: !65, line: 239, baseType: !72, size: 8, offset: 288)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !655, file: !65, line: 239, baseType: !72, size: 8, offset: 296)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !655, file: !65, line: 239, baseType: !77, size: 16, offset: 304)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !655, file: !65, line: 240, baseType: !63, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !655, file: !65, line: 241, baseType: !114, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !655, file: !65, line: 242, baseType: !77, size: 16, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !655, file: !65, line: 243, baseType: !114, size: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !64, file: !65, line: 386, baseType: !677, size: 384)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !65, line: 263, size: 384, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !65, line: 264, baseType: !63, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !65, line: 264, baseType: !72, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !65, line: 264, baseType: !72, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !65, line: 264, baseType: !77, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !65, line: 264, baseType: !72, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !677, file: !65, line: 264, baseType: !72, size: 8, offset: 104)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !677, file: !65, line: 264, baseType: !72, size: 8, offset: 112)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !677, file: !65, line: 264, baseType: !72, size: 8, offset: 120)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !677, file: !65, line: 264, baseType: !119, size: 64, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !677, file: !65, line: 264, baseType: !28, size: 32, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !677, file: !65, line: 264, baseType: !28, size: 32, offset: 224)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !677, file: !65, line: 264, baseType: !28, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !677, file: !65, line: 264, baseType: !72, size: 8, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !677, file: !65, line: 264, baseType: !72, size: 8, offset: 296)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !677, file: !65, line: 264, baseType: !72, size: 8, offset: 304)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !677, file: !65, line: 265, baseType: !63, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !64, file: !65, line: 387, baseType: !696, size: 448)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !65, line: 246, size: 448, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !65, line: 247, baseType: !63, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !65, line: 247, baseType: !72, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !65, line: 247, baseType: !72, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !65, line: 247, baseType: !77, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !65, line: 247, baseType: !72, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !696, file: !65, line: 247, baseType: !72, size: 8, offset: 104)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !696, file: !65, line: 247, baseType: !72, size: 8, offset: 112)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !696, file: !65, line: 247, baseType: !72, size: 8, offset: 120)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !696, file: !65, line: 247, baseType: !119, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !696, file: !65, line: 247, baseType: !28, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !696, file: !65, line: 247, baseType: !28, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !696, file: !65, line: 247, baseType: !28, size: 32, offset: 256)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !696, file: !65, line: 247, baseType: !72, size: 8, offset: 288)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !696, file: !65, line: 247, baseType: !72, size: 8, offset: 296)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !696, file: !65, line: 247, baseType: !63, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !696, file: !65, line: 248, baseType: !63, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !64, file: !65, line: 388, baseType: !715, size: 448)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !65, line: 251, size: 448, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !65, line: 252, baseType: !63, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !65, line: 252, baseType: !72, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !65, line: 252, baseType: !72, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !65, line: 252, baseType: !77, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !65, line: 252, baseType: !72, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !715, file: !65, line: 252, baseType: !72, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !715, file: !65, line: 252, baseType: !72, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !715, file: !65, line: 252, baseType: !72, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !65, line: 252, baseType: !119, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !715, file: !65, line: 252, baseType: !28, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !715, file: !65, line: 252, baseType: !28, size: 32, offset: 224)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !65, line: 252, baseType: !28, size: 32, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !715, file: !65, line: 252, baseType: !72, size: 8, offset: 288)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !715, file: !65, line: 252, baseType: !72, size: 8, offset: 296)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !715, file: !65, line: 257, baseType: !63, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !715, file: !65, line: 258, baseType: !63, size: 64, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !64, file: !65, line: 389, baseType: !734, size: 512)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !65, line: 274, size: 512, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !734, file: !65, line: 275, baseType: !63, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !734, file: !65, line: 275, baseType: !72, size: 8, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !65, line: 275, baseType: !72, size: 8, offset: 72)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !734, file: !65, line: 275, baseType: !77, size: 16, offset: 80)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !65, line: 275, baseType: !72, size: 8, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !734, file: !65, line: 275, baseType: !119, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !734, file: !65, line: 276, baseType: !28, size: 32, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !734, file: !65, line: 277, baseType: !412, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !734, file: !65, line: 278, baseType: !164, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !65, line: 279, baseType: !518, size: 128, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !64, file: !65, line: 390, baseType: !747, size: 576)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !65, line: 282, size: 576, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !761, !762, !763, !764, !770, !771}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !747, file: !65, line: 283, baseType: !63, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !65, line: 283, baseType: !72, size: 8, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !65, line: 283, baseType: !72, size: 8, offset: 72)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !747, file: !65, line: 283, baseType: !77, size: 16, offset: 80)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !65, line: 283, baseType: !72, size: 8, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !747, file: !65, line: 283, baseType: !72, size: 8, offset: 104)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !747, file: !65, line: 284, baseType: !72, size: 8, offset: 112)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !747, file: !65, line: 285, baseType: !757, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !27, line: 1093, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!26, !28, !506, !28, !20, !164, !164}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !747, file: !65, line: 286, baseType: !119, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !747, file: !65, line: 287, baseType: !164, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !747, file: !65, line: 288, baseType: !164, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !747, file: !65, line: 289, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !27, line: 1126, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!26, !416, !28, !164, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !747, file: !65, line: 290, baseType: !63, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !65, line: 291, baseType: !63, size: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !64, file: !65, line: 391, baseType: !773, size: 512)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !65, line: 309, size: 512, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !773, file: !65, line: 310, baseType: !63, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !773, file: !65, line: 310, baseType: !72, size: 8, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !773, file: !65, line: 310, baseType: !72, size: 8, offset: 72)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !773, file: !65, line: 310, baseType: !77, size: 16, offset: 80)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !773, file: !65, line: 310, baseType: !72, size: 8, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !773, file: !65, line: 310, baseType: !72, size: 8, offset: 104)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !773, file: !65, line: 311, baseType: !72, size: 8, offset: 112)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !773, file: !65, line: 312, baseType: !72, size: 8, offset: 120)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !773, file: !65, line: 313, baseType: !164, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !773, file: !65, line: 314, baseType: !119, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !773, file: !65, line: 315, baseType: !151, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !773, file: !65, line: 316, baseType: !114, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !773, file: !65, line: 317, baseType: !114, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !773, file: !65, line: 318, baseType: !28, size: 32, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !64, file: !65, line: 392, baseType: !790, size: 448)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !65, line: 342, size: 448, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !65, line: 343, baseType: !63, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !65, line: 343, baseType: !72, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !65, line: 343, baseType: !72, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !65, line: 343, baseType: !77, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !65, line: 343, baseType: !72, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !790, file: !65, line: 343, baseType: !119, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !790, file: !65, line: 344, baseType: !119, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !790, file: !65, line: 345, baseType: !164, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !790, file: !65, line: 346, baseType: !114, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !790, file: !65, line: 347, baseType: !28, size: 32, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !64, file: !65, line: 393, baseType: !803, size: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !65, line: 352, size: 256, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !815}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !803, file: !65, line: 353, baseType: !63, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !803, file: !65, line: 353, baseType: !72, size: 8, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !65, line: 353, baseType: !72, size: 8, offset: 72)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !803, file: !65, line: 353, baseType: !77, size: 16, offset: 80)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !65, line: 353, baseType: !72, size: 8, offset: 96)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !803, file: !65, line: 353, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !27, line: 1064, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !416, !164}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !803, file: !65, line: 354, baseType: !164, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !64, file: !65, line: 394, baseType: !817, size: 192)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !65, line: 359, size: 192, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !817, file: !65, line: 360, baseType: !63, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !817, file: !65, line: 360, baseType: !72, size: 8, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !817, file: !65, line: 360, baseType: !72, size: 8, offset: 72)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !817, file: !65, line: 360, baseType: !77, size: 16, offset: 80)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !65, line: 360, baseType: !72, size: 8, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !65, line: 360, baseType: !63, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !64, file: !65, line: 401, baseType: !120, size: 384)
!826 = !{!827, !828, !829}
!827 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !60, file: !3, line: 32, type: !63)
!828 = !DILocalVariable(name: "buffer", arg: 2, scope: !60, file: !3, line: 32, type: !164)
!829 = !DILocalVariable(name: "status", scope: !60, file: !3, line: 34, type: !26)
!830 = !DILocation(line: 32, column: 58, scope: !60)
!831 = !DILocation(line: 32, column: 74, scope: !60)
!832 = !DILocation(line: 34, column: 2, scope: !60)
!833 = !DILocation(line: 34, column: 14, scope: !60)
!834 = !DILocation(line: 51, column: 30, scope: !60)
!835 = !DILocation(line: 51, column: 53, scope: !60)
!836 = !DILocation(line: 51, column: 2, scope: !60)
!837 = !DILocation(line: 55, column: 33, scope: !60)
!838 = !DILocation(line: 55, column: 53, scope: !60)
!839 = !DILocation(line: 55, column: 11, scope: !60)
!840 = !DILocation(line: 55, column: 9, scope: !60)
!841 = !DILocation(line: 57, column: 30, scope: !60)
!842 = !DILocation(line: 57, column: 53, scope: !60)
!843 = !DILocation(line: 57, column: 2, scope: !60)
!844 = !DILocation(line: 58, column: 2, scope: !60)
!845 = !DILocation(line: 59, column: 1, scope: !60)
!846 = !DISubprogram(name: "acpi_ex_acquire_global_lock", scope: !847, file: !847, line: 470, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!848 = !DISubroutineType(types: !849)
!849 = !{null, !28}
!850 = !DISubprogram(name: "acpi_ex_access_region", scope: !847, file: !847, line: 172, type: !851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!851 = !DISubroutineType(types: !852)
!852 = !{!26, !63, !28, !20, !28}
!853 = !DISubprogram(name: "acpi_ex_release_global_lock", scope: !847, file: !847, line: 472, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!854 = distinct !DISubprogram(name: "acpi_ex_write_gpio", scope: !3, file: !3, line: 78, type: !855, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{!26, !63, !63, !151}
!857 = !{!858, !859, !860, !861, !862}
!858 = !DILocalVariable(name: "source_desc", arg: 1, scope: !854, file: !3, line: 78, type: !63)
!859 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !854, file: !3, line: 79, type: !63)
!860 = !DILocalVariable(name: "return_buffer", arg: 3, scope: !854, file: !3, line: 80, type: !151)
!861 = !DILocalVariable(name: "status", scope: !854, file: !3, line: 82, type: !26)
!862 = !DILocalVariable(name: "buffer", scope: !854, file: !3, line: 83, type: !164)
!863 = !DILocation(line: 78, column: 47, scope: !854)
!864 = !DILocation(line: 79, column: 33, scope: !854)
!865 = !DILocation(line: 80, column: 34, scope: !854)
!866 = !DILocation(line: 82, column: 2, scope: !854)
!867 = !DILocation(line: 82, column: 14, scope: !854)
!868 = !DILocation(line: 83, column: 2, scope: !854)
!869 = !DILocation(line: 83, column: 8, scope: !854)
!870 = !DILocation(line: 95, column: 6, scope: !871)
!871 = distinct !DILexicalBlock(scope: !854, file: !3, line: 95, column: 6)
!872 = !DILocation(line: 95, column: 26, scope: !871)
!873 = !DILocation(line: 95, column: 31, scope: !871)
!874 = !DILocation(line: 95, column: 6, scope: !854)
!875 = !DILocation(line: 96, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !3, line: 95, column: 53)
!877 = !DILocation(line: 107, column: 12, scope: !854)
!878 = !DILocation(line: 107, column: 33, scope: !854)
!879 = !DILocation(line: 107, column: 9, scope: !854)
!880 = !DILocation(line: 111, column: 30, scope: !854)
!881 = !DILocation(line: 111, column: 53, scope: !854)
!882 = !DILocation(line: 111, column: 2, scope: !854)
!883 = !DILocation(line: 115, column: 33, scope: !854)
!884 = !DILocation(line: 115, column: 53, scope: !854)
!885 = !DILocation(line: 115, column: 11, scope: !854)
!886 = !DILocation(line: 115, column: 9, scope: !854)
!887 = !DILocation(line: 116, column: 30, scope: !854)
!888 = !DILocation(line: 116, column: 53, scope: !854)
!889 = !DILocation(line: 116, column: 2, scope: !854)
!890 = !DILocation(line: 117, column: 2, scope: !854)
!891 = !DILocation(line: 118, column: 1, scope: !854)
!892 = distinct !DISubprogram(name: "acpi_ex_read_serial_bus", scope: !3, file: !3, line: 135, type: !893, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{!26, !63, !151}
!895 = !{!896, !897, !898, !899, !900, !901, !902}
!896 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !892, file: !3, line: 135, type: !63)
!897 = !DILocalVariable(name: "return_buffer", arg: 2, scope: !892, file: !3, line: 136, type: !151)
!898 = !DILocalVariable(name: "status", scope: !892, file: !3, line: 138, type: !26)
!899 = !DILocalVariable(name: "buffer_length", scope: !892, file: !3, line: 139, type: !28)
!900 = !DILocalVariable(name: "buffer_desc", scope: !892, file: !3, line: 140, type: !63)
!901 = !DILocalVariable(name: "function", scope: !892, file: !3, line: 141, type: !28)
!902 = !DILocalVariable(name: "accessor_type", scope: !892, file: !3, line: 142, type: !77)
!903 = !DILocation(line: 135, column: 52, scope: !892)
!904 = !DILocation(line: 136, column: 32, scope: !892)
!905 = !DILocation(line: 138, column: 2, scope: !892)
!906 = !DILocation(line: 138, column: 14, scope: !892)
!907 = !DILocation(line: 139, column: 2, scope: !892)
!908 = !DILocation(line: 139, column: 6, scope: !892)
!909 = !DILocation(line: 140, column: 2, scope: !892)
!910 = !DILocation(line: 140, column: 29, scope: !892)
!911 = !DILocation(line: 141, column: 2, scope: !892)
!912 = !DILocation(line: 141, column: 6, scope: !892)
!913 = !DILocation(line: 142, column: 2, scope: !892)
!914 = !DILocation(line: 142, column: 6, scope: !892)
!915 = !DILocation(line: 158, column: 10, scope: !892)
!916 = !DILocation(line: 158, column: 26, scope: !892)
!917 = !DILocation(line: 158, column: 45, scope: !892)
!918 = !DILocation(line: 158, column: 2, scope: !892)
!919 = !DILocation(line: 161, column: 17, scope: !920)
!920 = distinct !DILexicalBlock(scope: !892, file: !3, line: 158, column: 55)
!921 = !DILocation(line: 162, column: 27, scope: !920)
!922 = !DILocation(line: 162, column: 43, scope: !920)
!923 = !DILocation(line: 162, column: 53, scope: !920)
!924 = !DILocation(line: 162, column: 24, scope: !920)
!925 = !DILocation(line: 162, column: 12, scope: !920)
!926 = !DILocation(line: 163, column: 3, scope: !920)
!927 = !DILocation(line: 167, column: 17, scope: !920)
!928 = !DILocation(line: 168, column: 12, scope: !920)
!929 = !DILocation(line: 169, column: 3, scope: !920)
!930 = !DILocation(line: 173, column: 19, scope: !920)
!931 = !DILocation(line: 173, column: 35, scope: !920)
!932 = !DILocation(line: 173, column: 17, scope: !920)
!933 = !DILocation(line: 174, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !920, file: !3, line: 174, column: 7)
!935 = !DILocation(line: 174, column: 21, scope: !934)
!936 = !DILocation(line: 174, column: 7, scope: !920)
!937 = !DILocation(line: 175, column: 4, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !3, line: 174, column: 60)
!939 = !DILocation(line: 178, column: 4, scope: !938)
!940 = !DILocation(line: 182, column: 42, scope: !920)
!941 = !DILocation(line: 182, column: 7, scope: !920)
!942 = !DILocation(line: 181, column: 10, scope: !920)
!943 = !DILocation(line: 184, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !920, file: !3, line: 184, column: 7)
!945 = !DILocation(line: 184, column: 7, scope: !920)
!946 = !DILocation(line: 185, column: 4, scope: !947)
!947 = distinct !DILexicalBlock(scope: !944, file: !3, line: 184, column: 29)
!948 = !DILocation(line: 189, column: 4, scope: !947)
!949 = !DILocation(line: 194, column: 17, scope: !920)
!950 = !DILocation(line: 195, column: 27, scope: !920)
!951 = !DILocation(line: 195, column: 41, scope: !920)
!952 = !DILocation(line: 195, column: 24, scope: !920)
!953 = !DILocation(line: 195, column: 12, scope: !920)
!954 = !DILocation(line: 196, column: 3, scope: !920)
!955 = !DILocation(line: 200, column: 17, scope: !920)
!956 = !DILocation(line: 201, column: 12, scope: !920)
!957 = !DILocation(line: 202, column: 3, scope: !920)
!958 = !DILocation(line: 205, column: 3, scope: !920)
!959 = !DILocation(line: 210, column: 45, scope: !892)
!960 = !DILocation(line: 210, column: 16, scope: !892)
!961 = !DILocation(line: 210, column: 14, scope: !892)
!962 = !DILocation(line: 211, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !892, file: !3, line: 211, column: 6)
!964 = !DILocation(line: 211, column: 6, scope: !892)
!965 = !DILocation(line: 212, column: 3, scope: !966)
!966 = distinct !DILexicalBlock(scope: !963, file: !3, line: 211, column: 20)
!967 = !DILocation(line: 217, column: 30, scope: !892)
!968 = !DILocation(line: 217, column: 53, scope: !892)
!969 = !DILocation(line: 217, column: 2, scope: !892)
!970 = !DILocation(line: 221, column: 33, scope: !892)
!971 = !DILocation(line: 222, column: 12, scope: !892)
!972 = !DILocation(line: 224, column: 22, scope: !892)
!973 = !DILocation(line: 221, column: 11, scope: !892)
!974 = !DILocation(line: 221, column: 9, scope: !892)
!975 = !DILocation(line: 225, column: 30, scope: !892)
!976 = !DILocation(line: 225, column: 53, scope: !892)
!977 = !DILocation(line: 225, column: 2, scope: !892)
!978 = !DILocation(line: 227, column: 19, scope: !892)
!979 = !DILocation(line: 227, column: 3, scope: !892)
!980 = !DILocation(line: 227, column: 17, scope: !892)
!981 = !DILocation(line: 228, column: 2, scope: !892)
!982 = !DILocation(line: 229, column: 1, scope: !892)
!983 = !DISubprogram(name: "acpi_error", scope: !984, file: !984, line: 901, type: !985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!985 = !DISubroutineType(types: !986)
!986 = !{null, !987, !28, !987, null}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!988 = !DISubprogram(name: "acpi_ex_get_protocol_buffer_length", scope: !847, file: !847, line: 127, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubroutineType(types: !990)
!990 = !{!26, !28, !991}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!992 = !DISubprogram(name: "acpi_ut_create_buffer_object", scope: !993, file: !993, line: 457, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!994 = !DISubroutineType(types: !995)
!995 = !{!63, !996}
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !27, line: 127, baseType: !21)
!997 = distinct !DISubprogram(name: "acpi_ex_write_serial_bus", scope: !3, file: !3, line: 247, type: !855, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008}
!999 = !DILocalVariable(name: "source_desc", arg: 1, scope: !997, file: !3, line: 247, type: !63)
!1000 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !997, file: !3, line: 248, type: !63)
!1001 = !DILocalVariable(name: "return_buffer", arg: 3, scope: !997, file: !3, line: 249, type: !151)
!1002 = !DILocalVariable(name: "status", scope: !997, file: !3, line: 251, type: !26)
!1003 = !DILocalVariable(name: "buffer_length", scope: !997, file: !3, line: 252, type: !28)
!1004 = !DILocalVariable(name: "data_length", scope: !997, file: !3, line: 253, type: !28)
!1005 = !DILocalVariable(name: "buffer", scope: !997, file: !3, line: 254, type: !164)
!1006 = !DILocalVariable(name: "buffer_desc", scope: !997, file: !3, line: 255, type: !63)
!1007 = !DILocalVariable(name: "function", scope: !997, file: !3, line: 256, type: !28)
!1008 = !DILocalVariable(name: "accessor_type", scope: !997, file: !3, line: 257, type: !77)
!1009 = !DILocation(line: 247, column: 53, scope: !997)
!1010 = !DILocation(line: 248, column: 32, scope: !997)
!1011 = !DILocation(line: 249, column: 33, scope: !997)
!1012 = !DILocation(line: 251, column: 2, scope: !997)
!1013 = !DILocation(line: 251, column: 14, scope: !997)
!1014 = !DILocation(line: 252, column: 2, scope: !997)
!1015 = !DILocation(line: 252, column: 6, scope: !997)
!1016 = !DILocation(line: 253, column: 2, scope: !997)
!1017 = !DILocation(line: 253, column: 6, scope: !997)
!1018 = !DILocation(line: 254, column: 2, scope: !997)
!1019 = !DILocation(line: 254, column: 8, scope: !997)
!1020 = !DILocation(line: 255, column: 2, scope: !997)
!1021 = !DILocation(line: 255, column: 29, scope: !997)
!1022 = !DILocation(line: 256, column: 2, scope: !997)
!1023 = !DILocation(line: 256, column: 6, scope: !997)
!1024 = !DILocation(line: 257, column: 2, scope: !997)
!1025 = !DILocation(line: 257, column: 6, scope: !997)
!1026 = !DILocation(line: 278, column: 6, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !997, file: !3, line: 278, column: 6)
!1028 = !DILocation(line: 278, column: 26, scope: !1027)
!1029 = !DILocation(line: 278, column: 31, scope: !1027)
!1030 = !DILocation(line: 278, column: 6, scope: !997)
!1031 = !DILocation(line: 279, column: 3, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 278, column: 52)
!1033 = !DILocation(line: 284, column: 3, scope: !1032)
!1034 = !DILocation(line: 287, column: 10, scope: !997)
!1035 = !DILocation(line: 287, column: 26, scope: !997)
!1036 = !DILocation(line: 287, column: 45, scope: !997)
!1037 = !DILocation(line: 287, column: 2, scope: !997)
!1038 = !DILocation(line: 290, column: 17, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !997, file: !3, line: 287, column: 55)
!1040 = !DILocation(line: 291, column: 28, scope: !1039)
!1041 = !DILocation(line: 291, column: 44, scope: !1039)
!1042 = !DILocation(line: 291, column: 54, scope: !1039)
!1043 = !DILocation(line: 291, column: 25, scope: !1039)
!1044 = !DILocation(line: 291, column: 12, scope: !1039)
!1045 = !DILocation(line: 292, column: 3, scope: !1039)
!1046 = !DILocation(line: 296, column: 17, scope: !1039)
!1047 = !DILocation(line: 297, column: 12, scope: !1039)
!1048 = !DILocation(line: 298, column: 3, scope: !1039)
!1049 = !DILocation(line: 302, column: 19, scope: !1039)
!1050 = !DILocation(line: 302, column: 35, scope: !1039)
!1051 = !DILocation(line: 302, column: 17, scope: !1039)
!1052 = !DILocation(line: 304, column: 42, scope: !1039)
!1053 = !DILocation(line: 304, column: 7, scope: !1039)
!1054 = !DILocation(line: 303, column: 10, scope: !1039)
!1055 = !DILocation(line: 306, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 306, column: 7)
!1057 = !DILocation(line: 306, column: 7, scope: !1039)
!1058 = !DILocation(line: 307, column: 4, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 306, column: 29)
!1060 = !DILocation(line: 311, column: 4, scope: !1059)
!1061 = !DILocation(line: 316, column: 17, scope: !1039)
!1062 = !DILocation(line: 317, column: 28, scope: !1039)
!1063 = !DILocation(line: 317, column: 42, scope: !1039)
!1064 = !DILocation(line: 317, column: 25, scope: !1039)
!1065 = !DILocation(line: 317, column: 12, scope: !1039)
!1066 = !DILocation(line: 318, column: 3, scope: !1039)
!1067 = !DILocation(line: 322, column: 17, scope: !1039)
!1068 = !DILocation(line: 323, column: 12, scope: !1039)
!1069 = !DILocation(line: 324, column: 3, scope: !1039)
!1070 = !DILocation(line: 328, column: 17, scope: !1039)
!1071 = !DILocation(line: 329, column: 12, scope: !1039)
!1072 = !DILocation(line: 330, column: 3, scope: !1039)
!1073 = !DILocation(line: 333, column: 3, scope: !1039)
!1074 = !DILocation(line: 338, column: 45, scope: !997)
!1075 = !DILocation(line: 338, column: 16, scope: !997)
!1076 = !DILocation(line: 338, column: 14, scope: !997)
!1077 = !DILocation(line: 339, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !997, file: !3, line: 339, column: 6)
!1079 = !DILocation(line: 339, column: 6, scope: !997)
!1080 = !DILocation(line: 340, column: 3, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 339, column: 20)
!1082 = !DILocation(line: 345, column: 11, scope: !997)
!1083 = !DILocation(line: 345, column: 31, scope: !997)
!1084 = !DILocation(line: 345, column: 9, scope: !997)
!1085 = !DILocation(line: 346, column: 16, scope: !997)
!1086 = !DILocation(line: 346, column: 14, scope: !997)
!1087 = !DILocation(line: 347, column: 9, scope: !997)
!1088 = !DILocation(line: 347, column: 17, scope: !997)
!1089 = !DILocation(line: 347, column: 37, scope: !997)
!1090 = !DILocation(line: 347, column: 46, scope: !997)
!1091 = !DILocation(line: 347, column: 2, scope: !997)
!1092 = !DILocation(line: 351, column: 30, scope: !997)
!1093 = !DILocation(line: 351, column: 53, scope: !997)
!1094 = !DILocation(line: 351, column: 2, scope: !997)
!1095 = !DILocation(line: 357, column: 33, scope: !997)
!1096 = !DILocation(line: 357, column: 53, scope: !997)
!1097 = !DILocation(line: 357, column: 61, scope: !997)
!1098 = !DILocation(line: 357, column: 11, scope: !997)
!1099 = !DILocation(line: 357, column: 9, scope: !997)
!1100 = !DILocation(line: 358, column: 30, scope: !997)
!1101 = !DILocation(line: 358, column: 53, scope: !997)
!1102 = !DILocation(line: 358, column: 2, scope: !997)
!1103 = !DILocation(line: 360, column: 19, scope: !997)
!1104 = !DILocation(line: 360, column: 3, scope: !997)
!1105 = !DILocation(line: 360, column: 17, scope: !997)
!1106 = !DILocation(line: 361, column: 2, scope: !997)
!1107 = !DILocation(line: 362, column: 1, scope: !997)
!1108 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !993, file: !993, line: 233, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!987, !63}
