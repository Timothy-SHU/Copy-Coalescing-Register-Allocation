; ModuleID = 'drivers/acpi/acpica/exfldio.c'
source_filename = "drivers/acpi/acpica/exfldio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_field_common = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_buffer_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i8, ptr }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_bank_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr, ptr }
%struct.acpi_object_index_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr, ptr }

@_acpi_module_name = internal constant [8 x i8] c"exfldio\00", align 1, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"Region %s (ID=%u) not implemented\00", align 1, !dbg !49
@.str.1 = private unnamed_addr constant [33 x i8] c"Region %s (ID=%u) has no handler\00", align 1, !dbg !54
@.str.2 = private unnamed_addr constant [31 x i8] c"Unknown UpdateRule value: 0x%X\00", align 1, !dbg !59
@.str.3 = private unnamed_addr constant [50 x i8] c"Field size %u (bits) is too large for buffer (%u)\00", align 1, !dbg !64
@.str.4 = private unnamed_addr constant [36 x i8] c"Needed Region, found type 0x%X (%s)\00", align 1, !dbg !69
@.str.5 = private unnamed_addr constant [42 x i8] c"Invalid/unknown Address Space ID: 0x%2.2X\00", align 1, !dbg !74
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"Field [%4.4s] access width (%u bytes) too large for region [%4.4s] (length %u)\00", align 1, !dbg !79
@.str.7 = private unnamed_addr constant [85 x i8] c"Field [%4.4s] Base+Offset+Width %u+%u+%u is beyond end of region [%4.4s] (length %u)\00", align 1, !dbg !84
@.str.8 = private unnamed_addr constant [34 x i8] c"Wrong object type in field I/O %u\00", align 1, !dbg !89
@.str.9 = private unnamed_addr constant [52 x i8] c"Index value 0x%8.8X%8.8X overflows field width 0x%X\00", align 1, !dbg !91
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !96

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_access_region(ptr noundef %obj_desc, i32 noundef %field_datum_byte_offset, ptr noundef %value, i32 noundef %function) #0 align 16 !dbg !114 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %field_datum_byte_offset.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %function.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %rgn_desc = alloca ptr, align 8
  %region_offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !877, metadata !DIExpression()), !dbg !884
  store i32 %field_datum_byte_offset, ptr %field_datum_byte_offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %field_datum_byte_offset.addr, metadata !878, metadata !DIExpression()), !dbg !885
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !879, metadata !DIExpression()), !dbg !886
  store i32 %function, ptr %function.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %function.addr, metadata !880, metadata !DIExpression()), !dbg !887
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !888
  call void @llvm.dbg.declare(metadata ptr %status, metadata !881, metadata !DIExpression()), !dbg !889
  call void @llvm.lifetime.start.p0(i64 8, ptr %rgn_desc) #15, !dbg !890
  call void @llvm.dbg.declare(metadata ptr %rgn_desc, metadata !882, metadata !DIExpression()), !dbg !891
  call void @llvm.lifetime.start.p0(i64 4, ptr %region_offset) #15, !dbg !892
  call void @llvm.dbg.declare(metadata ptr %region_offset, metadata !883, metadata !DIExpression()), !dbg !893
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !894
  %1 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !895
  %call = call i32 @acpi_ex_setup_region(ptr noundef %0, i32 noundef %1) #16, !dbg !896
  store i32 %call, ptr %status, align 4, !dbg !897
  %2 = load i32, ptr %status, align 4, !dbg !898
  %tobool = icmp ne i32 %2, 0, !dbg !898
  br i1 %tobool, label %if.then, label %if.end, !dbg !900

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !901
  store i32 %3, ptr %retval, align 4, !dbg !901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !901

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !903
  %region_obj = getelementptr inbounds %struct.acpi_object_field_common, ptr %4, i32 0, i32 14, !dbg !904
  %5 = load ptr, ptr %region_obj, align 8, !dbg !904
  store ptr %5, ptr %rgn_desc, align 8, !dbg !905
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !906
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_field_common, ptr %6, i32 0, i32 10, !dbg !907
  %7 = load i32, ptr %base_byte_offset, align 4, !dbg !907
  %8 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !908
  %add = add i32 %7, %8, !dbg !909
  store i32 %add, ptr %region_offset, align 4, !dbg !910
  %9 = load i32, ptr %function.addr, align 4, !dbg !911
  %and = and i32 %9, 1, !dbg !913
  %cmp = icmp eq i32 %and, 0, !dbg !914
  br i1 %cmp, label %if.then1, label %if.else, !dbg !915

if.then1:                                         ; preds = %if.end
  br label %if.end2, !dbg !916

if.else:                                          ; preds = %if.end
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1
  %10 = load ptr, ptr %rgn_desc, align 8, !dbg !918
  %11 = load ptr, ptr %obj_desc.addr, align 8, !dbg !919
  %12 = load i32, ptr %function.addr, align 4, !dbg !920
  %13 = load i32, ptr %region_offset, align 4, !dbg !921
  %14 = load ptr, ptr %obj_desc.addr, align 8, !dbg !922
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, ptr %14, i32 0, i32 7, !dbg !922
  %15 = load i8, ptr %access_byte_width, align 1, !dbg !922
  %conv = zext i8 %15 to i32, !dbg !922
  %shl = shl i32 %conv, 3, !dbg !922
  %16 = load ptr, ptr %value.addr, align 8, !dbg !923
  %call3 = call i32 @acpi_ev_address_space_dispatch(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %shl, ptr noundef %16) #16, !dbg !924
  store i32 %call3, ptr %status, align 4, !dbg !925
  %17 = load i32, ptr %status, align 4, !dbg !926
  %tobool4 = icmp ne i32 %17, 0, !dbg !926
  br i1 %tobool4, label %if.then5, label %if.end22, !dbg !928

if.then5:                                         ; preds = %if.end2
  %18 = load i32, ptr %status, align 4, !dbg !929
  %cmp6 = icmp eq i32 %18, 14, !dbg !932
  br i1 %cmp6, label %if.then8, label %if.else12, !dbg !933

if.then8:                                         ; preds = %if.then5
  %19 = load ptr, ptr %rgn_desc, align 8, !dbg !934
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %19, i32 0, i32 5, !dbg !934
  %20 = load i8, ptr %space_id, align 1, !dbg !934
  %call9 = call ptr @acpi_ut_get_region_name(i8 noundef zeroext %20) #16, !dbg !934
  %21 = load ptr, ptr %rgn_desc, align 8, !dbg !934
  %space_id10 = getelementptr inbounds %struct.acpi_object_region, ptr %21, i32 0, i32 5, !dbg !934
  %22 = load i8, ptr %space_id10, align 1, !dbg !934
  %conv11 = zext i8 %22 to i32, !dbg !934
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 255, ptr noundef @.str, ptr noundef %call9, i32 noundef %conv11) #16, !dbg !934
  br label %if.end21, !dbg !936

if.else12:                                        ; preds = %if.then5
  %23 = load i32, ptr %status, align 4, !dbg !937
  %cmp13 = icmp eq i32 %23, 6, !dbg !939
  br i1 %cmp13, label %if.then15, label %if.end20, !dbg !940

if.then15:                                        ; preds = %if.else12
  %24 = load ptr, ptr %rgn_desc, align 8, !dbg !941
  %space_id16 = getelementptr inbounds %struct.acpi_object_region, ptr %24, i32 0, i32 5, !dbg !941
  %25 = load i8, ptr %space_id16, align 1, !dbg !941
  %call17 = call ptr @acpi_ut_get_region_name(i8 noundef zeroext %25) #16, !dbg !941
  %26 = load ptr, ptr %rgn_desc, align 8, !dbg !941
  %space_id18 = getelementptr inbounds %struct.acpi_object_region, ptr %26, i32 0, i32 5, !dbg !941
  %27 = load i8, ptr %space_id18, align 1, !dbg !941
  %conv19 = zext i8 %27 to i32, !dbg !941
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 261, ptr noundef @.str.1, ptr noundef %call17, i32 noundef %conv19) #16, !dbg !941
  br label %if.end20, !dbg !943

if.end20:                                         ; preds = %if.then15, %if.else12
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then8
  br label %if.end22, !dbg !944

if.end22:                                         ; preds = %if.end21, %if.end2
  %28 = load i32, ptr %status, align 4, !dbg !945
  store i32 %28, ptr %retval, align 4, !dbg !945
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !945

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %region_offset) #15, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %rgn_desc) #15, !dbg !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !946
  %29 = load i32, ptr %retval, align 4, !dbg !946
  ret i32 %29, !dbg !946
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_setup_region(ptr noundef %obj_desc, i32 noundef %field_datum_byte_offset) #0 align 16 !dbg !947 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %field_datum_byte_offset.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %rgn_desc = alloca ptr, align 8
  %space_id = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !951, metadata !DIExpression()), !dbg !956
  store i32 %field_datum_byte_offset, ptr %field_datum_byte_offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %field_datum_byte_offset.addr, metadata !952, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %status, metadata !953, metadata !DIExpression()), !dbg !959
  store i32 0, ptr %status, align 4, !dbg !959
  call void @llvm.lifetime.start.p0(i64 8, ptr %rgn_desc) #15, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %rgn_desc, metadata !954, metadata !DIExpression()), !dbg !961
  call void @llvm.lifetime.start.p0(i64 1, ptr %space_id) #15, !dbg !962
  call void @llvm.dbg.declare(metadata ptr %space_id, metadata !955, metadata !DIExpression()), !dbg !963
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !964
  %region_obj = getelementptr inbounds %struct.acpi_object_field_common, ptr %0, i32 0, i32 14, !dbg !965
  %1 = load ptr, ptr %region_obj, align 8, !dbg !965
  store ptr %1, ptr %rgn_desc, align 8, !dbg !966
  %2 = load ptr, ptr %rgn_desc, align 8, !dbg !967
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !969
  %3 = load i8, ptr %type, align 1, !dbg !969
  %conv = zext i8 %3 to i32, !dbg !967
  %cmp = icmp ne i32 %conv, 10, !dbg !970
  br i1 %cmp, label %if.then, label %if.end, !dbg !971

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %rgn_desc, align 8, !dbg !972
  %type2 = getelementptr inbounds %struct.acpi_object_common, ptr %4, i32 0, i32 2, !dbg !972
  %5 = load i8, ptr %type2, align 1, !dbg !972
  %conv3 = zext i8 %5 to i32, !dbg !972
  %6 = load ptr, ptr %rgn_desc, align 8, !dbg !972
  %call = call ptr @acpi_ut_get_object_type_name(ptr noundef %6) #16, !dbg !972
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 63, ptr noundef @.str.4, i32 noundef %conv3, ptr noundef %call) #16, !dbg !972
  store i32 12291, ptr %retval, align 4, !dbg !974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !974

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %rgn_desc, align 8, !dbg !975
  %space_id4 = getelementptr inbounds %struct.acpi_object_region, ptr %7, i32 0, i32 5, !dbg !976
  %8 = load i8, ptr %space_id4, align 1, !dbg !976
  store i8 %8, ptr %space_id, align 1, !dbg !977
  %9 = load i8, ptr %space_id, align 1, !dbg !978
  %call5 = call zeroext i8 @acpi_is_valid_space_id(i8 noundef zeroext %9) #16, !dbg !980
  %tobool = icmp ne i8 %call5, 0, !dbg !980
  br i1 %tobool, label %if.end8, label %if.then6, !dbg !981

if.then6:                                         ; preds = %if.end
  %10 = load i8, ptr %space_id, align 1, !dbg !982
  %conv7 = zext i8 %10 to i32, !dbg !982
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 75, ptr noundef @.str.5, i32 noundef %conv7) #16, !dbg !982
  store i32 12304, ptr %retval, align 4, !dbg !984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !984

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %rgn_desc, align 8, !dbg !985
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %11, i32 0, i32 4, !dbg !987
  %12 = load i8, ptr %flags, align 4, !dbg !987
  %conv9 = zext i8 %12 to i32, !dbg !985
  %and = and i32 %conv9, 4, !dbg !988
  %tobool10 = icmp ne i32 %and, 0, !dbg !988
  br i1 %tobool10, label %if.end16, label %if.then11, !dbg !989

if.then11:                                        ; preds = %if.end8
  %13 = load ptr, ptr %rgn_desc, align 8, !dbg !990
  %call12 = call i32 @acpi_ds_get_region_arguments(ptr noundef %13) #16, !dbg !992
  store i32 %call12, ptr %status, align 4, !dbg !993
  %14 = load i32, ptr %status, align 4, !dbg !994
  %tobool13 = icmp ne i32 %14, 0, !dbg !994
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !996

if.then14:                                        ; preds = %if.then11
  %15 = load i32, ptr %status, align 4, !dbg !997
  store i32 %15, ptr %retval, align 4, !dbg !997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !997

if.end15:                                         ; preds = %if.then11
  br label %if.end16, !dbg !999

if.end16:                                         ; preds = %if.end15, %if.end8
  %16 = load i8, ptr %space_id, align 1, !dbg !1000
  %conv17 = zext i8 %16 to i32, !dbg !1000
  %cmp18 = icmp eq i32 %conv17, 4, !dbg !1002
  br i1 %cmp18, label %if.then27, label %lor.lhs.false, !dbg !1003

lor.lhs.false:                                    ; preds = %if.end16
  %17 = load i8, ptr %space_id, align 1, !dbg !1004
  %conv20 = zext i8 %17 to i32, !dbg !1004
  %cmp21 = icmp eq i32 %conv20, 9, !dbg !1005
  br i1 %cmp21, label %if.then27, label %lor.lhs.false23, !dbg !1006

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %18 = load i8, ptr %space_id, align 1, !dbg !1007
  %conv24 = zext i8 %18 to i32, !dbg !1007
  %cmp25 = icmp eq i32 %conv24, 7, !dbg !1008
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !1009

if.then27:                                        ; preds = %lor.lhs.false23, %lor.lhs.false, %if.end16
  store i32 0, ptr %retval, align 4, !dbg !1010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1010

if.end28:                                         ; preds = %lor.lhs.false23
  %19 = load ptr, ptr %rgn_desc, align 8, !dbg !1012
  %length = getelementptr inbounds %struct.acpi_object_region, ptr %19, i32 0, i32 10, !dbg !1014
  %20 = load i32, ptr %length, align 8, !dbg !1014
  %21 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1015
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_field_common, ptr %21, i32 0, i32 10, !dbg !1016
  %22 = load i32, ptr %base_byte_offset, align 4, !dbg !1016
  %23 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !1017
  %add = add i32 %22, %23, !dbg !1018
  %24 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1019
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, ptr %24, i32 0, i32 7, !dbg !1020
  %25 = load i8, ptr %access_byte_width, align 1, !dbg !1020
  %conv29 = zext i8 %25 to i32, !dbg !1019
  %add30 = add i32 %add, %conv29, !dbg !1021
  %cmp31 = icmp ult i32 %20, %add30, !dbg !1022
  br i1 %cmp31, label %if.then33, label %if.end78, !dbg !1023

if.then33:                                        ; preds = %if.end28
  %26 = load i8, ptr @acpi_gbl_enable_interpreter_slack, align 1, !dbg !1024
  %tobool34 = icmp ne i8 %26, 0, !dbg !1024
  br i1 %tobool34, label %if.then35, label %if.end56, !dbg !1027

if.then35:                                        ; preds = %if.then33
  %27 = load ptr, ptr %rgn_desc, align 8, !dbg !1028
  %length36 = getelementptr inbounds %struct.acpi_object_region, ptr %27, i32 0, i32 10, !dbg !1028
  %28 = load i32, ptr %length36, align 8, !dbg !1028
  %conv37 = zext i32 %28 to i64, !dbg !1028
  %29 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1028
  %access_byte_width38 = getelementptr inbounds %struct.acpi_object_field_common, ptr %29, i32 0, i32 7, !dbg !1028
  %30 = load i8, ptr %access_byte_width38, align 1, !dbg !1028
  %conv39 = zext i8 %30 to i64, !dbg !1028
  %sub = sub i64 %conv39, 1, !dbg !1028
  %add40 = add i64 %conv37, %sub, !dbg !1028
  %31 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1028
  %access_byte_width41 = getelementptr inbounds %struct.acpi_object_field_common, ptr %31, i32 0, i32 7, !dbg !1028
  %32 = load i8, ptr %access_byte_width41, align 1, !dbg !1028
  %conv42 = zext i8 %32 to i64, !dbg !1028
  %sub43 = sub i64 %conv42, 1, !dbg !1028
  %not = xor i64 %sub43, -1, !dbg !1028
  %and44 = and i64 %add40, %not, !dbg !1028
  %33 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1031
  %base_byte_offset45 = getelementptr inbounds %struct.acpi_object_field_common, ptr %33, i32 0, i32 10, !dbg !1032
  %34 = load i32, ptr %base_byte_offset45, align 4, !dbg !1032
  %conv46 = zext i32 %34 to i64, !dbg !1033
  %35 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1034
  %access_byte_width47 = getelementptr inbounds %struct.acpi_object_field_common, ptr %35, i32 0, i32 7, !dbg !1035
  %36 = load i8, ptr %access_byte_width47, align 1, !dbg !1035
  %conv48 = zext i8 %36 to i64, !dbg !1034
  %add49 = add i64 %conv46, %conv48, !dbg !1036
  %37 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !1037
  %conv50 = zext i32 %37 to i64, !dbg !1037
  %add51 = add i64 %add49, %conv50, !dbg !1038
  %cmp52 = icmp uge i64 %and44, %add51, !dbg !1039
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !1040

if.then54:                                        ; preds = %if.then35
  store i32 0, ptr %retval, align 4, !dbg !1041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1041

if.end55:                                         ; preds = %if.then35
  br label %if.end56, !dbg !1043

if.end56:                                         ; preds = %if.end55, %if.then33
  %38 = load ptr, ptr %rgn_desc, align 8, !dbg !1044
  %length57 = getelementptr inbounds %struct.acpi_object_region, ptr %38, i32 0, i32 10, !dbg !1046
  %39 = load i32, ptr %length57, align 8, !dbg !1046
  %40 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1047
  %access_byte_width58 = getelementptr inbounds %struct.acpi_object_field_common, ptr %40, i32 0, i32 7, !dbg !1048
  %41 = load i8, ptr %access_byte_width58, align 1, !dbg !1048
  %conv59 = zext i8 %41 to i32, !dbg !1047
  %cmp60 = icmp ult i32 %39, %conv59, !dbg !1049
  br i1 %cmp60, label %if.then62, label %if.end69, !dbg !1050

if.then62:                                        ; preds = %if.end56
  %42 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1051
  %node = getelementptr inbounds %struct.acpi_object_field_common, ptr %42, i32 0, i32 8, !dbg !1051
  %43 = load ptr, ptr %node, align 8, !dbg !1051
  %call63 = call ptr @acpi_ut_get_node_name(ptr noundef %43) #16, !dbg !1051
  %44 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1051
  %access_byte_width64 = getelementptr inbounds %struct.acpi_object_field_common, ptr %44, i32 0, i32 7, !dbg !1051
  %45 = load i8, ptr %access_byte_width64, align 1, !dbg !1051
  %conv65 = zext i8 %45 to i32, !dbg !1051
  %46 = load ptr, ptr %rgn_desc, align 8, !dbg !1051
  %node66 = getelementptr inbounds %struct.acpi_object_region, ptr %46, i32 0, i32 6, !dbg !1051
  %47 = load ptr, ptr %node66, align 8, !dbg !1051
  %call67 = call ptr @acpi_ut_get_node_name(ptr noundef %47) #16, !dbg !1051
  %48 = load ptr, ptr %rgn_desc, align 8, !dbg !1051
  %length68 = getelementptr inbounds %struct.acpi_object_region, ptr %48, i32 0, i32 10, !dbg !1051
  %49 = load i32, ptr %length68, align 8, !dbg !1051
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 148, ptr noundef @.str.6, ptr noundef %call63, i32 noundef %conv65, ptr noundef %call67, i32 noundef %49) #16, !dbg !1051
  br label %if.end69, !dbg !1053

if.end69:                                         ; preds = %if.then62, %if.end56
  %50 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1054
  %node70 = getelementptr inbounds %struct.acpi_object_field_common, ptr %50, i32 0, i32 8, !dbg !1054
  %51 = load ptr, ptr %node70, align 8, !dbg !1054
  %call71 = call ptr @acpi_ut_get_node_name(ptr noundef %51) #16, !dbg !1054
  %52 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1054
  %base_byte_offset72 = getelementptr inbounds %struct.acpi_object_field_common, ptr %52, i32 0, i32 10, !dbg !1054
  %53 = load i32, ptr %base_byte_offset72, align 4, !dbg !1054
  %54 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !1054
  %55 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1054
  %access_byte_width73 = getelementptr inbounds %struct.acpi_object_field_common, ptr %55, i32 0, i32 7, !dbg !1054
  %56 = load i8, ptr %access_byte_width73, align 1, !dbg !1054
  %conv74 = zext i8 %56 to i32, !dbg !1054
  %57 = load ptr, ptr %rgn_desc, align 8, !dbg !1054
  %node75 = getelementptr inbounds %struct.acpi_object_region, ptr %57, i32 0, i32 6, !dbg !1054
  %58 = load ptr, ptr %node75, align 8, !dbg !1054
  %call76 = call ptr @acpi_ut_get_node_name(ptr noundef %58) #16, !dbg !1054
  %59 = load ptr, ptr %rgn_desc, align 8, !dbg !1054
  %length77 = getelementptr inbounds %struct.acpi_object_region, ptr %59, i32 0, i32 10, !dbg !1054
  %60 = load i32, ptr %length77, align 8, !dbg !1054
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 163, ptr noundef @.str.7, ptr noundef %call71, i32 noundef %53, i32 noundef %54, i32 noundef %conv74, ptr noundef %call76, i32 noundef %60) #16, !dbg !1054
  store i32 12297, ptr %retval, align 4, !dbg !1055
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1055

if.end78:                                         ; preds = %if.end28
  store i32 0, ptr %retval, align 4, !dbg !1056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1056

cleanup:                                          ; preds = %if.end78, %if.end69, %if.then54, %if.then27, %if.then14, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %space_id) #15, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %rgn_desc) #15, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1057
  %61 = load i32, ptr %retval, align 4, !dbg !1057
  ret i32 %61, !dbg !1057
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1058 dso_local i32 @acpi_ev_address_space_dispatch(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1062 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1067 dso_local ptr @acpi_ut_get_region_name(i8 noundef zeroext) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_write_with_update_rule(ptr noundef %obj_desc, i64 noundef %mask, i64 noundef %field_value, i32 noundef %field_datum_byte_offset) #0 align 16 !dbg !1071 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  %field_value.addr = alloca i64, align 8
  %field_datum_byte_offset.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %merged_value = alloca i64, align 8
  %current_value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1075, metadata !DIExpression()), !dbg !1082
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !1076, metadata !DIExpression()), !dbg !1083
  store i64 %field_value, ptr %field_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %field_value.addr, metadata !1077, metadata !DIExpression()), !dbg !1084
  store i32 %field_datum_byte_offset, ptr %field_datum_byte_offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %field_datum_byte_offset.addr, metadata !1078, metadata !DIExpression()), !dbg !1085
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1079, metadata !DIExpression()), !dbg !1087
  store i32 0, ptr %status, align 4, !dbg !1087
  call void @llvm.lifetime.start.p0(i64 8, ptr %merged_value) #15, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %merged_value, metadata !1080, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_value) #15, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %current_value, metadata !1081, metadata !DIExpression()), !dbg !1091
  %0 = load i64, ptr %field_value.addr, align 8, !dbg !1092
  store i64 %0, ptr %merged_value, align 8, !dbg !1093
  %1 = load i64, ptr %mask.addr, align 8, !dbg !1094
  %cmp = icmp ne i64 %1, -1, !dbg !1096
  br i1 %cmp, label %if.then, label %if.end18, !dbg !1097

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1098
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, ptr %2, i32 0, i32 5, !dbg !1100
  %3 = load i8, ptr %field_flags, align 1, !dbg !1100
  %conv = zext i8 %3 to i32, !dbg !1098
  %and = and i32 %conv, 96, !dbg !1101
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 32, label %sw.bb10
    i32 64, label %sw.bb13
  ], !dbg !1102

sw.bb:                                            ; preds = %if.then
  %4 = load i64, ptr %mask.addr, align 8, !dbg !1103
  %not = xor i64 %4, -1, !dbg !1106
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1107
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, ptr %5, i32 0, i32 7, !dbg !1107
  %6 = load i8, ptr %access_byte_width, align 1, !dbg !1107
  %conv1 = zext i8 %6 to i32, !dbg !1107
  %shl = shl i32 %conv1, 3, !dbg !1107
  %sub = sub i32 64, %shl, !dbg !1108
  %sh_prom = zext i32 %sub to i64, !dbg !1109
  %shl2 = shl i64 %not, %sh_prom, !dbg !1109
  %cmp3 = icmp ne i64 %shl2, 0, !dbg !1110
  br i1 %cmp3, label %if.then5, label %if.end9, !dbg !1111

if.then5:                                         ; preds = %sw.bb
  %7 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1112
  %8 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !1114
  %call = call i32 @acpi_ex_field_datum_io(ptr noundef %7, i32 noundef %8, ptr noundef %current_value, i32 noundef 0) #16, !dbg !1115
  store i32 %call, ptr %status, align 4, !dbg !1116
  %9 = load i32, ptr %status, align 4, !dbg !1117
  %tobool = icmp ne i32 %9, 0, !dbg !1117
  br i1 %tobool, label %if.then6, label %if.end, !dbg !1119

if.then6:                                         ; preds = %if.then5
  %10 = load i32, ptr %status, align 4, !dbg !1120
  store i32 %10, ptr %retval, align 4, !dbg !1120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1120

if.end:                                           ; preds = %if.then5
  %11 = load i64, ptr %current_value, align 8, !dbg !1122
  %12 = load i64, ptr %mask.addr, align 8, !dbg !1123
  %not7 = xor i64 %12, -1, !dbg !1124
  %and8 = and i64 %11, %not7, !dbg !1125
  %13 = load i64, ptr %merged_value, align 8, !dbg !1126
  %or = or i64 %13, %and8, !dbg !1126
  store i64 %or, ptr %merged_value, align 8, !dbg !1126
  br label %if.end9, !dbg !1127

if.end9:                                          ; preds = %if.end, %sw.bb
  br label %sw.epilog, !dbg !1128

sw.bb10:                                          ; preds = %if.then
  %14 = load i64, ptr %mask.addr, align 8, !dbg !1129
  %not11 = xor i64 %14, -1, !dbg !1130
  %15 = load i64, ptr %merged_value, align 8, !dbg !1131
  %or12 = or i64 %15, %not11, !dbg !1131
  store i64 %or12, ptr %merged_value, align 8, !dbg !1131
  br label %sw.epilog, !dbg !1132

sw.bb13:                                          ; preds = %if.then
  %16 = load i64, ptr %mask.addr, align 8, !dbg !1133
  %17 = load i64, ptr %merged_value, align 8, !dbg !1134
  %and14 = and i64 %17, %16, !dbg !1134
  store i64 %and14, ptr %merged_value, align 8, !dbg !1134
  br label %sw.epilog, !dbg !1135

