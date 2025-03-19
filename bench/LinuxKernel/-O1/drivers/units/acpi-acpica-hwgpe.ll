; ModuleID = 'drivers/acpi/acpica/hwgpe.c'
source_filename = "drivers/acpi/acpica/hwgpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_address = type { i8, i64 }
%struct.acpi_gpe_event_info = type { %union.acpi_gpe_dispatch_info, ptr, i8, i8, i8, i8 }
%union.acpi_gpe_dispatch_info = type { ptr }
%struct.acpi_gpe_register_info = type { %struct.acpi_gpe_address, %struct.acpi_gpe_address, i16, i8, i8, i8, i8 }
%struct.acpi_gpe_block_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i8, i8 }
%struct.acpi_gpe_block_status_context = type { ptr, i8, i8 }

@_acpi_module_name = internal constant [6 x i8] c"hwgpe\00", align 1, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"Invalid GPE Action, %u\00", align 1, !dbg !27
@acpi_gbl_gpe_lock = external dso_local global ptr, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_gpe_read(ptr noundef %value, ptr noundef %reg) #0 align 16 !dbg !46 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %reg.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %value32 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !57, metadata !DIExpression()), !dbg !61
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !58, metadata !DIExpression()), !dbg !62
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !63
  call void @llvm.dbg.declare(metadata ptr %status, metadata !59, metadata !DIExpression()), !dbg !64
  call void @llvm.lifetime.start.p0(i64 4, ptr %value32) #5, !dbg !65
  call void @llvm.dbg.declare(metadata ptr %value32, metadata !60, metadata !DIExpression()), !dbg !66
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !67
  %space_id = getelementptr inbounds %struct.acpi_gpe_address, ptr %0, i32 0, i32 0, !dbg !69
  %1 = load i8, ptr %space_id, align 8, !dbg !69
  %conv = zext i8 %1 to i32, !dbg !67
  %cmp = icmp eq i32 %conv, 0, !dbg !70
  br i1 %cmp, label %if.then, label %if.end, !dbg !71

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %reg.addr, align 8, !dbg !72
  %address = getelementptr inbounds %struct.acpi_gpe_address, ptr %2, i32 0, i32 1, !dbg !72
  %3 = load i64, ptr %address, align 8, !dbg !72
  %4 = inttoptr i64 %3 to ptr, !dbg !72
  %5 = load i8, ptr %4, align 1, !dbg !72
  %conv2 = zext i8 %5 to i64, !dbg !74
  %6 = load ptr, ptr %value.addr, align 8, !dbg !75
  store i64 %conv2, ptr %6, align 8, !dbg !76
  store i32 0, ptr %retval, align 4, !dbg !77
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !77

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %reg.addr, align 8, !dbg !78
  %address3 = getelementptr inbounds %struct.acpi_gpe_address, ptr %7, i32 0, i32 1, !dbg !79
  %8 = load i64, ptr %address3, align 8, !dbg !79
  %call = call i32 @acpi_os_read_port(i64 noundef %8, ptr noundef %value32, i32 noundef 8) #6, !dbg !80
  store i32 %call, ptr %status, align 4, !dbg !81
  %9 = load i32, ptr %status, align 4, !dbg !82
  %tobool = icmp ne i32 %9, 0, !dbg !82
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !84

if.then4:                                         ; preds = %if.end
  %10 = load i32, ptr %status, align 4, !dbg !85
  store i32 %10, ptr %retval, align 4, !dbg !85
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !85

if.end5:                                          ; preds = %if.end
  %11 = load i32, ptr %value32, align 4, !dbg !86
  %conv6 = zext i32 %11 to i64, !dbg !87
  %12 = load ptr, ptr %value.addr, align 8, !dbg !88
  store i64 %conv6, ptr %12, align 8, !dbg !89
  store i32 0, ptr %retval, align 4, !dbg !90
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !90

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value32) #5, !dbg !91
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !91
  %13 = load i32, ptr %retval, align 4, !dbg !91
  ret i32 %13, !dbg !91
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !92 dso_local i32 @acpi_os_read_port(i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_gpe_write(i64 noundef %value, ptr noundef %reg) #0 align 16 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %reg.addr = alloca ptr, align 8
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !101, metadata !DIExpression()), !dbg !103
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !102, metadata !DIExpression()), !dbg !104
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !105
  %space_id = getelementptr inbounds %struct.acpi_gpe_address, ptr %0, i32 0, i32 0, !dbg !107
  %1 = load i8, ptr %space_id, align 8, !dbg !107
  %conv = zext i8 %1 to i32, !dbg !105
  %cmp = icmp eq i32 %conv, 0, !dbg !108
  br i1 %cmp, label %if.then, label %if.end, !dbg !109

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %value.addr, align 8, !dbg !110
  %conv2 = trunc i64 %2 to i8, !dbg !110
  %3 = load ptr, ptr %reg.addr, align 8, !dbg !110
  %address = getelementptr inbounds %struct.acpi_gpe_address, ptr %3, i32 0, i32 1, !dbg !110
  %4 = load i64, ptr %address, align 8, !dbg !110
  %5 = inttoptr i64 %4 to ptr, !dbg !110
  store i8 %conv2, ptr %5, align 1, !dbg !110
  store i32 0, ptr %retval, align 4, !dbg !112
  br label %return, !dbg !112

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %reg.addr, align 8, !dbg !113
  %address3 = getelementptr inbounds %struct.acpi_gpe_address, ptr %6, i32 0, i32 1, !dbg !114
  %7 = load i64, ptr %address3, align 8, !dbg !114
  %8 = load i64, ptr %value.addr, align 8, !dbg !115
  %conv4 = trunc i64 %8 to i32, !dbg !116
  %call = call i32 @acpi_os_write_port(i64 noundef %7, i32 noundef %conv4, i32 noundef 8) #6, !dbg !117
  store i32 %call, ptr %retval, align 4, !dbg !118
  br label %return, !dbg !118

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !119
  ret i32 %9, !dbg !119
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !120 dso_local i32 @acpi_os_write_port(i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_get_gpe_register_bit(ptr noundef %gpe_event_info) #0 align 16 !dbg !123 {
entry:
  %gpe_event_info.addr = alloca ptr, align 8
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !881, metadata !DIExpression()), !dbg !882
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !883
  %gpe_number = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %0, i32 0, i32 3, !dbg !884
  %1 = load i8, ptr %gpe_number, align 1, !dbg !884
  %conv = zext i8 %1 to i32, !dbg !883
  %2 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !885
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %2, i32 0, i32 1, !dbg !886
  %3 = load ptr, ptr %register_info, align 8, !dbg !886
  %base_gpe_number = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %3, i32 0, i32 2, !dbg !887
  %4 = load i16, ptr %base_gpe_number, align 8, !dbg !887
  %conv1 = zext i16 %4 to i32, !dbg !885
  %sub = sub i32 %conv, %conv1, !dbg !888
  %shl = shl i32 1, %sub, !dbg !889
  ret i32 %shl, !dbg !890
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_low_set_gpe(ptr noundef %gpe_event_info, i32 noundef %action) #0 align 16 !dbg !891 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca ptr, align 8
  %action.addr = alloca i32, align 4
  %gpe_register_info = alloca ptr, align 8
  %status = alloca i32, align 4
  %enable_mask = alloca i64, align 8
  %register_bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !895, metadata !DIExpression()), !dbg !901
  store i32 %action, ptr %action.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !896, metadata !DIExpression()), !dbg !902
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #5, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !897, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %status, metadata !898, metadata !DIExpression()), !dbg !906
  store i32 0, ptr %status, align 4, !dbg !906
  call void @llvm.lifetime.start.p0(i64 8, ptr %enable_mask) #5, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %enable_mask, metadata !899, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_bit) #5, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %register_bit, metadata !900, metadata !DIExpression()), !dbg !910
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !911
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %0, i32 0, i32 1, !dbg !912
  %1 = load ptr, ptr %register_info, align 8, !dbg !912
  store ptr %1, ptr %gpe_register_info, align 8, !dbg !913
  %2 = load ptr, ptr %gpe_register_info, align 8, !dbg !914
  %tobool = icmp ne ptr %2, null, !dbg !914
  br i1 %tobool, label %if.end, label %if.then, !dbg !916

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !917

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %gpe_register_info, align 8, !dbg !919
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %3, i32 0, i32 1, !dbg !920
  %call = call i32 @acpi_hw_gpe_read(ptr noundef %enable_mask, ptr noundef %enable_address) #6, !dbg !921
  store i32 %call, ptr %status, align 4, !dbg !922
  %4 = load i32, ptr %status, align 4, !dbg !923
  %tobool1 = icmp ne i32 %4, 0, !dbg !923
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !925

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %status, align 4, !dbg !926
  store i32 %5, ptr %retval, align 4, !dbg !928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !928

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !929
  %call4 = call i32 @acpi_hw_get_gpe_register_bit(ptr noundef %6) #6, !dbg !930
  store i32 %call4, ptr %register_bit, align 4, !dbg !931
  %7 = load i32, ptr %action.addr, align 4, !dbg !932
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb9
    i32 1, label %sw.bb11
  ], !dbg !933

sw.bb:                                            ; preds = %if.end3
  %8 = load i32, ptr %register_bit, align 4, !dbg !934
  %9 = load ptr, ptr %gpe_register_info, align 8, !dbg !937
  %enable_mask5 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %9, i32 0, i32 6, !dbg !938
  %10 = load i8, ptr %enable_mask5, align 1, !dbg !938
  %conv = zext i8 %10 to i32, !dbg !937
  %and = and i32 %8, %conv, !dbg !939
  %tobool6 = icmp ne i32 %and, 0, !dbg !939
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !940

if.then7:                                         ; preds = %sw.bb
  store i32 4097, ptr %retval, align 4, !dbg !941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !941

if.end8:                                          ; preds = %sw.bb
  br label %sw.bb9, !dbg !943

sw.bb9:                                           ; preds = %if.end3, %if.end8
  %11 = load i32, ptr %register_bit, align 4, !dbg !944
  %conv10 = zext i32 %11 to i64, !dbg !944
  %12 = load i64, ptr %enable_mask, align 8, !dbg !944
  %or = or i64 %12, %conv10, !dbg !944
  store i64 %or, ptr %enable_mask, align 8, !dbg !944
  br label %sw.epilog, !dbg !945

sw.bb11:                                          ; preds = %if.end3
  %13 = load i32, ptr %register_bit, align 4, !dbg !946
  %not = xor i32 %13, -1, !dbg !946
  %conv12 = zext i32 %not to i64, !dbg !946
  %14 = load i64, ptr %enable_mask, align 8, !dbg !946
  %and13 = and i64 %14, %conv12, !dbg !946
  store i64 %and13, ptr %enable_mask, align 8, !dbg !946
  br label %sw.epilog, !dbg !947

sw.default:                                       ; preds = %if.end3
  %15 = load i32, ptr %action.addr, align 4, !dbg !948
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 184, ptr noundef @.str, i32 noundef %15) #6, !dbg !948
  store i32 4097, ptr %retval, align 4, !dbg !949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !949

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9
  %16 = load i32, ptr %register_bit, align 4, !dbg !950
  %17 = load ptr, ptr %gpe_register_info, align 8, !dbg !952
  %mask_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %17, i32 0, i32 5, !dbg !953
  %18 = load i8, ptr %mask_for_run, align 4, !dbg !953
  %conv14 = zext i8 %18 to i32, !dbg !952
  %and15 = and i32 %16, %conv14, !dbg !954
  %tobool16 = icmp ne i32 %and15, 0, !dbg !954
  br i1 %tobool16, label %if.end20, label %if.then17, !dbg !955

if.then17:                                        ; preds = %sw.epilog
  %19 = load i64, ptr %enable_mask, align 8, !dbg !956
  %20 = load ptr, ptr %gpe_register_info, align 8, !dbg !958
  %enable_address18 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %20, i32 0, i32 1, !dbg !959
  %call19 = call i32 @acpi_hw_gpe_write(i64 noundef %19, ptr noundef %enable_address18) #6, !dbg !960
  store i32 %call19, ptr %status, align 4, !dbg !961
  br label %if.end20, !dbg !962

if.end20:                                         ; preds = %if.then17, %sw.epilog
  %21 = load i32, ptr %status, align 4, !dbg !963
  store i32 %21, ptr %retval, align 4, !dbg !964
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !964

cleanup:                                          ; preds = %if.end20, %sw.default, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_bit) #5, !dbg !965
  call void @llvm.lifetime.end.p0(i64 8, ptr %enable_mask) #5, !dbg !965
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !965
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #5, !dbg !965
  %22 = load i32, ptr %retval, align 4, !dbg !965
  ret i32 %22, !dbg !965
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !966 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_clear_gpe(ptr noundef %gpe_event_info) #0 align 16 !dbg !971 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca ptr, align 8
  %gpe_register_info = alloca ptr, align 8
  %status = alloca i32, align 4
  %register_bit = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !975, metadata !DIExpression()), !dbg !979
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #5, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !976, metadata !DIExpression()), !dbg !981
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !982
  call void @llvm.dbg.declare(metadata ptr %status, metadata !977, metadata !DIExpression()), !dbg !983
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_bit) #5, !dbg !984
  call void @llvm.dbg.declare(metadata ptr %register_bit, metadata !978, metadata !DIExpression()), !dbg !985
  %0 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !986
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %0, i32 0, i32 1, !dbg !987
  %1 = load ptr, ptr %register_info, align 8, !dbg !987
  store ptr %1, ptr %gpe_register_info, align 8, !dbg !988
  %2 = load ptr, ptr %gpe_register_info, align 8, !dbg !989
  %tobool = icmp ne ptr %2, null, !dbg !989
  br i1 %tobool, label %if.end, label %if.then, !dbg !991

if.then:                                          ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !992

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !994
  %call = call i32 @acpi_hw_get_gpe_register_bit(ptr noundef %3) #6, !dbg !995
  store i32 %call, ptr %register_bit, align 4, !dbg !996
  %4 = load i32, ptr %register_bit, align 4, !dbg !997
  %conv = zext i32 %4 to i64, !dbg !997
  %5 = load ptr, ptr %gpe_register_info, align 8, !dbg !998
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %5, i32 0, i32 0, !dbg !999
  %call1 = call i32 @acpi_hw_gpe_write(i64 noundef %conv, ptr noundef %status_address) #6, !dbg !1000
  store i32 %call1, ptr %status, align 4, !dbg !1001
  %6 = load i32, ptr %status, align 4, !dbg !1002
  store i32 %6, ptr %retval, align 4, !dbg !1003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1003

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_bit) #5, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1004
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #5, !dbg !1004
  %7 = load i32, ptr %retval, align 4, !dbg !1004
  ret i32 %7, !dbg !1004
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_get_gpe_status(ptr noundef %gpe_event_info, ptr noundef %event_status) #0 align 16 !dbg !1005 {
entry:
  %retval = alloca i32, align 4
  %gpe_event_info.addr = alloca ptr, align 8
  %event_status.addr = alloca ptr, align 8
  %in_byte = alloca i64, align 8
  %register_bit = alloca i32, align 4
  %gpe_register_info = alloca ptr, align 8
  %local_event_status = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_event_info, ptr %gpe_event_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info.addr, metadata !1010, metadata !DIExpression()), !dbg !1017
  store ptr %event_status, ptr %event_status.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event_status.addr, metadata !1011, metadata !DIExpression()), !dbg !1018
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_byte) #5, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %in_byte, metadata !1012, metadata !DIExpression()), !dbg !1020
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_bit) #5, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %register_bit, metadata !1013, metadata !DIExpression()), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #5, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !1014, metadata !DIExpression()), !dbg !1024
  call void @llvm.lifetime.start.p0(i64 4, ptr %local_event_status) #5, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %local_event_status, metadata !1015, metadata !DIExpression()), !dbg !1026
  store i32 0, ptr %local_event_status, align 4, !dbg !1026
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1027
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1016, metadata !DIExpression()), !dbg !1028
  %0 = load ptr, ptr %event_status.addr, align 8, !dbg !1029
  %tobool = icmp ne ptr %0, null, !dbg !1029
  br i1 %tobool, label %if.end, label %if.then, !dbg !1031

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1032
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1032

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1034
  %flags = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %1, i32 0, i32 2, !dbg !1034
  %2 = load i8, ptr %flags, align 8, !dbg !1034
  %conv = zext i8 %2 to i32, !dbg !1034
  %and = and i32 %conv, 7, !dbg !1034
  %conv1 = trunc i32 %and to i8, !dbg !1034
  %conv2 = zext i8 %conv1 to i32, !dbg !1034
  %cmp = icmp ne i32 %conv2, 0, !dbg !1036
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !1037

if.then4:                                         ; preds = %if.end
  %3 = load i32, ptr %local_event_status, align 4, !dbg !1038
  %or = or i32 %3, 16, !dbg !1038
  store i32 %or, ptr %local_event_status, align 4, !dbg !1038
  br label %if.end5, !dbg !1040

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1041
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %4, i32 0, i32 1, !dbg !1042
  %5 = load ptr, ptr %register_info, align 8, !dbg !1042
  store ptr %5, ptr %gpe_register_info, align 8, !dbg !1043
  %6 = load ptr, ptr %gpe_event_info.addr, align 8, !dbg !1044
  %call = call i32 @acpi_hw_get_gpe_register_bit(ptr noundef %6) #6, !dbg !1045
  store i32 %call, ptr %register_bit, align 4, !dbg !1046
  %7 = load i32, ptr %register_bit, align 4, !dbg !1047
  %8 = load ptr, ptr %gpe_register_info, align 8, !dbg !1049
  %enable_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %8, i32 0, i32 4, !dbg !1050
  %9 = load i8, ptr %enable_for_run, align 1, !dbg !1050
  %conv6 = zext i8 %9 to i32, !dbg !1049
  %and7 = and i32 %7, %conv6, !dbg !1051
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1051
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !1052

