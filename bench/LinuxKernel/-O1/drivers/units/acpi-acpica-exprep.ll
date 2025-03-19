; ModuleID = 'drivers/acpi/acpica/exprep.c'
source_filename = "drivers/acpi/acpica/exprep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_field_common = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_create_field_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.acpi_object_region_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, i16, ptr }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_bank_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr, ptr }
%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_object_extra = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_object_index_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr, ptr }

@_acpi_module_name = internal constant [7 x i8] c"exprep\00", align 1, !dbg !0
@.str = private unnamed_addr constant [16 x i8] c"Null RegionNode\00", align 1, !dbg !798
@.str.1 = private unnamed_addr constant [36 x i8] c"Needed Region, found type 0x%X (%s)\00", align 1, !dbg !803
@.str.2 = private unnamed_addr constant [36 x i8] c"Null Index Object during field prep\00", align 1, !dbg !808
@.str.3 = private unnamed_addr constant [31 x i8] c"Unknown field access type 0x%X\00", align 1, !dbg !810

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_prep_common_field_object(ptr noundef %obj_desc, i8 noundef zeroext %field_flags, i8 noundef zeroext %field_attribute, i32 noundef %field_bit_position, i32 noundef %field_bit_length) #0 align 16 !dbg !826 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %field_flags.addr = alloca i8, align 1
  %field_attribute.addr = alloca i8, align 1
  %field_bit_position.addr = alloca i32, align 4
  %field_bit_length.addr = alloca i32, align 4
  %access_bit_width = alloca i32, align 4
  %byte_alignment = alloca i32, align 4
  %nearest_byte_address = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !830, metadata !DIExpression()), !dbg !838
  store i8 %field_flags, ptr %field_flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %field_flags.addr, metadata !831, metadata !DIExpression()), !dbg !839
  store i8 %field_attribute, ptr %field_attribute.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %field_attribute.addr, metadata !832, metadata !DIExpression()), !dbg !840
  store i32 %field_bit_position, ptr %field_bit_position.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %field_bit_position.addr, metadata !833, metadata !DIExpression()), !dbg !841
  store i32 %field_bit_length, ptr %field_bit_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %field_bit_length.addr, metadata !834, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_bit_width) #4, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %access_bit_width, metadata !835, metadata !DIExpression()), !dbg !844
  call void @llvm.lifetime.start.p0(i64 4, ptr %byte_alignment) #4, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %byte_alignment, metadata !836, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %nearest_byte_address) #4, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %nearest_byte_address, metadata !837, metadata !DIExpression()), !dbg !848
  %0 = load i8, ptr %field_flags.addr, align 1, !dbg !849
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !850
  %field_flags1 = getelementptr inbounds %struct.acpi_object_field_common, ptr %1, i32 0, i32 5, !dbg !851
  store i8 %0, ptr %field_flags1, align 1, !dbg !852
  %2 = load i8, ptr %field_attribute.addr, align 1, !dbg !853
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !854
  %attribute = getelementptr inbounds %struct.acpi_object_field_common, ptr %3, i32 0, i32 6, !dbg !855
  store i8 %2, ptr %attribute, align 2, !dbg !856
  %4 = load i32, ptr %field_bit_length.addr, align 4, !dbg !857
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !858
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, ptr %5, i32 0, i32 9, !dbg !859
  store i32 %4, ptr %bit_length, align 8, !dbg !860
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !861
  %7 = load i8, ptr %field_flags.addr, align 1, !dbg !862
  %call = call i32 @acpi_ex_decode_field_access(ptr noundef %6, i8 noundef zeroext %7, ptr noundef %byte_alignment) #5, !dbg !863
  store i32 %call, ptr %access_bit_width, align 4, !dbg !864
  %8 = load i32, ptr %access_bit_width, align 4, !dbg !865
  %tobool = icmp ne i32 %8, 0, !dbg !865
  br i1 %tobool, label %if.end, label %if.then, !dbg !867

if.then:                                          ; preds = %entry
  store i32 12292, ptr %retval, align 4, !dbg !868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !868

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %access_bit_width, align 4, !dbg !870
  %shr = lshr i32 %9, 3, !dbg !870
  %conv = trunc i32 %shr to i8, !dbg !871
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !872
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, ptr %10, i32 0, i32 7, !dbg !873
  store i8 %conv, ptr %access_byte_width, align 1, !dbg !874
  %11 = load i32, ptr %field_bit_position.addr, align 4, !dbg !875
  %shr2 = lshr i32 %11, 3, !dbg !875
  store i32 %shr2, ptr %nearest_byte_address, align 4, !dbg !876
  %12 = load i32, ptr %nearest_byte_address, align 4, !dbg !877
  %conv3 = zext i32 %12 to i64, !dbg !877
  %13 = load i32, ptr %byte_alignment, align 4, !dbg !877
  %conv4 = zext i32 %13 to i64, !dbg !877
  %sub = sub i64 %conv4, 1, !dbg !877
  %not = xor i64 %sub, -1, !dbg !877
  %and = and i64 %conv3, %not, !dbg !877
  %conv5 = trunc i64 %and to i32, !dbg !878
  %14 = load ptr, ptr %obj_desc.addr, align 8, !dbg !879
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_field_common, ptr %14, i32 0, i32 10, !dbg !880
  store i32 %conv5, ptr %base_byte_offset, align 4, !dbg !881
  %15 = load i32, ptr %field_bit_position.addr, align 4, !dbg !882
  %16 = load ptr, ptr %obj_desc.addr, align 8, !dbg !883
  %base_byte_offset6 = getelementptr inbounds %struct.acpi_object_field_common, ptr %16, i32 0, i32 10, !dbg !883
  %17 = load i32, ptr %base_byte_offset6, align 4, !dbg !883
  %shl = shl i32 %17, 3, !dbg !883
  %sub7 = sub i32 %15, %shl, !dbg !884
  %conv8 = trunc i32 %sub7 to i8, !dbg !885
  %18 = load ptr, ptr %obj_desc.addr, align 8, !dbg !886
  %start_field_bit_offset = getelementptr inbounds %struct.acpi_object_field_common, ptr %18, i32 0, i32 12, !dbg !887
  store i8 %conv8, ptr %start_field_bit_offset, align 4, !dbg !888
  store i32 0, ptr %retval, align 4, !dbg !889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !889

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %nearest_byte_address) #4, !dbg !890
  call void @llvm.lifetime.end.p0(i64 4, ptr %byte_alignment) #4, !dbg !890
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_bit_width) #4, !dbg !890
  %19 = load i32, ptr %retval, align 4, !dbg !890
  ret i32 %19, !dbg !890
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_decode_field_access(ptr noundef %obj_desc, i8 noundef zeroext %field_flags, ptr noundef %return_byte_alignment) #0 align 16 !dbg !891 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %field_flags.addr = alloca i8, align 1
  %return_byte_alignment.addr = alloca ptr, align 8
  %access = alloca i32, align 4
  %byte_alignment = alloca i32, align 4
  %bit_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !896, metadata !DIExpression()), !dbg !902
  store i8 %field_flags, ptr %field_flags.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %field_flags.addr, metadata !897, metadata !DIExpression()), !dbg !903
  store ptr %return_byte_alignment, ptr %return_byte_alignment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_byte_alignment.addr, metadata !898, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 4, ptr %access) #4, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %access, metadata !899, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 4, ptr %byte_alignment) #4, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %byte_alignment, metadata !900, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_length) #4, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %bit_length, metadata !901, metadata !DIExpression()), !dbg !910
  %0 = load i8, ptr %field_flags.addr, align 1, !dbg !911
  %conv = zext i8 %0 to i32, !dbg !911
  %and = and i32 %conv, 15, !dbg !912
  store i32 %and, ptr %access, align 4, !dbg !913
  %1 = load i32, ptr %access, align 4, !dbg !914
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 5, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ], !dbg !915

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %byte_alignment, align 4, !dbg !916
  store i32 8, ptr %bit_length, align 4, !dbg !918
  br label %sw.epilog, !dbg !919

sw.bb1:                                           ; preds = %entry, %entry
  store i32 1, ptr %byte_alignment, align 4, !dbg !920
  store i32 8, ptr %bit_length, align 4, !dbg !921
  br label %sw.epilog, !dbg !922

sw.bb2:                                           ; preds = %entry
  store i32 2, ptr %byte_alignment, align 4, !dbg !923
  store i32 16, ptr %bit_length, align 4, !dbg !924
  br label %sw.epilog, !dbg !925

sw.bb3:                                           ; preds = %entry
  store i32 4, ptr %byte_alignment, align 4, !dbg !926
  store i32 32, ptr %bit_length, align 4, !dbg !927
  br label %sw.epilog, !dbg !928

sw.bb4:                                           ; preds = %entry
  store i32 8, ptr %byte_alignment, align 4, !dbg !929
  store i32 64, ptr %bit_length, align 4, !dbg !930
  br label %sw.epilog, !dbg !931

sw.default:                                       ; preds = %entry
  %2 = load i32, ptr %access, align 4, !dbg !932
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 253, ptr noundef @.str.3, i32 noundef %2) #5, !dbg !932
  store i32 0, ptr %retval, align 4, !dbg !933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !933

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !934
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !936
  %4 = load i8, ptr %type, align 1, !dbg !936
  %conv5 = zext i8 %4 to i32, !dbg !934
  %cmp = icmp eq i32 %conv5, 14, !dbg !937
  br i1 %cmp, label %if.then, label %if.end, !dbg !938

if.then:                                          ; preds = %sw.epilog
  store i32 1, ptr %byte_alignment, align 4, !dbg !939
  br label %if.end, !dbg !941

if.end:                                           ; preds = %if.then, %sw.epilog
  %5 = load i32, ptr %byte_alignment, align 4, !dbg !942
  %6 = load ptr, ptr %return_byte_alignment.addr, align 8, !dbg !943
  store i32 %5, ptr %6, align 4, !dbg !944
  %7 = load i32, ptr %bit_length, align 4, !dbg !945
  store i32 %7, ptr %retval, align 4, !dbg !945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !945

cleanup:                                          ; preds = %if.end, %sw.default
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_length) #4, !dbg !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %byte_alignment) #4, !dbg !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %access) #4, !dbg !946
  %8 = load i32, ptr %retval, align 4, !dbg !946
  ret i32 %8, !dbg !946
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_prep_field_value(ptr noundef %info) #0 align 16 !dbg !947 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %second_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %access_byte_width = alloca i32, align 4
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !969, metadata !DIExpression()), !dbg !975
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !976
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !970, metadata !DIExpression()), !dbg !977
  call void @llvm.lifetime.start.p0(i64 8, ptr %second_desc) #4, !dbg !978
  call void @llvm.dbg.declare(metadata ptr %second_desc, metadata !971, metadata !DIExpression()), !dbg !979
  store ptr null, ptr %second_desc, align 8, !dbg !979
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %status, metadata !972, metadata !DIExpression()), !dbg !981
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_byte_width) #4, !dbg !982
  call void @llvm.dbg.declare(metadata ptr %access_byte_width, metadata !973, metadata !DIExpression()), !dbg !983
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #4, !dbg !984
  call void @llvm.dbg.declare(metadata ptr %type, metadata !974, metadata !DIExpression()), !dbg !985
  %0 = load ptr, ptr %info.addr, align 8, !dbg !986
  %field_type = getelementptr inbounds %struct.acpi_create_field_info, ptr %0, i32 0, i32 13, !dbg !988
  %1 = load i8, ptr %field_type, align 2, !dbg !988
  %conv = zext i8 %1 to i32, !dbg !986
  %cmp = icmp ne i32 %conv, 19, !dbg !989
  br i1 %cmp, label %if.then, label %if.end9, !dbg !990

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !dbg !991
  %region_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %2, i32 0, i32 0, !dbg !994
  %3 = load ptr, ptr %region_node, align 8, !dbg !994
  %tobool = icmp ne ptr %3, null, !dbg !991
  br i1 %tobool, label %if.end, label %if.then2, !dbg !995

if.then2:                                         ; preds = %if.then
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 392, ptr noundef @.str) #5, !dbg !996
  store i32 12290, ptr %retval, align 4, !dbg !998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !998

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %info.addr, align 8, !dbg !999
  %region_node3 = getelementptr inbounds %struct.acpi_create_field_info, ptr %4, i32 0, i32 0, !dbg !1000
  %5 = load ptr, ptr %region_node3, align 8, !dbg !1000
  %call = call i32 @acpi_ns_get_type(ptr noundef %5) #5, !dbg !1001
  store i32 %call, ptr %type, align 4, !dbg !1002
  %6 = load i32, ptr %type, align 4, !dbg !1003
  %cmp4 = icmp ne i32 %6, 10, !dbg !1005
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !1006

if.then6:                                         ; preds = %if.end
  %7 = load i32, ptr %type, align 4, !dbg !1007
  %8 = load i32, ptr %type, align 4, !dbg !1007
  %call7 = call ptr @acpi_ut_get_type_name(i32 noundef %8) #5, !dbg !1007
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 398, ptr noundef @.str.1, i32 noundef %7, ptr noundef %call7) #5, !dbg !1007
  store i32 12291, ptr %retval, align 4, !dbg !1009
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1009

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !1010