sw.default:                                       ; preds = %if.then
  %18 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1136
  %field_flags15 = getelementptr inbounds %struct.acpi_object_field_common, ptr %18, i32 0, i32 5, !dbg !1136
  %19 = load i8, ptr %field_flags15, align 1, !dbg !1136
  %conv16 = zext i8 %19 to i32, !dbg !1136
  %and17 = and i32 %conv16, 96, !dbg !1136
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 607, ptr noundef @.str.2, i32 noundef %and17) #16, !dbg !1136
  store i32 12292, ptr %retval, align 4, !dbg !1137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1137

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb10, %if.end9
  br label %if.end18, !dbg !1138

if.end18:                                         ; preds = %sw.epilog, %entry
  %20 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1139
  %21 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !1140
  %call19 = call i32 @acpi_ex_field_datum_io(ptr noundef %20, i32 noundef %21, ptr noundef %merged_value, i32 noundef 1) #16, !dbg !1141
  store i32 %call19, ptr %status, align 4, !dbg !1142
  %22 = load i32, ptr %status, align 4, !dbg !1143
  store i32 %22, ptr %retval, align 4, !dbg !1143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1143

cleanup:                                          ; preds = %if.end18, %sw.default, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_value) #15, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 8, ptr %merged_value) #15, !dbg !1144
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1144
  %23 = load i32, ptr %retval, align 4, !dbg !1144
  ret i32 %23, !dbg !1144
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_field_datum_io(ptr noundef %obj_desc, i32 noundef %field_datum_byte_offset, ptr noundef %value, i32 noundef %read_write) #0 align 16 !dbg !1145 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %field_datum_byte_offset.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %read_write.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %local_value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1147, metadata !DIExpression()), !dbg !1153
  store i32 %field_datum_byte_offset, ptr %field_datum_byte_offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %field_datum_byte_offset.addr, metadata !1148, metadata !DIExpression()), !dbg !1154
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1149, metadata !DIExpression()), !dbg !1155
  store i32 %read_write, ptr %read_write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %read_write.addr, metadata !1150, metadata !DIExpression()), !dbg !1156
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1151, metadata !DIExpression()), !dbg !1158
  call void @llvm.lifetime.start.p0(i64 8, ptr %local_value) #15, !dbg !1159
  call void @llvm.dbg.declare(metadata ptr %local_value, metadata !1152, metadata !DIExpression()), !dbg !1160
  %0 = load i32, ptr %read_write.addr, align 4, !dbg !1161
  %cmp = icmp eq i32 %0, 0, !dbg !1163
  br i1 %cmp, label %if.then, label %if.end2, !dbg !1164

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %value.addr, align 8, !dbg !1165
  %tobool = icmp ne ptr %1, null, !dbg !1165
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1168

if.then1:                                         ; preds = %if.then
  store i64 0, ptr %local_value, align 8, !dbg !1169
  store ptr %local_value, ptr %value.addr, align 8, !dbg !1171
  br label %if.end, !dbg !1172

if.end:                                           ; preds = %if.then1, %if.then
  %2 = load ptr, ptr %value.addr, align 8, !dbg !1173
  store i64 0, ptr %2, align 8, !dbg !1174
  br label %if.end2, !dbg !1175

if.end2:                                          ; preds = %if.end, %entry
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1176
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !1177
  %4 = load i8, ptr %type, align 1, !dbg !1177
  %conv = zext i8 %4 to i32, !dbg !1176
  switch i32 %conv, label %sw.default [
    i32 14, label %sw.bb
    i32 18, label %sw.bb26
    i32 17, label %sw.bb39
    i32 19, label %sw.bb41
  ], !dbg !1178

sw.bb:                                            ; preds = %if.end2
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1179
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 4, !dbg !1182
  %6 = load i8, ptr %flags, align 4, !dbg !1182
  %conv3 = zext i8 %6 to i32, !dbg !1179
  %and = and i32 %conv3, 4, !dbg !1183
  %tobool4 = icmp ne i32 %and, 0, !dbg !1183
  br i1 %tobool4, label %if.end9, label %if.then5, !dbg !1184

if.then5:                                         ; preds = %sw.bb
  %7 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1185
  %call = call i32 @acpi_ds_get_buffer_field_arguments(ptr noundef %7) #16, !dbg !1187
  store i32 %call, ptr %status, align 4, !dbg !1188
  %8 = load i32, ptr %status, align 4, !dbg !1189
  %tobool6 = icmp ne i32 %8, 0, !dbg !1189
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1191

if.then7:                                         ; preds = %if.then5
  %9 = load i32, ptr %status, align 4, !dbg !1192
  store i32 %9, ptr %retval, align 4, !dbg !1192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1192

if.end8:                                          ; preds = %if.then5
  br label %if.end9, !dbg !1194

if.end9:                                          ; preds = %if.end8, %sw.bb
  %10 = load i32, ptr %read_write.addr, align 4, !dbg !1195
  %cmp10 = icmp eq i32 %10, 0, !dbg !1197
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !1198

if.then12:                                        ; preds = %if.end9
  %11 = load ptr, ptr %value.addr, align 8, !dbg !1199
  %12 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1201
  %buffer_obj = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %12, i32 0, i32 15, !dbg !1202
  %13 = load ptr, ptr %buffer_obj, align 8, !dbg !1202
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %13, i32 0, i32 5, !dbg !1203
  %14 = load ptr, ptr %pointer, align 8, !dbg !1203
  %15 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1204
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %15, i32 0, i32 10, !dbg !1205
  %16 = load i32, ptr %base_byte_offset, align 4, !dbg !1205
  %idx.ext = zext i32 %16 to i64, !dbg !1206
  %add.ptr = getelementptr i8, ptr %14, i64 %idx.ext, !dbg !1206
  %17 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !1207
  %idx.ext13 = zext i32 %17 to i64, !dbg !1208
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i64 %idx.ext13, !dbg !1208
  %18 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1209
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, ptr %18, i32 0, i32 7, !dbg !1210
  %19 = load i8, ptr %access_byte_width, align 1, !dbg !1210
  %conv15 = zext i8 %19 to i64, !dbg !1209
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 1 %add.ptr14, i64 %conv15, i1 false), !dbg !1211
  br label %if.end25, !dbg !1212

if.else:                                          ; preds = %if.end9
  %20 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1213
  %buffer_obj16 = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %20, i32 0, i32 15, !dbg !1215
  %21 = load ptr, ptr %buffer_obj16, align 8, !dbg !1215
  %pointer17 = getelementptr inbounds %struct.acpi_object_buffer, ptr %21, i32 0, i32 5, !dbg !1216
  %22 = load ptr, ptr %pointer17, align 8, !dbg !1216
  %23 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1217
  %base_byte_offset18 = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %23, i32 0, i32 10, !dbg !1218
  %24 = load i32, ptr %base_byte_offset18, align 4, !dbg !1218
  %idx.ext19 = zext i32 %24 to i64, !dbg !1219
  %add.ptr20 = getelementptr i8, ptr %22, i64 %idx.ext19, !dbg !1219
  %25 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !1220
  %idx.ext21 = zext i32 %25 to i64, !dbg !1221
  %add.ptr22 = getelementptr i8, ptr %add.ptr20, i64 %idx.ext21, !dbg !1221
  %26 = load ptr, ptr %value.addr, align 8, !dbg !1222
  %27 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1223
  %access_byte_width23 = getelementptr inbounds %struct.acpi_object_field_common, ptr %27, i32 0, i32 7, !dbg !1224
  %28 = load i8, ptr %access_byte_width23, align 1, !dbg !1224
  %conv24 = zext i8 %28 to i64, !dbg !1223
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr22, ptr align 8 %26, i64 %conv24, i1 false), !dbg !1225
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then12
  store i32 0, ptr %status, align 4, !dbg !1226
  br label %sw.epilog, !dbg !1227

sw.bb26:                                          ; preds = %if.end2
  %29 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1228
  %bank_obj = getelementptr inbounds %struct.acpi_object_bank_field, ptr %29, i32 0, i32 15, !dbg !1230
  %30 = load ptr, ptr %bank_obj, align 8, !dbg !1230
  %31 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1231
  %value27 = getelementptr inbounds %struct.acpi_object_bank_field, ptr %31, i32 0, i32 11, !dbg !1232
  %32 = load i32, ptr %value27, align 8, !dbg !1232
  %conv28 = zext i32 %32 to i64, !dbg !1233
  %call29 = call zeroext i8 @acpi_ex_register_overflow(ptr noundef %30, i64 noundef %conv28) #16, !dbg !1234
  %tobool30 = icmp ne i8 %call29, 0, !dbg !1234
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !1235

if.then31:                                        ; preds = %sw.bb26
  store i32 12313, ptr %retval, align 4, !dbg !1236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1236

if.end32:                                         ; preds = %sw.bb26
  %33 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1238
  %bank_obj33 = getelementptr inbounds %struct.acpi_object_bank_field, ptr %33, i32 0, i32 15, !dbg !1239
  %34 = load ptr, ptr %bank_obj33, align 8, !dbg !1239
  %35 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1240
  %value34 = getelementptr inbounds %struct.acpi_object_bank_field, ptr %35, i32 0, i32 11, !dbg !1241
  %call35 = call i32 @acpi_ex_insert_into_field(ptr noundef %34, ptr noundef %value34, i32 noundef 4) #16, !dbg !1242
  store i32 %call35, ptr %status, align 4, !dbg !1243
  %36 = load i32, ptr %status, align 4, !dbg !1244
  %tobool36 = icmp ne i32 %36, 0, !dbg !1244
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1246

if.then37:                                        ; preds = %if.end32
  %37 = load i32, ptr %status, align 4, !dbg !1247
  store i32 %37, ptr %retval, align 4, !dbg !1247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1247

if.end38:                                         ; preds = %if.end32
  br label %sw.bb39, !dbg !1244

sw.bb39:                                          ; preds = %if.end2, %if.end38
  %38 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1249
  %39 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !1250
  %40 = load ptr, ptr %value.addr, align 8, !dbg !1251
  %41 = load i32, ptr %read_write.addr, align 4, !dbg !1252
  %call40 = call i32 @acpi_ex_access_region(ptr noundef %38, i32 noundef %39, ptr noundef %40, i32 noundef %41) #16, !dbg !1253
  store i32 %call40, ptr %status, align 4, !dbg !1254
  br label %sw.epilog, !dbg !1255

sw.bb41:                                          ; preds = %if.end2
  %42 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1256
  %index_obj = getelementptr inbounds %struct.acpi_object_index_field, ptr %42, i32 0, i32 14, !dbg !1258
  %43 = load ptr, ptr %index_obj, align 8, !dbg !1258
  %44 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1259
  %value42 = getelementptr inbounds %struct.acpi_object_index_field, ptr %44, i32 0, i32 11, !dbg !1260
  %45 = load i32, ptr %value42, align 8, !dbg !1260
  %conv43 = zext i32 %45 to i64, !dbg !1261
  %call44 = call zeroext i8 @acpi_ex_register_overflow(ptr noundef %43, i64 noundef %conv43) #16, !dbg !1262
  %tobool45 = icmp ne i8 %call44, 0, !dbg !1262
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !1263

if.then46:                                        ; preds = %sw.bb41
  store i32 12313, ptr %retval, align 4, !dbg !1264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1264

if.end47:                                         ; preds = %sw.bb41
  %46 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1266
  %value48 = getelementptr inbounds %struct.acpi_object_index_field, ptr %46, i32 0, i32 11, !dbg !1267
  %47 = load i32, ptr %value48, align 8, !dbg !1267
  %48 = load i32, ptr %field_datum_byte_offset.addr, align 4, !dbg !1268
  %add = add i32 %48, %47, !dbg !1268
  store i32 %add, ptr %field_datum_byte_offset.addr, align 4, !dbg !1268
  %49 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1269
  %index_obj49 = getelementptr inbounds %struct.acpi_object_index_field, ptr %49, i32 0, i32 14, !dbg !1270
  %50 = load ptr, ptr %index_obj49, align 8, !dbg !1270
  %call50 = call i32 @acpi_ex_insert_into_field(ptr noundef %50, ptr noundef %field_datum_byte_offset.addr, i32 noundef 4) #16, !dbg !1271
  store i32 %call50, ptr %status, align 4, !dbg !1272
  %51 = load i32, ptr %status, align 4, !dbg !1273
  %tobool51 = icmp ne i32 %51, 0, !dbg !1273
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !1275

if.then52:                                        ; preds = %if.end47
  %52 = load i32, ptr %status, align 4, !dbg !1276
  store i32 %52, ptr %retval, align 4, !dbg !1276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1276

if.end53:                                         ; preds = %if.end47
  %53 = load i32, ptr %read_write.addr, align 4, !dbg !1278
  %cmp54 = icmp eq i32 %53, 0, !dbg !1280
  br i1 %cmp54, label %if.then56, label %if.else58, !dbg !1281

if.then56:                                        ; preds = %if.end53
  %54 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1282
  %data_obj = getelementptr inbounds %struct.acpi_object_index_field, ptr %54, i32 0, i32 15, !dbg !1284
  %55 = load ptr, ptr %data_obj, align 8, !dbg !1284
  %56 = load ptr, ptr %value.addr, align 8, !dbg !1285
  %call57 = call i32 @acpi_ex_extract_from_field(ptr noundef %55, ptr noundef %56, i32 noundef 8) #16, !dbg !1286
  store i32 %call57, ptr %status, align 4, !dbg !1287
  br label %if.end61, !dbg !1288

if.else58:                                        ; preds = %if.end53
  %57 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1289
  %data_obj59 = getelementptr inbounds %struct.acpi_object_index_field, ptr %57, i32 0, i32 15, !dbg !1291
  %58 = load ptr, ptr %data_obj59, align 8, !dbg !1291
  %59 = load ptr, ptr %value.addr, align 8, !dbg !1292
  %call60 = call i32 @acpi_ex_insert_into_field(ptr noundef %58, ptr noundef %59, i32 noundef 8) #16, !dbg !1293
  store i32 %call60, ptr %status, align 4, !dbg !1294
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.then56
  br label %sw.epilog, !dbg !1295

sw.default:                                       ; preds = %if.end2
  %60 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1296
  %type62 = getelementptr inbounds %struct.acpi_object_common, ptr %60, i32 0, i32 2, !dbg !1296
  %61 = load i8, ptr %type62, align 1, !dbg !1296
  %conv63 = zext i8 %61 to i32, !dbg !1296
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 503, ptr noundef @.str.8, i32 noundef %conv63) #16, !dbg !1296
  store i32 12303, ptr %status, align 4, !dbg !1297
  br label %sw.epilog, !dbg !1298

sw.epilog:                                        ; preds = %sw.default, %if.end61, %sw.bb39, %if.end25
  %62 = load i32, ptr %status, align 4, !dbg !1299
  %tobool64 = icmp ne i32 %62, 0, !dbg !1299
  br i1 %tobool64, label %if.end71, label %if.then65, !dbg !1301

if.then65:                                        ; preds = %sw.epilog
  %63 = load i32, ptr %read_write.addr, align 4, !dbg !1302
  %cmp66 = icmp eq i32 %63, 0, !dbg !1305
  br i1 %cmp66, label %if.then68, label %if.else69, !dbg !1306

if.then68:                                        ; preds = %if.then65
  br label %if.end70, !dbg !1307

if.else69:                                        ; preds = %if.then65
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then68
  br label %if.end71, !dbg !1309

if.end71:                                         ; preds = %if.end70, %sw.epilog
  %64 = load i32, ptr %status, align 4, !dbg !1310
  store i32 %64, ptr %retval, align 4, !dbg !1310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1310

cleanup:                                          ; preds = %if.end71, %if.then52, %if.then46, %if.then37, %if.then31, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %local_value) #15, !dbg !1311
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1311
  %65 = load i32, ptr %retval, align 4, !dbg !1311
  ret i32 %65, !dbg !1311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_extract_from_field(ptr noundef %obj_desc, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 16 !dbg !1312 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buffer_length.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %raw_datum = alloca i64, align 8
  %merged_datum = alloca i64, align 8
  %field_offset = alloca i32, align 4
  %buffer_offset = alloca i32, align 4
  %buffer_tail_bits = alloca i32, align 4
  %datum_count = alloca i32, align 4
  %field_datum_count = alloca i32, align 4
  %access_bit_width = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1316, metadata !DIExpression()), !dbg !1329
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1317, metadata !DIExpression()), !dbg !1330
  store i32 %buffer_length, ptr %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buffer_length.addr, metadata !1318, metadata !DIExpression()), !dbg !1331
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1332
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1319, metadata !DIExpression()), !dbg !1333
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw_datum) #15, !dbg !1334
  call void @llvm.dbg.declare(metadata ptr %raw_datum, metadata !1320, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 8, ptr %merged_datum) #15, !dbg !1336
  call void @llvm.dbg.declare(metadata ptr %merged_datum, metadata !1321, metadata !DIExpression()), !dbg !1337
  call void @llvm.lifetime.start.p0(i64 4, ptr %field_offset) #15, !dbg !1338
  call void @llvm.dbg.declare(metadata ptr %field_offset, metadata !1322, metadata !DIExpression()), !dbg !1339
  store i32 0, ptr %field_offset, align 4, !dbg !1339
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_offset) #15, !dbg !1340
  call void @llvm.dbg.declare(metadata ptr %buffer_offset, metadata !1323, metadata !DIExpression()), !dbg !1341
  store i32 0, ptr %buffer_offset, align 4, !dbg !1341
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_tail_bits) #15, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %buffer_tail_bits, metadata !1324, metadata !DIExpression()), !dbg !1343
  call void @llvm.lifetime.start.p0(i64 4, ptr %datum_count) #15, !dbg !1344
  call void @llvm.dbg.declare(metadata ptr %datum_count, metadata !1325, metadata !DIExpression()), !dbg !1345
  call void @llvm.lifetime.start.p0(i64 4, ptr %field_datum_count) #15, !dbg !1346
  call void @llvm.dbg.declare(metadata ptr %field_datum_count, metadata !1326, metadata !DIExpression()), !dbg !1347
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_bit_width) #15, !dbg !1348
  call void @llvm.dbg.declare(metadata ptr %access_bit_width, metadata !1327, metadata !DIExpression()), !dbg !1349
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1328, metadata !DIExpression()), !dbg !1351
  %0 = load i32, ptr %buffer_length.addr, align 4, !dbg !1352
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1354
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, ptr %1, i32 0, i32 9, !dbg !1354
  %2 = load i32, ptr %bit_length, align 8, !dbg !1354
  %add = add i32 %2, 7, !dbg !1354
  %shr = lshr i32 %add, 3, !dbg !1354
  %cmp = icmp ult i32 %0, %shr, !dbg !1355
  br i1 %cmp, label %if.then, label %if.end, !dbg !1356

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1357
  %bit_length1 = getelementptr inbounds %struct.acpi_object_field_common, ptr %3, i32 0, i32 9, !dbg !1357
  %4 = load i32, ptr %bit_length1, align 8, !dbg !1357
  %5 = load i32, ptr %buffer_length.addr, align 4, !dbg !1357
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 668, ptr noundef @.str.3, i32 noundef %4, i32 noundef %5) #16, !dbg !1357
  store i32 11, ptr %retval, align 4, !dbg !1359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1359

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !1360
  %7 = load i32, ptr %buffer_length.addr, align 4, !dbg !1361
  %conv = zext i32 %7 to i64, !dbg !1361
  call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %conv, i1 false), !dbg !1362
  %8 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1363
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, ptr %8, i32 0, i32 7, !dbg !1363
  %9 = load i8, ptr %access_byte_width, align 1, !dbg !1363
  %conv2 = zext i8 %9 to i32, !dbg !1363
  %shl = shl i32 %conv2, 3, !dbg !1363
  store i32 %shl, ptr %access_bit_width, align 4, !dbg !1364
  %10 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1365
  %start_field_bit_offset = getelementptr inbounds %struct.acpi_object_field_common, ptr %10, i32 0, i32 12, !dbg !1367
  %11 = load i8, ptr %start_field_bit_offset, align 4, !dbg !1367
  %conv3 = zext i8 %11 to i32, !dbg !1365
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !1368
  br i1 %cmp4, label %land.lhs.true, label %if.end17, !dbg !1369

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1370
  %bit_length6 = getelementptr inbounds %struct.acpi_object_field_common, ptr %12, i32 0, i32 9, !dbg !1371
  %13 = load i32, ptr %bit_length6, align 8, !dbg !1371
  %14 = load i32, ptr %access_bit_width, align 4, !dbg !1372
  %cmp7 = icmp eq i32 %13, %14, !dbg !1373
  br i1 %cmp7, label %if.then9, label %if.end17, !dbg !1374

if.then9:                                         ; preds = %land.lhs.true
  %15 = load i32, ptr %buffer_length.addr, align 4, !dbg !1375
  %conv10 = zext i32 %15 to i64, !dbg !1375
  %cmp11 = icmp uge i64 %conv10, 8, !dbg !1378
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1379

if.then13:                                        ; preds = %if.then9
  %16 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1380
  %17 = load ptr, ptr %buffer.addr, align 8, !dbg !1382
  %call = call i32 @acpi_ex_field_datum_io(ptr noundef %16, i32 noundef 0, ptr noundef %17, i32 noundef 0) #16, !dbg !1383
  store i32 %call, ptr %status, align 4, !dbg !1384
  br label %if.end16, !dbg !1385

if.else:                                          ; preds = %if.then9
  %18 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1386
  %call14 = call i32 @acpi_ex_field_datum_io(ptr noundef %18, i32 noundef 0, ptr noundef %raw_datum, i32 noundef 0) #16, !dbg !1388
  store i32 %call14, ptr %status, align 4, !dbg !1389
  %19 = load ptr, ptr %buffer.addr, align 8, !dbg !1390
  %20 = load i32, ptr %buffer_length.addr, align 4, !dbg !1391
  %conv15 = zext i32 %20 to i64, !dbg !1391
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 8 %raw_datum, i64 %conv15, i1 false), !dbg !1392
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %21 = load i32, ptr %status, align 4, !dbg !1393
  store i32 %21, ptr %retval, align 4, !dbg !1393
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1393

if.end17:                                         ; preds = %land.lhs.true, %if.end
  %22 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1394
  %access_byte_width18 = getelementptr inbounds %struct.acpi_object_field_common, ptr %22, i32 0, i32 7, !dbg !1396
  %23 = load i8, ptr %access_byte_width18, align 1, !dbg !1396
  %conv19 = zext i8 %23 to i64, !dbg !1394
  %cmp20 = icmp ugt i64 %conv19, 8, !dbg !1397
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !1398

if.then22:                                        ; preds = %if.end17
  %24 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1399
  %access_byte_width23 = getelementptr inbounds %struct.acpi_object_field_common, ptr %24, i32 0, i32 7, !dbg !1401
  store i8 8, ptr %access_byte_width23, align 1, !dbg !1402
  store i32 64, ptr %access_bit_width, align 4, !dbg !1403
  br label %if.end24, !dbg !1404

if.end24:                                         ; preds = %if.then22, %if.end17
  %25 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1405
  %bit_length25 = getelementptr inbounds %struct.acpi_object_field_common, ptr %25, i32 0, i32 9, !dbg !1405
  %26 = load i32, ptr %bit_length25, align 8, !dbg !1405
  %27 = load i32, ptr %access_bit_width, align 4, !dbg !1405
  %sub = sub i32 %27, 1, !dbg !1405
  %add26 = add i32 %26, %sub, !dbg !1405
  %28 = load i32, ptr %access_bit_width, align 4, !dbg !1405
  %div = udiv i32 %add26, %28, !dbg !1405
  store i32 %div, ptr %datum_count, align 4, !dbg !1406
  %29 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1407
  %bit_length27 = getelementptr inbounds %struct.acpi_object_field_common, ptr %29, i32 0, i32 9, !dbg !1407
  %30 = load i32, ptr %bit_length27, align 8, !dbg !1407
  %31 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1407
  %start_field_bit_offset28 = getelementptr inbounds %struct.acpi_object_field_common, ptr %31, i32 0, i32 12, !dbg !1407
  %32 = load i8, ptr %start_field_bit_offset28, align 4, !dbg !1407
  %conv29 = zext i8 %32 to i32, !dbg !1407
  %add30 = add i32 %30, %conv29, !dbg !1407
  %33 = load i32, ptr %access_bit_width, align 4, !dbg !1407
  %sub31 = sub i32 %33, 1, !dbg !1407
  %add32 = add i32 %add30, %sub31, !dbg !1407
  %34 = load i32, ptr %access_bit_width, align 4, !dbg !1407
  %div33 = udiv i32 %add32, %34, !dbg !1407
  store i32 %div33, ptr %field_datum_count, align 4, !dbg !1408
  %35 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1409
  %36 = load i32, ptr %field_offset, align 4, !dbg !1410
  %call34 = call i32 @acpi_ex_field_datum_io(ptr noundef %35, i32 noundef %36, ptr noundef %raw_datum, i32 noundef 0) #16, !dbg !1411
  store i32 %call34, ptr %status, align 4, !dbg !1412
  %37 = load i32, ptr %status, align 4, !dbg !1413
  %tobool = icmp ne i32 %37, 0, !dbg !1413
  br i1 %tobool, label %if.then35, label %if.end36, !dbg !1415

if.then35:                                        ; preds = %if.end24
  %38 = load i32, ptr %status, align 4, !dbg !1416
  store i32 %38, ptr %retval, align 4, !dbg !1416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1416

if.end36:                                         ; preds = %if.end24
  %39 = load i64, ptr %raw_datum, align 8, !dbg !1418
  %40 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1419
  %start_field_bit_offset37 = getelementptr inbounds %struct.acpi_object_field_common, ptr %40, i32 0, i32 12, !dbg !1420
  %41 = load i8, ptr %start_field_bit_offset37, align 4, !dbg !1420
  %conv38 = zext i8 %41 to i32, !dbg !1419
  %sh_prom = zext i32 %conv38 to i64, !dbg !1421
  %shr39 = lshr i64 %39, %sh_prom, !dbg !1421
  store i64 %shr39, ptr %merged_datum, align 8, !dbg !1422
  store i32 1, ptr %i, align 4, !dbg !1423
  br label %for.cond, !dbg !1425

for.cond:                                         ; preds = %for.inc, %if.end36
  %42 = load i32, ptr %i, align 4, !dbg !1426
  %43 = load i32, ptr %field_datum_count, align 4, !dbg !1428
  %cmp40 = icmp ult i32 %42, %43, !dbg !1429
  br i1 %cmp40, label %for.body, label %for.end, !dbg !1430