if.then9:                                         ; preds = %if.end5
  %10 = load i32, ptr %local_event_status, align 4, !dbg !1053
  %or10 = or i32 %10, 1, !dbg !1053
  store i32 %or10, ptr %local_event_status, align 4, !dbg !1053
  br label %if.end11, !dbg !1055

if.end11:                                         ; preds = %if.then9, %if.end5
  %11 = load i32, ptr %register_bit, align 4, !dbg !1056
  %12 = load ptr, ptr %gpe_register_info, align 8, !dbg !1058
  %mask_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %12, i32 0, i32 5, !dbg !1059
  %13 = load i8, ptr %mask_for_run, align 4, !dbg !1059
  %conv12 = zext i8 %13 to i32, !dbg !1058
  %and13 = and i32 %11, %conv12, !dbg !1060
  %tobool14 = icmp ne i32 %and13, 0, !dbg !1060
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !1061

if.then15:                                        ; preds = %if.end11
  %14 = load i32, ptr %local_event_status, align 4, !dbg !1062
  %or16 = or i32 %14, 32, !dbg !1062
  store i32 %or16, ptr %local_event_status, align 4, !dbg !1062
  br label %if.end17, !dbg !1064

if.end17:                                         ; preds = %if.then15, %if.end11
  %15 = load i32, ptr %register_bit, align 4, !dbg !1065
  %16 = load ptr, ptr %gpe_register_info, align 8, !dbg !1067
  %enable_for_wake = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %16, i32 0, i32 3, !dbg !1068
  %17 = load i8, ptr %enable_for_wake, align 2, !dbg !1068
  %conv18 = zext i8 %17 to i32, !dbg !1067
  %and19 = and i32 %15, %conv18, !dbg !1069
  %tobool20 = icmp ne i32 %and19, 0, !dbg !1069
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !1070

if.then21:                                        ; preds = %if.end17
  %18 = load i32, ptr %local_event_status, align 4, !dbg !1071
  %or22 = or i32 %18, 2, !dbg !1071
  store i32 %or22, ptr %local_event_status, align 4, !dbg !1071
  br label %if.end23, !dbg !1073

if.end23:                                         ; preds = %if.then21, %if.end17
  %19 = load ptr, ptr %gpe_register_info, align 8, !dbg !1074
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %19, i32 0, i32 1, !dbg !1075
  %call24 = call i32 @acpi_hw_gpe_read(ptr noundef %in_byte, ptr noundef %enable_address) #6, !dbg !1076
  store i32 %call24, ptr %status, align 4, !dbg !1077
  %20 = load i32, ptr %status, align 4, !dbg !1078
  %tobool25 = icmp ne i32 %20, 0, !dbg !1078
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1080

if.then26:                                        ; preds = %if.end23
  %21 = load i32, ptr %status, align 4, !dbg !1081
  store i32 %21, ptr %retval, align 4, !dbg !1083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1083

if.end27:                                         ; preds = %if.end23
  %22 = load i32, ptr %register_bit, align 4, !dbg !1084
  %conv28 = zext i32 %22 to i64, !dbg !1084
  %23 = load i64, ptr %in_byte, align 8, !dbg !1086
  %and29 = and i64 %conv28, %23, !dbg !1087
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1087
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !1088

if.then31:                                        ; preds = %if.end27
  %24 = load i32, ptr %local_event_status, align 4, !dbg !1089
  %or32 = or i32 %24, 8, !dbg !1089
  store i32 %or32, ptr %local_event_status, align 4, !dbg !1089
  br label %if.end33, !dbg !1091

if.end33:                                         ; preds = %if.then31, %if.end27
  %25 = load ptr, ptr %gpe_register_info, align 8, !dbg !1092
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %25, i32 0, i32 0, !dbg !1093
  %call34 = call i32 @acpi_hw_gpe_read(ptr noundef %in_byte, ptr noundef %status_address) #6, !dbg !1094
  store i32 %call34, ptr %status, align 4, !dbg !1095
  %26 = load i32, ptr %status, align 4, !dbg !1096
  %tobool35 = icmp ne i32 %26, 0, !dbg !1096
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1098

if.then36:                                        ; preds = %if.end33
  %27 = load i32, ptr %status, align 4, !dbg !1099
  store i32 %27, ptr %retval, align 4, !dbg !1101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1101

if.end37:                                         ; preds = %if.end33
  %28 = load i32, ptr %register_bit, align 4, !dbg !1102
  %conv38 = zext i32 %28 to i64, !dbg !1102
  %29 = load i64, ptr %in_byte, align 8, !dbg !1104
  %and39 = and i64 %conv38, %29, !dbg !1105
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1105
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !1106

if.then41:                                        ; preds = %if.end37
  %30 = load i32, ptr %local_event_status, align 4, !dbg !1107
  %or42 = or i32 %30, 4, !dbg !1107
  store i32 %or42, ptr %local_event_status, align 4, !dbg !1107
  br label %if.end43, !dbg !1109

if.end43:                                         ; preds = %if.then41, %if.end37
  %31 = load i32, ptr %local_event_status, align 4, !dbg !1110
  %32 = load ptr, ptr %event_status.addr, align 8, !dbg !1111
  store i32 %31, ptr %32, align 4, !dbg !1112
  store i32 0, ptr %retval, align 4, !dbg !1113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1113

cleanup:                                          ; preds = %if.end43, %if.then36, %if.then26, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 4, ptr %local_event_status) #5, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #5, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_bit) #5, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_byte) #5, !dbg !1114
  %33 = load i32, ptr %retval, align 4, !dbg !1114
  ret i32 %33, !dbg !1114
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_disable_gpe_block(ptr noundef %gpe_xrupt_info, ptr noundef %gpe_block, ptr noundef %context) #0 align 16 !dbg !1115 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca ptr, align 8
  %gpe_block.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_xrupt_info, ptr %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info.addr, metadata !1119, metadata !DIExpression()), !dbg !1124
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1120, metadata !DIExpression()), !dbg !1125
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1121, metadata !DIExpression()), !dbg !1126
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1122, metadata !DIExpression()), !dbg !1128
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1123, metadata !DIExpression()), !dbg !1130
  store i32 0, ptr %i, align 4, !dbg !1131
  br label %for.cond, !dbg !1133

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1134
  %1 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1136
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %1, i32 0, i32 7, !dbg !1137
  %2 = load i32, ptr %register_count, align 8, !dbg !1137
  %cmp = icmp ult i32 %0, %2, !dbg !1138
  br i1 %cmp, label %for.body, label %for.end, !dbg !1139

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1140
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %3, i32 0, i32 4, !dbg !1142
  %4 = load ptr, ptr %register_info, align 8, !dbg !1142
  %5 = load i32, ptr %i, align 4, !dbg !1143
  %idxprom = zext i32 %5 to i64, !dbg !1140
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, ptr %4, i64 %idxprom, !dbg !1140
  %call = call i32 @acpi_hw_gpe_enable_write(i8 noundef zeroext 0, ptr noundef %arrayidx) #6, !dbg !1144
  store i32 %call, ptr %status, align 4, !dbg !1145
  %6 = load i32, ptr %status, align 4, !dbg !1146
  %tobool = icmp ne i32 %6, 0, !dbg !1146
  br i1 %tobool, label %if.then, label %if.end, !dbg !1148

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %status, align 4, !dbg !1149
  store i32 %7, ptr %retval, align 4, !dbg !1151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1151

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1152

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !1153
  %inc = add i32 %8, 1, !dbg !1153
  store i32 %inc, ptr %i, align 4, !dbg !1153
  br label %for.cond, !dbg !1154, !llvm.loop !1155

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1159

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1160
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1160
  %9 = load i32, ptr %retval, align 4, !dbg !1160
  ret i32 %9, !dbg !1160
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_gpe_enable_write(i8 noundef zeroext %enable_mask, ptr noundef %gpe_register_info) #0 align 16 !dbg !1161 {
entry:
  %enable_mask.addr = alloca i8, align 1
  %gpe_register_info.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store i8 %enable_mask, ptr %enable_mask.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable_mask.addr, metadata !1165, metadata !DIExpression()), !dbg !1168
  store ptr %gpe_register_info, ptr %gpe_register_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info.addr, metadata !1166, metadata !DIExpression()), !dbg !1169
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1167, metadata !DIExpression()), !dbg !1171
  %0 = load i8, ptr %enable_mask.addr, align 1, !dbg !1172
  %1 = load ptr, ptr %gpe_register_info.addr, align 8, !dbg !1173
  %enable_mask1 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %1, i32 0, i32 6, !dbg !1174
  store i8 %0, ptr %enable_mask1, align 1, !dbg !1175
  %2 = load i8, ptr %enable_mask.addr, align 1, !dbg !1176
  %conv = zext i8 %2 to i64, !dbg !1176
  %3 = load ptr, ptr %gpe_register_info.addr, align 8, !dbg !1177
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %3, i32 0, i32 1, !dbg !1178
  %call = call i32 @acpi_hw_gpe_write(i64 noundef %conv, ptr noundef %enable_address) #6, !dbg !1179
  store i32 %call, ptr %status, align 4, !dbg !1180
  %4 = load i32, ptr %status, align 4, !dbg !1181
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1182
  ret i32 %4, !dbg !1183
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_clear_gpe_block(ptr noundef %gpe_xrupt_info, ptr noundef %gpe_block, ptr noundef %context) #0 align 16 !dbg !1184 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca ptr, align 8
  %gpe_block.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_xrupt_info, ptr %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info.addr, metadata !1186, metadata !DIExpression()), !dbg !1191
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1187, metadata !DIExpression()), !dbg !1192
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1188, metadata !DIExpression()), !dbg !1193
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1194
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1189, metadata !DIExpression()), !dbg !1195
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1190, metadata !DIExpression()), !dbg !1197
  store i32 0, ptr %i, align 4, !dbg !1198
  br label %for.cond, !dbg !1200

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1201
  %1 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1203
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %1, i32 0, i32 7, !dbg !1204
  %2 = load i32, ptr %register_count, align 8, !dbg !1204
  %cmp = icmp ult i32 %0, %2, !dbg !1205
  br i1 %cmp, label %for.body, label %for.end, !dbg !1206

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1207
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %3, i32 0, i32 4, !dbg !1209
  %4 = load ptr, ptr %register_info, align 8, !dbg !1209
  %5 = load i32, ptr %i, align 4, !dbg !1210
  %idxprom = zext i32 %5 to i64, !dbg !1207
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, ptr %4, i64 %idxprom, !dbg !1207
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %arrayidx, i32 0, i32 0, !dbg !1211
  %call = call i32 @acpi_hw_gpe_write(i64 noundef 255, ptr noundef %status_address) #6, !dbg !1212
  store i32 %call, ptr %status, align 4, !dbg !1213
  %6 = load i32, ptr %status, align 4, !dbg !1214
  %tobool = icmp ne i32 %6, 0, !dbg !1214
  br i1 %tobool, label %if.then, label %if.end, !dbg !1216

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %status, align 4, !dbg !1217
  store i32 %7, ptr %retval, align 4, !dbg !1219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1219

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1220

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !1221
  %inc = add i32 %8, 1, !dbg !1221
  store i32 %inc, ptr %i, align 4, !dbg !1221
  br label %for.cond, !dbg !1222, !llvm.loop !1223

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1225

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1226
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1226
  %9 = load i32, ptr %retval, align 4, !dbg !1226
  ret i32 %9, !dbg !1226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_enable_runtime_gpe_block(ptr noundef %gpe_xrupt_info, ptr noundef %gpe_block, ptr noundef %context) #0 align 16 !dbg !1227 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca ptr, align 8
  %gpe_block.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_register_info = alloca ptr, align 8
  %enable_mask = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_xrupt_info, ptr %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info.addr, metadata !1229, metadata !DIExpression()), !dbg !1236
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1230, metadata !DIExpression()), !dbg !1237
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1231, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1232, metadata !DIExpression()), !dbg !1240
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1233, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #5, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !1234, metadata !DIExpression()), !dbg !1244
  call void @llvm.lifetime.start.p0(i64 1, ptr %enable_mask) #5, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %enable_mask, metadata !1235, metadata !DIExpression()), !dbg !1246
  store i32 0, ptr %i, align 4, !dbg !1247
  br label %for.cond, !dbg !1249

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1250
  %1 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1252
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %1, i32 0, i32 7, !dbg !1253
  %2 = load i32, ptr %register_count, align 8, !dbg !1253
  %cmp = icmp ult i32 %0, %2, !dbg !1254
  br i1 %cmp, label %for.body, label %for.end, !dbg !1255

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1256
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %3, i32 0, i32 4, !dbg !1258
  %4 = load ptr, ptr %register_info, align 8, !dbg !1258
  %5 = load i32, ptr %i, align 4, !dbg !1259
  %idxprom = zext i32 %5 to i64, !dbg !1256
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, ptr %4, i64 %idxprom, !dbg !1256
  store ptr %arrayidx, ptr %gpe_register_info, align 8, !dbg !1260
  %6 = load ptr, ptr %gpe_register_info, align 8, !dbg !1261
  %enable_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %6, i32 0, i32 4, !dbg !1263
  %7 = load i8, ptr %enable_for_run, align 1, !dbg !1263
  %tobool = icmp ne i8 %7, 0, !dbg !1261
  br i1 %tobool, label %if.end, label %if.then, !dbg !1264

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1265

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %gpe_register_info, align 8, !dbg !1267
  %enable_for_run1 = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %8, i32 0, i32 4, !dbg !1268
  %9 = load i8, ptr %enable_for_run1, align 1, !dbg !1268
  %conv = zext i8 %9 to i32, !dbg !1267
  %10 = load ptr, ptr %gpe_register_info, align 8, !dbg !1269
  %mask_for_run = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %10, i32 0, i32 5, !dbg !1270
  %11 = load i8, ptr %mask_for_run, align 4, !dbg !1270
  %conv2 = zext i8 %11 to i32, !dbg !1269
  %not = xor i32 %conv2, -1, !dbg !1271
  %and = and i32 %conv, %not, !dbg !1272
  %conv3 = trunc i32 %and to i8, !dbg !1267
  store i8 %conv3, ptr %enable_mask, align 1, !dbg !1273
  %12 = load i8, ptr %enable_mask, align 1, !dbg !1274
  %13 = load ptr, ptr %gpe_register_info, align 8, !dbg !1275
  %call = call i32 @acpi_hw_gpe_enable_write(i8 noundef zeroext %12, ptr noundef %13) #6, !dbg !1276
  store i32 %call, ptr %status, align 4, !dbg !1277
  %14 = load i32, ptr %status, align 4, !dbg !1278
  %tobool4 = icmp ne i32 %14, 0, !dbg !1278
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1280

if.then5:                                         ; preds = %if.end
  %15 = load i32, ptr %status, align 4, !dbg !1281
  store i32 %15, ptr %retval, align 4, !dbg !1283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1283

if.end6:                                          ; preds = %if.end
  br label %for.inc, !dbg !1284

for.inc:                                          ; preds = %if.end6, %if.then
  %16 = load i32, ptr %i, align 4, !dbg !1285
  %inc = add i32 %16, 1, !dbg !1285
  store i32 %inc, ptr %i, align 4, !dbg !1285
  br label %for.cond, !dbg !1286, !llvm.loop !1287

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1289