if.end9:                                          ; preds = %if.end8, %entry
  %9 = load ptr, ptr %info.addr, align 8, !dbg !1011
  %field_type10 = getelementptr inbounds %struct.acpi_create_field_info, ptr %9, i32 0, i32 13, !dbg !1011
  %10 = load i8, ptr %field_type10, align 2, !dbg !1011
  %conv11 = zext i8 %10 to i32, !dbg !1011
  %call12 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 408, i32 noundef 128, i32 noundef %conv11) #5, !dbg !1011
  store ptr %call12, ptr %obj_desc, align 8, !dbg !1012
  %11 = load ptr, ptr %obj_desc, align 8, !dbg !1013
  %tobool13 = icmp ne ptr %11, null, !dbg !1013
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1015

if.then14:                                        ; preds = %if.end9
  store i32 4, ptr %retval, align 4, !dbg !1016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1016

if.end15:                                         ; preds = %if.end9
  %12 = load ptr, ptr %info.addr, align 8, !dbg !1018
  %field_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %12, i32 0, i32 1, !dbg !1019
  %13 = load ptr, ptr %field_node, align 8, !dbg !1019
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !1020
  %node = getelementptr inbounds %struct.acpi_object_field_common, ptr %14, i32 0, i32 8, !dbg !1021
  store ptr %13, ptr %node, align 8, !dbg !1022
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !1023
  %16 = load ptr, ptr %info.addr, align 8, !dbg !1024
  %field_flags = getelementptr inbounds %struct.acpi_create_field_info, ptr %16, i32 0, i32 11, !dbg !1025
  %17 = load i8, ptr %field_flags, align 8, !dbg !1025
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1026
  %attribute = getelementptr inbounds %struct.acpi_create_field_info, ptr %18, i32 0, i32 12, !dbg !1027
  %19 = load i8, ptr %attribute, align 1, !dbg !1027
  %20 = load ptr, ptr %info.addr, align 8, !dbg !1028
  %field_bit_position = getelementptr inbounds %struct.acpi_create_field_info, ptr %20, i32 0, i32 7, !dbg !1029
  %21 = load i32, ptr %field_bit_position, align 4, !dbg !1029
  %22 = load ptr, ptr %info.addr, align 8, !dbg !1030
  %field_bit_length = getelementptr inbounds %struct.acpi_create_field_info, ptr %22, i32 0, i32 8, !dbg !1031
  %23 = load i32, ptr %field_bit_length, align 8, !dbg !1031
  %call16 = call i32 @acpi_ex_prep_common_field_object(ptr noundef %15, i8 noundef zeroext %17, i8 noundef zeroext %19, i32 noundef %21, i32 noundef %23) #5, !dbg !1032
  store i32 %call16, ptr %status, align 4, !dbg !1033
  %24 = load i32, ptr %status, align 4, !dbg !1034
  %tobool17 = icmp ne i32 %24, 0, !dbg !1034
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !1036

if.then18:                                        ; preds = %if.end15
  %25 = load ptr, ptr %obj_desc, align 8, !dbg !1037
  call void @acpi_ut_delete_object_desc(ptr noundef %25) #5, !dbg !1039
  %26 = load i32, ptr %status, align 4, !dbg !1040
  store i32 %26, ptr %retval, align 4, !dbg !1040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1040

if.end19:                                         ; preds = %if.end15
  %27 = load ptr, ptr %info.addr, align 8, !dbg !1041
  %field_type20 = getelementptr inbounds %struct.acpi_create_field_info, ptr %27, i32 0, i32 13, !dbg !1042
  %28 = load i8, ptr %field_type20, align 2, !dbg !1042
  %conv21 = zext i8 %28 to i32, !dbg !1041
  switch i32 %conv21, label %sw.default [
    i32 17, label %sw.bb
    i32 18, label %sw.bb66
    i32 19, label %sw.bb75
  ], !dbg !1043

sw.bb:                                            ; preds = %if.end19
  %29 = load ptr, ptr %info.addr, align 8, !dbg !1044
  %region_node22 = getelementptr inbounds %struct.acpi_create_field_info, ptr %29, i32 0, i32 0, !dbg !1046
  %30 = load ptr, ptr %region_node22, align 8, !dbg !1046
  %call23 = call ptr @acpi_ns_get_attached_object(ptr noundef %30) #5, !dbg !1047
  %31 = load ptr, ptr %obj_desc, align 8, !dbg !1048
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, ptr %31, i32 0, i32 15, !dbg !1049
  store ptr %call23, ptr %region_obj, align 8, !dbg !1050
  %32 = load ptr, ptr %info.addr, align 8, !dbg !1051
  %access_length = getelementptr inbounds %struct.acpi_create_field_info, ptr %32, i32 0, i32 14, !dbg !1052
  %33 = load i8, ptr %access_length, align 1, !dbg !1052
  %34 = load ptr, ptr %obj_desc, align 8, !dbg !1053
  %access_length24 = getelementptr inbounds %struct.acpi_object_region_field, ptr %34, i32 0, i32 13, !dbg !1054
  store i8 %33, ptr %access_length24, align 1, !dbg !1055
  %35 = load ptr, ptr %info.addr, align 8, !dbg !1056
  %connection_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %35, i32 0, i32 4, !dbg !1058
  %36 = load ptr, ptr %connection_node, align 8, !dbg !1058
  %tobool25 = icmp ne ptr %36, null, !dbg !1056
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !1059

if.then26:                                        ; preds = %sw.bb
  %37 = load ptr, ptr %info.addr, align 8, !dbg !1060
  %connection_node27 = getelementptr inbounds %struct.acpi_create_field_info, ptr %37, i32 0, i32 4, !dbg !1062
  %38 = load ptr, ptr %connection_node27, align 8, !dbg !1062
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %38, i32 0, i32 0, !dbg !1063
  %39 = load ptr, ptr %object, align 8, !dbg !1063
  store ptr %39, ptr %second_desc, align 8, !dbg !1064
  %40 = load ptr, ptr %second_desc, align 8, !dbg !1065
  %cmp28 = icmp eq ptr %40, null, !dbg !1067
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1068

if.then30:                                        ; preds = %if.then26
  br label %sw.epilog, !dbg !1069

if.end31:                                         ; preds = %if.then26
  %41 = load ptr, ptr %second_desc, align 8, !dbg !1071
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %41, i32 0, i32 4, !dbg !1073
  %42 = load i8, ptr %flags, align 4, !dbg !1073
  %conv32 = zext i8 %42 to i32, !dbg !1071
  %and = and i32 %conv32, 4, !dbg !1074
  %tobool33 = icmp ne i32 %and, 0, !dbg !1074
  br i1 %tobool33, label %if.end39, label %if.then34, !dbg !1075

if.then34:                                        ; preds = %if.end31
  %43 = load ptr, ptr %second_desc, align 8, !dbg !1076
  %call35 = call i32 @acpi_ds_get_buffer_arguments(ptr noundef %43) #5, !dbg !1078
  store i32 %call35, ptr %status, align 4, !dbg !1079
  %44 = load i32, ptr %status, align 4, !dbg !1080
  %tobool36 = icmp ne i32 %44, 0, !dbg !1080
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1082

if.then37:                                        ; preds = %if.then34
  %45 = load ptr, ptr %obj_desc, align 8, !dbg !1083
  call void @acpi_ut_delete_object_desc(ptr noundef %45) #5, !dbg !1085
  %46 = load i32, ptr %status, align 4, !dbg !1086
  store i32 %46, ptr %retval, align 4, !dbg !1086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1086

if.end38:                                         ; preds = %if.then34
  br label %if.end39, !dbg !1087

if.end39:                                         ; preds = %if.end38, %if.end31
  %47 = load ptr, ptr %second_desc, align 8, !dbg !1088
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %47, i32 0, i32 5, !dbg !1089
  %48 = load ptr, ptr %pointer, align 8, !dbg !1089
  %49 = load ptr, ptr %obj_desc, align 8, !dbg !1090
  %resource_buffer = getelementptr inbounds %struct.acpi_object_region_field, ptr %49, i32 0, i32 16, !dbg !1091
  store ptr %48, ptr %resource_buffer, align 8, !dbg !1092
  %50 = load ptr, ptr %second_desc, align 8, !dbg !1093
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %50, i32 0, i32 6, !dbg !1094
  %51 = load i32, ptr %length, align 8, !dbg !1094
  %conv40 = trunc i32 %51 to i16, !dbg !1095
  %52 = load ptr, ptr %obj_desc, align 8, !dbg !1096
  %resource_length = getelementptr inbounds %struct.acpi_object_region_field, ptr %52, i32 0, i32 14, !dbg !1097
  store i16 %conv40, ptr %resource_length, align 2, !dbg !1098
  br label %if.end49, !dbg !1099

if.else:                                          ; preds = %sw.bb
  %53 = load ptr, ptr %info.addr, align 8, !dbg !1100
  %resource_buffer41 = getelementptr inbounds %struct.acpi_create_field_info, ptr %53, i32 0, i32 5, !dbg !1102
  %54 = load ptr, ptr %resource_buffer41, align 8, !dbg !1102
  %tobool42 = icmp ne ptr %54, null, !dbg !1100
  br i1 %tobool42, label %if.then43, label %if.end48, !dbg !1103

if.then43:                                        ; preds = %if.else
  %55 = load ptr, ptr %info.addr, align 8, !dbg !1104
  %resource_buffer44 = getelementptr inbounds %struct.acpi_create_field_info, ptr %55, i32 0, i32 5, !dbg !1106
  %56 = load ptr, ptr %resource_buffer44, align 8, !dbg !1106
  %57 = load ptr, ptr %obj_desc, align 8, !dbg !1107
  %resource_buffer45 = getelementptr inbounds %struct.acpi_object_region_field, ptr %57, i32 0, i32 16, !dbg !1108
  store ptr %56, ptr %resource_buffer45, align 8, !dbg !1109
  %58 = load ptr, ptr %info.addr, align 8, !dbg !1110
  %resource_length46 = getelementptr inbounds %struct.acpi_create_field_info, ptr %58, i32 0, i32 9, !dbg !1111
  %59 = load i16, ptr %resource_length46, align 4, !dbg !1111
  %60 = load ptr, ptr %obj_desc, align 8, !dbg !1112
  %resource_length47 = getelementptr inbounds %struct.acpi_object_region_field, ptr %60, i32 0, i32 14, !dbg !1113
  store i16 %59, ptr %resource_length47, align 2, !dbg !1114
  br label %if.end48, !dbg !1115

if.end48:                                         ; preds = %if.then43, %if.else
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end39
  %61 = load ptr, ptr %info.addr, align 8, !dbg !1116
  %pin_number_index = getelementptr inbounds %struct.acpi_create_field_info, ptr %61, i32 0, i32 10, !dbg !1117
  %62 = load i16, ptr %pin_number_index, align 2, !dbg !1117
  %63 = load ptr, ptr %obj_desc, align 8, !dbg !1118
  %pin_number_index50 = getelementptr inbounds %struct.acpi_object_region_field, ptr %63, i32 0, i32 17, !dbg !1119
  store i16 %62, ptr %pin_number_index50, align 8, !dbg !1120
  %64 = load ptr, ptr %obj_desc, align 8, !dbg !1121
  %region_obj51 = getelementptr inbounds %struct.acpi_object_region_field, ptr %64, i32 0, i32 15, !dbg !1123
  %65 = load ptr, ptr %region_obj51, align 8, !dbg !1123
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %65, i32 0, i32 5, !dbg !1124
  %66 = load i8, ptr %space_id, align 1, !dbg !1124
  %conv52 = zext i8 %66 to i32, !dbg !1121
  %cmp53 = icmp eq i32 %conv52, 3, !dbg !1125
  br i1 %cmp53, label %land.lhs.true, label %if.end65, !dbg !1126

land.lhs.true:                                    ; preds = %if.end49
  %67 = load ptr, ptr %obj_desc, align 8, !dbg !1127
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, ptr %67, i32 0, i32 9, !dbg !1128
  %68 = load i32, ptr %bit_length, align 8, !dbg !1128
  %cmp55 = icmp ugt i32 %68, 8, !dbg !1129
  br i1 %cmp55, label %if.then57, label %if.end65, !dbg !1130

if.then57:                                        ; preds = %land.lhs.true
  %69 = load ptr, ptr %obj_desc, align 8, !dbg !1131
  %bit_length58 = getelementptr inbounds %struct.acpi_object_field_common, ptr %69, i32 0, i32 9, !dbg !1131
  %70 = load i32, ptr %bit_length58, align 8, !dbg !1131
  %add = add i32 %70, 7, !dbg !1131
  %shr = lshr i32 %add, 3, !dbg !1131
  store i32 %shr, ptr %access_byte_width, align 4, !dbg !1133
  %71 = load i32, ptr %access_byte_width, align 4, !dbg !1134
  %cmp59 = icmp ult i32 %71, 256, !dbg !1136
  br i1 %cmp59, label %if.then61, label %if.end64, !dbg !1137

if.then61:                                        ; preds = %if.then57
  %72 = load i32, ptr %access_byte_width, align 4, !dbg !1138
  %conv62 = trunc i32 %72 to i8, !dbg !1140
  %73 = load ptr, ptr %obj_desc, align 8, !dbg !1141
  %access_byte_width63 = getelementptr inbounds %struct.acpi_object_field_common, ptr %73, i32 0, i32 7, !dbg !1142
  store i8 %conv62, ptr %access_byte_width63, align 1, !dbg !1143
  br label %if.end64, !dbg !1144