for.body:                                         ; preds = %for.cond
  %44 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1431
  %access_byte_width42 = getelementptr inbounds %struct.acpi_object_field_common, ptr %44, i32 0, i32 7, !dbg !1433
  %45 = load i8, ptr %access_byte_width42, align 1, !dbg !1433
  %conv43 = zext i8 %45 to i32, !dbg !1431
  %46 = load i32, ptr %field_offset, align 4, !dbg !1434
  %add44 = add i32 %46, %conv43, !dbg !1434
  store i32 %add44, ptr %field_offset, align 4, !dbg !1434
  %47 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1435
  %48 = load i32, ptr %field_offset, align 4, !dbg !1436
  %call45 = call i32 @acpi_ex_field_datum_io(ptr noundef %47, i32 noundef %48, ptr noundef %raw_datum, i32 noundef 0) #16, !dbg !1437
  store i32 %call45, ptr %status, align 4, !dbg !1438
  %49 = load i32, ptr %status, align 4, !dbg !1439
  %tobool46 = icmp ne i32 %49, 0, !dbg !1439
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !1441

if.then47:                                        ; preds = %for.body
  %50 = load i32, ptr %status, align 4, !dbg !1442
  store i32 %50, ptr %retval, align 4, !dbg !1442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1442

if.end48:                                         ; preds = %for.body
  %51 = load i32, ptr %access_bit_width, align 4, !dbg !1444
  %52 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1446
  %start_field_bit_offset49 = getelementptr inbounds %struct.acpi_object_field_common, ptr %52, i32 0, i32 12, !dbg !1447
  %53 = load i8, ptr %start_field_bit_offset49, align 4, !dbg !1447
  %conv50 = zext i8 %53 to i32, !dbg !1446
  %sub51 = sub i32 %51, %conv50, !dbg !1448
  %cmp52 = icmp ult i32 %sub51, 64, !dbg !1449
  br i1 %cmp52, label %if.then54, label %if.end60, !dbg !1450

if.then54:                                        ; preds = %if.end48
  %54 = load i64, ptr %raw_datum, align 8, !dbg !1451
  %55 = load i32, ptr %access_bit_width, align 4, !dbg !1453
  %56 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1454
  %start_field_bit_offset55 = getelementptr inbounds %struct.acpi_object_field_common, ptr %56, i32 0, i32 12, !dbg !1455
  %57 = load i8, ptr %start_field_bit_offset55, align 4, !dbg !1455
  %conv56 = zext i8 %57 to i32, !dbg !1454
  %sub57 = sub i32 %55, %conv56, !dbg !1456
  %sh_prom58 = zext i32 %sub57 to i64, !dbg !1457
  %shl59 = shl i64 %54, %sh_prom58, !dbg !1457
  %58 = load i64, ptr %merged_datum, align 8, !dbg !1458
  %or = or i64 %58, %shl59, !dbg !1458
  store i64 %or, ptr %merged_datum, align 8, !dbg !1458
  br label %if.end60, !dbg !1459

if.end60:                                         ; preds = %if.then54, %if.end48
  %59 = load i32, ptr %i, align 4, !dbg !1460
  %60 = load i32, ptr %datum_count, align 4, !dbg !1462
  %cmp61 = icmp eq i32 %59, %60, !dbg !1463
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !1464

if.then63:                                        ; preds = %if.end60
  br label %for.end, !dbg !1465

if.end64:                                         ; preds = %if.end60
  %61 = load ptr, ptr %buffer.addr, align 8, !dbg !1467
  %62 = load i32, ptr %buffer_offset, align 4, !dbg !1468
  %idx.ext = zext i32 %62 to i64, !dbg !1469
  %add.ptr = getelementptr i8, ptr %61, i64 %idx.ext, !dbg !1469
  %63 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1470
  %access_byte_width65 = getelementptr inbounds %struct.acpi_object_field_common, ptr %63, i32 0, i32 7, !dbg !1470
  %64 = load i8, ptr %access_byte_width65, align 1, !dbg !1470
  %conv66 = zext i8 %64 to i32, !dbg !1470
  %65 = load i32, ptr %buffer_length.addr, align 4, !dbg !1470
  %66 = load i32, ptr %buffer_offset, align 4, !dbg !1470
  %sub67 = sub i32 %65, %66, !dbg !1470
  %cmp68 = icmp ult i32 %conv66, %sub67, !dbg !1470
  br i1 %cmp68, label %cond.true, label %cond.false, !dbg !1470

cond.true:                                        ; preds = %if.end64
  %67 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1470
  %access_byte_width70 = getelementptr inbounds %struct.acpi_object_field_common, ptr %67, i32 0, i32 7, !dbg !1470
  %68 = load i8, ptr %access_byte_width70, align 1, !dbg !1470
  %conv71 = zext i8 %68 to i32, !dbg !1470
  br label %cond.end, !dbg !1470

cond.false:                                       ; preds = %if.end64
  %69 = load i32, ptr %buffer_length.addr, align 4, !dbg !1470
  %70 = load i32, ptr %buffer_offset, align 4, !dbg !1470
  %sub72 = sub i32 %69, %70, !dbg !1470
  br label %cond.end, !dbg !1470

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv71, %cond.true ], [ %sub72, %cond.false ], !dbg !1470
  %conv73 = zext i32 %cond to i64, !dbg !1470
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 8 %merged_datum, i64 %conv73, i1 false), !dbg !1471
  %71 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1472
  %access_byte_width74 = getelementptr inbounds %struct.acpi_object_field_common, ptr %71, i32 0, i32 7, !dbg !1473
  %72 = load i8, ptr %access_byte_width74, align 1, !dbg !1473
  %conv75 = zext i8 %72 to i32, !dbg !1472
  %73 = load i32, ptr %buffer_offset, align 4, !dbg !1474
  %add76 = add i32 %73, %conv75, !dbg !1474
  store i32 %add76, ptr %buffer_offset, align 4, !dbg !1474
  %74 = load i64, ptr %raw_datum, align 8, !dbg !1475
  %75 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1476
  %start_field_bit_offset77 = getelementptr inbounds %struct.acpi_object_field_common, ptr %75, i32 0, i32 12, !dbg !1477
  %76 = load i8, ptr %start_field_bit_offset77, align 4, !dbg !1477
  %conv78 = zext i8 %76 to i32, !dbg !1476
  %sh_prom79 = zext i32 %conv78 to i64, !dbg !1478
  %shr80 = lshr i64 %74, %sh_prom79, !dbg !1478
  store i64 %shr80, ptr %merged_datum, align 8, !dbg !1479
  br label %for.inc, !dbg !1480

for.inc:                                          ; preds = %cond.end
  %77 = load i32, ptr %i, align 4, !dbg !1481
  %inc = add i32 %77, 1, !dbg !1481
  store i32 %inc, ptr %i, align 4, !dbg !1481
  br label %for.cond, !dbg !1482, !llvm.loop !1483

for.end:                                          ; preds = %if.then63, %for.cond
  %78 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1487
  %bit_length81 = getelementptr inbounds %struct.acpi_object_field_common, ptr %78, i32 0, i32 9, !dbg !1488
  %79 = load i32, ptr %bit_length81, align 8, !dbg !1488
  %80 = load i32, ptr %access_bit_width, align 4, !dbg !1489
  %rem = urem i32 %79, %80, !dbg !1490
  store i32 %rem, ptr %buffer_tail_bits, align 4, !dbg !1491
  %81 = load i32, ptr %buffer_tail_bits, align 4, !dbg !1492
  %tobool82 = icmp ne i32 %81, 0, !dbg !1492
  br i1 %tobool82, label %if.then83, label %if.end86, !dbg !1494

if.then83:                                        ; preds = %for.end
  %82 = load i32, ptr %buffer_tail_bits, align 4, !dbg !1495
  %sh_prom84 = zext i32 %82 to i64, !dbg !1495
  %shl85 = shl i64 -1, %sh_prom84, !dbg !1495
  %not = xor i64 %shl85, -1, !dbg !1495
  %83 = load i64, ptr %merged_datum, align 8, !dbg !1497
  %and = and i64 %83, %not, !dbg !1497
  store i64 %and, ptr %merged_datum, align 8, !dbg !1497
  br label %if.end86, !dbg !1498

if.end86:                                         ; preds = %if.then83, %for.end
  %84 = load ptr, ptr %buffer.addr, align 8, !dbg !1499
  %85 = load i32, ptr %buffer_offset, align 4, !dbg !1500
  %idx.ext87 = zext i32 %85 to i64, !dbg !1501
  %add.ptr88 = getelementptr i8, ptr %84, i64 %idx.ext87, !dbg !1501
  %86 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1502
  %access_byte_width89 = getelementptr inbounds %struct.acpi_object_field_common, ptr %86, i32 0, i32 7, !dbg !1502
  %87 = load i8, ptr %access_byte_width89, align 1, !dbg !1502
  %conv90 = zext i8 %87 to i32, !dbg !1502
  %88 = load i32, ptr %buffer_length.addr, align 4, !dbg !1502
  %89 = load i32, ptr %buffer_offset, align 4, !dbg !1502
  %sub91 = sub i32 %88, %89, !dbg !1502
  %cmp92 = icmp ult i32 %conv90, %sub91, !dbg !1502
  br i1 %cmp92, label %cond.true94, label %cond.false97, !dbg !1502

cond.true94:                                      ; preds = %if.end86
  %90 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1502
  %access_byte_width95 = getelementptr inbounds %struct.acpi_object_field_common, ptr %90, i32 0, i32 7, !dbg !1502
  %91 = load i8, ptr %access_byte_width95, align 1, !dbg !1502
  %conv96 = zext i8 %91 to i32, !dbg !1502
  br label %cond.end99, !dbg !1502

cond.false97:                                     ; preds = %if.end86
  %92 = load i32, ptr %buffer_length.addr, align 4, !dbg !1502
  %93 = load i32, ptr %buffer_offset, align 4, !dbg !1502
  %sub98 = sub i32 %92, %93, !dbg !1502
  br label %cond.end99, !dbg !1502

cond.end99:                                       ; preds = %cond.false97, %cond.true94
  %cond100 = phi i32 [ %conv96, %cond.true94 ], [ %sub98, %cond.false97 ], !dbg !1502
  %conv101 = zext i32 %cond100 to i64, !dbg !1502
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr88, ptr align 8 %merged_datum, i64 %conv101, i1 false), !dbg !1503
  store i32 0, ptr %retval, align 4, !dbg !1504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1504

cleanup:                                          ; preds = %cond.end99, %if.then47, %if.then35, %if.end16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_bit_width) #15, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %field_datum_count) #15, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %datum_count) #15, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_tail_bits) #15, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_offset) #15, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %field_offset) #15, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 8, ptr %merged_datum) #15, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw_datum) #15, !dbg !1505
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1505
  %94 = load i32, ptr %retval, align 4, !dbg !1505
  ret i32 %94, !dbg !1505
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_insert_into_field(ptr noundef %obj_desc, ptr noundef %buffer, i32 noundef %buffer_length) #0 align 16 !dbg !1506 {
entry:
  %retval = alloca i32, align 4
  %obj_desc.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %buffer_length.addr = alloca i32, align 4
  %new_buffer = alloca ptr, align 8
  %status = alloca i32, align 4
  %mask = alloca i64, align 8
  %width_mask = alloca i64, align 8
  %merged_datum = alloca i64, align 8
  %raw_datum = alloca i64, align 8
  %field_offset = alloca i32, align 4
  %buffer_offset = alloca i32, align 4
  %buffer_tail_bits = alloca i32, align 4
  %datum_count = alloca i32, align 4
  %field_datum_count = alloca i32, align 4
  %access_bit_width = alloca i32, align 4
  %required_length = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1508, metadata !DIExpression()), !dbg !1526
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1509, metadata !DIExpression()), !dbg !1527
  store i32 %buffer_length, ptr %buffer_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buffer_length.addr, metadata !1510, metadata !DIExpression()), !dbg !1528
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_buffer) #15, !dbg !1529
  call void @llvm.dbg.declare(metadata ptr %new_buffer, metadata !1511, metadata !DIExpression()), !dbg !1530
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1512, metadata !DIExpression()), !dbg !1532
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !1533
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1513, metadata !DIExpression()), !dbg !1534
  call void @llvm.lifetime.start.p0(i64 8, ptr %width_mask) #15, !dbg !1535
  call void @llvm.dbg.declare(metadata ptr %width_mask, metadata !1514, metadata !DIExpression()), !dbg !1536
  call void @llvm.lifetime.start.p0(i64 8, ptr %merged_datum) #15, !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %merged_datum, metadata !1515, metadata !DIExpression()), !dbg !1538
  call void @llvm.lifetime.start.p0(i64 8, ptr %raw_datum) #15, !dbg !1539
  call void @llvm.dbg.declare(metadata ptr %raw_datum, metadata !1516, metadata !DIExpression()), !dbg !1540
  store i64 0, ptr %raw_datum, align 8, !dbg !1540
  call void @llvm.lifetime.start.p0(i64 4, ptr %field_offset) #15, !dbg !1541
  call void @llvm.dbg.declare(metadata ptr %field_offset, metadata !1517, metadata !DIExpression()), !dbg !1542
  store i32 0, ptr %field_offset, align 4, !dbg !1542
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_offset) #15, !dbg !1543
  call void @llvm.dbg.declare(metadata ptr %buffer_offset, metadata !1518, metadata !DIExpression()), !dbg !1544
  store i32 0, ptr %buffer_offset, align 4, !dbg !1544
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_tail_bits) #15, !dbg !1545
  call void @llvm.dbg.declare(metadata ptr %buffer_tail_bits, metadata !1519, metadata !DIExpression()), !dbg !1546
  call void @llvm.lifetime.start.p0(i64 4, ptr %datum_count) #15, !dbg !1547
  call void @llvm.dbg.declare(metadata ptr %datum_count, metadata !1520, metadata !DIExpression()), !dbg !1548
  call void @llvm.lifetime.start.p0(i64 4, ptr %field_datum_count) #15, !dbg !1549
  call void @llvm.dbg.declare(metadata ptr %field_datum_count, metadata !1521, metadata !DIExpression()), !dbg !1550
  call void @llvm.lifetime.start.p0(i64 4, ptr %access_bit_width) #15, !dbg !1551
  call void @llvm.dbg.declare(metadata ptr %access_bit_width, metadata !1522, metadata !DIExpression()), !dbg !1552
  call void @llvm.lifetime.start.p0(i64 4, ptr %required_length) #15, !dbg !1553
  call void @llvm.dbg.declare(metadata ptr %required_length, metadata !1523, metadata !DIExpression()), !dbg !1554
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !1555
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1524, metadata !DIExpression()), !dbg !1556
  store ptr null, ptr %new_buffer, align 8, !dbg !1557
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1558
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, ptr %0, i32 0, i32 9, !dbg !1558
  %1 = load i32, ptr %bit_length, align 8, !dbg !1558
  %add = add i32 %1, 7, !dbg !1558
  %shr = lshr i32 %add, 3, !dbg !1558
  store i32 %shr, ptr %required_length, align 4, !dbg !1559
  %2 = load i32, ptr %buffer_length.addr, align 4, !dbg !1560
  %3 = load i32, ptr %required_length, align 4, !dbg !1562
  %cmp = icmp ult i32 %2, %3, !dbg !1563
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1564

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %required_length, align 4, !dbg !1565
  %conv = zext i32 %4 to i64, !dbg !1565
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv) #16, !dbg !1565
  store ptr %call, ptr %new_buffer, align 8, !dbg !1567
  %5 = load ptr, ptr %new_buffer, align 8, !dbg !1568
  %tobool = icmp ne ptr %5, null, !dbg !1568
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1570

if.then1:                                         ; preds = %if.then
  store i32 4, ptr %retval, align 4, !dbg !1571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1571

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %new_buffer, align 8, !dbg !1573
  %7 = load ptr, ptr %buffer.addr, align 8, !dbg !1574
  %8 = load i32, ptr %buffer_length.addr, align 4, !dbg !1575
  %conv2 = zext i32 %8 to i64, !dbg !1575
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %7, i64 %conv2, i1 false), !dbg !1576
  %9 = load ptr, ptr %new_buffer, align 8, !dbg !1577
  store ptr %9, ptr %buffer.addr, align 8, !dbg !1578
  %10 = load i32, ptr %required_length, align 4, !dbg !1579
  store i32 %10, ptr %buffer_length.addr, align 4, !dbg !1580
  br label %if.end3, !dbg !1581

if.end3:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1582
  %access_byte_width = getelementptr inbounds %struct.acpi_object_field_common, ptr %11, i32 0, i32 7, !dbg !1584
  %12 = load i8, ptr %access_byte_width, align 1, !dbg !1584
  %conv4 = zext i8 %12 to i64, !dbg !1582
  %cmp5 = icmp ugt i64 %conv4, 8, !dbg !1585
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !1586

if.then7:                                         ; preds = %if.end3
  %13 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1587
  %access_byte_width8 = getelementptr inbounds %struct.acpi_object_field_common, ptr %13, i32 0, i32 7, !dbg !1589
  store i8 8, ptr %access_byte_width8, align 1, !dbg !1590
  br label %if.end9, !dbg !1591

if.end9:                                          ; preds = %if.then7, %if.end3
  %14 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1592
  %access_byte_width10 = getelementptr inbounds %struct.acpi_object_field_common, ptr %14, i32 0, i32 7, !dbg !1592
  %15 = load i8, ptr %access_byte_width10, align 1, !dbg !1592
  %conv11 = zext i8 %15 to i32, !dbg !1592
  %shl = shl i32 %conv11, 3, !dbg !1592
  store i32 %shl, ptr %access_bit_width, align 4, !dbg !1593
  %16 = load i32, ptr %access_bit_width, align 4, !dbg !1594
  %cmp12 = icmp eq i32 %16, 64, !dbg !1594
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !1594

cond.true:                                        ; preds = %if.end9
  br label %cond.end, !dbg !1594

cond.false:                                       ; preds = %if.end9
  %17 = load i32, ptr %access_bit_width, align 4, !dbg !1594
  %sh_prom = zext i32 %17 to i64, !dbg !1594
  %shl14 = shl i64 -1, %sh_prom, !dbg !1594
  %not = xor i64 %shl14, -1, !dbg !1594
  br label %cond.end, !dbg !1594

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %not, %cond.false ], !dbg !1594
  store i64 %cond, ptr %width_mask, align 8, !dbg !1595
  %18 = load i64, ptr %width_mask, align 8, !dbg !1596
  %19 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1597
  %start_field_bit_offset = getelementptr inbounds %struct.acpi_object_field_common, ptr %19, i32 0, i32 12, !dbg !1597
  %20 = load i8, ptr %start_field_bit_offset, align 4, !dbg !1597
  %conv15 = zext i8 %20 to i32, !dbg !1597
  %sh_prom16 = zext i32 %conv15 to i64, !dbg !1597
  %shl17 = shl i64 -1, %sh_prom16, !dbg !1597
  %and = and i64 %18, %shl17, !dbg !1598
  store i64 %and, ptr %mask, align 8, !dbg !1599
  %21 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1600
  %bit_length18 = getelementptr inbounds %struct.acpi_object_field_common, ptr %21, i32 0, i32 9, !dbg !1600
  %22 = load i32, ptr %bit_length18, align 8, !dbg !1600
  %23 = load i32, ptr %access_bit_width, align 4, !dbg !1600
  %sub = sub i32 %23, 1, !dbg !1600
  %add19 = add i32 %22, %sub, !dbg !1600
  %24 = load i32, ptr %access_bit_width, align 4, !dbg !1600
  %div = udiv i32 %add19, %24, !dbg !1600
  store i32 %div, ptr %datum_count, align 4, !dbg !1601
  %25 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1602
  %bit_length20 = getelementptr inbounds %struct.acpi_object_field_common, ptr %25, i32 0, i32 9, !dbg !1602
  %26 = load i32, ptr %bit_length20, align 8, !dbg !1602
  %27 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1602
  %start_field_bit_offset21 = getelementptr inbounds %struct.acpi_object_field_common, ptr %27, i32 0, i32 12, !dbg !1602
  %28 = load i8, ptr %start_field_bit_offset21, align 4, !dbg !1602
  %conv22 = zext i8 %28 to i32, !dbg !1602
  %add23 = add i32 %26, %conv22, !dbg !1602
  %29 = load i32, ptr %access_bit_width, align 4, !dbg !1602
  %sub24 = sub i32 %29, 1, !dbg !1602
  %add25 = add i32 %add23, %sub24, !dbg !1602
  %30 = load i32, ptr %access_bit_width, align 4, !dbg !1602
  %div26 = udiv i32 %add25, %30, !dbg !1602
  store i32 %div26, ptr %field_datum_count, align 4, !dbg !1603
  %31 = load ptr, ptr %buffer.addr, align 8, !dbg !1604
  %32 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1605
  %access_byte_width27 = getelementptr inbounds %struct.acpi_object_field_common, ptr %32, i32 0, i32 7, !dbg !1605
  %33 = load i8, ptr %access_byte_width27, align 1, !dbg !1605
  %conv28 = zext i8 %33 to i32, !dbg !1605
  %34 = load i32, ptr %buffer_length.addr, align 4, !dbg !1605
  %35 = load i32, ptr %buffer_offset, align 4, !dbg !1605
  %sub29 = sub i32 %34, %35, !dbg !1605
  %cmp30 = icmp ult i32 %conv28, %sub29, !dbg !1605
  br i1 %cmp30, label %cond.true32, label %cond.false35, !dbg !1605

cond.true32:                                      ; preds = %cond.end
  %36 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1605
  %access_byte_width33 = getelementptr inbounds %struct.acpi_object_field_common, ptr %36, i32 0, i32 7, !dbg !1605
  %37 = load i8, ptr %access_byte_width33, align 1, !dbg !1605
  %conv34 = zext i8 %37 to i32, !dbg !1605
  br label %cond.end37, !dbg !1605

cond.false35:                                     ; preds = %cond.end
  %38 = load i32, ptr %buffer_length.addr, align 4, !dbg !1605
  %39 = load i32, ptr %buffer_offset, align 4, !dbg !1605
  %sub36 = sub i32 %38, %39, !dbg !1605
  br label %cond.end37, !dbg !1605

cond.end37:                                       ; preds = %cond.false35, %cond.true32
  %cond38 = phi i32 [ %conv34, %cond.true32 ], [ %sub36, %cond.false35 ], !dbg !1605
  %conv39 = zext i32 %cond38 to i64, !dbg !1605
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %raw_datum, ptr align 1 %31, i64 %conv39, i1 false), !dbg !1606
  %40 = load i64, ptr %raw_datum, align 8, !dbg !1607
  %41 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1608
  %start_field_bit_offset40 = getelementptr inbounds %struct.acpi_object_field_common, ptr %41, i32 0, i32 12, !dbg !1609
  %42 = load i8, ptr %start_field_bit_offset40, align 4, !dbg !1609
  %conv41 = zext i8 %42 to i32, !dbg !1608
  %sh_prom42 = zext i32 %conv41 to i64, !dbg !1610
  %shl43 = shl i64 %40, %sh_prom42, !dbg !1610
  store i64 %shl43, ptr %merged_datum, align 8, !dbg !1611
  store i32 1, ptr %i, align 4, !dbg !1612
  br label %for.cond, !dbg !1614

for.cond:                                         ; preds = %for.inc, %cond.end37
  %43 = load i32, ptr %i, align 4, !dbg !1615
  %44 = load i32, ptr %field_datum_count, align 4, !dbg !1617
  %cmp44 = icmp ult i32 %43, %44, !dbg !1618
  br i1 %cmp44, label %for.body, label %for.end, !dbg !1619

for.body:                                         ; preds = %for.cond
  %45 = load i64, ptr %mask, align 8, !dbg !1620
  %46 = load i64, ptr %merged_datum, align 8, !dbg !1622
  %and46 = and i64 %46, %45, !dbg !1622
  store i64 %and46, ptr %merged_datum, align 8, !dbg !1622
  %47 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1623
  %48 = load i64, ptr %mask, align 8, !dbg !1624
  %49 = load i64, ptr %merged_datum, align 8, !dbg !1625
  %50 = load i32, ptr %field_offset, align 4, !dbg !1626
  %call47 = call i32 @acpi_ex_write_with_update_rule(ptr noundef %47, i64 noundef %48, i64 noundef %49, i32 noundef %50) #16, !dbg !1627
  store i32 %call47, ptr %status, align 4, !dbg !1628
  %51 = load i32, ptr %status, align 4, !dbg !1629
  %tobool48 = icmp ne i32 %51, 0, !dbg !1629
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !1631

if.then49:                                        ; preds = %for.body
  br label %exit, !dbg !1632

if.end50:                                         ; preds = %for.body
  %52 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1634
  %access_byte_width51 = getelementptr inbounds %struct.acpi_object_field_common, ptr %52, i32 0, i32 7, !dbg !1635
  %53 = load i8, ptr %access_byte_width51, align 1, !dbg !1635
  %conv52 = zext i8 %53 to i32, !dbg !1634
  %54 = load i32, ptr %field_offset, align 4, !dbg !1636
  %add53 = add i32 %54, %conv52, !dbg !1636
  store i32 %add53, ptr %field_offset, align 4, !dbg !1636
  %55 = load i32, ptr %access_bit_width, align 4, !dbg !1637
  %56 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1639
  %start_field_bit_offset54 = getelementptr inbounds %struct.acpi_object_field_common, ptr %56, i32 0, i32 12, !dbg !1640
  %57 = load i8, ptr %start_field_bit_offset54, align 4, !dbg !1640
  %conv55 = zext i8 %57 to i32, !dbg !1639
  %sub56 = sub i32 %55, %conv55, !dbg !1641
  %cmp57 = icmp ult i32 %sub56, 64, !dbg !1642
  br i1 %cmp57, label %if.then59, label %if.else, !dbg !1643

if.then59:                                        ; preds = %if.end50
  %58 = load i64, ptr %raw_datum, align 8, !dbg !1644
  %59 = load i32, ptr %access_bit_width, align 4, !dbg !1646
  %60 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1647
  %start_field_bit_offset60 = getelementptr inbounds %struct.acpi_object_field_common, ptr %60, i32 0, i32 12, !dbg !1648
  %61 = load i8, ptr %start_field_bit_offset60, align 4, !dbg !1648
  %conv61 = zext i8 %61 to i32, !dbg !1647
  %sub62 = sub i32 %59, %conv61, !dbg !1649
  %sh_prom63 = zext i32 %sub62 to i64, !dbg !1650
  %shr64 = lshr i64 %58, %sh_prom63, !dbg !1650
  store i64 %shr64, ptr %merged_datum, align 8, !dbg !1651
  br label %if.end65, !dbg !1652

if.else:                                          ; preds = %if.end50
  store i64 0, ptr %merged_datum, align 8, !dbg !1653
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then59
  %62 = load i64, ptr %width_mask, align 8, !dbg !1655
  store i64 %62, ptr %mask, align 8, !dbg !1656
  %63 = load i32, ptr %i, align 4, !dbg !1657
  %64 = load i32, ptr %datum_count, align 4, !dbg !1659
  %cmp66 = icmp eq i32 %63, %64, !dbg !1660
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !1661

if.then68:                                        ; preds = %if.end65
  br label %for.end, !dbg !1662

