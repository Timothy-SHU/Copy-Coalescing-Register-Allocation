; ModuleID = 'drivers/acpi/acpica/exfield.c'
source_filename = "drivers/acpi/acpica/exfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_region_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i16, ptr, ptr, i16, ptr }
%struct.acpi_object_region = type { ptr, i8, i8, i16, i8, i8, ptr, ptr, ptr, i64, i32, ptr }
%struct.acpi_object_buffer_field = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, i8, ptr }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_field_common = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, i32, i32, i32, i8, i8, ptr }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }

@acpi_protocol_lengths = internal constant [16 x i8] c"\80\80\00\80\01\80\01\80\02\80\FF\FF\02\FF\FF\FF", align 16, !dbg !0
@_acpi_module_name = internal constant [8 x i8] c"exfield\00", align 1, !dbg !28
@.str = private unnamed_addr constant [44 x i8] c"Invalid Field/AccessAs protocol ID: 0x%4.4X\00", align 1, !dbg !22
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_get_protocol_buffer_length(i32 noundef %protocol_id, ptr noundef %return_length) #0 align 16 !dbg !47 {
entry:
  %retval = alloca i32, align 4
  %protocol_id.addr = alloca i32, align 4
  %return_length.addr = alloca ptr, align 8
  store i32 %protocol_id, ptr %protocol_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %protocol_id.addr, metadata !52, metadata !DIExpression()), !dbg !54
  store ptr %return_length, ptr %return_length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_length.addr, metadata !53, metadata !DIExpression()), !dbg !55
  %0 = load i32, ptr %protocol_id.addr, align 4, !dbg !56
  %cmp = icmp ugt i32 %0, 15, !dbg !58
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !59

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %protocol_id.addr, align 4, !dbg !60
  %idxprom = zext i32 %1 to i64, !dbg !61
  %arrayidx = getelementptr [16 x i8], ptr @acpi_protocol_lengths, i64 0, i64 %idxprom, !dbg !61
  %2 = load i8, ptr %arrayidx, align 1, !dbg !61
  %conv = zext i8 %2 to i32, !dbg !61
  %cmp1 = icmp eq i32 %conv, 128, !dbg !62
  br i1 %cmp1, label %if.then, label %if.end, !dbg !63

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i32, ptr %protocol_id.addr, align 4, !dbg !64
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 77, ptr noundef @.str, i32 noundef %3) #5, !dbg !64
  store i32 12324, ptr %retval, align 4, !dbg !66
  br label %return, !dbg !66

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %protocol_id.addr, align 4, !dbg !67
  %idxprom3 = zext i32 %4 to i64, !dbg !68
  %arrayidx4 = getelementptr [16 x i8], ptr @acpi_protocol_lengths, i64 0, i64 %idxprom3, !dbg !68
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !68
  %conv5 = zext i8 %5 to i32, !dbg !68
  %6 = load ptr, ptr %return_length.addr, align 8, !dbg !69
  store i32 %conv5, ptr %6, align 4, !dbg !70
  store i32 0, ptr %retval, align 4, !dbg !71
  br label %return, !dbg !71

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !72
  ret i32 %7, !dbg !72
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !73 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_read_data_from_field(ptr noundef %walk_state, ptr noundef %obj_desc, ptr noundef %ret_buffer_desc) #0 align 16 !dbg !78 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %ret_buffer_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %buffer_desc = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %buffer_length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !842, metadata !DIExpression()), !dbg !850
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !843, metadata !DIExpression()), !dbg !851
  store ptr %ret_buffer_desc, ptr %ret_buffer_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_buffer_desc.addr, metadata !844, metadata !DIExpression()), !dbg !852
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %status, metadata !845, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_desc) #6, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %buffer_desc, metadata !846, metadata !DIExpression()), !dbg !856
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #6, !dbg !857
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !847, metadata !DIExpression()), !dbg !858
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_length) #6, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %buffer_length, metadata !848, metadata !DIExpression()), !dbg !860
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !861
  %tobool = icmp ne ptr %0, null, !dbg !861
  br i1 %tobool, label %if.end, label %if.then, !dbg !863

if.then:                                          ; preds = %entry
  store i32 12290, ptr %retval, align 4, !dbg !864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !864

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ret_buffer_desc.addr, align 8, !dbg !866
  %tobool1 = icmp ne ptr %1, null, !dbg !866
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !868

if.then2:                                         ; preds = %if.end
  store i32 4097, ptr %retval, align 4, !dbg !869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !869

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !871
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !873
  %3 = load i8, ptr %type, align 1, !dbg !873
  %conv = zext i8 %3 to i32, !dbg !871
  %cmp = icmp eq i32 %conv, 14, !dbg !874
  br i1 %cmp, label %if.then5, label %if.else, !dbg !875

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !876
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %4, i32 0, i32 4, !dbg !879
  %5 = load i8, ptr %flags, align 4, !dbg !879
  %conv6 = zext i8 %5 to i32, !dbg !876
  %and = and i32 %conv6, 4, !dbg !880
  %tobool7 = icmp ne i32 %and, 0, !dbg !880
  br i1 %tobool7, label %if.end12, label %if.then8, !dbg !881

if.then8:                                         ; preds = %if.then5
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !882
  %call = call i32 @acpi_ds_get_buffer_field_arguments(ptr noundef %6) #5, !dbg !884
  store i32 %call, ptr %status, align 4, !dbg !885
  %7 = load i32, ptr %status, align 4, !dbg !886
  %tobool9 = icmp ne i32 %7, 0, !dbg !886
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !888

if.then10:                                        ; preds = %if.then8
  %8 = load i32, ptr %status, align 4, !dbg !889
  store i32 %8, ptr %retval, align 4, !dbg !889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !889

if.end11:                                         ; preds = %if.then8
  br label %if.end12, !dbg !891

if.end12:                                         ; preds = %if.end11, %if.then5
  br label %if.end46, !dbg !892

if.else:                                          ; preds = %if.end3
  %9 = load ptr, ptr %obj_desc.addr, align 8, !dbg !893
  %type13 = getelementptr inbounds %struct.acpi_object_common, ptr %9, i32 0, i32 2, !dbg !895
  %10 = load i8, ptr %type13, align 1, !dbg !895
  %conv14 = zext i8 %10 to i32, !dbg !893
  %cmp15 = icmp eq i32 %conv14, 17, !dbg !896
  br i1 %cmp15, label %land.lhs.true, label %if.end45, !dbg !897

land.lhs.true:                                    ; preds = %if.else
  %11 = load ptr, ptr %obj_desc.addr, align 8, !dbg !898
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, ptr %11, i32 0, i32 15, !dbg !899
  %12 = load ptr, ptr %region_obj, align 8, !dbg !899
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %12, i32 0, i32 5, !dbg !900
  %13 = load i8, ptr %space_id, align 1, !dbg !900
  %conv17 = zext i8 %13 to i32, !dbg !898
  %cmp18 = icmp eq i32 %conv17, 4, !dbg !901
  br i1 %cmp18, label %if.then43, label %lor.lhs.false, !dbg !902

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load ptr, ptr %obj_desc.addr, align 8, !dbg !903
  %region_obj20 = getelementptr inbounds %struct.acpi_object_region_field, ptr %14, i32 0, i32 15, !dbg !904
  %15 = load ptr, ptr %region_obj20, align 8, !dbg !904
  %space_id21 = getelementptr inbounds %struct.acpi_object_region, ptr %15, i32 0, i32 5, !dbg !905
  %16 = load i8, ptr %space_id21, align 1, !dbg !905
  %conv22 = zext i8 %16 to i32, !dbg !903
  %cmp23 = icmp eq i32 %conv22, 9, !dbg !906
  br i1 %cmp23, label %if.then43, label %lor.lhs.false25, !dbg !907

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %17 = load ptr, ptr %obj_desc.addr, align 8, !dbg !908
  %region_obj26 = getelementptr inbounds %struct.acpi_object_region_field, ptr %17, i32 0, i32 15, !dbg !909
  %18 = load ptr, ptr %region_obj26, align 8, !dbg !909
  %space_id27 = getelementptr inbounds %struct.acpi_object_region, ptr %18, i32 0, i32 5, !dbg !910
  %19 = load i8, ptr %space_id27, align 1, !dbg !910
  %conv28 = zext i8 %19 to i32, !dbg !908
  %cmp29 = icmp eq i32 %conv28, 7, !dbg !911
  br i1 %cmp29, label %if.then43, label %lor.lhs.false31, !dbg !912

lor.lhs.false31:                                  ; preds = %lor.lhs.false25
  %20 = load ptr, ptr %obj_desc.addr, align 8, !dbg !913
  %region_obj32 = getelementptr inbounds %struct.acpi_object_region_field, ptr %20, i32 0, i32 15, !dbg !914
  %21 = load ptr, ptr %region_obj32, align 8, !dbg !914
  %space_id33 = getelementptr inbounds %struct.acpi_object_region, ptr %21, i32 0, i32 5, !dbg !915
  %22 = load i8, ptr %space_id33, align 1, !dbg !915
  %conv34 = zext i8 %22 to i32, !dbg !913
  %cmp35 = icmp eq i32 %conv34, 11, !dbg !916
  br i1 %cmp35, label %if.then43, label %lor.lhs.false37, !dbg !917

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %23 = load ptr, ptr %obj_desc.addr, align 8, !dbg !918
  %region_obj38 = getelementptr inbounds %struct.acpi_object_region_field, ptr %23, i32 0, i32 15, !dbg !919
  %24 = load ptr, ptr %region_obj38, align 8, !dbg !919
  %space_id39 = getelementptr inbounds %struct.acpi_object_region, ptr %24, i32 0, i32 5, !dbg !920
  %25 = load i8, ptr %space_id39, align 1, !dbg !920
  %conv40 = zext i8 %25 to i32, !dbg !918
  %cmp41 = icmp eq i32 %conv40, 127, !dbg !921
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !922

if.then43:                                        ; preds = %lor.lhs.false37, %lor.lhs.false31, %lor.lhs.false25, %lor.lhs.false, %land.lhs.true
  %26 = load ptr, ptr %obj_desc.addr, align 8, !dbg !923
  %27 = load ptr, ptr %ret_buffer_desc.addr, align 8, !dbg !925
  %call44 = call i32 @acpi_ex_read_serial_bus(ptr noundef %26, ptr noundef %27) #5, !dbg !926
  store i32 %call44, ptr %status, align 4, !dbg !927
  %28 = load i32, ptr %status, align 4, !dbg !928
  store i32 %28, ptr %retval, align 4, !dbg !928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !928

if.end45:                                         ; preds = %lor.lhs.false37, %if.else
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end12
  %29 = load ptr, ptr %obj_desc.addr, align 8, !dbg !929
  %bit_length = getelementptr inbounds %struct.acpi_object_region_field, ptr %29, i32 0, i32 9, !dbg !929
  %30 = load i32, ptr %bit_length, align 8, !dbg !929
  %add = add i32 %30, 7, !dbg !929
  %shr = lshr i32 %add, 3, !dbg !929
  %conv47 = zext i32 %shr to i64, !dbg !930
  %conv48 = trunc i64 %conv47 to i32, !dbg !930
  store i32 %conv48, ptr %buffer_length, align 4, !dbg !931
  %31 = load i32, ptr %buffer_length, align 4, !dbg !932
  %32 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !934
  %conv49 = zext i8 %32 to i32, !dbg !934
  %cmp50 = icmp ugt i32 %31, %conv49, !dbg !935
  br i1 %cmp50, label %if.then60, label %lor.lhs.false52, !dbg !936

lor.lhs.false52:                                  ; preds = %if.end46
  %33 = load ptr, ptr %obj_desc.addr, align 8, !dbg !937
  %type53 = getelementptr inbounds %struct.acpi_object_common, ptr %33, i32 0, i32 2, !dbg !938
  %34 = load i8, ptr %type53, align 1, !dbg !938
  %conv54 = zext i8 %34 to i32, !dbg !937
  %cmp55 = icmp eq i32 %conv54, 14, !dbg !939
  br i1 %cmp55, label %land.lhs.true57, label %if.else66, !dbg !940

land.lhs.true57:                                  ; preds = %lor.lhs.false52
  %35 = load ptr, ptr %obj_desc.addr, align 8, !dbg !941
  %is_create_field = getelementptr inbounds %struct.acpi_object_buffer_field, ptr %35, i32 0, i32 14, !dbg !942
  %36 = load i8, ptr %is_create_field, align 2, !dbg !942
  %conv58 = zext i8 %36 to i32, !dbg !941
  %tobool59 = icmp ne i32 %conv58, 0, !dbg !941
  br i1 %tobool59, label %if.then60, label %if.else66, !dbg !943

if.then60:                                        ; preds = %land.lhs.true57, %if.end46
  %37 = load i32, ptr %buffer_length, align 4, !dbg !944
  %conv61 = zext i32 %37 to i64, !dbg !944
  %call62 = call ptr @acpi_ut_create_buffer_object(i64 noundef %conv61) #5, !dbg !946
  store ptr %call62, ptr %buffer_desc, align 8, !dbg !947
  %38 = load ptr, ptr %buffer_desc, align 8, !dbg !948
  %tobool63 = icmp ne ptr %38, null, !dbg !948
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !950

if.then64:                                        ; preds = %if.then60
  store i32 4, ptr %retval, align 4, !dbg !951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !951

if.end65:                                         ; preds = %if.then60
  %39 = load ptr, ptr %buffer_desc, align 8, !dbg !953
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %39, i32 0, i32 5, !dbg !954
  %40 = load ptr, ptr %pointer, align 8, !dbg !954
  store ptr %40, ptr %buffer, align 8, !dbg !955
  br label %if.end72, !dbg !956