cleanup:                                          ; preds = %for.end, %if.then5
  call void @llvm.lifetime.end.p0(i64 1, ptr %enable_mask) #5, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #5, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1290
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1290
  %17 = load i32, ptr %retval, align 4, !dbg !1290
  ret i32 %17, !dbg !1290
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_disable_all_gpes() #0 align 16 !dbg !1291 {
entry:
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1296
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1295, metadata !DIExpression()), !dbg !1297
  %call = call i32 @acpi_ev_walk_gpe_list(ptr noundef @acpi_hw_disable_gpe_block, ptr noundef null) #6, !dbg !1298
  store i32 %call, ptr %status, align 4, !dbg !1299
  %0 = load i32, ptr %status, align 4, !dbg !1300
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1301
  ret i32 %0, !dbg !1300
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1302 dso_local i32 @acpi_ev_walk_gpe_list(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_enable_all_runtime_gpes() #0 align 16 !dbg !1308 {
entry:
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1311
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1310, metadata !DIExpression()), !dbg !1312
  %call = call i32 @acpi_ev_walk_gpe_list(ptr noundef @acpi_hw_enable_runtime_gpe_block, ptr noundef null) #6, !dbg !1313
  store i32 %call, ptr %status, align 4, !dbg !1314
  %0 = load i32, ptr %status, align 4, !dbg !1315
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1316
  ret i32 %0, !dbg !1315
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_enable_all_wakeup_gpes() #0 align 16 !dbg !1317 {
entry:
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1320
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1319, metadata !DIExpression()), !dbg !1321
  %call = call i32 @acpi_ev_walk_gpe_list(ptr noundef @acpi_hw_enable_wakeup_gpe_block, ptr noundef null) #6, !dbg !1322
  store i32 %call, ptr %status, align 4, !dbg !1323
  %0 = load i32, ptr %status, align 4, !dbg !1324
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1325
  ret i32 %0, !dbg !1324
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_enable_wakeup_gpe_block(ptr noundef %gpe_xrupt_info, ptr noundef %gpe_block, ptr noundef %context) #0 align 16 !dbg !1326 {
entry:
  %retval = alloca i32, align 4
  %gpe_xrupt_info.addr = alloca ptr, align 8
  %gpe_block.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %gpe_register_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %gpe_xrupt_info, ptr %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info.addr, metadata !1328, metadata !DIExpression()), !dbg !1334
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1329, metadata !DIExpression()), !dbg !1335
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1330, metadata !DIExpression()), !dbg !1336
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1337
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1331, metadata !DIExpression()), !dbg !1338
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1332, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #5, !dbg !1341
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !1333, metadata !DIExpression()), !dbg !1342
  store i32 0, ptr %i, align 4, !dbg !1343
  br label %for.cond, !dbg !1345

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1346
  %1 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1348
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %1, i32 0, i32 7, !dbg !1349
  %2 = load i32, ptr %register_count, align 8, !dbg !1349
  %cmp = icmp ult i32 %0, %2, !dbg !1350
  br i1 %cmp, label %for.body, label %for.end, !dbg !1351

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1352
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %3, i32 0, i32 4, !dbg !1354
  %4 = load ptr, ptr %register_info, align 8, !dbg !1354
  %5 = load i32, ptr %i, align 4, !dbg !1355
  %idxprom = zext i32 %5 to i64, !dbg !1352
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, ptr %4, i64 %idxprom, !dbg !1352
  store ptr %arrayidx, ptr %gpe_register_info, align 8, !dbg !1356
  %6 = load ptr, ptr %gpe_register_info, align 8, !dbg !1357
  %enable_for_wake = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %6, i32 0, i32 3, !dbg !1358
  %7 = load i8, ptr %enable_for_wake, align 2, !dbg !1358
  %8 = load ptr, ptr %gpe_register_info, align 8, !dbg !1359
  %call = call i32 @acpi_hw_gpe_enable_write(i8 noundef zeroext %7, ptr noundef %8) #6, !dbg !1360
  store i32 %call, ptr %status, align 4, !dbg !1361
  %9 = load i32, ptr %status, align 4, !dbg !1362
  %tobool = icmp ne i32 %9, 0, !dbg !1362
  br i1 %tobool, label %if.then, label %if.end, !dbg !1364

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %status, align 4, !dbg !1365
  store i32 %10, ptr %retval, align 4, !dbg !1367
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1367

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1368

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !1369
  %inc = add i32 %11, 1, !dbg !1369
  store i32 %inc, ptr %i, align 4, !dbg !1369
  br label %for.cond, !dbg !1370, !llvm.loop !1371

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !1373
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1373

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #5, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1374
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1374
  %12 = load i32, ptr %retval, align 4, !dbg !1374
  ret i32 %12, !dbg !1374
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_hw_check_all_gpes(ptr noundef %gpe_skip_device, i32 noundef %gpe_skip_number) #0 align 16 !dbg !1375 {
entry:
  %gpe_skip_device.addr = alloca ptr, align 8
  %gpe_skip_number.addr = alloca i32, align 4
  %context = alloca %struct.acpi_gpe_block_status_context, align 8
  %gpe_event_info = alloca ptr, align 8
  %flags = alloca i64, align 8
  store ptr %gpe_skip_device, ptr %gpe_skip_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_skip_device.addr, metadata !1379, metadata !DIExpression()), !dbg !1389
  store i32 %gpe_skip_number, ptr %gpe_skip_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gpe_skip_number.addr, metadata !1380, metadata !DIExpression()), !dbg !1390
  call void @llvm.lifetime.start.p0(i64 16, ptr %context) #5, !dbg !1391
  call void @llvm.dbg.declare(metadata ptr %context, metadata !1381, metadata !DIExpression()), !dbg !1392
  call void @llvm.memset.p0.i64(ptr align 8 %context, i8 0, i64 16, i1 false), !dbg !1392
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_event_info) #5, !dbg !1393
  call void @llvm.dbg.declare(metadata ptr %gpe_event_info, metadata !1387, metadata !DIExpression()), !dbg !1394
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #5, !dbg !1395
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1388, metadata !DIExpression()), !dbg !1396
  %0 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1397
  %call = call i64 @acpi_os_acquire_lock(ptr noundef %0) #6, !dbg !1398
  store i64 %call, ptr %flags, align 8, !dbg !1399
  %1 = load ptr, ptr %gpe_skip_device.addr, align 8, !dbg !1400
  %2 = load i32, ptr %gpe_skip_number.addr, align 4, !dbg !1401
  %call1 = call ptr @acpi_ev_get_gpe_event_info(ptr noundef %1, i32 noundef %2) #6, !dbg !1402
  store ptr %call1, ptr %gpe_event_info, align 8, !dbg !1403
  %3 = load ptr, ptr %gpe_event_info, align 8, !dbg !1404
  %tobool = icmp ne ptr %3, null, !dbg !1404
  br i1 %tobool, label %if.then, label %if.end, !dbg !1406

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %gpe_event_info, align 8, !dbg !1407
  %register_info = getelementptr inbounds %struct.acpi_gpe_event_info, ptr %4, i32 0, i32 1, !dbg !1409
  %5 = load ptr, ptr %register_info, align 8, !dbg !1409
  %gpe_skip_register_info = getelementptr inbounds %struct.acpi_gpe_block_status_context, ptr %context, i32 0, i32 0, !dbg !1410
  store ptr %5, ptr %gpe_skip_register_info, align 8, !dbg !1411
  %6 = load ptr, ptr %gpe_event_info, align 8, !dbg !1412
  %call2 = call i32 @acpi_hw_get_gpe_register_bit(ptr noundef %6) #6, !dbg !1413
  %conv = trunc i32 %call2 to i8, !dbg !1413
  %gpe_skip_mask = getelementptr inbounds %struct.acpi_gpe_block_status_context, ptr %context, i32 0, i32 1, !dbg !1414
  store i8 %conv, ptr %gpe_skip_mask, align 8, !dbg !1415
  br label %if.end, !dbg !1416

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr @acpi_gbl_gpe_lock, align 8, !dbg !1417
  %8 = load i64, ptr %flags, align 8, !dbg !1418
  call void @acpi_os_release_lock(ptr noundef %7, i64 noundef %8) #6, !dbg !1419
  %call3 = call i32 @acpi_ev_walk_gpe_list(ptr noundef @acpi_hw_get_gpe_block_status, ptr noundef %context) #6, !dbg !1420
  %retval4 = getelementptr inbounds %struct.acpi_gpe_block_status_context, ptr %context, i32 0, i32 2, !dbg !1421
  %9 = load i8, ptr %retval4, align 1, !dbg !1421
  %conv5 = zext i8 %9 to i32, !dbg !1422
  %cmp = icmp ne i32 %conv5, 0, !dbg !1423
  %conv6 = zext i1 %cmp to i32, !dbg !1423
  %conv7 = trunc i32 %conv6 to i8, !dbg !1424
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #5, !dbg !1425
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_event_info) #5, !dbg !1425
  call void @llvm.lifetime.end.p0(i64 16, ptr %context) #5, !dbg !1425
  ret i8 %conv7, !dbg !1426
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1427 dso_local i64 @acpi_os_acquire_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1466 dso_local ptr @acpi_ev_get_gpe_event_info(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1469 dso_local void @acpi_os_release_lock(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_get_gpe_block_status(ptr noundef %gpe_xrupt_info, ptr noundef %gpe_block, ptr noundef %context) #0 align 16 !dbg !1472 {
entry:
  %gpe_xrupt_info.addr = alloca ptr, align 8
  %gpe_block.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %gpe_register_info = alloca ptr, align 8
  %in_enable = alloca i64, align 8
  %in_status = alloca i64, align 8
  %status = alloca i32, align 4
  %ret_mask = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %gpe_xrupt_info, ptr %gpe_xrupt_info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_xrupt_info.addr, metadata !1474, metadata !DIExpression()), !dbg !1485
  store ptr %gpe_block, ptr %gpe_block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gpe_block.addr, metadata !1475, metadata !DIExpression()), !dbg !1486
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1476, metadata !DIExpression()), !dbg !1487
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #5, !dbg !1488
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1477, metadata !DIExpression()), !dbg !1489
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1490
  store ptr %0, ptr %c, align 8, !dbg !1489
  call void @llvm.lifetime.start.p0(i64 8, ptr %gpe_register_info) #5, !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %gpe_register_info, metadata !1479, metadata !DIExpression()), !dbg !1492
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_enable) #5, !dbg !1493
  call void @llvm.dbg.declare(metadata ptr %in_enable, metadata !1480, metadata !DIExpression()), !dbg !1494
  call void @llvm.lifetime.start.p0(i64 8, ptr %in_status) #5, !dbg !1493
  call void @llvm.dbg.declare(metadata ptr %in_status, metadata !1481, metadata !DIExpression()), !dbg !1495
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1496
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1482, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret_mask) #5, !dbg !1498
  call void @llvm.dbg.declare(metadata ptr %ret_mask, metadata !1483, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1484, metadata !DIExpression()), !dbg !1501
  store i32 0, ptr %i, align 4, !dbg !1502
  br label %for.cond, !dbg !1504

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !1505
  %2 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1507
  %register_count = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %2, i32 0, i32 7, !dbg !1508
  %3 = load i32, ptr %register_count, align 8, !dbg !1508
  %cmp = icmp ult i32 %1, %3, !dbg !1509
  br i1 %cmp, label %for.body, label %for.end, !dbg !1510

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %gpe_block.addr, align 8, !dbg !1511
  %register_info = getelementptr inbounds %struct.acpi_gpe_block_info, ptr %4, i32 0, i32 4, !dbg !1513
  %5 = load ptr, ptr %register_info, align 8, !dbg !1513
  %6 = load i32, ptr %i, align 4, !dbg !1514
  %idxprom = zext i32 %6 to i64, !dbg !1511
  %arrayidx = getelementptr %struct.acpi_gpe_register_info, ptr %5, i64 %idxprom, !dbg !1511
  store ptr %arrayidx, ptr %gpe_register_info, align 8, !dbg !1515
  %7 = load ptr, ptr %gpe_register_info, align 8, !dbg !1516
  %enable_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %7, i32 0, i32 1, !dbg !1517
  %call = call i32 @acpi_hw_gpe_read(ptr noundef %in_enable, ptr noundef %enable_address) #6, !dbg !1518
  store i32 %call, ptr %status, align 4, !dbg !1519
  %8 = load i32, ptr %status, align 4, !dbg !1520
  %tobool = icmp ne i32 %8, 0, !dbg !1520
  br i1 %tobool, label %if.then, label %if.end, !dbg !1522

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !1523

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %gpe_register_info, align 8, !dbg !1525
  %status_address = getelementptr inbounds %struct.acpi_gpe_register_info, ptr %9, i32 0, i32 0, !dbg !1526
  %call1 = call i32 @acpi_hw_gpe_read(ptr noundef %in_status, ptr noundef %status_address) #6, !dbg !1527
  store i32 %call1, ptr %status, align 4, !dbg !1528
  %10 = load i32, ptr %status, align 4, !dbg !1529
  %tobool2 = icmp ne i32 %10, 0, !dbg !1529
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1531

if.then3:                                         ; preds = %if.end
  br label %for.inc, !dbg !1532

if.end4:                                          ; preds = %if.end
  %11 = load i64, ptr %in_enable, align 8, !dbg !1534
  %12 = load i64, ptr %in_status, align 8, !dbg !1535
  %and = and i64 %11, %12, !dbg !1536
  %conv = trunc i64 %and to i8, !dbg !1534
  store i8 %conv, ptr %ret_mask, align 1, !dbg !1537
  %13 = load i8, ptr %ret_mask, align 1, !dbg !1538
  %conv5 = zext i8 %13 to i32, !dbg !1538
  %tobool6 = icmp ne i32 %conv5, 0, !dbg !1538
  br i1 %tobool6, label %land.lhs.true, label %if.end14, !dbg !1540

land.lhs.true:                                    ; preds = %if.end4
  %14 = load ptr, ptr %c, align 8, !dbg !1541
  %gpe_skip_register_info = getelementptr inbounds %struct.acpi_gpe_block_status_context, ptr %14, i32 0, i32 0, !dbg !1542
  %15 = load ptr, ptr %gpe_skip_register_info, align 8, !dbg !1542
  %16 = load ptr, ptr %gpe_register_info, align 8, !dbg !1543
  %cmp7 = icmp eq ptr %15, %16, !dbg !1544
  br i1 %cmp7, label %if.then9, label %if.end14, !dbg !1545

if.then9:                                         ; preds = %land.lhs.true
  %17 = load ptr, ptr %c, align 8, !dbg !1546
  %gpe_skip_mask = getelementptr inbounds %struct.acpi_gpe_block_status_context, ptr %17, i32 0, i32 1, !dbg !1548
  %18 = load i8, ptr %gpe_skip_mask, align 8, !dbg !1548
  %conv10 = zext i8 %18 to i32, !dbg !1546
  %not = xor i32 %conv10, -1, !dbg !1549
  %19 = load i8, ptr %ret_mask, align 1, !dbg !1550
  %conv11 = zext i8 %19 to i32, !dbg !1550
  %and12 = and i32 %conv11, %not, !dbg !1550
  %conv13 = trunc i32 %and12 to i8, !dbg !1550
  store i8 %conv13, ptr %ret_mask, align 1, !dbg !1550
  br label %if.end14, !dbg !1551

if.end14:                                         ; preds = %if.then9, %land.lhs.true, %if.end4
  %20 = load i8, ptr %ret_mask, align 1, !dbg !1552
  %conv15 = zext i8 %20 to i32, !dbg !1552
  %21 = load ptr, ptr %c, align 8, !dbg !1553
  %retval16 = getelementptr inbounds %struct.acpi_gpe_block_status_context, ptr %21, i32 0, i32 2, !dbg !1554
  %22 = load i8, ptr %retval16, align 1, !dbg !1555
  %conv17 = zext i8 %22 to i32, !dbg !1555
  %or = or i32 %conv17, %conv15, !dbg !1555
  %conv18 = trunc i32 %or to i8, !dbg !1555
  store i8 %conv18, ptr %retval16, align 1, !dbg !1555
  br label %for.inc, !dbg !1556