if.end69:                                         ; preds = %if.end65
  %65 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1664
  %access_byte_width70 = getelementptr inbounds %struct.acpi_object_field_common, ptr %65, i32 0, i32 7, !dbg !1665
  %66 = load i8, ptr %access_byte_width70, align 1, !dbg !1665
  %conv71 = zext i8 %66 to i32, !dbg !1664
  %67 = load i32, ptr %buffer_offset, align 4, !dbg !1666
  %add72 = add i32 %67, %conv71, !dbg !1666
  store i32 %add72, ptr %buffer_offset, align 4, !dbg !1666
  %68 = load ptr, ptr %buffer.addr, align 8, !dbg !1667
  %69 = load i32, ptr %buffer_offset, align 4, !dbg !1668
  %idx.ext = zext i32 %69 to i64, !dbg !1669
  %add.ptr = getelementptr i8, ptr %68, i64 %idx.ext, !dbg !1669
  %70 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1670
  %access_byte_width73 = getelementptr inbounds %struct.acpi_object_field_common, ptr %70, i32 0, i32 7, !dbg !1670
  %71 = load i8, ptr %access_byte_width73, align 1, !dbg !1670
  %conv74 = zext i8 %71 to i32, !dbg !1670
  %72 = load i32, ptr %buffer_length.addr, align 4, !dbg !1670
  %73 = load i32, ptr %buffer_offset, align 4, !dbg !1670
  %sub75 = sub i32 %72, %73, !dbg !1670
  %cmp76 = icmp ult i32 %conv74, %sub75, !dbg !1670
  br i1 %cmp76, label %cond.true78, label %cond.false81, !dbg !1670

cond.true78:                                      ; preds = %if.end69
  %74 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1670
  %access_byte_width79 = getelementptr inbounds %struct.acpi_object_field_common, ptr %74, i32 0, i32 7, !dbg !1670
  %75 = load i8, ptr %access_byte_width79, align 1, !dbg !1670
  %conv80 = zext i8 %75 to i32, !dbg !1670
  br label %cond.end83, !dbg !1670

cond.false81:                                     ; preds = %if.end69
  %76 = load i32, ptr %buffer_length.addr, align 4, !dbg !1670
  %77 = load i32, ptr %buffer_offset, align 4, !dbg !1670
  %sub82 = sub i32 %76, %77, !dbg !1670
  br label %cond.end83, !dbg !1670

cond.end83:                                       ; preds = %cond.false81, %cond.true78
  %cond84 = phi i32 [ %conv80, %cond.true78 ], [ %sub82, %cond.false81 ], !dbg !1670
  %conv85 = zext i32 %cond84 to i64, !dbg !1670
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %raw_datum, ptr align 1 %add.ptr, i64 %conv85, i1 false), !dbg !1671
  %78 = load i64, ptr %raw_datum, align 8, !dbg !1672
  %79 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1673
  %start_field_bit_offset86 = getelementptr inbounds %struct.acpi_object_field_common, ptr %79, i32 0, i32 12, !dbg !1674
  %80 = load i8, ptr %start_field_bit_offset86, align 4, !dbg !1674
  %conv87 = zext i8 %80 to i32, !dbg !1673
  %sh_prom88 = zext i32 %conv87 to i64, !dbg !1675
  %shl89 = shl i64 %78, %sh_prom88, !dbg !1675
  %81 = load i64, ptr %merged_datum, align 8, !dbg !1676
  %or = or i64 %81, %shl89, !dbg !1676
  store i64 %or, ptr %merged_datum, align 8, !dbg !1676
  br label %for.inc, !dbg !1677

for.inc:                                          ; preds = %cond.end83
  %82 = load i32, ptr %i, align 4, !dbg !1678
  %inc = add i32 %82, 1, !dbg !1678
  store i32 %inc, ptr %i, align 4, !dbg !1678
  br label %for.cond, !dbg !1679, !llvm.loop !1680

for.end:                                          ; preds = %if.then68, %for.cond
  %83 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1682
  %bit_length90 = getelementptr inbounds %struct.acpi_object_field_common, ptr %83, i32 0, i32 9, !dbg !1683
  %84 = load i32, ptr %bit_length90, align 8, !dbg !1683
  %85 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1684
  %start_field_bit_offset91 = getelementptr inbounds %struct.acpi_object_field_common, ptr %85, i32 0, i32 12, !dbg !1685
  %86 = load i8, ptr %start_field_bit_offset91, align 4, !dbg !1685
  %conv92 = zext i8 %86 to i32, !dbg !1684
  %add93 = add i32 %84, %conv92, !dbg !1686
  %87 = load i32, ptr %access_bit_width, align 4, !dbg !1687
  %rem = urem i32 %add93, %87, !dbg !1688
  store i32 %rem, ptr %buffer_tail_bits, align 4, !dbg !1689
  %88 = load i32, ptr %buffer_tail_bits, align 4, !dbg !1690
  %tobool94 = icmp ne i32 %88, 0, !dbg !1690
  br i1 %tobool94, label %if.then95, label %if.end100, !dbg !1692

if.then95:                                        ; preds = %for.end
  %89 = load i32, ptr %buffer_tail_bits, align 4, !dbg !1693
  %sh_prom96 = zext i32 %89 to i64, !dbg !1693
  %shl97 = shl i64 -1, %sh_prom96, !dbg !1693
  %not98 = xor i64 %shl97, -1, !dbg !1693
  %90 = load i64, ptr %mask, align 8, !dbg !1695
  %and99 = and i64 %90, %not98, !dbg !1695
  store i64 %and99, ptr %mask, align 8, !dbg !1695
  br label %if.end100, !dbg !1696

if.end100:                                        ; preds = %if.then95, %for.end
  %91 = load i64, ptr %mask, align 8, !dbg !1697
  %92 = load i64, ptr %merged_datum, align 8, !dbg !1698
  %and101 = and i64 %92, %91, !dbg !1698
  store i64 %and101, ptr %merged_datum, align 8, !dbg !1698
  %93 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1699
  %94 = load i64, ptr %mask, align 8, !dbg !1700
  %95 = load i64, ptr %merged_datum, align 8, !dbg !1701
  %96 = load i32, ptr %field_offset, align 4, !dbg !1702
  %call102 = call i32 @acpi_ex_write_with_update_rule(ptr noundef %93, i64 noundef %94, i64 noundef %95, i32 noundef %96) #16, !dbg !1703
  store i32 %call102, ptr %status, align 4, !dbg !1704
  br label %exit, !dbg !1705

exit:                                             ; preds = %if.end100, %if.then49
  call void @llvm.dbg.label(metadata !1525), !dbg !1706
  %97 = load ptr, ptr %new_buffer, align 8, !dbg !1707
  %tobool103 = icmp ne ptr %97, null, !dbg !1707
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !1709

if.then104:                                       ; preds = %exit
  %98 = load ptr, ptr %new_buffer, align 8, !dbg !1710
  call void @acpi_os_free(ptr noundef %98) #16, !dbg !1710
  br label %if.end105, !dbg !1712

if.end105:                                        ; preds = %if.then104, %exit
  %99 = load i32, ptr %status, align 4, !dbg !1713
  store i32 %99, ptr %retval, align 4, !dbg !1713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1713

cleanup:                                          ; preds = %if.end105, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr %required_length) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr %access_bit_width) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr %field_datum_count) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr %datum_count) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_tail_bits) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_offset) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr %field_offset) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 8, ptr %raw_datum) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 8, ptr %merged_datum) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 8, ptr %width_mask) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_buffer) #15, !dbg !1714
  %100 = load i32, ptr %retval, align 4, !dbg !1714
  ret i32 %100, !dbg !1714
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #6 align 16 !dbg !1715 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1720, metadata !DIExpression()), !dbg !1731
  %0 = load i64, ptr %size.addr, align 8, !dbg !1732
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #15, !dbg !1733
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1721, metadata !DIExpression()), !dbg !1733
  br label %do.body, !dbg !1733

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1723, metadata !DIExpression()), !dbg !1734
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1726, metadata !DIExpression()), !dbg !1734
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1734
  %conv = zext i1 %cmp to i32, !dbg !1734
  store i32 1, ptr %tmp, align 4, !dbg !1734
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !1735
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !1735
  %1 = load i32, ptr %tmp, align 4, !dbg !1734
  %call = call i64 @arch_local_save_flags() #16, !dbg !1735
  store i64 %call, ptr %_flags, align 8, !dbg !1735
  br label %do.cond, !dbg !1735

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1735

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #15, !dbg !1736
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1727, metadata !DIExpression()), !dbg !1736
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #15, !dbg !1736
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1730, metadata !DIExpression()), !dbg !1736
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1736
  %conv6 = zext i1 %cmp5 to i32, !dbg !1736
  store i32 1, ptr %tmp7, align 4, !dbg !1736
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #15, !dbg !1737
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #15, !dbg !1737
  %2 = load i32, ptr %tmp7, align 4, !dbg !1736
  %3 = load i64, ptr %_flags, align 8, !dbg !1737
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #16, !dbg !1737
  store i32 %call9, ptr %tmp8, align 4, !dbg !1737
  %4 = load i32, ptr %tmp8, align 4, !dbg !1737
  store i32 %4, ptr %tmp1, align 4, !dbg !1735
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #15, !dbg !1738
  %5 = load i32, ptr %tmp1, align 4, !dbg !1733
  %tobool = icmp ne i32 %5, 0, !dbg !1738
  %6 = zext i1 %tobool to i64, !dbg !1738
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1738
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #17, !dbg !1739
  ret ptr %call10, !dbg !1740
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #6 align 16 !dbg !1741 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1745, metadata !DIExpression()), !dbg !1746
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1747
  call void @kfree(ptr noundef %0) #16, !dbg !1748
  ret void, !dbg !1749
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1750 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1753 dso_local zeroext i8 @acpi_is_valid_space_id(i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1757 dso_local i32 @acpi_ds_get_region_arguments(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1761 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1764 dso_local i32 @acpi_ds_get_buffer_field_arguments(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @acpi_ex_register_overflow(ptr noundef %obj_desc, i64 noundef %value) #0 align 16 !dbg !1765 {
entry:
  %retval = alloca i8, align 1
  %obj_desc.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1769, metadata !DIExpression()), !dbg !1771
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1770, metadata !DIExpression()), !dbg !1772
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1773
  %bit_length = getelementptr inbounds %struct.acpi_object_field_common, ptr %0, i32 0, i32 9, !dbg !1775
  %1 = load i32, ptr %bit_length, align 8, !dbg !1775
  %cmp = icmp uge i32 %1, 64, !dbg !1776
  br i1 %cmp, label %if.then, label %if.end, !dbg !1777

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !1778
  br label %return, !dbg !1778

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %value.addr, align 8, !dbg !1780
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1782
  %bit_length1 = getelementptr inbounds %struct.acpi_object_field_common, ptr %3, i32 0, i32 9, !dbg !1783
  %4 = load i32, ptr %bit_length1, align 8, !dbg !1783
  %sh_prom = zext i32 %4 to i64, !dbg !1784
  %shl = shl i64 1, %sh_prom, !dbg !1784
  %cmp2 = icmp uge i64 %2, %shl, !dbg !1785
  br i1 %cmp2, label %if.then3, label %if.end6, !dbg !1786

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %value.addr, align 8, !dbg !1787
  %shr = lshr i64 %5, 32, !dbg !1787
  %conv = trunc i64 %shr to i32, !dbg !1787
  %6 = load i64, ptr %value.addr, align 8, !dbg !1787
  %conv4 = trunc i64 %6 to i32, !dbg !1787
  %7 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1787
  %bit_length5 = getelementptr inbounds %struct.acpi_object_field_common, ptr %7, i32 0, i32 9, !dbg !1787
  %8 = load i32, ptr %bit_length5, align 8, !dbg !1787
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 306, ptr noundef @.str.9, i32 noundef %conv, i32 noundef %conv4, i32 noundef %8) #16, !dbg !1787
  store i8 1, ptr %retval, align 1, !dbg !1789
  br label %return, !dbg !1789

if.end6:                                          ; preds = %if.end
  store i8 0, ptr %retval, align 1, !dbg !1790
  br label %return, !dbg !1790

return:                                           ; preds = %if.end6, %if.then3, %if.then
  %9 = load i8, ptr %retval, align 1, !dbg !1791
  ret i8 %9, !dbg !1791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1792 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1800, metadata !DIExpression()), !dbg !1802
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1801, metadata !DIExpression()), !dbg !1803
  %0 = load i64, ptr %size.addr, align 8, !dbg !1804
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1805
  %or = or i32 %1, 256, !dbg !1806
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !1807
  ret ptr %call, !dbg !1808
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #8 align 16 !dbg !1809 {
entry:
  %call = call i64 @native_save_fl() #16, !dbg !1813
  ret i64 %call, !dbg !1814
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #8 align 16 !dbg !1815 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1820, metadata !DIExpression()), !dbg !1821
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1822
  %and = and i64 %0, 512, !dbg !1823
  %tobool = icmp ne i64 %and, 0, !dbg !1824
  %lnot = xor i1 %tobool, true, !dbg !1824
  %lnot.ext = zext i1 %lnot to i32, !dbg !1824
  ret i32 %lnot.ext, !dbg !1825
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !1826 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1828, metadata !DIExpression()), !dbg !1833
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1829, metadata !DIExpression()), !dbg !1834
  %0 = load i64, ptr %size.addr, align 8, !dbg !1835
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1836
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1837

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1838
  %tobool = icmp ne i64 %2, 0, !dbg !1838
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1839

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !1840
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1830, metadata !DIExpression()), !dbg !1841
  %3 = load i64, ptr %size.addr, align 8, !dbg !1842
  %cmp = icmp ugt i64 %3, 8192, !dbg !1844
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1845

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1846
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1847
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !1848
  store ptr %call, ptr %retval, align 8, !dbg !1849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1849

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1850
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !1850
  store i32 %call2, ptr %index, align 4, !dbg !1851
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1852
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1853
  %9 = ptrtoint ptr %8 to i64, !dbg !1853
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !1854
  %idxprom = zext i32 %call3 to i64, !dbg !1855
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1855
  %10 = load i32, ptr %index, align 4, !dbg !1856
  %idxprom4 = zext i32 %10 to i64, !dbg !1855
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1855
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1855
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1857
  %13 = load i64, ptr %size.addr, align 8, !dbg !1858
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !1859
  store ptr %call6, ptr %retval, align 8, !dbg !1860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1860

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !1861
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1862
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1863
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !1864
  store ptr %call8, ptr %retval, align 8, !dbg !1865
  br label %return, !dbg !1865

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1866
  ret ptr %16, !dbg !1866
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1867 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !1868 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1874, metadata !DIExpression()), !dbg !1876
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1875, metadata !DIExpression()), !dbg !1877
  %0 = load i64, ptr %size.addr, align 8, !dbg !1878
  %tobool = icmp ne i64 %0, 0, !dbg !1878
  br i1 %tobool, label %if.end, label %if.then, !dbg !1880

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1881
  br label %return, !dbg !1881

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1882
  %cmp = icmp ule i64 %1, 8, !dbg !1884
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1885

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1886
  br label %return, !dbg !1886

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1887
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1889
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1890

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1891
  %cmp4 = icmp ule i64 %3, 96, !dbg !1892
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1893

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1894
  br label %return, !dbg !1894

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1895
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1897
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1898

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1899
  %cmp9 = icmp ule i64 %5, 192, !dbg !1900
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1901

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1902
  br label %return, !dbg !1902

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1903
  %cmp12 = icmp ule i64 %6, 8, !dbg !1905
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1906

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1907
  br label %return, !dbg !1907

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1908
  %cmp15 = icmp ule i64 %7, 16, !dbg !1910
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1911

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1912
  br label %return, !dbg !1912

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1913
  %cmp18 = icmp ule i64 %8, 32, !dbg !1915
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1916

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1917
  br label %return, !dbg !1917

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1918
  %cmp21 = icmp ule i64 %9, 64, !dbg !1920
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1921

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1922
  br label %return, !dbg !1922

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1923
  %cmp24 = icmp ule i64 %10, 128, !dbg !1925
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1926

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1927
  br label %return, !dbg !1927

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1928
  %cmp27 = icmp ule i64 %11, 256, !dbg !1930
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1931

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1932
  br label %return, !dbg !1932

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1933
  %cmp30 = icmp ule i64 %12, 512, !dbg !1935
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1936

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1937
  br label %return, !dbg !1937

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1938
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1940
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1941

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1942
  br label %return, !dbg !1942

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1943
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1945
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1946

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1947
  br label %return, !dbg !1947

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1948
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1950
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1951

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1952
  br label %return, !dbg !1952

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1953
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1955
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1956

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1957
  br label %return, !dbg !1957

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1958
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1960
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1961

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1962
  br label %return, !dbg !1962

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1963
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1965
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1966

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1967
  br label %return, !dbg !1967

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1968
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1970
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1971

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1972
  br label %return, !dbg !1972

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1973
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1975
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1976

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1977
  br label %return, !dbg !1977

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1978
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1980
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1981

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1982
  br label %return, !dbg !1982

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1983
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1985
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1986

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1987
  br label %return, !dbg !1987

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1988
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1990
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1991

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1992
  br label %return, !dbg !1992

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1993
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1995
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1996

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1997
  br label %return, !dbg !1997

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1998, !range !2000, !noundef !2001
  %tobool69 = trunc i8 %25 to i1, !dbg !1998
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2002

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2003

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #19, !dbg !2004, !srcloc !2007
  unreachable, !dbg !2004

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2008

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2009

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2010

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2012

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2010

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 480, i32 0, i64 12) #15, !dbg !2014, !srcloc !2016
  br label %do.end75, !dbg !2014

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2010

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2017
  br label %return, !dbg !2017

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2018
  ret i32 %26, !dbg !2018
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2019 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !2025 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2029, metadata !DIExpression()), !dbg !2031
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2030, metadata !DIExpression()), !dbg !2032
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2033
  %and = and i32 %0, 17, !dbg !2033
  %cmp = icmp eq i32 %and, 0, !dbg !2033
  %lnot = xor i1 %cmp, true, !dbg !2033
  %lnot1 = xor i1 %lnot, true, !dbg !2033
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2033
  %conv = sext i32 %lnot.ext to i64, !dbg !2033
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2033
  %tobool = icmp ne i64 %expval, 0, !dbg !2033
  br i1 %tobool, label %if.then, label %if.end, !dbg !2035

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2036
  br label %return, !dbg !2036

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2037
  %and2 = and i32 %1, 1, !dbg !2039
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2039
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2040

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2041
  br label %return, !dbg !2041

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2042
  br label %return, !dbg !2042

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2044
  ret i32 %2, !dbg !2044
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2045 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2046 dso_local void @__compiletime_assert_173() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #8 align 16 !dbg !2049 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #15, !dbg !2054, !srcloc !2055
  %0 = load i64, ptr %flags, align 8, !dbg !2056
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2057
  ret i64 %0, !dbg !2058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2059 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !101, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exfldio.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exfldio\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exfldio.ll drivers/acpi/acpica/exfldio.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !48, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exfldio.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "edbcf5d7d1209ef6b73ea5e6a878989a")