if.else66:                                        ; preds = %land.lhs.true57, %lor.lhs.false52
  %call67 = call ptr @acpi_ut_create_integer_object(i64 noundef 0) #5, !dbg !957
  store ptr %call67, ptr %buffer_desc, align 8, !dbg !959
  %41 = load ptr, ptr %buffer_desc, align 8, !dbg !960
  %tobool68 = icmp ne ptr %41, null, !dbg !960
  br i1 %tobool68, label %if.end70, label %if.then69, !dbg !962

if.then69:                                        ; preds = %if.else66
  store i32 4, ptr %retval, align 4, !dbg !963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !963

if.end70:                                         ; preds = %if.else66
  %42 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !965
  %conv71 = zext i8 %42 to i32, !dbg !965
  store i32 %conv71, ptr %buffer_length, align 4, !dbg !966
  %43 = load ptr, ptr %buffer_desc, align 8, !dbg !967
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %43, i32 0, i32 6, !dbg !968
  store ptr %value, ptr %buffer, align 8, !dbg !969
  br label %if.end72

if.end72:                                         ; preds = %if.end70, %if.end65
  %44 = load ptr, ptr %obj_desc.addr, align 8, !dbg !970
  %type73 = getelementptr inbounds %struct.acpi_object_common, ptr %44, i32 0, i32 2, !dbg !972
  %45 = load i8, ptr %type73, align 1, !dbg !972
  %conv74 = zext i8 %45 to i32, !dbg !970
  %cmp75 = icmp eq i32 %conv74, 17, !dbg !973
  br i1 %cmp75, label %land.lhs.true77, label %if.else85, !dbg !974

land.lhs.true77:                                  ; preds = %if.end72
  %46 = load ptr, ptr %obj_desc.addr, align 8, !dbg !975
  %region_obj78 = getelementptr inbounds %struct.acpi_object_region_field, ptr %46, i32 0, i32 15, !dbg !976
  %47 = load ptr, ptr %region_obj78, align 8, !dbg !976
  %space_id79 = getelementptr inbounds %struct.acpi_object_region, ptr %47, i32 0, i32 5, !dbg !977
  %48 = load i8, ptr %space_id79, align 1, !dbg !977
  %conv80 = zext i8 %48 to i32, !dbg !975
  %cmp81 = icmp eq i32 %conv80, 8, !dbg !978
  br i1 %cmp81, label %if.then83, label %if.else85, !dbg !979

if.then83:                                        ; preds = %land.lhs.true77
  %49 = load ptr, ptr %obj_desc.addr, align 8, !dbg !980
  %50 = load ptr, ptr %buffer, align 8, !dbg !982
  %call84 = call i32 @acpi_ex_read_gpio(ptr noundef %49, ptr noundef %50) #5, !dbg !983
  store i32 %call84, ptr %status, align 4, !dbg !984
  br label %exit, !dbg !985

if.else85:                                        ; preds = %land.lhs.true77, %if.end72
  %51 = load ptr, ptr %obj_desc.addr, align 8, !dbg !986
  %type86 = getelementptr inbounds %struct.acpi_object_common, ptr %51, i32 0, i32 2, !dbg !988
  %52 = load i8, ptr %type86, align 1, !dbg !988
  %conv87 = zext i8 %52 to i32, !dbg !986
  %cmp88 = icmp eq i32 %conv87, 17, !dbg !989
  br i1 %cmp88, label %land.lhs.true90, label %if.end102, !dbg !990

land.lhs.true90:                                  ; preds = %if.else85
  %53 = load ptr, ptr %obj_desc.addr, align 8, !dbg !991
  %region_obj91 = getelementptr inbounds %struct.acpi_object_region_field, ptr %53, i32 0, i32 15, !dbg !992
  %54 = load ptr, ptr %region_obj91, align 8, !dbg !992
  %space_id92 = getelementptr inbounds %struct.acpi_object_region, ptr %54, i32 0, i32 5, !dbg !993
  %55 = load i8, ptr %space_id92, align 1, !dbg !993
  %conv93 = zext i8 %55 to i32, !dbg !991
  %cmp94 = icmp eq i32 %conv93, 10, !dbg !994
  br i1 %cmp94, label %if.then96, label %if.end102, !dbg !995

if.then96:                                        ; preds = %land.lhs.true90
  %56 = load ptr, ptr %buffer, align 8, !dbg !996
  %57 = load ptr, ptr %obj_desc.addr, align 8, !dbg !998
  %region_obj97 = getelementptr inbounds %struct.acpi_object_region_field, ptr %57, i32 0, i32 15, !dbg !999
  %58 = load ptr, ptr %region_obj97, align 8, !dbg !999
  %internal_pcc_buffer = getelementptr inbounds %struct.acpi_object_region_field, ptr %58, i32 0, i32 18, !dbg !1000
  %59 = load ptr, ptr %internal_pcc_buffer, align 8, !dbg !1000
  %60 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1001
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_region_field, ptr %60, i32 0, i32 10, !dbg !1002
  %61 = load i32, ptr %base_byte_offset, align 4, !dbg !1002
  %idx.ext = zext i32 %61 to i64, !dbg !1003
  %add.ptr = getelementptr i8, ptr %59, i64 %idx.ext, !dbg !1003
  %62 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1004
  %bit_length98 = getelementptr inbounds %struct.acpi_object_region_field, ptr %62, i32 0, i32 9, !dbg !1004
  %63 = load i32, ptr %bit_length98, align 8, !dbg !1004
  %add99 = add i32 %63, 7, !dbg !1004
  %shr100 = lshr i32 %add99, 3, !dbg !1004
  %conv101 = zext i32 %shr100 to i64, !dbg !1005
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %add.ptr, i64 %conv101, i1 false), !dbg !1006
  %64 = load ptr, ptr %buffer_desc, align 8, !dbg !1007
  %65 = load ptr, ptr %ret_buffer_desc.addr, align 8, !dbg !1008
  store ptr %64, ptr %65, align 8, !dbg !1009
  store i32 0, ptr %retval, align 4, !dbg !1010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1010

if.end102:                                        ; preds = %land.lhs.true90, %if.else85
  br label %if.end103

if.end103:                                        ; preds = %if.end102
  %66 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1011
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, ptr %66, i32 0, i32 5, !dbg !1012
  %67 = load i8, ptr %field_flags, align 1, !dbg !1012
  %conv104 = zext i8 %67 to i32, !dbg !1011
  call void @acpi_ex_acquire_global_lock(i32 noundef %conv104) #5, !dbg !1013
  %68 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1014
  %69 = load ptr, ptr %buffer, align 8, !dbg !1015
  %70 = load i32, ptr %buffer_length, align 4, !dbg !1016
  %call105 = call i32 @acpi_ex_extract_from_field(ptr noundef %68, ptr noundef %69, i32 noundef %70) #5, !dbg !1017
  store i32 %call105, ptr %status, align 4, !dbg !1018
  %71 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1019
  %field_flags106 = getelementptr inbounds %struct.acpi_object_field_common, ptr %71, i32 0, i32 5, !dbg !1020
  %72 = load i8, ptr %field_flags106, align 1, !dbg !1020
  %conv107 = zext i8 %72 to i32, !dbg !1019
  call void @acpi_ex_release_global_lock(i32 noundef %conv107) #5, !dbg !1021
  br label %exit, !dbg !1021

exit:                                             ; preds = %if.end103, %if.then83
  call void @llvm.dbg.label(metadata !849), !dbg !1022
  %73 = load i32, ptr %status, align 4, !dbg !1023
  %tobool108 = icmp ne i32 %73, 0, !dbg !1023
  br i1 %tobool108, label %if.then109, label %if.else110, !dbg !1025

if.then109:                                       ; preds = %exit
  %74 = load ptr, ptr %buffer_desc, align 8, !dbg !1026
  call void @acpi_ut_remove_reference(ptr noundef %74) #5, !dbg !1028
  br label %if.end111, !dbg !1029

if.else110:                                       ; preds = %exit
  %75 = load ptr, ptr %buffer_desc, align 8, !dbg !1030
  %76 = load ptr, ptr %ret_buffer_desc.addr, align 8, !dbg !1032
  store ptr %75, ptr %76, align 8, !dbg !1033
  br label %if.end111

if.end111:                                        ; preds = %if.else110, %if.then109
  %77 = load i32, ptr %status, align 4, !dbg !1034
  store i32 %77, ptr %retval, align 4, !dbg !1034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1034