if.end64:                                         ; preds = %if.then61, %if.then57
  br label %if.end65, !dbg !1145

if.end65:                                         ; preds = %if.end64, %land.lhs.true, %if.end49
  br label %sw.epilog, !dbg !1146

sw.bb66:                                          ; preds = %if.end19
  %74 = load ptr, ptr %info.addr, align 8, !dbg !1147
  %bank_value = getelementptr inbounds %struct.acpi_create_field_info, ptr %74, i32 0, i32 6, !dbg !1148
  %75 = load i32, ptr %bank_value, align 8, !dbg !1148
  %76 = load ptr, ptr %obj_desc, align 8, !dbg !1149
  %value = getelementptr inbounds %struct.acpi_object_bank_field, ptr %76, i32 0, i32 11, !dbg !1150
  store i32 %75, ptr %value, align 8, !dbg !1151
  %77 = load ptr, ptr %info.addr, align 8, !dbg !1152
  %region_node67 = getelementptr inbounds %struct.acpi_create_field_info, ptr %77, i32 0, i32 0, !dbg !1153
  %78 = load ptr, ptr %region_node67, align 8, !dbg !1153
  %call68 = call ptr @acpi_ns_get_attached_object(ptr noundef %78) #5, !dbg !1154
  %79 = load ptr, ptr %obj_desc, align 8, !dbg !1155
  %region_obj69 = getelementptr inbounds %struct.acpi_object_bank_field, ptr %79, i32 0, i32 14, !dbg !1156
  store ptr %call68, ptr %region_obj69, align 8, !dbg !1157
  %80 = load ptr, ptr %info.addr, align 8, !dbg !1158
  %register_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %80, i32 0, i32 2, !dbg !1159
  %81 = load ptr, ptr %register_node, align 8, !dbg !1159
  %call70 = call ptr @acpi_ns_get_attached_object(ptr noundef %81) #5, !dbg !1160
  %82 = load ptr, ptr %obj_desc, align 8, !dbg !1161
  %bank_obj = getelementptr inbounds %struct.acpi_object_bank_field, ptr %82, i32 0, i32 15, !dbg !1162
  store ptr %call70, ptr %bank_obj, align 8, !dbg !1163
  %83 = load ptr, ptr %obj_desc, align 8, !dbg !1164
  %region_obj71 = getelementptr inbounds %struct.acpi_object_bank_field, ptr %83, i32 0, i32 14, !dbg !1165
  %84 = load ptr, ptr %region_obj71, align 8, !dbg !1165
  call void @acpi_ut_add_reference(ptr noundef %84) #5, !dbg !1166
  %85 = load ptr, ptr %obj_desc, align 8, !dbg !1167
  %bank_obj72 = getelementptr inbounds %struct.acpi_object_bank_field, ptr %85, i32 0, i32 15, !dbg !1168
  %86 = load ptr, ptr %bank_obj72, align 8, !dbg !1168
  call void @acpi_ut_add_reference(ptr noundef %86) #5, !dbg !1169
  %87 = load ptr, ptr %obj_desc, align 8, !dbg !1170
  %next_object = getelementptr inbounds %struct.acpi_object_common, ptr %87, i32 0, i32 0, !dbg !1171
  %88 = load ptr, ptr %next_object, align 8, !dbg !1171
  store ptr %88, ptr %second_desc, align 8, !dbg !1172
  %89 = load ptr, ptr %info.addr, align 8, !dbg !1173
  %data_register_node = getelementptr inbounds %struct.acpi_create_field_info, ptr %89, i32 0, i32 3, !dbg !1173
  %90 = load ptr, ptr %data_register_node, align 8, !dbg !1173
  %91 = ptrtoint ptr %90 to i64, !dbg !1173
  %92 = inttoptr i64 %91 to ptr, !dbg !1173
  %data = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %92, i32 0, i32 10, !dbg !1174
  %93 = load ptr, ptr %data, align 8, !dbg !1174
  %94 = load ptr, ptr %second_desc, align 8, !dbg !1175
  %aml_start = getelementptr inbounds %struct.acpi_object_extra, ptr %94, i32 0, i32 8, !dbg !1176
  store ptr %93, ptr %aml_start, align 8, !dbg !1177
  %95 = load ptr, ptr %info.addr, align 8, !dbg !1178
  %data_register_node73 = getelementptr inbounds %struct.acpi_create_field_info, ptr %95, i32 0, i32 3, !dbg !1178
  %96 = load ptr, ptr %data_register_node73, align 8, !dbg !1178
  %97 = ptrtoint ptr %96 to i64, !dbg !1178
  %98 = inttoptr i64 %97 to ptr, !dbg !1178
  %length74 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %98, i32 0, i32 11, !dbg !1179
  %99 = load i32, ptr %length74, align 8, !dbg !1179
  %100 = load ptr, ptr %second_desc, align 8, !dbg !1180
  %aml_length = getelementptr inbounds %struct.acpi_object_extra, ptr %100, i32 0, i32 9, !dbg !1181
  store i32 %99, ptr %aml_length, align 8, !dbg !1182
  br label %sw.epilog, !dbg !1183

sw.bb75:                                          ; preds = %if.end19
  %101 = load ptr, ptr %info.addr, align 8, !dbg !1184
  %register_node76 = getelementptr inbounds %struct.acpi_create_field_info, ptr %101, i32 0, i32 2, !dbg !1185
  %102 = load ptr, ptr %register_node76, align 8, !dbg !1185
  %call77 = call ptr @acpi_ns_get_attached_object(ptr noundef %102) #5, !dbg !1186
  %103 = load ptr, ptr %obj_desc, align 8, !dbg !1187
  %index_obj = getelementptr inbounds %struct.acpi_object_index_field, ptr %103, i32 0, i32 14, !dbg !1188
  store ptr %call77, ptr %index_obj, align 8, !dbg !1189
  %104 = load ptr, ptr %info.addr, align 8, !dbg !1190
  %data_register_node78 = getelementptr inbounds %struct.acpi_create_field_info, ptr %104, i32 0, i32 3, !dbg !1191
  %105 = load ptr, ptr %data_register_node78, align 8, !dbg !1191
  %call79 = call ptr @acpi_ns_get_attached_object(ptr noundef %105) #5, !dbg !1192
  %106 = load ptr, ptr %obj_desc, align 8, !dbg !1193
  %data_obj = getelementptr inbounds %struct.acpi_object_index_field, ptr %106, i32 0, i32 15, !dbg !1194
  store ptr %call79, ptr %data_obj, align 8, !dbg !1195
  %107 = load ptr, ptr %obj_desc, align 8, !dbg !1196
  %data_obj80 = getelementptr inbounds %struct.acpi_object_index_field, ptr %107, i32 0, i32 15, !dbg !1198
  %108 = load ptr, ptr %data_obj80, align 8, !dbg !1198
  %tobool81 = icmp ne ptr %108, null, !dbg !1196
  br i1 %tobool81, label %lor.lhs.false, label %if.then84, !dbg !1199

lor.lhs.false:                                    ; preds = %sw.bb75
  %109 = load ptr, ptr %obj_desc, align 8, !dbg !1200
  %index_obj82 = getelementptr inbounds %struct.acpi_object_index_field, ptr %109, i32 0, i32 14, !dbg !1201
  %110 = load ptr, ptr %index_obj82, align 8, !dbg !1201
  %tobool83 = icmp ne ptr %110, null, !dbg !1200
  br i1 %tobool83, label %if.end85, label %if.then84, !dbg !1202

if.then84:                                        ; preds = %lor.lhs.false, %sw.bb75
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 534, ptr noundef @.str.2) #5, !dbg !1203
  %111 = load ptr, ptr %obj_desc, align 8, !dbg !1205
  call void @acpi_ut_delete_object_desc(ptr noundef %111) #5, !dbg !1206
  store i32 12303, ptr %retval, align 4, !dbg !1207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1207

if.end85:                                         ; preds = %lor.lhs.false
  %112 = load ptr, ptr %obj_desc, align 8, !dbg !1208
  %data_obj86 = getelementptr inbounds %struct.acpi_object_index_field, ptr %112, i32 0, i32 15, !dbg !1209
  %113 = load ptr, ptr %data_obj86, align 8, !dbg !1209
  call void @acpi_ut_add_reference(ptr noundef %113) #5, !dbg !1210
  %114 = load ptr, ptr %obj_desc, align 8, !dbg !1211
  %index_obj87 = getelementptr inbounds %struct.acpi_object_index_field, ptr %114, i32 0, i32 14, !dbg !1212
  %115 = load ptr, ptr %index_obj87, align 8, !dbg !1212
  call void @acpi_ut_add_reference(ptr noundef %115) #5, !dbg !1213
  %116 = load ptr, ptr %info.addr, align 8, !dbg !1214
  %field_bit_position88 = getelementptr inbounds %struct.acpi_create_field_info, ptr %116, i32 0, i32 7, !dbg !1214
  %117 = load i32, ptr %field_bit_position88, align 4, !dbg !1214
  %shr89 = lshr i32 %117, 3, !dbg !1214
  %conv90 = zext i32 %shr89 to i64, !dbg !1214
  %118 = load ptr, ptr %obj_desc, align 8, !dbg !1214
  %access_byte_width91 = getelementptr inbounds %struct.acpi_object_index_field, ptr %118, i32 0, i32 7, !dbg !1214
  %119 = load i8, ptr %access_byte_width91, align 1, !dbg !1214
  %conv92 = zext i8 %119 to i64, !dbg !1214
  %sub = sub i64 %conv92, 1, !dbg !1214
  %not = xor i64 %sub, -1, !dbg !1214
  %and93 = and i64 %conv90, %not, !dbg !1214
  %conv94 = trunc i64 %and93 to i32, !dbg !1215
  %120 = load ptr, ptr %obj_desc, align 8, !dbg !1216
  %value95 = getelementptr inbounds %struct.acpi_object_index_field, ptr %120, i32 0, i32 11, !dbg !1217
  store i32 %conv94, ptr %value95, align 8, !dbg !1218
  br label %sw.epilog, !dbg !1219

sw.default:                                       ; preds = %if.end19
  br label %sw.epilog, !dbg !1220

sw.epilog:                                        ; preds = %sw.default, %if.end85, %sw.bb66, %if.end65, %if.then30
  %121 = load ptr, ptr %info.addr, align 8, !dbg !1221
  %field_node96 = getelementptr inbounds %struct.acpi_create_field_info, ptr %121, i32 0, i32 1, !dbg !1222
  %122 = load ptr, ptr %field_node96, align 8, !dbg !1222
  %123 = load ptr, ptr %obj_desc, align 8, !dbg !1223
  %124 = load ptr, ptr %info.addr, align 8, !dbg !1224
  %field_node97 = getelementptr inbounds %struct.acpi_create_field_info, ptr %124, i32 0, i32 1, !dbg !1225
  %125 = load ptr, ptr %field_node97, align 8, !dbg !1225
  %call98 = call i32 @acpi_ns_get_type(ptr noundef %125) #5, !dbg !1226
  %call99 = call i32 @acpi_ns_attach_object(ptr noundef %122, ptr noundef %123, i32 noundef %call98) #5, !dbg !1227
  store i32 %call99, ptr %status, align 4, !dbg !1228
  %126 = load ptr, ptr %obj_desc, align 8, !dbg !1229
  call void @acpi_ut_remove_reference(ptr noundef %126) #5, !dbg !1230
  %127 = load i32, ptr %status, align 4, !dbg !1231
  store i32 %127, ptr %retval, align 4, !dbg !1231
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1231