!4 = !{!5, !12, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 422, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/amlcode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d3d08f7f5f071008a4fa29b292f7f44b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "AML_FIELD_UPDATE_PRESERVE", value: 0)
!10 = !DIEnumerator(name: "AML_FIELD_UPDATE_WRITE_AS_ONES", value: 32)
!11 = !DIEnumerator(name: "AML_FIELD_UPDATE_WRITE_AS_ZEROS", value: 64)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 10, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0)
!16 = !DIEnumerator(name: "true", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !18, line: 364, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!21 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!23 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!24 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!25 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!26 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!27 = !{!28, !32, !34, !37, !39, !40, !41, !45, !47}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !29, line: 21, baseType: !30)
!29 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !7)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !33, line: 421, baseType: !28)
!33 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !29, line: 23, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !31, line: 31, baseType: !36)
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !33, line: 127, baseType: !34)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !33, line: 814, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !29, line: 17, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 154, baseType: !7)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !{!49, !54, !59, !64, !69, !74, !79, !84, !0, !89, !91, !96}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 272, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 34)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 264, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 33)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !3, line: 607, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 248, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 31)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 668, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 400, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 50)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 288, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 36)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 336, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 42)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !81, isLocal: true, isDefinition: true)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 632, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 79)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 680, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 85)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !3, line: 503, type: !51, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !3, line: 306, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 416, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 52)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !18, line: 480, type: !98, isLocal: true, isDefinition: true)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 168, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 21)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !103)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!103 = !{!104}
!104 = !DISubrange(count: 8)
!105 = !{i32 7, !"Dwarf Version", i32 5}
!106 = !{i32 2, !"Debug Info Version", i32 3}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 8, !"cf-protection-branch", i32 1}
!109 = !{i32 4, !"function_return_thunk_extern", i32 1}
!110 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!111 = !{i32 1, !"Code Model", i32 2}
!112 = !{i32 1, !"override-stack-alignment", i32 8}
!113 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!114 = distinct !DISubprogram(name: "acpi_ex_access_region", scope: !3, file: !3, line: 198, type: !115, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !876)
!115 = !DISubroutineType(types: !116)
!116 = !{!32, !117, !28, !810, !28}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !119, line: 369, size: 576, elements: !120)
!119 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!120 = !{!121, !132, !145, !155, !191, !205, !214, !525, !542, !558, !571, !649, !661, !675, !685, !703, !725, !744, !763, !782, !795, !822, !839, !852, !866, !875}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !118, file: !119, line: 370, baseType: !122, size: 128)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !119, line: 73, size: 128, elements: !123)
!123 = !{!124, !125, !126, !127, !131}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !122, file: !119, line: 74, baseType: !117, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !122, file: !119, line: 74, baseType: !42, size: 8, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !119, line: 74, baseType: !42, size: 8, offset: 72)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !122, file: !119, line: 74, baseType: !128, size: 16, offset: 80)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !29, line: 19, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !31, line: 24, baseType: !130)
!130 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !122, file: !119, line: 74, baseType: !42, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !118, file: !119, line: 371, baseType: !133, size: 192)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !119, line: 76, size: 192, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !144}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !133, file: !119, line: 77, baseType: !117, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !133, file: !119, line: 77, baseType: !42, size: 8, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !133, file: !119, line: 77, baseType: !42, size: 8, offset: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !133, file: !119, line: 77, baseType: !128, size: 16, offset: 80)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !119, line: 77, baseType: !42, size: 8, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !133, file: !119, line: 77, baseType: !141, size: 24, offset: 104)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 24, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 3)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !133, file: !119, line: 78, baseType: !34, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !118, file: !119, line: 372, baseType: !146, size: 256)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !119, line: 93, size: 256, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !119, line: 94, baseType: !117, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !119, line: 94, baseType: !42, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !119, line: 94, baseType: !42, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !119, line: 94, baseType: !128, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !119, line: 94, baseType: !42, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !146, file: !119, line: 94, baseType: !37, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !146, file: !119, line: 94, baseType: !28, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !118, file: !119, line: 373, baseType: !156, size: 384)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !119, line: 97, size: 384, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !165, !166, !167, !168}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !156, file: !119, line: 98, baseType: !117, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !156, file: !119, line: 98, baseType: !42, size: 8, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !119, line: 98, baseType: !42, size: 8, offset: 72)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !156, file: !119, line: 98, baseType: !128, size: 16, offset: 80)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !156, file: !119, line: 98, baseType: !42, size: 8, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !156, file: !119, line: 98, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !156, file: !119, line: 98, baseType: !28, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !156, file: !119, line: 99, baseType: !28, size: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !156, file: !119, line: 100, baseType: !164, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !156, file: !119, line: 101, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !171, line: 133, size: 384, elements: !172)
!171 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!172 = !{!173, !174, !175, !176, !177, !186, !187, !188, !189}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !170, file: !171, line: 134, baseType: !117, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !170, file: !171, line: 135, baseType: !42, size: 8, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !171, line: 136, baseType: !42, size: 8, offset: 72)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !171, line: 137, baseType: !128, size: 16, offset: 80)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !170, file: !171, line: 138, baseType: !178, size: 32, offset: 96)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !179, line: 328, size: 32, elements: !180)
!179 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !178, file: !179, line: 329, baseType: !28, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !178, file: !179, line: 330, baseType: !183, size: 32)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 4)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !171, line: 139, baseType: !169, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !170, file: !171, line: 140, baseType: !169, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !170, file: !171, line: 141, baseType: !169, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !170, file: !171, line: 142, baseType: !190, size: 16, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !33, line: 445, baseType: !128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !118, file: !119, line: 374, baseType: !192, size: 384)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !119, line: 104, size: 384, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !202, !203, !204}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !192, file: !119, line: 105, baseType: !117, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !192, file: !119, line: 105, baseType: !42, size: 8, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !192, file: !119, line: 105, baseType: !42, size: 8, offset: 72)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !192, file: !119, line: 105, baseType: !128, size: 16, offset: 80)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !119, line: 105, baseType: !42, size: 8, offset: 96)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !192, file: !119, line: 105, baseType: !169, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !192, file: !119, line: 106, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !192, file: !119, line: 107, baseType: !164, size: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !192, file: !119, line: 108, baseType: !28, size: 32, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !192, file: !119, line: 109, baseType: !28, size: 32, offset: 352)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !118, file: !119, line: 375, baseType: !206, size: 192)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !119, line: 118, size: 192, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !206, file: !119, line: 119, baseType: !117, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !206, file: !119, line: 119, baseType: !42, size: 8, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !206, file: !119, line: 119, baseType: !42, size: 8, offset: 72)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !206, file: !119, line: 119, baseType: !128, size: 16, offset: 80)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !119, line: 119, baseType: !42, size: 8, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !206, file: !119, line: 119, baseType: !39, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !118, file: !119, line: 376, baseType: !215, size: 448)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !119, line: 144, size: 448, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !522, !523, !524}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !215, file: !119, line: 145, baseType: !117, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !119, line: 145, baseType: !42, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !215, file: !119, line: 145, baseType: !42, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !215, file: !119, line: 145, baseType: !128, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !119, line: 145, baseType: !42, size: 8, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !215, file: !119, line: 145, baseType: !42, size: 8, offset: 104)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !215, file: !119, line: 146, baseType: !42, size: 8, offset: 112)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !215, file: !119, line: 147, baseType: !42, size: 8, offset: 120)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !215, file: !119, line: 148, baseType: !117, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !119, line: 149, baseType: !117, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !215, file: !119, line: 150, baseType: !164, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !215, file: !119, line: 154, baseType: !229, size: 64, offset: 320)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !119, line: 151, size: 64, elements: !230)
!230 = !{!231, !521}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !229, file: !119, line: 152, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !171, line: 248, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!32, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !238, line: 37, size: 9024, elements: !239)
!238 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !467, !468, !469, !470, !471, !475, !477, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !504, !505, !506, !507, !508, !509, !510, !511, !513, !519}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !237, file: !238, line: 38, baseType: !236, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !237, file: !238, line: 39, baseType: !42, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !237, file: !238, line: 40, baseType: !42, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !237, file: !238, line: 41, baseType: !128, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !237, file: !238, line: 42, baseType: !42, size: 8, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !237, file: !238, line: 43, baseType: !42, size: 8, offset: 104)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !237, file: !238, line: 44, baseType: !42, size: 8, offset: 112)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !237, file: !238, line: 45, baseType: !190, size: 16, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !237, file: !238, line: 46, baseType: !42, size: 8, offset: 144)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !237, file: !238, line: 47, baseType: !42, size: 8, offset: 152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !237, file: !238, line: 48, baseType: !42, size: 8, offset: 160)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !237, file: !238, line: 49, baseType: !42, size: 8, offset: 168)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !237, file: !238, line: 50, baseType: !42, size: 8, offset: 176)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !237, file: !238, line: 51, baseType: !42, size: 8, offset: 184)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !237, file: !238, line: 52, baseType: !42, size: 8, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !237, file: !238, line: 53, baseType: !42, size: 8, offset: 200)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !237, file: !238, line: 54, baseType: !164, size: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !237, file: !238, line: 55, baseType: !28, size: 32, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !237, file: !238, line: 56, baseType: !28, size: 32, offset: 352)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !237, file: !238, line: 57, baseType: !28, size: 32, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !237, file: !238, line: 58, baseType: !28, size: 32, offset: 416)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !237, file: !238, line: 60, baseType: !262, size: 640, offset: 448)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !171, line: 909, size: 640, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !350, !351, !465, !466}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !262, file: !171, line: 910, baseType: !164, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !262, file: !171, line: 911, baseType: !164, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !262, file: !171, line: 912, baseType: !164, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !262, file: !171, line: 913, baseType: !164, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !262, file: !171, line: 914, baseType: !164, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !262, file: !171, line: 915, baseType: !270, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !171, line: 891, size: 1600, elements: !272)
!272 = !{!273, !293, !309}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !271, file: !171, line: 892, baseType: !274, size: 448)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !171, line: 844, size: 448, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !292}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !274, file: !171, line: 845, baseType: !270, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !274, file: !171, line: 845, baseType: !42, size: 8, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !171, line: 845, baseType: !42, size: 8, offset: 72)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !274, file: !171, line: 845, baseType: !128, size: 16, offset: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !274, file: !171, line: 845, baseType: !164, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !171, line: 845, baseType: !270, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !274, file: !171, line: 845, baseType: !169, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !274, file: !171, line: 845, baseType: !284, size: 64, offset: 320)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !171, line: 732, size: 64, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !284, file: !171, line: 733, baseType: !34, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !284, file: !171, line: 734, baseType: !28, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !284, file: !171, line: 735, baseType: !37, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !284, file: !171, line: 736, baseType: !164, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !171, line: 737, baseType: !37, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !284, file: !171, line: 738, baseType: !270, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !274, file: !171, line: 845, baseType: !42, size: 8, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !271, file: !171, line: 893, baseType: !294, size: 640)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !171, line: 851, size: 640, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !294, file: !171, line: 852, baseType: !270, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !294, file: !171, line: 852, baseType: !42, size: 8, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !171, line: 852, baseType: !42, size: 8, offset: 72)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !294, file: !171, line: 852, baseType: !128, size: 16, offset: 80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !294, file: !171, line: 852, baseType: !164, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !171, line: 852, baseType: !270, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !294, file: !171, line: 852, baseType: !169, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !294, file: !171, line: 852, baseType: !284, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !294, file: !171, line: 852, baseType: !42, size: 8, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !294, file: !171, line: 852, baseType: !37, size: 64, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !294, file: !171, line: 853, baseType: !164, size: 64, offset: 512)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !294, file: !171, line: 854, baseType: !28, size: 32, offset: 576)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !171, line: 855, baseType: !28, size: 32, offset: 608)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !271, file: !171, line: 894, baseType: !310, size: 1600)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !171, line: 862, size: 1600, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !310, file: !171, line: 863, baseType: !270, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !171, line: 863, baseType: !42, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !171, line: 863, baseType: !42, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !310, file: !171, line: 863, baseType: !128, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !310, file: !171, line: 863, baseType: !164, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !171, line: 863, baseType: !270, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !171, line: 863, baseType: !169, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !171, line: 863, baseType: !284, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !310, file: !171, line: 863, baseType: !42, size: 8, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !310, file: !171, line: 863, baseType: !270, size: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !310, file: !171, line: 864, baseType: !270, size: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !310, file: !171, line: 865, baseType: !37, size: 64, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !310, file: !171, line: 866, baseType: !42, size: 8, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !310, file: !171, line: 867, baseType: !37, size: 64, offset: 704)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !310, file: !171, line: 868, baseType: !37, size: 64, offset: 768)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !310, file: !171, line: 869, baseType: !37, size: 64, offset: 832)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !310, file: !171, line: 870, baseType: !183, size: 32, offset: 896)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !310, file: !171, line: 871, baseType: !28, size: 32, offset: 928)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !310, file: !171, line: 872, baseType: !28, size: 32, offset: 960)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !310, file: !171, line: 873, baseType: !28, size: 32, offset: 992)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !310, file: !171, line: 874, baseType: !28, size: 32, offset: 1024)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !310, file: !171, line: 875, baseType: !28, size: 32, offset: 1056)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !310, file: !171, line: 876, baseType: !28, size: 32, offset: 1088)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !310, file: !171, line: 877, baseType: !28, size: 32, offset: 1120)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !310, file: !171, line: 878, baseType: !28, size: 32, offset: 1152)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !310, file: !171, line: 879, baseType: !28, size: 32, offset: 1184)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !310, file: !171, line: 880, baseType: !28, size: 32, offset: 1216)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !310, file: !171, line: 881, baseType: !28, size: 32, offset: 1248)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !310, file: !171, line: 882, baseType: !28, size: 32, offset: 1280)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !310, file: !171, line: 883, baseType: !28, size: 32, offset: 1312)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !310, file: !171, line: 884, baseType: !128, size: 16, offset: 1344)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !310, file: !171, line: 885, baseType: !42, size: 8, offset: 1360)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !310, file: !171, line: 886, baseType: !42, size: 8, offset: 1368)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !310, file: !171, line: 887, baseType: !42, size: 8, offset: 1376)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !310, file: !171, line: 888, baseType: !347, size: 160, offset: 1384)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 20)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !262, file: !171, line: 916, baseType: !169, size: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !262, file: !171, line: 917, baseType: !352, size: 64, offset: 448)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !171, line: 679, size: 640, elements: !354)
!354 = !{!355, !363, !376, !385, !394, !407, !421, !433, !443}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !353, file: !171, line: 680, baseType: !356, size: 128)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !171, line: 575, size: 128, elements: !357)
!357 = !{!358, !359, !360, !361, !362}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !171, line: 576, baseType: !39, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !356, file: !171, line: 576, baseType: !42, size: 8, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !356, file: !171, line: 576, baseType: !42, size: 8, offset: 72)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !356, file: !171, line: 576, baseType: !128, size: 16, offset: 80)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !356, file: !171, line: 576, baseType: !128, size: 16, offset: 96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !353, file: !171, line: 681, baseType: !364, size: 384)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !171, line: 604, size: 384, elements: !365)
!365 = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !364, file: !171, line: 605, baseType: !39, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !364, file: !171, line: 605, baseType: !42, size: 8, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !364, file: !171, line: 605, baseType: !42, size: 8, offset: 72)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !364, file: !171, line: 605, baseType: !128, size: 16, offset: 80)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !364, file: !171, line: 605, baseType: !128, size: 16, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !364, file: !171, line: 606, baseType: !128, size: 16, offset: 112)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !364, file: !171, line: 607, baseType: !270, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !364, file: !171, line: 608, baseType: !164, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !364, file: !171, line: 609, baseType: !164, size: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !364, file: !171, line: 610, baseType: !34, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !353, file: !171, line: 682, baseType: !377, size: 192)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !171, line: 582, size: 192, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !171, line: 583, baseType: !39, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !377, file: !171, line: 583, baseType: !42, size: 8, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !171, line: 583, baseType: !42, size: 8, offset: 72)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !377, file: !171, line: 583, baseType: !128, size: 16, offset: 80)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !171, line: 583, baseType: !128, size: 16, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !377, file: !171, line: 584, baseType: !117, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !353, file: !171, line: 683, baseType: !386, size: 192)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !171, line: 616, size: 192, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !171, line: 617, baseType: !39, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !386, file: !171, line: 617, baseType: !42, size: 8, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !386, file: !171, line: 617, baseType: !42, size: 8, offset: 72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !386, file: !171, line: 617, baseType: !128, size: 16, offset: 80)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !386, file: !171, line: 617, baseType: !128, size: 16, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !386, file: !171, line: 618, baseType: !169, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !353, file: !171, line: 684, baseType: !395, size: 448)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !171, line: 621, size: 448, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !171, line: 622, baseType: !39, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !395, file: !171, line: 622, baseType: !42, size: 8, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !171, line: 622, baseType: !42, size: 8, offset: 72)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !395, file: !171, line: 622, baseType: !128, size: 16, offset: 80)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !395, file: !171, line: 622, baseType: !128, size: 16, offset: 96)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !395, file: !171, line: 623, baseType: !28, size: 32, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !395, file: !171, line: 624, baseType: !270, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !395, file: !171, line: 625, baseType: !164, size: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !395, file: !171, line: 626, baseType: !164, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !395, file: !171, line: 627, baseType: !28, size: 32, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !353, file: !171, line: 685, baseType: !408, size: 512)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !171, line: 590, size: 512, elements: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !408, file: !171, line: 591, baseType: !39, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !408, file: !171, line: 591, baseType: !42, size: 8, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !171, line: 591, baseType: !42, size: 8, offset: 72)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !408, file: !171, line: 591, baseType: !128, size: 16, offset: 80)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !408, file: !171, line: 591, baseType: !128, size: 16, offset: 96)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !408, file: !171, line: 592, baseType: !28, size: 32, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !408, file: !171, line: 593, baseType: !117, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !408, file: !171, line: 594, baseType: !117, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !408, file: !171, line: 595, baseType: !236, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !408, file: !171, line: 596, baseType: !39, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !408, file: !171, line: 597, baseType: !28, size: 32, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !353, file: !171, line: 686, baseType: !422, size: 320)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !171, line: 634, size: 320, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !422, file: !171, line: 635, baseType: !39, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !422, file: !171, line: 635, baseType: !42, size: 8, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !171, line: 635, baseType: !42, size: 8, offset: 72)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !422, file: !171, line: 635, baseType: !128, size: 16, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !422, file: !171, line: 635, baseType: !128, size: 16, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !422, file: !171, line: 636, baseType: !42, size: 8, offset: 112)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !422, file: !171, line: 637, baseType: !236, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !422, file: !171, line: 638, baseType: !117, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !422, file: !171, line: 639, baseType: !34, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !353, file: !171, line: 687, baseType: !434, size: 640)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !171, line: 646, size: 640, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !171, line: 647, baseType: !39, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !434, file: !171, line: 647, baseType: !42, size: 8, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !171, line: 647, baseType: !42, size: 8, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !434, file: !171, line: 647, baseType: !128, size: 16, offset: 80)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !434, file: !171, line: 647, baseType: !128, size: 16, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !434, file: !171, line: 648, baseType: !442, size: 512, offset: 128)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 512, elements: !103)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !353, file: !171, line: 688, baseType: !444, size: 320)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !171, line: 669, size: 320, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !444, file: !171, line: 670, baseType: !39, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !444, file: !171, line: 670, baseType: !42, size: 8, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !171, line: 670, baseType: !42, size: 8, offset: 72)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !444, file: !171, line: 670, baseType: !128, size: 16, offset: 80)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !444, file: !171, line: 670, baseType: !128, size: 16, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !444, file: !171, line: 671, baseType: !42, size: 8, offset: 112)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !444, file: !171, line: 672, baseType: !169, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !444, file: !171, line: 673, baseType: !117, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !444, file: !171, line: 674, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !171, line: 660, size: 128, elements: !457)
!457 = !{!458, !464}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !456, file: !171, line: 661, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !33, line: 1061, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463, !28, !39}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !33, line: 424, baseType: !39)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !456, file: !171, line: 662, baseType: !39, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !262, file: !171, line: 918, baseType: !270, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !262, file: !171, line: 919, baseType: !28, size: 32, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !237, file: !238, line: 61, baseType: !28, size: 32, offset: 1088)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !237, file: !238, line: 62, baseType: !28, size: 32, offset: 1120)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !237, file: !238, line: 63, baseType: !128, size: 16, offset: 1152)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !237, file: !238, line: 64, baseType: !42, size: 8, offset: 1168)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !237, file: !238, line: 66, baseType: !472, size: 2688, offset: 1216)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 2688, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 7)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !237, file: !238, line: 67, baseType: !476, size: 3072, offset: 3904)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 3072, elements: !103)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !237, file: !238, line: 68, baseType: !478, size: 576, offset: 6976)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 576, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 9)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !237, file: !238, line: 69, baseType: !201, size: 64, offset: 7552)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !237, file: !238, line: 71, baseType: !164, size: 64, offset: 7616)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !237, file: !238, line: 72, baseType: !201, size: 64, offset: 7680)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !237, file: !238, line: 73, baseType: !352, size: 64, offset: 7744)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !237, file: !238, line: 74, baseType: !169, size: 64, offset: 7808)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !237, file: !238, line: 75, baseType: !117, size: 64, offset: 7872)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !237, file: !238, line: 76, baseType: !169, size: 64, offset: 7936)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !237, file: !238, line: 77, baseType: !270, size: 64, offset: 8000)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !237, file: !238, line: 78, baseType: !117, size: 64, offset: 8064)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !237, file: !238, line: 79, baseType: !169, size: 64, offset: 8128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !237, file: !238, line: 80, baseType: !37, size: 64, offset: 8192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !237, file: !238, line: 81, baseType: !270, size: 64, offset: 8256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !237, file: !238, line: 82, baseType: !494, size: 64, offset: 8320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !171, line: 718, size: 128, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !496, file: !171, line: 722, baseType: !28, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !496, file: !171, line: 723, baseType: !28, size: 32, offset: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !496, file: !171, line: 724, baseType: !128, size: 16, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !496, file: !171, line: 725, baseType: !42, size: 8, offset: 80)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !496, file: !171, line: 726, baseType: !42, size: 8, offset: 88)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !496, file: !171, line: 727, baseType: !42, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !237, file: !238, line: 83, baseType: !270, size: 64, offset: 8384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !237, file: !238, line: 84, baseType: !117, size: 64, offset: 8448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !237, file: !238, line: 85, baseType: !352, size: 64, offset: 8512)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !237, file: !238, line: 86, baseType: !117, size: 64, offset: 8576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !237, file: !238, line: 87, baseType: !352, size: 64, offset: 8640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !237, file: !238, line: 88, baseType: !270, size: 64, offset: 8704)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !237, file: !238, line: 89, baseType: !270, size: 64, offset: 8768)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !237, file: !238, line: 90, baseType: !512, size: 64, offset: 8832)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !237, file: !238, line: 91, baseType: !514, size: 64, offset: 8896)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !171, line: 652, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!32, !236, !518}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !237, file: !238, line: 92, baseType: !520, size: 64, offset: 8960)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !171, line: 656, baseType: !233)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !229, file: !119, line: 153, baseType: !117, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !215, file: !119, line: 156, baseType: !28, size: 32, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !215, file: !119, line: 157, baseType: !190, size: 16, offset: 416)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !215, file: !119, line: 158, baseType: !42, size: 8, offset: 432)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !118, file: !119, line: 377, baseType: !526, size: 576)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !119, line: 122, size: 576, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !526, file: !119, line: 123, baseType: !117, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !526, file: !119, line: 123, baseType: !42, size: 8, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !526, file: !119, line: 123, baseType: !42, size: 8, offset: 72)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !526, file: !119, line: 123, baseType: !128, size: 16, offset: 80)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !119, line: 123, baseType: !42, size: 8, offset: 96)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !526, file: !119, line: 123, baseType: !42, size: 8, offset: 104)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !526, file: !119, line: 124, baseType: !128, size: 16, offset: 112)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !526, file: !119, line: 125, baseType: !39, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !526, file: !119, line: 126, baseType: !34, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !526, file: !119, line: 127, baseType: !512, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !526, file: !119, line: 128, baseType: !117, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !119, line: 129, baseType: !117, size: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !526, file: !119, line: 130, baseType: !169, size: 64, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !526, file: !119, line: 131, baseType: !42, size: 8, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !118, file: !119, line: 378, baseType: !543, size: 512)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !119, line: 134, size: 512, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !556, !557}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !543, file: !119, line: 135, baseType: !117, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !543, file: !119, line: 135, baseType: !42, size: 8, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !543, file: !119, line: 135, baseType: !42, size: 8, offset: 72)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !543, file: !119, line: 135, baseType: !128, size: 16, offset: 80)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !119, line: 135, baseType: !42, size: 8, offset: 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !543, file: !119, line: 135, baseType: !42, size: 8, offset: 104)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !543, file: !119, line: 136, baseType: !169, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !119, line: 137, baseType: !117, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !543, file: !119, line: 138, baseType: !117, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !543, file: !119, line: 139, baseType: !555, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !33, line: 129, baseType: !34)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !543, file: !119, line: 140, baseType: !28, size: 32, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !543, file: !119, line: 141, baseType: !39, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !118, file: !119, line: 379, baseType: !559, size: 320)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !119, line: 185, size: 320, elements: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !570}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !559, file: !119, line: 186, baseType: !117, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !559, file: !119, line: 186, baseType: !42, size: 8, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !559, file: !119, line: 186, baseType: !42, size: 8, offset: 72)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !559, file: !119, line: 186, baseType: !128, size: 16, offset: 80)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !559, file: !119, line: 186, baseType: !42, size: 8, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !559, file: !119, line: 186, baseType: !567, size: 128, offset: 128)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 2)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !559, file: !119, line: 186, baseType: !117, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !118, file: !119, line: 380, baseType: !572, size: 384)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !119, line: 188, size: 384, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !572, file: !119, line: 189, baseType: !117, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !119, line: 189, baseType: !42, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !572, file: !119, line: 189, baseType: !42, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !572, file: !119, line: 189, baseType: !128, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !119, line: 189, baseType: !42, size: 8, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !572, file: !119, line: 190, baseType: !567, size: 128, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !572, file: !119, line: 190, baseType: !117, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !572, file: !119, line: 190, baseType: !582, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !171, line: 480, size: 576, elements: !584)
!584 = !{!585, !586, !587, !588, !596, !611, !643, !644, !645, !646, !647, !648}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !583, file: !171, line: 481, baseType: !169, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !583, file: !171, line: 482, baseType: !582, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !583, file: !171, line: 483, baseType: !582, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !583, file: !171, line: 484, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !171, line: 497, size: 256, elements: !591)
!591 = !{!592, !593, !594, !595}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !590, file: !171, line: 498, baseType: !589, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !590, file: !171, line: 499, baseType: !589, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !590, file: !171, line: 500, baseType: !582, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !590, file: !171, line: 501, baseType: !28, size: 32, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !583, file: !171, line: 485, baseType: !597, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !171, line: 466, size: 320, elements: !599)
!599 = !{!600, !605, !606, !607, !608, !609, !610}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !598, file: !171, line: 467, baseType: !601, size: 128)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !171, line: 459, size: 128, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !601, file: !171, line: 460, baseType: !42, size: 8)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !601, file: !171, line: 461, baseType: !34, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !598, file: !171, line: 468, baseType: !601, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !598, file: !171, line: 469, baseType: !128, size: 16, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !598, file: !171, line: 470, baseType: !42, size: 8, offset: 272)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !598, file: !171, line: 471, baseType: !42, size: 8, offset: 280)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !598, file: !171, line: 472, baseType: !42, size: 8, offset: 288)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !598, file: !171, line: 473, baseType: !42, size: 8, offset: 296)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !583, file: !171, line: 486, baseType: !612, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !171, line: 448, size: 192, elements: !614)
!614 = !{!615, !638, !639, !640, !641, !642}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !613, file: !171, line: 449, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !171, line: 438, size: 64, elements: !617)
!617 = !{!618, !619, !632}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !616, file: !171, line: 439, baseType: !169, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !616, file: !171, line: 440, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !171, line: 419, size: 256, elements: !622)
!622 = !{!623, !628, !629, !630, !631}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !621, file: !171, line: 420, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !33, line: 1058, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!28, !463, !28, !39}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !621, file: !171, line: 421, baseType: !39, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !621, file: !171, line: 422, baseType: !169, size: 64, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !621, file: !171, line: 423, baseType: !42, size: 8, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !621, file: !171, line: 424, baseType: !42, size: 8, offset: 200)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !616, file: !171, line: 441, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !171, line: 429, size: 128, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !634, file: !171, line: 430, baseType: !169, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !634, file: !171, line: 431, baseType: !633, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !613, file: !171, line: 450, baseType: !597, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !171, line: 451, baseType: !42, size: 8, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !613, file: !171, line: 452, baseType: !42, size: 8, offset: 136)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !613, file: !171, line: 453, baseType: !42, size: 8, offset: 144)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !613, file: !171, line: 454, baseType: !42, size: 8, offset: 152)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !583, file: !171, line: 487, baseType: !34, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !583, file: !171, line: 488, baseType: !28, size: 32, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !583, file: !171, line: 489, baseType: !128, size: 16, offset: 480)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !583, file: !171, line: 490, baseType: !128, size: 16, offset: 496)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !583, file: !171, line: 491, baseType: !42, size: 8, offset: 512)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !583, file: !171, line: 492, baseType: !42, size: 8, offset: 520)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !118, file: !119, line: 381, baseType: !650, size: 384)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !119, line: 193, size: 384, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659, !660}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !650, file: !119, line: 194, baseType: !117, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !650, file: !119, line: 194, baseType: !42, size: 8, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !650, file: !119, line: 194, baseType: !42, size: 8, offset: 72)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !650, file: !119, line: 194, baseType: !128, size: 16, offset: 80)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !119, line: 194, baseType: !42, size: 8, offset: 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !650, file: !119, line: 194, baseType: !567, size: 128, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !650, file: !119, line: 194, baseType: !117, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !650, file: !119, line: 194, baseType: !28, size: 32, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !650, file: !119, line: 195, baseType: !28, size: 32, offset: 352)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !118, file: !119, line: 382, baseType: !662, size: 384)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !119, line: 198, size: 384, elements: !663)
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !662, file: !119, line: 199, baseType: !117, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !662, file: !119, line: 199, baseType: !42, size: 8, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !662, file: !119, line: 199, baseType: !42, size: 8, offset: 72)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !662, file: !119, line: 199, baseType: !128, size: 16, offset: 80)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !662, file: !119, line: 199, baseType: !42, size: 8, offset: 96)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !662, file: !119, line: 201, baseType: !42, size: 8, offset: 104)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !662, file: !119, line: 202, baseType: !42, size: 8, offset: 112)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !662, file: !119, line: 203, baseType: !567, size: 128, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !662, file: !119, line: 203, baseType: !117, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !662, file: !119, line: 203, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !33, line: 128, baseType: !34)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !118, file: !119, line: 383, baseType: !676, size: 320)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !119, line: 206, size: 320, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !119, line: 207, baseType: !117, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !119, line: 207, baseType: !42, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !119, line: 207, baseType: !42, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !119, line: 207, baseType: !128, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !119, line: 207, baseType: !42, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !676, file: !119, line: 207, baseType: !567, size: 128, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !676, file: !119, line: 207, baseType: !117, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !118, file: !119, line: 384, baseType: !686, size: 384)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !119, line: 234, size: 384, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !686, file: !119, line: 235, baseType: !117, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !686, file: !119, line: 235, baseType: !42, size: 8, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !686, file: !119, line: 235, baseType: !42, size: 8, offset: 72)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !686, file: !119, line: 235, baseType: !128, size: 16, offset: 80)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !119, line: 235, baseType: !42, size: 8, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !686, file: !119, line: 235, baseType: !42, size: 8, offset: 104)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !686, file: !119, line: 235, baseType: !42, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !686, file: !119, line: 235, baseType: !42, size: 8, offset: 120)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !119, line: 235, baseType: !169, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !686, file: !119, line: 235, baseType: !28, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !686, file: !119, line: 235, baseType: !28, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !686, file: !119, line: 235, baseType: !28, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !686, file: !119, line: 235, baseType: !42, size: 8, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !686, file: !119, line: 235, baseType: !42, size: 8, offset: 296)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !686, file: !119, line: 235, baseType: !117, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !118, file: !119, line: 385, baseType: !704, size: 576)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !119, line: 238, size: 576, elements: !705)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !704, file: !119, line: 239, baseType: !117, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !704, file: !119, line: 239, baseType: !42, size: 8, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !704, file: !119, line: 239, baseType: !42, size: 8, offset: 72)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !704, file: !119, line: 239, baseType: !128, size: 16, offset: 80)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !119, line: 239, baseType: !42, size: 8, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !704, file: !119, line: 239, baseType: !42, size: 8, offset: 104)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !704, file: !119, line: 239, baseType: !42, size: 8, offset: 112)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !704, file: !119, line: 239, baseType: !42, size: 8, offset: 120)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !704, file: !119, line: 239, baseType: !169, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !704, file: !119, line: 239, baseType: !28, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !704, file: !119, line: 239, baseType: !28, size: 32, offset: 224)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !704, file: !119, line: 239, baseType: !28, size: 32, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !704, file: !119, line: 239, baseType: !42, size: 8, offset: 288)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !704, file: !119, line: 239, baseType: !42, size: 8, offset: 296)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !704, file: !119, line: 239, baseType: !128, size: 16, offset: 304)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !704, file: !119, line: 240, baseType: !117, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !704, file: !119, line: 241, baseType: !164, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !704, file: !119, line: 242, baseType: !128, size: 16, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !704, file: !119, line: 243, baseType: !164, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !118, file: !119, line: 386, baseType: !726, size: 384)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !119, line: 263, size: 384, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !726, file: !119, line: 264, baseType: !117, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !726, file: !119, line: 264, baseType: !42, size: 8, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !726, file: !119, line: 264, baseType: !42, size: 8, offset: 72)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !726, file: !119, line: 264, baseType: !128, size: 16, offset: 80)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !119, line: 264, baseType: !42, size: 8, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !726, file: !119, line: 264, baseType: !42, size: 8, offset: 104)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !726, file: !119, line: 264, baseType: !42, size: 8, offset: 112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !726, file: !119, line: 264, baseType: !42, size: 8, offset: 120)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !119, line: 264, baseType: !169, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !726, file: !119, line: 264, baseType: !28, size: 32, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !726, file: !119, line: 264, baseType: !28, size: 32, offset: 224)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !726, file: !119, line: 264, baseType: !28, size: 32, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !726, file: !119, line: 264, baseType: !42, size: 8, offset: 288)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !726, file: !119, line: 264, baseType: !42, size: 8, offset: 296)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !726, file: !119, line: 264, baseType: !42, size: 8, offset: 304)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !726, file: !119, line: 265, baseType: !117, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !118, file: !119, line: 387, baseType: !745, size: 448)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !119, line: 246, size: 448, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !745, file: !119, line: 247, baseType: !117, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !119, line: 247, baseType: !42, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !745, file: !119, line: 247, baseType: !42, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !745, file: !119, line: 247, baseType: !128, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !119, line: 247, baseType: !42, size: 8, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !745, file: !119, line: 247, baseType: !42, size: 8, offset: 104)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !745, file: !119, line: 247, baseType: !42, size: 8, offset: 112)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !745, file: !119, line: 247, baseType: !42, size: 8, offset: 120)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !745, file: !119, line: 247, baseType: !169, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !745, file: !119, line: 247, baseType: !28, size: 32, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !745, file: !119, line: 247, baseType: !28, size: 32, offset: 224)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !119, line: 247, baseType: !28, size: 32, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !745, file: !119, line: 247, baseType: !42, size: 8, offset: 288)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !745, file: !119, line: 247, baseType: !42, size: 8, offset: 296)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !745, file: !119, line: 247, baseType: !117, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !745, file: !119, line: 248, baseType: !117, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !118, file: !119, line: 388, baseType: !764, size: 448)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !119, line: 251, size: 448, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !119, line: 252, baseType: !117, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !119, line: 252, baseType: !42, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !119, line: 252, baseType: !42, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !119, line: 252, baseType: !128, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !119, line: 252, baseType: !42, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !764, file: !119, line: 252, baseType: !42, size: 8, offset: 104)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !764, file: !119, line: 252, baseType: !42, size: 8, offset: 112)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !764, file: !119, line: 252, baseType: !42, size: 8, offset: 120)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !119, line: 252, baseType: !169, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !764, file: !119, line: 252, baseType: !28, size: 32, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !764, file: !119, line: 252, baseType: !28, size: 32, offset: 224)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !764, file: !119, line: 252, baseType: !28, size: 32, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !764, file: !119, line: 252, baseType: !42, size: 8, offset: 288)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !764, file: !119, line: 252, baseType: !42, size: 8, offset: 296)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !764, file: !119, line: 257, baseType: !117, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !764, file: !119, line: 258, baseType: !117, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !118, file: !119, line: 389, baseType: !783, size: 512)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !119, line: 274, size: 512, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !119, line: 275, baseType: !117, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !119, line: 275, baseType: !42, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !119, line: 275, baseType: !42, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !119, line: 275, baseType: !128, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !119, line: 275, baseType: !42, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !783, file: !119, line: 275, baseType: !169, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !783, file: !119, line: 276, baseType: !28, size: 32, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !783, file: !119, line: 277, baseType: !459, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !783, file: !119, line: 278, baseType: !39, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !783, file: !119, line: 279, baseType: !567, size: 128, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !118, file: !119, line: 390, baseType: !796, size: 576)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !119, line: 282, size: 576, elements: !797)
!797 = !{!798, !799, !800, !801, !802, !803, !804, !805, !811, !812, !813, !814, !820, !821}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !796, file: !119, line: 283, baseType: !117, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !796, file: !119, line: 283, baseType: !42, size: 8, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !119, line: 283, baseType: !42, size: 8, offset: 72)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !796, file: !119, line: 283, baseType: !128, size: 16, offset: 80)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !119, line: 283, baseType: !42, size: 8, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !796, file: !119, line: 283, baseType: !42, size: 8, offset: 104)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !796, file: !119, line: 284, baseType: !42, size: 8, offset: 112)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !796, file: !119, line: 285, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !33, line: 1093, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{!32, !28, !555, !28, !810, !39, !39}
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !796, file: !119, line: 286, baseType: !169, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !796, file: !119, line: 287, baseType: !39, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !796, file: !119, line: 288, baseType: !39, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !796, file: !119, line: 289, baseType: !815, size: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !33, line: 1126, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!32, !463, !28, !39, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !796, file: !119, line: 290, baseType: !117, size: 64, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !796, file: !119, line: 291, baseType: !117, size: 64, offset: 512)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !118, file: !119, line: 391, baseType: !823, size: 512)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !119, line: 309, size: 512, elements: !824)
!824 = !{!825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !823, file: !119, line: 310, baseType: !117, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !823, file: !119, line: 310, baseType: !42, size: 8, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !823, file: !119, line: 310, baseType: !42, size: 8, offset: 72)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !823, file: !119, line: 310, baseType: !128, size: 16, offset: 80)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !823, file: !119, line: 310, baseType: !42, size: 8, offset: 96)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !823, file: !119, line: 310, baseType: !42, size: 8, offset: 104)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !823, file: !119, line: 311, baseType: !42, size: 8, offset: 112)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !823, file: !119, line: 312, baseType: !42, size: 8, offset: 120)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !823, file: !119, line: 313, baseType: !39, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !823, file: !119, line: 314, baseType: !169, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !823, file: !119, line: 315, baseType: !201, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !823, file: !119, line: 316, baseType: !164, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !823, file: !119, line: 317, baseType: !164, size: 64, offset: 384)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !823, file: !119, line: 318, baseType: !28, size: 32, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !118, file: !119, line: 392, baseType: !840, size: 448)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !119, line: 342, size: 448, elements: !841)
!841 = !{!842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !840, file: !119, line: 343, baseType: !117, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !840, file: !119, line: 343, baseType: !42, size: 8, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !840, file: !119, line: 343, baseType: !42, size: 8, offset: 72)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !840, file: !119, line: 343, baseType: !128, size: 16, offset: 80)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !840, file: !119, line: 343, baseType: !42, size: 8, offset: 96)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !840, file: !119, line: 343, baseType: !169, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !840, file: !119, line: 344, baseType: !169, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !840, file: !119, line: 345, baseType: !39, size: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !840, file: !119, line: 346, baseType: !164, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !840, file: !119, line: 347, baseType: !28, size: 32, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !118, file: !119, line: 393, baseType: !853, size: 256)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !119, line: 352, size: 256, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !865}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !853, file: !119, line: 353, baseType: !117, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !853, file: !119, line: 353, baseType: !42, size: 8, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !853, file: !119, line: 353, baseType: !42, size: 8, offset: 72)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !853, file: !119, line: 353, baseType: !128, size: 16, offset: 80)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !119, line: 353, baseType: !42, size: 8, offset: 96)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !853, file: !119, line: 353, baseType: !861, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !33, line: 1064, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !463, !39}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !853, file: !119, line: 354, baseType: !39, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !118, file: !119, line: 394, baseType: !867, size: 192)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !119, line: 359, size: 192, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !867, file: !119, line: 360, baseType: !117, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !867, file: !119, line: 360, baseType: !42, size: 8, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !867, file: !119, line: 360, baseType: !42, size: 8, offset: 72)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !867, file: !119, line: 360, baseType: !128, size: 16, offset: 80)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !119, line: 360, baseType: !42, size: 8, offset: 96)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !867, file: !119, line: 360, baseType: !117, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !118, file: !119, line: 401, baseType: !170, size: 384)
!876 = !{!877, !878, !879, !880, !881, !882, !883}
!877 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !114, file: !3, line: 198, type: !117)
!878 = !DILocalVariable(name: "field_datum_byte_offset", arg: 2, scope: !114, file: !3, line: 199, type: !28)
!879 = !DILocalVariable(name: "value", arg: 3, scope: !114, file: !3, line: 199, type: !810)
!880 = !DILocalVariable(name: "function", arg: 4, scope: !114, file: !3, line: 199, type: !28)
!881 = !DILocalVariable(name: "status", scope: !114, file: !3, line: 201, type: !32)
!882 = !DILocalVariable(name: "rgn_desc", scope: !114, file: !3, line: 202, type: !117)
!883 = !DILocalVariable(name: "region_offset", scope: !114, file: !3, line: 203, type: !28)
!884 = !DILocation(line: 198, column: 50, scope: !114)
!885 = !DILocation(line: 199, column: 13, scope: !114)
!886 = !DILocation(line: 199, column: 43, scope: !114)
!887 = !DILocation(line: 199, column: 54, scope: !114)
!888 = !DILocation(line: 201, column: 2, scope: !114)
!889 = !DILocation(line: 201, column: 14, scope: !114)
!890 = !DILocation(line: 202, column: 2, scope: !114)
!891 = !DILocation(line: 202, column: 29, scope: !114)
!892 = !DILocation(line: 203, column: 2, scope: !114)
!893 = !DILocation(line: 203, column: 6, scope: !114)
!894 = !DILocation(line: 211, column: 32, scope: !114)
!895 = !DILocation(line: 211, column: 42, scope: !114)
!896 = !DILocation(line: 211, column: 11, scope: !114)
!897 = !DILocation(line: 211, column: 9, scope: !114)
!898 = !DILocation(line: 212, column: 6, scope: !899)
!899 = distinct !DILexicalBlock(scope: !114, file: !3, line: 212, column: 6)
!900 = !DILocation(line: 212, column: 6, scope: !114)
!901 = !DILocation(line: 213, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !3, line: 212, column: 28)
!903 = !DILocation(line: 223, column: 13, scope: !114)
!904 = !DILocation(line: 223, column: 36, scope: !114)
!905 = !DILocation(line: 223, column: 11, scope: !114)
!906 = !DILocation(line: 225, column: 6, scope: !114)
!907 = !DILocation(line: 225, column: 29, scope: !114)
!908 = !DILocation(line: 225, column: 48, scope: !114)
!909 = !DILocation(line: 225, column: 46, scope: !114)
!910 = !DILocation(line: 224, column: 16, scope: !114)
!911 = !DILocation(line: 227, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !114, file: !3, line: 227, column: 6)
!913 = !DILocation(line: 227, column: 16, scope: !912)
!914 = !DILocation(line: 227, column: 32, scope: !912)
!915 = !DILocation(line: 227, column: 6, scope: !114)
!916 = !DILocation(line: 229, column: 2, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !3, line: 227, column: 46)
!918 = !DILocation(line: 246, column: 42, scope: !114)
!919 = !DILocation(line: 246, column: 52, scope: !114)
!920 = !DILocation(line: 247, column: 7, scope: !114)
!921 = !DILocation(line: 247, column: 17, scope: !114)
!922 = !DILocation(line: 248, column: 7, scope: !114)
!923 = !DILocation(line: 251, column: 7, scope: !114)
!924 = !DILocation(line: 246, column: 11, scope: !114)
!925 = !DILocation(line: 246, column: 9, scope: !114)
!926 = !DILocation(line: 253, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !114, file: !3, line: 253, column: 6)
!928 = !DILocation(line: 253, column: 6, scope: !114)
!929 = !DILocation(line: 254, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 254, column: 7)
!931 = distinct !DILexicalBlock(scope: !927, file: !3, line: 253, column: 28)
!932 = !DILocation(line: 254, column: 14, scope: !930)
!933 = !DILocation(line: 254, column: 7, scope: !931)
!934 = !DILocation(line: 255, column: 4, scope: !935)
!935 = distinct !DILexicalBlock(scope: !930, file: !3, line: 254, column: 37)
!936 = !DILocation(line: 260, column: 3, scope: !935)
!937 = !DILocation(line: 260, column: 14, scope: !938)
!938 = distinct !DILexicalBlock(scope: !930, file: !3, line: 260, column: 14)
!939 = !DILocation(line: 260, column: 21, scope: !938)
!940 = !DILocation(line: 260, column: 14, scope: !930)
!941 = !DILocation(line: 261, column: 4, scope: !942)
!942 = distinct !DILexicalBlock(scope: !938, file: !3, line: 260, column: 38)
!943 = !DILocation(line: 266, column: 3, scope: !942)
!944 = !DILocation(line: 267, column: 2, scope: !931)
!945 = !DILocation(line: 269, column: 2, scope: !114)
!946 = !DILocation(line: 270, column: 1, scope: !114)
!947 = distinct !DISubprogram(name: "acpi_ex_setup_region", scope: !3, file: !3, line: 49, type: !948, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!32, !117, !28}
!950 = !{!951, !952, !953, !954, !955}
!951 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !947, file: !3, line: 49, type: !117)
!952 = !DILocalVariable(name: "field_datum_byte_offset", arg: 2, scope: !947, file: !3, line: 50, type: !28)
!953 = !DILocalVariable(name: "status", scope: !947, file: !3, line: 52, type: !32)
!954 = !DILocalVariable(name: "rgn_desc", scope: !947, file: !3, line: 53, type: !117)
!955 = !DILocalVariable(name: "space_id", scope: !947, file: !3, line: 54, type: !42)
!956 = !DILocation(line: 49, column: 49, scope: !947)
!957 = !DILocation(line: 50, column: 12, scope: !947)
!958 = !DILocation(line: 52, column: 2, scope: !947)
!959 = !DILocation(line: 52, column: 14, scope: !947)
!960 = !DILocation(line: 53, column: 2, scope: !947)
!961 = !DILocation(line: 53, column: 29, scope: !947)
!962 = !DILocation(line: 54, column: 2, scope: !947)
!963 = !DILocation(line: 54, column: 5, scope: !947)
!964 = !DILocation(line: 58, column: 13, scope: !947)
!965 = !DILocation(line: 58, column: 36, scope: !947)
!966 = !DILocation(line: 58, column: 11, scope: !947)
!967 = !DILocation(line: 62, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !947, file: !3, line: 62, column: 6)
!969 = !DILocation(line: 62, column: 23, scope: !968)
!970 = !DILocation(line: 62, column: 28, scope: !968)
!971 = !DILocation(line: 62, column: 6, scope: !947)
!972 = !DILocation(line: 63, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !968, file: !3, line: 62, column: 49)
!974 = !DILocation(line: 67, column: 3, scope: !973)
!975 = !DILocation(line: 70, column: 13, scope: !947)
!976 = !DILocation(line: 70, column: 30, scope: !947)
!977 = !DILocation(line: 70, column: 11, scope: !947)
!978 = !DILocation(line: 74, column: 30, scope: !979)
!979 = distinct !DILexicalBlock(scope: !947, file: !3, line: 74, column: 6)
!980 = !DILocation(line: 74, column: 7, scope: !979)
!981 = !DILocation(line: 74, column: 6, scope: !947)
!982 = !DILocation(line: 75, column: 3, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !3, line: 74, column: 41)
!984 = !DILocation(line: 78, column: 3, scope: !983)
!985 = !DILocation(line: 85, column: 8, scope: !986)
!986 = distinct !DILexicalBlock(scope: !947, file: !3, line: 85, column: 6)
!987 = !DILocation(line: 85, column: 25, scope: !986)
!988 = !DILocation(line: 85, column: 31, scope: !986)
!989 = !DILocation(line: 85, column: 6, scope: !947)
!990 = !DILocation(line: 86, column: 41, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !3, line: 85, column: 53)
!992 = !DILocation(line: 86, column: 12, scope: !991)
!993 = !DILocation(line: 86, column: 10, scope: !991)
!994 = !DILocation(line: 87, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !3, line: 87, column: 7)
!996 = !DILocation(line: 87, column: 7, scope: !991)
!997 = !DILocation(line: 88, column: 4, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 87, column: 29)
!999 = !DILocation(line: 90, column: 2, scope: !991)
!1000 = !DILocation(line: 96, column: 6, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !947, file: !3, line: 96, column: 6)
!1002 = !DILocation(line: 96, column: 15, scope: !1001)
!1003 = !DILocation(line: 96, column: 39, scope: !1001)
!1004 = !DILocation(line: 97, column: 6, scope: !1001)
!1005 = !DILocation(line: 97, column: 15, scope: !1001)
!1006 = !DILocation(line: 97, column: 39, scope: !1001)
!1007 = !DILocation(line: 98, column: 6, scope: !1001)
!1008 = !DILocation(line: 98, column: 15, scope: !1001)
!1009 = !DILocation(line: 96, column: 6, scope: !947)
!1010 = !DILocation(line: 102, column: 3, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 98, column: 39)
!1012 = !DILocation(line: 121, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !947, file: !3, line: 121, column: 6)
!1014 = !DILocation(line: 121, column: 23, scope: !1013)
!1015 = !DILocation(line: 122, column: 7, scope: !1013)
!1016 = !DILocation(line: 122, column: 30, scope: !1013)
!1017 = !DILocation(line: 122, column: 49, scope: !1013)
!1018 = !DILocation(line: 122, column: 47, scope: !1013)
!1019 = !DILocation(line: 123, column: 7, scope: !1013)
!1020 = !DILocation(line: 123, column: 30, scope: !1013)
!1021 = !DILocation(line: 122, column: 73, scope: !1013)
!1022 = !DILocation(line: 121, column: 30, scope: !1013)
!1023 = !DILocation(line: 121, column: 6, scope: !947)
!1024 = !DILocation(line: 124, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 124, column: 7)
!1026 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 123, column: 50)
!1027 = !DILocation(line: 124, column: 7, scope: !1026)
!1028 = !DILocation(line: 130, column: 8, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 130, column: 8)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 124, column: 42)
!1031 = !DILocation(line: 133, column: 20, scope: !1029)
!1032 = !DILocation(line: 134, column: 9, scope: !1029)
!1033 = !DILocation(line: 133, column: 9, scope: !1029)
!1034 = !DILocation(line: 135, column: 9, scope: !1029)
!1035 = !DILocation(line: 135, column: 32, scope: !1029)
!1036 = !DILocation(line: 134, column: 26, scope: !1029)
!1037 = !DILocation(line: 136, column: 9, scope: !1029)
!1038 = !DILocation(line: 135, column: 50, scope: !1029)
!1039 = !DILocation(line: 132, column: 27, scope: !1029)
!1040 = !DILocation(line: 130, column: 8, scope: !1030)
!1041 = !DILocation(line: 137, column: 5, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 136, column: 35)
!1043 = !DILocation(line: 139, column: 3, scope: !1030)
!1044 = !DILocation(line: 141, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 141, column: 7)
!1046 = !DILocation(line: 141, column: 24, scope: !1045)
!1047 = !DILocation(line: 142, column: 7, scope: !1045)
!1048 = !DILocation(line: 142, column: 30, scope: !1045)
!1049 = !DILocation(line: 141, column: 31, scope: !1045)
!1050 = !DILocation(line: 141, column: 7, scope: !1026)
!1051 = !DILocation(line: 148, column: 4, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 142, column: 49)
!1053 = !DILocation(line: 157, column: 3, scope: !1052)
!1054 = !DILocation(line: 163, column: 3, scope: !1026)
!1055 = !DILocation(line: 173, column: 3, scope: !1026)
!1056 = !DILocation(line: 176, column: 2, scope: !947)
!1057 = !DILocation(line: 177, column: 1, scope: !947)
!1058 = !DISubprogram(name: "acpi_ev_address_space_dispatch", scope: !1059, file: !1059, line: 176, type: !1060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!32, !117, !117, !28, !28, !28, !810}
!1062 = !DISubprogram(name: "acpi_error", scope: !1063, file: !1063, line: 901, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1063 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !1066, !28, !1066, null}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1067 = !DISubprogram(name: "acpi_ut_get_region_name", scope: !1068, file: !1068, line: 235, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1068 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!1066, !42}
!1071 = distinct !DISubprogram(name: "acpi_ex_write_with_update_rule", scope: !3, file: !3, line: 544, type: !1072, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!32, !117, !34, !34, !28}
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081}
!1075 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1071, file: !3, line: 544, type: !117)
!1076 = !DILocalVariable(name: "mask", arg: 2, scope: !1071, file: !3, line: 545, type: !34)
!1077 = !DILocalVariable(name: "field_value", arg: 3, scope: !1071, file: !3, line: 546, type: !34)
!1078 = !DILocalVariable(name: "field_datum_byte_offset", arg: 4, scope: !1071, file: !3, line: 546, type: !28)
!1079 = !DILocalVariable(name: "status", scope: !1071, file: !3, line: 548, type: !32)
!1080 = !DILocalVariable(name: "merged_value", scope: !1071, file: !3, line: 549, type: !34)
!1081 = !DILocalVariable(name: "current_value", scope: !1071, file: !3, line: 550, type: !34)
!1082 = !DILocation(line: 544, column: 59, scope: !1071)
!1083 = !DILocation(line: 545, column: 15, scope: !1071)
!1084 = !DILocation(line: 546, column: 15, scope: !1071)
!1085 = !DILocation(line: 546, column: 32, scope: !1071)
!1086 = !DILocation(line: 548, column: 2, scope: !1071)
!1087 = !DILocation(line: 548, column: 14, scope: !1071)
!1088 = !DILocation(line: 549, column: 2, scope: !1071)
!1089 = !DILocation(line: 549, column: 6, scope: !1071)
!1090 = !DILocation(line: 550, column: 2, scope: !1071)
!1091 = !DILocation(line: 550, column: 6, scope: !1071)
!1092 = !DILocation(line: 556, column: 17, scope: !1071)
!1093 = !DILocation(line: 556, column: 15, scope: !1071)
!1094 = !DILocation(line: 560, column: 6, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 560, column: 6)
!1096 = !DILocation(line: 560, column: 11, scope: !1095)
!1097 = !DILocation(line: 560, column: 6, scope: !1071)
!1098 = !DILocation(line: 564, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 560, column: 31)
!1100 = !DILocation(line: 565, column: 4, scope: !1099)
!1101 = !DILocation(line: 565, column: 16, scope: !1099)
!1102 = !DILocation(line: 564, column: 3, scope: !1099)
!1103 = !DILocation(line: 571, column: 10, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 571, column: 8)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 565, column: 46)
!1106 = !DILocation(line: 571, column: 9, scope: !1104)
!1107 = !DILocation(line: 572, column: 12, scope: !1104)
!1108 = !DILocation(line: 571, column: 44, scope: !1104)
!1109 = !DILocation(line: 571, column: 15, scope: !1104)
!1110 = !DILocation(line: 573, column: 30, scope: !1104)
!1111 = !DILocation(line: 571, column: 8, scope: !1105)
!1112 = !DILocation(line: 579, column: 32, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 573, column: 36)
!1114 = !DILocation(line: 580, column: 11, scope: !1113)
!1115 = !DILocation(line: 579, column: 9, scope: !1113)
!1116 = !DILocation(line: 578, column: 12, scope: !1113)
!1117 = !DILocation(line: 583, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 583, column: 9)
!1119 = !DILocation(line: 583, column: 9, scope: !1113)
!1120 = !DILocation(line: 584, column: 6, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 583, column: 31)
!1122 = !DILocation(line: 587, column: 22, scope: !1113)
!1123 = !DILocation(line: 587, column: 39, scope: !1113)
!1124 = !DILocation(line: 587, column: 38, scope: !1113)
!1125 = !DILocation(line: 587, column: 36, scope: !1113)
!1126 = !DILocation(line: 587, column: 18, scope: !1113)
!1127 = !DILocation(line: 588, column: 4, scope: !1113)
!1128 = !DILocation(line: 589, column: 4, scope: !1105)
!1129 = !DILocation(line: 595, column: 21, scope: !1105)
!1130 = !DILocation(line: 595, column: 20, scope: !1105)
!1131 = !DILocation(line: 595, column: 17, scope: !1105)
!1132 = !DILocation(line: 596, column: 4, scope: !1105)
!1133 = !DILocation(line: 602, column: 20, scope: !1105)
!1134 = !DILocation(line: 602, column: 17, scope: !1105)
!1135 = !DILocation(line: 603, column: 4, scope: !1105)
!1136 = !DILocation(line: 607, column: 4, scope: !1105)
!1137 = !DILocation(line: 611, column: 4, scope: !1105)
!1138 = !DILocation(line: 613, column: 2, scope: !1099)
!1139 = !DILocation(line: 627, column: 29, scope: !1071)
!1140 = !DILocation(line: 627, column: 39, scope: !1071)
!1141 = !DILocation(line: 627, column: 6, scope: !1071)
!1142 = !DILocation(line: 626, column: 9, scope: !1071)
!1143 = !DILocation(line: 630, column: 2, scope: !1071)
!1144 = !DILocation(line: 631, column: 1, scope: !1071)
!1145 = distinct !DISubprogram(name: "acpi_ex_field_datum_io", scope: !3, file: !3, line: 338, type: !115, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152}
!1147 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1145, file: !3, line: 338, type: !117)
!1148 = !DILocalVariable(name: "field_datum_byte_offset", arg: 2, scope: !1145, file: !3, line: 339, type: !28)
!1149 = !DILocalVariable(name: "value", arg: 3, scope: !1145, file: !3, line: 339, type: !810)
!1150 = !DILocalVariable(name: "read_write", arg: 4, scope: !1145, file: !3, line: 339, type: !28)
!1151 = !DILocalVariable(name: "status", scope: !1145, file: !3, line: 341, type: !32)
!1152 = !DILocalVariable(name: "local_value", scope: !1145, file: !3, line: 342, type: !34)
!1153 = !DILocation(line: 338, column: 51, scope: !1145)
!1154 = !DILocation(line: 339, column: 14, scope: !1145)
!1155 = !DILocation(line: 339, column: 44, scope: !1145)
!1156 = !DILocation(line: 339, column: 55, scope: !1145)
!1157 = !DILocation(line: 341, column: 2, scope: !1145)
!1158 = !DILocation(line: 341, column: 14, scope: !1145)
!1159 = !DILocation(line: 342, column: 2, scope: !1145)
!1160 = !DILocation(line: 342, column: 6, scope: !1145)
!1161 = !DILocation(line: 346, column: 6, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 346, column: 6)
!1163 = !DILocation(line: 346, column: 17, scope: !1162)
!1164 = !DILocation(line: 346, column: 6, scope: !1145)
!1165 = !DILocation(line: 347, column: 8, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 347, column: 7)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 346, column: 31)
!1168 = !DILocation(line: 347, column: 7, scope: !1167)
!1169 = !DILocation(line: 348, column: 16, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 347, column: 15)
!1171 = !DILocation(line: 351, column: 10, scope: !1170)
!1172 = !DILocation(line: 352, column: 3, scope: !1170)
!1173 = !DILocation(line: 356, column: 4, scope: !1167)
!1174 = !DILocation(line: 356, column: 10, scope: !1167)
!1175 = !DILocation(line: 357, column: 2, scope: !1167)
!1176 = !DILocation(line: 369, column: 10, scope: !1145)
!1177 = !DILocation(line: 369, column: 27, scope: !1145)
!1178 = !DILocation(line: 369, column: 2, scope: !1145)
!1179 = !DILocation(line: 375, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 375, column: 7)
!1181 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 369, column: 33)
!1182 = !DILocation(line: 375, column: 26, scope: !1180)
!1183 = !DILocation(line: 375, column: 32, scope: !1180)
!1184 = !DILocation(line: 375, column: 7, scope: !1181)
!1185 = !DILocation(line: 376, column: 48, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 375, column: 54)
!1187 = !DILocation(line: 376, column: 13, scope: !1186)
!1188 = !DILocation(line: 376, column: 11, scope: !1186)
!1189 = !DILocation(line: 377, column: 8, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 377, column: 8)
!1191 = !DILocation(line: 377, column: 8, scope: !1186)
!1192 = !DILocation(line: 378, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 377, column: 30)
!1194 = !DILocation(line: 380, column: 3, scope: !1186)
!1195 = !DILocation(line: 382, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 382, column: 7)
!1197 = !DILocation(line: 382, column: 18, scope: !1196)
!1198 = !DILocation(line: 382, column: 7, scope: !1181)
!1199 = !DILocation(line: 387, column: 11, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 382, column: 32)
!1201 = !DILocation(line: 388, column: 12, scope: !1200)
!1202 = !DILocation(line: 388, column: 35, scope: !1200)
!1203 = !DILocation(line: 389, column: 11, scope: !1200)
!1204 = !DILocation(line: 390, column: 11, scope: !1200)
!1205 = !DILocation(line: 390, column: 34, scope: !1200)
!1206 = !DILocation(line: 389, column: 19, scope: !1200)
!1207 = !DILocation(line: 391, column: 11, scope: !1200)
!1208 = !DILocation(line: 390, column: 51, scope: !1200)
!1209 = !DILocation(line: 392, column: 11, scope: !1200)
!1210 = !DILocation(line: 392, column: 34, scope: !1200)
!1211 = !DILocation(line: 387, column: 4, scope: !1200)
!1212 = !DILocation(line: 393, column: 3, scope: !1200)
!1213 = !DILocation(line: 398, column: 12, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 393, column: 10)
!1215 = !DILocation(line: 398, column: 35, scope: !1214)
!1216 = !DILocation(line: 399, column: 11, scope: !1214)
!1217 = !DILocation(line: 400, column: 11, scope: !1214)
!1218 = !DILocation(line: 400, column: 34, scope: !1214)
!1219 = !DILocation(line: 399, column: 19, scope: !1214)
!1220 = !DILocation(line: 401, column: 11, scope: !1214)
!1221 = !DILocation(line: 400, column: 51, scope: !1214)
!1222 = !DILocation(line: 401, column: 36, scope: !1214)
!1223 = !DILocation(line: 402, column: 11, scope: !1214)
!1224 = !DILocation(line: 402, column: 34, scope: !1214)
!1225 = !DILocation(line: 398, column: 4, scope: !1214)
!1226 = !DILocation(line: 405, column: 10, scope: !1181)
!1227 = !DILocation(line: 406, column: 3, scope: !1181)
!1228 = !DILocation(line: 413, column: 33, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 413, column: 7)
!1230 = !DILocation(line: 413, column: 54, scope: !1229)
!1231 = !DILocation(line: 414, column: 18, scope: !1229)
!1232 = !DILocation(line: 415, column: 12, scope: !1229)
!1233 = !DILocation(line: 414, column: 12, scope: !1229)
!1234 = !DILocation(line: 413, column: 7, scope: !1229)
!1235 = !DILocation(line: 413, column: 7, scope: !1181)
!1236 = !DILocation(line: 416, column: 4, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 415, column: 20)
!1238 = !DILocation(line: 424, column: 33, scope: !1181)
!1239 = !DILocation(line: 424, column: 54, scope: !1181)
!1240 = !DILocation(line: 425, column: 13, scope: !1181)
!1241 = !DILocation(line: 425, column: 34, scope: !1181)
!1242 = !DILocation(line: 424, column: 7, scope: !1181)
!1243 = !DILocation(line: 423, column: 10, scope: !1181)
!1244 = !DILocation(line: 428, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 428, column: 7)
!1246 = !DILocation(line: 428, column: 7, scope: !1181)
!1247 = !DILocation(line: 429, column: 4, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 428, column: 29)
!1249 = !DILocation(line: 445, column: 29, scope: !1181)
!1250 = !DILocation(line: 445, column: 39, scope: !1181)
!1251 = !DILocation(line: 446, column: 8, scope: !1181)
!1252 = !DILocation(line: 446, column: 15, scope: !1181)
!1253 = !DILocation(line: 445, column: 7, scope: !1181)
!1254 = !DILocation(line: 444, column: 10, scope: !1181)
!1255 = !DILocation(line: 447, column: 3, scope: !1181)
!1256 = !DILocation(line: 454, column: 33, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 454, column: 7)
!1258 = !DILocation(line: 454, column: 55, scope: !1257)
!1259 = !DILocation(line: 455, column: 18, scope: !1257)
!1260 = !DILocation(line: 456, column: 12, scope: !1257)
!1261 = !DILocation(line: 455, column: 12, scope: !1257)
!1262 = !DILocation(line: 454, column: 7, scope: !1257)
!1263 = !DILocation(line: 454, column: 7, scope: !1181)
!1264 = !DILocation(line: 457, column: 4, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 456, column: 20)
!1266 = !DILocation(line: 462, column: 30, scope: !1181)
!1267 = !DILocation(line: 462, column: 52, scope: !1181)
!1268 = !DILocation(line: 462, column: 27, scope: !1181)
!1269 = !DILocation(line: 469, column: 33, scope: !1181)
!1270 = !DILocation(line: 469, column: 55, scope: !1181)
!1271 = !DILocation(line: 469, column: 7, scope: !1181)
!1272 = !DILocation(line: 468, column: 10, scope: !1181)
!1273 = !DILocation(line: 472, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 472, column: 7)
!1275 = !DILocation(line: 472, column: 7, scope: !1181)
!1276 = !DILocation(line: 473, column: 4, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 472, column: 29)
!1278 = !DILocation(line: 476, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 476, column: 7)
!1280 = !DILocation(line: 476, column: 18, scope: !1279)
!1281 = !DILocation(line: 476, column: 7, scope: !1181)
!1282 = !DILocation(line: 484, column: 35, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 476, column: 32)
!1284 = !DILocation(line: 485, column: 14, scope: !1283)
!1285 = !DILocation(line: 485, column: 24, scope: !1283)
!1286 = !DILocation(line: 484, column: 8, scope: !1283)
!1287 = !DILocation(line: 483, column: 11, scope: !1283)
!1288 = !DILocation(line: 487, column: 3, scope: !1283)
!1289 = !DILocation(line: 495, column: 34, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 487, column: 10)
!1291 = !DILocation(line: 496, column: 13, scope: !1290)
!1292 = !DILocation(line: 496, column: 23, scope: !1290)
!1293 = !DILocation(line: 495, column: 8, scope: !1290)
!1294 = !DILocation(line: 494, column: 11, scope: !1290)
!1295 = !DILocation(line: 499, column: 3, scope: !1181)
!1296 = !DILocation(line: 503, column: 3, scope: !1181)
!1297 = !DILocation(line: 505, column: 10, scope: !1181)
!1298 = !DILocation(line: 506, column: 3, scope: !1181)
!1299 = !DILocation(line: 509, column: 6, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 509, column: 6)
!1301 = !DILocation(line: 509, column: 6, scope: !1145)
!1302 = !DILocation(line: 510, column: 7, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 510, column: 7)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 509, column: 28)
!1305 = !DILocation(line: 510, column: 18, scope: !1303)
!1306 = !DILocation(line: 510, column: 7, scope: !1304)
!1307 = !DILocation(line: 516, column: 3, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 510, column: 32)
!1309 = !DILocation(line: 523, column: 2, scope: !1304)
!1310 = !DILocation(line: 525, column: 2, scope: !1145)
!1311 = !DILocation(line: 526, column: 1, scope: !1145)
!1312 = distinct !DISubprogram(name: "acpi_ex_extract_from_field", scope: !3, file: !3, line: 648, type: !1313, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1315)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!32, !117, !39, !28}
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1316 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1312, file: !3, line: 648, type: !117)
!1317 = !DILocalVariable(name: "buffer", arg: 2, scope: !1312, file: !3, line: 649, type: !39)
!1318 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !1312, file: !3, line: 649, type: !28)
!1319 = !DILocalVariable(name: "status", scope: !1312, file: !3, line: 651, type: !32)
!1320 = !DILocalVariable(name: "raw_datum", scope: !1312, file: !3, line: 652, type: !34)
!1321 = !DILocalVariable(name: "merged_datum", scope: !1312, file: !3, line: 653, type: !34)
!1322 = !DILocalVariable(name: "field_offset", scope: !1312, file: !3, line: 654, type: !28)
!1323 = !DILocalVariable(name: "buffer_offset", scope: !1312, file: !3, line: 655, type: !28)
!1324 = !DILocalVariable(name: "buffer_tail_bits", scope: !1312, file: !3, line: 656, type: !28)
!1325 = !DILocalVariable(name: "datum_count", scope: !1312, file: !3, line: 657, type: !28)
!1326 = !DILocalVariable(name: "field_datum_count", scope: !1312, file: !3, line: 658, type: !28)
!1327 = !DILocalVariable(name: "access_bit_width", scope: !1312, file: !3, line: 659, type: !28)
!1328 = !DILocalVariable(name: "i", scope: !1312, file: !3, line: 660, type: !28)
!1329 = !DILocation(line: 648, column: 55, scope: !1312)
!1330 = !DILocation(line: 649, column: 13, scope: !1312)
!1331 = !DILocation(line: 649, column: 25, scope: !1312)
!1332 = !DILocation(line: 651, column: 2, scope: !1312)
!1333 = !DILocation(line: 651, column: 14, scope: !1312)
!1334 = !DILocation(line: 652, column: 2, scope: !1312)
!1335 = !DILocation(line: 652, column: 6, scope: !1312)
!1336 = !DILocation(line: 653, column: 2, scope: !1312)
!1337 = !DILocation(line: 653, column: 6, scope: !1312)
!1338 = !DILocation(line: 654, column: 2, scope: !1312)
!1339 = !DILocation(line: 654, column: 6, scope: !1312)
!1340 = !DILocation(line: 655, column: 2, scope: !1312)
!1341 = !DILocation(line: 655, column: 6, scope: !1312)
!1342 = !DILocation(line: 656, column: 2, scope: !1312)
!1343 = !DILocation(line: 656, column: 6, scope: !1312)
!1344 = !DILocation(line: 657, column: 2, scope: !1312)
!1345 = !DILocation(line: 657, column: 6, scope: !1312)
!1346 = !DILocation(line: 658, column: 2, scope: !1312)
!1347 = !DILocation(line: 658, column: 6, scope: !1312)
!1348 = !DILocation(line: 659, column: 2, scope: !1312)
!1349 = !DILocation(line: 659, column: 6, scope: !1312)
!1350 = !DILocation(line: 660, column: 2, scope: !1312)
!1351 = !DILocation(line: 660, column: 6, scope: !1312)
!1352 = !DILocation(line: 666, column: 6, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 666, column: 6)
!1354 = !DILocation(line: 667, column: 6, scope: !1353)
!1355 = !DILocation(line: 666, column: 20, scope: !1353)
!1356 = !DILocation(line: 666, column: 6, scope: !1312)
!1357 = !DILocation(line: 668, column: 3, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 667, column: 70)
!1359 = !DILocation(line: 672, column: 3, scope: !1358)
!1360 = !DILocation(line: 675, column: 9, scope: !1312)
!1361 = !DILocation(line: 675, column: 20, scope: !1312)
!1362 = !DILocation(line: 675, column: 2, scope: !1312)
!1363 = !DILocation(line: 676, column: 21, scope: !1312)
!1364 = !DILocation(line: 676, column: 19, scope: !1312)
!1365 = !DILocation(line: 680, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 680, column: 6)
!1367 = !DILocation(line: 680, column: 30, scope: !1366)
!1368 = !DILocation(line: 680, column: 53, scope: !1366)
!1369 = !DILocation(line: 680, column: 59, scope: !1366)
!1370 = !DILocation(line: 681, column: 7, scope: !1366)
!1371 = !DILocation(line: 681, column: 30, scope: !1366)
!1372 = !DILocation(line: 681, column: 44, scope: !1366)
!1373 = !DILocation(line: 681, column: 41, scope: !1366)
!1374 = !DILocation(line: 680, column: 6, scope: !1312)
!1375 = !DILocation(line: 682, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 682, column: 7)
!1377 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 681, column: 63)
!1378 = !DILocation(line: 682, column: 21, scope: !1376)
!1379 = !DILocation(line: 682, column: 7, scope: !1377)
!1380 = !DILocation(line: 684, column: 31, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 682, column: 37)
!1382 = !DILocation(line: 684, column: 44, scope: !1381)
!1383 = !DILocation(line: 684, column: 8, scope: !1381)
!1384 = !DILocation(line: 683, column: 11, scope: !1381)
!1385 = !DILocation(line: 686, column: 3, scope: !1381)
!1386 = !DILocation(line: 690, column: 31, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 686, column: 10)
!1388 = !DILocation(line: 690, column: 8, scope: !1387)
!1389 = !DILocation(line: 689, column: 11, scope: !1387)
!1390 = !DILocation(line: 692, column: 11, scope: !1387)
!1391 = !DILocation(line: 692, column: 31, scope: !1387)
!1392 = !DILocation(line: 692, column: 4, scope: !1387)
!1393 = !DILocation(line: 695, column: 3, scope: !1377)
!1394 = !DILocation(line: 702, column: 6, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 702, column: 6)
!1396 = !DILocation(line: 702, column: 29, scope: !1395)
!1397 = !DILocation(line: 702, column: 47, scope: !1395)
!1398 = !DILocation(line: 702, column: 6, scope: !1312)
!1399 = !DILocation(line: 703, column: 3, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 702, column: 62)
!1401 = !DILocation(line: 703, column: 26, scope: !1400)
!1402 = !DILocation(line: 703, column: 44, scope: !1400)
!1403 = !DILocation(line: 704, column: 20, scope: !1400)
!1404 = !DILocation(line: 705, column: 2, scope: !1400)
!1405 = !DILocation(line: 710, column: 6, scope: !1312)
!1406 = !DILocation(line: 709, column: 14, scope: !1312)
!1407 = !DILocation(line: 713, column: 22, scope: !1312)
!1408 = !DILocation(line: 713, column: 20, scope: !1312)
!1409 = !DILocation(line: 721, column: 29, scope: !1312)
!1410 = !DILocation(line: 721, column: 39, scope: !1312)
!1411 = !DILocation(line: 721, column: 6, scope: !1312)
!1412 = !DILocation(line: 720, column: 9, scope: !1312)
!1413 = !DILocation(line: 723, column: 6, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 723, column: 6)
!1415 = !DILocation(line: 723, column: 6, scope: !1312)
!1416 = !DILocation(line: 724, column: 3, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 723, column: 28)
!1418 = !DILocation(line: 727, column: 6, scope: !1312)
!1419 = !DILocation(line: 727, column: 19, scope: !1312)
!1420 = !DILocation(line: 727, column: 42, scope: !1312)
!1421 = !DILocation(line: 727, column: 16, scope: !1312)
!1422 = !DILocation(line: 726, column: 15, scope: !1312)
!1423 = !DILocation(line: 731, column: 9, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 731, column: 2)
!1425 = !DILocation(line: 731, column: 7, scope: !1424)
!1426 = !DILocation(line: 731, column: 14, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 731, column: 2)
!1428 = !DILocation(line: 731, column: 18, scope: !1427)
!1429 = !DILocation(line: 731, column: 16, scope: !1427)
!1430 = !DILocation(line: 731, column: 2, scope: !1424)
!1431 = !DILocation(line: 735, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 731, column: 42)
!1433 = !DILocation(line: 735, column: 42, scope: !1432)
!1434 = !DILocation(line: 735, column: 16, scope: !1432)
!1435 = !DILocation(line: 737, column: 30, scope: !1432)
!1436 = !DILocation(line: 737, column: 40, scope: !1432)
!1437 = !DILocation(line: 737, column: 7, scope: !1432)
!1438 = !DILocation(line: 736, column: 10, scope: !1432)
!1439 = !DILocation(line: 739, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 739, column: 7)
!1441 = !DILocation(line: 739, column: 7, scope: !1432)
!1442 = !DILocation(line: 740, column: 4, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 739, column: 29)
!1444 = !DILocation(line: 751, column: 7, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 751, column: 7)
!1446 = !DILocation(line: 752, column: 7, scope: !1445)
!1447 = !DILocation(line: 752, column: 30, scope: !1445)
!1448 = !DILocation(line: 751, column: 24, scope: !1445)
!1449 = !DILocation(line: 752, column: 53, scope: !1445)
!1450 = !DILocation(line: 751, column: 7, scope: !1432)
!1451 = !DILocation(line: 755, column: 8, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 753, column: 30)
!1453 = !DILocation(line: 755, column: 22, scope: !1452)
!1454 = !DILocation(line: 756, column: 8, scope: !1452)
!1455 = !DILocation(line: 757, column: 8, scope: !1452)
!1456 = !DILocation(line: 755, column: 39, scope: !1452)
!1457 = !DILocation(line: 755, column: 18, scope: !1452)
!1458 = !DILocation(line: 754, column: 17, scope: !1452)
!1459 = !DILocation(line: 758, column: 3, scope: !1452)
!1460 = !DILocation(line: 760, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 760, column: 7)
!1462 = !DILocation(line: 760, column: 12, scope: !1461)
!1463 = !DILocation(line: 760, column: 9, scope: !1461)
!1464 = !DILocation(line: 760, column: 7, scope: !1432)
!1465 = !DILocation(line: 761, column: 4, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 760, column: 25)
!1467 = !DILocation(line: 766, column: 19, scope: !1432)
!1468 = !DILocation(line: 766, column: 29, scope: !1432)
!1469 = !DILocation(line: 766, column: 27, scope: !1432)
!1470 = !DILocation(line: 767, column: 10, scope: !1432)
!1471 = !DILocation(line: 766, column: 3, scope: !1432)
!1472 = !DILocation(line: 770, column: 20, scope: !1432)
!1473 = !DILocation(line: 770, column: 43, scope: !1432)
!1474 = !DILocation(line: 770, column: 17, scope: !1432)
!1475 = !DILocation(line: 772, column: 7, scope: !1432)
!1476 = !DILocation(line: 772, column: 20, scope: !1432)
!1477 = !DILocation(line: 772, column: 43, scope: !1432)
!1478 = !DILocation(line: 772, column: 17, scope: !1432)
!1479 = !DILocation(line: 771, column: 16, scope: !1432)
!1480 = !DILocation(line: 773, column: 2, scope: !1432)
!1481 = !DILocation(line: 731, column: 38, scope: !1427)
!1482 = !DILocation(line: 731, column: 2, scope: !1427)
!1483 = distinct !{!1483, !1430, !1484, !1485, !1486}
!1484 = !DILocation(line: 773, column: 2, scope: !1424)
!1485 = !{!"llvm.loop.mustprogress"}
!1486 = !{!"llvm.loop.unroll.disable"}
!1487 = !DILocation(line: 777, column: 21, scope: !1312)
!1488 = !DILocation(line: 777, column: 44, scope: !1312)
!1489 = !DILocation(line: 777, column: 57, scope: !1312)
!1490 = !DILocation(line: 777, column: 55, scope: !1312)
!1491 = !DILocation(line: 777, column: 19, scope: !1312)
!1492 = !DILocation(line: 778, column: 6, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 778, column: 6)
!1494 = !DILocation(line: 778, column: 6, scope: !1312)
!1495 = !DILocation(line: 779, column: 19, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 778, column: 24)
!1497 = !DILocation(line: 779, column: 16, scope: !1496)
!1498 = !DILocation(line: 780, column: 2, scope: !1496)
!1499 = !DILocation(line: 784, column: 18, scope: !1312)
!1500 = !DILocation(line: 784, column: 28, scope: !1312)
!1501 = !DILocation(line: 784, column: 26, scope: !1312)
!1502 = !DILocation(line: 785, column: 9, scope: !1312)
!1503 = !DILocation(line: 784, column: 2, scope: !1312)
!1504 = !DILocation(line: 788, column: 2, scope: !1312)
!1505 = !DILocation(line: 789, column: 1, scope: !1312)
!1506 = distinct !DISubprogram(name: "acpi_ex_insert_into_field", scope: !3, file: !3, line: 806, type: !1313, scopeLine: 808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525}
!1508 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1506, file: !3, line: 806, type: !117)
!1509 = !DILocalVariable(name: "buffer", arg: 2, scope: !1506, file: !3, line: 807, type: !39)
!1510 = !DILocalVariable(name: "buffer_length", arg: 3, scope: !1506, file: !3, line: 807, type: !28)
!1511 = !DILocalVariable(name: "new_buffer", scope: !1506, file: !3, line: 809, type: !39)
!1512 = !DILocalVariable(name: "status", scope: !1506, file: !3, line: 810, type: !32)
!1513 = !DILocalVariable(name: "mask", scope: !1506, file: !3, line: 811, type: !34)
!1514 = !DILocalVariable(name: "width_mask", scope: !1506, file: !3, line: 812, type: !34)
!1515 = !DILocalVariable(name: "merged_datum", scope: !1506, file: !3, line: 813, type: !34)
!1516 = !DILocalVariable(name: "raw_datum", scope: !1506, file: !3, line: 814, type: !34)
!1517 = !DILocalVariable(name: "field_offset", scope: !1506, file: !3, line: 815, type: !28)
!1518 = !DILocalVariable(name: "buffer_offset", scope: !1506, file: !3, line: 816, type: !28)
!1519 = !DILocalVariable(name: "buffer_tail_bits", scope: !1506, file: !3, line: 817, type: !28)
!1520 = !DILocalVariable(name: "datum_count", scope: !1506, file: !3, line: 818, type: !28)
!1521 = !DILocalVariable(name: "field_datum_count", scope: !1506, file: !3, line: 819, type: !28)
!1522 = !DILocalVariable(name: "access_bit_width", scope: !1506, file: !3, line: 820, type: !28)
!1523 = !DILocalVariable(name: "required_length", scope: !1506, file: !3, line: 821, type: !28)
!1524 = !DILocalVariable(name: "i", scope: !1506, file: !3, line: 822, type: !28)
!1525 = !DILabel(scope: !1506, name: "exit", file: !3, line: 960)
!1526 = !DILocation(line: 806, column: 54, scope: !1506)
!1527 = !DILocation(line: 807, column: 12, scope: !1506)
!1528 = !DILocation(line: 807, column: 24, scope: !1506)
!1529 = !DILocation(line: 809, column: 2, scope: !1506)
!1530 = !DILocation(line: 809, column: 8, scope: !1506)
!1531 = !DILocation(line: 810, column: 2, scope: !1506)
!1532 = !DILocation(line: 810, column: 14, scope: !1506)
!1533 = !DILocation(line: 811, column: 2, scope: !1506)
!1534 = !DILocation(line: 811, column: 6, scope: !1506)
!1535 = !DILocation(line: 812, column: 2, scope: !1506)
!1536 = !DILocation(line: 812, column: 6, scope: !1506)
!1537 = !DILocation(line: 813, column: 2, scope: !1506)
!1538 = !DILocation(line: 813, column: 6, scope: !1506)
!1539 = !DILocation(line: 814, column: 2, scope: !1506)
!1540 = !DILocation(line: 814, column: 6, scope: !1506)
!1541 = !DILocation(line: 815, column: 2, scope: !1506)
!1542 = !DILocation(line: 815, column: 6, scope: !1506)
!1543 = !DILocation(line: 816, column: 2, scope: !1506)
!1544 = !DILocation(line: 816, column: 6, scope: !1506)
!1545 = !DILocation(line: 817, column: 2, scope: !1506)
!1546 = !DILocation(line: 817, column: 6, scope: !1506)
!1547 = !DILocation(line: 818, column: 2, scope: !1506)
!1548 = !DILocation(line: 818, column: 6, scope: !1506)
!1549 = !DILocation(line: 819, column: 2, scope: !1506)
!1550 = !DILocation(line: 819, column: 6, scope: !1506)
!1551 = !DILocation(line: 820, column: 2, scope: !1506)
!1552 = !DILocation(line: 820, column: 6, scope: !1506)
!1553 = !DILocation(line: 821, column: 2, scope: !1506)
!1554 = !DILocation(line: 821, column: 6, scope: !1506)
!1555 = !DILocation(line: 822, column: 2, scope: !1506)
!1556 = !DILocation(line: 822, column: 6, scope: !1506)
!1557 = !DILocation(line: 828, column: 13, scope: !1506)
!1558 = !DILocation(line: 830, column: 6, scope: !1506)
!1559 = !DILocation(line: 829, column: 18, scope: !1506)
!1560 = !DILocation(line: 838, column: 6, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 838, column: 6)
!1562 = !DILocation(line: 838, column: 22, scope: !1561)
!1563 = !DILocation(line: 838, column: 20, scope: !1561)
!1564 = !DILocation(line: 838, column: 6, scope: !1506)
!1565 = !DILocation(line: 842, column: 16, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 838, column: 39)
!1567 = !DILocation(line: 842, column: 14, scope: !1566)
!1568 = !DILocation(line: 843, column: 8, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !3, line: 843, column: 7)
!1570 = !DILocation(line: 843, column: 7, scope: !1566)
!1571 = !DILocation(line: 844, column: 4, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 843, column: 20)
!1573 = !DILocation(line: 852, column: 18, scope: !1566)
!1574 = !DILocation(line: 852, column: 38, scope: !1566)
!1575 = !DILocation(line: 852, column: 46, scope: !1566)
!1576 = !DILocation(line: 852, column: 3, scope: !1566)
!1577 = !DILocation(line: 853, column: 12, scope: !1566)
!1578 = !DILocation(line: 853, column: 10, scope: !1566)
!1579 = !DILocation(line: 854, column: 19, scope: !1566)
!1580 = !DILocation(line: 854, column: 17, scope: !1566)
!1581 = !DILocation(line: 855, column: 2, scope: !1566)
!1582 = !DILocation(line: 860, column: 6, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 860, column: 6)
!1584 = !DILocation(line: 860, column: 29, scope: !1583)
!1585 = !DILocation(line: 860, column: 47, scope: !1583)
!1586 = !DILocation(line: 860, column: 6, scope: !1506)
!1587 = !DILocation(line: 861, column: 3, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 860, column: 62)
!1589 = !DILocation(line: 861, column: 26, scope: !1588)
!1590 = !DILocation(line: 861, column: 44, scope: !1588)
!1591 = !DILocation(line: 862, column: 2, scope: !1588)
!1592 = !DILocation(line: 864, column: 21, scope: !1506)
!1593 = !DILocation(line: 864, column: 19, scope: !1506)
!1594 = !DILocation(line: 868, column: 15, scope: !1506)
!1595 = !DILocation(line: 868, column: 13, scope: !1506)
!1596 = !DILocation(line: 869, column: 9, scope: !1506)
!1597 = !DILocation(line: 870, column: 6, scope: !1506)
!1598 = !DILocation(line: 869, column: 20, scope: !1506)
!1599 = !DILocation(line: 869, column: 7, scope: !1506)
!1600 = !DILocation(line: 874, column: 16, scope: !1506)
!1601 = !DILocation(line: 874, column: 14, scope: !1506)
!1602 = !DILocation(line: 877, column: 22, scope: !1506)
!1603 = !DILocation(line: 877, column: 20, scope: !1506)
!1604 = !DILocation(line: 884, column: 21, scope: !1506)
!1605 = !DILocation(line: 885, column: 9, scope: !1506)
!1606 = !DILocation(line: 884, column: 2, scope: !1506)
!1607 = !DILocation(line: 889, column: 6, scope: !1506)
!1608 = !DILocation(line: 889, column: 19, scope: !1506)
!1609 = !DILocation(line: 889, column: 42, scope: !1506)
!1610 = !DILocation(line: 889, column: 16, scope: !1506)
!1611 = !DILocation(line: 888, column: 15, scope: !1506)
!1612 = !DILocation(line: 893, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 893, column: 2)
!1614 = !DILocation(line: 893, column: 7, scope: !1613)
!1615 = !DILocation(line: 893, column: 14, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 893, column: 2)
!1617 = !DILocation(line: 893, column: 18, scope: !1616)
!1618 = !DILocation(line: 893, column: 16, scope: !1616)
!1619 = !DILocation(line: 893, column: 2, scope: !1613)
!1620 = !DILocation(line: 897, column: 19, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 893, column: 42)
!1622 = !DILocation(line: 897, column: 16, scope: !1621)
!1623 = !DILocation(line: 899, column: 38, scope: !1621)
!1624 = !DILocation(line: 899, column: 48, scope: !1621)
!1625 = !DILocation(line: 899, column: 54, scope: !1621)
!1626 = !DILocation(line: 900, column: 10, scope: !1621)
!1627 = !DILocation(line: 899, column: 7, scope: !1621)
!1628 = !DILocation(line: 898, column: 10, scope: !1621)
!1629 = !DILocation(line: 901, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 901, column: 7)
!1631 = !DILocation(line: 901, column: 7, scope: !1621)
!1632 = !DILocation(line: 902, column: 4, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 901, column: 29)
!1634 = !DILocation(line: 905, column: 19, scope: !1621)
!1635 = !DILocation(line: 905, column: 42, scope: !1621)
!1636 = !DILocation(line: 905, column: 16, scope: !1621)
!1637 = !DILocation(line: 916, column: 8, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 916, column: 7)
!1639 = !DILocation(line: 917, column: 8, scope: !1638)
!1640 = !DILocation(line: 917, column: 31, scope: !1638)
!1641 = !DILocation(line: 916, column: 25, scope: !1638)
!1642 = !DILocation(line: 917, column: 55, scope: !1638)
!1643 = !DILocation(line: 916, column: 7, scope: !1621)
!1644 = !DILocation(line: 920, column: 8, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 918, column: 30)
!1646 = !DILocation(line: 920, column: 22, scope: !1645)
!1647 = !DILocation(line: 921, column: 8, scope: !1645)
!1648 = !DILocation(line: 922, column: 8, scope: !1645)
!1649 = !DILocation(line: 920, column: 39, scope: !1645)
!1650 = !DILocation(line: 920, column: 18, scope: !1645)
!1651 = !DILocation(line: 919, column: 17, scope: !1645)
!1652 = !DILocation(line: 923, column: 3, scope: !1645)
!1653 = !DILocation(line: 924, column: 17, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 923, column: 10)
!1655 = !DILocation(line: 927, column: 10, scope: !1621)
!1656 = !DILocation(line: 927, column: 8, scope: !1621)
!1657 = !DILocation(line: 929, column: 7, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 929, column: 7)
!1659 = !DILocation(line: 929, column: 12, scope: !1658)
!1660 = !DILocation(line: 929, column: 9, scope: !1658)
!1661 = !DILocation(line: 929, column: 7, scope: !1621)
!1662 = !DILocation(line: 930, column: 4, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 929, column: 25)
!1664 = !DILocation(line: 935, column: 20, scope: !1621)
!1665 = !DILocation(line: 935, column: 43, scope: !1621)
!1666 = !DILocation(line: 935, column: 17, scope: !1621)
!1667 = !DILocation(line: 936, column: 31, scope: !1621)
!1668 = !DILocation(line: 936, column: 41, scope: !1621)
!1669 = !DILocation(line: 936, column: 39, scope: !1621)
!1670 = !DILocation(line: 937, column: 10, scope: !1621)
!1671 = !DILocation(line: 936, column: 3, scope: !1621)
!1672 = !DILocation(line: 941, column: 7, scope: !1621)
!1673 = !DILocation(line: 941, column: 20, scope: !1621)
!1674 = !DILocation(line: 941, column: 43, scope: !1621)
!1675 = !DILocation(line: 941, column: 17, scope: !1621)
!1676 = !DILocation(line: 940, column: 16, scope: !1621)
!1677 = !DILocation(line: 942, column: 2, scope: !1621)
!1678 = !DILocation(line: 893, column: 38, scope: !1616)
!1679 = !DILocation(line: 893, column: 2, scope: !1616)
!1680 = distinct !{!1680, !1619, !1681, !1485, !1486}
!1681 = !DILocation(line: 942, column: 2, scope: !1613)
!1682 = !DILocation(line: 946, column: 22, scope: !1506)
!1683 = !DILocation(line: 946, column: 45, scope: !1506)
!1684 = !DILocation(line: 947, column: 8, scope: !1506)
!1685 = !DILocation(line: 947, column: 31, scope: !1506)
!1686 = !DILocation(line: 946, column: 56, scope: !1506)
!1687 = !DILocation(line: 948, column: 6, scope: !1506)
!1688 = !DILocation(line: 947, column: 55, scope: !1506)
!1689 = !DILocation(line: 946, column: 19, scope: !1506)
!1690 = !DILocation(line: 949, column: 6, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 949, column: 6)
!1692 = !DILocation(line: 949, column: 6, scope: !1506)
!1693 = !DILocation(line: 950, column: 11, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 949, column: 24)
!1695 = !DILocation(line: 950, column: 8, scope: !1694)
!1696 = !DILocation(line: 951, column: 2, scope: !1694)
!1697 = !DILocation(line: 955, column: 18, scope: !1506)
!1698 = !DILocation(line: 955, column: 15, scope: !1506)
!1699 = !DILocation(line: 957, column: 37, scope: !1506)
!1700 = !DILocation(line: 957, column: 47, scope: !1506)
!1701 = !DILocation(line: 957, column: 53, scope: !1506)
!1702 = !DILocation(line: 958, column: 9, scope: !1506)
!1703 = !DILocation(line: 957, column: 6, scope: !1506)
!1704 = !DILocation(line: 956, column: 9, scope: !1506)
!1705 = !DILocation(line: 956, column: 2, scope: !1506)
!1706 = !DILocation(line: 960, column: 1, scope: !1506)
!1707 = !DILocation(line: 963, column: 6, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 963, column: 6)
!1709 = !DILocation(line: 963, column: 6, scope: !1506)
!1710 = !DILocation(line: 964, column: 3, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 963, column: 18)
!1712 = !DILocation(line: 965, column: 2, scope: !1711)
!1713 = !DILocation(line: 966, column: 2, scope: !1506)
!1714 = !DILocation(line: 967, column: 1, scope: !1506)
!1715 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1716, file: !1716, line: 55, type: !1717, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1719)
!1716 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!39, !40}
!1719 = !{!1720, !1721, !1723, !1726, !1727, !1730}
!1720 = !DILocalVariable(name: "size", arg: 1, scope: !1715, file: !1716, line: 55, type: !40)
!1721 = !DILocalVariable(name: "_flags", scope: !1722, file: !1716, line: 57, type: !47)
!1722 = distinct !DILexicalBlock(scope: !1715, file: !1716, line: 57, column: 23)
!1723 = !DILocalVariable(name: "__dummy", scope: !1724, file: !1716, line: 57, type: !47)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !1716, line: 57, column: 23)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !1716, line: 57, column: 23)
!1726 = !DILocalVariable(name: "__dummy2", scope: !1724, file: !1716, line: 57, type: !47)
!1727 = !DILocalVariable(name: "__dummy", scope: !1728, file: !1716, line: 57, type: !47)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !1716, line: 57, column: 23)
!1729 = distinct !DILexicalBlock(scope: !1722, file: !1716, line: 57, column: 23)
!1730 = !DILocalVariable(name: "__dummy2", scope: !1728, file: !1716, line: 57, type: !47)
!1731 = !DILocation(line: 55, column: 55, scope: !1715)
!1732 = !DILocation(line: 57, column: 17, scope: !1715)
!1733 = !DILocation(line: 57, column: 23, scope: !1722)
!1734 = !DILocation(line: 57, column: 23, scope: !1724)
!1735 = !DILocation(line: 57, column: 23, scope: !1725)
!1736 = !DILocation(line: 57, column: 23, scope: !1728)
!1737 = !DILocation(line: 57, column: 23, scope: !1729)
!1738 = !DILocation(line: 57, column: 23, scope: !1715)
!1739 = !DILocation(line: 57, column: 9, scope: !1715)
!1740 = !DILocation(line: 57, column: 2, scope: !1715)
!1741 = distinct !DISubprogram(name: "acpi_os_free", scope: !1716, file: !1716, line: 60, type: !1742, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !39}
!1744 = !{!1745}
!1745 = !DILocalVariable(name: "memory", arg: 1, scope: !1741, file: !1716, line: 60, type: !39)
!1746 = !DILocation(line: 60, column: 39, scope: !1741)
!1747 = !DILocation(line: 62, column: 8, scope: !1741)
!1748 = !DILocation(line: 62, column: 2, scope: !1741)
!1749 = !DILocation(line: 63, column: 1, scope: !1741)
!1750 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !1068, file: !1068, line: 233, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!1066, !117}
!1753 = !DISubprogram(name: "acpi_is_valid_space_id", scope: !1754, file: !1754, line: 480, type: !1755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1754 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!42, !42}
!1757 = !DISubprogram(name: "acpi_ds_get_region_arguments", scope: !1758, file: !1758, line: 25, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1758 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!32, !117}
!1761 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1068, file: !1068, line: 227, type: !1762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1066, !39}
!1764 = !DISubprogram(name: "acpi_ds_get_buffer_field_arguments", scope: !1758, file: !1758, line: 20, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1765 = distinct !DISubprogram(name: "acpi_ex_register_overflow", scope: !3, file: !3, line: 290, type: !1766, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!42, !117, !34}
!1768 = !{!1769, !1770}
!1769 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1765, file: !3, line: 290, type: !117)
!1770 = !DILocalVariable(name: "value", arg: 2, scope: !1765, file: !3, line: 290, type: !34)
!1771 = !DILocation(line: 290, column: 54, scope: !1765)
!1772 = !DILocation(line: 290, column: 68, scope: !1765)
!1773 = !DILocation(line: 293, column: 6, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 293, column: 6)
!1775 = !DILocation(line: 293, column: 29, scope: !1774)
!1776 = !DILocation(line: 293, column: 40, scope: !1774)
!1777 = !DILocation(line: 293, column: 6, scope: !1765)
!1778 = !DILocation(line: 298, column: 3, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 293, column: 66)
!1780 = !DILocation(line: 301, column: 6, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 301, column: 6)
!1782 = !DILocation(line: 301, column: 27, scope: !1781)
!1783 = !DILocation(line: 301, column: 50, scope: !1781)
!1784 = !DILocation(line: 301, column: 24, scope: !1781)
!1785 = !DILocation(line: 301, column: 12, scope: !1781)
!1786 = !DILocation(line: 301, column: 6, scope: !1765)
!1787 = !DILocation(line: 306, column: 3, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !3, line: 301, column: 63)
!1789 = !DILocation(line: 311, column: 3, scope: !1788)
!1790 = !DILocation(line: 316, column: 2, scope: !1765)
!1791 = !DILocation(line: 317, column: 1, scope: !1765)
!1792 = distinct !DISubprogram(name: "kzalloc", scope: !18, file: !18, line: 719, type: !1793, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1799)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!39, !1795, !45}
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 61, baseType: !1796)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1797, line: 72, baseType: !1798)
!1797 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1797, line: 16, baseType: !47)
!1799 = !{!1800, !1801}
!1800 = !DILocalVariable(name: "size", arg: 1, scope: !1792, file: !18, line: 719, type: !1795)
!1801 = !DILocalVariable(name: "flags", arg: 2, scope: !1792, file: !18, line: 719, type: !45)
!1802 = !DILocation(line: 719, column: 52, scope: !1792)
!1803 = !DILocation(line: 719, column: 64, scope: !1792)
!1804 = !DILocation(line: 721, column: 17, scope: !1792)
!1805 = !DILocation(line: 721, column: 23, scope: !1792)
!1806 = !DILocation(line: 721, column: 29, scope: !1792)
!1807 = !DILocation(line: 721, column: 9, scope: !1792)
!1808 = !DILocation(line: 721, column: 2, scope: !1792)
!1809 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1810, file: !1810, line: 65, type: !1811, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1810 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!47}
!1813 = !DILocation(line: 67, column: 9, scope: !1809)
!1814 = !DILocation(line: 67, column: 2, scope: !1809)
!1815 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1810, file: !1810, line: 120, type: !1816, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1819)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1818, !47}
!1818 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1819 = !{!1820}
!1820 = !DILocalVariable(name: "flags", arg: 1, scope: !1815, file: !1810, line: 120, type: !47)
!1821 = !DILocation(line: 120, column: 67, scope: !1815)
!1822 = !DILocation(line: 122, column: 11, scope: !1815)
!1823 = !DILocation(line: 122, column: 17, scope: !1815)
!1824 = !DILocation(line: 122, column: 9, scope: !1815)
!1825 = !DILocation(line: 122, column: 2, scope: !1815)
!1826 = distinct !DISubprogram(name: "kmalloc", scope: !18, file: !18, line: 591, type: !1793, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DILocalVariable(name: "size", arg: 1, scope: !1826, file: !18, line: 591, type: !1795)
!1829 = !DILocalVariable(name: "flags", arg: 2, scope: !1826, file: !18, line: 591, type: !45)
!1830 = !DILocalVariable(name: "index", scope: !1831, file: !18, line: 594, type: !7)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !18, line: 593, column: 42)
!1832 = distinct !DILexicalBlock(scope: !1826, file: !18, line: 593, column: 6)
!1833 = !DILocation(line: 591, column: 61, scope: !1826)
!1834 = !DILocation(line: 591, column: 73, scope: !1826)
!1835 = !DILocation(line: 593, column: 27, scope: !1832)
!1836 = !DILocation(line: 593, column: 6, scope: !1832)
!1837 = !DILocation(line: 593, column: 33, scope: !1832)
!1838 = !DILocation(line: 593, column: 36, scope: !1832)
!1839 = !DILocation(line: 593, column: 6, scope: !1826)
!1840 = !DILocation(line: 594, column: 3, scope: !1831)
!1841 = !DILocation(line: 594, column: 16, scope: !1831)
!1842 = !DILocation(line: 596, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1831, file: !18, line: 596, column: 7)
!1844 = !DILocation(line: 596, column: 12, scope: !1843)
!1845 = !DILocation(line: 596, column: 7, scope: !1831)
!1846 = !DILocation(line: 597, column: 25, scope: !1843)
!1847 = !DILocation(line: 597, column: 31, scope: !1843)
!1848 = !DILocation(line: 597, column: 11, scope: !1843)
!1849 = !DILocation(line: 597, column: 4, scope: !1843)
!1850 = !DILocation(line: 599, column: 11, scope: !1831)
!1851 = !DILocation(line: 599, column: 9, scope: !1831)
!1852 = !DILocation(line: 601, column: 33, scope: !1831)
!1853 = !DILocation(line: 601, column: 40, scope: !1831)
!1854 = !DILocation(line: 601, column: 20, scope: !1831)
!1855 = !DILocation(line: 601, column: 5, scope: !1831)
!1856 = !DILocation(line: 601, column: 51, scope: !1831)
!1857 = !DILocation(line: 602, column: 5, scope: !1831)
!1858 = !DILocation(line: 602, column: 12, scope: !1831)
!1859 = !DILocation(line: 600, column: 10, scope: !1831)
!1860 = !DILocation(line: 600, column: 3, scope: !1831)
!1861 = !DILocation(line: 603, column: 2, scope: !1832)
!1862 = !DILocation(line: 604, column: 19, scope: !1826)
!1863 = !DILocation(line: 604, column: 25, scope: !1826)
!1864 = !DILocation(line: 604, column: 9, scope: !1826)
!1865 = !DILocation(line: 604, column: 2, scope: !1826)
!1866 = !DILocation(line: 605, column: 1, scope: !1826)
!1867 = !DISubprogram(name: "kmalloc_large", scope: !18, file: !18, line: 531, type: !1793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1868 = distinct !DISubprogram(name: "__kmalloc_index", scope: !18, file: !18, line: 444, type: !1869, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1873)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!7, !1795, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !1872)
!1872 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1873 = !{!1874, !1875}
!1874 = !DILocalVariable(name: "size", arg: 1, scope: !1868, file: !18, line: 444, type: !1795)
!1875 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1868, file: !18, line: 445, type: !1871)
!1876 = !DILocation(line: 444, column: 60, scope: !1868)
!1877 = !DILocation(line: 445, column: 16, scope: !1868)
!1878 = !DILocation(line: 447, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 447, column: 6)
!1880 = !DILocation(line: 447, column: 6, scope: !1868)
!1881 = !DILocation(line: 448, column: 3, scope: !1879)
!1882 = !DILocation(line: 450, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 450, column: 6)
!1884 = !DILocation(line: 450, column: 11, scope: !1883)
!1885 = !DILocation(line: 450, column: 6, scope: !1868)
!1886 = !DILocation(line: 451, column: 3, scope: !1883)
!1887 = !DILocation(line: 453, column: 32, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 453, column: 6)
!1889 = !DILocation(line: 453, column: 37, scope: !1888)
!1890 = !DILocation(line: 453, column: 42, scope: !1888)
!1891 = !DILocation(line: 453, column: 45, scope: !1888)
!1892 = !DILocation(line: 453, column: 50, scope: !1888)
!1893 = !DILocation(line: 453, column: 6, scope: !1868)
!1894 = !DILocation(line: 454, column: 3, scope: !1888)
!1895 = !DILocation(line: 455, column: 32, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 455, column: 6)
!1897 = !DILocation(line: 455, column: 37, scope: !1896)
!1898 = !DILocation(line: 455, column: 43, scope: !1896)
!1899 = !DILocation(line: 455, column: 46, scope: !1896)
!1900 = !DILocation(line: 455, column: 51, scope: !1896)
!1901 = !DILocation(line: 455, column: 6, scope: !1868)
!1902 = !DILocation(line: 456, column: 3, scope: !1896)
!1903 = !DILocation(line: 457, column: 6, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 457, column: 6)
!1905 = !DILocation(line: 457, column: 11, scope: !1904)
!1906 = !DILocation(line: 457, column: 6, scope: !1868)
!1907 = !DILocation(line: 457, column: 26, scope: !1904)
!1908 = !DILocation(line: 458, column: 6, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 458, column: 6)
!1910 = !DILocation(line: 458, column: 11, scope: !1909)
!1911 = !DILocation(line: 458, column: 6, scope: !1868)
!1912 = !DILocation(line: 458, column: 26, scope: !1909)
!1913 = !DILocation(line: 459, column: 6, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 459, column: 6)
!1915 = !DILocation(line: 459, column: 11, scope: !1914)
!1916 = !DILocation(line: 459, column: 6, scope: !1868)
!1917 = !DILocation(line: 459, column: 26, scope: !1914)
!1918 = !DILocation(line: 460, column: 6, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 460, column: 6)
!1920 = !DILocation(line: 460, column: 11, scope: !1919)
!1921 = !DILocation(line: 460, column: 6, scope: !1868)
!1922 = !DILocation(line: 460, column: 26, scope: !1919)
!1923 = !DILocation(line: 461, column: 6, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 461, column: 6)
!1925 = !DILocation(line: 461, column: 11, scope: !1924)
!1926 = !DILocation(line: 461, column: 6, scope: !1868)
!1927 = !DILocation(line: 461, column: 26, scope: !1924)
!1928 = !DILocation(line: 462, column: 6, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 462, column: 6)
!1930 = !DILocation(line: 462, column: 11, scope: !1929)
!1931 = !DILocation(line: 462, column: 6, scope: !1868)
!1932 = !DILocation(line: 462, column: 26, scope: !1929)
!1933 = !DILocation(line: 463, column: 6, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 463, column: 6)
!1935 = !DILocation(line: 463, column: 11, scope: !1934)
!1936 = !DILocation(line: 463, column: 6, scope: !1868)
!1937 = !DILocation(line: 463, column: 26, scope: !1934)
!1938 = !DILocation(line: 464, column: 6, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 464, column: 6)
!1940 = !DILocation(line: 464, column: 11, scope: !1939)
!1941 = !DILocation(line: 464, column: 6, scope: !1868)
!1942 = !DILocation(line: 464, column: 26, scope: !1939)
!1943 = !DILocation(line: 465, column: 6, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 465, column: 6)
!1945 = !DILocation(line: 465, column: 11, scope: !1944)
!1946 = !DILocation(line: 465, column: 6, scope: !1868)
!1947 = !DILocation(line: 465, column: 26, scope: !1944)
!1948 = !DILocation(line: 466, column: 6, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 466, column: 6)
!1950 = !DILocation(line: 466, column: 11, scope: !1949)
!1951 = !DILocation(line: 466, column: 6, scope: !1868)
!1952 = !DILocation(line: 466, column: 26, scope: !1949)
!1953 = !DILocation(line: 467, column: 6, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 467, column: 6)
!1955 = !DILocation(line: 467, column: 11, scope: !1954)
!1956 = !DILocation(line: 467, column: 6, scope: !1868)
!1957 = !DILocation(line: 467, column: 26, scope: !1954)
!1958 = !DILocation(line: 468, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 468, column: 6)
!1960 = !DILocation(line: 468, column: 11, scope: !1959)
!1961 = !DILocation(line: 468, column: 6, scope: !1868)
!1962 = !DILocation(line: 468, column: 26, scope: !1959)
!1963 = !DILocation(line: 469, column: 6, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 469, column: 6)
!1965 = !DILocation(line: 469, column: 11, scope: !1964)
!1966 = !DILocation(line: 469, column: 6, scope: !1868)
!1967 = !DILocation(line: 469, column: 26, scope: !1964)
!1968 = !DILocation(line: 470, column: 6, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 470, column: 6)
!1970 = !DILocation(line: 470, column: 11, scope: !1969)
!1971 = !DILocation(line: 470, column: 6, scope: !1868)
!1972 = !DILocation(line: 470, column: 26, scope: !1969)
!1973 = !DILocation(line: 471, column: 6, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 471, column: 6)
!1975 = !DILocation(line: 471, column: 11, scope: !1974)
!1976 = !DILocation(line: 471, column: 6, scope: !1868)
!1977 = !DILocation(line: 471, column: 26, scope: !1974)
!1978 = !DILocation(line: 472, column: 6, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 472, column: 6)
!1980 = !DILocation(line: 472, column: 11, scope: !1979)
!1981 = !DILocation(line: 472, column: 6, scope: !1868)
!1982 = !DILocation(line: 472, column: 26, scope: !1979)
!1983 = !DILocation(line: 473, column: 6, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 473, column: 6)
!1985 = !DILocation(line: 473, column: 11, scope: !1984)
!1986 = !DILocation(line: 473, column: 6, scope: !1868)
!1987 = !DILocation(line: 473, column: 26, scope: !1984)
!1988 = !DILocation(line: 474, column: 6, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 474, column: 6)
!1990 = !DILocation(line: 474, column: 11, scope: !1989)
!1991 = !DILocation(line: 474, column: 6, scope: !1868)
!1992 = !DILocation(line: 474, column: 27, scope: !1989)
!1993 = !DILocation(line: 475, column: 6, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 475, column: 6)
!1995 = !DILocation(line: 475, column: 11, scope: !1994)
!1996 = !DILocation(line: 475, column: 6, scope: !1868)
!1997 = !DILocation(line: 475, column: 32, scope: !1994)
!1998 = !DILocation(line: 477, column: 50, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1868, file: !18, line: 477, column: 6)
!2000 = !{i8 0, i8 2}
!2001 = !{}
!2002 = !DILocation(line: 477, column: 6, scope: !1868)
!2003 = !DILocation(line: 478, column: 3, scope: !1999)
!2004 = !DILocation(line: 478, column: 3, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !18, line: 478, column: 3)
!2006 = distinct !DILexicalBlock(scope: !1999, file: !18, line: 478, column: 3)
!2007 = !{i32 -2143021889}
!2008 = !DILocation(line: 478, column: 3, scope: !2006)
!2009 = !DILocation(line: 480, column: 3, scope: !1999)
!2010 = !DILocation(line: 480, column: 3, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1999, file: !18, line: 480, column: 3)
!2012 = !DILocation(line: 480, column: 3, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2011, file: !18, line: 480, column: 3)
!2014 = !DILocation(line: 480, column: 3, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !18, line: 480, column: 3)
!2016 = !{i64 2151945610, i64 2151945639, i64 2151945685, i64 2151945743, i64 2151945797, i64 2151945851, i64 2151945906, i64 2151945937}
!2017 = !DILocation(line: 483, column: 2, scope: !1868)
!2018 = !DILocation(line: 484, column: 1, scope: !1868)
!2019 = !DISubprogram(name: "kmalloc_trace", scope: !18, file: !18, line: 525, type: !2020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!39, !2022, !45, !1795}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2024, line: 11, flags: DIFlagFwdDecl)
!2024 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2025 = distinct !DISubprogram(name: "kmalloc_type", scope: !18, file: !18, line: 401, type: !2026, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2028)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!17, !45, !47}
!2028 = !{!2029, !2030}
!2029 = !DILocalVariable(name: "flags", arg: 1, scope: !2025, file: !18, line: 401, type: !45)
!2030 = !DILocalVariable(name: "caller", arg: 2, scope: !2025, file: !18, line: 401, type: !47)
!2031 = !DILocation(line: 401, column: 67, scope: !2025)
!2032 = !DILocation(line: 401, column: 88, scope: !2025)
!2033 = !DILocation(line: 407, column: 6, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2025, file: !18, line: 407, column: 6)
!2035 = !DILocation(line: 407, column: 6, scope: !2025)
!2036 = !DILocation(line: 413, column: 3, scope: !2034)
!2037 = !DILocation(line: 423, column: 38, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2025, file: !18, line: 423, column: 6)
!2039 = !DILocation(line: 423, column: 44, scope: !2038)
!2040 = !DILocation(line: 423, column: 6, scope: !2025)
!2041 = !DILocation(line: 424, column: 3, scope: !2038)
!2042 = !DILocation(line: 426, column: 3, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2025, file: !18, line: 425, column: 6)
!2044 = !DILocation(line: 429, column: 1, scope: !2025)
!2045 = !DISubprogram(name: "__kmalloc", scope: !18, file: !18, line: 488, type: !1793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2046 = !DISubprogram(name: "__compiletime_assert_173", scope: !18, file: !18, line: 478, type: !2047, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null}
!2049 = distinct !DISubprogram(name: "native_save_fl", scope: !1810, file: !1810, line: 17, type: !1811, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2050 = !{!2051}
!2051 = !DILocalVariable(name: "flags", scope: !2049, file: !1810, line: 19, type: !47)
!2052 = !DILocation(line: 19, column: 2, scope: !2049)
!2053 = !DILocation(line: 19, column: 16, scope: !2049)
!2054 = !DILocation(line: 26, column: 2, scope: !2049)
!2055 = !{i64 1535529, i64 1535550}
!2056 = !DILocation(line: 32, column: 9, scope: !2049)
!2057 = !DILocation(line: 33, column: 1, scope: !2049)
!2058 = !DILocation(line: 32, column: 2, scope: !2049)
!2059 = !DISubprogram(name: "kfree", scope: !18, file: !18, line: 227, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !2062}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