cleanup:                                          ; preds = %if.end111, %if.then96, %if.then69, %if.then64, %if.then43, %if.then10, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_length) #6, !dbg !1035
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #6, !dbg !1035
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_desc) #6, !dbg !1035
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1035
  %78 = load i32, ptr %retval, align 4, !dbg !1035
  ret i32 %78, !dbg !1035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1036 dso_local i32 @acpi_ds_get_buffer_field_arguments(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1040 dso_local i32 @acpi_ex_read_serial_bus(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1044 dso_local ptr @acpi_ut_create_buffer_object(i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1048 dso_local ptr @acpi_ut_create_integer_object(i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1051 dso_local i32 @acpi_ex_read_gpio(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1054 dso_local void @acpi_ex_acquire_global_lock(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1057 dso_local i32 @acpi_ex_extract_from_field(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1060 dso_local void @acpi_ex_release_global_lock(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1061 dso_local void @acpi_ut_remove_reference(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_write_data_to_field(ptr noundef %source_desc, ptr noundef %obj_desc, ptr noundef %result_desc) #0 align 16 !dbg !1064 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  %result_desc.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %buffer_length = alloca i32, align 4
  %data_length = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !1068, metadata !DIExpression()), !dbg !1075
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1069, metadata !DIExpression()), !dbg !1076
  store ptr %result_desc, ptr %result_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result_desc.addr, metadata !1070, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1071, metadata !DIExpression()), !dbg !1079
  call void @llvm.lifetime.start.p0(i64 4, ptr %buffer_length) #6, !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %buffer_length, metadata !1072, metadata !DIExpression()), !dbg !1081
  call void @llvm.lifetime.start.p0(i64 4, ptr %data_length) #6, !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %data_length, metadata !1073, metadata !DIExpression()), !dbg !1083
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #6, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !1074, metadata !DIExpression()), !dbg !1085
  %0 = load ptr, ptr %source_desc.addr, align 8, !dbg !1086
  %tobool = icmp ne ptr %0, null, !dbg !1086
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1088

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1089
  %tobool1 = icmp ne ptr %1, null, !dbg !1089
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1090

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 12290, ptr %retval, align 4, !dbg !1091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1091

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1093
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %2, i32 0, i32 2, !dbg !1095
  %3 = load i8, ptr %type, align 1, !dbg !1095
  %conv = zext i8 %3 to i32, !dbg !1093
  %cmp = icmp eq i32 %conv, 14, !dbg !1096
  br i1 %cmp, label %if.then3, label %if.else, !dbg !1097

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1098
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %4, i32 0, i32 4, !dbg !1101
  %5 = load i8, ptr %flags, align 4, !dbg !1101
  %conv4 = zext i8 %5 to i32, !dbg !1098
  %and = and i32 %conv4, 4, !dbg !1102
  %tobool5 = icmp ne i32 %and, 0, !dbg !1102
  br i1 %tobool5, label %if.end10, label %if.then6, !dbg !1103

if.then6:                                         ; preds = %if.then3
  %6 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1104
  %call = call i32 @acpi_ds_get_buffer_field_arguments(ptr noundef %6) #5, !dbg !1106
  store i32 %call, ptr %status, align 4, !dbg !1107
  %7 = load i32, ptr %status, align 4, !dbg !1108
  %tobool7 = icmp ne i32 %7, 0, !dbg !1108
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1110

if.then8:                                         ; preds = %if.then6
  %8 = load i32, ptr %status, align 4, !dbg !1111
  store i32 %8, ptr %retval, align 4, !dbg !1111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1111

if.end9:                                          ; preds = %if.then6
  br label %if.end10, !dbg !1113

if.end10:                                         ; preds = %if.end9, %if.then3
  br label %if.end88, !dbg !1114

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1115
  %type11 = getelementptr inbounds %struct.acpi_object_common, ptr %9, i32 0, i32 2, !dbg !1117
  %10 = load i8, ptr %type11, align 1, !dbg !1117
  %conv12 = zext i8 %10 to i32, !dbg !1115
  %cmp13 = icmp eq i32 %conv12, 17, !dbg !1118
  br i1 %cmp13, label %land.lhs.true, label %if.else20, !dbg !1119

land.lhs.true:                                    ; preds = %if.else
  %11 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1120
  %region_obj = getelementptr inbounds %struct.acpi_object_region_field, ptr %11, i32 0, i32 15, !dbg !1121
  %12 = load ptr, ptr %region_obj, align 8, !dbg !1121
  %space_id = getelementptr inbounds %struct.acpi_object_region, ptr %12, i32 0, i32 5, !dbg !1122
  %13 = load i8, ptr %space_id, align 1, !dbg !1122
  %conv15 = zext i8 %13 to i32, !dbg !1120
  %cmp16 = icmp eq i32 %conv15, 8, !dbg !1123
  br i1 %cmp16, label %if.then18, label %if.else20, !dbg !1124

if.then18:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %source_desc.addr, align 8, !dbg !1125
  %15 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1127
  %16 = load ptr, ptr %result_desc.addr, align 8, !dbg !1128
  %call19 = call i32 @acpi_ex_write_gpio(ptr noundef %14, ptr noundef %15, ptr noundef %16) #5, !dbg !1129
  store i32 %call19, ptr %status, align 4, !dbg !1130
  %17 = load i32, ptr %status, align 4, !dbg !1131
  store i32 %17, ptr %retval, align 4, !dbg !1131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1131

if.else20:                                        ; preds = %land.lhs.true, %if.else
  %18 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1132
  %type21 = getelementptr inbounds %struct.acpi_object_common, ptr %18, i32 0, i32 2, !dbg !1134
  %19 = load i8, ptr %type21, align 1, !dbg !1134
  %conv22 = zext i8 %19 to i32, !dbg !1132
  %cmp23 = icmp eq i32 %conv22, 17, !dbg !1135
  br i1 %cmp23, label %land.lhs.true25, label %if.else57, !dbg !1136

land.lhs.true25:                                  ; preds = %if.else20
  %20 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1137
  %region_obj26 = getelementptr inbounds %struct.acpi_object_region_field, ptr %20, i32 0, i32 15, !dbg !1138
  %21 = load ptr, ptr %region_obj26, align 8, !dbg !1138
  %space_id27 = getelementptr inbounds %struct.acpi_object_region, ptr %21, i32 0, i32 5, !dbg !1139
  %22 = load i8, ptr %space_id27, align 1, !dbg !1139
  %conv28 = zext i8 %22 to i32, !dbg !1137
  %cmp29 = icmp eq i32 %conv28, 4, !dbg !1140
  br i1 %cmp29, label %if.then55, label %lor.lhs.false31, !dbg !1141

lor.lhs.false31:                                  ; preds = %land.lhs.true25
  %23 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1142
  %region_obj32 = getelementptr inbounds %struct.acpi_object_region_field, ptr %23, i32 0, i32 15, !dbg !1143
  %24 = load ptr, ptr %region_obj32, align 8, !dbg !1143
  %space_id33 = getelementptr inbounds %struct.acpi_object_region, ptr %24, i32 0, i32 5, !dbg !1144
  %25 = load i8, ptr %space_id33, align 1, !dbg !1144
  %conv34 = zext i8 %25 to i32, !dbg !1142
  %cmp35 = icmp eq i32 %conv34, 9, !dbg !1145
  br i1 %cmp35, label %if.then55, label %lor.lhs.false37, !dbg !1146

lor.lhs.false37:                                  ; preds = %lor.lhs.false31
  %26 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1147
  %region_obj38 = getelementptr inbounds %struct.acpi_object_region_field, ptr %26, i32 0, i32 15, !dbg !1148
  %27 = load ptr, ptr %region_obj38, align 8, !dbg !1148
  %space_id39 = getelementptr inbounds %struct.acpi_object_region, ptr %27, i32 0, i32 5, !dbg !1149
  %28 = load i8, ptr %space_id39, align 1, !dbg !1149
  %conv40 = zext i8 %28 to i32, !dbg !1147
  %cmp41 = icmp eq i32 %conv40, 7, !dbg !1150
  br i1 %cmp41, label %if.then55, label %lor.lhs.false43, !dbg !1151

lor.lhs.false43:                                  ; preds = %lor.lhs.false37
  %29 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1152
  %region_obj44 = getelementptr inbounds %struct.acpi_object_region_field, ptr %29, i32 0, i32 15, !dbg !1153
  %30 = load ptr, ptr %region_obj44, align 8, !dbg !1153
  %space_id45 = getelementptr inbounds %struct.acpi_object_region, ptr %30, i32 0, i32 5, !dbg !1154
  %31 = load i8, ptr %space_id45, align 1, !dbg !1154
  %conv46 = zext i8 %31 to i32, !dbg !1152
  %cmp47 = icmp eq i32 %conv46, 11, !dbg !1155
  br i1 %cmp47, label %if.then55, label %lor.lhs.false49, !dbg !1156

lor.lhs.false49:                                  ; preds = %lor.lhs.false43
  %32 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1157
  %region_obj50 = getelementptr inbounds %struct.acpi_object_region_field, ptr %32, i32 0, i32 15, !dbg !1158
  %33 = load ptr, ptr %region_obj50, align 8, !dbg !1158
  %space_id51 = getelementptr inbounds %struct.acpi_object_region, ptr %33, i32 0, i32 5, !dbg !1159
  %34 = load i8, ptr %space_id51, align 1, !dbg !1159
  %conv52 = zext i8 %34 to i32, !dbg !1157
  %cmp53 = icmp eq i32 %conv52, 127, !dbg !1160
  br i1 %cmp53, label %if.then55, label %if.else57, !dbg !1161

if.then55:                                        ; preds = %lor.lhs.false49, %lor.lhs.false43, %lor.lhs.false37, %lor.lhs.false31, %land.lhs.true25
  %35 = load ptr, ptr %source_desc.addr, align 8, !dbg !1162
  %36 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1164
  %37 = load ptr, ptr %result_desc.addr, align 8, !dbg !1165
  %call56 = call i32 @acpi_ex_write_serial_bus(ptr noundef %35, ptr noundef %36, ptr noundef %37) #5, !dbg !1166
  store i32 %call56, ptr %status, align 4, !dbg !1167
  %38 = load i32, ptr %status, align 4, !dbg !1168
  store i32 %38, ptr %retval, align 4, !dbg !1168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1168

if.else57:                                        ; preds = %lor.lhs.false49, %if.else20
  %39 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1169
  %type58 = getelementptr inbounds %struct.acpi_object_common, ptr %39, i32 0, i32 2, !dbg !1171
  %40 = load i8, ptr %type58, align 1, !dbg !1171
  %conv59 = zext i8 %40 to i32, !dbg !1169
  %cmp60 = icmp eq i32 %conv59, 17, !dbg !1172
  br i1 %cmp60, label %land.lhs.true62, label %if.end85, !dbg !1173

land.lhs.true62:                                  ; preds = %if.else57
  %41 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1174
  %region_obj63 = getelementptr inbounds %struct.acpi_object_region_field, ptr %41, i32 0, i32 15, !dbg !1175
  %42 = load ptr, ptr %region_obj63, align 8, !dbg !1175
  %space_id64 = getelementptr inbounds %struct.acpi_object_region, ptr %42, i32 0, i32 5, !dbg !1176
  %43 = load i8, ptr %space_id64, align 1, !dbg !1176
  %conv65 = zext i8 %43 to i32, !dbg !1174
  %cmp66 = icmp eq i32 %conv65, 10, !dbg !1177
  br i1 %cmp66, label %if.then68, label %if.end85, !dbg !1178

if.then68:                                        ; preds = %land.lhs.true62
  %44 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1179
  %bit_length = getelementptr inbounds %struct.acpi_object_region_field, ptr %44, i32 0, i32 9, !dbg !1179
  %45 = load i32, ptr %bit_length, align 8, !dbg !1179
  %add = add i32 %45, 7, !dbg !1179
  %shr = lshr i32 %add, 3, !dbg !1179
  %conv69 = zext i32 %shr to i64, !dbg !1181
  %conv70 = trunc i64 %conv69 to i32, !dbg !1181
  store i32 %conv70, ptr %data_length, align 4, !dbg !1182
  %46 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1183
  %region_obj71 = getelementptr inbounds %struct.acpi_object_region_field, ptr %46, i32 0, i32 15, !dbg !1184
  %47 = load ptr, ptr %region_obj71, align 8, !dbg !1184
  %internal_pcc_buffer = getelementptr inbounds %struct.acpi_object_region_field, ptr %47, i32 0, i32 18, !dbg !1185
  %48 = load ptr, ptr %internal_pcc_buffer, align 8, !dbg !1185
  %49 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1186
  %base_byte_offset = getelementptr inbounds %struct.acpi_object_region_field, ptr %49, i32 0, i32 10, !dbg !1187
  %50 = load i32, ptr %base_byte_offset, align 4, !dbg !1187
  %idx.ext = zext i32 %50 to i64, !dbg !1188
  %add.ptr = getelementptr i8, ptr %48, i64 %idx.ext, !dbg !1188
  %51 = load ptr, ptr %source_desc.addr, align 8, !dbg !1189
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %51, i32 0, i32 5, !dbg !1190
  %52 = load ptr, ptr %pointer, align 8, !dbg !1190
  %53 = load i32, ptr %data_length, align 4, !dbg !1191
  %conv72 = zext i32 %53 to i64, !dbg !1191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %52, i64 %conv72, i1 false), !dbg !1192
  %54 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1193
  %base_byte_offset73 = getelementptr inbounds %struct.acpi_object_region_field, ptr %54, i32 0, i32 10, !dbg !1193
  %55 = load i32, ptr %base_byte_offset73, align 4, !dbg !1193
  %cmp74 = icmp ule i32 12, %55, !dbg !1193
  br i1 %cmp74, label %land.lhs.true76, label %if.end84, !dbg !1193

land.lhs.true76:                                  ; preds = %if.then68
  %56 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1193
  %base_byte_offset77 = getelementptr inbounds %struct.acpi_object_region_field, ptr %56, i32 0, i32 10, !dbg !1193
  %57 = load i32, ptr %base_byte_offset77, align 4, !dbg !1193
  %cmp78 = icmp ule i32 %57, 15, !dbg !1193
  br i1 %cmp78, label %if.then80, label %if.end84, !dbg !1195

if.then80:                                        ; preds = %land.lhs.true76
  %58 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1196
  %59 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1198
  %region_obj81 = getelementptr inbounds %struct.acpi_object_region_field, ptr %59, i32 0, i32 15, !dbg !1199
  %60 = load ptr, ptr %region_obj81, align 8, !dbg !1199
  %internal_pcc_buffer82 = getelementptr inbounds %struct.acpi_object_region_field, ptr %60, i32 0, i32 18, !dbg !1200
  %61 = load ptr, ptr %internal_pcc_buffer82, align 8, !dbg !1200
  %call83 = call i32 @acpi_ex_access_region(ptr noundef %58, i32 noundef 0, ptr noundef %61, i32 noundef 1) #5, !dbg !1201
  store i32 %call83, ptr %status, align 4, !dbg !1202
  %62 = load i32, ptr %status, align 4, !dbg !1203
  store i32 %62, ptr %retval, align 4, !dbg !1203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1203

if.end84:                                         ; preds = %land.lhs.true76, %if.then68
  store i32 0, ptr %retval, align 4, !dbg !1204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1204

if.end85:                                         ; preds = %land.lhs.true62, %if.else57
  br label %if.end86

if.end86:                                         ; preds = %if.end85
  br label %if.end87

if.end87:                                         ; preds = %if.end86
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.end10
  %63 = load ptr, ptr %source_desc.addr, align 8, !dbg !1205
  %type89 = getelementptr inbounds %struct.acpi_object_common, ptr %63, i32 0, i32 2, !dbg !1206
  %64 = load i8, ptr %type89, align 1, !dbg !1206
  %conv90 = zext i8 %64 to i32, !dbg !1205
  switch i32 %conv90, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb91
    i32 2, label %sw.bb93
  ], !dbg !1207

sw.bb:                                            ; preds = %if.end88
  %65 = load ptr, ptr %source_desc.addr, align 8, !dbg !1208
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %65, i32 0, i32 6, !dbg !1210
  store ptr %value, ptr %buffer, align 8, !dbg !1211
  store i32 8, ptr %buffer_length, align 4, !dbg !1212
  br label %sw.epilog, !dbg !1213

sw.bb91:                                          ; preds = %if.end88
  %66 = load ptr, ptr %source_desc.addr, align 8, !dbg !1214
  %pointer92 = getelementptr inbounds %struct.acpi_object_buffer, ptr %66, i32 0, i32 5, !dbg !1215
  %67 = load ptr, ptr %pointer92, align 8, !dbg !1215
  store ptr %67, ptr %buffer, align 8, !dbg !1216
  %68 = load ptr, ptr %source_desc.addr, align 8, !dbg !1217
  %length = getelementptr inbounds %struct.acpi_object_buffer, ptr %68, i32 0, i32 6, !dbg !1218
  %69 = load i32, ptr %length, align 8, !dbg !1218
  store i32 %69, ptr %buffer_length, align 4, !dbg !1219
  br label %sw.epilog, !dbg !1220

sw.bb93:                                          ; preds = %if.end88
  %70 = load ptr, ptr %source_desc.addr, align 8, !dbg !1221
  %pointer94 = getelementptr inbounds %struct.acpi_object_string, ptr %70, i32 0, i32 5, !dbg !1222
  %71 = load ptr, ptr %pointer94, align 8, !dbg !1222
  store ptr %71, ptr %buffer, align 8, !dbg !1223
  %72 = load ptr, ptr %source_desc.addr, align 8, !dbg !1224
  %length95 = getelementptr inbounds %struct.acpi_object_string, ptr %72, i32 0, i32 6, !dbg !1225
  %73 = load i32, ptr %length95, align 8, !dbg !1225
  store i32 %73, ptr %buffer_length, align 4, !dbg !1226
  br label %sw.epilog, !dbg !1227

sw.default:                                       ; preds = %if.end88
  store i32 12291, ptr %retval, align 4, !dbg !1228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1228

sw.epilog:                                        ; preds = %sw.bb93, %sw.bb91, %sw.bb
  %74 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1229
  %field_flags = getelementptr inbounds %struct.acpi_object_field_common, ptr %74, i32 0, i32 5, !dbg !1230
  %75 = load i8, ptr %field_flags, align 1, !dbg !1230
  %conv96 = zext i8 %75 to i32, !dbg !1229
  call void @acpi_ex_acquire_global_lock(i32 noundef %conv96) #5, !dbg !1231
  %76 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1232
  %77 = load ptr, ptr %buffer, align 8, !dbg !1233
  %78 = load i32, ptr %buffer_length, align 4, !dbg !1234
  %call97 = call i32 @acpi_ex_insert_into_field(ptr noundef %76, ptr noundef %77, i32 noundef %78) #5, !dbg !1235
  store i32 %call97, ptr %status, align 4, !dbg !1236
  %79 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1237
  %field_flags98 = getelementptr inbounds %struct.acpi_object_field_common, ptr %79, i32 0, i32 5, !dbg !1238
  %80 = load i8, ptr %field_flags98, align 1, !dbg !1238
  %conv99 = zext i8 %80 to i32, !dbg !1237
  call void @acpi_ex_release_global_lock(i32 noundef %conv99) #5, !dbg !1239
  %81 = load i32, ptr %status, align 4, !dbg !1240
  store i32 %81, ptr %retval, align 4, !dbg !1240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1240

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end84, %if.then80, %if.then55, %if.then18, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #6, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 4, ptr %data_length) #6, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 4, ptr %buffer_length) #6, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1241
  %82 = load i32, ptr %retval, align 4, !dbg !1241
  ret i32 %82, !dbg !1241
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1242 dso_local i32 @acpi_ex_write_gpio(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1243 dso_local i32 @acpi_ex_write_serial_bus(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1244 dso_local i32 @acpi_ex_access_region(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1247 dso_local i32 @acpi_ex_insert_into_field(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_protocol_lengths", scope: !2, file: !3, line: 25, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exfield.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exfield\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exfield.ll drivers/acpi/acpica/exfield.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exfield.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4ee20cfe6871872e8ac6d154619f38d9")
!4 = !{!5, !12, !16, !7, !17, !20}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !6, line: 814, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !19)
!19 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!21 = !{!22, !0, !28}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 352, elements: !26)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !{!27}
!27 = !DISubrange(count: 44)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !32)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!32 = !{!33}
!33 = !DISubrange(count: 8)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !36)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!36 = !{!37}
!37 = !DISubrange(count: 16)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 8, !"cf-protection-branch", i32 1}
!42 = !{i32 4, !"function_return_thunk_extern", i32 1}
!43 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!44 = !{i32 1, !"Code Model", i32 2}
!45 = !{i32 1, !"override-stack-alignment", i32 8}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = distinct !DISubprogram(name: "acpi_ex_get_protocol_buffer_length", scope: !3, file: !3, line: 72, type: !48, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DISubroutineType(types: !49)
!49 = !{!5, !7, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "protocol_id", arg: 1, scope: !47, file: !3, line: 72, type: !7)
!53 = !DILocalVariable(name: "return_length", arg: 2, scope: !47, file: !3, line: 72, type: !50)
!54 = !DILocation(line: 72, column: 40, scope: !47)
!55 = !DILocation(line: 72, column: 58, scope: !47)
!56 = !DILocation(line: 75, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !47, file: !3, line: 75, column: 6)
!58 = !DILocation(line: 75, column: 19, scope: !57)
!59 = !DILocation(line: 75, column: 43, scope: !57)
!60 = !DILocation(line: 76, column: 29, scope: !57)
!61 = !DILocation(line: 76, column: 7, scope: !57)
!62 = !DILocation(line: 76, column: 42, scope: !57)
!63 = !DILocation(line: 75, column: 6, scope: !47)
!64 = !DILocation(line: 77, column: 3, scope: !65)
!65 = distinct !DILexicalBlock(scope: !57, file: !3, line: 76, column: 72)
!66 = !DILocation(line: 81, column: 3, scope: !65)
!67 = !DILocation(line: 84, column: 41, scope: !47)
!68 = !DILocation(line: 84, column: 19, scope: !47)
!69 = !DILocation(line: 84, column: 3, scope: !47)
!70 = !DILocation(line: 84, column: 17, scope: !47)
!71 = !DILocation(line: 85, column: 2, scope: !47)
!72 = !DILocation(line: 86, column: 1, scope: !47)
!73 = !DISubprogram(name: "acpi_error", scope: !74, file: !74, line: 901, type: !75, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!74 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !7, !77, null}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!78 = distinct !DISubprogram(name: "acpi_ex_read_data_from_field", scope: !3, file: !3, line: 105, type: !79, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !841)
!79 = !DISubroutineType(types: !80)
!80 = !{!5, !81, !138, !197}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !83, line: 37, size: 9024, elements: !84)
!83 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!84 = !{!85, !86, !87, !88, !92, !93, !94, !95, !97, !98, !99, !100, !101, !102, !103, !104, !105, !107, !108, !109, !110, !111, !788, !789, !790, !791, !792, !796, !798, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !825, !826, !827, !828, !829, !830, !831, !832, !833, !839}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !82, file: !83, line: 38, baseType: !81, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !83, line: 39, baseType: !13, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !82, file: !83, line: 40, baseType: !13, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !82, file: !83, line: 41, baseType: !89, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !91)
!91 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !82, file: !83, line: 42, baseType: !13, size: 8, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !82, file: !83, line: 43, baseType: !13, size: 8, offset: 104)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !82, file: !83, line: 44, baseType: !13, size: 8, offset: 112)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !82, file: !83, line: 45, baseType: !96, size: 16, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !89)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !82, file: !83, line: 46, baseType: !13, size: 8, offset: 144)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !82, file: !83, line: 47, baseType: !13, size: 8, offset: 152)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !82, file: !83, line: 48, baseType: !13, size: 8, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !82, file: !83, line: 49, baseType: !13, size: 8, offset: 168)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !82, file: !83, line: 50, baseType: !13, size: 8, offset: 176)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !82, file: !83, line: 51, baseType: !13, size: 8, offset: 184)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !82, file: !83, line: 52, baseType: !13, size: 8, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !82, file: !83, line: 53, baseType: !13, size: 8, offset: 200)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !82, file: !83, line: 54, baseType: !106, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !82, file: !83, line: 55, baseType: !7, size: 32, offset: 320)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !82, file: !83, line: 56, baseType: !7, size: 32, offset: 352)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !82, file: !83, line: 57, baseType: !7, size: 32, offset: 384)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !82, file: !83, line: 58, baseType: !7, size: 32, offset: 416)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !82, file: !83, line: 60, baseType: !112, size: 640, offset: 448)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !113, line: 909, size: 640, elements: !114)
!113 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!114 = !{!115, !116, !117, !118, !119, !120, !687, !688, !786, !787}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !112, file: !113, line: 910, baseType: !106, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !112, file: !113, line: 911, baseType: !106, size: 64, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !112, file: !113, line: 912, baseType: !106, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !112, file: !113, line: 913, baseType: !106, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !112, file: !113, line: 914, baseType: !106, size: 64, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !112, file: !113, line: 915, baseType: !121, size: 64, offset: 320)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !113, line: 891, size: 1600, elements: !123)
!123 = !{!124, !630, !646}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !122, file: !113, line: 892, baseType: !125, size: 448)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !113, line: 844, size: 448, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !620, !629}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !125, file: !113, line: 845, baseType: !121, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !113, line: 845, baseType: !13, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !113, line: 845, baseType: !13, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !125, file: !113, line: 845, baseType: !89, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !125, file: !113, line: 845, baseType: !106, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !113, line: 845, baseType: !121, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !113, line: 845, baseType: !134, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !113, line: 133, size: 384, elements: !136)
!136 = !{!137, !604, !605, !606, !607, !616, !617, !618, !619}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !135, file: !113, line: 134, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !140, line: 369, size: 576, elements: !141)
!140 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!141 = !{!142, !150, !163, !174, !187, !201, !211, !237, !266, !282, !295, !374, !386, !400, !410, !428, !450, !469, !488, !507, !524, !550, !567, !580, !594, !603}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !139, file: !140, line: 370, baseType: !143, size: 128)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !140, line: 73, size: 128, elements: !144)
!144 = !{!145, !146, !147, !148, !149}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !140, line: 74, baseType: !138, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !140, line: 74, baseType: !13, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !140, line: 74, baseType: !13, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !140, line: 74, baseType: !89, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !140, line: 74, baseType: !13, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !139, file: !140, line: 371, baseType: !151, size: 192)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !140, line: 76, size: 192, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !162}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !151, file: !140, line: 77, baseType: !138, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !151, file: !140, line: 77, baseType: !13, size: 8, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !140, line: 77, baseType: !13, size: 8, offset: 72)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !151, file: !140, line: 77, baseType: !89, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !140, line: 77, baseType: !13, size: 8, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !151, file: !140, line: 77, baseType: !159, size: 24, offset: 104)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 3)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !151, file: !140, line: 78, baseType: !17, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !139, file: !140, line: 372, baseType: !164, size: 256)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !140, line: 93, size: 256, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !173}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !164, file: !140, line: 94, baseType: !138, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !164, file: !140, line: 94, baseType: !13, size: 8, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !164, file: !140, line: 94, baseType: !13, size: 8, offset: 72)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !164, file: !140, line: 94, baseType: !89, size: 16, offset: 80)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !164, file: !140, line: 94, baseType: !13, size: 8, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !164, file: !140, line: 94, baseType: !172, size: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !164, file: !140, line: 94, baseType: !7, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !139, file: !140, line: 373, baseType: !175, size: 384)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !140, line: 97, size: 384, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !175, file: !140, line: 98, baseType: !138, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !175, file: !140, line: 98, baseType: !13, size: 8, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !175, file: !140, line: 98, baseType: !13, size: 8, offset: 72)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !175, file: !140, line: 98, baseType: !89, size: 16, offset: 80)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !175, file: !140, line: 98, baseType: !13, size: 8, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !175, file: !140, line: 98, baseType: !106, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !175, file: !140, line: 98, baseType: !7, size: 32, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !175, file: !140, line: 99, baseType: !7, size: 32, offset: 224)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !175, file: !140, line: 100, baseType: !106, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !175, file: !140, line: 101, baseType: !134, size: 64, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !139, file: !140, line: 374, baseType: !188, size: 384)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !140, line: 104, size: 384, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !198, !199, !200}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !188, file: !140, line: 105, baseType: !138, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !188, file: !140, line: 105, baseType: !13, size: 8, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !140, line: 105, baseType: !13, size: 8, offset: 72)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !188, file: !140, line: 105, baseType: !89, size: 16, offset: 80)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !140, line: 105, baseType: !13, size: 8, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !188, file: !140, line: 105, baseType: !134, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !188, file: !140, line: 106, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !188, file: !140, line: 107, baseType: !106, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !188, file: !140, line: 108, baseType: !7, size: 32, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !188, file: !140, line: 109, baseType: !7, size: 32, offset: 352)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !139, file: !140, line: 375, baseType: !202, size: 192)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !140, line: 118, size: 192, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !202, file: !140, line: 119, baseType: !138, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !202, file: !140, line: 119, baseType: !13, size: 8, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !202, file: !140, line: 119, baseType: !13, size: 8, offset: 72)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !202, file: !140, line: 119, baseType: !89, size: 16, offset: 80)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !202, file: !140, line: 119, baseType: !13, size: 8, offset: 96)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !202, file: !140, line: 119, baseType: !210, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !139, file: !140, line: 376, baseType: !212, size: 448)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !140, line: 144, size: 448, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !234, !235, !236}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !212, file: !140, line: 145, baseType: !138, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !212, file: !140, line: 145, baseType: !13, size: 8, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !140, line: 145, baseType: !13, size: 8, offset: 72)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !212, file: !140, line: 145, baseType: !89, size: 16, offset: 80)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !140, line: 145, baseType: !13, size: 8, offset: 96)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !212, file: !140, line: 145, baseType: !13, size: 8, offset: 104)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !212, file: !140, line: 146, baseType: !13, size: 8, offset: 112)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !212, file: !140, line: 147, baseType: !13, size: 8, offset: 120)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !212, file: !140, line: 148, baseType: !138, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !212, file: !140, line: 149, baseType: !138, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !212, file: !140, line: 150, baseType: !106, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !212, file: !140, line: 154, baseType: !226, size: 64, offset: 320)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !140, line: 151, size: 64, elements: !227)
!227 = !{!228, !233}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !226, file: !140, line: 152, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !113, line: 248, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!5, !81}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !226, file: !140, line: 153, baseType: !138, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !212, file: !140, line: 156, baseType: !7, size: 32, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !212, file: !140, line: 157, baseType: !96, size: 16, offset: 416)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !212, file: !140, line: 158, baseType: !13, size: 8, offset: 432)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !140, line: 377, baseType: !238, size: 576)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !140, line: 122, size: 576, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !262, !263, !264, !265}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !238, file: !140, line: 123, baseType: !138, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !238, file: !140, line: 123, baseType: !13, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !238, file: !140, line: 123, baseType: !13, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !238, file: !140, line: 123, baseType: !89, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !140, line: 123, baseType: !13, size: 8, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !238, file: !140, line: 123, baseType: !13, size: 8, offset: 104)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !238, file: !140, line: 124, baseType: !89, size: 16, offset: 112)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !238, file: !140, line: 125, baseType: !210, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !238, file: !140, line: 126, baseType: !17, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !238, file: !140, line: 127, baseType: !250, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !113, line: 634, size: 320, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !113, line: 635, baseType: !210, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !251, file: !113, line: 635, baseType: !13, size: 8, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !113, line: 635, baseType: !13, size: 8, offset: 72)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !251, file: !113, line: 635, baseType: !89, size: 16, offset: 80)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !251, file: !113, line: 635, baseType: !89, size: 16, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !251, file: !113, line: 636, baseType: !13, size: 8, offset: 112)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !251, file: !113, line: 637, baseType: !81, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !251, file: !113, line: 638, baseType: !138, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !251, file: !113, line: 639, baseType: !17, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !238, file: !140, line: 128, baseType: !138, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !140, line: 129, baseType: !138, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !238, file: !140, line: 130, baseType: !134, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !238, file: !140, line: 131, baseType: !13, size: 8, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !139, file: !140, line: 378, baseType: !267, size: 512)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !140, line: 134, size: 512, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !280, !281}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !267, file: !140, line: 135, baseType: !138, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !267, file: !140, line: 135, baseType: !13, size: 8, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !267, file: !140, line: 135, baseType: !13, size: 8, offset: 72)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !267, file: !140, line: 135, baseType: !89, size: 16, offset: 80)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !140, line: 135, baseType: !13, size: 8, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !267, file: !140, line: 135, baseType: !13, size: 8, offset: 104)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !267, file: !140, line: 136, baseType: !134, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !267, file: !140, line: 137, baseType: !138, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !140, line: 138, baseType: !138, size: 64, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !267, file: !140, line: 139, baseType: !279, size: 64, offset: 320)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !17)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !267, file: !140, line: 140, baseType: !7, size: 32, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !267, file: !140, line: 141, baseType: !210, size: 64, offset: 448)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !139, file: !140, line: 379, baseType: !283, size: 320)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !140, line: 185, size: 320, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !294}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !283, file: !140, line: 186, baseType: !138, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !140, line: 186, baseType: !13, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !283, file: !140, line: 186, baseType: !13, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !283, file: !140, line: 186, baseType: !89, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !140, line: 186, baseType: !13, size: 8, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !283, file: !140, line: 186, baseType: !291, size: 128, offset: 128)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 2)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !283, file: !140, line: 186, baseType: !138, size: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !139, file: !140, line: 380, baseType: !296, size: 384)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !140, line: 188, size: 384, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !296, file: !140, line: 189, baseType: !138, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !140, line: 189, baseType: !13, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !140, line: 189, baseType: !13, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !296, file: !140, line: 189, baseType: !89, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !140, line: 189, baseType: !13, size: 8, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !296, file: !140, line: 190, baseType: !291, size: 128, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !296, file: !140, line: 190, baseType: !138, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !296, file: !140, line: 190, baseType: !306, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !113, line: 480, size: 576, elements: !308)
!308 = !{!309, !310, !311, !312, !320, !335, !368, !369, !370, !371, !372, !373}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !307, file: !113, line: 481, baseType: !134, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !307, file: !113, line: 482, baseType: !306, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !113, line: 483, baseType: !306, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !307, file: !113, line: 484, baseType: !313, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !113, line: 497, size: 256, elements: !315)
!315 = !{!316, !317, !318, !319}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !314, file: !113, line: 498, baseType: !313, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !113, line: 499, baseType: !313, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !314, file: !113, line: 500, baseType: !306, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !314, file: !113, line: 501, baseType: !7, size: 32, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !307, file: !113, line: 485, baseType: !321, size: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !113, line: 466, size: 320, elements: !323)
!323 = !{!324, !329, !330, !331, !332, !333, !334}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !322, file: !113, line: 467, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !113, line: 459, size: 128, elements: !326)
!326 = !{!327, !328}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !325, file: !113, line: 460, baseType: !13, size: 8)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !325, file: !113, line: 461, baseType: !17, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !322, file: !113, line: 468, baseType: !325, size: 128, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !322, file: !113, line: 469, baseType: !89, size: 16, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !322, file: !113, line: 470, baseType: !13, size: 8, offset: 272)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !322, file: !113, line: 471, baseType: !13, size: 8, offset: 280)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !322, file: !113, line: 472, baseType: !13, size: 8, offset: 288)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !322, file: !113, line: 473, baseType: !13, size: 8, offset: 296)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !307, file: !113, line: 486, baseType: !336, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !113, line: 448, size: 192, elements: !338)
!338 = !{!339, !363, !364, !365, !366, !367}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !337, file: !113, line: 449, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !113, line: 438, size: 64, elements: !341)
!341 = !{!342, !343, !357}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !340, file: !113, line: 439, baseType: !134, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !340, file: !113, line: 440, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !113, line: 419, size: 256, elements: !346)
!346 = !{!347, !353, !354, !355, !356}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !345, file: !113, line: 420, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!7, !352, !7, !210}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !210)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !345, file: !113, line: 421, baseType: !210, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !345, file: !113, line: 422, baseType: !134, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !345, file: !113, line: 423, baseType: !13, size: 8, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !345, file: !113, line: 424, baseType: !13, size: 8, offset: 200)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !340, file: !113, line: 441, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !113, line: 429, size: 128, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !359, file: !113, line: 430, baseType: !134, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !113, line: 431, baseType: !358, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !337, file: !113, line: 450, baseType: !321, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !113, line: 451, baseType: !13, size: 8, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !337, file: !113, line: 452, baseType: !13, size: 8, offset: 136)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !337, file: !113, line: 453, baseType: !13, size: 8, offset: 144)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !337, file: !113, line: 454, baseType: !13, size: 8, offset: 152)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !307, file: !113, line: 487, baseType: !17, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !307, file: !113, line: 488, baseType: !7, size: 32, offset: 448)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !307, file: !113, line: 489, baseType: !89, size: 16, offset: 480)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !307, file: !113, line: 490, baseType: !89, size: 16, offset: 496)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !307, file: !113, line: 491, baseType: !13, size: 8, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !307, file: !113, line: 492, baseType: !13, size: 8, offset: 520)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !139, file: !140, line: 381, baseType: !375, size: 384)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !140, line: 193, size: 384, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !375, file: !140, line: 194, baseType: !138, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !375, file: !140, line: 194, baseType: !13, size: 8, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !375, file: !140, line: 194, baseType: !13, size: 8, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !375, file: !140, line: 194, baseType: !89, size: 16, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !140, line: 194, baseType: !13, size: 8, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !375, file: !140, line: 194, baseType: !291, size: 128, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !375, file: !140, line: 194, baseType: !138, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !375, file: !140, line: 194, baseType: !7, size: 32, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !375, file: !140, line: 195, baseType: !7, size: 32, offset: 352)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !139, file: !140, line: 382, baseType: !387, size: 384)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !140, line: 198, size: 384, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !387, file: !140, line: 199, baseType: !138, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !387, file: !140, line: 199, baseType: !13, size: 8, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !387, file: !140, line: 199, baseType: !13, size: 8, offset: 72)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !387, file: !140, line: 199, baseType: !89, size: 16, offset: 80)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !140, line: 199, baseType: !13, size: 8, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !387, file: !140, line: 201, baseType: !13, size: 8, offset: 104)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !387, file: !140, line: 202, baseType: !13, size: 8, offset: 112)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !387, file: !140, line: 203, baseType: !291, size: 128, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !387, file: !140, line: 203, baseType: !138, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !387, file: !140, line: 203, baseType: !399, size: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !17)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !139, file: !140, line: 383, baseType: !401, size: 320)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !140, line: 206, size: 320, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !401, file: !140, line: 207, baseType: !138, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !401, file: !140, line: 207, baseType: !13, size: 8, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !401, file: !140, line: 207, baseType: !13, size: 8, offset: 72)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !401, file: !140, line: 207, baseType: !89, size: 16, offset: 80)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !140, line: 207, baseType: !13, size: 8, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !401, file: !140, line: 207, baseType: !291, size: 128, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !401, file: !140, line: 207, baseType: !138, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !139, file: !140, line: 384, baseType: !411, size: 384)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !140, line: 234, size: 384, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !411, file: !140, line: 235, baseType: !138, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !411, file: !140, line: 235, baseType: !13, size: 8, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !411, file: !140, line: 235, baseType: !13, size: 8, offset: 72)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !411, file: !140, line: 235, baseType: !89, size: 16, offset: 80)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !140, line: 235, baseType: !13, size: 8, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !411, file: !140, line: 235, baseType: !13, size: 8, offset: 104)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !411, file: !140, line: 235, baseType: !13, size: 8, offset: 112)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !411, file: !140, line: 235, baseType: !13, size: 8, offset: 120)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !411, file: !140, line: 235, baseType: !134, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !411, file: !140, line: 235, baseType: !7, size: 32, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !411, file: !140, line: 235, baseType: !7, size: 32, offset: 224)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !411, file: !140, line: 235, baseType: !7, size: 32, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !411, file: !140, line: 235, baseType: !13, size: 8, offset: 288)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !411, file: !140, line: 235, baseType: !13, size: 8, offset: 296)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !411, file: !140, line: 235, baseType: !138, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !139, file: !140, line: 385, baseType: !429, size: 576)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !140, line: 238, size: 576, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !429, file: !140, line: 239, baseType: !138, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !429, file: !140, line: 239, baseType: !13, size: 8, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !429, file: !140, line: 239, baseType: !13, size: 8, offset: 72)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !429, file: !140, line: 239, baseType: !89, size: 16, offset: 80)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !429, file: !140, line: 239, baseType: !13, size: 8, offset: 96)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !429, file: !140, line: 239, baseType: !13, size: 8, offset: 104)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !429, file: !140, line: 239, baseType: !13, size: 8, offset: 112)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !429, file: !140, line: 239, baseType: !13, size: 8, offset: 120)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !429, file: !140, line: 239, baseType: !134, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !429, file: !140, line: 239, baseType: !7, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !429, file: !140, line: 239, baseType: !7, size: 32, offset: 224)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !429, file: !140, line: 239, baseType: !7, size: 32, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !429, file: !140, line: 239, baseType: !13, size: 8, offset: 288)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !429, file: !140, line: 239, baseType: !13, size: 8, offset: 296)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !429, file: !140, line: 239, baseType: !89, size: 16, offset: 304)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !429, file: !140, line: 240, baseType: !138, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !429, file: !140, line: 241, baseType: !106, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !429, file: !140, line: 242, baseType: !89, size: 16, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !429, file: !140, line: 243, baseType: !106, size: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !139, file: !140, line: 386, baseType: !451, size: 384)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !140, line: 263, size: 384, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !451, file: !140, line: 264, baseType: !138, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !451, file: !140, line: 264, baseType: !13, size: 8, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !451, file: !140, line: 264, baseType: !13, size: 8, offset: 72)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !451, file: !140, line: 264, baseType: !89, size: 16, offset: 80)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !140, line: 264, baseType: !13, size: 8, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !451, file: !140, line: 264, baseType: !13, size: 8, offset: 104)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !451, file: !140, line: 264, baseType: !13, size: 8, offset: 112)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !451, file: !140, line: 264, baseType: !13, size: 8, offset: 120)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !140, line: 264, baseType: !134, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !451, file: !140, line: 264, baseType: !7, size: 32, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !451, file: !140, line: 264, baseType: !7, size: 32, offset: 224)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !451, file: !140, line: 264, baseType: !7, size: 32, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !451, file: !140, line: 264, baseType: !13, size: 8, offset: 288)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !451, file: !140, line: 264, baseType: !13, size: 8, offset: 296)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !451, file: !140, line: 264, baseType: !13, size: 8, offset: 304)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !451, file: !140, line: 265, baseType: !138, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !139, file: !140, line: 387, baseType: !470, size: 448)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !140, line: 246, size: 448, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !470, file: !140, line: 247, baseType: !138, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !140, line: 247, baseType: !13, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !140, line: 247, baseType: !13, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !470, file: !140, line: 247, baseType: !89, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !140, line: 247, baseType: !13, size: 8, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !470, file: !140, line: 247, baseType: !13, size: 8, offset: 104)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !470, file: !140, line: 247, baseType: !13, size: 8, offset: 112)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !470, file: !140, line: 247, baseType: !13, size: 8, offset: 120)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !470, file: !140, line: 247, baseType: !134, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !470, file: !140, line: 247, baseType: !7, size: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !470, file: !140, line: 247, baseType: !7, size: 32, offset: 224)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !470, file: !140, line: 247, baseType: !7, size: 32, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !470, file: !140, line: 247, baseType: !13, size: 8, offset: 288)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !470, file: !140, line: 247, baseType: !13, size: 8, offset: 296)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !470, file: !140, line: 247, baseType: !138, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !470, file: !140, line: 248, baseType: !138, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !139, file: !140, line: 388, baseType: !489, size: 448)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !140, line: 251, size: 448, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !489, file: !140, line: 252, baseType: !138, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !489, file: !140, line: 252, baseType: !13, size: 8, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !140, line: 252, baseType: !13, size: 8, offset: 72)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !489, file: !140, line: 252, baseType: !89, size: 16, offset: 80)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !140, line: 252, baseType: !13, size: 8, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !489, file: !140, line: 252, baseType: !13, size: 8, offset: 104)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !489, file: !140, line: 252, baseType: !13, size: 8, offset: 112)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !489, file: !140, line: 252, baseType: !13, size: 8, offset: 120)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !489, file: !140, line: 252, baseType: !134, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !489, file: !140, line: 252, baseType: !7, size: 32, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !489, file: !140, line: 252, baseType: !7, size: 32, offset: 224)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !489, file: !140, line: 252, baseType: !7, size: 32, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !489, file: !140, line: 252, baseType: !13, size: 8, offset: 288)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !489, file: !140, line: 252, baseType: !13, size: 8, offset: 296)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !489, file: !140, line: 257, baseType: !138, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !489, file: !140, line: 258, baseType: !138, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !139, file: !140, line: 389, baseType: !508, size: 512)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !140, line: 274, size: 512, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !515, !516, !517, !522, !523}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !508, file: !140, line: 275, baseType: !138, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !140, line: 275, baseType: !13, size: 8, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !140, line: 275, baseType: !13, size: 8, offset: 72)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !508, file: !140, line: 275, baseType: !89, size: 16, offset: 80)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !140, line: 275, baseType: !13, size: 8, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !140, line: 275, baseType: !134, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !508, file: !140, line: 276, baseType: !7, size: 32, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !508, file: !140, line: 277, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !352, !7, !210}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !508, file: !140, line: 278, baseType: !210, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !140, line: 279, baseType: !291, size: 128, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !139, file: !140, line: 390, baseType: !525, size: 576)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !140, line: 282, size: 576, elements: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !539, !540, !541, !542, !548, !549}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !525, file: !140, line: 283, baseType: !138, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !525, file: !140, line: 283, baseType: !13, size: 8, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !525, file: !140, line: 283, baseType: !13, size: 8, offset: 72)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !525, file: !140, line: 283, baseType: !89, size: 16, offset: 80)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !525, file: !140, line: 283, baseType: !13, size: 8, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !525, file: !140, line: 283, baseType: !13, size: 8, offset: 104)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !525, file: !140, line: 284, baseType: !13, size: 8, offset: 112)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !525, file: !140, line: 285, baseType: !535, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!5, !7, !279, !7, !20, !210, !210}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !525, file: !140, line: 286, baseType: !134, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !525, file: !140, line: 287, baseType: !210, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !525, file: !140, line: 288, baseType: !210, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !525, file: !140, line: 289, baseType: !543, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!5, !352, !7, !210, !547}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !525, file: !140, line: 290, baseType: !138, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !525, file: !140, line: 291, baseType: !138, size: 64, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !139, file: !140, line: 391, baseType: !551, size: 512)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !140, line: 309, size: 512, elements: !552)
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !551, file: !140, line: 310, baseType: !138, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !551, file: !140, line: 310, baseType: !13, size: 8, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !551, file: !140, line: 310, baseType: !13, size: 8, offset: 72)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !551, file: !140, line: 310, baseType: !89, size: 16, offset: 80)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !140, line: 310, baseType: !13, size: 8, offset: 96)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !551, file: !140, line: 310, baseType: !13, size: 8, offset: 104)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !551, file: !140, line: 311, baseType: !13, size: 8, offset: 112)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !551, file: !140, line: 312, baseType: !13, size: 8, offset: 120)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !551, file: !140, line: 313, baseType: !210, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !551, file: !140, line: 314, baseType: !134, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !551, file: !140, line: 315, baseType: !197, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !551, file: !140, line: 316, baseType: !106, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !551, file: !140, line: 317, baseType: !106, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !551, file: !140, line: 318, baseType: !7, size: 32, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !139, file: !140, line: 392, baseType: !568, size: 448)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !140, line: 342, size: 448, elements: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !568, file: !140, line: 343, baseType: !138, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !568, file: !140, line: 343, baseType: !13, size: 8, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !568, file: !140, line: 343, baseType: !13, size: 8, offset: 72)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !568, file: !140, line: 343, baseType: !89, size: 16, offset: 80)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !140, line: 343, baseType: !13, size: 8, offset: 96)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !568, file: !140, line: 343, baseType: !134, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !568, file: !140, line: 344, baseType: !134, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !568, file: !140, line: 345, baseType: !210, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !568, file: !140, line: 346, baseType: !106, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !568, file: !140, line: 347, baseType: !7, size: 32, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !139, file: !140, line: 393, baseType: !581, size: 256)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !140, line: 352, size: 256, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !593}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !140, line: 353, baseType: !138, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !140, line: 353, baseType: !13, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !140, line: 353, baseType: !13, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !140, line: 353, baseType: !89, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !140, line: 353, baseType: !13, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !581, file: !140, line: 353, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !352, !210}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !581, file: !140, line: 354, baseType: !210, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !139, file: !140, line: 394, baseType: !595, size: 192)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !140, line: 359, size: 192, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !595, file: !140, line: 360, baseType: !138, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !595, file: !140, line: 360, baseType: !13, size: 8, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !140, line: 360, baseType: !13, size: 8, offset: 72)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !595, file: !140, line: 360, baseType: !89, size: 16, offset: 80)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !140, line: 360, baseType: !13, size: 8, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !595, file: !140, line: 360, baseType: !138, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !140, line: 401, baseType: !135, size: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !135, file: !113, line: 135, baseType: !13, size: 8, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !113, line: 136, baseType: !13, size: 8, offset: 72)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !135, file: !113, line: 137, baseType: !89, size: 16, offset: 80)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !113, line: 138, baseType: !608, size: 32, offset: 96)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !609, line: 328, size: 32, elements: !610)
!609 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !608, file: !609, line: 329, baseType: !7, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !608, file: !609, line: 330, baseType: !613, size: 32)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 4)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !135, file: !113, line: 139, baseType: !134, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !135, file: !113, line: 140, baseType: !134, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !135, file: !113, line: 141, baseType: !134, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !135, file: !113, line: 142, baseType: !96, size: 16, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !125, file: !113, line: 845, baseType: !621, size: 64, offset: 320)
!621 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !113, line: 732, size: 64, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !621, file: !113, line: 733, baseType: !17, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !621, file: !113, line: 734, baseType: !7, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !621, file: !113, line: 735, baseType: !172, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !621, file: !113, line: 736, baseType: !106, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !113, line: 737, baseType: !172, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !621, file: !113, line: 738, baseType: !121, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !125, file: !113, line: 845, baseType: !13, size: 8, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !122, file: !113, line: 893, baseType: !631, size: 640)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !113, line: 851, size: 640, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !631, file: !113, line: 852, baseType: !121, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !113, line: 852, baseType: !13, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !113, line: 852, baseType: !13, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !631, file: !113, line: 852, baseType: !89, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !631, file: !113, line: 852, baseType: !106, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !113, line: 852, baseType: !121, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !113, line: 852, baseType: !134, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !631, file: !113, line: 852, baseType: !621, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !631, file: !113, line: 852, baseType: !13, size: 8, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !631, file: !113, line: 852, baseType: !172, size: 64, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !631, file: !113, line: 853, baseType: !106, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !631, file: !113, line: 854, baseType: !7, size: 32, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !631, file: !113, line: 855, baseType: !7, size: 32, offset: 608)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !122, file: !113, line: 894, baseType: !647, size: 1600)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !113, line: 862, size: 1600, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !647, file: !113, line: 863, baseType: !121, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !647, file: !113, line: 863, baseType: !13, size: 8, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !113, line: 863, baseType: !13, size: 8, offset: 72)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !647, file: !113, line: 863, baseType: !89, size: 16, offset: 80)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !647, file: !113, line: 863, baseType: !106, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !647, file: !113, line: 863, baseType: !121, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !647, file: !113, line: 863, baseType: !134, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !647, file: !113, line: 863, baseType: !621, size: 64, offset: 320)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !647, file: !113, line: 863, baseType: !13, size: 8, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !647, file: !113, line: 863, baseType: !121, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !647, file: !113, line: 864, baseType: !121, size: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !647, file: !113, line: 865, baseType: !172, size: 64, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !647, file: !113, line: 866, baseType: !13, size: 8, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !647, file: !113, line: 867, baseType: !172, size: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !647, file: !113, line: 868, baseType: !172, size: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !647, file: !113, line: 869, baseType: !172, size: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !647, file: !113, line: 870, baseType: !613, size: 32, offset: 896)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !647, file: !113, line: 871, baseType: !7, size: 32, offset: 928)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !647, file: !113, line: 872, baseType: !7, size: 32, offset: 960)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !647, file: !113, line: 873, baseType: !7, size: 32, offset: 992)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !647, file: !113, line: 874, baseType: !7, size: 32, offset: 1024)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !647, file: !113, line: 875, baseType: !7, size: 32, offset: 1056)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !647, file: !113, line: 876, baseType: !7, size: 32, offset: 1088)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !647, file: !113, line: 877, baseType: !7, size: 32, offset: 1120)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !647, file: !113, line: 878, baseType: !7, size: 32, offset: 1152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !647, file: !113, line: 879, baseType: !7, size: 32, offset: 1184)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !647, file: !113, line: 880, baseType: !7, size: 32, offset: 1216)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !647, file: !113, line: 881, baseType: !7, size: 32, offset: 1248)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !647, file: !113, line: 882, baseType: !7, size: 32, offset: 1280)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !647, file: !113, line: 883, baseType: !7, size: 32, offset: 1312)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !647, file: !113, line: 884, baseType: !89, size: 16, offset: 1344)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !647, file: !113, line: 885, baseType: !13, size: 8, offset: 1360)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !647, file: !113, line: 886, baseType: !13, size: 8, offset: 1368)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !647, file: !113, line: 887, baseType: !13, size: 8, offset: 1376)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !647, file: !113, line: 888, baseType: !684, size: 160, offset: 1384)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 160, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 20)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !112, file: !113, line: 916, baseType: !134, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !112, file: !113, line: 917, baseType: !689, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !113, line: 679, size: 640, elements: !691)
!691 = !{!692, !700, !713, !722, !731, !744, !758, !759, !769}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !690, file: !113, line: 680, baseType: !693, size: 128)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !113, line: 575, size: 128, elements: !694)
!694 = !{!695, !696, !697, !698, !699}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !693, file: !113, line: 576, baseType: !210, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !113, line: 576, baseType: !13, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !113, line: 576, baseType: !13, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !693, file: !113, line: 576, baseType: !89, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !693, file: !113, line: 576, baseType: !89, size: 16, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !690, file: !113, line: 681, baseType: !701, size: 384)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !113, line: 604, size: 384, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !701, file: !113, line: 605, baseType: !210, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !701, file: !113, line: 605, baseType: !13, size: 8, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !113, line: 605, baseType: !13, size: 8, offset: 72)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !701, file: !113, line: 605, baseType: !89, size: 16, offset: 80)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !701, file: !113, line: 605, baseType: !89, size: 16, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !701, file: !113, line: 606, baseType: !89, size: 16, offset: 112)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !701, file: !113, line: 607, baseType: !121, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !701, file: !113, line: 608, baseType: !106, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !701, file: !113, line: 609, baseType: !106, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !701, file: !113, line: 610, baseType: !17, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !690, file: !113, line: 682, baseType: !714, size: 192)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !113, line: 582, size: 192, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !113, line: 583, baseType: !210, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !714, file: !113, line: 583, baseType: !13, size: 8, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !113, line: 583, baseType: !13, size: 8, offset: 72)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !714, file: !113, line: 583, baseType: !89, size: 16, offset: 80)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !714, file: !113, line: 583, baseType: !89, size: 16, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !714, file: !113, line: 584, baseType: !138, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !690, file: !113, line: 683, baseType: !723, size: 192)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !113, line: 616, size: 192, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !723, file: !113, line: 617, baseType: !210, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !113, line: 617, baseType: !13, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !113, line: 617, baseType: !13, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !723, file: !113, line: 617, baseType: !89, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !723, file: !113, line: 617, baseType: !89, size: 16, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !113, line: 618, baseType: !134, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !690, file: !113, line: 684, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !113, line: 621, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !113, line: 622, baseType: !210, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !113, line: 622, baseType: !13, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !113, line: 622, baseType: !13, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !732, file: !113, line: 622, baseType: !89, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !732, file: !113, line: 622, baseType: !89, size: 16, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !732, file: !113, line: 623, baseType: !7, size: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !732, file: !113, line: 624, baseType: !121, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !732, file: !113, line: 625, baseType: !106, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !732, file: !113, line: 626, baseType: !106, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !732, file: !113, line: 627, baseType: !7, size: 32, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !690, file: !113, line: 685, baseType: !745, size: 512)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !113, line: 590, size: 512, elements: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !113, line: 591, baseType: !210, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !745, file: !113, line: 591, baseType: !13, size: 8, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !113, line: 591, baseType: !13, size: 8, offset: 72)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !113, line: 591, baseType: !89, size: 16, offset: 80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !745, file: !113, line: 591, baseType: !89, size: 16, offset: 96)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !745, file: !113, line: 592, baseType: !7, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !745, file: !113, line: 593, baseType: !138, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !745, file: !113, line: 594, baseType: !138, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !745, file: !113, line: 595, baseType: !81, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !745, file: !113, line: 596, baseType: !210, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !745, file: !113, line: 597, baseType: !7, size: 32, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !690, file: !113, line: 686, baseType: !251, size: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !690, file: !113, line: 687, baseType: !760, size: 640)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !113, line: 646, size: 640, elements: !761)
!761 = !{!762, !763, !764, !765, !766, !767}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !760, file: !113, line: 647, baseType: !210, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !760, file: !113, line: 647, baseType: !13, size: 8, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !113, line: 647, baseType: !13, size: 8, offset: 72)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !760, file: !113, line: 647, baseType: !89, size: 16, offset: 80)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !760, file: !113, line: 647, baseType: !89, size: 16, offset: 96)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !760, file: !113, line: 648, baseType: !768, size: 512, offset: 128)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 512, elements: !32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !690, file: !113, line: 688, baseType: !770, size: 320)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !113, line: 669, size: 320, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !770, file: !113, line: 670, baseType: !210, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !770, file: !113, line: 670, baseType: !13, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !113, line: 670, baseType: !13, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !770, file: !113, line: 670, baseType: !89, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !770, file: !113, line: 670, baseType: !89, size: 16, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !770, file: !113, line: 671, baseType: !13, size: 8, offset: 112)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !770, file: !113, line: 672, baseType: !134, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !770, file: !113, line: 673, baseType: !138, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !770, file: !113, line: 674, baseType: !781, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !113, line: 660, size: 128, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !782, file: !113, line: 661, baseType: !518, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !782, file: !113, line: 662, baseType: !210, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !112, file: !113, line: 918, baseType: !121, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !112, file: !113, line: 919, baseType: !7, size: 32, offset: 576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !82, file: !83, line: 61, baseType: !7, size: 32, offset: 1088)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !82, file: !83, line: 62, baseType: !7, size: 32, offset: 1120)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !82, file: !83, line: 63, baseType: !89, size: 16, offset: 1152)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !82, file: !83, line: 64, baseType: !13, size: 8, offset: 1168)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !82, file: !83, line: 66, baseType: !793, size: 2688, offset: 1216)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 2688, elements: !794)
!794 = !{!795}
!795 = !DISubrange(count: 7)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !82, file: !83, line: 67, baseType: !797, size: 3072, offset: 3904)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 3072, elements: !32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !82, file: !83, line: 68, baseType: !799, size: 576, offset: 6976)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 576, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 9)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !82, file: !83, line: 69, baseType: !197, size: 64, offset: 7552)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !82, file: !83, line: 71, baseType: !106, size: 64, offset: 7616)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !82, file: !83, line: 72, baseType: !197, size: 64, offset: 7680)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !82, file: !83, line: 73, baseType: !689, size: 64, offset: 7744)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !82, file: !83, line: 74, baseType: !134, size: 64, offset: 7808)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !82, file: !83, line: 75, baseType: !138, size: 64, offset: 7872)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !82, file: !83, line: 76, baseType: !134, size: 64, offset: 7936)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !82, file: !83, line: 77, baseType: !121, size: 64, offset: 8000)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !82, file: !83, line: 78, baseType: !138, size: 64, offset: 8064)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !82, file: !83, line: 79, baseType: !134, size: 64, offset: 8128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !82, file: !83, line: 80, baseType: !172, size: 64, offset: 8192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !82, file: !83, line: 81, baseType: !121, size: 64, offset: 8256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !82, file: !83, line: 82, baseType: !815, size: 64, offset: 8320)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !113, line: 718, size: 128, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !817, file: !113, line: 722, baseType: !7, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !817, file: !113, line: 723, baseType: !7, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !113, line: 724, baseType: !89, size: 16, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !817, file: !113, line: 725, baseType: !13, size: 8, offset: 80)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !817, file: !113, line: 726, baseType: !13, size: 8, offset: 88)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !817, file: !113, line: 727, baseType: !13, size: 8, offset: 96)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !82, file: !83, line: 83, baseType: !121, size: 64, offset: 8384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !82, file: !83, line: 84, baseType: !138, size: 64, offset: 8448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !82, file: !83, line: 85, baseType: !689, size: 64, offset: 8512)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !82, file: !83, line: 86, baseType: !138, size: 64, offset: 8576)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !82, file: !83, line: 87, baseType: !689, size: 64, offset: 8640)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !82, file: !83, line: 88, baseType: !121, size: 64, offset: 8704)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !82, file: !83, line: 89, baseType: !121, size: 64, offset: 8768)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !82, file: !83, line: 90, baseType: !250, size: 64, offset: 8832)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !82, file: !83, line: 91, baseType: !834, size: 64, offset: 8896)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !113, line: 652, baseType: !835)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!5, !81, !838}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !82, file: !83, line: 92, baseType: !840, size: 64, offset: 8960)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !113, line: 656, baseType: !230)
!841 = !{!842, !843, !844, !845, !846, !847, !848, !849}
!842 = !DILocalVariable(name: "walk_state", arg: 1, scope: !78, file: !3, line: 105, type: !81)
!843 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !78, file: !3, line: 106, type: !138)
!844 = !DILocalVariable(name: "ret_buffer_desc", arg: 3, scope: !78, file: !3, line: 107, type: !197)
!845 = !DILocalVariable(name: "status", scope: !78, file: !3, line: 109, type: !5)
!846 = !DILocalVariable(name: "buffer_desc", scope: !78, file: !3, line: 110, type: !138)
!847 = !DILocalVariable(name: "buffer", scope: !78, file: !3, line: 111, type: !210)
!848 = !DILocalVariable(name: "buffer_length", scope: !78, file: !3, line: 112, type: !7)
!849 = !DILabel(scope: !78, name: "exit", file: !3, line: 241)
!850 = !DILocation(line: 105, column: 54, scope: !78)
!851 = !DILocation(line: 106, column: 36, scope: !78)
!852 = !DILocation(line: 107, column: 37, scope: !78)
!853 = !DILocation(line: 109, column: 2, scope: !78)
!854 = !DILocation(line: 109, column: 14, scope: !78)
!855 = !DILocation(line: 110, column: 2, scope: !78)
!856 = !DILocation(line: 110, column: 29, scope: !78)
!857 = !DILocation(line: 111, column: 2, scope: !78)
!858 = !DILocation(line: 111, column: 8, scope: !78)
!859 = !DILocation(line: 112, column: 2, scope: !78)
!860 = !DILocation(line: 112, column: 6, scope: !78)
!861 = !DILocation(line: 118, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !78, file: !3, line: 118, column: 6)
!863 = !DILocation(line: 118, column: 6, scope: !78)
!864 = !DILocation(line: 119, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !3, line: 118, column: 17)
!866 = !DILocation(line: 121, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !78, file: !3, line: 121, column: 6)
!868 = !DILocation(line: 121, column: 6, scope: !78)
!869 = !DILocation(line: 122, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !3, line: 121, column: 24)
!871 = !DILocation(line: 125, column: 6, scope: !872)
!872 = distinct !DILexicalBlock(scope: !78, file: !3, line: 125, column: 6)
!873 = !DILocation(line: 125, column: 23, scope: !872)
!874 = !DILocation(line: 125, column: 28, scope: !872)
!875 = !DILocation(line: 125, column: 6, scope: !78)
!876 = !DILocation(line: 130, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 130, column: 7)
!878 = distinct !DILexicalBlock(scope: !872, file: !3, line: 125, column: 55)
!879 = !DILocation(line: 130, column: 26, scope: !877)
!880 = !DILocation(line: 130, column: 32, scope: !877)
!881 = !DILocation(line: 130, column: 7, scope: !878)
!882 = !DILocation(line: 131, column: 48, scope: !883)
!883 = distinct !DILexicalBlock(scope: !877, file: !3, line: 130, column: 54)
!884 = !DILocation(line: 131, column: 13, scope: !883)
!885 = !DILocation(line: 131, column: 11, scope: !883)
!886 = !DILocation(line: 132, column: 8, scope: !887)
!887 = distinct !DILexicalBlock(scope: !883, file: !3, line: 132, column: 8)
!888 = !DILocation(line: 132, column: 8, scope: !883)
!889 = !DILocation(line: 133, column: 5, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !3, line: 132, column: 30)
!891 = !DILocation(line: 135, column: 3, scope: !883)
!892 = !DILocation(line: 136, column: 2, scope: !878)
!893 = !DILocation(line: 136, column: 14, scope: !894)
!894 = distinct !DILexicalBlock(scope: !872, file: !3, line: 136, column: 13)
!895 = !DILocation(line: 136, column: 31, scope: !894)
!896 = !DILocation(line: 136, column: 36, scope: !894)
!897 = !DILocation(line: 136, column: 69, scope: !894)
!898 = !DILocation(line: 137, column: 7, scope: !894)
!899 = !DILocation(line: 137, column: 23, scope: !894)
!900 = !DILocation(line: 137, column: 42, scope: !894)
!901 = !DILocation(line: 137, column: 51, scope: !894)
!902 = !DILocation(line: 139, column: 7, scope: !894)
!903 = !DILocation(line: 139, column: 10, scope: !894)
!904 = !DILocation(line: 139, column: 26, scope: !894)
!905 = !DILocation(line: 139, column: 45, scope: !894)
!906 = !DILocation(line: 139, column: 54, scope: !894)
!907 = !DILocation(line: 141, column: 7, scope: !894)
!908 = !DILocation(line: 141, column: 10, scope: !894)
!909 = !DILocation(line: 141, column: 26, scope: !894)
!910 = !DILocation(line: 141, column: 45, scope: !894)
!911 = !DILocation(line: 141, column: 54, scope: !894)
!912 = !DILocation(line: 143, column: 7, scope: !894)
!913 = !DILocation(line: 143, column: 10, scope: !894)
!914 = !DILocation(line: 143, column: 26, scope: !894)
!915 = !DILocation(line: 143, column: 45, scope: !894)
!916 = !DILocation(line: 143, column: 54, scope: !894)
!917 = !DILocation(line: 145, column: 7, scope: !894)
!918 = !DILocation(line: 145, column: 10, scope: !894)
!919 = !DILocation(line: 145, column: 26, scope: !894)
!920 = !DILocation(line: 145, column: 45, scope: !894)
!921 = !DILocation(line: 145, column: 54, scope: !894)
!922 = !DILocation(line: 136, column: 13, scope: !872)
!923 = !DILocation(line: 150, column: 36, scope: !924)
!924 = distinct !DILexicalBlock(scope: !894, file: !3, line: 146, column: 39)
!925 = !DILocation(line: 150, column: 46, scope: !924)
!926 = !DILocation(line: 150, column: 12, scope: !924)
!927 = !DILocation(line: 150, column: 10, scope: !924)
!928 = !DILocation(line: 151, column: 3, scope: !924)
!929 = !DILocation(line: 168, column: 17, scope: !78)
!930 = !DILocation(line: 168, column: 6, scope: !78)
!931 = !DILocation(line: 167, column: 16, scope: !78)
!932 = !DILocation(line: 170, column: 6, scope: !933)
!933 = distinct !DILexicalBlock(scope: !78, file: !3, line: 170, column: 6)
!934 = !DILocation(line: 170, column: 22, scope: !933)
!935 = !DILocation(line: 170, column: 20, scope: !933)
!936 = !DILocation(line: 170, column: 50, scope: !933)
!937 = !DILocation(line: 171, column: 7, scope: !933)
!938 = !DILocation(line: 171, column: 24, scope: !933)
!939 = !DILocation(line: 171, column: 29, scope: !933)
!940 = !DILocation(line: 171, column: 55, scope: !933)
!941 = !DILocation(line: 172, column: 7, scope: !933)
!942 = !DILocation(line: 172, column: 30, scope: !933)
!943 = !DILocation(line: 170, column: 6, scope: !78)
!944 = !DILocation(line: 176, column: 46, scope: !945)
!945 = distinct !DILexicalBlock(scope: !933, file: !3, line: 172, column: 48)
!946 = !DILocation(line: 176, column: 17, scope: !945)
!947 = !DILocation(line: 176, column: 15, scope: !945)
!948 = !DILocation(line: 177, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !3, line: 177, column: 7)
!950 = !DILocation(line: 177, column: 7, scope: !945)
!951 = !DILocation(line: 178, column: 4, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 177, column: 21)
!953 = !DILocation(line: 180, column: 12, scope: !945)
!954 = !DILocation(line: 180, column: 32, scope: !945)
!955 = !DILocation(line: 180, column: 10, scope: !945)
!956 = !DILocation(line: 181, column: 2, scope: !945)
!957 = !DILocation(line: 184, column: 17, scope: !958)
!958 = distinct !DILexicalBlock(scope: !933, file: !3, line: 181, column: 9)
!959 = !DILocation(line: 184, column: 15, scope: !958)
!960 = !DILocation(line: 185, column: 8, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 185, column: 7)
!962 = !DILocation(line: 185, column: 7, scope: !958)
!963 = !DILocation(line: 186, column: 4, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 185, column: 21)
!965 = !DILocation(line: 189, column: 19, scope: !958)
!966 = !DILocation(line: 189, column: 17, scope: !958)
!967 = !DILocation(line: 190, column: 13, scope: !958)
!968 = !DILocation(line: 190, column: 34, scope: !958)
!969 = !DILocation(line: 190, column: 10, scope: !958)
!970 = !DILocation(line: 193, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !78, file: !3, line: 193, column: 6)
!972 = !DILocation(line: 193, column: 24, scope: !971)
!973 = !DILocation(line: 193, column: 29, scope: !971)
!974 = !DILocation(line: 193, column: 62, scope: !971)
!975 = !DILocation(line: 194, column: 7, scope: !971)
!976 = !DILocation(line: 194, column: 23, scope: !971)
!977 = !DILocation(line: 194, column: 42, scope: !971)
!978 = !DILocation(line: 194, column: 51, scope: !971)
!979 = !DILocation(line: 193, column: 6, scope: !78)
!980 = !DILocation(line: 199, column: 30, scope: !981)
!981 = distinct !DILexicalBlock(scope: !971, file: !3, line: 195, column: 29)
!982 = !DILocation(line: 199, column: 40, scope: !981)
!983 = !DILocation(line: 199, column: 12, scope: !981)
!984 = !DILocation(line: 199, column: 10, scope: !981)
!985 = !DILocation(line: 200, column: 3, scope: !981)
!986 = !DILocation(line: 201, column: 14, scope: !987)
!987 = distinct !DILexicalBlock(scope: !971, file: !3, line: 201, column: 13)
!988 = !DILocation(line: 201, column: 31, scope: !987)
!989 = !DILocation(line: 201, column: 36, scope: !987)
!990 = !DILocation(line: 201, column: 69, scope: !987)
!991 = !DILocation(line: 202, column: 7, scope: !987)
!992 = !DILocation(line: 202, column: 23, scope: !987)
!993 = !DILocation(line: 202, column: 42, scope: !987)
!994 = !DILocation(line: 202, column: 51, scope: !987)
!995 = !DILocation(line: 201, column: 13, scope: !971)
!996 = !DILocation(line: 212, column: 10, scope: !997)
!997 = distinct !DILexicalBlock(scope: !987, file: !3, line: 203, column: 38)
!998 = !DILocation(line: 213, column: 10, scope: !997)
!999 = !DILocation(line: 213, column: 26, scope: !997)
!1000 = !DILocation(line: 213, column: 44, scope: !997)
!1001 = !DILocation(line: 214, column: 10, scope: !997)
!1002 = !DILocation(line: 214, column: 26, scope: !997)
!1003 = !DILocation(line: 213, column: 64, scope: !997)
!1004 = !DILocation(line: 215, column: 21, scope: !997)
!1005 = !DILocation(line: 215, column: 10, scope: !997)
!1006 = !DILocation(line: 212, column: 3, scope: !997)
!1007 = !DILocation(line: 218, column: 22, scope: !997)
!1008 = !DILocation(line: 218, column: 4, scope: !997)
!1009 = !DILocation(line: 218, column: 20, scope: !997)
!1010 = !DILocation(line: 219, column: 3, scope: !997)
!1011 = !DILocation(line: 234, column: 30, scope: !78)
!1012 = !DILocation(line: 234, column: 53, scope: !78)
!1013 = !DILocation(line: 234, column: 2, scope: !78)
!1014 = !DILocation(line: 238, column: 38, scope: !78)
!1015 = !DILocation(line: 238, column: 48, scope: !78)
!1016 = !DILocation(line: 238, column: 56, scope: !78)
!1017 = !DILocation(line: 238, column: 11, scope: !78)
!1018 = !DILocation(line: 238, column: 9, scope: !78)
!1019 = !DILocation(line: 239, column: 30, scope: !78)
!1020 = !DILocation(line: 239, column: 53, scope: !78)
!1021 = !DILocation(line: 239, column: 2, scope: !78)
!1022 = !DILocation(line: 241, column: 1, scope: !78)
!1023 = !DILocation(line: 242, column: 6, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !78, file: !3, line: 242, column: 6)
!1025 = !DILocation(line: 242, column: 6, scope: !78)
!1026 = !DILocation(line: 243, column: 28, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 242, column: 28)
!1028 = !DILocation(line: 243, column: 3, scope: !1027)
!1029 = !DILocation(line: 244, column: 2, scope: !1027)
!1030 = !DILocation(line: 245, column: 22, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 244, column: 9)
!1032 = !DILocation(line: 245, column: 4, scope: !1031)
!1033 = !DILocation(line: 245, column: 20, scope: !1031)
!1034 = !DILocation(line: 248, column: 2, scope: !78)
!1035 = !DILocation(line: 249, column: 1, scope: !78)
!1036 = !DISubprogram(name: "acpi_ds_get_buffer_field_arguments", scope: !1037, file: !1037, line: 20, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!5, !138}
!1040 = !DISubprogram(name: "acpi_ex_read_serial_bus", scope: !1041, file: !1041, line: 277, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!5, !138, !197}
!1044 = !DISubprogram(name: "acpi_ut_create_buffer_object", scope: !1045, file: !1045, line: 457, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1045 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!138, !16}
!1048 = !DISubprogram(name: "acpi_ut_create_integer_object", scope: !1045, file: !1045, line: 455, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!138, !17}
!1051 = !DISubprogram(name: "acpi_ex_read_gpio", scope: !1041, file: !1041, line: 286, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!5, !138, !210}
!1054 = !DISubprogram(name: "acpi_ex_acquire_global_lock", scope: !1041, file: !1041, line: 470, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !7}
!1057 = !DISubprogram(name: "acpi_ex_extract_from_field", scope: !1041, file: !1041, line: 164, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!5, !138, !210, !7}
!1060 = !DISubprogram(name: "acpi_ex_release_global_lock", scope: !1041, file: !1041, line: 472, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1061 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1045, file: !1045, line: 369, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !138}
!1064 = distinct !DISubprogram(name: "acpi_ex_write_data_to_field", scope: !3, file: !3, line: 266, type: !1065, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!5, !138, !138, !197}
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1068 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1064, file: !3, line: 266, type: !138)
!1069 = !DILocalVariable(name: "obj_desc", arg: 2, scope: !1064, file: !3, line: 267, type: !138)
!1070 = !DILocalVariable(name: "result_desc", arg: 3, scope: !1064, file: !3, line: 268, type: !197)
!1071 = !DILocalVariable(name: "status", scope: !1064, file: !3, line: 270, type: !5)
!1072 = !DILocalVariable(name: "buffer_length", scope: !1064, file: !3, line: 271, type: !7)
!1073 = !DILocalVariable(name: "data_length", scope: !1064, file: !3, line: 272, type: !7)
!1074 = !DILocalVariable(name: "buffer", scope: !1064, file: !3, line: 273, type: !210)
!1075 = !DILocation(line: 266, column: 56, scope: !1064)
!1076 = !DILocation(line: 267, column: 35, scope: !1064)
!1077 = !DILocation(line: 268, column: 36, scope: !1064)
!1078 = !DILocation(line: 270, column: 2, scope: !1064)
!1079 = !DILocation(line: 270, column: 14, scope: !1064)
!1080 = !DILocation(line: 271, column: 2, scope: !1064)
!1081 = !DILocation(line: 271, column: 6, scope: !1064)
!1082 = !DILocation(line: 272, column: 2, scope: !1064)
!1083 = !DILocation(line: 272, column: 6, scope: !1064)
!1084 = !DILocation(line: 273, column: 2, scope: !1064)
!1085 = !DILocation(line: 273, column: 8, scope: !1064)
!1086 = !DILocation(line: 279, column: 7, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 279, column: 6)
!1088 = !DILocation(line: 279, column: 19, scope: !1087)
!1089 = !DILocation(line: 279, column: 23, scope: !1087)
!1090 = !DILocation(line: 279, column: 6, scope: !1064)
!1091 = !DILocation(line: 280, column: 3, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 279, column: 33)
!1093 = !DILocation(line: 283, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 283, column: 6)
!1095 = !DILocation(line: 283, column: 23, scope: !1094)
!1096 = !DILocation(line: 283, column: 28, scope: !1094)
!1097 = !DILocation(line: 283, column: 6, scope: !1064)
!1098 = !DILocation(line: 288, column: 9, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 288, column: 7)
!1100 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 283, column: 55)
!1101 = !DILocation(line: 288, column: 26, scope: !1099)
!1102 = !DILocation(line: 288, column: 32, scope: !1099)
!1103 = !DILocation(line: 288, column: 7, scope: !1100)
!1104 = !DILocation(line: 289, column: 48, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 288, column: 54)
!1106 = !DILocation(line: 289, column: 13, scope: !1105)
!1107 = !DILocation(line: 289, column: 11, scope: !1105)
!1108 = !DILocation(line: 290, column: 8, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 290, column: 8)
!1110 = !DILocation(line: 290, column: 8, scope: !1105)
!1111 = !DILocation(line: 291, column: 5, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 290, column: 30)
!1113 = !DILocation(line: 293, column: 3, scope: !1105)
!1114 = !DILocation(line: 294, column: 2, scope: !1100)
!1115 = !DILocation(line: 294, column: 14, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 294, column: 13)
!1117 = !DILocation(line: 294, column: 31, scope: !1116)
!1118 = !DILocation(line: 294, column: 36, scope: !1116)
!1119 = !DILocation(line: 294, column: 69, scope: !1116)
!1120 = !DILocation(line: 295, column: 7, scope: !1116)
!1121 = !DILocation(line: 295, column: 23, scope: !1116)
!1122 = !DILocation(line: 295, column: 42, scope: !1116)
!1123 = !DILocation(line: 295, column: 51, scope: !1116)
!1124 = !DILocation(line: 294, column: 13, scope: !1094)
!1125 = !DILocation(line: 300, column: 31, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 296, column: 29)
!1127 = !DILocation(line: 300, column: 44, scope: !1126)
!1128 = !DILocation(line: 300, column: 54, scope: !1126)
!1129 = !DILocation(line: 300, column: 12, scope: !1126)
!1130 = !DILocation(line: 300, column: 10, scope: !1126)
!1131 = !DILocation(line: 301, column: 3, scope: !1126)
!1132 = !DILocation(line: 302, column: 14, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 302, column: 13)
!1134 = !DILocation(line: 302, column: 31, scope: !1133)
!1135 = !DILocation(line: 302, column: 36, scope: !1133)
!1136 = !DILocation(line: 302, column: 69, scope: !1133)
!1137 = !DILocation(line: 303, column: 7, scope: !1133)
!1138 = !DILocation(line: 303, column: 23, scope: !1133)
!1139 = !DILocation(line: 303, column: 42, scope: !1133)
!1140 = !DILocation(line: 303, column: 51, scope: !1133)
!1141 = !DILocation(line: 305, column: 7, scope: !1133)
!1142 = !DILocation(line: 305, column: 10, scope: !1133)
!1143 = !DILocation(line: 305, column: 26, scope: !1133)
!1144 = !DILocation(line: 305, column: 45, scope: !1133)
!1145 = !DILocation(line: 305, column: 54, scope: !1133)
!1146 = !DILocation(line: 307, column: 7, scope: !1133)
!1147 = !DILocation(line: 307, column: 10, scope: !1133)
!1148 = !DILocation(line: 307, column: 26, scope: !1133)
!1149 = !DILocation(line: 307, column: 45, scope: !1133)
!1150 = !DILocation(line: 307, column: 54, scope: !1133)
!1151 = !DILocation(line: 309, column: 7, scope: !1133)
!1152 = !DILocation(line: 309, column: 10, scope: !1133)
!1153 = !DILocation(line: 309, column: 26, scope: !1133)
!1154 = !DILocation(line: 309, column: 45, scope: !1133)
!1155 = !DILocation(line: 309, column: 54, scope: !1133)
!1156 = !DILocation(line: 311, column: 7, scope: !1133)
!1157 = !DILocation(line: 311, column: 10, scope: !1133)
!1158 = !DILocation(line: 311, column: 26, scope: !1133)
!1159 = !DILocation(line: 311, column: 45, scope: !1133)
!1160 = !DILocation(line: 311, column: 54, scope: !1133)
!1161 = !DILocation(line: 302, column: 13, scope: !1116)
!1162 = !DILocation(line: 317, column: 32, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 312, column: 39)
!1164 = !DILocation(line: 317, column: 45, scope: !1163)
!1165 = !DILocation(line: 318, column: 11, scope: !1163)
!1166 = !DILocation(line: 317, column: 7, scope: !1163)
!1167 = !DILocation(line: 316, column: 10, scope: !1163)
!1168 = !DILocation(line: 319, column: 3, scope: !1163)
!1169 = !DILocation(line: 320, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 320, column: 13)
!1171 = !DILocation(line: 320, column: 31, scope: !1170)
!1172 = !DILocation(line: 320, column: 36, scope: !1170)
!1173 = !DILocation(line: 320, column: 69, scope: !1170)
!1174 = !DILocation(line: 321, column: 7, scope: !1170)
!1175 = !DILocation(line: 321, column: 23, scope: !1170)
!1176 = !DILocation(line: 321, column: 42, scope: !1170)
!1177 = !DILocation(line: 321, column: 51, scope: !1170)
!1178 = !DILocation(line: 320, column: 13, scope: !1133)
!1179 = !DILocation(line: 331, column: 18, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 322, column: 38)
!1181 = !DILocation(line: 331, column: 7, scope: !1180)
!1182 = !DILocation(line: 330, column: 15, scope: !1180)
!1183 = !DILocation(line: 333, column: 10, scope: !1180)
!1184 = !DILocation(line: 333, column: 26, scope: !1180)
!1185 = !DILocation(line: 333, column: 44, scope: !1180)
!1186 = !DILocation(line: 334, column: 10, scope: !1180)
!1187 = !DILocation(line: 334, column: 26, scope: !1180)
!1188 = !DILocation(line: 333, column: 64, scope: !1180)
!1189 = !DILocation(line: 335, column: 10, scope: !1180)
!1190 = !DILocation(line: 335, column: 30, scope: !1180)
!1191 = !DILocation(line: 335, column: 39, scope: !1180)
!1192 = !DILocation(line: 333, column: 3, scope: !1180)
!1193 = !DILocation(line: 337, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 337, column: 7)
!1195 = !DILocation(line: 337, column: 7, scope: !1180)
!1196 = !DILocation(line: 345, column: 30, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 337, column: 66)
!1198 = !DILocation(line: 346, column: 16, scope: !1197)
!1199 = !DILocation(line: 347, column: 9, scope: !1197)
!1200 = !DILocation(line: 348, column: 9, scope: !1197)
!1201 = !DILocation(line: 345, column: 8, scope: !1197)
!1202 = !DILocation(line: 344, column: 11, scope: !1197)
!1203 = !DILocation(line: 350, column: 4, scope: !1197)
!1204 = !DILocation(line: 352, column: 3, scope: !1180)
!1205 = !DILocation(line: 357, column: 10, scope: !1064)
!1206 = !DILocation(line: 357, column: 30, scope: !1064)
!1207 = !DILocation(line: 357, column: 2, scope: !1064)
!1208 = !DILocation(line: 360, column: 13, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 357, column: 36)
!1210 = !DILocation(line: 360, column: 34, scope: !1209)
!1211 = !DILocation(line: 360, column: 10, scope: !1209)
!1212 = !DILocation(line: 361, column: 17, scope: !1209)
!1213 = !DILocation(line: 362, column: 3, scope: !1209)
!1214 = !DILocation(line: 366, column: 12, scope: !1209)
!1215 = !DILocation(line: 366, column: 32, scope: !1209)
!1216 = !DILocation(line: 366, column: 10, scope: !1209)
!1217 = !DILocation(line: 367, column: 19, scope: !1209)
!1218 = !DILocation(line: 367, column: 39, scope: !1209)
!1219 = !DILocation(line: 367, column: 17, scope: !1209)
!1220 = !DILocation(line: 368, column: 3, scope: !1209)
!1221 = !DILocation(line: 372, column: 12, scope: !1209)
!1222 = !DILocation(line: 372, column: 32, scope: !1209)
!1223 = !DILocation(line: 372, column: 10, scope: !1209)
!1224 = !DILocation(line: 373, column: 19, scope: !1209)
!1225 = !DILocation(line: 373, column: 39, scope: !1209)
!1226 = !DILocation(line: 373, column: 17, scope: !1209)
!1227 = !DILocation(line: 374, column: 3, scope: !1209)
!1228 = !DILocation(line: 377, column: 3, scope: !1209)
!1229 = !DILocation(line: 397, column: 30, scope: !1064)
!1230 = !DILocation(line: 397, column: 53, scope: !1064)
!1231 = !DILocation(line: 397, column: 2, scope: !1064)
!1232 = !DILocation(line: 401, column: 37, scope: !1064)
!1233 = !DILocation(line: 401, column: 47, scope: !1064)
!1234 = !DILocation(line: 401, column: 55, scope: !1064)
!1235 = !DILocation(line: 401, column: 11, scope: !1064)
!1236 = !DILocation(line: 401, column: 9, scope: !1064)
!1237 = !DILocation(line: 402, column: 30, scope: !1064)
!1238 = !DILocation(line: 402, column: 53, scope: !1064)
!1239 = !DILocation(line: 402, column: 2, scope: !1064)
!1240 = !DILocation(line: 403, column: 2, scope: !1064)
!1241 = !DILocation(line: 404, column: 1, scope: !1064)
!1242 = !DISubprogram(name: "acpi_ex_write_gpio", scope: !1041, file: !1041, line: 289, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !DISubprogram(name: "acpi_ex_write_serial_bus", scope: !1041, file: !1041, line: 281, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DISubprogram(name: "acpi_ex_access_region", scope: !1041, file: !1041, line: 172, type: !1245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!5, !138, !7, !20, !7}
!1247 = !DISubprogram(name: "acpi_ex_insert_into_field", scope: !1041, file: !1041, line: 168, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