cleanup:                                          ; preds = %sw.epilog, %if.then84, %if.then37, %if.then18, %if.then14, %if.then6, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #4, !dbg !1232
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_byte_width) #4, !dbg !1232
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1232
  call void @llvm.lifetime.end.p0(i64 8, ptr %second_desc) #4, !dbg !1232
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1232
  %128 = load i32, ptr %retval, align 4, !dbg !1232
  ret i32 %128, !dbg !1232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1233 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1238 dso_local i32 @acpi_ns_get_type(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1243 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1247 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1250 dso_local void @acpi_ut_delete_object_desc(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1253 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1256 dso_local i32 @acpi_ds_get_buffer_arguments(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1260 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1261 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1264 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!817, !818, !819, !820, !821, !822, !823, !824}
!llvm.ident = !{!825}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !815, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exprep.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exprep\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exprep.ll drivers/acpi/acpica/exprep.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !797, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exprep.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5d844e56530458c782d458c21641d064")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 404, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/amlcode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d3d08f7f5f071008a4fa29b292f7f44b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "AML_FIELD_ACCESS_ANY", value: 0)
!10 = !DIEnumerator(name: "AML_FIELD_ACCESS_BYTE", value: 1)
!11 = !DIEnumerator(name: "AML_FIELD_ACCESS_WORD", value: 2)
!12 = !DIEnumerator(name: "AML_FIELD_ACCESS_DWORD", value: 3)
!13 = !DIEnumerator(name: "AML_FIELD_ACCESS_QWORD", value: 4)
!14 = !DIEnumerator(name: "AML_FIELD_ACCESS_BUFFER", value: 5)
!15 = !{!16, !22, !18, !25, !29, !30, !33, !34, !794}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !17, line: 421, baseType: !18)
!17 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !7)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !17, line: 127, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !28)
!28 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !32)
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !17, line: 814, baseType: !22)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !36, line: 891, size: 1600, elements: !37)
!36 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!37 = !{!38, !737, !753}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !35, file: !36, line: 892, baseType: !39, size: 448)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !36, line: 844, size: 448, elements: !40)
!40 = !{!41, !42, !43, !44, !45, !47, !48, !727, !736}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !39, file: !36, line: 845, baseType: !34, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !39, file: !36, line: 845, baseType: !22, size: 8, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !36, line: 845, baseType: !22, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !39, file: !36, line: 845, baseType: !30, size: 16, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !39, file: !36, line: 845, baseType: !46, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !36, line: 845, baseType: !34, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !39, file: !36, line: 845, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !36, line: 133, size: 384, elements: !51)
!51 = !{!52, !711, !712, !713, !714, !723, !724, !725, !726}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !50, file: !36, line: 134, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !55, line: 369, size: 576, elements: !56)
!55 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!56 = !{!57, !65, !78, !90, !103, !117, !126, !360, !377, !393, !406, !484, !496, !510, !520, !538, !560, !579, !598, !617, !630, !657, !674, !687, !701, !710}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !54, file: !55, line: 370, baseType: !58, size: 128)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !55, line: 73, size: 128, elements: !59)
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !55, line: 74, baseType: !53, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !55, line: 74, baseType: !22, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !55, line: 74, baseType: !22, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !55, line: 74, baseType: !30, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !55, line: 74, baseType: !22, size: 8, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !54, file: !55, line: 371, baseType: !66, size: 192)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !55, line: 76, size: 192, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !77}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !55, line: 77, baseType: !53, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !55, line: 77, baseType: !22, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !55, line: 77, baseType: !22, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !55, line: 77, baseType: !30, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !55, line: 77, baseType: !22, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !66, file: !55, line: 77, baseType: !74, size: 24, offset: 104)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !66, file: !55, line: 78, baseType: !26, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !54, file: !55, line: 372, baseType: !79, size: 256)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !55, line: 93, size: 256, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !89}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !79, file: !55, line: 94, baseType: !53, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !79, file: !55, line: 94, baseType: !22, size: 8, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !55, line: 94, baseType: !22, size: 8, offset: 72)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !79, file: !55, line: 94, baseType: !30, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !79, file: !55, line: 94, baseType: !22, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !79, file: !55, line: 94, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !79, file: !55, line: 94, baseType: !18, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !54, file: !55, line: 373, baseType: !91, size: 384)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !55, line: 97, size: 384, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !91, file: !55, line: 98, baseType: !53, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !91, file: !55, line: 98, baseType: !22, size: 8, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !55, line: 98, baseType: !22, size: 8, offset: 72)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !91, file: !55, line: 98, baseType: !30, size: 16, offset: 80)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !55, line: 98, baseType: !22, size: 8, offset: 96)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !91, file: !55, line: 98, baseType: !46, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !91, file: !55, line: 98, baseType: !18, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !91, file: !55, line: 99, baseType: !18, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !91, file: !55, line: 100, baseType: !46, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !91, file: !55, line: 101, baseType: !49, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !54, file: !55, line: 374, baseType: !104, size: 384)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !55, line: 104, size: 384, elements: !105)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !114, !115, !116}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !104, file: !55, line: 105, baseType: !53, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !104, file: !55, line: 105, baseType: !22, size: 8, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !55, line: 105, baseType: !22, size: 8, offset: 72)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !104, file: !55, line: 105, baseType: !30, size: 16, offset: 80)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !104, file: !55, line: 105, baseType: !22, size: 8, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !104, file: !55, line: 105, baseType: !49, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !104, file: !55, line: 106, baseType: !113, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !104, file: !55, line: 107, baseType: !46, size: 64, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !104, file: !55, line: 108, baseType: !18, size: 32, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !104, file: !55, line: 109, baseType: !18, size: 32, offset: 352)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !55, line: 375, baseType: !118, size: 192)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !55, line: 118, size: 192, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !118, file: !55, line: 119, baseType: !53, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !118, file: !55, line: 119, baseType: !22, size: 8, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !55, line: 119, baseType: !22, size: 8, offset: 72)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !118, file: !55, line: 119, baseType: !30, size: 16, offset: 80)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !55, line: 119, baseType: !22, size: 8, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !118, file: !55, line: 119, baseType: !29, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !54, file: !55, line: 376, baseType: !127, size: 448)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !55, line: 144, size: 448, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !357, !358, !359}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !127, file: !55, line: 145, baseType: !53, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !127, file: !55, line: 145, baseType: !22, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !55, line: 145, baseType: !22, size: 8, offset: 72)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !127, file: !55, line: 145, baseType: !30, size: 16, offset: 80)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !55, line: 145, baseType: !22, size: 8, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !127, file: !55, line: 145, baseType: !22, size: 8, offset: 104)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !127, file: !55, line: 146, baseType: !22, size: 8, offset: 112)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !127, file: !55, line: 147, baseType: !22, size: 8, offset: 120)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !127, file: !55, line: 148, baseType: !53, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !127, file: !55, line: 149, baseType: !53, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !127, file: !55, line: 150, baseType: !46, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !127, file: !55, line: 154, baseType: !141, size: 64, offset: 320)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !55, line: 151, size: 64, elements: !142)
!142 = !{!143, !356}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !141, file: !55, line: 152, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !36, line: 248, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!16, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !150, line: 37, size: 9024, elements: !151)
!150 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !302, !303, !304, !305, !306, !310, !312, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !339, !340, !341, !342, !343, !344, !345, !346, !348, !354}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !150, line: 38, baseType: !148, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !149, file: !150, line: 39, baseType: !22, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !149, file: !150, line: 40, baseType: !22, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !149, file: !150, line: 41, baseType: !30, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !149, file: !150, line: 42, baseType: !22, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !149, file: !150, line: 43, baseType: !22, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !149, file: !150, line: 44, baseType: !22, size: 8, offset: 112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !149, file: !150, line: 45, baseType: !160, size: 16, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !17, line: 445, baseType: !30)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !149, file: !150, line: 46, baseType: !22, size: 8, offset: 144)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !149, file: !150, line: 47, baseType: !22, size: 8, offset: 152)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !149, file: !150, line: 48, baseType: !22, size: 8, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !149, file: !150, line: 49, baseType: !22, size: 8, offset: 168)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !149, file: !150, line: 50, baseType: !22, size: 8, offset: 176)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !149, file: !150, line: 51, baseType: !22, size: 8, offset: 184)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !149, file: !150, line: 52, baseType: !22, size: 8, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !149, file: !150, line: 53, baseType: !22, size: 8, offset: 200)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !149, file: !150, line: 54, baseType: !46, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !149, file: !150, line: 55, baseType: !18, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !149, file: !150, line: 56, baseType: !18, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !149, file: !150, line: 57, baseType: !18, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !149, file: !150, line: 58, baseType: !18, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !149, file: !150, line: 60, baseType: !175, size: 640, offset: 448)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !36, line: 909, size: 640, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !300, !301}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !175, file: !36, line: 910, baseType: !46, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !175, file: !36, line: 911, baseType: !46, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !175, file: !36, line: 912, baseType: !46, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !175, file: !36, line: 913, baseType: !46, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !175, file: !36, line: 914, baseType: !46, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !175, file: !36, line: 915, baseType: !34, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !175, file: !36, line: 916, baseType: !49, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !175, file: !36, line: 917, baseType: !185, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !36, line: 679, size: 640, elements: !187)
!187 = !{!188, !196, !209, !218, !227, !240, !254, !266, !278}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !186, file: !36, line: 680, baseType: !189, size: 128)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !36, line: 575, size: 128, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !36, line: 576, baseType: !29, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !189, file: !36, line: 576, baseType: !22, size: 8, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !36, line: 576, baseType: !22, size: 8, offset: 72)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !189, file: !36, line: 576, baseType: !30, size: 16, offset: 80)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !189, file: !36, line: 576, baseType: !30, size: 16, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !186, file: !36, line: 681, baseType: !197, size: 384)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !36, line: 604, size: 384, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !36, line: 605, baseType: !29, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !197, file: !36, line: 605, baseType: !22, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !36, line: 605, baseType: !22, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !36, line: 605, baseType: !30, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !197, file: !36, line: 605, baseType: !30, size: 16, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !197, file: !36, line: 606, baseType: !30, size: 16, offset: 112)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !197, file: !36, line: 607, baseType: !34, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !197, file: !36, line: 608, baseType: !46, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !197, file: !36, line: 609, baseType: !46, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !197, file: !36, line: 610, baseType: !26, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !186, file: !36, line: 682, baseType: !210, size: 192)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !36, line: 582, size: 192, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !36, line: 583, baseType: !29, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !210, file: !36, line: 583, baseType: !22, size: 8, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !36, line: 583, baseType: !22, size: 8, offset: 72)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !210, file: !36, line: 583, baseType: !30, size: 16, offset: 80)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !210, file: !36, line: 583, baseType: !30, size: 16, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !210, file: !36, line: 584, baseType: !53, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !36, line: 683, baseType: !219, size: 192)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !36, line: 616, size: 192, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !36, line: 617, baseType: !29, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !36, line: 617, baseType: !22, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !36, line: 617, baseType: !22, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !36, line: 617, baseType: !30, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !219, file: !36, line: 617, baseType: !30, size: 16, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !36, line: 618, baseType: !49, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !186, file: !36, line: 684, baseType: !228, size: 448)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !36, line: 621, size: 448, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !36, line: 622, baseType: !29, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !228, file: !36, line: 622, baseType: !22, size: 8, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !36, line: 622, baseType: !22, size: 8, offset: 72)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !228, file: !36, line: 622, baseType: !30, size: 16, offset: 80)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !228, file: !36, line: 622, baseType: !30, size: 16, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !228, file: !36, line: 623, baseType: !18, size: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !228, file: !36, line: 624, baseType: !34, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !228, file: !36, line: 625, baseType: !46, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !228, file: !36, line: 626, baseType: !46, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !228, file: !36, line: 627, baseType: !18, size: 32, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !186, file: !36, line: 685, baseType: !241, size: 512)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !36, line: 590, size: 512, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !36, line: 591, baseType: !29, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !36, line: 591, baseType: !22, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !36, line: 591, baseType: !22, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !241, file: !36, line: 591, baseType: !30, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !241, file: !36, line: 591, baseType: !30, size: 16, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !241, file: !36, line: 592, baseType: !18, size: 32, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !241, file: !36, line: 593, baseType: !53, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !241, file: !36, line: 594, baseType: !53, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !241, file: !36, line: 595, baseType: !148, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !241, file: !36, line: 596, baseType: !29, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !241, file: !36, line: 597, baseType: !18, size: 32, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !186, file: !36, line: 686, baseType: !255, size: 320)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !36, line: 634, size: 320, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !36, line: 635, baseType: !29, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !255, file: !36, line: 635, baseType: !22, size: 8, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !36, line: 635, baseType: !22, size: 8, offset: 72)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !255, file: !36, line: 635, baseType: !30, size: 16, offset: 80)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !255, file: !36, line: 635, baseType: !30, size: 16, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !255, file: !36, line: 636, baseType: !22, size: 8, offset: 112)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !255, file: !36, line: 637, baseType: !148, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !255, file: !36, line: 638, baseType: !53, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !255, file: !36, line: 639, baseType: !26, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !186, file: !36, line: 687, baseType: !267, size: 640)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !36, line: 646, size: 640, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !36, line: 647, baseType: !29, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !267, file: !36, line: 647, baseType: !22, size: 8, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !36, line: 647, baseType: !22, size: 8, offset: 72)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !267, file: !36, line: 647, baseType: !30, size: 16, offset: 80)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !267, file: !36, line: 647, baseType: !30, size: 16, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !267, file: !36, line: 648, baseType: !275, size: 512, offset: 128)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 8)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !186, file: !36, line: 688, baseType: !279, size: 320)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !36, line: 669, size: 320, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !36, line: 670, baseType: !29, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !36, line: 670, baseType: !22, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !36, line: 670, baseType: !22, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !36, line: 670, baseType: !30, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !36, line: 670, baseType: !30, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !279, file: !36, line: 671, baseType: !22, size: 8, offset: 112)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !36, line: 672, baseType: !49, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !279, file: !36, line: 673, baseType: !53, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !279, file: !36, line: 674, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !36, line: 660, size: 128, elements: !292)
!292 = !{!293, !299}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !291, file: !36, line: 661, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !17, line: 1061, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298, !18, !29}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !17, line: 424, baseType: !29)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !291, file: !36, line: 662, baseType: !29, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !175, file: !36, line: 918, baseType: !34, size: 64, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !175, file: !36, line: 919, baseType: !18, size: 32, offset: 576)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !149, file: !150, line: 61, baseType: !18, size: 32, offset: 1088)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !149, file: !150, line: 62, baseType: !18, size: 32, offset: 1120)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !149, file: !150, line: 63, baseType: !30, size: 16, offset: 1152)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !149, file: !150, line: 64, baseType: !22, size: 8, offset: 1168)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !149, file: !150, line: 66, baseType: !307, size: 2688, offset: 1216)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2688, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 7)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !149, file: !150, line: 67, baseType: !311, size: 3072, offset: 3904)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 3072, elements: !276)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !149, file: !150, line: 68, baseType: !313, size: 576, offset: 6976)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 576, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 9)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !149, file: !150, line: 69, baseType: !113, size: 64, offset: 7552)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !149, file: !150, line: 71, baseType: !46, size: 64, offset: 7616)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !149, file: !150, line: 72, baseType: !113, size: 64, offset: 7680)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !149, file: !150, line: 73, baseType: !185, size: 64, offset: 7744)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !149, file: !150, line: 74, baseType: !49, size: 64, offset: 7808)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !149, file: !150, line: 75, baseType: !53, size: 64, offset: 7872)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !149, file: !150, line: 76, baseType: !49, size: 64, offset: 7936)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !149, file: !150, line: 77, baseType: !34, size: 64, offset: 8000)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !149, file: !150, line: 78, baseType: !53, size: 64, offset: 8064)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !149, file: !150, line: 79, baseType: !49, size: 64, offset: 8128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !149, file: !150, line: 80, baseType: !87, size: 64, offset: 8192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !149, file: !150, line: 81, baseType: !34, size: 64, offset: 8256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !149, file: !150, line: 82, baseType: !329, size: 64, offset: 8320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !36, line: 718, size: 128, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !331, file: !36, line: 722, baseType: !18, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !331, file: !36, line: 723, baseType: !18, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !36, line: 724, baseType: !30, size: 16, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !331, file: !36, line: 725, baseType: !22, size: 8, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !331, file: !36, line: 726, baseType: !22, size: 8, offset: 88)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !331, file: !36, line: 727, baseType: !22, size: 8, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !149, file: !150, line: 83, baseType: !34, size: 64, offset: 8384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !149, file: !150, line: 84, baseType: !53, size: 64, offset: 8448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !149, file: !150, line: 85, baseType: !185, size: 64, offset: 8512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !149, file: !150, line: 86, baseType: !53, size: 64, offset: 8576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !149, file: !150, line: 87, baseType: !185, size: 64, offset: 8640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !149, file: !150, line: 88, baseType: !34, size: 64, offset: 8704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !149, file: !150, line: 89, baseType: !34, size: 64, offset: 8768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !149, file: !150, line: 90, baseType: !347, size: 64, offset: 8832)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !149, file: !150, line: 91, baseType: !349, size: 64, offset: 8896)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !36, line: 652, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!16, !148, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !149, file: !150, line: 92, baseType: !355, size: 64, offset: 8960)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !36, line: 656, baseType: !145)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !141, file: !55, line: 153, baseType: !53, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !127, file: !55, line: 156, baseType: !18, size: 32, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !127, file: !55, line: 157, baseType: !160, size: 16, offset: 416)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !127, file: !55, line: 158, baseType: !22, size: 8, offset: 432)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !54, file: !55, line: 377, baseType: !361, size: 576)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !55, line: 122, size: 576, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !361, file: !55, line: 123, baseType: !53, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !361, file: !55, line: 123, baseType: !22, size: 8, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !361, file: !55, line: 123, baseType: !22, size: 8, offset: 72)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !361, file: !55, line: 123, baseType: !30, size: 16, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !55, line: 123, baseType: !22, size: 8, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !361, file: !55, line: 123, baseType: !22, size: 8, offset: 104)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !361, file: !55, line: 124, baseType: !30, size: 16, offset: 112)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !361, file: !55, line: 125, baseType: !29, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !361, file: !55, line: 126, baseType: !26, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !361, file: !55, line: 127, baseType: !347, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !361, file: !55, line: 128, baseType: !53, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !55, line: 129, baseType: !53, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !361, file: !55, line: 130, baseType: !49, size: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !361, file: !55, line: 131, baseType: !22, size: 8, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !54, file: !55, line: 378, baseType: !378, size: 512)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !55, line: 134, size: 512, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !391, !392}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !378, file: !55, line: 135, baseType: !53, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !55, line: 135, baseType: !22, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !378, file: !55, line: 135, baseType: !22, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !378, file: !55, line: 135, baseType: !30, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !55, line: 135, baseType: !22, size: 8, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !378, file: !55, line: 135, baseType: !22, size: 8, offset: 104)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !378, file: !55, line: 136, baseType: !49, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !378, file: !55, line: 137, baseType: !53, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !55, line: 138, baseType: !53, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !378, file: !55, line: 139, baseType: !390, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !17, line: 129, baseType: !26)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !378, file: !55, line: 140, baseType: !18, size: 32, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !378, file: !55, line: 141, baseType: !29, size: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !54, file: !55, line: 379, baseType: !394, size: 320)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !55, line: 185, size: 320, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !405}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !394, file: !55, line: 186, baseType: !53, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !394, file: !55, line: 186, baseType: !22, size: 8, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !394, file: !55, line: 186, baseType: !22, size: 8, offset: 72)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !394, file: !55, line: 186, baseType: !30, size: 16, offset: 80)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !55, line: 186, baseType: !22, size: 8, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !394, file: !55, line: 186, baseType: !402, size: 128, offset: 128)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 2)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !394, file: !55, line: 186, baseType: !53, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !54, file: !55, line: 380, baseType: !407, size: 384)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !55, line: 188, size: 384, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !407, file: !55, line: 189, baseType: !53, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !407, file: !55, line: 189, baseType: !22, size: 8, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !407, file: !55, line: 189, baseType: !22, size: 8, offset: 72)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !407, file: !55, line: 189, baseType: !30, size: 16, offset: 80)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !55, line: 189, baseType: !22, size: 8, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !407, file: !55, line: 190, baseType: !402, size: 128, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !407, file: !55, line: 190, baseType: !53, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !407, file: !55, line: 190, baseType: !417, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !36, line: 480, size: 576, elements: !419)
!419 = !{!420, !421, !422, !423, !431, !446, !478, !479, !480, !481, !482, !483}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !418, file: !36, line: 481, baseType: !49, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !418, file: !36, line: 482, baseType: !417, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !36, line: 483, baseType: !417, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !418, file: !36, line: 484, baseType: !424, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !36, line: 497, size: 256, elements: !426)
!426 = !{!427, !428, !429, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !425, file: !36, line: 498, baseType: !424, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !36, line: 499, baseType: !424, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !425, file: !36, line: 500, baseType: !417, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !425, file: !36, line: 501, baseType: !18, size: 32, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !418, file: !36, line: 485, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !36, line: 466, size: 320, elements: !434)
!434 = !{!435, !440, !441, !442, !443, !444, !445}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !433, file: !36, line: 467, baseType: !436, size: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !36, line: 459, size: 128, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !436, file: !36, line: 460, baseType: !22, size: 8)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !436, file: !36, line: 461, baseType: !26, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !433, file: !36, line: 468, baseType: !436, size: 128, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !433, file: !36, line: 469, baseType: !30, size: 16, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !433, file: !36, line: 470, baseType: !22, size: 8, offset: 272)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !433, file: !36, line: 471, baseType: !22, size: 8, offset: 280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !433, file: !36, line: 472, baseType: !22, size: 8, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !433, file: !36, line: 473, baseType: !22, size: 8, offset: 296)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !418, file: !36, line: 486, baseType: !447, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !36, line: 448, size: 192, elements: !449)
!449 = !{!450, !473, !474, !475, !476, !477}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !448, file: !36, line: 449, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !36, line: 438, size: 64, elements: !452)
!452 = !{!453, !454, !467}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !451, file: !36, line: 439, baseType: !49, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !451, file: !36, line: 440, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !36, line: 419, size: 256, elements: !457)
!457 = !{!458, !463, !464, !465, !466}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !456, file: !36, line: 420, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !17, line: 1058, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!18, !298, !18, !29}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !456, file: !36, line: 421, baseType: !29, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !456, file: !36, line: 422, baseType: !49, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !456, file: !36, line: 423, baseType: !22, size: 8, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !456, file: !36, line: 424, baseType: !22, size: 8, offset: 200)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !451, file: !36, line: 441, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !36, line: 429, size: 128, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !469, file: !36, line: 430, baseType: !49, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !36, line: 431, baseType: !468, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !448, file: !36, line: 450, baseType: !432, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !36, line: 451, baseType: !22, size: 8, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !448, file: !36, line: 452, baseType: !22, size: 8, offset: 136)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !448, file: !36, line: 453, baseType: !22, size: 8, offset: 144)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !448, file: !36, line: 454, baseType: !22, size: 8, offset: 152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !418, file: !36, line: 487, baseType: !26, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !418, file: !36, line: 488, baseType: !18, size: 32, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !418, file: !36, line: 489, baseType: !30, size: 16, offset: 480)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !418, file: !36, line: 490, baseType: !30, size: 16, offset: 496)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !418, file: !36, line: 491, baseType: !22, size: 8, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !418, file: !36, line: 492, baseType: !22, size: 8, offset: 520)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !54, file: !55, line: 381, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !55, line: 193, size: 384, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494, !495}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !55, line: 194, baseType: !53, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !55, line: 194, baseType: !22, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !55, line: 194, baseType: !22, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !55, line: 194, baseType: !30, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !55, line: 194, baseType: !22, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !55, line: 194, baseType: !402, size: 128, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !55, line: 194, baseType: !53, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !485, file: !55, line: 194, baseType: !18, size: 32, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !485, file: !55, line: 195, baseType: !18, size: 32, offset: 352)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !54, file: !55, line: 382, baseType: !497, size: 384)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !55, line: 198, size: 384, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !55, line: 199, baseType: !53, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !55, line: 199, baseType: !22, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !55, line: 199, baseType: !22, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !55, line: 199, baseType: !30, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !55, line: 199, baseType: !22, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !497, file: !55, line: 201, baseType: !22, size: 8, offset: 104)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !497, file: !55, line: 202, baseType: !22, size: 8, offset: 112)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !497, file: !55, line: 203, baseType: !402, size: 128, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !497, file: !55, line: 203, baseType: !53, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !497, file: !55, line: 203, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !17, line: 128, baseType: !26)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !54, file: !55, line: 383, baseType: !511, size: 320)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !55, line: 206, size: 320, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !511, file: !55, line: 207, baseType: !53, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !511, file: !55, line: 207, baseType: !22, size: 8, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !55, line: 207, baseType: !22, size: 8, offset: 72)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !511, file: !55, line: 207, baseType: !30, size: 16, offset: 80)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !55, line: 207, baseType: !22, size: 8, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !511, file: !55, line: 207, baseType: !402, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !511, file: !55, line: 207, baseType: !53, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !54, file: !55, line: 384, baseType: !521, size: 384)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !55, line: 234, size: 384, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !521, file: !55, line: 235, baseType: !53, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !521, file: !55, line: 235, baseType: !22, size: 8, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !521, file: !55, line: 235, baseType: !22, size: 8, offset: 72)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !521, file: !55, line: 235, baseType: !30, size: 16, offset: 80)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !521, file: !55, line: 235, baseType: !22, size: 8, offset: 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !521, file: !55, line: 235, baseType: !22, size: 8, offset: 104)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !521, file: !55, line: 235, baseType: !22, size: 8, offset: 112)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !521, file: !55, line: 235, baseType: !22, size: 8, offset: 120)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !521, file: !55, line: 235, baseType: !49, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !521, file: !55, line: 235, baseType: !18, size: 32, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !521, file: !55, line: 235, baseType: !18, size: 32, offset: 224)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !521, file: !55, line: 235, baseType: !18, size: 32, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !521, file: !55, line: 235, baseType: !22, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !521, file: !55, line: 235, baseType: !22, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !521, file: !55, line: 235, baseType: !53, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !54, file: !55, line: 385, baseType: !539, size: 576)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !55, line: 238, size: 576, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !539, file: !55, line: 239, baseType: !53, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !539, file: !55, line: 239, baseType: !22, size: 8, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !539, file: !55, line: 239, baseType: !22, size: 8, offset: 72)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !539, file: !55, line: 239, baseType: !30, size: 16, offset: 80)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !55, line: 239, baseType: !22, size: 8, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !539, file: !55, line: 239, baseType: !22, size: 8, offset: 104)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !539, file: !55, line: 239, baseType: !22, size: 8, offset: 112)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !539, file: !55, line: 239, baseType: !22, size: 8, offset: 120)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !539, file: !55, line: 239, baseType: !49, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !539, file: !55, line: 239, baseType: !18, size: 32, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !539, file: !55, line: 239, baseType: !18, size: 32, offset: 224)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !539, file: !55, line: 239, baseType: !18, size: 32, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !539, file: !55, line: 239, baseType: !22, size: 8, offset: 288)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !539, file: !55, line: 239, baseType: !22, size: 8, offset: 296)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !539, file: !55, line: 239, baseType: !30, size: 16, offset: 304)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !539, file: !55, line: 240, baseType: !53, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !539, file: !55, line: 241, baseType: !46, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !539, file: !55, line: 242, baseType: !30, size: 16, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !539, file: !55, line: 243, baseType: !46, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !54, file: !55, line: 386, baseType: !561, size: 384)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !55, line: 263, size: 384, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !561, file: !55, line: 264, baseType: !53, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !561, file: !55, line: 264, baseType: !22, size: 8, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !55, line: 264, baseType: !22, size: 8, offset: 72)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !561, file: !55, line: 264, baseType: !30, size: 16, offset: 80)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !55, line: 264, baseType: !22, size: 8, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !561, file: !55, line: 264, baseType: !22, size: 8, offset: 104)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !561, file: !55, line: 264, baseType: !22, size: 8, offset: 112)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !561, file: !55, line: 264, baseType: !22, size: 8, offset: 120)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !561, file: !55, line: 264, baseType: !49, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !561, file: !55, line: 264, baseType: !18, size: 32, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !561, file: !55, line: 264, baseType: !18, size: 32, offset: 224)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !561, file: !55, line: 264, baseType: !18, size: 32, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !561, file: !55, line: 264, baseType: !22, size: 8, offset: 288)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !561, file: !55, line: 264, baseType: !22, size: 8, offset: 296)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !561, file: !55, line: 264, baseType: !22, size: 8, offset: 304)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !561, file: !55, line: 265, baseType: !53, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !54, file: !55, line: 387, baseType: !580, size: 448)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !55, line: 246, size: 448, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !55, line: 247, baseType: !53, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !55, line: 247, baseType: !22, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !55, line: 247, baseType: !22, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !55, line: 247, baseType: !30, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !55, line: 247, baseType: !22, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !580, file: !55, line: 247, baseType: !22, size: 8, offset: 104)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !580, file: !55, line: 247, baseType: !22, size: 8, offset: 112)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !580, file: !55, line: 247, baseType: !22, size: 8, offset: 120)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !580, file: !55, line: 247, baseType: !49, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !580, file: !55, line: 247, baseType: !18, size: 32, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !580, file: !55, line: 247, baseType: !18, size: 32, offset: 224)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !580, file: !55, line: 247, baseType: !18, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !580, file: !55, line: 247, baseType: !22, size: 8, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !580, file: !55, line: 247, baseType: !22, size: 8, offset: 296)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !580, file: !55, line: 247, baseType: !53, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !580, file: !55, line: 248, baseType: !53, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !54, file: !55, line: 388, baseType: !599, size: 448)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !55, line: 251, size: 448, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !55, line: 252, baseType: !53, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !55, line: 252, baseType: !22, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !55, line: 252, baseType: !22, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !55, line: 252, baseType: !30, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !55, line: 252, baseType: !22, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !55, line: 252, baseType: !22, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !55, line: 252, baseType: !22, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !55, line: 252, baseType: !22, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !55, line: 252, baseType: !49, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !55, line: 252, baseType: !18, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !55, line: 252, baseType: !18, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !55, line: 252, baseType: !18, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !55, line: 252, baseType: !22, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !55, line: 252, baseType: !22, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !599, file: !55, line: 257, baseType: !53, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !599, file: !55, line: 258, baseType: !53, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !54, file: !55, line: 389, baseType: !618, size: 512)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !55, line: 274, size: 512, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !55, line: 275, baseType: !53, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !55, line: 275, baseType: !22, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !55, line: 275, baseType: !22, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !55, line: 275, baseType: !30, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !55, line: 275, baseType: !22, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !55, line: 275, baseType: !49, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !618, file: !55, line: 276, baseType: !18, size: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !618, file: !55, line: 277, baseType: !294, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !618, file: !55, line: 278, baseType: !29, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !55, line: 279, baseType: !402, size: 128, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !54, file: !55, line: 390, baseType: !631, size: 576)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !55, line: 282, size: 576, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !646, !647, !648, !649, !655, !656}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !55, line: 283, baseType: !53, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !55, line: 283, baseType: !22, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !55, line: 283, baseType: !22, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !55, line: 283, baseType: !30, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !55, line: 283, baseType: !22, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !631, file: !55, line: 283, baseType: !22, size: 8, offset: 104)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !631, file: !55, line: 284, baseType: !22, size: 8, offset: 112)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !631, file: !55, line: 285, baseType: !641, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !17, line: 1093, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!16, !18, !390, !18, !645, !29, !29}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !55, line: 286, baseType: !49, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !631, file: !55, line: 287, baseType: !29, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !631, file: !55, line: 288, baseType: !29, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !631, file: !55, line: 289, baseType: !650, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !17, line: 1126, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!16, !298, !18, !29, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !631, file: !55, line: 290, baseType: !53, size: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !55, line: 291, baseType: !53, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !54, file: !55, line: 391, baseType: !658, size: 512)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !55, line: 309, size: 512, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !55, line: 310, baseType: !53, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !55, line: 310, baseType: !22, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !55, line: 310, baseType: !22, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !55, line: 310, baseType: !30, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !55, line: 310, baseType: !22, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !658, file: !55, line: 310, baseType: !22, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !658, file: !55, line: 311, baseType: !22, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !658, file: !55, line: 312, baseType: !22, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !658, file: !55, line: 313, baseType: !29, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !55, line: 314, baseType: !49, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !658, file: !55, line: 315, baseType: !113, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !658, file: !55, line: 316, baseType: !46, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !658, file: !55, line: 317, baseType: !46, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !55, line: 318, baseType: !18, size: 32, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !54, file: !55, line: 392, baseType: !675, size: 448)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !55, line: 342, size: 448, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !55, line: 343, baseType: !53, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !55, line: 343, baseType: !22, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !55, line: 343, baseType: !22, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !55, line: 343, baseType: !30, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !55, line: 343, baseType: !22, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !675, file: !55, line: 343, baseType: !49, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !675, file: !55, line: 344, baseType: !49, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !675, file: !55, line: 345, baseType: !29, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !675, file: !55, line: 346, baseType: !46, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !675, file: !55, line: 347, baseType: !18, size: 32, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !54, file: !55, line: 393, baseType: !688, size: 256)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !55, line: 352, size: 256, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !700}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !688, file: !55, line: 353, baseType: !53, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !688, file: !55, line: 353, baseType: !22, size: 8, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !55, line: 353, baseType: !22, size: 8, offset: 72)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !688, file: !55, line: 353, baseType: !30, size: 16, offset: 80)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !55, line: 353, baseType: !22, size: 8, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !688, file: !55, line: 353, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !17, line: 1064, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !298, !29}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !688, file: !55, line: 354, baseType: !29, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !54, file: !55, line: 394, baseType: !702, size: 192)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !55, line: 359, size: 192, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !702, file: !55, line: 360, baseType: !53, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !55, line: 360, baseType: !22, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !55, line: 360, baseType: !22, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !702, file: !55, line: 360, baseType: !30, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !55, line: 360, baseType: !22, size: 8, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !55, line: 360, baseType: !53, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !54, file: !55, line: 401, baseType: !50, size: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !36, line: 135, baseType: !22, size: 8, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !36, line: 136, baseType: !22, size: 8, offset: 72)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !36, line: 137, baseType: !30, size: 16, offset: 80)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !36, line: 138, baseType: !715, size: 32, offset: 96)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !716, line: 328, size: 32, elements: !717)
!716 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !715, file: !716, line: 329, baseType: !18, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !715, file: !716, line: 330, baseType: !720, size: 32)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 32, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 4)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !50, file: !36, line: 139, baseType: !49, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !50, file: !36, line: 140, baseType: !49, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !50, file: !36, line: 141, baseType: !49, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !50, file: !36, line: 142, baseType: !160, size: 16, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !39, file: !36, line: 845, baseType: !728, size: 64, offset: 320)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !36, line: 732, size: 64, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !728, file: !36, line: 733, baseType: !26, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !728, file: !36, line: 734, baseType: !18, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !728, file: !36, line: 735, baseType: !87, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !728, file: !36, line: 736, baseType: !46, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !728, file: !36, line: 737, baseType: !87, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !728, file: !36, line: 738, baseType: !34, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !39, file: !36, line: 845, baseType: !22, size: 8, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !35, file: !36, line: 893, baseType: !738, size: 640)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !36, line: 851, size: 640, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !738, file: !36, line: 852, baseType: !34, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !738, file: !36, line: 852, baseType: !22, size: 8, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !36, line: 852, baseType: !22, size: 8, offset: 72)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !738, file: !36, line: 852, baseType: !30, size: 16, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !738, file: !36, line: 852, baseType: !46, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !36, line: 852, baseType: !34, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !36, line: 852, baseType: !49, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !738, file: !36, line: 852, baseType: !728, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !738, file: !36, line: 852, baseType: !22, size: 8, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !738, file: !36, line: 852, baseType: !87, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !738, file: !36, line: 853, baseType: !46, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !738, file: !36, line: 854, baseType: !18, size: 32, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !738, file: !36, line: 855, baseType: !18, size: 32, offset: 608)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !35, file: !36, line: 894, baseType: !754, size: 1600)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !36, line: 862, size: 1600, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !754, file: !36, line: 863, baseType: !34, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !36, line: 863, baseType: !22, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !36, line: 863, baseType: !22, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !754, file: !36, line: 863, baseType: !30, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !754, file: !36, line: 863, baseType: !46, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !36, line: 863, baseType: !34, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !754, file: !36, line: 863, baseType: !49, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !754, file: !36, line: 863, baseType: !728, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !754, file: !36, line: 863, baseType: !22, size: 8, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !754, file: !36, line: 863, baseType: !34, size: 64, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !754, file: !36, line: 864, baseType: !34, size: 64, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !754, file: !36, line: 865, baseType: !87, size: 64, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !754, file: !36, line: 866, baseType: !22, size: 8, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !754, file: !36, line: 867, baseType: !87, size: 64, offset: 704)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !754, file: !36, line: 868, baseType: !87, size: 64, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !754, file: !36, line: 869, baseType: !87, size: 64, offset: 832)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !754, file: !36, line: 870, baseType: !720, size: 32, offset: 896)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !754, file: !36, line: 871, baseType: !18, size: 32, offset: 928)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !754, file: !36, line: 872, baseType: !18, size: 32, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !754, file: !36, line: 873, baseType: !18, size: 32, offset: 992)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !754, file: !36, line: 874, baseType: !18, size: 32, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !754, file: !36, line: 875, baseType: !18, size: 32, offset: 1056)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !754, file: !36, line: 876, baseType: !18, size: 32, offset: 1088)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !754, file: !36, line: 877, baseType: !18, size: 32, offset: 1120)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !754, file: !36, line: 878, baseType: !18, size: 32, offset: 1152)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !754, file: !36, line: 879, baseType: !18, size: 32, offset: 1184)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !754, file: !36, line: 880, baseType: !18, size: 32, offset: 1216)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !754, file: !36, line: 881, baseType: !18, size: 32, offset: 1248)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !754, file: !36, line: 882, baseType: !18, size: 32, offset: 1280)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !754, file: !36, line: 883, baseType: !18, size: 32, offset: 1312)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !754, file: !36, line: 884, baseType: !30, size: 16, offset: 1344)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !754, file: !36, line: 885, baseType: !22, size: 8, offset: 1360)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !754, file: !36, line: 886, baseType: !22, size: 8, offset: 1368)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !754, file: !36, line: 887, baseType: !22, size: 8, offset: 1376)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !754, file: !36, line: 888, baseType: !791, size: 160, offset: 1384)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 160, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 20)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !795, line: 42, baseType: !796)
!795 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!796 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!797 = !{!798, !803, !808, !810, !0}
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !3, line: 392, type: !800, isLocal: true, isDefinition: true)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 16)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !3, line: 398, type: !805, isLocal: true, isDefinition: true)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 288, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 36)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !805, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 248, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 31)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 56, elements: !308)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!817 = !{i32 7, !"Dwarf Version", i32 5}
!818 = !{i32 2, !"Debug Info Version", i32 3}
!819 = !{i32 1, !"wchar_size", i32 2}
!820 = !{i32 8, !"cf-protection-branch", i32 1}
!821 = !{i32 4, !"function_return_thunk_extern", i32 1}
!822 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!823 = !{i32 1, !"Code Model", i32 2}
!824 = !{i32 1, !"override-stack-alignment", i32 8}
!825 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!826 = distinct !DISubprogram(name: "acpi_ex_prep_common_field_object", scope: !3, file: !3, line: 293, type: !827, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{!16, !53, !22, !22, !18, !18}
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837}
!830 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !826, file: !3, line: 293, type: !53)
!831 = !DILocalVariable(name: "field_flags", arg: 2, scope: !826, file: !3, line: 294, type: !22)
!832 = !DILocalVariable(name: "field_attribute", arg: 3, scope: !826, file: !3, line: 295, type: !22)
!833 = !DILocalVariable(name: "field_bit_position", arg: 4, scope: !826, file: !3, line: 296, type: !18)
!834 = !DILocalVariable(name: "field_bit_length", arg: 5, scope: !826, file: !3, line: 296, type: !18)
!835 = !DILocalVariable(name: "access_bit_width", scope: !826, file: !3, line: 298, type: !18)
!836 = !DILocalVariable(name: "byte_alignment", scope: !826, file: !3, line: 299, type: !18)
!837 = !DILocalVariable(name: "nearest_byte_address", scope: !826, file: !3, line: 300, type: !18)
!838 = !DILocation(line: 293, column: 61, scope: !826)
!839 = !DILocation(line: 294, column: 9, scope: !826)
!840 = !DILocation(line: 295, column: 9, scope: !826)
!841 = !DILocation(line: 296, column: 10, scope: !826)
!842 = !DILocation(line: 296, column: 34, scope: !826)
!843 = !DILocation(line: 298, column: 2, scope: !826)
!844 = !DILocation(line: 298, column: 6, scope: !826)
!845 = !DILocation(line: 299, column: 2, scope: !826)
!846 = !DILocation(line: 299, column: 6, scope: !826)
!847 = !DILocation(line: 300, column: 2, scope: !826)
!848 = !DILocation(line: 300, column: 6, scope: !826)
!849 = !DILocation(line: 309, column: 39, scope: !826)
!850 = !DILocation(line: 309, column: 2, scope: !826)
!851 = !DILocation(line: 309, column: 25, scope: !826)
!852 = !DILocation(line: 309, column: 37, scope: !826)
!853 = !DILocation(line: 310, column: 37, scope: !826)
!854 = !DILocation(line: 310, column: 2, scope: !826)
!855 = !DILocation(line: 310, column: 25, scope: !826)
!856 = !DILocation(line: 310, column: 35, scope: !826)
!857 = !DILocation(line: 311, column: 38, scope: !826)
!858 = !DILocation(line: 311, column: 2, scope: !826)
!859 = !DILocation(line: 311, column: 25, scope: !826)
!860 = !DILocation(line: 311, column: 36, scope: !826)
!861 = !DILocation(line: 329, column: 34, scope: !826)
!862 = !DILocation(line: 329, column: 44, scope: !826)
!863 = !DILocation(line: 329, column: 6, scope: !826)
!864 = !DILocation(line: 328, column: 19, scope: !826)
!865 = !DILocation(line: 330, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !826, file: !3, line: 330, column: 6)
!867 = !DILocation(line: 330, column: 6, scope: !826)
!868 = !DILocation(line: 331, column: 3, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !3, line: 330, column: 25)
!870 = !DILocation(line: 337, column: 6, scope: !826)
!871 = !DILocation(line: 336, column: 45, scope: !826)
!872 = !DILocation(line: 336, column: 2, scope: !826)
!873 = !DILocation(line: 336, column: 25, scope: !826)
!874 = !DILocation(line: 336, column: 43, scope: !826)
!875 = !DILocation(line: 350, column: 6, scope: !826)
!876 = !DILocation(line: 349, column: 23, scope: !826)
!877 = !DILocation(line: 352, column: 6, scope: !826)
!878 = !DILocation(line: 351, column: 44, scope: !826)
!879 = !DILocation(line: 351, column: 2, scope: !826)
!880 = !DILocation(line: 351, column: 25, scope: !826)
!881 = !DILocation(line: 351, column: 42, scope: !826)
!882 = !DILocation(line: 359, column: 7, scope: !826)
!883 = !DILocation(line: 360, column: 7, scope: !826)
!884 = !DILocation(line: 359, column: 26, scope: !826)
!885 = !DILocation(line: 358, column: 50, scope: !826)
!886 = !DILocation(line: 358, column: 2, scope: !826)
!887 = !DILocation(line: 358, column: 25, scope: !826)
!888 = !DILocation(line: 358, column: 48, scope: !826)
!889 = !DILocation(line: 362, column: 2, scope: !826)
!890 = !DILocation(line: 363, column: 1, scope: !826)
!891 = distinct !DISubprogram(name: "acpi_ex_decode_field_access", scope: !3, file: !3, line: 195, type: !892, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!892 = !DISubroutineType(types: !893)
!893 = !{!18, !53, !22, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!895 = !{!896, !897, !898, !899, !900, !901}
!896 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !891, file: !3, line: 195, type: !53)
!897 = !DILocalVariable(name: "field_flags", arg: 2, scope: !891, file: !3, line: 196, type: !22)
!898 = !DILocalVariable(name: "return_byte_alignment", arg: 3, scope: !891, file: !3, line: 196, type: !894)
!899 = !DILocalVariable(name: "access", scope: !891, file: !3, line: 198, type: !18)
!900 = !DILocalVariable(name: "byte_alignment", scope: !891, file: !3, line: 199, type: !18)
!901 = !DILocalVariable(name: "bit_length", scope: !891, file: !3, line: 200, type: !18)
!902 = !DILocation(line: 195, column: 56, scope: !891)
!903 = !DILocation(line: 196, column: 11, scope: !891)
!904 = !DILocation(line: 196, column: 30, scope: !891)
!905 = !DILocation(line: 198, column: 2, scope: !891)
!906 = !DILocation(line: 198, column: 6, scope: !891)
!907 = !DILocation(line: 199, column: 2, scope: !891)
!908 = !DILocation(line: 199, column: 6, scope: !891)
!909 = !DILocation(line: 200, column: 2, scope: !891)
!910 = !DILocation(line: 200, column: 6, scope: !891)
!911 = !DILocation(line: 204, column: 12, scope: !891)
!912 = !DILocation(line: 204, column: 24, scope: !891)
!913 = !DILocation(line: 204, column: 9, scope: !891)
!914 = !DILocation(line: 206, column: 10, scope: !891)
!915 = !DILocation(line: 206, column: 2, scope: !891)
!916 = !DILocation(line: 220, column: 18, scope: !917)
!917 = distinct !DILexicalBlock(scope: !891, file: !3, line: 206, column: 18)
!918 = !DILocation(line: 221, column: 14, scope: !917)
!919 = !DILocation(line: 222, column: 3, scope: !917)
!920 = !DILocation(line: 227, column: 18, scope: !917)
!921 = !DILocation(line: 228, column: 14, scope: !917)
!922 = !DILocation(line: 229, column: 3, scope: !917)
!923 = !DILocation(line: 233, column: 18, scope: !917)
!924 = !DILocation(line: 234, column: 14, scope: !917)
!925 = !DILocation(line: 235, column: 3, scope: !917)
!926 = !DILocation(line: 239, column: 18, scope: !917)
!927 = !DILocation(line: 240, column: 14, scope: !917)
!928 = !DILocation(line: 241, column: 3, scope: !917)
!929 = !DILocation(line: 245, column: 18, scope: !917)
!930 = !DILocation(line: 246, column: 14, scope: !917)
!931 = !DILocation(line: 247, column: 3, scope: !917)
!932 = !DILocation(line: 253, column: 3, scope: !917)
!933 = !DILocation(line: 255, column: 3, scope: !917)
!934 = !DILocation(line: 258, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !891, file: !3, line: 258, column: 6)
!936 = !DILocation(line: 258, column: 23, scope: !935)
!937 = !DILocation(line: 258, column: 28, scope: !935)
!938 = !DILocation(line: 258, column: 6, scope: !891)
!939 = !DILocation(line: 264, column: 18, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !3, line: 258, column: 55)
!941 = !DILocation(line: 265, column: 2, scope: !940)
!942 = !DILocation(line: 267, column: 27, scope: !891)
!943 = !DILocation(line: 267, column: 3, scope: !891)
!944 = !DILocation(line: 267, column: 25, scope: !891)
!945 = !DILocation(line: 268, column: 2, scope: !891)
!946 = !DILocation(line: 269, column: 1, scope: !891)
!947 = distinct !DISubprogram(name: "acpi_ex_prep_field_value", scope: !3, file: !3, line: 378, type: !948, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !968)
!948 = !DISubroutineType(types: !949)
!949 = !{!16, !950}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_create_field_info", file: !36, line: 229, size: 576, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "region_node", scope: !951, file: !36, line: 230, baseType: !49, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "field_node", scope: !951, file: !36, line: 231, baseType: !49, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "register_node", scope: !951, file: !36, line: 232, baseType: !49, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "data_register_node", scope: !951, file: !36, line: 233, baseType: !49, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "connection_node", scope: !951, file: !36, line: 234, baseType: !49, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !951, file: !36, line: 235, baseType: !46, size: 64, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "bank_value", scope: !951, file: !36, line: 236, baseType: !18, size: 32, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit_position", scope: !951, file: !36, line: 237, baseType: !18, size: 32, offset: 416)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit_length", scope: !951, file: !36, line: 238, baseType: !18, size: 32, offset: 448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !951, file: !36, line: 239, baseType: !30, size: 16, offset: 480)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !951, file: !36, line: 240, baseType: !30, size: 16, offset: 496)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !951, file: !36, line: 241, baseType: !22, size: 8, offset: 512)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !951, file: !36, line: 242, baseType: !22, size: 8, offset: 520)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "field_type", scope: !951, file: !36, line: 243, baseType: !22, size: 8, offset: 528)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !951, file: !36, line: 244, baseType: !22, size: 8, offset: 536)
!968 = !{!969, !970, !971, !972, !973, !974}
!969 = !DILocalVariable(name: "info", arg: 1, scope: !947, file: !3, line: 378, type: !950)
!970 = !DILocalVariable(name: "obj_desc", scope: !947, file: !3, line: 380, type: !53)
!971 = !DILocalVariable(name: "second_desc", scope: !947, file: !3, line: 381, type: !53)
!972 = !DILocalVariable(name: "status", scope: !947, file: !3, line: 382, type: !16)
!973 = !DILocalVariable(name: "access_byte_width", scope: !947, file: !3, line: 383, type: !18)
!974 = !DILocalVariable(name: "type", scope: !947, file: !3, line: 384, type: !18)
!975 = !DILocation(line: 378, column: 69, scope: !947)
!976 = !DILocation(line: 380, column: 2, scope: !947)
!977 = !DILocation(line: 380, column: 29, scope: !947)
!978 = !DILocation(line: 381, column: 2, scope: !947)
!979 = !DILocation(line: 381, column: 29, scope: !947)
!980 = !DILocation(line: 382, column: 2, scope: !947)
!981 = !DILocation(line: 382, column: 14, scope: !947)
!982 = !DILocation(line: 383, column: 2, scope: !947)
!983 = !DILocation(line: 383, column: 6, scope: !947)
!984 = !DILocation(line: 384, column: 2, scope: !947)
!985 = !DILocation(line: 384, column: 6, scope: !947)
!986 = !DILocation(line: 390, column: 6, scope: !987)
!987 = distinct !DILexicalBlock(scope: !947, file: !3, line: 390, column: 6)
!988 = !DILocation(line: 390, column: 12, scope: !987)
!989 = !DILocation(line: 390, column: 23, scope: !987)
!990 = !DILocation(line: 390, column: 6, scope: !947)
!991 = !DILocation(line: 391, column: 8, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 391, column: 7)
!993 = distinct !DILexicalBlock(scope: !987, file: !3, line: 390, column: 55)
!994 = !DILocation(line: 391, column: 14, scope: !992)
!995 = !DILocation(line: 391, column: 7, scope: !993)
!996 = !DILocation(line: 392, column: 4, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !3, line: 391, column: 27)
!998 = !DILocation(line: 393, column: 4, scope: !997)
!999 = !DILocation(line: 396, column: 27, scope: !993)
!1000 = !DILocation(line: 396, column: 33, scope: !993)
!1001 = !DILocation(line: 396, column: 10, scope: !993)
!1002 = !DILocation(line: 396, column: 8, scope: !993)
!1003 = !DILocation(line: 397, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !993, file: !3, line: 397, column: 7)
!1005 = !DILocation(line: 397, column: 12, scope: !1004)
!1006 = !DILocation(line: 397, column: 7, scope: !993)
!1007 = !DILocation(line: 398, column: 4, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 397, column: 33)
!1009 = !DILocation(line: 402, column: 4, scope: !1008)
!1010 = !DILocation(line: 404, column: 2, scope: !993)
!1011 = !DILocation(line: 408, column: 13, scope: !947)
!1012 = !DILocation(line: 408, column: 11, scope: !947)
!1013 = !DILocation(line: 409, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !947, file: !3, line: 409, column: 6)
!1015 = !DILocation(line: 409, column: 6, scope: !947)
!1016 = !DILocation(line: 410, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 409, column: 17)
!1018 = !DILocation(line: 415, column: 32, scope: !947)
!1019 = !DILocation(line: 415, column: 38, scope: !947)
!1020 = !DILocation(line: 415, column: 2, scope: !947)
!1021 = !DILocation(line: 415, column: 25, scope: !947)
!1022 = !DILocation(line: 415, column: 30, scope: !947)
!1023 = !DILocation(line: 416, column: 44, scope: !947)
!1024 = !DILocation(line: 417, column: 9, scope: !947)
!1025 = !DILocation(line: 417, column: 15, scope: !947)
!1026 = !DILocation(line: 418, column: 9, scope: !947)
!1027 = !DILocation(line: 418, column: 15, scope: !947)
!1028 = !DILocation(line: 419, column: 9, scope: !947)
!1029 = !DILocation(line: 419, column: 15, scope: !947)
!1030 = !DILocation(line: 420, column: 9, scope: !947)
!1031 = !DILocation(line: 420, column: 15, scope: !947)
!1032 = !DILocation(line: 416, column: 11, scope: !947)
!1033 = !DILocation(line: 416, column: 9, scope: !947)
!1034 = !DILocation(line: 421, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !947, file: !3, line: 421, column: 6)
!1036 = !DILocation(line: 421, column: 6, scope: !947)
!1037 = !DILocation(line: 422, column: 30, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 421, column: 28)
!1039 = !DILocation(line: 422, column: 3, scope: !1038)
!1040 = !DILocation(line: 423, column: 3, scope: !1038)
!1041 = !DILocation(line: 428, column: 10, scope: !947)
!1042 = !DILocation(line: 428, column: 16, scope: !947)
!1043 = !DILocation(line: 428, column: 2, scope: !947)
!1044 = !DILocation(line: 432, column: 35, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !947, file: !3, line: 428, column: 28)
!1046 = !DILocation(line: 432, column: 41, scope: !1045)
!1047 = !DILocation(line: 432, column: 7, scope: !1045)
!1048 = !DILocation(line: 431, column: 3, scope: !1045)
!1049 = !DILocation(line: 431, column: 19, scope: !1045)
!1050 = !DILocation(line: 431, column: 30, scope: !1045)
!1051 = !DILocation(line: 436, column: 35, scope: !1045)
!1052 = !DILocation(line: 436, column: 41, scope: !1045)
!1053 = !DILocation(line: 436, column: 3, scope: !1045)
!1054 = !DILocation(line: 436, column: 19, scope: !1045)
!1055 = !DILocation(line: 436, column: 33, scope: !1045)
!1056 = !DILocation(line: 438, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 438, column: 7)
!1058 = !DILocation(line: 438, column: 13, scope: !1057)
!1059 = !DILocation(line: 438, column: 7, scope: !1045)
!1060 = !DILocation(line: 439, column: 18, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 438, column: 30)
!1062 = !DILocation(line: 439, column: 24, scope: !1061)
!1063 = !DILocation(line: 439, column: 41, scope: !1061)
!1064 = !DILocation(line: 439, column: 16, scope: !1061)
!1065 = !DILocation(line: 440, column: 8, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 440, column: 8)
!1067 = !DILocation(line: 440, column: 20, scope: !1066)
!1068 = !DILocation(line: 440, column: 8, scope: !1061)
!1069 = !DILocation(line: 441, column: 5, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 440, column: 29)
!1071 = !DILocation(line: 443, column: 10, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 443, column: 8)
!1073 = !DILocation(line: 443, column: 30, scope: !1072)
!1074 = !DILocation(line: 443, column: 36, scope: !1072)
!1075 = !DILocation(line: 443, column: 8, scope: !1061)
!1076 = !DILocation(line: 445, column: 38, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 443, column: 58)
!1078 = !DILocation(line: 445, column: 9, scope: !1077)
!1079 = !DILocation(line: 444, column: 12, scope: !1077)
!1080 = !DILocation(line: 446, column: 9, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 446, column: 9)
!1082 = !DILocation(line: 446, column: 9, scope: !1077)
!1083 = !DILocation(line: 447, column: 33, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 446, column: 31)
!1085 = !DILocation(line: 447, column: 6, scope: !1084)
!1086 = !DILocation(line: 448, column: 6, scope: !1084)
!1087 = !DILocation(line: 450, column: 4, scope: !1077)
!1088 = !DILocation(line: 453, column: 8, scope: !1061)
!1089 = !DILocation(line: 453, column: 28, scope: !1061)
!1090 = !DILocation(line: 452, column: 4, scope: !1061)
!1091 = !DILocation(line: 452, column: 20, scope: !1061)
!1092 = !DILocation(line: 452, column: 36, scope: !1061)
!1093 = !DILocation(line: 455, column: 13, scope: !1061)
!1094 = !DILocation(line: 455, column: 33, scope: !1061)
!1095 = !DILocation(line: 455, column: 8, scope: !1061)
!1096 = !DILocation(line: 454, column: 4, scope: !1061)
!1097 = !DILocation(line: 454, column: 20, scope: !1061)
!1098 = !DILocation(line: 454, column: 36, scope: !1061)
!1099 = !DILocation(line: 456, column: 3, scope: !1061)
!1100 = !DILocation(line: 456, column: 14, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 456, column: 14)
!1102 = !DILocation(line: 456, column: 20, scope: !1101)
!1103 = !DILocation(line: 456, column: 14, scope: !1057)
!1104 = !DILocation(line: 457, column: 38, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 456, column: 37)
!1106 = !DILocation(line: 457, column: 44, scope: !1105)
!1107 = !DILocation(line: 457, column: 4, scope: !1105)
!1108 = !DILocation(line: 457, column: 20, scope: !1105)
!1109 = !DILocation(line: 457, column: 36, scope: !1105)
!1110 = !DILocation(line: 458, column: 38, scope: !1105)
!1111 = !DILocation(line: 458, column: 44, scope: !1105)
!1112 = !DILocation(line: 458, column: 4, scope: !1105)
!1113 = !DILocation(line: 458, column: 20, scope: !1105)
!1114 = !DILocation(line: 458, column: 36, scope: !1105)
!1115 = !DILocation(line: 459, column: 3, scope: !1105)
!1116 = !DILocation(line: 461, column: 38, scope: !1045)
!1117 = !DILocation(line: 461, column: 44, scope: !1045)
!1118 = !DILocation(line: 461, column: 3, scope: !1045)
!1119 = !DILocation(line: 461, column: 19, scope: !1045)
!1120 = !DILocation(line: 461, column: 36, scope: !1045)
!1121 = !DILocation(line: 465, column: 8, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 465, column: 7)
!1123 = !DILocation(line: 465, column: 24, scope: !1122)
!1124 = !DILocation(line: 465, column: 43, scope: !1122)
!1125 = !DILocation(line: 465, column: 52, scope: !1122)
!1126 = !DILocation(line: 467, column: 7, scope: !1122)
!1127 = !DILocation(line: 467, column: 11, scope: !1122)
!1128 = !DILocation(line: 467, column: 34, scope: !1122)
!1129 = !DILocation(line: 467, column: 45, scope: !1122)
!1130 = !DILocation(line: 465, column: 7, scope: !1045)
!1131 = !DILocation(line: 469, column: 8, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 467, column: 51)
!1133 = !DILocation(line: 468, column: 22, scope: !1132)
!1134 = !DILocation(line: 474, column: 8, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 474, column: 8)
!1136 = !DILocation(line: 474, column: 26, scope: !1135)
!1137 = !DILocation(line: 474, column: 8, scope: !1132)
!1138 = !DILocation(line: 476, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 474, column: 33)
!1140 = !DILocation(line: 476, column: 9, scope: !1139)
!1141 = !DILocation(line: 475, column: 5, scope: !1139)
!1142 = !DILocation(line: 475, column: 28, scope: !1139)
!1143 = !DILocation(line: 475, column: 46, scope: !1139)
!1144 = !DILocation(line: 477, column: 4, scope: !1139)
!1145 = !DILocation(line: 478, column: 3, scope: !1132)
!1146 = !DILocation(line: 485, column: 3, scope: !1045)
!1147 = !DILocation(line: 489, column: 32, scope: !1045)
!1148 = !DILocation(line: 489, column: 38, scope: !1045)
!1149 = !DILocation(line: 489, column: 3, scope: !1045)
!1150 = !DILocation(line: 489, column: 24, scope: !1045)
!1151 = !DILocation(line: 489, column: 30, scope: !1045)
!1152 = !DILocation(line: 491, column: 35, scope: !1045)
!1153 = !DILocation(line: 491, column: 41, scope: !1045)
!1154 = !DILocation(line: 491, column: 7, scope: !1045)
!1155 = !DILocation(line: 490, column: 3, scope: !1045)
!1156 = !DILocation(line: 490, column: 24, scope: !1045)
!1157 = !DILocation(line: 490, column: 35, scope: !1045)
!1158 = !DILocation(line: 493, column: 35, scope: !1045)
!1159 = !DILocation(line: 493, column: 41, scope: !1045)
!1160 = !DILocation(line: 493, column: 7, scope: !1045)
!1161 = !DILocation(line: 492, column: 3, scope: !1045)
!1162 = !DILocation(line: 492, column: 24, scope: !1045)
!1163 = !DILocation(line: 492, column: 33, scope: !1045)
!1164 = !DILocation(line: 497, column: 25, scope: !1045)
!1165 = !DILocation(line: 497, column: 46, scope: !1045)
!1166 = !DILocation(line: 497, column: 3, scope: !1045)
!1167 = !DILocation(line: 498, column: 25, scope: !1045)
!1168 = !DILocation(line: 498, column: 46, scope: !1045)
!1169 = !DILocation(line: 498, column: 3, scope: !1045)
!1170 = !DILocation(line: 513, column: 17, scope: !1045)
!1171 = !DILocation(line: 513, column: 34, scope: !1045)
!1172 = !DILocation(line: 513, column: 15, scope: !1045)
!1173 = !DILocation(line: 515, column: 7, scope: !1045)
!1174 = !DILocation(line: 516, column: 40, scope: !1045)
!1175 = !DILocation(line: 514, column: 3, scope: !1045)
!1176 = !DILocation(line: 514, column: 22, scope: !1045)
!1177 = !DILocation(line: 514, column: 32, scope: !1045)
!1178 = !DILocation(line: 518, column: 7, scope: !1045)
!1179 = !DILocation(line: 519, column: 40, scope: !1045)
!1180 = !DILocation(line: 517, column: 3, scope: !1045)
!1181 = !DILocation(line: 517, column: 22, scope: !1045)
!1182 = !DILocation(line: 517, column: 33, scope: !1045)
!1183 = !DILocation(line: 521, column: 3, scope: !1045)
!1184 = !DILocation(line: 528, column: 35, scope: !1045)
!1185 = !DILocation(line: 528, column: 41, scope: !1045)
!1186 = !DILocation(line: 528, column: 7, scope: !1045)
!1187 = !DILocation(line: 527, column: 3, scope: !1045)
!1188 = !DILocation(line: 527, column: 25, scope: !1045)
!1189 = !DILocation(line: 527, column: 35, scope: !1045)
!1190 = !DILocation(line: 530, column: 35, scope: !1045)
!1191 = !DILocation(line: 530, column: 41, scope: !1045)
!1192 = !DILocation(line: 530, column: 7, scope: !1045)
!1193 = !DILocation(line: 529, column: 3, scope: !1045)
!1194 = !DILocation(line: 529, column: 25, scope: !1045)
!1195 = !DILocation(line: 529, column: 34, scope: !1045)
!1196 = !DILocation(line: 532, column: 8, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 532, column: 7)
!1198 = !DILocation(line: 532, column: 30, scope: !1197)
!1199 = !DILocation(line: 533, column: 7, scope: !1197)
!1200 = !DILocation(line: 533, column: 11, scope: !1197)
!1201 = !DILocation(line: 533, column: 33, scope: !1197)
!1202 = !DILocation(line: 532, column: 7, scope: !1045)
!1203 = !DILocation(line: 534, column: 4, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 533, column: 44)
!1205 = !DILocation(line: 536, column: 31, scope: !1204)
!1206 = !DILocation(line: 536, column: 4, scope: !1204)
!1207 = !DILocation(line: 537, column: 4, scope: !1204)
!1208 = !DILocation(line: 542, column: 25, scope: !1045)
!1209 = !DILocation(line: 542, column: 47, scope: !1045)
!1210 = !DILocation(line: 542, column: 3, scope: !1045)
!1211 = !DILocation(line: 543, column: 25, scope: !1045)
!1212 = !DILocation(line: 543, column: 47, scope: !1045)
!1213 = !DILocation(line: 543, column: 3, scope: !1045)
!1214 = !DILocation(line: 563, column: 13, scope: !1045)
!1215 = !DILocation(line: 563, column: 7, scope: !1045)
!1216 = !DILocation(line: 562, column: 3, scope: !1045)
!1217 = !DILocation(line: 562, column: 25, scope: !1045)
!1218 = !DILocation(line: 562, column: 31, scope: !1045)
!1219 = !DILocation(line: 576, column: 3, scope: !1045)
!1220 = !DILocation(line: 582, column: 3, scope: !1045)
!1221 = !DILocation(line: 590, column: 28, scope: !947)
!1222 = !DILocation(line: 590, column: 34, scope: !947)
!1223 = !DILocation(line: 590, column: 46, scope: !947)
!1224 = !DILocation(line: 591, column: 24, scope: !947)
!1225 = !DILocation(line: 591, column: 30, scope: !947)
!1226 = !DILocation(line: 591, column: 7, scope: !947)
!1227 = !DILocation(line: 590, column: 6, scope: !947)
!1228 = !DILocation(line: 589, column: 9, scope: !947)
!1229 = !DILocation(line: 600, column: 27, scope: !947)
!1230 = !DILocation(line: 600, column: 2, scope: !947)
!1231 = !DILocation(line: 601, column: 2, scope: !947)
!1232 = !DILocation(line: 602, column: 1, scope: !947)
!1233 = !DISubprogram(name: "acpi_error", scope: !1234, file: !1234, line: 901, type: !1235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1234 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !1237, !18, !1237, null}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!1238 = !DISubprogram(name: "acpi_ns_get_type", scope: !1239, file: !1239, line: 379, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!1242, !49}
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !17, line: 644, baseType: !18)
!1243 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1244, file: !1244, line: 225, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!1237, !1242}
!1247 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1244, file: !1244, line: 436, type: !1248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!53, !1237, !18, !18, !1242}
!1250 = !DISubprogram(name: "acpi_ut_delete_object_desc", scope: !1244, file: !1244, line: 449, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{null, !53}
!1253 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1239, file: !1239, line: 298, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!53, !49}
!1256 = !DISubprogram(name: "acpi_ds_get_buffer_arguments", scope: !1257, file: !1257, line: 27, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!16, !53}
!1260 = !DISubprogram(name: "acpi_ut_add_reference", scope: !1244, file: !1244, line: 367, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = !DISubprogram(name: "acpi_ns_attach_object", scope: !1239, file: !1239, line: 295, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!16, !49, !53, !1242}
!1264 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1244, file: !1244, line: 369, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