for.inc:                                          ; preds = %if.end14, %if.then3, %if.then
  %23 = load i32, ptr %i, align 4, !dbg !1557
  %inc = add i32 %23, 1, !dbg !1557
  store i32 %inc, ptr %i, align 4, !dbg !1557
  br label %for.cond, !dbg !1558, !llvm.loop !1559

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !1561
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret_mask) #5, !dbg !1561
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1561
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_status) #5, !dbg !1561
  call void @llvm.lifetime.end.p0(i64 8, ptr %in_enable) #5, !dbg !1561
  call void @llvm.lifetime.end.p0(i64 8, ptr %gpe_register_info) #5, !dbg !1561
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #5, !dbg !1561
  ret i32 0, !dbg !1562
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.hwgpe.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22hwgpe\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/hwgpe.ll drivers/acpi/acpica/hwgpe.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwgpe.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41f0333d2162663cc86509cff398b183")
!4 = !{!5, !12, !15, !16, !18, !19, !23, !7, !20, !24, !25}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !6, line: 814, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !14)
!14 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !17, line: 42, baseType: !18)
!17 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!18 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !12)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_event_status", file: !6, line: 747, baseType: !20)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !{!27, !0}
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 184, elements: !31)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !{!32}
!32 = !DISubrange(count: 23)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 48, elements: !35)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!35 = !{!36}
!36 = !DISubrange(count: 6)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 8, !"cf-protection-branch", i32 1}
!41 = !{i32 4, !"function_return_thunk_extern", i32 1}
!42 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!43 = !{i32 1, !"Code Model", i32 2}
!44 = !{i32 1, !"override-stack-alignment", i32 8}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = distinct !DISubprogram(name: "acpi_hw_gpe_read", scope: !3, file: !3, line: 43, type: !47, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !56)
!47 = !DISubroutineType(types: !48)
!48 = !{!19, !49, !50}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !52, line: 459, size: 128, elements: !53)
!52 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !51, file: !52, line: 460, baseType: !7, size: 8)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !51, file: !52, line: 461, baseType: !12, size: 64, offset: 64)
!56 = !{!57, !58, !59, !60}
!57 = !DILocalVariable(name: "value", arg: 1, scope: !46, file: !3, line: 43, type: !49)
!58 = !DILocalVariable(name: "reg", arg: 2, scope: !46, file: !3, line: 43, type: !50)
!59 = !DILocalVariable(name: "status", scope: !46, file: !3, line: 45, type: !19)
!60 = !DILocalVariable(name: "value32", scope: !46, file: !3, line: 46, type: !20)
!61 = !DILocation(line: 43, column: 35, scope: !46)
!62 = !DILocation(line: 43, column: 67, scope: !46)
!63 = !DILocation(line: 45, column: 2, scope: !46)
!64 = !DILocation(line: 45, column: 14, scope: !46)
!65 = !DILocation(line: 46, column: 2, scope: !46)
!66 = !DILocation(line: 46, column: 6, scope: !46)
!67 = !DILocation(line: 48, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !46, file: !3, line: 48, column: 6)
!69 = !DILocation(line: 48, column: 11, scope: !68)
!70 = !DILocation(line: 48, column: 20, scope: !68)
!71 = !DILocation(line: 48, column: 6, scope: !46)
!72 = !DILocation(line: 50, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !3, line: 48, column: 53)
!74 = !DILocation(line: 50, column: 12, scope: !73)
!75 = !DILocation(line: 50, column: 4, scope: !73)
!76 = !DILocation(line: 50, column: 10, scope: !73)
!77 = !DILocation(line: 51, column: 3, scope: !73)
!78 = !DILocation(line: 58, column: 46, scope: !46)
!79 = !DILocation(line: 58, column: 51, scope: !46)
!80 = !DILocation(line: 58, column: 11, scope: !46)
!81 = !DILocation(line: 58, column: 9, scope: !46)
!82 = !DILocation(line: 60, column: 6, scope: !83)
!83 = distinct !DILexicalBlock(scope: !46, file: !3, line: 60, column: 6)
!84 = !DILocation(line: 60, column: 6, scope: !46)
!85 = !DILocation(line: 61, column: 3, scope: !83)
!86 = !DILocation(line: 63, column: 16, scope: !46)
!87 = !DILocation(line: 63, column: 11, scope: !46)
!88 = !DILocation(line: 63, column: 3, scope: !46)
!89 = !DILocation(line: 63, column: 9, scope: !46)
!90 = !DILocation(line: 65, column: 2, scope: !46)
!91 = !DILocation(line: 66, column: 1, scope: !46)
!92 = !DISubprogram(name: "acpi_os_read_port", scope: !93, file: !93, line: 267, type: !94, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!93 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!94 = !DISubroutineType(types: !95)
!95 = !{!19, !23, !96, !20}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!97 = distinct !DISubprogram(name: "acpi_hw_gpe_write", scope: !3, file: !3, line: 81, type: !98, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{!19, !12, !50}
!100 = !{!101, !102}
!101 = !DILocalVariable(name: "value", arg: 1, scope: !97, file: !3, line: 81, type: !12)
!102 = !DILocalVariable(name: "reg", arg: 2, scope: !97, file: !3, line: 81, type: !50)
!103 = !DILocation(line: 81, column: 35, scope: !97)
!104 = !DILocation(line: 81, column: 67, scope: !97)
!105 = !DILocation(line: 83, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !3, line: 83, column: 6)
!107 = !DILocation(line: 83, column: 11, scope: !106)
!108 = !DILocation(line: 83, column: 20, scope: !106)
!109 = !DILocation(line: 83, column: 6, scope: !97)
!110 = !DILocation(line: 85, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !3, line: 83, column: 53)
!112 = !DILocation(line: 86, column: 3, scope: !111)
!113 = !DILocation(line: 93, column: 45, scope: !97)
!114 = !DILocation(line: 93, column: 50, scope: !97)
!115 = !DILocation(line: 93, column: 64, scope: !97)
!116 = !DILocation(line: 93, column: 59, scope: !97)
!117 = !DILocation(line: 93, column: 9, scope: !97)
!118 = !DILocation(line: 93, column: 2, scope: !97)
!119 = !DILocation(line: 95, column: 1, scope: !97)
!120 = !DISubprogram(name: "acpi_os_write_port", scope: !93, file: !93, line: 271, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubroutineType(types: !122)
!122 = !{!19, !23, !20, !20}
!123 = distinct !DISubprogram(name: "acpi_hw_get_gpe_register_bit", scope: !3, file: !3, line: 110, type: !124, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !880)
!124 = !DISubroutineType(types: !125)
!125 = !{!20, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !52, line: 448, size: 192, elements: !128)
!128 = !{!129, !875, !876, !877, !878, !879}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !127, file: !52, line: 449, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !52, line: 438, size: 64, elements: !131)
!131 = !{!132, !856, !869}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !130, file: !52, line: 439, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !52, line: 133, size: 384, elements: !135)
!135 = !{!136, !843, !844, !845, !846, !852, !853, !854, !855}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !134, file: !52, line: 134, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !139, line: 369, size: 576, elements: !140)
!139 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!140 = !{!141, !152, !165, !176, !189, !203, !212, !529, !546, !562, !575, !618, !630, !643, !653, !671, !693, !712, !731, !750, !763, !789, !806, !819, !833, !842}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !138, file: !139, line: 370, baseType: !142, size: 128)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !139, line: 73, size: 128, elements: !143)
!143 = !{!144, !145, !146, !147, !151}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !142, file: !139, line: 74, baseType: !137, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !142, file: !139, line: 74, baseType: !7, size: 8, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !142, file: !139, line: 74, baseType: !7, size: 8, offset: 72)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !142, file: !139, line: 74, baseType: !148, size: 16, offset: 80)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !150)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !142, file: !139, line: 74, baseType: !7, size: 8, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !138, file: !139, line: 371, baseType: !153, size: 192)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !139, line: 76, size: 192, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !164}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !153, file: !139, line: 77, baseType: !137, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !153, file: !139, line: 77, baseType: !7, size: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !139, line: 77, baseType: !7, size: 8, offset: 72)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !153, file: !139, line: 77, baseType: !148, size: 16, offset: 80)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !139, line: 77, baseType: !7, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !153, file: !139, line: 77, baseType: !161, size: 24, offset: 104)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 24, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 3)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !153, file: !139, line: 78, baseType: !12, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !138, file: !139, line: 372, baseType: !166, size: 256)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !139, line: 93, size: 256, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !175}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !166, file: !139, line: 94, baseType: !137, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !166, file: !139, line: 94, baseType: !7, size: 8, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !166, file: !139, line: 94, baseType: !7, size: 8, offset: 72)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !166, file: !139, line: 94, baseType: !148, size: 16, offset: 80)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !139, line: 94, baseType: !7, size: 8, offset: 96)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !166, file: !139, line: 94, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !166, file: !139, line: 94, baseType: !20, size: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !138, file: !139, line: 373, baseType: !177, size: 384)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !139, line: 97, size: 384, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !177, file: !139, line: 98, baseType: !137, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !177, file: !139, line: 98, baseType: !7, size: 8, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !139, line: 98, baseType: !7, size: 8, offset: 72)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !177, file: !139, line: 98, baseType: !148, size: 16, offset: 80)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !139, line: 98, baseType: !7, size: 8, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !177, file: !139, line: 98, baseType: !15, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !177, file: !139, line: 98, baseType: !20, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !177, file: !139, line: 99, baseType: !20, size: 32, offset: 224)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !177, file: !139, line: 100, baseType: !15, size: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !177, file: !139, line: 101, baseType: !133, size: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !138, file: !139, line: 374, baseType: !190, size: 384)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !139, line: 104, size: 384, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !200, !201, !202}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !190, file: !139, line: 105, baseType: !137, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !190, file: !139, line: 105, baseType: !7, size: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !190, file: !139, line: 105, baseType: !7, size: 8, offset: 72)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !190, file: !139, line: 105, baseType: !148, size: 16, offset: 80)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !139, line: 105, baseType: !7, size: 8, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !190, file: !139, line: 105, baseType: !133, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !190, file: !139, line: 106, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !190, file: !139, line: 107, baseType: !15, size: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !190, file: !139, line: 108, baseType: !20, size: 32, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !190, file: !139, line: 109, baseType: !20, size: 32, offset: 352)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !138, file: !139, line: 375, baseType: !204, size: 192)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !139, line: 118, size: 192, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !204, file: !139, line: 119, baseType: !137, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !139, line: 119, baseType: !7, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !139, line: 119, baseType: !7, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !204, file: !139, line: 119, baseType: !148, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !139, line: 119, baseType: !7, size: 8, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !204, file: !139, line: 119, baseType: !25, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !138, file: !139, line: 376, baseType: !213, size: 448)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !139, line: 144, size: 448, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !526, !527, !528}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !213, file: !139, line: 145, baseType: !137, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !213, file: !139, line: 145, baseType: !7, size: 8, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !139, line: 145, baseType: !7, size: 8, offset: 72)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !213, file: !139, line: 145, baseType: !148, size: 16, offset: 80)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !213, file: !139, line: 145, baseType: !7, size: 8, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !213, file: !139, line: 145, baseType: !7, size: 8, offset: 104)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !213, file: !139, line: 146, baseType: !7, size: 8, offset: 112)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !213, file: !139, line: 147, baseType: !7, size: 8, offset: 120)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !213, file: !139, line: 148, baseType: !137, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !213, file: !139, line: 149, baseType: !137, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !213, file: !139, line: 150, baseType: !15, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !213, file: !139, line: 154, baseType: !227, size: 64, offset: 320)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !139, line: 151, size: 64, elements: !228)
!228 = !{!229, !525}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !227, file: !139, line: 152, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !52, line: 248, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!19, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !236, line: 37, size: 9024, elements: !237)
!236 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !471, !472, !473, !474, !475, !479, !481, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !508, !509, !510, !511, !512, !513, !514, !515, !517, !523}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !236, line: 38, baseType: !234, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !235, file: !236, line: 39, baseType: !7, size: 8, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !235, file: !236, line: 40, baseType: !7, size: 8, offset: 72)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !235, file: !236, line: 41, baseType: !148, size: 16, offset: 80)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !235, file: !236, line: 42, baseType: !7, size: 8, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !235, file: !236, line: 43, baseType: !7, size: 8, offset: 104)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !235, file: !236, line: 44, baseType: !7, size: 8, offset: 112)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !235, file: !236, line: 45, baseType: !246, size: 16, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !148)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !235, file: !236, line: 46, baseType: !7, size: 8, offset: 144)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !235, file: !236, line: 47, baseType: !7, size: 8, offset: 152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !235, file: !236, line: 48, baseType: !7, size: 8, offset: 160)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !235, file: !236, line: 49, baseType: !7, size: 8, offset: 168)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !235, file: !236, line: 50, baseType: !7, size: 8, offset: 176)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !235, file: !236, line: 51, baseType: !7, size: 8, offset: 184)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !235, file: !236, line: 52, baseType: !7, size: 8, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !235, file: !236, line: 53, baseType: !7, size: 8, offset: 200)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !235, file: !236, line: 54, baseType: !15, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !235, file: !236, line: 55, baseType: !20, size: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !235, file: !236, line: 56, baseType: !20, size: 32, offset: 352)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !235, file: !236, line: 57, baseType: !20, size: 32, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !235, file: !236, line: 58, baseType: !20, size: 32, offset: 416)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !235, file: !236, line: 60, baseType: !261, size: 640, offset: 448)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !52, line: 909, size: 640, elements: !262)
!262 = !{!263, !264, !265, !266, !267, !268, !352, !353, !469, !470}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !261, file: !52, line: 910, baseType: !15, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !261, file: !52, line: 911, baseType: !15, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !261, file: !52, line: 912, baseType: !15, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !261, file: !52, line: 913, baseType: !15, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !261, file: !52, line: 914, baseType: !15, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !261, file: !52, line: 915, baseType: !269, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !52, line: 891, size: 1600, elements: !271)
!271 = !{!272, !292, !308}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !270, file: !52, line: 892, baseType: !273, size: 448)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !52, line: 844, size: 448, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !291}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !273, file: !52, line: 845, baseType: !269, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !273, file: !52, line: 845, baseType: !7, size: 8, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !52, line: 845, baseType: !7, size: 8, offset: 72)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !273, file: !52, line: 845, baseType: !148, size: 16, offset: 80)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !273, file: !52, line: 845, baseType: !15, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !52, line: 845, baseType: !269, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !273, file: !52, line: 845, baseType: !133, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !273, file: !52, line: 845, baseType: !283, size: 64, offset: 320)
!283 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !52, line: 732, size: 64, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !283, file: !52, line: 733, baseType: !12, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !283, file: !52, line: 734, baseType: !20, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !283, file: !52, line: 735, baseType: !174, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !283, file: !52, line: 736, baseType: !15, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !52, line: 737, baseType: !174, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !283, file: !52, line: 738, baseType: !269, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !273, file: !52, line: 845, baseType: !7, size: 8, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !270, file: !52, line: 893, baseType: !293, size: 640)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !52, line: 851, size: 640, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !293, file: !52, line: 852, baseType: !269, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !293, file: !52, line: 852, baseType: !7, size: 8, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !52, line: 852, baseType: !7, size: 8, offset: 72)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !293, file: !52, line: 852, baseType: !148, size: 16, offset: 80)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !293, file: !52, line: 852, baseType: !15, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !52, line: 852, baseType: !269, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !293, file: !52, line: 852, baseType: !133, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !293, file: !52, line: 852, baseType: !283, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !293, file: !52, line: 852, baseType: !7, size: 8, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !293, file: !52, line: 852, baseType: !174, size: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !293, file: !52, line: 853, baseType: !15, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !293, file: !52, line: 854, baseType: !20, size: 32, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !52, line: 855, baseType: !20, size: 32, offset: 608)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !270, file: !52, line: 894, baseType: !309, size: 1600)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !52, line: 862, size: 1600, elements: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !309, file: !52, line: 863, baseType: !269, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !309, file: !52, line: 863, baseType: !7, size: 8, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !309, file: !52, line: 863, baseType: !7, size: 8, offset: 72)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !309, file: !52, line: 863, baseType: !148, size: 16, offset: 80)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !309, file: !52, line: 863, baseType: !15, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !52, line: 863, baseType: !269, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !309, file: !52, line: 863, baseType: !133, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !309, file: !52, line: 863, baseType: !283, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !309, file: !52, line: 863, baseType: !7, size: 8, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !309, file: !52, line: 863, baseType: !269, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !309, file: !52, line: 864, baseType: !269, size: 64, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !309, file: !52, line: 865, baseType: !174, size: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !309, file: !52, line: 866, baseType: !7, size: 8, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !309, file: !52, line: 867, baseType: !174, size: 64, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !309, file: !52, line: 868, baseType: !174, size: 64, offset: 768)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !309, file: !52, line: 869, baseType: !174, size: 64, offset: 832)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !309, file: !52, line: 870, baseType: !328, size: 32, offset: 896)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 4)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !309, file: !52, line: 871, baseType: !20, size: 32, offset: 928)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !309, file: !52, line: 872, baseType: !20, size: 32, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !309, file: !52, line: 873, baseType: !20, size: 32, offset: 992)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !309, file: !52, line: 874, baseType: !20, size: 32, offset: 1024)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !309, file: !52, line: 875, baseType: !20, size: 32, offset: 1056)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !309, file: !52, line: 876, baseType: !20, size: 32, offset: 1088)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !309, file: !52, line: 877, baseType: !20, size: 32, offset: 1120)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !309, file: !52, line: 878, baseType: !20, size: 32, offset: 1152)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !309, file: !52, line: 879, baseType: !20, size: 32, offset: 1184)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !309, file: !52, line: 880, baseType: !20, size: 32, offset: 1216)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !309, file: !52, line: 881, baseType: !20, size: 32, offset: 1248)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !309, file: !52, line: 882, baseType: !20, size: 32, offset: 1280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !309, file: !52, line: 883, baseType: !20, size: 32, offset: 1312)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !309, file: !52, line: 884, baseType: !148, size: 16, offset: 1344)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !309, file: !52, line: 885, baseType: !7, size: 8, offset: 1360)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !309, file: !52, line: 886, baseType: !7, size: 8, offset: 1368)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !309, file: !52, line: 887, baseType: !7, size: 8, offset: 1376)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !309, file: !52, line: 888, baseType: !349, size: 160, offset: 1384)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 20)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !261, file: !52, line: 916, baseType: !133, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !261, file: !52, line: 917, baseType: !354, size: 64, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !52, line: 679, size: 640, elements: !356)
!356 = !{!357, !365, !378, !387, !396, !409, !423, !435, !447}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !355, file: !52, line: 680, baseType: !358, size: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !52, line: 575, size: 128, elements: !359)
!359 = !{!360, !361, !362, !363, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !52, line: 576, baseType: !25, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !52, line: 576, baseType: !7, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !52, line: 576, baseType: !7, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !52, line: 576, baseType: !148, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !52, line: 576, baseType: !148, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !355, file: !52, line: 681, baseType: !366, size: 384)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !52, line: 604, size: 384, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !52, line: 605, baseType: !25, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !52, line: 605, baseType: !7, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !52, line: 605, baseType: !7, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !52, line: 605, baseType: !148, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !52, line: 605, baseType: !148, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !366, file: !52, line: 606, baseType: !148, size: 16, offset: 112)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !366, file: !52, line: 607, baseType: !269, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !366, file: !52, line: 608, baseType: !15, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !366, file: !52, line: 609, baseType: !15, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !366, file: !52, line: 610, baseType: !12, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !355, file: !52, line: 682, baseType: !379, size: 192)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !52, line: 582, size: 192, elements: !380)
!380 = !{!381, !382, !383, !384, !385, !386}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !379, file: !52, line: 583, baseType: !25, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !379, file: !52, line: 583, baseType: !7, size: 8, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !52, line: 583, baseType: !7, size: 8, offset: 72)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !379, file: !52, line: 583, baseType: !148, size: 16, offset: 80)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !379, file: !52, line: 583, baseType: !148, size: 16, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !379, file: !52, line: 584, baseType: !137, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !355, file: !52, line: 683, baseType: !388, size: 192)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !52, line: 616, size: 192, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !395}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !52, line: 617, baseType: !25, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !388, file: !52, line: 617, baseType: !7, size: 8, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !52, line: 617, baseType: !7, size: 8, offset: 72)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !388, file: !52, line: 617, baseType: !148, size: 16, offset: 80)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !388, file: !52, line: 617, baseType: !148, size: 16, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !388, file: !52, line: 618, baseType: !133, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !355, file: !52, line: 684, baseType: !397, size: 448)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !52, line: 621, size: 448, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !52, line: 622, baseType: !25, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !397, file: !52, line: 622, baseType: !7, size: 8, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !52, line: 622, baseType: !7, size: 8, offset: 72)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !397, file: !52, line: 622, baseType: !148, size: 16, offset: 80)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !397, file: !52, line: 622, baseType: !148, size: 16, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !397, file: !52, line: 623, baseType: !20, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !397, file: !52, line: 624, baseType: !269, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !397, file: !52, line: 625, baseType: !15, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !397, file: !52, line: 626, baseType: !15, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !397, file: !52, line: 627, baseType: !20, size: 32, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !355, file: !52, line: 685, baseType: !410, size: 512)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !52, line: 590, size: 512, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !52, line: 591, baseType: !25, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !410, file: !52, line: 591, baseType: !7, size: 8, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !52, line: 591, baseType: !7, size: 8, offset: 72)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !410, file: !52, line: 591, baseType: !148, size: 16, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !410, file: !52, line: 591, baseType: !148, size: 16, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !410, file: !52, line: 592, baseType: !20, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !410, file: !52, line: 593, baseType: !137, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !410, file: !52, line: 594, baseType: !137, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !410, file: !52, line: 595, baseType: !234, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !410, file: !52, line: 596, baseType: !25, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !410, file: !52, line: 597, baseType: !20, size: 32, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !355, file: !52, line: 686, baseType: !424, size: 320)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !52, line: 634, size: 320, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !52, line: 635, baseType: !25, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !424, file: !52, line: 635, baseType: !7, size: 8, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !52, line: 635, baseType: !7, size: 8, offset: 72)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !424, file: !52, line: 635, baseType: !148, size: 16, offset: 80)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !424, file: !52, line: 635, baseType: !148, size: 16, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !424, file: !52, line: 636, baseType: !7, size: 8, offset: 112)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !424, file: !52, line: 637, baseType: !234, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !424, file: !52, line: 638, baseType: !137, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !424, file: !52, line: 639, baseType: !12, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !355, file: !52, line: 687, baseType: !436, size: 640)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !52, line: 646, size: 640, elements: !437)
!437 = !{!438, !439, !440, !441, !442, !443}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !436, file: !52, line: 647, baseType: !25, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !436, file: !52, line: 647, baseType: !7, size: 8, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !52, line: 647, baseType: !7, size: 8, offset: 72)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !436, file: !52, line: 647, baseType: !148, size: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !436, file: !52, line: 647, baseType: !148, size: 16, offset: 96)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !436, file: !52, line: 648, baseType: !444, size: 512, offset: 128)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 512, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 8)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !355, file: !52, line: 688, baseType: !448, size: 320)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !52, line: 669, size: 320, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !448, file: !52, line: 670, baseType: !25, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !448, file: !52, line: 670, baseType: !7, size: 8, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !52, line: 670, baseType: !7, size: 8, offset: 72)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !448, file: !52, line: 670, baseType: !148, size: 16, offset: 80)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !448, file: !52, line: 670, baseType: !148, size: 16, offset: 96)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !448, file: !52, line: 671, baseType: !7, size: 8, offset: 112)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !448, file: !52, line: 672, baseType: !133, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !448, file: !52, line: 673, baseType: !137, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !448, file: !52, line: 674, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !52, line: 660, size: 128, elements: !461)
!461 = !{!462, !468}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !460, file: !52, line: 661, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467, !20, !25}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !25)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !460, file: !52, line: 662, baseType: !25, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !261, file: !52, line: 918, baseType: !269, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !261, file: !52, line: 919, baseType: !20, size: 32, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !235, file: !236, line: 61, baseType: !20, size: 32, offset: 1088)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !235, file: !236, line: 62, baseType: !20, size: 32, offset: 1120)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !235, file: !236, line: 63, baseType: !148, size: 16, offset: 1152)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !235, file: !236, line: 64, baseType: !7, size: 8, offset: 1168)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !235, file: !236, line: 66, baseType: !476, size: 2688, offset: 1216)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 2688, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 7)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !235, file: !236, line: 67, baseType: !480, size: 3072, offset: 3904)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 3072, elements: !445)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !235, file: !236, line: 68, baseType: !482, size: 576, offset: 6976)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 576, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 9)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !235, file: !236, line: 69, baseType: !199, size: 64, offset: 7552)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !235, file: !236, line: 71, baseType: !15, size: 64, offset: 7616)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !235, file: !236, line: 72, baseType: !199, size: 64, offset: 7680)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !235, file: !236, line: 73, baseType: !354, size: 64, offset: 7744)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !235, file: !236, line: 74, baseType: !133, size: 64, offset: 7808)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !235, file: !236, line: 75, baseType: !137, size: 64, offset: 7872)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !235, file: !236, line: 76, baseType: !133, size: 64, offset: 7936)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !235, file: !236, line: 77, baseType: !269, size: 64, offset: 8000)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !235, file: !236, line: 78, baseType: !137, size: 64, offset: 8064)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !235, file: !236, line: 79, baseType: !133, size: 64, offset: 8128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !235, file: !236, line: 80, baseType: !174, size: 64, offset: 8192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !235, file: !236, line: 81, baseType: !269, size: 64, offset: 8256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !235, file: !236, line: 82, baseType: !498, size: 64, offset: 8320)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !52, line: 718, size: 128, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !500, file: !52, line: 722, baseType: !20, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !500, file: !52, line: 723, baseType: !20, size: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !52, line: 724, baseType: !148, size: 16, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !500, file: !52, line: 725, baseType: !7, size: 8, offset: 80)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !500, file: !52, line: 726, baseType: !7, size: 8, offset: 88)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !52, line: 727, baseType: !7, size: 8, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !235, file: !236, line: 83, baseType: !269, size: 64, offset: 8384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !235, file: !236, line: 84, baseType: !137, size: 64, offset: 8448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !235, file: !236, line: 85, baseType: !354, size: 64, offset: 8512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !235, file: !236, line: 86, baseType: !137, size: 64, offset: 8576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !235, file: !236, line: 87, baseType: !354, size: 64, offset: 8640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !235, file: !236, line: 88, baseType: !269, size: 64, offset: 8704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !235, file: !236, line: 89, baseType: !269, size: 64, offset: 8768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !235, file: !236, line: 90, baseType: !516, size: 64, offset: 8832)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !235, file: !236, line: 91, baseType: !518, size: 64, offset: 8896)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !52, line: 652, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!19, !234, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !235, file: !236, line: 92, baseType: !524, size: 64, offset: 8960)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !52, line: 656, baseType: !231)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !227, file: !139, line: 153, baseType: !137, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !213, file: !139, line: 156, baseType: !20, size: 32, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !213, file: !139, line: 157, baseType: !246, size: 16, offset: 416)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !213, file: !139, line: 158, baseType: !7, size: 8, offset: 432)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !138, file: !139, line: 377, baseType: !530, size: 576)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !139, line: 122, size: 576, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !530, file: !139, line: 123, baseType: !137, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !530, file: !139, line: 123, baseType: !7, size: 8, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !139, line: 123, baseType: !7, size: 8, offset: 72)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !530, file: !139, line: 123, baseType: !148, size: 16, offset: 80)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !139, line: 123, baseType: !7, size: 8, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !530, file: !139, line: 123, baseType: !7, size: 8, offset: 104)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !530, file: !139, line: 124, baseType: !148, size: 16, offset: 112)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !530, file: !139, line: 125, baseType: !25, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !530, file: !139, line: 126, baseType: !12, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !530, file: !139, line: 127, baseType: !516, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !530, file: !139, line: 128, baseType: !137, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !139, line: 129, baseType: !137, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !530, file: !139, line: 130, baseType: !133, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !530, file: !139, line: 131, baseType: !7, size: 8, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !138, file: !139, line: 378, baseType: !547, size: 512)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !139, line: 134, size: 512, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !560, !561}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !547, file: !139, line: 135, baseType: !137, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !547, file: !139, line: 135, baseType: !7, size: 8, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !547, file: !139, line: 135, baseType: !7, size: 8, offset: 72)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !547, file: !139, line: 135, baseType: !148, size: 16, offset: 80)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !139, line: 135, baseType: !7, size: 8, offset: 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !547, file: !139, line: 135, baseType: !7, size: 8, offset: 104)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !547, file: !139, line: 136, baseType: !133, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !547, file: !139, line: 137, baseType: !137, size: 64, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !139, line: 138, baseType: !137, size: 64, offset: 256)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !139, line: 139, baseType: !559, size: 64, offset: 320)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !12)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !547, file: !139, line: 140, baseType: !20, size: 32, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !547, file: !139, line: 141, baseType: !25, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !138, file: !139, line: 379, baseType: !563, size: 320)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !139, line: 185, size: 320, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !574}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !563, file: !139, line: 186, baseType: !137, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !563, file: !139, line: 186, baseType: !7, size: 8, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !563, file: !139, line: 186, baseType: !7, size: 8, offset: 72)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !563, file: !139, line: 186, baseType: !148, size: 16, offset: 80)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !563, file: !139, line: 186, baseType: !7, size: 8, offset: 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !563, file: !139, line: 186, baseType: !571, size: 128, offset: 128)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 2)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !563, file: !139, line: 186, baseType: !137, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !138, file: !139, line: 380, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !139, line: 188, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !139, line: 189, baseType: !137, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !139, line: 189, baseType: !7, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !139, line: 189, baseType: !7, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !139, line: 189, baseType: !148, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !139, line: 189, baseType: !7, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !139, line: 190, baseType: !571, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !139, line: 190, baseType: !137, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !576, file: !139, line: 190, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !52, line: 480, size: 576, elements: !588)
!588 = !{!589, !590, !591, !592, !600, !611, !612, !613, !614, !615, !616, !617}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !587, file: !52, line: 481, baseType: !133, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !587, file: !52, line: 482, baseType: !586, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !587, file: !52, line: 483, baseType: !586, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !587, file: !52, line: 484, baseType: !593, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !52, line: 497, size: 256, elements: !595)
!595 = !{!596, !597, !598, !599}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !594, file: !52, line: 498, baseType: !593, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !52, line: 499, baseType: !593, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !594, file: !52, line: 500, baseType: !586, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !594, file: !52, line: 501, baseType: !20, size: 32, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !587, file: !52, line: 485, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !52, line: 466, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !602, file: !52, line: 467, baseType: !51, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !602, file: !52, line: 468, baseType: !51, size: 128, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !602, file: !52, line: 469, baseType: !148, size: 16, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !602, file: !52, line: 470, baseType: !7, size: 8, offset: 272)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !602, file: !52, line: 471, baseType: !7, size: 8, offset: 280)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !602, file: !52, line: 472, baseType: !7, size: 8, offset: 288)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !602, file: !52, line: 473, baseType: !7, size: 8, offset: 296)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !587, file: !52, line: 486, baseType: !126, size: 64, offset: 320)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !587, file: !52, line: 487, baseType: !12, size: 64, offset: 384)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !587, file: !52, line: 488, baseType: !20, size: 32, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !587, file: !52, line: 489, baseType: !148, size: 16, offset: 480)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !587, file: !52, line: 490, baseType: !148, size: 16, offset: 496)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !587, file: !52, line: 491, baseType: !7, size: 8, offset: 512)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !587, file: !52, line: 492, baseType: !7, size: 8, offset: 520)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !138, file: !139, line: 381, baseType: !619, size: 384)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !139, line: 193, size: 384, elements: !620)
!620 = !{!621, !622, !623, !624, !625, !626, !627, !628, !629}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !619, file: !139, line: 194, baseType: !137, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !619, file: !139, line: 194, baseType: !7, size: 8, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !139, line: 194, baseType: !7, size: 8, offset: 72)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !619, file: !139, line: 194, baseType: !148, size: 16, offset: 80)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !139, line: 194, baseType: !7, size: 8, offset: 96)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !619, file: !139, line: 194, baseType: !571, size: 128, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !619, file: !139, line: 194, baseType: !137, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !619, file: !139, line: 194, baseType: !20, size: 32, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !619, file: !139, line: 195, baseType: !20, size: 32, offset: 352)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !138, file: !139, line: 382, baseType: !631, size: 384)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !139, line: 198, size: 384, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !139, line: 199, baseType: !137, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !139, line: 199, baseType: !7, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !139, line: 199, baseType: !7, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !139, line: 199, baseType: !148, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !139, line: 199, baseType: !7, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !631, file: !139, line: 201, baseType: !7, size: 8, offset: 104)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !631, file: !139, line: 202, baseType: !7, size: 8, offset: 112)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !631, file: !139, line: 203, baseType: !571, size: 128, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !631, file: !139, line: 203, baseType: !137, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !631, file: !139, line: 203, baseType: !23, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !138, file: !139, line: 383, baseType: !644, size: 320)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !139, line: 206, size: 320, elements: !645)
!645 = !{!646, !647, !648, !649, !650, !651, !652}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !644, file: !139, line: 207, baseType: !137, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !644, file: !139, line: 207, baseType: !7, size: 8, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !139, line: 207, baseType: !7, size: 8, offset: 72)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !644, file: !139, line: 207, baseType: !148, size: 16, offset: 80)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !139, line: 207, baseType: !7, size: 8, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !644, file: !139, line: 207, baseType: !571, size: 128, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !644, file: !139, line: 207, baseType: !137, size: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !138, file: !139, line: 384, baseType: !654, size: 384)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !139, line: 234, size: 384, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !654, file: !139, line: 235, baseType: !137, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !654, file: !139, line: 235, baseType: !7, size: 8, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !654, file: !139, line: 235, baseType: !7, size: 8, offset: 72)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !654, file: !139, line: 235, baseType: !148, size: 16, offset: 80)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !139, line: 235, baseType: !7, size: 8, offset: 96)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !654, file: !139, line: 235, baseType: !7, size: 8, offset: 104)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !654, file: !139, line: 235, baseType: !7, size: 8, offset: 112)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !654, file: !139, line: 235, baseType: !7, size: 8, offset: 120)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !139, line: 235, baseType: !133, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !654, file: !139, line: 235, baseType: !20, size: 32, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !654, file: !139, line: 235, baseType: !20, size: 32, offset: 224)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !654, file: !139, line: 235, baseType: !20, size: 32, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !654, file: !139, line: 235, baseType: !7, size: 8, offset: 288)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !654, file: !139, line: 235, baseType: !7, size: 8, offset: 296)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !654, file: !139, line: 235, baseType: !137, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !138, file: !139, line: 385, baseType: !672, size: 576)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !139, line: 238, size: 576, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !672, file: !139, line: 239, baseType: !137, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !139, line: 239, baseType: !7, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !139, line: 239, baseType: !7, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !672, file: !139, line: 239, baseType: !148, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !139, line: 239, baseType: !7, size: 8, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !672, file: !139, line: 239, baseType: !7, size: 8, offset: 104)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !672, file: !139, line: 239, baseType: !7, size: 8, offset: 112)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !672, file: !139, line: 239, baseType: !7, size: 8, offset: 120)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !139, line: 239, baseType: !133, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !672, file: !139, line: 239, baseType: !20, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !672, file: !139, line: 239, baseType: !20, size: 32, offset: 224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !139, line: 239, baseType: !20, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !672, file: !139, line: 239, baseType: !7, size: 8, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !672, file: !139, line: 239, baseType: !7, size: 8, offset: 296)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !672, file: !139, line: 239, baseType: !148, size: 16, offset: 304)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !672, file: !139, line: 240, baseType: !137, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !672, file: !139, line: 241, baseType: !15, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !672, file: !139, line: 242, baseType: !148, size: 16, offset: 448)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !672, file: !139, line: 243, baseType: !15, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !138, file: !139, line: 386, baseType: !694, size: 384)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !139, line: 263, size: 384, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !694, file: !139, line: 264, baseType: !137, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !694, file: !139, line: 264, baseType: !7, size: 8, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !139, line: 264, baseType: !7, size: 8, offset: 72)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !694, file: !139, line: 264, baseType: !148, size: 16, offset: 80)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !139, line: 264, baseType: !7, size: 8, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !694, file: !139, line: 264, baseType: !7, size: 8, offset: 104)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !694, file: !139, line: 264, baseType: !7, size: 8, offset: 112)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !694, file: !139, line: 264, baseType: !7, size: 8, offset: 120)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !694, file: !139, line: 264, baseType: !133, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !694, file: !139, line: 264, baseType: !20, size: 32, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !694, file: !139, line: 264, baseType: !20, size: 32, offset: 224)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !694, file: !139, line: 264, baseType: !20, size: 32, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !694, file: !139, line: 264, baseType: !7, size: 8, offset: 288)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !694, file: !139, line: 264, baseType: !7, size: 8, offset: 296)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !694, file: !139, line: 264, baseType: !7, size: 8, offset: 304)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !694, file: !139, line: 265, baseType: !137, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !138, file: !139, line: 387, baseType: !713, size: 448)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !139, line: 246, size: 448, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !713, file: !139, line: 247, baseType: !137, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !713, file: !139, line: 247, baseType: !7, size: 8, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !139, line: 247, baseType: !7, size: 8, offset: 72)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !713, file: !139, line: 247, baseType: !148, size: 16, offset: 80)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !139, line: 247, baseType: !7, size: 8, offset: 96)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !713, file: !139, line: 247, baseType: !7, size: 8, offset: 104)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !713, file: !139, line: 247, baseType: !7, size: 8, offset: 112)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !713, file: !139, line: 247, baseType: !7, size: 8, offset: 120)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !139, line: 247, baseType: !133, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !713, file: !139, line: 247, baseType: !20, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !713, file: !139, line: 247, baseType: !20, size: 32, offset: 224)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !713, file: !139, line: 247, baseType: !20, size: 32, offset: 256)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !713, file: !139, line: 247, baseType: !7, size: 8, offset: 288)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !713, file: !139, line: 247, baseType: !7, size: 8, offset: 296)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !713, file: !139, line: 247, baseType: !137, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !713, file: !139, line: 248, baseType: !137, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !138, file: !139, line: 388, baseType: !732, size: 448)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !139, line: 251, size: 448, elements: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !732, file: !139, line: 252, baseType: !137, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !732, file: !139, line: 252, baseType: !7, size: 8, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !139, line: 252, baseType: !7, size: 8, offset: 72)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !732, file: !139, line: 252, baseType: !148, size: 16, offset: 80)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !139, line: 252, baseType: !7, size: 8, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !732, file: !139, line: 252, baseType: !7, size: 8, offset: 104)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !732, file: !139, line: 252, baseType: !7, size: 8, offset: 112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !732, file: !139, line: 252, baseType: !7, size: 8, offset: 120)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !139, line: 252, baseType: !133, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !732, file: !139, line: 252, baseType: !20, size: 32, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !732, file: !139, line: 252, baseType: !20, size: 32, offset: 224)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !732, file: !139, line: 252, baseType: !20, size: 32, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !732, file: !139, line: 252, baseType: !7, size: 8, offset: 288)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !732, file: !139, line: 252, baseType: !7, size: 8, offset: 296)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !732, file: !139, line: 257, baseType: !137, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !732, file: !139, line: 258, baseType: !137, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !138, file: !139, line: 389, baseType: !751, size: 512)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !139, line: 274, size: 512, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !751, file: !139, line: 275, baseType: !137, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !751, file: !139, line: 275, baseType: !7, size: 8, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !751, file: !139, line: 275, baseType: !7, size: 8, offset: 72)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !751, file: !139, line: 275, baseType: !148, size: 16, offset: 80)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !751, file: !139, line: 275, baseType: !7, size: 8, offset: 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !751, file: !139, line: 275, baseType: !133, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !751, file: !139, line: 276, baseType: !20, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !751, file: !139, line: 277, baseType: !463, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !751, file: !139, line: 278, baseType: !25, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !139, line: 279, baseType: !571, size: 128, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !138, file: !139, line: 390, baseType: !764, size: 576)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !139, line: 282, size: 576, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !778, !779, !780, !781, !787, !788}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !764, file: !139, line: 283, baseType: !137, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !764, file: !139, line: 283, baseType: !7, size: 8, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !764, file: !139, line: 283, baseType: !7, size: 8, offset: 72)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !764, file: !139, line: 283, baseType: !148, size: 16, offset: 80)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !139, line: 283, baseType: !7, size: 8, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !764, file: !139, line: 283, baseType: !7, size: 8, offset: 104)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !764, file: !139, line: 284, baseType: !7, size: 8, offset: 112)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !764, file: !139, line: 285, baseType: !774, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!19, !20, !559, !20, !49, !25, !25}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !139, line: 286, baseType: !133, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !764, file: !139, line: 287, baseType: !25, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !764, file: !139, line: 288, baseType: !25, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !764, file: !139, line: 289, baseType: !782, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!19, !467, !20, !25, !786}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !764, file: !139, line: 290, baseType: !137, size: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !764, file: !139, line: 291, baseType: !137, size: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !138, file: !139, line: 391, baseType: !790, size: 512)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !139, line: 309, size: 512, elements: !791)
!791 = !{!792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !790, file: !139, line: 310, baseType: !137, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !790, file: !139, line: 310, baseType: !7, size: 8, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !139, line: 310, baseType: !7, size: 8, offset: 72)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !790, file: !139, line: 310, baseType: !148, size: 16, offset: 80)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !139, line: 310, baseType: !7, size: 8, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !790, file: !139, line: 310, baseType: !7, size: 8, offset: 104)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !790, file: !139, line: 311, baseType: !7, size: 8, offset: 112)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !790, file: !139, line: 312, baseType: !7, size: 8, offset: 120)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !790, file: !139, line: 313, baseType: !25, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !790, file: !139, line: 314, baseType: !133, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !790, file: !139, line: 315, baseType: !199, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !790, file: !139, line: 316, baseType: !15, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !790, file: !139, line: 317, baseType: !15, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !790, file: !139, line: 318, baseType: !20, size: 32, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !138, file: !139, line: 392, baseType: !807, size: 448)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !139, line: 342, size: 448, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !807, file: !139, line: 343, baseType: !137, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !807, file: !139, line: 343, baseType: !7, size: 8, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !139, line: 343, baseType: !7, size: 8, offset: 72)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !807, file: !139, line: 343, baseType: !148, size: 16, offset: 80)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !807, file: !139, line: 343, baseType: !7, size: 8, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !807, file: !139, line: 343, baseType: !133, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !807, file: !139, line: 344, baseType: !133, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !807, file: !139, line: 345, baseType: !25, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !807, file: !139, line: 346, baseType: !15, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !807, file: !139, line: 347, baseType: !20, size: 32, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !138, file: !139, line: 393, baseType: !820, size: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !139, line: 352, size: 256, elements: !821)
!821 = !{!822, !823, !824, !825, !826, !827, !832}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !820, file: !139, line: 353, baseType: !137, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !820, file: !139, line: 353, baseType: !7, size: 8, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !820, file: !139, line: 353, baseType: !7, size: 8, offset: 72)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !820, file: !139, line: 353, baseType: !148, size: 16, offset: 80)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !820, file: !139, line: 353, baseType: !7, size: 8, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !820, file: !139, line: 353, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !467, !25}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !820, file: !139, line: 354, baseType: !25, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !138, file: !139, line: 394, baseType: !834, size: 192)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !139, line: 359, size: 192, elements: !835)
!835 = !{!836, !837, !838, !839, !840, !841}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !834, file: !139, line: 360, baseType: !137, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !834, file: !139, line: 360, baseType: !7, size: 8, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !834, file: !139, line: 360, baseType: !7, size: 8, offset: 72)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !834, file: !139, line: 360, baseType: !148, size: 16, offset: 80)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !139, line: 360, baseType: !7, size: 8, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !834, file: !139, line: 360, baseType: !137, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !138, file: !139, line: 401, baseType: !134, size: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !52, line: 135, baseType: !7, size: 8, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !52, line: 136, baseType: !7, size: 8, offset: 72)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !52, line: 137, baseType: !148, size: 16, offset: 80)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !134, file: !52, line: 138, baseType: !847, size: 32, offset: 96)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !848, line: 328, size: 32, elements: !849)
!848 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !847, file: !848, line: 329, baseType: !20, size: 32)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !847, file: !848, line: 330, baseType: !328, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !134, file: !52, line: 139, baseType: !133, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !134, file: !52, line: 140, baseType: !133, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !134, file: !52, line: 141, baseType: !133, size: 64, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !134, file: !52, line: 142, baseType: !246, size: 16, offset: 320)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !130, file: !52, line: 440, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !52, line: 419, size: 256, elements: !859)
!859 = !{!860, !865, !866, !867, !868}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !858, file: !52, line: 420, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!20, !467, !20, !25}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !858, file: !52, line: 421, baseType: !25, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !858, file: !52, line: 422, baseType: !133, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !858, file: !52, line: 423, baseType: !7, size: 8, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !858, file: !52, line: 424, baseType: !7, size: 8, offset: 200)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !130, file: !52, line: 441, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !52, line: 429, size: 128, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !871, file: !52, line: 430, baseType: !133, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !52, line: 431, baseType: !870, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !127, file: !52, line: 450, baseType: !601, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !52, line: 451, baseType: !7, size: 8, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !127, file: !52, line: 452, baseType: !7, size: 8, offset: 136)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !127, file: !52, line: 453, baseType: !7, size: 8, offset: 144)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !127, file: !52, line: 454, baseType: !7, size: 8, offset: 152)
!880 = !{!881}
!881 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !123, file: !3, line: 110, type: !126)
!882 = !DILocation(line: 110, column: 62, scope: !123)
!883 = !DILocation(line: 114, column: 4, scope: !123)
!884 = !DILocation(line: 114, column: 20, scope: !123)
!885 = !DILocation(line: 115, column: 4, scope: !123)
!886 = !DILocation(line: 115, column: 20, scope: !123)
!887 = !DILocation(line: 115, column: 35, scope: !123)
!888 = !DILocation(line: 114, column: 31, scope: !123)
!889 = !DILocation(line: 113, column: 17, scope: !123)
!890 = !DILocation(line: 113, column: 2, scope: !123)
!891 = distinct !DISubprogram(name: "acpi_hw_low_set_gpe", scope: !3, file: !3, line: 134, type: !892, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !894)
!892 = !DISubroutineType(types: !893)
!893 = !{!19, !126, !20}
!894 = !{!895, !896, !897, !898, !899, !900}
!895 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !891, file: !3, line: 134, type: !126)
!896 = !DILocalVariable(name: "action", arg: 2, scope: !891, file: !3, line: 134, type: !20)
!897 = !DILocalVariable(name: "gpe_register_info", scope: !891, file: !3, line: 136, type: !601)
!898 = !DILocalVariable(name: "status", scope: !891, file: !3, line: 137, type: !19)
!899 = !DILocalVariable(name: "enable_mask", scope: !891, file: !3, line: 138, type: !12)
!900 = !DILocalVariable(name: "register_bit", scope: !891, file: !3, line: 139, type: !20)
!901 = !DILocation(line: 134, column: 49, scope: !891)
!902 = !DILocation(line: 134, column: 69, scope: !891)
!903 = !DILocation(line: 136, column: 2, scope: !891)
!904 = !DILocation(line: 136, column: 33, scope: !891)
!905 = !DILocation(line: 137, column: 2, scope: !891)
!906 = !DILocation(line: 137, column: 14, scope: !891)
!907 = !DILocation(line: 138, column: 2, scope: !891)
!908 = !DILocation(line: 138, column: 6, scope: !891)
!909 = !DILocation(line: 139, column: 2, scope: !891)
!910 = !DILocation(line: 139, column: 6, scope: !891)
!911 = !DILocation(line: 145, column: 22, scope: !891)
!912 = !DILocation(line: 145, column: 38, scope: !891)
!913 = !DILocation(line: 145, column: 20, scope: !891)
!914 = !DILocation(line: 146, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !891, file: !3, line: 146, column: 6)
!916 = !DILocation(line: 146, column: 6, scope: !891)
!917 = !DILocation(line: 147, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !3, line: 146, column: 26)
!919 = !DILocation(line: 153, column: 8, scope: !891)
!920 = !DILocation(line: 153, column: 27, scope: !891)
!921 = !DILocation(line: 152, column: 11, scope: !891)
!922 = !DILocation(line: 152, column: 9, scope: !891)
!923 = !DILocation(line: 154, column: 6, scope: !924)
!924 = distinct !DILexicalBlock(scope: !891, file: !3, line: 154, column: 6)
!925 = !DILocation(line: 154, column: 6, scope: !891)
!926 = !DILocation(line: 155, column: 11, scope: !927)
!927 = distinct !DILexicalBlock(scope: !924, file: !3, line: 154, column: 28)
!928 = !DILocation(line: 155, column: 3, scope: !927)
!929 = !DILocation(line: 160, column: 46, scope: !891)
!930 = !DILocation(line: 160, column: 17, scope: !891)
!931 = !DILocation(line: 160, column: 15, scope: !891)
!932 = !DILocation(line: 161, column: 10, scope: !891)
!933 = !DILocation(line: 161, column: 2, scope: !891)
!934 = !DILocation(line: 166, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 166, column: 7)
!936 = distinct !DILexicalBlock(scope: !891, file: !3, line: 161, column: 18)
!937 = !DILocation(line: 166, column: 24, scope: !935)
!938 = !DILocation(line: 166, column: 43, scope: !935)
!939 = !DILocation(line: 166, column: 22, scope: !935)
!940 = !DILocation(line: 166, column: 7, scope: !936)
!941 = !DILocation(line: 167, column: 4, scope: !942)
!942 = distinct !DILexicalBlock(scope: !935, file: !3, line: 166, column: 57)
!943 = !DILocation(line: 166, column: 54, scope: !935)
!944 = !DILocation(line: 174, column: 3, scope: !936)
!945 = !DILocation(line: 175, column: 3, scope: !936)
!946 = !DILocation(line: 179, column: 3, scope: !936)
!947 = !DILocation(line: 180, column: 3, scope: !936)
!948 = !DILocation(line: 184, column: 3, scope: !936)
!949 = !DILocation(line: 185, column: 3, scope: !936)
!950 = !DILocation(line: 188, column: 8, scope: !951)
!951 = distinct !DILexicalBlock(scope: !891, file: !3, line: 188, column: 6)
!952 = !DILocation(line: 188, column: 23, scope: !951)
!953 = !DILocation(line: 188, column: 42, scope: !951)
!954 = !DILocation(line: 188, column: 21, scope: !951)
!955 = !DILocation(line: 188, column: 6, scope: !891)
!956 = !DILocation(line: 192, column: 30, scope: !957)
!957 = distinct !DILexicalBlock(scope: !951, file: !3, line: 188, column: 57)
!958 = !DILocation(line: 193, column: 10, scope: !957)
!959 = !DILocation(line: 193, column: 29, scope: !957)
!960 = !DILocation(line: 192, column: 12, scope: !957)
!961 = !DILocation(line: 192, column: 10, scope: !957)
!962 = !DILocation(line: 194, column: 2, scope: !957)
!963 = !DILocation(line: 195, column: 10, scope: !891)
!964 = !DILocation(line: 195, column: 2, scope: !891)
!965 = !DILocation(line: 196, column: 1, scope: !891)
!966 = !DISubprogram(name: "acpi_error", scope: !967, file: !967, line: 901, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!968 = !DISubroutineType(types: !969)
!969 = !{null, !970, !20, !970, null}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!971 = distinct !DISubprogram(name: "acpi_hw_clear_gpe", scope: !3, file: !3, line: 210, type: !972, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{!19, !126}
!974 = !{!975, !976, !977, !978}
!975 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !971, file: !3, line: 210, type: !126)
!976 = !DILocalVariable(name: "gpe_register_info", scope: !971, file: !3, line: 212, type: !601)
!977 = !DILocalVariable(name: "status", scope: !971, file: !3, line: 213, type: !19)
!978 = !DILocalVariable(name: "register_bit", scope: !971, file: !3, line: 214, type: !20)
!979 = !DILocation(line: 210, column: 59, scope: !971)
!980 = !DILocation(line: 212, column: 2, scope: !971)
!981 = !DILocation(line: 212, column: 33, scope: !971)
!982 = !DILocation(line: 213, column: 2, scope: !971)
!983 = !DILocation(line: 213, column: 14, scope: !971)
!984 = !DILocation(line: 214, column: 2, scope: !971)
!985 = !DILocation(line: 214, column: 6, scope: !971)
!986 = !DILocation(line: 220, column: 22, scope: !971)
!987 = !DILocation(line: 220, column: 38, scope: !971)
!988 = !DILocation(line: 220, column: 20, scope: !971)
!989 = !DILocation(line: 221, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !971, file: !3, line: 221, column: 6)
!991 = !DILocation(line: 221, column: 6, scope: !971)
!992 = !DILocation(line: 222, column: 3, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !3, line: 221, column: 26)
!994 = !DILocation(line: 229, column: 46, scope: !971)
!995 = !DILocation(line: 229, column: 17, scope: !971)
!996 = !DILocation(line: 229, column: 15, scope: !971)
!997 = !DILocation(line: 231, column: 29, scope: !971)
!998 = !DILocation(line: 232, column: 9, scope: !971)
!999 = !DILocation(line: 232, column: 28, scope: !971)
!1000 = !DILocation(line: 231, column: 11, scope: !971)
!1001 = !DILocation(line: 231, column: 9, scope: !971)
!1002 = !DILocation(line: 233, column: 10, scope: !971)
!1003 = !DILocation(line: 233, column: 2, scope: !971)
!1004 = !DILocation(line: 234, column: 1, scope: !971)
!1005 = distinct !DISubprogram(name: "acpi_hw_get_gpe_status", scope: !3, file: !3, line: 250, type: !1006, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1009)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!19, !126, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!1009 = !{!1010, !1011, !1012, !1013, !1014, !1015, !1016}
!1010 = !DILocalVariable(name: "gpe_event_info", arg: 1, scope: !1005, file: !3, line: 250, type: !126)
!1011 = !DILocalVariable(name: "event_status", arg: 2, scope: !1005, file: !3, line: 251, type: !1008)
!1012 = !DILocalVariable(name: "in_byte", scope: !1005, file: !3, line: 253, type: !12)
!1013 = !DILocalVariable(name: "register_bit", scope: !1005, file: !3, line: 254, type: !20)
!1014 = !DILocalVariable(name: "gpe_register_info", scope: !1005, file: !3, line: 255, type: !601)
!1015 = !DILocalVariable(name: "local_event_status", scope: !1005, file: !3, line: 256, type: !24)
!1016 = !DILocalVariable(name: "status", scope: !1005, file: !3, line: 257, type: !19)
!1017 = !DILocation(line: 250, column: 52, scope: !1005)
!1018 = !DILocation(line: 251, column: 29, scope: !1005)
!1019 = !DILocation(line: 253, column: 2, scope: !1005)
!1020 = !DILocation(line: 253, column: 6, scope: !1005)
!1021 = !DILocation(line: 254, column: 2, scope: !1005)
!1022 = !DILocation(line: 254, column: 6, scope: !1005)
!1023 = !DILocation(line: 255, column: 2, scope: !1005)
!1024 = !DILocation(line: 255, column: 33, scope: !1005)
!1025 = !DILocation(line: 256, column: 2, scope: !1005)
!1026 = !DILocation(line: 256, column: 20, scope: !1005)
!1027 = !DILocation(line: 257, column: 2, scope: !1005)
!1028 = !DILocation(line: 257, column: 14, scope: !1005)
!1029 = !DILocation(line: 261, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 261, column: 6)
!1031 = !DILocation(line: 261, column: 6, scope: !1005)
!1032 = !DILocation(line: 262, column: 3, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 261, column: 21)
!1034 = !DILocation(line: 267, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 267, column: 6)
!1036 = !DILocation(line: 267, column: 52, scope: !1035)
!1037 = !DILocation(line: 267, column: 6, scope: !1005)
!1038 = !DILocation(line: 269, column: 22, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 268, column: 30)
!1040 = !DILocation(line: 270, column: 2, scope: !1039)
!1041 = !DILocation(line: 274, column: 22, scope: !1005)
!1042 = !DILocation(line: 274, column: 38, scope: !1005)
!1043 = !DILocation(line: 274, column: 20, scope: !1005)
!1044 = !DILocation(line: 278, column: 46, scope: !1005)
!1045 = !DILocation(line: 278, column: 17, scope: !1005)
!1046 = !DILocation(line: 278, column: 15, scope: !1005)
!1047 = !DILocation(line: 282, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 282, column: 6)
!1049 = !DILocation(line: 282, column: 21, scope: !1048)
!1050 = !DILocation(line: 282, column: 40, scope: !1048)
!1051 = !DILocation(line: 282, column: 19, scope: !1048)
!1052 = !DILocation(line: 282, column: 6, scope: !1005)
!1053 = !DILocation(line: 283, column: 22, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 282, column: 56)
!1055 = !DILocation(line: 284, column: 2, scope: !1054)
!1056 = !DILocation(line: 288, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 288, column: 6)
!1058 = !DILocation(line: 288, column: 21, scope: !1057)
!1059 = !DILocation(line: 288, column: 40, scope: !1057)
!1060 = !DILocation(line: 288, column: 19, scope: !1057)
!1061 = !DILocation(line: 288, column: 6, scope: !1005)
!1062 = !DILocation(line: 289, column: 22, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 288, column: 54)
!1064 = !DILocation(line: 290, column: 2, scope: !1063)
!1065 = !DILocation(line: 294, column: 6, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 294, column: 6)
!1067 = !DILocation(line: 294, column: 21, scope: !1066)
!1068 = !DILocation(line: 294, column: 40, scope: !1066)
!1069 = !DILocation(line: 294, column: 19, scope: !1066)
!1070 = !DILocation(line: 294, column: 6, scope: !1005)
!1071 = !DILocation(line: 295, column: 22, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 294, column: 57)
!1073 = !DILocation(line: 296, column: 2, scope: !1072)
!1074 = !DILocation(line: 300, column: 39, scope: !1005)
!1075 = !DILocation(line: 300, column: 58, scope: !1005)
!1076 = !DILocation(line: 300, column: 11, scope: !1005)
!1077 = !DILocation(line: 300, column: 9, scope: !1005)
!1078 = !DILocation(line: 301, column: 6, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 301, column: 6)
!1080 = !DILocation(line: 301, column: 6, scope: !1005)
!1081 = !DILocation(line: 302, column: 11, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 301, column: 28)
!1083 = !DILocation(line: 302, column: 3, scope: !1082)
!1084 = !DILocation(line: 305, column: 6, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 305, column: 6)
!1086 = !DILocation(line: 305, column: 21, scope: !1085)
!1087 = !DILocation(line: 305, column: 19, scope: !1085)
!1088 = !DILocation(line: 305, column: 6, scope: !1005)
!1089 = !DILocation(line: 306, column: 22, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 305, column: 30)
!1091 = !DILocation(line: 307, column: 2, scope: !1090)
!1092 = !DILocation(line: 311, column: 39, scope: !1005)
!1093 = !DILocation(line: 311, column: 58, scope: !1005)
!1094 = !DILocation(line: 311, column: 11, scope: !1005)
!1095 = !DILocation(line: 311, column: 9, scope: !1005)
!1096 = !DILocation(line: 312, column: 6, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 312, column: 6)
!1098 = !DILocation(line: 312, column: 6, scope: !1005)
!1099 = !DILocation(line: 313, column: 11, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 312, column: 28)
!1101 = !DILocation(line: 313, column: 3, scope: !1100)
!1102 = !DILocation(line: 316, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 316, column: 6)
!1104 = !DILocation(line: 316, column: 21, scope: !1103)
!1105 = !DILocation(line: 316, column: 19, scope: !1103)
!1106 = !DILocation(line: 316, column: 6, scope: !1005)
!1107 = !DILocation(line: 317, column: 22, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 316, column: 30)
!1109 = !DILocation(line: 318, column: 2, scope: !1108)
!1110 = !DILocation(line: 322, column: 20, scope: !1005)
!1111 = !DILocation(line: 322, column: 4, scope: !1005)
!1112 = !DILocation(line: 322, column: 18, scope: !1005)
!1113 = !DILocation(line: 323, column: 2, scope: !1005)
!1114 = !DILocation(line: 324, column: 1, scope: !1005)
!1115 = distinct !DISubprogram(name: "acpi_hw_disable_gpe_block", scope: !3, file: !3, line: 366, type: !1116, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!19, !593, !586, !25}
!1118 = !{!1119, !1120, !1121, !1122, !1123}
!1119 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1115, file: !3, line: 366, type: !593)
!1120 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1115, file: !3, line: 367, type: !586)
!1121 = !DILocalVariable(name: "context", arg: 3, scope: !1115, file: !3, line: 367, type: !25)
!1122 = !DILocalVariable(name: "i", scope: !1115, file: !3, line: 369, type: !20)
!1123 = !DILocalVariable(name: "status", scope: !1115, file: !3, line: 370, type: !19)
!1124 = !DILocation(line: 366, column: 55, scope: !1115)
!1125 = !DILocation(line: 367, column: 34, scope: !1115)
!1126 = !DILocation(line: 367, column: 51, scope: !1115)
!1127 = !DILocation(line: 369, column: 2, scope: !1115)
!1128 = !DILocation(line: 369, column: 6, scope: !1115)
!1129 = !DILocation(line: 370, column: 2, scope: !1115)
!1130 = !DILocation(line: 370, column: 14, scope: !1115)
!1131 = !DILocation(line: 374, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 374, column: 2)
!1133 = !DILocation(line: 374, column: 7, scope: !1132)
!1134 = !DILocation(line: 374, column: 14, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 374, column: 2)
!1136 = !DILocation(line: 374, column: 18, scope: !1135)
!1137 = !DILocation(line: 374, column: 29, scope: !1135)
!1138 = !DILocation(line: 374, column: 16, scope: !1135)
!1139 = !DILocation(line: 374, column: 2, scope: !1132)
!1140 = !DILocation(line: 380, column: 12, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 374, column: 50)
!1142 = !DILocation(line: 380, column: 23, scope: !1141)
!1143 = !DILocation(line: 380, column: 37, scope: !1141)
!1144 = !DILocation(line: 379, column: 7, scope: !1141)
!1145 = !DILocation(line: 378, column: 10, scope: !1141)
!1146 = !DILocation(line: 381, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 381, column: 7)
!1148 = !DILocation(line: 381, column: 7, scope: !1141)
!1149 = !DILocation(line: 382, column: 12, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 381, column: 29)
!1151 = !DILocation(line: 382, column: 4, scope: !1150)
!1152 = !DILocation(line: 384, column: 2, scope: !1141)
!1153 = !DILocation(line: 374, column: 46, scope: !1135)
!1154 = !DILocation(line: 374, column: 2, scope: !1135)
!1155 = distinct !{!1155, !1139, !1156, !1157, !1158}
!1156 = !DILocation(line: 384, column: 2, scope: !1132)
!1157 = !{!"llvm.loop.mustprogress"}
!1158 = !{!"llvm.loop.unroll.disable"}
!1159 = !DILocation(line: 386, column: 2, scope: !1115)
!1160 = !DILocation(line: 387, column: 1, scope: !1115)
!1161 = distinct !DISubprogram(name: "acpi_hw_gpe_enable_write", scope: !3, file: !3, line: 340, type: !1162, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!19, !7, !601}
!1164 = !{!1165, !1166, !1167}
!1165 = !DILocalVariable(name: "enable_mask", arg: 1, scope: !1161, file: !3, line: 340, type: !7)
!1166 = !DILocalVariable(name: "gpe_register_info", arg: 2, scope: !1161, file: !3, line: 341, type: !601)
!1167 = !DILocalVariable(name: "status", scope: !1161, file: !3, line: 343, type: !19)
!1168 = !DILocation(line: 340, column: 29, scope: !1161)
!1169 = !DILocation(line: 341, column: 36, scope: !1161)
!1170 = !DILocation(line: 343, column: 2, scope: !1161)
!1171 = !DILocation(line: 343, column: 14, scope: !1161)
!1172 = !DILocation(line: 345, column: 35, scope: !1161)
!1173 = !DILocation(line: 345, column: 2, scope: !1161)
!1174 = !DILocation(line: 345, column: 21, scope: !1161)
!1175 = !DILocation(line: 345, column: 33, scope: !1161)
!1176 = !DILocation(line: 347, column: 29, scope: !1161)
!1177 = !DILocation(line: 348, column: 9, scope: !1161)
!1178 = !DILocation(line: 348, column: 28, scope: !1161)
!1179 = !DILocation(line: 347, column: 11, scope: !1161)
!1180 = !DILocation(line: 347, column: 9, scope: !1161)
!1181 = !DILocation(line: 349, column: 10, scope: !1161)
!1182 = !DILocation(line: 350, column: 1, scope: !1161)
!1183 = !DILocation(line: 349, column: 2, scope: !1161)
!1184 = distinct !DISubprogram(name: "acpi_hw_clear_gpe_block", scope: !3, file: !3, line: 403, type: !1116, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1190}
!1186 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1184, file: !3, line: 403, type: !593)
!1187 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1184, file: !3, line: 404, type: !586)
!1188 = !DILocalVariable(name: "context", arg: 3, scope: !1184, file: !3, line: 404, type: !25)
!1189 = !DILocalVariable(name: "i", scope: !1184, file: !3, line: 406, type: !20)
!1190 = !DILocalVariable(name: "status", scope: !1184, file: !3, line: 407, type: !19)
!1191 = !DILocation(line: 403, column: 53, scope: !1184)
!1192 = !DILocation(line: 404, column: 32, scope: !1184)
!1193 = !DILocation(line: 404, column: 49, scope: !1184)
!1194 = !DILocation(line: 406, column: 2, scope: !1184)
!1195 = !DILocation(line: 406, column: 6, scope: !1184)
!1196 = !DILocation(line: 407, column: 2, scope: !1184)
!1197 = !DILocation(line: 407, column: 14, scope: !1184)
!1198 = !DILocation(line: 411, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 411, column: 2)
!1200 = !DILocation(line: 411, column: 7, scope: !1199)
!1201 = !DILocation(line: 411, column: 14, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 411, column: 2)
!1203 = !DILocation(line: 411, column: 18, scope: !1202)
!1204 = !DILocation(line: 411, column: 29, scope: !1202)
!1205 = !DILocation(line: 411, column: 16, scope: !1202)
!1206 = !DILocation(line: 411, column: 2, scope: !1199)
!1207 = !DILocation(line: 416, column: 10, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 411, column: 50)
!1209 = !DILocation(line: 416, column: 21, scope: !1208)
!1210 = !DILocation(line: 416, column: 35, scope: !1208)
!1211 = !DILocation(line: 416, column: 38, scope: !1208)
!1212 = !DILocation(line: 415, column: 12, scope: !1208)
!1213 = !DILocation(line: 415, column: 10, scope: !1208)
!1214 = !DILocation(line: 417, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 417, column: 7)
!1216 = !DILocation(line: 417, column: 7, scope: !1208)
!1217 = !DILocation(line: 418, column: 12, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 417, column: 29)
!1219 = !DILocation(line: 418, column: 4, scope: !1218)
!1220 = !DILocation(line: 420, column: 2, scope: !1208)
!1221 = !DILocation(line: 411, column: 46, scope: !1202)
!1222 = !DILocation(line: 411, column: 2, scope: !1202)
!1223 = distinct !{!1223, !1206, !1224, !1157, !1158}
!1224 = !DILocation(line: 420, column: 2, scope: !1199)
!1225 = !DILocation(line: 422, column: 2, scope: !1184)
!1226 = !DILocation(line: 423, column: 1, scope: !1184)
!1227 = distinct !DISubprogram(name: "acpi_hw_enable_runtime_gpe_block", scope: !3, file: !3, line: 440, type: !1116, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1229 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1227, file: !3, line: 440, type: !593)
!1230 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1227, file: !3, line: 441, type: !586)
!1231 = !DILocalVariable(name: "context", arg: 3, scope: !1227, file: !3, line: 442, type: !25)
!1232 = !DILocalVariable(name: "i", scope: !1227, file: !3, line: 444, type: !20)
!1233 = !DILocalVariable(name: "status", scope: !1227, file: !3, line: 445, type: !19)
!1234 = !DILocalVariable(name: "gpe_register_info", scope: !1227, file: !3, line: 446, type: !601)
!1235 = !DILocalVariable(name: "enable_mask", scope: !1227, file: !3, line: 447, type: !7)
!1236 = !DILocation(line: 440, column: 62, scope: !1227)
!1237 = !DILocation(line: 441, column: 34, scope: !1227)
!1238 = !DILocation(line: 442, column: 12, scope: !1227)
!1239 = !DILocation(line: 444, column: 2, scope: !1227)
!1240 = !DILocation(line: 444, column: 6, scope: !1227)
!1241 = !DILocation(line: 445, column: 2, scope: !1227)
!1242 = !DILocation(line: 445, column: 14, scope: !1227)
!1243 = !DILocation(line: 446, column: 2, scope: !1227)
!1244 = !DILocation(line: 446, column: 33, scope: !1227)
!1245 = !DILocation(line: 447, column: 2, scope: !1227)
!1246 = !DILocation(line: 447, column: 5, scope: !1227)
!1247 = !DILocation(line: 453, column: 9, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 453, column: 2)
!1249 = !DILocation(line: 453, column: 7, scope: !1248)
!1250 = !DILocation(line: 453, column: 14, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 453, column: 2)
!1252 = !DILocation(line: 453, column: 18, scope: !1251)
!1253 = !DILocation(line: 453, column: 29, scope: !1251)
!1254 = !DILocation(line: 453, column: 16, scope: !1251)
!1255 = !DILocation(line: 453, column: 2, scope: !1248)
!1256 = !DILocation(line: 454, column: 24, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 453, column: 50)
!1258 = !DILocation(line: 454, column: 35, scope: !1257)
!1259 = !DILocation(line: 454, column: 49, scope: !1257)
!1260 = !DILocation(line: 454, column: 21, scope: !1257)
!1261 = !DILocation(line: 455, column: 8, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 455, column: 7)
!1263 = !DILocation(line: 455, column: 27, scope: !1262)
!1264 = !DILocation(line: 455, column: 7, scope: !1257)
!1265 = !DILocation(line: 456, column: 4, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 455, column: 43)
!1267 = !DILocation(line: 461, column: 17, scope: !1257)
!1268 = !DILocation(line: 461, column: 36, scope: !1257)
!1269 = !DILocation(line: 462, column: 8, scope: !1257)
!1270 = !DILocation(line: 462, column: 27, scope: !1257)
!1271 = !DILocation(line: 462, column: 7, scope: !1257)
!1272 = !DILocation(line: 461, column: 51, scope: !1257)
!1273 = !DILocation(line: 461, column: 15, scope: !1257)
!1274 = !DILocation(line: 464, column: 32, scope: !1257)
!1275 = !DILocation(line: 464, column: 45, scope: !1257)
!1276 = !DILocation(line: 464, column: 7, scope: !1257)
!1277 = !DILocation(line: 463, column: 10, scope: !1257)
!1278 = !DILocation(line: 465, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 465, column: 7)
!1280 = !DILocation(line: 465, column: 7, scope: !1257)
!1281 = !DILocation(line: 466, column: 12, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 465, column: 29)
!1283 = !DILocation(line: 466, column: 4, scope: !1282)
!1284 = !DILocation(line: 468, column: 2, scope: !1257)
!1285 = !DILocation(line: 453, column: 46, scope: !1251)
!1286 = !DILocation(line: 453, column: 2, scope: !1251)
!1287 = distinct !{!1287, !1255, !1288, !1157, !1158}
!1288 = !DILocation(line: 468, column: 2, scope: !1248)
!1289 = !DILocation(line: 470, column: 2, scope: !1227)
!1290 = !DILocation(line: 471, column: 1, scope: !1227)
!1291 = distinct !DISubprogram(name: "acpi_hw_disable_all_gpes", scope: !3, file: !3, line: 588, type: !1292, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!19}
!1294 = !{!1295}
!1295 = !DILocalVariable(name: "status", scope: !1291, file: !3, line: 590, type: !19)
!1296 = !DILocation(line: 590, column: 2, scope: !1291)
!1297 = !DILocation(line: 590, column: 14, scope: !1291)
!1298 = !DILocation(line: 594, column: 11, scope: !1291)
!1299 = !DILocation(line: 594, column: 9, scope: !1291)
!1300 = !DILocation(line: 595, column: 2, scope: !1291)
!1301 = !DILocation(line: 596, column: 1, scope: !1291)
!1302 = !DISubprogram(name: "acpi_ev_walk_gpe_list", scope: !1303, file: !1303, line: 133, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!19, !1306, !25}
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_callback", file: !52, line: 519, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1308 = distinct !DISubprogram(name: "acpi_hw_enable_all_runtime_gpes", scope: !3, file: !3, line: 610, type: !1292, scopeLine: 611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1309)
!1309 = !{!1310}
!1310 = !DILocalVariable(name: "status", scope: !1308, file: !3, line: 612, type: !19)
!1311 = !DILocation(line: 612, column: 2, scope: !1308)
!1312 = !DILocation(line: 612, column: 14, scope: !1308)
!1313 = !DILocation(line: 616, column: 11, scope: !1308)
!1314 = !DILocation(line: 616, column: 9, scope: !1308)
!1315 = !DILocation(line: 617, column: 2, scope: !1308)
!1316 = !DILocation(line: 618, column: 1, scope: !1308)
!1317 = distinct !DISubprogram(name: "acpi_hw_enable_all_wakeup_gpes", scope: !3, file: !3, line: 632, type: !1292, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1318)
!1318 = !{!1319}
!1319 = !DILocalVariable(name: "status", scope: !1317, file: !3, line: 634, type: !19)
!1320 = !DILocation(line: 634, column: 2, scope: !1317)
!1321 = !DILocation(line: 634, column: 14, scope: !1317)
!1322 = !DILocation(line: 638, column: 11, scope: !1317)
!1323 = !DILocation(line: 638, column: 9, scope: !1317)
!1324 = !DILocation(line: 639, column: 2, scope: !1317)
!1325 = !DILocation(line: 640, column: 1, scope: !1317)
!1326 = distinct !DISubprogram(name: "acpi_hw_enable_wakeup_gpe_block", scope: !3, file: !3, line: 488, type: !1116, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333}
!1328 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1326, file: !3, line: 488, type: !593)
!1329 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1326, file: !3, line: 489, type: !586)
!1330 = !DILocalVariable(name: "context", arg: 3, scope: !1326, file: !3, line: 490, type: !25)
!1331 = !DILocalVariable(name: "i", scope: !1326, file: !3, line: 492, type: !20)
!1332 = !DILocalVariable(name: "status", scope: !1326, file: !3, line: 493, type: !19)
!1333 = !DILocalVariable(name: "gpe_register_info", scope: !1326, file: !3, line: 494, type: !601)
!1334 = !DILocation(line: 488, column: 61, scope: !1326)
!1335 = !DILocation(line: 489, column: 33, scope: !1326)
!1336 = !DILocation(line: 490, column: 11, scope: !1326)
!1337 = !DILocation(line: 492, column: 2, scope: !1326)
!1338 = !DILocation(line: 492, column: 6, scope: !1326)
!1339 = !DILocation(line: 493, column: 2, scope: !1326)
!1340 = !DILocation(line: 493, column: 14, scope: !1326)
!1341 = !DILocation(line: 494, column: 2, scope: !1326)
!1342 = !DILocation(line: 494, column: 33, scope: !1326)
!1343 = !DILocation(line: 498, column: 9, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 498, column: 2)
!1345 = !DILocation(line: 498, column: 7, scope: !1344)
!1346 = !DILocation(line: 498, column: 14, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 498, column: 2)
!1348 = !DILocation(line: 498, column: 18, scope: !1347)
!1349 = !DILocation(line: 498, column: 29, scope: !1347)
!1350 = !DILocation(line: 498, column: 16, scope: !1347)
!1351 = !DILocation(line: 498, column: 2, scope: !1344)
!1352 = !DILocation(line: 499, column: 24, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 498, column: 50)
!1354 = !DILocation(line: 499, column: 35, scope: !1353)
!1355 = !DILocation(line: 499, column: 49, scope: !1353)
!1356 = !DILocation(line: 499, column: 21, scope: !1353)
!1357 = !DILocation(line: 507, column: 32, scope: !1353)
!1358 = !DILocation(line: 507, column: 51, scope: !1353)
!1359 = !DILocation(line: 508, column: 11, scope: !1353)
!1360 = !DILocation(line: 507, column: 7, scope: !1353)
!1361 = !DILocation(line: 506, column: 10, scope: !1353)
!1362 = !DILocation(line: 509, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 509, column: 7)
!1364 = !DILocation(line: 509, column: 7, scope: !1353)
!1365 = !DILocation(line: 510, column: 12, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 509, column: 29)
!1367 = !DILocation(line: 510, column: 4, scope: !1366)
!1368 = !DILocation(line: 512, column: 2, scope: !1353)
!1369 = !DILocation(line: 498, column: 46, scope: !1347)
!1370 = !DILocation(line: 498, column: 2, scope: !1347)
!1371 = distinct !{!1371, !1351, !1372, !1157, !1158}
!1372 = !DILocation(line: 512, column: 2, scope: !1344)
!1373 = !DILocation(line: 514, column: 2, scope: !1326)
!1374 = !DILocation(line: 515, column: 1, scope: !1326)
!1375 = distinct !DISubprogram(name: "acpi_hw_check_all_gpes", scope: !3, file: !3, line: 657, type: !1376, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!7, !467, !20}
!1378 = !{!1379, !1380, !1381, !1387, !1388}
!1379 = !DILocalVariable(name: "gpe_skip_device", arg: 1, scope: !1375, file: !3, line: 657, type: !467)
!1380 = !DILocalVariable(name: "gpe_skip_number", arg: 2, scope: !1375, file: !3, line: 657, type: !20)
!1381 = !DILocalVariable(name: "context", scope: !1375, file: !3, line: 659, type: !1382)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_status_context", file: !3, line: 517, size: 128, elements: !1383)
!1383 = !{!1384, !1385, !1386}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_skip_register_info", scope: !1382, file: !3, line: 518, baseType: !601, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_skip_mask", scope: !1382, file: !3, line: 519, baseType: !7, size: 8, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !1382, file: !3, line: 520, baseType: !7, size: 8, offset: 72)
!1387 = !DILocalVariable(name: "gpe_event_info", scope: !1375, file: !3, line: 663, type: !126)
!1388 = !DILocalVariable(name: "flags", scope: !1375, file: !3, line: 664, type: !18)
!1389 = !DILocation(line: 657, column: 39, scope: !1375)
!1390 = !DILocation(line: 657, column: 60, scope: !1375)
!1391 = !DILocation(line: 659, column: 2, scope: !1375)
!1392 = !DILocation(line: 659, column: 39, scope: !1375)
!1393 = !DILocation(line: 663, column: 2, scope: !1375)
!1394 = !DILocation(line: 663, column: 30, scope: !1375)
!1395 = !DILocation(line: 664, column: 2, scope: !1375)
!1396 = !DILocation(line: 664, column: 17, scope: !1375)
!1397 = !DILocation(line: 668, column: 31, scope: !1375)
!1398 = !DILocation(line: 668, column: 10, scope: !1375)
!1399 = !DILocation(line: 668, column: 8, scope: !1375)
!1400 = !DILocation(line: 670, column: 46, scope: !1375)
!1401 = !DILocation(line: 671, column: 11, scope: !1375)
!1402 = !DILocation(line: 670, column: 19, scope: !1375)
!1403 = !DILocation(line: 670, column: 17, scope: !1375)
!1404 = !DILocation(line: 672, column: 6, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 672, column: 6)
!1406 = !DILocation(line: 672, column: 6, scope: !1375)
!1407 = !DILocation(line: 673, column: 36, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 672, column: 22)
!1409 = !DILocation(line: 673, column: 52, scope: !1408)
!1410 = !DILocation(line: 673, column: 11, scope: !1408)
!1411 = !DILocation(line: 673, column: 34, scope: !1408)
!1412 = !DILocation(line: 674, column: 56, scope: !1408)
!1413 = !DILocation(line: 674, column: 27, scope: !1408)
!1414 = !DILocation(line: 674, column: 11, scope: !1408)
!1415 = !DILocation(line: 674, column: 25, scope: !1408)
!1416 = !DILocation(line: 675, column: 2, scope: !1408)
!1417 = !DILocation(line: 677, column: 23, scope: !1375)
!1418 = !DILocation(line: 677, column: 42, scope: !1375)
!1419 = !DILocation(line: 677, column: 2, scope: !1375)
!1420 = !DILocation(line: 679, column: 8, scope: !1375)
!1421 = !DILocation(line: 680, column: 18, scope: !1375)
!1422 = !DILocation(line: 680, column: 10, scope: !1375)
!1423 = !DILocation(line: 680, column: 25, scope: !1375)
!1424 = !DILocation(line: 680, column: 9, scope: !1375)
!1425 = !DILocation(line: 681, column: 1, scope: !1375)
!1426 = !DILocation(line: 680, column: 2, scope: !1375)
!1427 = !DISubprogram(name: "acpi_os_acquire_lock", scope: !93, file: !93, line: 93, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!18, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1432, line: 29, baseType: !1433)
!1432 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1432, line: 17, size: 32, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1432, line: 18, baseType: !1436, size: 32)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1432, line: 18, size: 32, elements: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1436, file: !1432, line: 19, baseType: !1439, size: 32)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1440, line: 14, size: 32, elements: !1441)
!1440 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1441 = !{!1442}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1439, file: !1440, line: 15, baseType: !1443, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1444, line: 44, baseType: !1445)
!1444 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1444, line: 14, size: 32, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1445, file: !1444, line: 15, baseType: !1448, size: 32)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1445, file: !1444, line: 15, size: 32, elements: !1449)
!1449 = !{!1450, !1456, !1461}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1448, file: !1444, line: 16, baseType: !1451, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !17, line: 174, baseType: !1452)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 172, size: 32, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1452, file: !17, line: 173, baseType: !1455, size: 32)
!1455 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1444, line: 24, baseType: !1457, size: 16)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1448, file: !1444, line: 24, size: 16, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1457, file: !1444, line: 25, baseType: !7, size: 8)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1457, file: !1444, line: 26, baseType: !7, size: 8, offset: 8)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1444, line: 28, baseType: !1462, size: 32)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1448, file: !1444, line: 28, size: 32, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1462, file: !1444, line: 29, baseType: !148, size: 16)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1462, file: !1444, line: 30, baseType: !148, size: 16, offset: 16)
!1466 = !DISubprogram(name: "acpi_ev_get_gpe_event_info", scope: !1303, file: !1303, line: 78, type: !1467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!126, !467, !20}
!1469 = !DISubprogram(name: "acpi_os_release_lock", scope: !93, file: !93, line: 97, type: !1470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !1430, !18}
!1472 = distinct !DISubprogram(name: "acpi_hw_get_gpe_block_status", scope: !3, file: !3, line: 538, type: !1116, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1479, !1480, !1481, !1482, !1483, !1484}
!1474 = !DILocalVariable(name: "gpe_xrupt_info", arg: 1, scope: !1472, file: !3, line: 538, type: !593)
!1475 = !DILocalVariable(name: "gpe_block", arg: 2, scope: !1472, file: !3, line: 539, type: !586)
!1476 = !DILocalVariable(name: "context", arg: 3, scope: !1472, file: !3, line: 540, type: !25)
!1477 = !DILocalVariable(name: "c", scope: !1472, file: !3, line: 542, type: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1479 = !DILocalVariable(name: "gpe_register_info", scope: !1472, file: !3, line: 543, type: !601)
!1480 = !DILocalVariable(name: "in_enable", scope: !1472, file: !3, line: 544, type: !12)
!1481 = !DILocalVariable(name: "in_status", scope: !1472, file: !3, line: 544, type: !12)
!1482 = !DILocalVariable(name: "status", scope: !1472, file: !3, line: 545, type: !19)
!1483 = !DILocalVariable(name: "ret_mask", scope: !1472, file: !3, line: 546, type: !7)
!1484 = !DILocalVariable(name: "i", scope: !1472, file: !3, line: 547, type: !20)
!1485 = !DILocation(line: 538, column: 58, scope: !1472)
!1486 = !DILocation(line: 539, column: 37, scope: !1472)
!1487 = !DILocation(line: 540, column: 15, scope: !1472)
!1488 = !DILocation(line: 542, column: 2, scope: !1472)
!1489 = !DILocation(line: 542, column: 40, scope: !1472)
!1490 = !DILocation(line: 542, column: 44, scope: !1472)
!1491 = !DILocation(line: 543, column: 2, scope: !1472)
!1492 = !DILocation(line: 543, column: 33, scope: !1472)
!1493 = !DILocation(line: 544, column: 2, scope: !1472)
!1494 = !DILocation(line: 544, column: 6, scope: !1472)
!1495 = !DILocation(line: 544, column: 17, scope: !1472)
!1496 = !DILocation(line: 545, column: 2, scope: !1472)
!1497 = !DILocation(line: 545, column: 14, scope: !1472)
!1498 = !DILocation(line: 546, column: 2, scope: !1472)
!1499 = !DILocation(line: 546, column: 5, scope: !1472)
!1500 = !DILocation(line: 547, column: 2, scope: !1472)
!1501 = !DILocation(line: 547, column: 6, scope: !1472)
!1502 = !DILocation(line: 551, column: 9, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 551, column: 2)
!1504 = !DILocation(line: 551, column: 7, scope: !1503)
!1505 = !DILocation(line: 551, column: 14, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 551, column: 2)
!1507 = !DILocation(line: 551, column: 18, scope: !1506)
!1508 = !DILocation(line: 551, column: 29, scope: !1506)
!1509 = !DILocation(line: 551, column: 16, scope: !1506)
!1510 = !DILocation(line: 551, column: 2, scope: !1503)
!1511 = !DILocation(line: 552, column: 24, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 551, column: 50)
!1513 = !DILocation(line: 552, column: 35, scope: !1512)
!1514 = !DILocation(line: 552, column: 49, scope: !1512)
!1515 = !DILocation(line: 552, column: 21, scope: !1512)
!1516 = !DILocation(line: 555, column: 9, scope: !1512)
!1517 = !DILocation(line: 555, column: 28, scope: !1512)
!1518 = !DILocation(line: 554, column: 12, scope: !1512)
!1519 = !DILocation(line: 554, column: 10, scope: !1512)
!1520 = !DILocation(line: 556, column: 7, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 556, column: 7)
!1522 = !DILocation(line: 556, column: 7, scope: !1512)
!1523 = !DILocation(line: 557, column: 4, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 556, column: 29)
!1525 = !DILocation(line: 561, column: 9, scope: !1512)
!1526 = !DILocation(line: 561, column: 28, scope: !1512)
!1527 = !DILocation(line: 560, column: 12, scope: !1512)
!1528 = !DILocation(line: 560, column: 10, scope: !1512)
!1529 = !DILocation(line: 562, column: 7, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 562, column: 7)
!1531 = !DILocation(line: 562, column: 7, scope: !1512)
!1532 = !DILocation(line: 563, column: 4, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 562, column: 29)
!1534 = !DILocation(line: 566, column: 14, scope: !1512)
!1535 = !DILocation(line: 566, column: 26, scope: !1512)
!1536 = !DILocation(line: 566, column: 24, scope: !1512)
!1537 = !DILocation(line: 566, column: 12, scope: !1512)
!1538 = !DILocation(line: 567, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 567, column: 7)
!1540 = !DILocation(line: 567, column: 16, scope: !1539)
!1541 = !DILocation(line: 567, column: 19, scope: !1539)
!1542 = !DILocation(line: 567, column: 22, scope: !1539)
!1543 = !DILocation(line: 567, column: 48, scope: !1539)
!1544 = !DILocation(line: 567, column: 45, scope: !1539)
!1545 = !DILocation(line: 567, column: 7, scope: !1512)
!1546 = !DILocation(line: 568, column: 17, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 567, column: 67)
!1548 = !DILocation(line: 568, column: 20, scope: !1547)
!1549 = !DILocation(line: 568, column: 16, scope: !1547)
!1550 = !DILocation(line: 568, column: 13, scope: !1547)
!1551 = !DILocation(line: 569, column: 3, scope: !1547)
!1552 = !DILocation(line: 570, column: 16, scope: !1512)
!1553 = !DILocation(line: 570, column: 3, scope: !1512)
!1554 = !DILocation(line: 570, column: 6, scope: !1512)
!1555 = !DILocation(line: 570, column: 13, scope: !1512)
!1556 = !DILocation(line: 571, column: 2, scope: !1512)
!1557 = !DILocation(line: 551, column: 46, scope: !1506)
!1558 = !DILocation(line: 551, column: 2, scope: !1506)
!1559 = distinct !{!1559, !1510, !1560, !1157, !1158}
!1560 = !DILocation(line: 571, column: 2, scope: !1503)
!1561 = !DILocation(line: 574, column: 1, scope: !1472)
!1562 = !DILocation(line: 573, column: 2, scope: !1472)
