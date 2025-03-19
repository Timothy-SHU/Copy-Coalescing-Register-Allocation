; ModuleID = 'drivers/acpi/acpica/hwregs.c'
source_filename = "drivers/acpi/acpica/hwregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_bit_register_info = type { i8, i8, i16 }
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>

@_acpi_module_name = internal constant [7 x i8] c"hwregs\00", align 1, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"Unsupported address space: 0x%X\00", align 1, !dbg !28
@.str.1 = private unnamed_addr constant [40 x i8] c"Unsupported register access width: 0x%X\00", align 1, !dbg !34
@.str.2 = private unnamed_addr constant [65 x i8] c"Requested bit width 0x%X is smaller than register bit width 0x%X\00", align 1, !dbg !39
@acpi_gbl_hardware_lock = external dso_local global ptr, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid BitRegister ID: 0x%X\00", align 1, !dbg !44
@acpi_gbl_bit_register_info = external dso_local global [20 x %struct.acpi_bit_register_info], align 16
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@acpi_gbl_xpm1a_status = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1b_status = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1a_enable = external dso_local global %struct.acpi_generic_address, align 1
@acpi_gbl_xpm1b_enable = external dso_local global %struct.acpi_generic_address, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unknown Register ID: 0x%X\00", align 1, !dbg !49

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_validate_register(ptr noundef %reg, i8 noundef zeroext %max_bit_width, ptr noundef %address) #0 align 16 !dbg !67 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca ptr, align 8
  %max_bit_width.addr = alloca i8, align 1
  %address.addr = alloca ptr, align 8
  %bit_width = alloca i8, align 1
  %access_width = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !80, metadata !DIExpression()), !dbg !85
  store i8 %max_bit_width, ptr %max_bit_width.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %max_bit_width.addr, metadata !81, metadata !DIExpression()), !dbg !86
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !82, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 1, ptr %bit_width) #5, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %bit_width, metadata !83, metadata !DIExpression()), !dbg !89
  call void @llvm.lifetime.start.p0(i64 1, ptr %access_width) #5, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %access_width, metadata !84, metadata !DIExpression()), !dbg !91
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !92
  %tobool = icmp ne ptr %0, null, !dbg !92
  br i1 %tobool, label %if.end, label %if.then, !dbg !94

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !95
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !95

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %reg.addr, align 8, !dbg !97
  %address1 = getelementptr inbounds %struct.acpi_generic_address, ptr %1, i32 0, i32 4, !dbg !97
  %2 = load i64, ptr %address1, align 8, !dbg !97
  %3 = load ptr, ptr %address.addr, align 8, !dbg !97
  store i64 %2, ptr %3, align 8, !dbg !97
  %4 = load ptr, ptr %address.addr, align 8, !dbg !98
  %5 = load i64, ptr %4, align 8, !dbg !100
  %tobool2 = icmp ne i64 %5, 0, !dbg !101
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !102

if.then3:                                         ; preds = %if.end
  store i32 4105, ptr %retval, align 4, !dbg !103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !103

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %reg.addr, align 8, !dbg !105
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %6, i32 0, i32 0, !dbg !107
  %7 = load i8, ptr %space_id, align 1, !dbg !107
  %conv = zext i8 %7 to i32, !dbg !105
  %cmp = icmp ne i32 %conv, 0, !dbg !108
  br i1 %cmp, label %land.lhs.true, label %if.end13, !dbg !109

land.lhs.true:                                    ; preds = %if.end4
  %8 = load ptr, ptr %reg.addr, align 8, !dbg !110
  %space_id6 = getelementptr inbounds %struct.acpi_generic_address, ptr %8, i32 0, i32 0, !dbg !111
  %9 = load i8, ptr %space_id6, align 1, !dbg !111
  %conv7 = zext i8 %9 to i32, !dbg !110
  %cmp8 = icmp ne i32 %conv7, 1, !dbg !112
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !113

if.then10:                                        ; preds = %land.lhs.true
  %10 = load ptr, ptr %reg.addr, align 8, !dbg !114
  %space_id11 = getelementptr inbounds %struct.acpi_generic_address, ptr %10, i32 0, i32 0, !dbg !114
  %11 = load i8, ptr %space_id11, align 1, !dbg !114
  %conv12 = zext i8 %11 to i32, !dbg !114
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 148, ptr noundef @.str, i32 noundef %conv12) #6, !dbg !114
  store i32 15, ptr %retval, align 4, !dbg !116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !116

if.end13:                                         ; preds = %land.lhs.true, %if.end4
  %12 = load ptr, ptr %reg.addr, align 8, !dbg !117
  %access_width14 = getelementptr inbounds %struct.acpi_generic_address, ptr %12, i32 0, i32 3, !dbg !119
  %13 = load i8, ptr %access_width14, align 1, !dbg !119
  %conv15 = zext i8 %13 to i32, !dbg !117
  %cmp16 = icmp sgt i32 %conv15, 4, !dbg !120
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !121

if.then18:                                        ; preds = %if.end13
  %14 = load ptr, ptr %reg.addr, align 8, !dbg !122
  %access_width19 = getelementptr inbounds %struct.acpi_generic_address, ptr %14, i32 0, i32 3, !dbg !122
  %15 = load i8, ptr %access_width19, align 1, !dbg !122
  %conv20 = zext i8 %15 to i32, !dbg !122
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 156, ptr noundef @.str.1, i32 noundef %conv20) #6, !dbg !122
  store i32 15, ptr %retval, align 4, !dbg !124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !124

if.end21:                                         ; preds = %if.end13
  %16 = load ptr, ptr %address.addr, align 8, !dbg !125
  %17 = load i64, ptr %16, align 8, !dbg !126
  %18 = load ptr, ptr %reg.addr, align 8, !dbg !127
  %19 = load i8, ptr %max_bit_width.addr, align 1, !dbg !128
  %call = call zeroext i8 @acpi_hw_get_access_bit_width(i64 noundef %17, ptr noundef %18, i8 noundef zeroext %19) #6, !dbg !129
  store i8 %call, ptr %access_width, align 1, !dbg !130
  %20 = load ptr, ptr %reg.addr, align 8, !dbg !131
  %bit_offset = getelementptr inbounds %struct.acpi_generic_address, ptr %20, i32 0, i32 2, !dbg !131
  %21 = load i8, ptr %bit_offset, align 1, !dbg !131
  %conv22 = zext i8 %21 to i32, !dbg !131
  %22 = load ptr, ptr %reg.addr, align 8, !dbg !131
  %bit_width23 = getelementptr inbounds %struct.acpi_generic_address, ptr %22, i32 0, i32 1, !dbg !131
  %23 = load i8, ptr %bit_width23, align 1, !dbg !131
  %conv24 = zext i8 %23 to i32, !dbg !131
  %add = add i32 %conv22, %conv24, !dbg !131
  %conv25 = sext i32 %add to i64, !dbg !131
  %24 = load i8, ptr %access_width, align 1, !dbg !131
  %conv26 = zext i8 %24 to i64, !dbg !131
  %sub = sub i64 %conv26, 1, !dbg !131
  %add27 = add i64 %conv25, %sub, !dbg !131
  %25 = load i8, ptr %access_width, align 1, !dbg !131
  %conv28 = zext i8 %25 to i64, !dbg !131
  %sub29 = sub i64 %conv28, 1, !dbg !131
  %not = xor i64 %sub29, -1, !dbg !131
  %and = and i64 %add27, %not, !dbg !131
  %conv30 = trunc i64 %and to i8, !dbg !131
  store i8 %conv30, ptr %bit_width, align 1, !dbg !132
  %26 = load i8, ptr %max_bit_width.addr, align 1, !dbg !133
  %conv31 = zext i8 %26 to i32, !dbg !133
  %27 = load i8, ptr %bit_width, align 1, !dbg !135
  %conv32 = zext i8 %27 to i32, !dbg !135
  %cmp33 = icmp slt i32 %conv31, %conv32, !dbg !136
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !137

if.then35:                                        ; preds = %if.end21
  %28 = load i8, ptr %max_bit_width.addr, align 1, !dbg !138
  %conv36 = zext i8 %28 to i32, !dbg !138
  %29 = load i8, ptr %bit_width, align 1, !dbg !138
  %conv37 = zext i8 %29 to i32, !dbg !138
  call void (ptr, i32, ptr, ...) @acpi_warning(ptr noundef @_acpi_module_name, i32 noundef 169, ptr noundef @.str.2, i32 noundef %conv36, i32 noundef %conv37) #6, !dbg !138
  store i32 15, ptr %retval, align 4, !dbg !140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !140

if.end38:                                         ; preds = %if.end21
  store i32 0, ptr %retval, align 4, !dbg !141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !141

cleanup:                                          ; preds = %if.end38, %if.then35, %if.then18, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %access_width) #5, !dbg !142
  call void @llvm.lifetime.end.p0(i64 1, ptr %bit_width) #5, !dbg !142
  %30 = load i32, ptr %retval, align 4, !dbg !142
  ret i32 %30, !dbg !142
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !143 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @acpi_hw_get_access_bit_width(i64 noundef %address, ptr noundef %reg, i8 noundef zeroext %max_bit_width) #0 align 16 !dbg !148 {
entry:
  %retval = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %reg.addr = alloca ptr, align 8
  %max_bit_width.addr = alloca i8, align 1
  %access_bit_width = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !152, metadata !DIExpression()), !dbg !156
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !153, metadata !DIExpression()), !dbg !157
  store i8 %max_bit_width, ptr %max_bit_width.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %max_bit_width.addr, metadata !154, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 1, ptr %access_bit_width) #5, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %access_bit_width, metadata !155, metadata !DIExpression()), !dbg !160
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !161
  %bit_offset = getelementptr inbounds %struct.acpi_generic_address, ptr %0, i32 0, i32 2, !dbg !163
  %1 = load i8, ptr %bit_offset, align 1, !dbg !163
  %tobool = icmp ne i8 %1, 0, !dbg !161
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !164

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %reg.addr, align 8, !dbg !165
  %bit_width = getelementptr inbounds %struct.acpi_generic_address, ptr %2, i32 0, i32 1, !dbg !166
  %3 = load i8, ptr %bit_width, align 1, !dbg !166
  %conv = zext i8 %3 to i32, !dbg !165
  %tobool1 = icmp ne i32 %conv, 0, !dbg !165
  br i1 %tobool1, label %land.lhs.true2, label %if.else, !dbg !167

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %reg.addr, align 8, !dbg !168
  %bit_width3 = getelementptr inbounds %struct.acpi_generic_address, ptr %4, i32 0, i32 1, !dbg !168
  %5 = load i8, ptr %bit_width3, align 1, !dbg !168
  %conv4 = zext i8 %5 to i32, !dbg !168
  %6 = load ptr, ptr %reg.addr, align 8, !dbg !168
  %bit_width5 = getelementptr inbounds %struct.acpi_generic_address, ptr %6, i32 0, i32 1, !dbg !168
  %7 = load i8, ptr %bit_width5, align 1, !dbg !168
  %conv6 = zext i8 %7 to i32, !dbg !168
  %sub = sub i32 %conv6, 1, !dbg !168
  %and = and i32 %conv4, %sub, !dbg !168
  %cmp = icmp eq i32 %and, 0, !dbg !168
  br i1 %cmp, label %land.lhs.true8, label %if.else, !dbg !169

land.lhs.true8:                                   ; preds = %land.lhs.true2
  %8 = load ptr, ptr %reg.addr, align 8, !dbg !170
  %bit_width9 = getelementptr inbounds %struct.acpi_generic_address, ptr %8, i32 0, i32 1, !dbg !170
  %9 = load i8, ptr %bit_width9, align 1, !dbg !170
  %conv10 = zext i8 %9 to i32, !dbg !170
  %and11 = and i32 %conv10, 7, !dbg !170
  %cmp12 = icmp eq i32 %and11, 0, !dbg !170
  br i1 %cmp12, label %if.then, label %if.else, !dbg !171

if.then:                                          ; preds = %land.lhs.true8
  %10 = load ptr, ptr %reg.addr, align 8, !dbg !172
  %bit_width14 = getelementptr inbounds %struct.acpi_generic_address, ptr %10, i32 0, i32 1, !dbg !174
  %11 = load i8, ptr %bit_width14, align 1, !dbg !174
  store i8 %11, ptr %access_bit_width, align 1, !dbg !175
  br label %if.end136, !dbg !176

if.else:                                          ; preds = %land.lhs.true8, %land.lhs.true2, %land.lhs.true, %entry
  %12 = load ptr, ptr %reg.addr, align 8, !dbg !177
  %access_width = getelementptr inbounds %struct.acpi_generic_address, ptr %12, i32 0, i32 3, !dbg !179
  %13 = load i8, ptr %access_width, align 1, !dbg !179
  %tobool15 = icmp ne i8 %13, 0, !dbg !177
  br i1 %tobool15, label %if.then16, label %if.else20, !dbg !180

if.then16:                                        ; preds = %if.else
  %14 = load ptr, ptr %reg.addr, align 8, !dbg !181
  %access_width17 = getelementptr inbounds %struct.acpi_generic_address, ptr %14, i32 0, i32 3, !dbg !181
  %15 = load i8, ptr %access_width17, align 1, !dbg !181
  %conv18 = zext i8 %15 to i32, !dbg !181
  %add = add i32 %conv18, 2, !dbg !181
  %shl = shl i32 1, %add, !dbg !181
  %conv19 = trunc i32 %shl to i8, !dbg !181
  store i8 %conv19, ptr %access_bit_width, align 1, !dbg !183
  br label %if.end135, !dbg !184

if.else20:                                        ; preds = %if.else
  %16 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_offset21 = getelementptr inbounds %struct.acpi_generic_address, ptr %16, i32 0, i32 2, !dbg !185
  %17 = load i8, ptr %bit_offset21, align 1, !dbg !185
  %conv22 = zext i8 %17 to i32, !dbg !185
  %18 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_width23 = getelementptr inbounds %struct.acpi_generic_address, ptr %18, i32 0, i32 1, !dbg !185
  %19 = load i8, ptr %bit_width23, align 1, !dbg !185
  %conv24 = zext i8 %19 to i32, !dbg !185
  %add25 = add i32 %conv22, %conv24, !dbg !185
  %sub26 = sub i32 %add25, 1, !dbg !185
  %tobool27 = icmp ne i32 %sub26, 0, !dbg !185
  br i1 %tobool27, label %cond.true, label %cond.false115, !dbg !185

cond.true:                                        ; preds = %if.else20
  %20 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_offset28 = getelementptr inbounds %struct.acpi_generic_address, ptr %20, i32 0, i32 2, !dbg !185
  %21 = load i8, ptr %bit_offset28, align 1, !dbg !185
  %conv29 = zext i8 %21 to i32, !dbg !185
  %22 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_width30 = getelementptr inbounds %struct.acpi_generic_address, ptr %22, i32 0, i32 1, !dbg !185
  %23 = load i8, ptr %bit_width30, align 1, !dbg !185
  %conv31 = zext i8 %23 to i32, !dbg !185
  %add32 = add i32 %conv29, %conv31, !dbg !185
  %sub33 = sub i32 %add32, 1, !dbg !185
  %conv34 = trunc i32 %sub33 to i8, !dbg !185
  %conv35 = zext i8 %conv34 to i32, !dbg !185
  %and36 = and i32 %conv35, 240, !dbg !185
  %tobool37 = icmp ne i32 %and36, 0, !dbg !185
  br i1 %tobool37, label %cond.true38, label %cond.false75, !dbg !185

cond.true38:                                      ; preds = %cond.true
  %24 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_offset39 = getelementptr inbounds %struct.acpi_generic_address, ptr %24, i32 0, i32 2, !dbg !185
  %25 = load i8, ptr %bit_offset39, align 1, !dbg !185
  %conv40 = zext i8 %25 to i32, !dbg !185
  %26 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_width41 = getelementptr inbounds %struct.acpi_generic_address, ptr %26, i32 0, i32 1, !dbg !185
  %27 = load i8, ptr %bit_width41, align 1, !dbg !185
  %conv42 = zext i8 %27 to i32, !dbg !185
  %add43 = add i32 %conv40, %conv42, !dbg !185
  %sub44 = sub i32 %add43, 1, !dbg !185
  %shr = ashr i32 %sub44, 4, !dbg !185
  %conv45 = trunc i32 %shr to i8, !dbg !185
  %conv46 = zext i8 %conv45 to i32, !dbg !185
  %and47 = and i32 %conv46, 12, !dbg !185
  %tobool48 = icmp ne i32 %and47, 0, !dbg !185
  br i1 %tobool48, label %cond.true49, label %cond.false, !dbg !185

cond.true49:                                      ; preds = %cond.true38
  %28 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_offset50 = getelementptr inbounds %struct.acpi_generic_address, ptr %28, i32 0, i32 2, !dbg !185
  %29 = load i8, ptr %bit_offset50, align 1, !dbg !185
  %conv51 = zext i8 %29 to i32, !dbg !185
  %30 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_width52 = getelementptr inbounds %struct.acpi_generic_address, ptr %30, i32 0, i32 1, !dbg !185
  %31 = load i8, ptr %bit_width52, align 1, !dbg !185
  %conv53 = zext i8 %31 to i32, !dbg !185
  %add54 = add i32 %conv51, %conv53, !dbg !185
  %sub55 = sub i32 %add54, 1, !dbg !185
  %shr56 = ashr i32 %sub55, 4, !dbg !185
  %shr57 = ashr i32 %shr56, 2, !dbg !185
  %conv58 = trunc i32 %shr57 to i8, !dbg !185
  %conv59 = zext i8 %conv58 to i32, !dbg !185
  %and60 = and i32 %conv59, 2, !dbg !185
  %tobool61 = icmp ne i32 %and60, 0, !dbg !185
  %32 = zext i1 %tobool61 to i64, !dbg !185
  %cond = select i1 %tobool61, i32 8, i32 7, !dbg !185
  br label %cond.end, !dbg !185

cond.false:                                       ; preds = %cond.true38
  %33 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_offset62 = getelementptr inbounds %struct.acpi_generic_address, ptr %33, i32 0, i32 2, !dbg !185
  %34 = load i8, ptr %bit_offset62, align 1, !dbg !185
  %conv63 = zext i8 %34 to i32, !dbg !185
  %35 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_width64 = getelementptr inbounds %struct.acpi_generic_address, ptr %35, i32 0, i32 1, !dbg !185
  %36 = load i8, ptr %bit_width64, align 1, !dbg !185
  %conv65 = zext i8 %36 to i32, !dbg !185
  %add66 = add i32 %conv63, %conv65, !dbg !185
  %sub67 = sub i32 %add66, 1, !dbg !185
  %shr68 = ashr i32 %sub67, 4, !dbg !185
  %conv69 = trunc i32 %shr68 to i8, !dbg !185
  %conv70 = zext i8 %conv69 to i32, !dbg !185
  %and71 = and i32 %conv70, 2, !dbg !185
  %tobool72 = icmp ne i32 %and71, 0, !dbg !185
  %37 = zext i1 %tobool72 to i64, !dbg !185
  %cond73 = select i1 %tobool72, i32 6, i32 5, !dbg !185
  br label %cond.end, !dbg !185

cond.end:                                         ; preds = %cond.false, %cond.true49
  %cond74 = phi i32 [ %cond, %cond.true49 ], [ %cond73, %cond.false ], !dbg !185
  br label %cond.end113, !dbg !185

cond.false75:                                     ; preds = %cond.true
  %38 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_offset76 = getelementptr inbounds %struct.acpi_generic_address, ptr %38, i32 0, i32 2, !dbg !185
  %39 = load i8, ptr %bit_offset76, align 1, !dbg !185
  %conv77 = zext i8 %39 to i32, !dbg !185
  %40 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_width78 = getelementptr inbounds %struct.acpi_generic_address, ptr %40, i32 0, i32 1, !dbg !185
  %41 = load i8, ptr %bit_width78, align 1, !dbg !185
  %conv79 = zext i8 %41 to i32, !dbg !185
  %add80 = add i32 %conv77, %conv79, !dbg !185
  %sub81 = sub i32 %add80, 1, !dbg !185
  %conv82 = trunc i32 %sub81 to i8, !dbg !185
  %conv83 = zext i8 %conv82 to i32, !dbg !185
  %and84 = and i32 %conv83, 12, !dbg !185
  %tobool85 = icmp ne i32 %and84, 0, !dbg !185
  br i1 %tobool85, label %cond.true86, label %cond.false99, !dbg !185

cond.true86:                                      ; preds = %cond.false75
  %42 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_offset87 = getelementptr inbounds %struct.acpi_generic_address, ptr %42, i32 0, i32 2, !dbg !185
  %43 = load i8, ptr %bit_offset87, align 1, !dbg !185
  %conv88 = zext i8 %43 to i32, !dbg !185
  %44 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_width89 = getelementptr inbounds %struct.acpi_generic_address, ptr %44, i32 0, i32 1, !dbg !185
  %45 = load i8, ptr %bit_width89, align 1, !dbg !185
  %conv90 = zext i8 %45 to i32, !dbg !185
  %add91 = add i32 %conv88, %conv90, !dbg !185
  %sub92 = sub i32 %add91, 1, !dbg !185
  %shr93 = ashr i32 %sub92, 2, !dbg !185
  %conv94 = trunc i32 %shr93 to i8, !dbg !185
  %conv95 = zext i8 %conv94 to i32, !dbg !185
  %and96 = and i32 %conv95, 2, !dbg !185
  %tobool97 = icmp ne i32 %and96, 0, !dbg !185
  %46 = zext i1 %tobool97 to i64, !dbg !185
  %cond98 = select i1 %tobool97, i32 4, i32 3, !dbg !185
  br label %cond.end111, !dbg !185

cond.false99:                                     ; preds = %cond.false75
  %47 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_offset100 = getelementptr inbounds %struct.acpi_generic_address, ptr %47, i32 0, i32 2, !dbg !185
  %48 = load i8, ptr %bit_offset100, align 1, !dbg !185
  %conv101 = zext i8 %48 to i32, !dbg !185
  %49 = load ptr, ptr %reg.addr, align 8, !dbg !185
  %bit_width102 = getelementptr inbounds %struct.acpi_generic_address, ptr %49, i32 0, i32 1, !dbg !185
  %50 = load i8, ptr %bit_width102, align 1, !dbg !185
  %conv103 = zext i8 %50 to i32, !dbg !185
  %add104 = add i32 %conv101, %conv103, !dbg !185
  %sub105 = sub i32 %add104, 1, !dbg !185
  %conv106 = trunc i32 %sub105 to i8, !dbg !185
  %conv107 = zext i8 %conv106 to i32, !dbg !185
  %and108 = and i32 %conv107, 2, !dbg !185
  %tobool109 = icmp ne i32 %and108, 0, !dbg !185
  %51 = zext i1 %tobool109 to i64, !dbg !185
  %cond110 = select i1 %tobool109, i32 2, i32 1, !dbg !185
  br label %cond.end111, !dbg !185

cond.end111:                                      ; preds = %cond.false99, %cond.true86
  %cond112 = phi i32 [ %cond98, %cond.true86 ], [ %cond110, %cond.false99 ], !dbg !185
  br label %cond.end113, !dbg !185

cond.end113:                                      ; preds = %cond.end111, %cond.end
  %cond114 = phi i32 [ %cond74, %cond.end ], [ %cond112, %cond.end111 ], !dbg !185
  br label %cond.end116, !dbg !185

cond.false115:                                    ; preds = %if.else20
  br label %cond.end116, !dbg !185

cond.end116:                                      ; preds = %cond.false115, %cond.end113
  %cond117 = phi i32 [ %cond114, %cond.end113 ], [ 0, %cond.false115 ], !dbg !185
  %shl118 = shl i32 1, %cond117, !dbg !185
  %conv119 = trunc i32 %shl118 to i8, !dbg !185
  store i8 %conv119, ptr %access_bit_width, align 1, !dbg !187
  %52 = load i8, ptr %access_bit_width, align 1, !dbg !188
  %conv120 = zext i8 %52 to i32, !dbg !188
  %cmp121 = icmp sle i32 %conv120, 8, !dbg !190
  br i1 %cmp121, label %if.then123, label %if.else124, !dbg !191

if.then123:                                       ; preds = %cond.end116
  store i8 8, ptr %access_bit_width, align 1, !dbg !192
  br label %if.end, !dbg !194

if.else124:                                       ; preds = %cond.end116
  br label %while.cond, !dbg !195

while.cond:                                       ; preds = %while.body, %if.else124
  %53 = load i64, ptr %address.addr, align 8, !dbg !197
  %54 = load i8, ptr %access_bit_width, align 1, !dbg !197
  %conv125 = zext i8 %54 to i32, !dbg !197
  %shr126 = ashr i32 %conv125, 3, !dbg !197
  %sub127 = sub i32 %shr126, 1, !dbg !197
  %conv128 = sext i32 %sub127 to i64, !dbg !197
  %and129 = and i64 %53, %conv128, !dbg !197
  %cmp130 = icmp eq i64 %and129, 0, !dbg !197
  %lnot = xor i1 %cmp130, true, !dbg !198
  br i1 %lnot, label %while.body, label %while.end, !dbg !195

while.body:                                       ; preds = %while.cond
  %55 = load i8, ptr %access_bit_width, align 1, !dbg !199
  %conv132 = zext i8 %55 to i32, !dbg !199
  %shr133 = ashr i32 %conv132, 1, !dbg !199
  %conv134 = trunc i32 %shr133 to i8, !dbg !199
  store i8 %conv134, ptr %access_bit_width, align 1, !dbg !199
  br label %while.cond, !dbg !195, !llvm.loop !201

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then123
  br label %if.end135

if.end135:                                        ; preds = %if.end, %if.then16
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then
  %56 = load ptr, ptr %reg.addr, align 8, !dbg !205
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %56, i32 0, i32 0, !dbg !207
  %57 = load i8, ptr %space_id, align 1, !dbg !207
  %conv137 = zext i8 %57 to i32, !dbg !205
  %cmp138 = icmp eq i32 %conv137, 1, !dbg !208
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !209

if.then140:                                       ; preds = %if.end136
  store i8 32, ptr %max_bit_width.addr, align 1, !dbg !210
  br label %if.end141, !dbg !212

if.end141:                                        ; preds = %if.then140, %if.end136
  %58 = load i8, ptr %access_bit_width, align 1, !dbg !213
  %conv142 = zext i8 %58 to i32, !dbg !213
  %59 = load i8, ptr %max_bit_width.addr, align 1, !dbg !215
  %conv143 = zext i8 %59 to i32, !dbg !215
  %cmp144 = icmp slt i32 %conv142, %conv143, !dbg !216
  br i1 %cmp144, label %if.then146, label %if.end147, !dbg !217

if.then146:                                       ; preds = %if.end141
  %60 = load i8, ptr %access_bit_width, align 1, !dbg !218
  store i8 %60, ptr %retval, align 1, !dbg !220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !220

if.end147:                                        ; preds = %if.end141
  %61 = load i8, ptr %max_bit_width.addr, align 1, !dbg !221
  store i8 %61, ptr %retval, align 1, !dbg !222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !222

cleanup:                                          ; preds = %if.end147, %if.then146
  call void @llvm.lifetime.end.p0(i64 1, ptr %access_bit_width) #5, !dbg !223
  %62 = load i8, ptr %retval, align 1, !dbg !223
  ret i8 %62, !dbg !223
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !224 dso_local void @acpi_warning(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_read(ptr noundef %value, ptr noundef %reg) #0 align 16 !dbg !225 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %reg.addr = alloca ptr, align 8
  %address = alloca i64, align 8
  %access_width = alloca i8, align 1
  %bit_width = alloca i32, align 4
  %bit_offset = alloca i8, align 1
  %value64 = alloca i64, align 8
  %value32 = alloca i32, align 4
  %index = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !229, metadata !DIExpression()), !dbg !239
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !230, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #5, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %address, metadata !231, metadata !DIExpression()), !dbg !242
  call void @llvm.lifetime.start.p0(i64 1, ptr %access_width) #5, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %access_width, metadata !232, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_width) #5, !dbg !245
  call void @llvm.dbg.declare(metadata ptr %bit_width, metadata !233, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 1, ptr %bit_offset) #5, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %bit_offset, metadata !234, metadata !DIExpression()), !dbg !248
  call void @llvm.lifetime.start.p0(i64 8, ptr %value64) #5, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %value64, metadata !235, metadata !DIExpression()), !dbg !250
  call void @llvm.lifetime.start.p0(i64 4, ptr %value32) #5, !dbg !251
  call void @llvm.dbg.declare(metadata ptr %value32, metadata !236, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 1, ptr %index) #5, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %index, metadata !237, metadata !DIExpression()), !dbg !254
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !255
  call void @llvm.dbg.declare(metadata ptr %status, metadata !238, metadata !DIExpression()), !dbg !256
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !257
  %call = call i32 @acpi_hw_validate_register(ptr noundef %0, i8 noundef zeroext 64, ptr noundef %address) #6, !dbg !258
  store i32 %call, ptr %status, align 4, !dbg !259
  %1 = load i32, ptr %status, align 4, !dbg !260
  %tobool = icmp ne i32 %1, 0, !dbg !260
  br i1 %tobool, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !263
  store i32 %2, ptr %retval, align 4, !dbg !265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !265

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %value.addr, align 8, !dbg !266
  store i64 0, ptr %3, align 8, !dbg !267
  %4 = load i64, ptr %address, align 8, !dbg !268
  %5 = load ptr, ptr %reg.addr, align 8, !dbg !269
  %call1 = call zeroext i8 @acpi_hw_get_access_bit_width(i64 noundef %4, ptr noundef %5, i8 noundef zeroext 64) #6, !dbg !270
  store i8 %call1, ptr %access_width, align 1, !dbg !271
  %6 = load ptr, ptr %reg.addr, align 8, !dbg !272
  %bit_offset2 = getelementptr inbounds %struct.acpi_generic_address, ptr %6, i32 0, i32 2, !dbg !273
  %7 = load i8, ptr %bit_offset2, align 1, !dbg !273
  %conv = zext i8 %7 to i32, !dbg !272
  %8 = load ptr, ptr %reg.addr, align 8, !dbg !274
  %bit_width3 = getelementptr inbounds %struct.acpi_generic_address, ptr %8, i32 0, i32 1, !dbg !275
  %9 = load i8, ptr %bit_width3, align 1, !dbg !275
  %conv4 = zext i8 %9 to i32, !dbg !274
  %add = add i32 %conv, %conv4, !dbg !276
  store i32 %add, ptr %bit_width, align 4, !dbg !277
  %10 = load ptr, ptr %reg.addr, align 8, !dbg !278
  %bit_offset5 = getelementptr inbounds %struct.acpi_generic_address, ptr %10, i32 0, i32 2, !dbg !279
  %11 = load i8, ptr %bit_offset5, align 1, !dbg !279
  store i8 %11, ptr %bit_offset, align 1, !dbg !280
  store i8 0, ptr %index, align 1, !dbg !281
  br label %while.cond, !dbg !282

while.cond:                                       ; preds = %cond.end51, %if.end
  %12 = load i32, ptr %bit_width, align 4, !dbg !283
  %tobool6 = icmp ne i32 %12, 0, !dbg !282
  br i1 %tobool6, label %while.body, label %while.end, !dbg !282

while.body:                                       ; preds = %while.cond
  %13 = load i8, ptr %bit_offset, align 1, !dbg !284
  %conv7 = zext i8 %13 to i32, !dbg !284
  %14 = load i8, ptr %access_width, align 1, !dbg !287
  %conv8 = zext i8 %14 to i32, !dbg !287
  %cmp = icmp sge i32 %conv7, %conv8, !dbg !288
  br i1 %cmp, label %if.then10, label %if.else, !dbg !289

if.then10:                                        ; preds = %while.body
  store i64 0, ptr %value64, align 8, !dbg !290
  %15 = load i8, ptr %access_width, align 1, !dbg !292
  %conv11 = zext i8 %15 to i32, !dbg !292
  %16 = load i8, ptr %bit_offset, align 1, !dbg !293
  %conv12 = zext i8 %16 to i32, !dbg !293
  %sub = sub i32 %conv12, %conv11, !dbg !293
  %conv13 = trunc i32 %sub to i8, !dbg !293
  store i8 %conv13, ptr %bit_offset, align 1, !dbg !293
  br label %if.end35, !dbg !294

if.else:                                          ; preds = %while.body
  %17 = load ptr, ptr %reg.addr, align 8, !dbg !295
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %17, i32 0, i32 0, !dbg !298
  %18 = load i8, ptr %space_id, align 1, !dbg !298
  %conv14 = zext i8 %18 to i32, !dbg !295
  %cmp15 = icmp eq i32 %conv14, 0, !dbg !299
  br i1 %cmp15, label %if.then17, label %if.else24, !dbg !300

if.then17:                                        ; preds = %if.else
  %19 = load i64, ptr %address, align 8, !dbg !301
  %20 = load i8, ptr %index, align 1, !dbg !303
  %conv18 = zext i8 %20 to i32, !dbg !303
  %21 = load i8, ptr %access_width, align 1, !dbg !304
  %conv19 = zext i8 %21 to i32, !dbg !304
  %shr = ashr i32 %conv19, 3, !dbg !304
  %mul = mul i32 %conv18, %shr, !dbg !305
  %conv20 = zext i32 %mul to i64, !dbg !303
  %add21 = add i64 %19, %conv20, !dbg !306
  %22 = load i8, ptr %access_width, align 1, !dbg !307
  %conv22 = zext i8 %22 to i32, !dbg !307
  %call23 = call i32 @acpi_os_read_memory(i64 noundef %add21, ptr noundef %value64, i32 noundef %conv22) #6, !dbg !308
  store i32 %call23, ptr %status, align 4, !dbg !309
  br label %if.end34, !dbg !310

if.else24:                                        ; preds = %if.else
  %23 = load i64, ptr %address, align 8, !dbg !311
  %24 = load i8, ptr %index, align 1, !dbg !313
  %conv25 = zext i8 %24 to i32, !dbg !313
  %25 = load i8, ptr %access_width, align 1, !dbg !314
  %conv26 = zext i8 %25 to i32, !dbg !314
  %shr27 = ashr i32 %conv26, 3, !dbg !314
  %mul28 = mul i32 %conv25, %shr27, !dbg !315
  %conv29 = zext i32 %mul28 to i64, !dbg !313
  %add30 = add i64 %23, %conv29, !dbg !316
  %26 = load i8, ptr %access_width, align 1, !dbg !317
  %conv31 = zext i8 %26 to i32, !dbg !317
  %call32 = call i32 @acpi_hw_read_port(i64 noundef %add30, ptr noundef %value32, i32 noundef %conv31) #6, !dbg !318
  store i32 %call32, ptr %status, align 4, !dbg !319
  %27 = load i32, ptr %value32, align 4, !dbg !320
  %conv33 = zext i32 %27 to i64, !dbg !321
  store i64 %conv33, ptr %value64, align 8, !dbg !322
  br label %if.end34

if.end34:                                         ; preds = %if.else24, %if.then17
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then10
  %28 = load i64, ptr %value64, align 8, !dbg !323
  %29 = load i8, ptr %access_width, align 1, !dbg !323
  %conv36 = zext i8 %29 to i32, !dbg !323
  %cmp37 = icmp eq i32 %conv36, 64, !dbg !323
  br i1 %cmp37, label %cond.true, label %cond.false, !dbg !323

cond.true:                                        ; preds = %if.end35
  br label %cond.end, !dbg !323

cond.false:                                       ; preds = %if.end35
  %30 = load i8, ptr %access_width, align 1, !dbg !323
  %conv39 = zext i8 %30 to i32, !dbg !323
  %sh_prom = zext i32 %conv39 to i64, !dbg !323
  %shl = shl i64 -1, %sh_prom, !dbg !323
  %not = xor i64 %shl, -1, !dbg !323
  br label %cond.end, !dbg !323

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %not, %cond.false ], !dbg !323
  %and = and i64 %28, %cond, !dbg !323
  %31 = load i8, ptr %index, align 1, !dbg !323
  %conv40 = zext i8 %31 to i32, !dbg !323
  %32 = load i8, ptr %access_width, align 1, !dbg !323
  %conv41 = zext i8 %32 to i32, !dbg !323
  %mul42 = mul i32 %conv40, %conv41, !dbg !323
  %sh_prom43 = zext i32 %mul42 to i64, !dbg !323
  %shl44 = shl i64 %and, %sh_prom43, !dbg !323
  %33 = load ptr, ptr %value.addr, align 8, !dbg !323
  %34 = load i64, ptr %33, align 8, !dbg !323
  %or = or i64 %34, %shl44, !dbg !323
  store i64 %or, ptr %33, align 8, !dbg !323
  %35 = load i32, ptr %bit_width, align 4, !dbg !324
  %36 = load i8, ptr %access_width, align 1, !dbg !325
  %conv45 = zext i8 %36 to i32, !dbg !325
  %cmp46 = icmp ugt i32 %35, %conv45, !dbg !326
  br i1 %cmp46, label %cond.true48, label %cond.false50, !dbg !324

cond.true48:                                      ; preds = %cond.end
  %37 = load i8, ptr %access_width, align 1, !dbg !327
  %conv49 = zext i8 %37 to i32, !dbg !327
  br label %cond.end51, !dbg !324

cond.false50:                                     ; preds = %cond.end
  %38 = load i32, ptr %bit_width, align 4, !dbg !328
  br label %cond.end51, !dbg !324

cond.end51:                                       ; preds = %cond.false50, %cond.true48
  %cond52 = phi i32 [ %conv49, %cond.true48 ], [ %38, %cond.false50 ], !dbg !324
  %39 = load i32, ptr %bit_width, align 4, !dbg !329
  %sub53 = sub i32 %39, %cond52, !dbg !329
  store i32 %sub53, ptr %bit_width, align 4, !dbg !329
  %40 = load i8, ptr %index, align 1, !dbg !330
  %inc = add i8 %40, 1, !dbg !330
  store i8 %inc, ptr %index, align 1, !dbg !330
  br label %while.cond, !dbg !282, !llvm.loop !331

while.end:                                        ; preds = %while.cond
  %41 = load i32, ptr %status, align 4, !dbg !333
  store i32 %41, ptr %retval, align 4, !dbg !334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !334

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !335
  call void @llvm.lifetime.end.p0(i64 1, ptr %index) #5, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %value32) #5, !dbg !335
  call void @llvm.lifetime.end.p0(i64 8, ptr %value64) #5, !dbg !335
  call void @llvm.lifetime.end.p0(i64 1, ptr %bit_offset) #5, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_width) #5, !dbg !335
  call void @llvm.lifetime.end.p0(i64 1, ptr %access_width) #5, !dbg !335
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #5, !dbg !335
  %42 = load i32, ptr %retval, align 4, !dbg !335
  ret i32 %42, !dbg !335
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !336 dso_local i32 @acpi_os_read_memory(i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !340 dso_local i32 @acpi_hw_read_port(i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_write(i64 noundef %value, ptr noundef %reg) #0 align 16 !dbg !345 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %reg.addr = alloca ptr, align 8
  %address = alloca i64, align 8
  %access_width = alloca i8, align 1
  %bit_width = alloca i32, align 4
  %bit_offset = alloca i8, align 1
  %value64 = alloca i64, align 8
  %index = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !349, metadata !DIExpression()), !dbg !358
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !350, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 8, ptr %address) #5, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %address, metadata !351, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 1, ptr %access_width) #5, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %access_width, metadata !352, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_width) #5, !dbg !364
  call void @llvm.dbg.declare(metadata ptr %bit_width, metadata !353, metadata !DIExpression()), !dbg !365
  call void @llvm.lifetime.start.p0(i64 1, ptr %bit_offset) #5, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %bit_offset, metadata !354, metadata !DIExpression()), !dbg !367
  call void @llvm.lifetime.start.p0(i64 8, ptr %value64) #5, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %value64, metadata !355, metadata !DIExpression()), !dbg !369
  call void @llvm.lifetime.start.p0(i64 1, ptr %index) #5, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %index, metadata !356, metadata !DIExpression()), !dbg !371
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %status, metadata !357, metadata !DIExpression()), !dbg !373
  %0 = load ptr, ptr %reg.addr, align 8, !dbg !374
  %call = call i32 @acpi_hw_validate_register(ptr noundef %0, i8 noundef zeroext 64, ptr noundef %address) #6, !dbg !375
  store i32 %call, ptr %status, align 4, !dbg !376
  %1 = load i32, ptr %status, align 4, !dbg !377
  %tobool = icmp ne i32 %1, 0, !dbg !377
  br i1 %tobool, label %if.then, label %if.end, !dbg !379

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !380
  store i32 %2, ptr %retval, align 4, !dbg !382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !382

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %address, align 8, !dbg !383
  %4 = load ptr, ptr %reg.addr, align 8, !dbg !384
  %call1 = call zeroext i8 @acpi_hw_get_access_bit_width(i64 noundef %3, ptr noundef %4, i8 noundef zeroext 64) #6, !dbg !385
  store i8 %call1, ptr %access_width, align 1, !dbg !386
  %5 = load ptr, ptr %reg.addr, align 8, !dbg !387
  %bit_offset2 = getelementptr inbounds %struct.acpi_generic_address, ptr %5, i32 0, i32 2, !dbg !388
  %6 = load i8, ptr %bit_offset2, align 1, !dbg !388
  %conv = zext i8 %6 to i32, !dbg !387
  %7 = load ptr, ptr %reg.addr, align 8, !dbg !389
  %bit_width3 = getelementptr inbounds %struct.acpi_generic_address, ptr %7, i32 0, i32 1, !dbg !390
  %8 = load i8, ptr %bit_width3, align 1, !dbg !390
  %conv4 = zext i8 %8 to i32, !dbg !389
  %add = add i32 %conv, %conv4, !dbg !391
  store i32 %add, ptr %bit_width, align 4, !dbg !392
  %9 = load ptr, ptr %reg.addr, align 8, !dbg !393
  %bit_offset5 = getelementptr inbounds %struct.acpi_generic_address, ptr %9, i32 0, i32 2, !dbg !394
  %10 = load i8, ptr %bit_offset5, align 1, !dbg !394
  store i8 %10, ptr %bit_offset, align 1, !dbg !395
  store i8 0, ptr %index, align 1, !dbg !396
  br label %while.cond, !dbg !397

while.cond:                                       ; preds = %cond.end51, %if.end
  %11 = load i32, ptr %bit_width, align 4, !dbg !398
  %tobool6 = icmp ne i32 %11, 0, !dbg !397
  br i1 %tobool6, label %while.body, label %while.end, !dbg !397

while.body:                                       ; preds = %while.cond
  %12 = load i64, ptr %value.addr, align 8, !dbg !399
  %13 = load i8, ptr %index, align 1, !dbg !399
  %conv7 = zext i8 %13 to i32, !dbg !399
  %14 = load i8, ptr %access_width, align 1, !dbg !399
  %conv8 = zext i8 %14 to i32, !dbg !399
  %mul = mul i32 %conv7, %conv8, !dbg !399
  %sh_prom = zext i32 %mul to i64, !dbg !399
  %shr = lshr i64 %12, %sh_prom, !dbg !399
  %15 = load i8, ptr %access_width, align 1, !dbg !399
  %conv9 = zext i8 %15 to i32, !dbg !399
  %cmp = icmp eq i32 %conv9, 64, !dbg !399
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !399

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !399

cond.false:                                       ; preds = %while.body
  %16 = load i8, ptr %access_width, align 1, !dbg !399
  %conv11 = zext i8 %16 to i32, !dbg !399
  %sh_prom12 = zext i32 %conv11 to i64, !dbg !399
  %shl = shl i64 -1, %sh_prom12, !dbg !399
  %not = xor i64 %shl, -1, !dbg !399
  br label %cond.end, !dbg !399

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %not, %cond.false ], !dbg !399
  %and = and i64 %shr, %cond, !dbg !399
  store i64 %and, ptr %value64, align 8, !dbg !401
  %17 = load i8, ptr %bit_offset, align 1, !dbg !402
  %conv13 = zext i8 %17 to i32, !dbg !402
  %18 = load i8, ptr %access_width, align 1, !dbg !404
  %conv14 = zext i8 %18 to i32, !dbg !404
  %cmp15 = icmp sge i32 %conv13, %conv14, !dbg !405
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !406

if.then17:                                        ; preds = %cond.end
  %19 = load i8, ptr %access_width, align 1, !dbg !407
  %conv18 = zext i8 %19 to i32, !dbg !407
  %20 = load i8, ptr %bit_offset, align 1, !dbg !409
  %conv19 = zext i8 %20 to i32, !dbg !409
  %sub = sub i32 %conv19, %conv18, !dbg !409
  %conv20 = trunc i32 %sub to i8, !dbg !409
  store i8 %conv20, ptr %bit_offset, align 1, !dbg !409
  br label %if.end44, !dbg !410

if.else:                                          ; preds = %cond.end
  %21 = load ptr, ptr %reg.addr, align 8, !dbg !411
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %21, i32 0, i32 0, !dbg !414
  %22 = load i8, ptr %space_id, align 1, !dbg !414
  %conv21 = zext i8 %22 to i32, !dbg !411
  %cmp22 = icmp eq i32 %conv21, 0, !dbg !415
  br i1 %cmp22, label %if.then24, label %if.else33, !dbg !416

if.then24:                                        ; preds = %if.else
  %23 = load i64, ptr %address, align 8, !dbg !417
  %24 = load i8, ptr %index, align 1, !dbg !419
  %conv25 = zext i8 %24 to i32, !dbg !419
  %25 = load i8, ptr %access_width, align 1, !dbg !420
  %conv26 = zext i8 %25 to i32, !dbg !420
  %shr27 = ashr i32 %conv26, 3, !dbg !420
  %mul28 = mul i32 %conv25, %shr27, !dbg !421
  %conv29 = zext i32 %mul28 to i64, !dbg !419
  %add30 = add i64 %23, %conv29, !dbg !422
  %26 = load i64, ptr %value64, align 8, !dbg !423
  %27 = load i8, ptr %access_width, align 1, !dbg !424
  %conv31 = zext i8 %27 to i32, !dbg !424
  %call32 = call i32 @acpi_os_write_memory(i64 noundef %add30, i64 noundef %26, i32 noundef %conv31) #6, !dbg !425
  store i32 %call32, ptr %status, align 4, !dbg !426
  br label %if.end43, !dbg !427

if.else33:                                        ; preds = %if.else
  %28 = load i64, ptr %address, align 8, !dbg !428
  %29 = load i8, ptr %index, align 1, !dbg !430
  %conv34 = zext i8 %29 to i32, !dbg !430
  %30 = load i8, ptr %access_width, align 1, !dbg !431
  %conv35 = zext i8 %30 to i32, !dbg !431
  %shr36 = ashr i32 %conv35, 3, !dbg !431
  %mul37 = mul i32 %conv34, %shr36, !dbg !432
  %conv38 = zext i32 %mul37 to i64, !dbg !430
  %add39 = add i64 %28, %conv38, !dbg !433
  %31 = load i64, ptr %value64, align 8, !dbg !434
  %conv40 = trunc i64 %31 to i32, !dbg !435
  %32 = load i8, ptr %access_width, align 1, !dbg !436
  %conv41 = zext i8 %32 to i32, !dbg !436
  %call42 = call i32 @acpi_hw_write_port(i64 noundef %add39, i32 noundef %conv40, i32 noundef %conv41) #6, !dbg !437
  store i32 %call42, ptr %status, align 4, !dbg !438
  br label %if.end43

if.end43:                                         ; preds = %if.else33, %if.then24
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then17
  %33 = load i32, ptr %bit_width, align 4, !dbg !439
  %34 = load i8, ptr %access_width, align 1, !dbg !440
  %conv45 = zext i8 %34 to i32, !dbg !440
  %cmp46 = icmp ugt i32 %33, %conv45, !dbg !441
  br i1 %cmp46, label %cond.true48, label %cond.false50, !dbg !439

cond.true48:                                      ; preds = %if.end44
  %35 = load i8, ptr %access_width, align 1, !dbg !442
  %conv49 = zext i8 %35 to i32, !dbg !442
  br label %cond.end51, !dbg !439

cond.false50:                                     ; preds = %if.end44
  %36 = load i32, ptr %bit_width, align 4, !dbg !443
  br label %cond.end51, !dbg !439

cond.end51:                                       ; preds = %cond.false50, %cond.true48
  %cond52 = phi i32 [ %conv49, %cond.true48 ], [ %36, %cond.false50 ], !dbg !439
  %37 = load i32, ptr %bit_width, align 4, !dbg !444
  %sub53 = sub i32 %37, %cond52, !dbg !444
  store i32 %sub53, ptr %bit_width, align 4, !dbg !444
  %38 = load i8, ptr %index, align 1, !dbg !445
  %inc = add i8 %38, 1, !dbg !445
  store i8 %inc, ptr %index, align 1, !dbg !445
  br label %while.cond, !dbg !397, !llvm.loop !446

while.end:                                        ; preds = %while.cond
  %39 = load i32, ptr %status, align 4, !dbg !448
  store i32 %39, ptr %retval, align 4, !dbg !449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !449

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !450
  call void @llvm.lifetime.end.p0(i64 1, ptr %index) #5, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %value64) #5, !dbg !450
  call void @llvm.lifetime.end.p0(i64 1, ptr %bit_offset) #5, !dbg !450
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_width) #5, !dbg !450
  call void @llvm.lifetime.end.p0(i64 1, ptr %access_width) #5, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %address) #5, !dbg !450
  %40 = load i32, ptr %retval, align 4, !dbg !450
  ret i32 %40, !dbg !450
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !451 dso_local i32 @acpi_os_write_memory(i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !454 dso_local i32 @acpi_hw_write_port(i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_clear_acpi_status() #0 align 16 !dbg !457 {
entry:
  %status = alloca i32, align 4
  %lock_flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %status, metadata !461, metadata !DIExpression()), !dbg !466
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock_flags) #5, !dbg !467
  call void @llvm.dbg.declare(metadata ptr %lock_flags, metadata !462, metadata !DIExpression()), !dbg !468
  store i64 0, ptr %lock_flags, align 8, !dbg !468
  %0 = load ptr, ptr @acpi_gbl_hardware_lock, align 8, !dbg !469
  %call = call i64 @acpi_os_acquire_raw_lock(ptr noundef %0) #6, !dbg !470
  store i64 %call, ptr %lock_flags, align 8, !dbg !471
  %call1 = call i32 @acpi_hw_register_write(i32 noundef 1, i32 noundef 50993) #6, !dbg !472
  store i32 %call1, ptr %status, align 4, !dbg !473
  %1 = load ptr, ptr @acpi_gbl_hardware_lock, align 8, !dbg !474
  %2 = load i64, ptr %lock_flags, align 8, !dbg !475
  call void @acpi_os_release_raw_lock(ptr noundef %1, i64 noundef %2) #6, !dbg !476
  %3 = load i32, ptr %status, align 4, !dbg !477
  %tobool = icmp ne i32 %3, 0, !dbg !477
  br i1 %tobool, label %if.then, label %if.end, !dbg !479

if.then:                                          ; preds = %entry
  br label %exit, !dbg !480

if.end:                                           ; preds = %entry
  %call2 = call i32 @acpi_ev_walk_gpe_list(ptr noundef @acpi_hw_clear_gpe_block, ptr noundef null) #6, !dbg !482
  store i32 %call2, ptr %status, align 4, !dbg !483
  br label %exit, !dbg !484

exit:                                             ; preds = %if.end, %if.then
  call void @llvm.dbg.label(metadata !464), !dbg !485
  %4 = load i32, ptr %status, align 4, !dbg !486
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock_flags) #5, !dbg !487
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !487
  ret i32 %4, !dbg !486
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_os_acquire_raw_lock(ptr noundef %lockp) #4 align 16 !dbg !488 {
entry:
  %lockp.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lockp, ptr %lockp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockp.addr, metadata !523, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #5, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !524, metadata !DIExpression()), !dbg !531
  br label %do.body, !dbg !532

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #5, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !525, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #5, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !528, metadata !DIExpression()), !dbg !533
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !533
  %conv = zext i1 %cmp to i32, !dbg !533
  store i32 1, ptr %tmp, align 4, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #5, !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #5, !dbg !534
  %0 = load i32, ptr %tmp, align 4, !dbg !533
  %1 = load ptr, ptr %lockp.addr, align 8, !dbg !534
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %1) #6, !dbg !534
  store i64 %call, ptr %flags, align 8, !dbg !534
  br label %do.cond, !dbg !534

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !534

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %flags, align 8, !dbg !535
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #5, !dbg !536
  ret i64 %2, !dbg !537
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_register_write(i32 noundef %register_id, i32 noundef %value) #0 align 16 !dbg !538 {
entry:
  %register_id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %read_value = alloca i32, align 4
  %read_value64 = alloca i64, align 8
  store i32 %register_id, ptr %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %register_id.addr, metadata !542, metadata !DIExpression()), !dbg !548
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !543, metadata !DIExpression()), !dbg !549
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %status, metadata !544, metadata !DIExpression()), !dbg !551
  call void @llvm.lifetime.start.p0(i64 4, ptr %read_value) #5, !dbg !552
  call void @llvm.dbg.declare(metadata ptr %read_value, metadata !545, metadata !DIExpression()), !dbg !553
  call void @llvm.lifetime.start.p0(i64 8, ptr %read_value64) #5, !dbg !554
  call void @llvm.dbg.declare(metadata ptr %read_value64, metadata !546, metadata !DIExpression()), !dbg !555
  %0 = load i32, ptr %register_id.addr, align 4, !dbg !556
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb8
    i32 5, label %sw.bb18
    i32 7, label %sw.bb21
  ], !dbg !557

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %value.addr, align 4, !dbg !558
  %and = and i32 %1, -2049, !dbg !558
  store i32 %and, ptr %value.addr, align 4, !dbg !558
  %2 = load i32, ptr %value.addr, align 4, !dbg !560
  %call = call i32 @acpi_hw_write_multiple(i32 noundef %2, ptr noundef @acpi_gbl_xpm1a_status, ptr noundef @acpi_gbl_xpm1b_status) #6, !dbg !561
  store i32 %call, ptr %status, align 4, !dbg !562
  br label %sw.epilog, !dbg !563

sw.bb1:                                           ; preds = %entry
  %3 = load i32, ptr %value.addr, align 4, !dbg !564
  %call2 = call i32 @acpi_hw_write_multiple(i32 noundef %3, ptr noundef @acpi_gbl_xpm1a_enable, ptr noundef @acpi_gbl_xpm1b_enable) #6, !dbg !565
  store i32 %call2, ptr %status, align 4, !dbg !566
  br label %sw.epilog, !dbg !567

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 @acpi_hw_read_multiple(ptr noundef %read_value, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 47), ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 48)) #6, !dbg !568
  store i32 %call4, ptr %status, align 4, !dbg !569
  %4 = load i32, ptr %status, align 4, !dbg !570
  %tobool = icmp ne i32 %4, 0, !dbg !570
  br i1 %tobool, label %if.then, label %if.end, !dbg !572

if.then:                                          ; preds = %sw.bb3
  br label %exit, !dbg !573

if.end:                                           ; preds = %sw.bb3
  %5 = load i32, ptr %value.addr, align 4, !dbg !575
  %and5 = and i32 %5, -50169, !dbg !575
  %6 = load i32, ptr %read_value, align 4, !dbg !575
  %and6 = and i32 %6, 50168, !dbg !575
  %or = or i32 %and5, %and6, !dbg !575
  store i32 %or, ptr %value.addr, align 4, !dbg !575
  %7 = load i32, ptr %value.addr, align 4, !dbg !576
  %call7 = call i32 @acpi_hw_write_multiple(i32 noundef %7, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 47), ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 48)) #6, !dbg !577
  store i32 %call7, ptr %status, align 4, !dbg !578
  br label %sw.epilog, !dbg !579

sw.bb8:                                           ; preds = %entry
  %call9 = call i32 @acpi_hw_read(ptr noundef %read_value64, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 49)) #6, !dbg !580
  store i32 %call9, ptr %status, align 4, !dbg !581
  %8 = load i32, ptr %status, align 4, !dbg !582
  %tobool10 = icmp ne i32 %8, 0, !dbg !582
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !584

if.then11:                                        ; preds = %sw.bb8
  br label %exit, !dbg !585

if.end12:                                         ; preds = %sw.bb8
  %9 = load i64, ptr %read_value64, align 8, !dbg !587
  %conv = trunc i64 %9 to i32, !dbg !588
  store i32 %conv, ptr %read_value, align 4, !dbg !589
  %10 = load i32, ptr %value.addr, align 4, !dbg !590
  %and13 = and i32 %10, 1, !dbg !590
  %11 = load i32, ptr %read_value, align 4, !dbg !590
  %and14 = and i32 %11, -2, !dbg !590
  %or15 = or i32 %and13, %and14, !dbg !590
  store i32 %or15, ptr %value.addr, align 4, !dbg !590
  %12 = load i32, ptr %value.addr, align 4, !dbg !591
  %conv16 = zext i32 %12 to i64, !dbg !591
  %call17 = call i32 @acpi_hw_write(i64 noundef %conv16, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 49)) #6, !dbg !592
  store i32 %call17, ptr %status, align 4, !dbg !593
  br label %sw.epilog, !dbg !594

sw.bb18:                                          ; preds = %entry
  %13 = load i32, ptr %value.addr, align 4, !dbg !595
  %conv19 = zext i32 %13 to i64, !dbg !595
  %call20 = call i32 @acpi_hw_write(i64 noundef %conv19, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 50)) #6, !dbg !596
  store i32 %call20, ptr %status, align 4, !dbg !597
  br label %sw.epilog, !dbg !598

sw.bb21:                                          ; preds = %entry
  %14 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !599
  %conv22 = zext i32 %14 to i64, !dbg !600
  %15 = load i32, ptr %value.addr, align 4, !dbg !601
  %call23 = call i32 @acpi_hw_write_port(i64 noundef %conv22, i32 noundef %15, i32 noundef 8) #6, !dbg !602
  store i32 %call23, ptr %status, align 4, !dbg !603
  br label %sw.epilog, !dbg !604

sw.default:                                       ; preds = %entry
  %16 = load i32, ptr %register_id.addr, align 4, !dbg !605
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 690, ptr noundef @.str.4, i32 noundef %16) #6, !dbg !605
  store i32 4097, ptr %status, align 4, !dbg !606
  br label %sw.epilog, !dbg !607

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb18, %if.end12, %if.end, %sw.bb1, %sw.bb
  br label %exit, !dbg !608

exit:                                             ; preds = %sw.epilog, %if.then11, %if.then
  call void @llvm.dbg.label(metadata !547), !dbg !609
  %17 = load i32, ptr %status, align 4, !dbg !610
  call void @llvm.lifetime.end.p0(i64 8, ptr %read_value64) #5, !dbg !611
  call void @llvm.lifetime.end.p0(i64 4, ptr %read_value) #5, !dbg !611
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !611
  ret i32 %17, !dbg !610
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_release_raw_lock(ptr noundef %lockp, i64 noundef %flags) #4 align 16 !dbg !612 {
entry:
  %lockp.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lockp, ptr %lockp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockp.addr, metadata !616, metadata !DIExpression()), !dbg !622
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !617, metadata !DIExpression()), !dbg !623
  br label %do.body, !dbg !624

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #5, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !618, metadata !DIExpression()), !dbg !625
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #5, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !621, metadata !DIExpression()), !dbg !625
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !625
  %conv = zext i1 %cmp to i32, !dbg !625
  store i32 1, ptr %tmp, align 4, !dbg !625
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #5, !dbg !626
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #5, !dbg !626
  %0 = load i32, ptr %tmp, align 4, !dbg !625
  %1 = load ptr, ptr %lockp.addr, align 8, !dbg !626
  %2 = load i64, ptr %flags.addr, align 8, !dbg !626
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i64 noundef %2) #6, !dbg !626
  br label %do.end, !dbg !626

do.end:                                           ; preds = %do.body
  ret void, !dbg !627
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !628 dso_local i32 @acpi_ev_walk_gpe_list(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_hw_clear_gpe_block(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_hw_get_bit_register_info(i32 noundef %register_id) #0 align 16 !dbg !1389 {
entry:
  %retval = alloca ptr, align 8
  %register_id.addr = alloca i32, align 4
  store i32 %register_id, ptr %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %register_id.addr, metadata !1399, metadata !DIExpression()), !dbg !1400
  %0 = load i32, ptr %register_id.addr, align 4, !dbg !1401
  %cmp = icmp ugt i32 %0, 19, !dbg !1403
  br i1 %cmp, label %if.then, label %if.end, !dbg !1404

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %register_id.addr, align 4, !dbg !1405
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 431, ptr noundef @.str.3, i32 noundef %1) #6, !dbg !1405
  store ptr null, ptr %retval, align 8, !dbg !1407
  br label %return, !dbg !1407

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %register_id.addr, align 4, !dbg !1408
  %idxprom = zext i32 %2 to i64, !dbg !1409
  %arrayidx = getelementptr [20 x %struct.acpi_bit_register_info], ptr @acpi_gbl_bit_register_info, i64 0, i64 %idxprom, !dbg !1409
  store ptr %arrayidx, ptr %retval, align 8, !dbg !1410
  br label %return, !dbg !1410

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1411
  ret ptr %3, !dbg !1411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_write_pm1_control(i32 noundef %pm1a_control, i32 noundef %pm1b_control) #0 align 16 !dbg !1412 {
entry:
  %retval = alloca i32, align 4
  %pm1a_control.addr = alloca i32, align 4
  %pm1b_control.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %pm1a_control, ptr %pm1a_control.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pm1a_control.addr, metadata !1414, metadata !DIExpression()), !dbg !1417
  store i32 %pm1b_control, ptr %pm1b_control.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pm1b_control.addr, metadata !1415, metadata !DIExpression()), !dbg !1418
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1419
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1416, metadata !DIExpression()), !dbg !1420
  %0 = load i32, ptr %pm1a_control.addr, align 4, !dbg !1421
  %conv = zext i32 %0 to i64, !dbg !1421
  %call = call i32 @acpi_hw_write(i64 noundef %conv, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 47)) #6, !dbg !1422
  store i32 %call, ptr %status, align 4, !dbg !1423
  %1 = load i32, ptr %status, align 4, !dbg !1424
  %tobool = icmp ne i32 %1, 0, !dbg !1424
  br i1 %tobool, label %if.then, label %if.end, !dbg !1426

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1427
  store i32 %2, ptr %retval, align 4, !dbg !1427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1427

if.end:                                           ; preds = %entry
  %3 = load i64, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 48, i32 4), align 1, !dbg !1429
  %tobool1 = icmp ne i64 %3, 0, !dbg !1431
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !1432

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %pm1b_control.addr, align 4, !dbg !1433
  %conv3 = zext i32 %4 to i64, !dbg !1433
  %call4 = call i32 @acpi_hw_write(i64 noundef %conv3, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 48)) #6, !dbg !1435
  store i32 %call4, ptr %status, align 4, !dbg !1436
  br label %if.end5, !dbg !1437

if.end5:                                          ; preds = %if.then2, %if.end
  %5 = load i32, ptr %status, align 4, !dbg !1438
  store i32 %5, ptr %retval, align 4, !dbg !1438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1438

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1439
  %6 = load i32, ptr %retval, align 4, !dbg !1439
  ret i32 %6, !dbg !1439
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_register_read(i32 noundef %register_id, ptr noundef %return_value) #0 align 16 !dbg !1440 {
entry:
  %register_id.addr = alloca i32, align 4
  %return_value.addr = alloca ptr, align 8
  %value = alloca i32, align 4
  %value64 = alloca i64, align 8
  %status = alloca i32, align 4
  store i32 %register_id, ptr %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %register_id.addr, metadata !1444, metadata !DIExpression()), !dbg !1449
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1445, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #5, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1446, metadata !DIExpression()), !dbg !1452
  store i32 0, ptr %value, align 4, !dbg !1452
  call void @llvm.lifetime.start.p0(i64 8, ptr %value64) #5, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %value64, metadata !1447, metadata !DIExpression()), !dbg !1454
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1455
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1448, metadata !DIExpression()), !dbg !1456
  %0 = load i32, ptr %register_id.addr, align 4, !dbg !1457
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 7, label %sw.bb13
  ], !dbg !1458

sw.bb:                                            ; preds = %entry
  %call = call i32 @acpi_hw_read_multiple(ptr noundef %value, ptr noundef @acpi_gbl_xpm1a_status, ptr noundef @acpi_gbl_xpm1b_status) #6, !dbg !1459
  store i32 %call, ptr %status, align 4, !dbg !1461
  br label %sw.epilog, !dbg !1462

sw.bb1:                                           ; preds = %entry
  %call2 = call i32 @acpi_hw_read_multiple(ptr noundef %value, ptr noundef @acpi_gbl_xpm1a_enable, ptr noundef @acpi_gbl_xpm1b_enable) #6, !dbg !1463
  store i32 %call2, ptr %status, align 4, !dbg !1464
  br label %sw.epilog, !dbg !1465

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 @acpi_hw_read_multiple(ptr noundef %value, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 47), ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 48)) #6, !dbg !1466
  store i32 %call4, ptr %status, align 4, !dbg !1467
  %1 = load i32, ptr %value, align 4, !dbg !1468
  %and = and i32 %1, -8197, !dbg !1468
  store i32 %and, ptr %value, align 4, !dbg !1468
  br label %sw.epilog, !dbg !1469

sw.bb5:                                           ; preds = %entry
  %call6 = call i32 @acpi_hw_read(ptr noundef %value64, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 49)) #6, !dbg !1470
  store i32 %call6, ptr %status, align 4, !dbg !1471
  %2 = load i32, ptr %status, align 4, !dbg !1472
  %tobool = icmp ne i32 %2, 0, !dbg !1472
  br i1 %tobool, label %if.end, label %if.then, !dbg !1474

if.then:                                          ; preds = %sw.bb5
  %3 = load i64, ptr %value64, align 8, !dbg !1475
  %conv = trunc i64 %3 to i32, !dbg !1477
  store i32 %conv, ptr %value, align 4, !dbg !1478
  br label %if.end, !dbg !1479

if.end:                                           ; preds = %if.then, %sw.bb5
  br label %sw.epilog, !dbg !1480

sw.bb7:                                           ; preds = %entry
  %call8 = call i32 @acpi_hw_read(ptr noundef %value64, ptr noundef getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 50)) #6, !dbg !1481
  store i32 %call8, ptr %status, align 4, !dbg !1482
  %4 = load i32, ptr %status, align 4, !dbg !1483
  %tobool9 = icmp ne i32 %4, 0, !dbg !1483
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !1485

if.then10:                                        ; preds = %sw.bb7
  %5 = load i64, ptr %value64, align 8, !dbg !1486
  %conv11 = trunc i64 %5 to i32, !dbg !1488
  store i32 %conv11, ptr %value, align 4, !dbg !1489
  br label %if.end12, !dbg !1490

if.end12:                                         ; preds = %if.then10, %sw.bb7
  br label %sw.epilog, !dbg !1491

sw.bb13:                                          ; preds = %entry
  %6 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !1492
  %conv14 = zext i32 %6 to i64, !dbg !1493
  %call15 = call i32 @acpi_hw_read_port(i64 noundef %conv14, ptr noundef %value, i32 noundef 8) #6, !dbg !1494
  store i32 %call15, ptr %status, align 4, !dbg !1495
  br label %sw.epilog, !dbg !1496

sw.default:                                       ; preds = %entry
  %7 = load i32, ptr %register_id.addr, align 4, !dbg !1497
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 553, ptr noundef @.str.4, i32 noundef %7) #6, !dbg !1497
  store i32 4097, ptr %status, align 4, !dbg !1498
  br label %sw.epilog, !dbg !1499

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %if.end12, %if.end, %sw.bb3, %sw.bb1, %sw.bb
  %8 = load i32, ptr %status, align 4, !dbg !1500
  %tobool16 = icmp ne i32 %8, 0, !dbg !1500
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1502

if.then17:                                        ; preds = %sw.epilog
  %9 = load i32, ptr %value, align 4, !dbg !1503
  %10 = load ptr, ptr %return_value.addr, align 8, !dbg !1505
  store i32 %9, ptr %10, align 4, !dbg !1506
  br label %if.end18, !dbg !1507

if.end18:                                         ; preds = %if.then17, %sw.epilog
  %11 = load i32, ptr %status, align 4, !dbg !1508
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 8, ptr %value64) #5, !dbg !1509
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #5, !dbg !1509
  ret i32 %11, !dbg !1508
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_read_multiple(ptr noundef %value, ptr noundef %register_a, ptr noundef %register_b) #0 align 16 !dbg !1510 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %register_a.addr = alloca ptr, align 8
  %register_b.addr = alloca ptr, align 8
  %value_a = alloca i32, align 4
  %value_b = alloca i32, align 4
  %value64 = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1514, metadata !DIExpression()), !dbg !1521
  store ptr %register_a, ptr %register_a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %register_a.addr, metadata !1515, metadata !DIExpression()), !dbg !1522
  store ptr %register_b, ptr %register_b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %register_b.addr, metadata !1516, metadata !DIExpression()), !dbg !1523
  call void @llvm.lifetime.start.p0(i64 4, ptr %value_a) #5, !dbg !1524
  call void @llvm.dbg.declare(metadata ptr %value_a, metadata !1517, metadata !DIExpression()), !dbg !1525
  store i32 0, ptr %value_a, align 4, !dbg !1525
  call void @llvm.lifetime.start.p0(i64 4, ptr %value_b) #5, !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %value_b, metadata !1518, metadata !DIExpression()), !dbg !1527
  store i32 0, ptr %value_b, align 4, !dbg !1527
  call void @llvm.lifetime.start.p0(i64 8, ptr %value64) #5, !dbg !1528
  call void @llvm.dbg.declare(metadata ptr %value64, metadata !1519, metadata !DIExpression()), !dbg !1529
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1530
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1520, metadata !DIExpression()), !dbg !1531
  %0 = load ptr, ptr %register_a.addr, align 8, !dbg !1532
  %call = call i32 @acpi_hw_read(ptr noundef %value64, ptr noundef %0) #6, !dbg !1533
  store i32 %call, ptr %status, align 4, !dbg !1534
  %1 = load i32, ptr %status, align 4, !dbg !1535
  %tobool = icmp ne i32 %1, 0, !dbg !1535
  br i1 %tobool, label %if.then, label %if.end, !dbg !1537

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1538
  store i32 %2, ptr %retval, align 4, !dbg !1540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1540

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %value64, align 8, !dbg !1541
  %conv = trunc i64 %3 to i32, !dbg !1542
  store i32 %conv, ptr %value_a, align 4, !dbg !1543
  %4 = load ptr, ptr %register_b.addr, align 8, !dbg !1544
  %address = getelementptr inbounds %struct.acpi_generic_address, ptr %4, i32 0, i32 4, !dbg !1546
  %5 = load i64, ptr %address, align 1, !dbg !1546
  %tobool1 = icmp ne i64 %5, 0, !dbg !1544
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !1547

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %register_b.addr, align 8, !dbg !1548
  %call3 = call i32 @acpi_hw_read(ptr noundef %value64, ptr noundef %6) #6, !dbg !1550
  store i32 %call3, ptr %status, align 4, !dbg !1551
  %7 = load i32, ptr %status, align 4, !dbg !1552
  %tobool4 = icmp ne i32 %7, 0, !dbg !1552
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1554

if.then5:                                         ; preds = %if.then2
  %8 = load i32, ptr %status, align 4, !dbg !1555
  store i32 %8, ptr %retval, align 4, !dbg !1557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1557

if.end6:                                          ; preds = %if.then2
  %9 = load i64, ptr %value64, align 8, !dbg !1558
  %conv7 = trunc i64 %9 to i32, !dbg !1559
  store i32 %conv7, ptr %value_b, align 4, !dbg !1560
  br label %if.end8, !dbg !1561

if.end8:                                          ; preds = %if.end6, %if.end
  %10 = load i32, ptr %value_a, align 4, !dbg !1562
  %11 = load i32, ptr %value_b, align 4, !dbg !1563
  %or = or i32 %10, %11, !dbg !1564
  %12 = load ptr, ptr %value.addr, align 8, !dbg !1565
  store i32 %or, ptr %12, align 4, !dbg !1566
  store i32 0, ptr %retval, align 4, !dbg !1567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1567

cleanup:                                          ; preds = %if.end8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1568
  call void @llvm.lifetime.end.p0(i64 8, ptr %value64) #5, !dbg !1568
  call void @llvm.lifetime.end.p0(i64 4, ptr %value_b) #5, !dbg !1568
  call void @llvm.lifetime.end.p0(i64 4, ptr %value_a) #5, !dbg !1568
  %13 = load i32, ptr %retval, align 4, !dbg !1568
  ret i32 %13, !dbg !1568
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_write_multiple(i32 noundef %value, ptr noundef %register_a, ptr noundef %register_b) #0 align 16 !dbg !1569 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %register_a.addr = alloca ptr, align 8
  %register_b.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1573, metadata !DIExpression()), !dbg !1577
  store ptr %register_a, ptr %register_a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %register_a.addr, metadata !1574, metadata !DIExpression()), !dbg !1578
  store ptr %register_b, ptr %register_b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %register_b.addr, metadata !1575, metadata !DIExpression()), !dbg !1579
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !1580
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1576, metadata !DIExpression()), !dbg !1581
  %0 = load i32, ptr %value.addr, align 4, !dbg !1582
  %conv = zext i32 %0 to i64, !dbg !1582
  %1 = load ptr, ptr %register_a.addr, align 8, !dbg !1583
  %call = call i32 @acpi_hw_write(i64 noundef %conv, ptr noundef %1) #6, !dbg !1584
  store i32 %call, ptr %status, align 4, !dbg !1585
  %2 = load i32, ptr %status, align 4, !dbg !1586
  %tobool = icmp ne i32 %2, 0, !dbg !1586
  br i1 %tobool, label %if.then, label %if.end, !dbg !1588

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !1589
  store i32 %3, ptr %retval, align 4, !dbg !1591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1591

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %register_b.addr, align 8, !dbg !1592
  %address = getelementptr inbounds %struct.acpi_generic_address, ptr %4, i32 0, i32 4, !dbg !1594
  %5 = load i64, ptr %address, align 1, !dbg !1594
  %tobool1 = icmp ne i64 %5, 0, !dbg !1592
  br i1 %tobool1, label %if.then2, label %if.end5, !dbg !1595

if.then2:                                         ; preds = %if.end
  %6 = load i32, ptr %value.addr, align 4, !dbg !1596
  %conv3 = zext i32 %6 to i64, !dbg !1596
  %7 = load ptr, ptr %register_b.addr, align 8, !dbg !1598
  %call4 = call i32 @acpi_hw_write(i64 noundef %conv3, ptr noundef %7) #6, !dbg !1599
  store i32 %call4, ptr %status, align 4, !dbg !1600
  br label %if.end5, !dbg !1601

if.end5:                                          ; preds = %if.then2, %if.end
  %8 = load i32, ptr %status, align 4, !dbg !1602
  store i32 %8, ptr %retval, align 4, !dbg !1603
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1603

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !1604
  %9 = load i32, ptr %retval, align 4, !dbg !1604
  ret i32 %9, !dbg !1604
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1605 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1607 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !54, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.hwregs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22hwregs\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/hwregs.ll drivers/acpi/acpica/hwregs.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !27, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwregs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d96cfa1207dcd0796942dd948e5e6959")
!4 = !{!5, !12, !16, !17, !21, !22, !7, !23, !13, !18, !24}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !15)
!15 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !6, line: 814, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !20)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !13)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !13)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !13)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !8, line: 19, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !10, line: 24, baseType: !26)
!26 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!27 = !{!28, !34, !39, !44, !49, !0}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !32)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !{!33}
!33 = !DISubrange(count: 32)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 320, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 40)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 520, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 65)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 232, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 29)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !3, line: 553, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 208, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 26)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 56, elements: !56)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!56 = !{!57}
!57 = !DISubrange(count: 7)
!58 = !{i32 7, !"Dwarf Version", i32 5}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 8, !"cf-protection-branch", i32 1}
!62 = !{i32 4, !"function_return_thunk_extern", i32 1}
!63 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!64 = !{i32 1, !"Code Model", i32 2}
!65 = !{i32 1, !"override-stack-alignment", i32 8}
!66 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!67 = distinct !DISubprogram(name: "acpi_hw_validate_register", scope: !3, file: !3, line: 122, type: !68, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!68 = !DISubroutineType(types: !69)
!69 = !{!5, !70, !18, !12}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !72, line: 90, size: 96, elements: !73)
!72 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !71, file: !72, line: 91, baseType: !18, size: 8)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !71, file: !72, line: 92, baseType: !18, size: 8, offset: 8)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !71, file: !72, line: 93, baseType: !18, size: 8, offset: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !71, file: !72, line: 94, baseType: !18, size: 8, offset: 24)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !71, file: !72, line: 95, baseType: !13, size: 64, offset: 32)
!79 = !{!80, !81, !82, !83, !84}
!80 = !DILocalVariable(name: "reg", arg: 1, scope: !67, file: !3, line: 122, type: !70)
!81 = !DILocalVariable(name: "max_bit_width", arg: 2, scope: !67, file: !3, line: 123, type: !18)
!82 = !DILocalVariable(name: "address", arg: 3, scope: !67, file: !3, line: 123, type: !12)
!83 = !DILocalVariable(name: "bit_width", scope: !67, file: !3, line: 125, type: !18)
!84 = !DILocalVariable(name: "access_width", scope: !67, file: !3, line: 126, type: !18)
!85 = !DILocation(line: 122, column: 56, scope: !67)
!86 = !DILocation(line: 123, column: 9, scope: !67)
!87 = !DILocation(line: 123, column: 29, scope: !67)
!88 = !DILocation(line: 125, column: 2, scope: !67)
!89 = !DILocation(line: 125, column: 5, scope: !67)
!90 = !DILocation(line: 126, column: 2, scope: !67)
!91 = !DILocation(line: 126, column: 5, scope: !67)
!92 = !DILocation(line: 130, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !67, file: !3, line: 130, column: 6)
!94 = !DILocation(line: 130, column: 6, scope: !67)
!95 = !DILocation(line: 131, column: 3, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !3, line: 130, column: 12)
!97 = !DILocation(line: 139, column: 2, scope: !67)
!98 = !DILocation(line: 140, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !67, file: !3, line: 140, column: 6)
!100 = !DILocation(line: 140, column: 8, scope: !99)
!101 = !DILocation(line: 140, column: 7, scope: !99)
!102 = !DILocation(line: 140, column: 6, scope: !67)
!103 = !DILocation(line: 141, column: 3, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !3, line: 140, column: 19)
!105 = !DILocation(line: 146, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !67, file: !3, line: 146, column: 6)
!107 = !DILocation(line: 146, column: 12, scope: !106)
!108 = !DILocation(line: 146, column: 21, scope: !106)
!109 = !DILocation(line: 146, column: 54, scope: !106)
!110 = !DILocation(line: 147, column: 7, scope: !106)
!111 = !DILocation(line: 147, column: 12, scope: !106)
!112 = !DILocation(line: 147, column: 21, scope: !106)
!113 = !DILocation(line: 146, column: 6, scope: !67)
!114 = !DILocation(line: 148, column: 3, scope: !115)
!115 = distinct !DILexicalBlock(scope: !106, file: !3, line: 147, column: 51)
!116 = !DILocation(line: 150, column: 3, scope: !115)
!117 = !DILocation(line: 155, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !67, file: !3, line: 155, column: 6)
!119 = !DILocation(line: 155, column: 11, scope: !118)
!120 = !DILocation(line: 155, column: 24, scope: !118)
!121 = !DILocation(line: 155, column: 6, scope: !67)
!122 = !DILocation(line: 156, column: 3, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !3, line: 155, column: 29)
!124 = !DILocation(line: 159, column: 3, scope: !123)
!125 = !DILocation(line: 165, column: 36, scope: !67)
!126 = !DILocation(line: 165, column: 35, scope: !67)
!127 = !DILocation(line: 165, column: 45, scope: !67)
!128 = !DILocation(line: 165, column: 50, scope: !67)
!129 = !DILocation(line: 165, column: 6, scope: !67)
!130 = !DILocation(line: 164, column: 15, scope: !67)
!131 = !DILocation(line: 167, column: 6, scope: !67)
!132 = !DILocation(line: 166, column: 12, scope: !67)
!133 = !DILocation(line: 168, column: 6, scope: !134)
!134 = distinct !DILexicalBlock(scope: !67, file: !3, line: 168, column: 6)
!135 = !DILocation(line: 168, column: 22, scope: !134)
!136 = !DILocation(line: 168, column: 20, scope: !134)
!137 = !DILocation(line: 168, column: 6, scope: !67)
!138 = !DILocation(line: 169, column: 3, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 168, column: 33)
!140 = !DILocation(line: 172, column: 3, scope: !139)
!141 = !DILocation(line: 175, column: 2, scope: !67)
!142 = !DILocation(line: 176, column: 1, scope: !67)
!143 = !DISubprogram(name: "acpi_error", scope: !144, file: !144, line: 901, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!144 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147, !7, !147, null}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!148 = distinct !DISubprogram(name: "acpi_hw_get_access_bit_width", scope: !3, file: !3, line: 50, type: !149, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{!18, !13, !70, !18}
!151 = !{!152, !153, !154, !155}
!152 = !DILocalVariable(name: "address", arg: 1, scope: !148, file: !3, line: 50, type: !13)
!153 = !DILocalVariable(name: "reg", arg: 2, scope: !148, file: !3, line: 51, type: !70)
!154 = !DILocalVariable(name: "max_bit_width", arg: 3, scope: !148, file: !3, line: 51, type: !18)
!155 = !DILocalVariable(name: "access_bit_width", scope: !148, file: !3, line: 53, type: !18)
!156 = !DILocation(line: 50, column: 34, scope: !148)
!157 = !DILocation(line: 51, column: 38, scope: !148)
!158 = !DILocation(line: 51, column: 46, scope: !148)
!159 = !DILocation(line: 53, column: 2, scope: !148)
!160 = !DILocation(line: 53, column: 5, scope: !148)
!161 = !DILocation(line: 69, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !148, file: !3, line: 69, column: 6)
!163 = !DILocation(line: 69, column: 12, scope: !162)
!164 = !DILocation(line: 69, column: 23, scope: !162)
!165 = !DILocation(line: 69, column: 26, scope: !162)
!166 = !DILocation(line: 69, column: 31, scope: !162)
!167 = !DILocation(line: 69, column: 41, scope: !162)
!168 = !DILocation(line: 70, column: 6, scope: !162)
!169 = !DILocation(line: 70, column: 43, scope: !162)
!170 = !DILocation(line: 71, column: 6, scope: !162)
!171 = !DILocation(line: 69, column: 6, scope: !148)
!172 = !DILocation(line: 72, column: 22, scope: !173)
!173 = distinct !DILexicalBlock(scope: !162, file: !3, line: 71, column: 42)
!174 = !DILocation(line: 72, column: 27, scope: !173)
!175 = !DILocation(line: 72, column: 20, scope: !173)
!176 = !DILocation(line: 73, column: 2, scope: !173)
!177 = !DILocation(line: 73, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !162, file: !3, line: 73, column: 13)
!179 = !DILocation(line: 73, column: 18, scope: !178)
!180 = !DILocation(line: 73, column: 13, scope: !162)
!181 = !DILocation(line: 74, column: 22, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !3, line: 73, column: 32)
!183 = !DILocation(line: 74, column: 20, scope: !182)
!184 = !DILocation(line: 75, column: 2, scope: !182)
!185 = !DILocation(line: 77, column: 7, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !3, line: 75, column: 9)
!187 = !DILocation(line: 76, column: 20, scope: !186)
!188 = !DILocation(line: 79, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !3, line: 79, column: 7)
!190 = !DILocation(line: 79, column: 24, scope: !189)
!191 = !DILocation(line: 79, column: 7, scope: !186)
!192 = !DILocation(line: 80, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !3, line: 79, column: 30)
!194 = !DILocation(line: 81, column: 3, scope: !193)
!195 = !DILocation(line: 82, column: 4, scope: !196)
!196 = distinct !DILexicalBlock(scope: !189, file: !3, line: 81, column: 10)
!197 = !DILocation(line: 82, column: 12, scope: !196)
!198 = !DILocation(line: 82, column: 11, scope: !196)
!199 = !DILocation(line: 83, column: 22, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !3, line: 82, column: 61)
!201 = distinct !{!201, !195, !202, !203, !204}
!202 = !DILocation(line: 84, column: 4, scope: !196)
!203 = !{!"llvm.loop.mustprogress"}
!204 = !{!"llvm.loop.unroll.disable"}
!205 = !DILocation(line: 90, column: 6, scope: !206)
!206 = distinct !DILexicalBlock(scope: !148, file: !3, line: 90, column: 6)
!207 = !DILocation(line: 90, column: 11, scope: !206)
!208 = !DILocation(line: 90, column: 20, scope: !206)
!209 = !DILocation(line: 90, column: 6, scope: !148)
!210 = !DILocation(line: 91, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 90, column: 49)
!212 = !DILocation(line: 92, column: 2, scope: !211)
!213 = !DILocation(line: 99, column: 6, scope: !214)
!214 = distinct !DILexicalBlock(scope: !148, file: !3, line: 99, column: 6)
!215 = !DILocation(line: 99, column: 25, scope: !214)
!216 = !DILocation(line: 99, column: 23, scope: !214)
!217 = !DILocation(line: 99, column: 6, scope: !148)
!218 = !DILocation(line: 100, column: 11, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !3, line: 99, column: 40)
!220 = !DILocation(line: 100, column: 3, scope: !219)
!221 = !DILocation(line: 102, column: 10, scope: !148)
!222 = !DILocation(line: 102, column: 2, scope: !148)
!223 = !DILocation(line: 103, column: 1, scope: !148)
!224 = !DISubprogram(name: "acpi_warning", scope: !144, file: !144, line: 912, type: !145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!225 = distinct !DISubprogram(name: "acpi_hw_read", scope: !3, file: !3, line: 195, type: !226, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{!5, !12, !70}
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!229 = !DILocalVariable(name: "value", arg: 1, scope: !225, file: !3, line: 195, type: !12)
!230 = !DILocalVariable(name: "reg", arg: 2, scope: !225, file: !3, line: 195, type: !70)
!231 = !DILocalVariable(name: "address", scope: !225, file: !3, line: 197, type: !13)
!232 = !DILocalVariable(name: "access_width", scope: !225, file: !3, line: 198, type: !18)
!233 = !DILocalVariable(name: "bit_width", scope: !225, file: !3, line: 199, type: !7)
!234 = !DILocalVariable(name: "bit_offset", scope: !225, file: !3, line: 200, type: !18)
!235 = !DILocalVariable(name: "value64", scope: !225, file: !3, line: 201, type: !13)
!236 = !DILocalVariable(name: "value32", scope: !225, file: !3, line: 202, type: !7)
!237 = !DILocalVariable(name: "index", scope: !225, file: !3, line: 203, type: !18)
!238 = !DILocalVariable(name: "status", scope: !225, file: !3, line: 204, type: !5)
!239 = !DILocation(line: 195, column: 31, scope: !225)
!240 = !DILocation(line: 195, column: 67, scope: !225)
!241 = !DILocation(line: 197, column: 2, scope: !225)
!242 = !DILocation(line: 197, column: 6, scope: !225)
!243 = !DILocation(line: 198, column: 2, scope: !225)
!244 = !DILocation(line: 198, column: 5, scope: !225)
!245 = !DILocation(line: 199, column: 2, scope: !225)
!246 = !DILocation(line: 199, column: 6, scope: !225)
!247 = !DILocation(line: 200, column: 2, scope: !225)
!248 = !DILocation(line: 200, column: 5, scope: !225)
!249 = !DILocation(line: 201, column: 2, scope: !225)
!250 = !DILocation(line: 201, column: 6, scope: !225)
!251 = !DILocation(line: 202, column: 2, scope: !225)
!252 = !DILocation(line: 202, column: 6, scope: !225)
!253 = !DILocation(line: 203, column: 2, scope: !225)
!254 = !DILocation(line: 203, column: 5, scope: !225)
!255 = !DILocation(line: 204, column: 2, scope: !225)
!256 = !DILocation(line: 204, column: 14, scope: !225)
!257 = !DILocation(line: 210, column: 37, scope: !225)
!258 = !DILocation(line: 210, column: 11, scope: !225)
!259 = !DILocation(line: 210, column: 9, scope: !225)
!260 = !DILocation(line: 211, column: 6, scope: !261)
!261 = distinct !DILexicalBlock(scope: !225, file: !3, line: 211, column: 6)
!262 = !DILocation(line: 211, column: 6, scope: !225)
!263 = !DILocation(line: 212, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !3, line: 211, column: 28)
!265 = !DILocation(line: 212, column: 3, scope: !264)
!266 = !DILocation(line: 219, column: 3, scope: !225)
!267 = !DILocation(line: 219, column: 9, scope: !225)
!268 = !DILocation(line: 220, column: 46, scope: !225)
!269 = !DILocation(line: 220, column: 55, scope: !225)
!270 = !DILocation(line: 220, column: 17, scope: !225)
!271 = !DILocation(line: 220, column: 15, scope: !225)
!272 = !DILocation(line: 221, column: 14, scope: !225)
!273 = !DILocation(line: 221, column: 19, scope: !225)
!274 = !DILocation(line: 221, column: 32, scope: !225)
!275 = !DILocation(line: 221, column: 37, scope: !225)
!276 = !DILocation(line: 221, column: 30, scope: !225)
!277 = !DILocation(line: 221, column: 12, scope: !225)
!278 = !DILocation(line: 222, column: 15, scope: !225)
!279 = !DILocation(line: 222, column: 20, scope: !225)
!280 = !DILocation(line: 222, column: 13, scope: !225)
!281 = !DILocation(line: 228, column: 8, scope: !225)
!282 = !DILocation(line: 229, column: 2, scope: !225)
!283 = !DILocation(line: 229, column: 9, scope: !225)
!284 = !DILocation(line: 230, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 230, column: 7)
!286 = distinct !DILexicalBlock(scope: !225, file: !3, line: 229, column: 20)
!287 = !DILocation(line: 230, column: 21, scope: !285)
!288 = !DILocation(line: 230, column: 18, scope: !285)
!289 = !DILocation(line: 230, column: 7, scope: !286)
!290 = !DILocation(line: 231, column: 12, scope: !291)
!291 = distinct !DILexicalBlock(scope: !285, file: !3, line: 230, column: 35)
!292 = !DILocation(line: 232, column: 18, scope: !291)
!293 = !DILocation(line: 232, column: 15, scope: !291)
!294 = !DILocation(line: 233, column: 3, scope: !291)
!295 = !DILocation(line: 234, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 234, column: 8)
!297 = distinct !DILexicalBlock(scope: !285, file: !3, line: 233, column: 10)
!298 = !DILocation(line: 234, column: 13, scope: !296)
!299 = !DILocation(line: 234, column: 22, scope: !296)
!300 = !DILocation(line: 234, column: 8, scope: !297)
!301 = !DILocation(line: 237, column: 8, scope: !302)
!302 = distinct !DILexicalBlock(scope: !296, file: !3, line: 234, column: 55)
!303 = !DILocation(line: 238, column: 8, scope: !302)
!304 = !DILocation(line: 239, column: 8, scope: !302)
!305 = !DILocation(line: 238, column: 14, scope: !302)
!306 = !DILocation(line: 237, column: 16, scope: !302)
!307 = !DILocation(line: 241, column: 18, scope: !302)
!308 = !DILocation(line: 236, column: 9, scope: !302)
!309 = !DILocation(line: 235, column: 12, scope: !302)
!310 = !DILocation(line: 242, column: 4, scope: !302)
!311 = !DILocation(line: 245, column: 11, scope: !312)
!312 = distinct !DILexicalBlock(scope: !296, file: !3, line: 242, column: 11)
!313 = !DILocation(line: 246, column: 11, scope: !312)
!314 = !DILocation(line: 247, column: 11, scope: !312)
!315 = !DILocation(line: 246, column: 17, scope: !312)
!316 = !DILocation(line: 245, column: 19, scope: !312)
!317 = !DILocation(line: 250, column: 11, scope: !312)
!318 = !DILocation(line: 244, column: 14, scope: !312)
!319 = !DILocation(line: 244, column: 12, scope: !312)
!320 = !DILocation(line: 251, column: 20, scope: !312)
!321 = !DILocation(line: 251, column: 15, scope: !312)
!322 = !DILocation(line: 251, column: 13, scope: !312)
!323 = !DILocation(line: 259, column: 3, scope: !286)
!324 = !DILocation(line: 263, column: 7, scope: !286)
!325 = !DILocation(line: 263, column: 19, scope: !286)
!326 = !DILocation(line: 263, column: 17, scope: !286)
!327 = !DILocation(line: 263, column: 34, scope: !286)
!328 = !DILocation(line: 263, column: 49, scope: !286)
!329 = !DILocation(line: 262, column: 13, scope: !286)
!330 = !DILocation(line: 264, column: 8, scope: !286)
!331 = distinct !{!331, !282, !332, !203, !204}
!332 = !DILocation(line: 265, column: 2, scope: !225)
!333 = !DILocation(line: 273, column: 10, scope: !225)
!334 = !DILocation(line: 273, column: 2, scope: !225)
!335 = !DILocation(line: 274, column: 1, scope: !225)
!336 = !DISubprogram(name: "acpi_os_read_memory", scope: !337, file: !337, line: 281, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!338 = !DISubroutineType(types: !339)
!339 = !{!5, !22, !12, !7}
!340 = !DISubprogram(name: "acpi_hw_read_port", scope: !341, file: !341, line: 72, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!342 = !DISubroutineType(types: !343)
!343 = !{!5, !23, !344, !7}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!345 = distinct !DISubprogram(name: "acpi_hw_write", scope: !3, file: !3, line: 290, type: !346, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{!5, !13, !70}
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357}
!349 = !DILocalVariable(name: "value", arg: 1, scope: !345, file: !3, line: 290, type: !13)
!350 = !DILocalVariable(name: "reg", arg: 2, scope: !345, file: !3, line: 290, type: !70)
!351 = !DILocalVariable(name: "address", scope: !345, file: !3, line: 292, type: !13)
!352 = !DILocalVariable(name: "access_width", scope: !345, file: !3, line: 293, type: !18)
!353 = !DILocalVariable(name: "bit_width", scope: !345, file: !3, line: 294, type: !7)
!354 = !DILocalVariable(name: "bit_offset", scope: !345, file: !3, line: 295, type: !18)
!355 = !DILocalVariable(name: "value64", scope: !345, file: !3, line: 296, type: !13)
!356 = !DILocalVariable(name: "index", scope: !345, file: !3, line: 297, type: !18)
!357 = !DILocalVariable(name: "status", scope: !345, file: !3, line: 298, type: !5)
!358 = !DILocation(line: 290, column: 31, scope: !345)
!359 = !DILocation(line: 290, column: 67, scope: !345)
!360 = !DILocation(line: 292, column: 2, scope: !345)
!361 = !DILocation(line: 292, column: 6, scope: !345)
!362 = !DILocation(line: 293, column: 2, scope: !345)
!363 = !DILocation(line: 293, column: 5, scope: !345)
!364 = !DILocation(line: 294, column: 2, scope: !345)
!365 = !DILocation(line: 294, column: 6, scope: !345)
!366 = !DILocation(line: 295, column: 2, scope: !345)
!367 = !DILocation(line: 295, column: 5, scope: !345)
!368 = !DILocation(line: 296, column: 2, scope: !345)
!369 = !DILocation(line: 296, column: 6, scope: !345)
!370 = !DILocation(line: 297, column: 2, scope: !345)
!371 = !DILocation(line: 297, column: 5, scope: !345)
!372 = !DILocation(line: 298, column: 2, scope: !345)
!373 = !DILocation(line: 298, column: 14, scope: !345)
!374 = !DILocation(line: 304, column: 37, scope: !345)
!375 = !DILocation(line: 304, column: 11, scope: !345)
!376 = !DILocation(line: 304, column: 9, scope: !345)
!377 = !DILocation(line: 305, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !345, file: !3, line: 305, column: 6)
!379 = !DILocation(line: 305, column: 6, scope: !345)
!380 = !DILocation(line: 306, column: 11, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !3, line: 305, column: 28)
!382 = !DILocation(line: 306, column: 3, scope: !381)
!383 = !DILocation(line: 311, column: 46, scope: !345)
!384 = !DILocation(line: 311, column: 55, scope: !345)
!385 = !DILocation(line: 311, column: 17, scope: !345)
!386 = !DILocation(line: 311, column: 15, scope: !345)
!387 = !DILocation(line: 312, column: 14, scope: !345)
!388 = !DILocation(line: 312, column: 19, scope: !345)
!389 = !DILocation(line: 312, column: 32, scope: !345)
!390 = !DILocation(line: 312, column: 37, scope: !345)
!391 = !DILocation(line: 312, column: 30, scope: !345)
!392 = !DILocation(line: 312, column: 12, scope: !345)
!393 = !DILocation(line: 313, column: 15, scope: !345)
!394 = !DILocation(line: 313, column: 20, scope: !345)
!395 = !DILocation(line: 313, column: 13, scope: !345)
!396 = !DILocation(line: 319, column: 8, scope: !345)
!397 = !DILocation(line: 320, column: 2, scope: !345)
!398 = !DILocation(line: 320, column: 9, scope: !345)
!399 = !DILocation(line: 325, column: 13, scope: !400)
!400 = distinct !DILexicalBlock(scope: !345, file: !3, line: 320, column: 20)
!401 = !DILocation(line: 325, column: 11, scope: !400)
!402 = !DILocation(line: 328, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 328, column: 7)
!404 = !DILocation(line: 328, column: 21, scope: !403)
!405 = !DILocation(line: 328, column: 18, scope: !403)
!406 = !DILocation(line: 328, column: 7, scope: !400)
!407 = !DILocation(line: 329, column: 18, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !3, line: 328, column: 35)
!409 = !DILocation(line: 329, column: 15, scope: !408)
!410 = !DILocation(line: 330, column: 3, scope: !408)
!411 = !DILocation(line: 331, column: 8, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 331, column: 8)
!413 = distinct !DILexicalBlock(scope: !403, file: !3, line: 330, column: 10)
!414 = !DILocation(line: 331, column: 13, scope: !412)
!415 = !DILocation(line: 331, column: 22, scope: !412)
!416 = !DILocation(line: 331, column: 8, scope: !413)
!417 = !DILocation(line: 334, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !412, file: !3, line: 331, column: 55)
!419 = !DILocation(line: 335, column: 9, scope: !418)
!420 = !DILocation(line: 336, column: 9, scope: !418)
!421 = !DILocation(line: 335, column: 15, scope: !418)
!422 = !DILocation(line: 334, column: 17, scope: !418)
!423 = !DILocation(line: 338, column: 9, scope: !418)
!424 = !DILocation(line: 338, column: 18, scope: !418)
!425 = !DILocation(line: 333, column: 9, scope: !418)
!426 = !DILocation(line: 332, column: 12, scope: !418)
!427 = !DILocation(line: 339, column: 4, scope: !418)
!428 = !DILocation(line: 342, column: 12, scope: !429)
!429 = distinct !DILexicalBlock(scope: !412, file: !3, line: 339, column: 11)
!430 = !DILocation(line: 343, column: 12, scope: !429)
!431 = !DILocation(line: 344, column: 12, scope: !429)
!432 = !DILocation(line: 343, column: 18, scope: !429)
!433 = !DILocation(line: 342, column: 20, scope: !429)
!434 = !DILocation(line: 346, column: 17, scope: !429)
!435 = !DILocation(line: 346, column: 12, scope: !429)
!436 = !DILocation(line: 347, column: 12, scope: !429)
!437 = !DILocation(line: 341, column: 14, scope: !429)
!438 = !DILocation(line: 341, column: 12, scope: !429)
!439 = !DILocation(line: 356, column: 7, scope: !400)
!440 = !DILocation(line: 356, column: 19, scope: !400)
!441 = !DILocation(line: 356, column: 17, scope: !400)
!442 = !DILocation(line: 356, column: 34, scope: !400)
!443 = !DILocation(line: 356, column: 49, scope: !400)
!444 = !DILocation(line: 355, column: 13, scope: !400)
!445 = !DILocation(line: 357, column: 8, scope: !400)
!446 = distinct !{!446, !397, !447, !203, !204}
!447 = !DILocation(line: 358, column: 2, scope: !345)
!448 = !DILocation(line: 366, column: 10, scope: !345)
!449 = !DILocation(line: 366, column: 2, scope: !345)
!450 = !DILocation(line: 367, column: 1, scope: !345)
!451 = !DISubprogram(name: "acpi_os_write_memory", scope: !337, file: !337, line: 286, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubroutineType(types: !453)
!453 = !{!5, !22, !13, !7}
!454 = !DISubprogram(name: "acpi_hw_write_port", scope: !341, file: !341, line: 74, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!5, !23, !7, !7}
!457 = distinct !DISubprogram(name: "acpi_hw_clear_acpi_status", scope: !3, file: !3, line: 382, type: !458, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{!5}
!460 = !{!461, !462, !464}
!461 = !DILocalVariable(name: "status", scope: !457, file: !3, line: 384, type: !5)
!462 = !DILocalVariable(name: "lock_flags", scope: !457, file: !3, line: 385, type: !463)
!463 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!464 = !DILabel(scope: !457, name: "exit", file: !3, line: 410)
!465 = !DILocation(line: 384, column: 2, scope: !457)
!466 = !DILocation(line: 384, column: 14, scope: !457)
!467 = !DILocation(line: 385, column: 2, scope: !457)
!468 = !DILocation(line: 385, column: 17, scope: !457)
!469 = !DILocation(line: 393, column: 40, scope: !457)
!470 = !DILocation(line: 393, column: 15, scope: !457)
!471 = !DILocation(line: 393, column: 13, scope: !457)
!472 = !DILocation(line: 397, column: 11, scope: !457)
!473 = !DILocation(line: 397, column: 9, scope: !457)
!474 = !DILocation(line: 400, column: 27, scope: !457)
!475 = !DILocation(line: 400, column: 51, scope: !457)
!476 = !DILocation(line: 400, column: 2, scope: !457)
!477 = !DILocation(line: 402, column: 6, scope: !478)
!478 = distinct !DILexicalBlock(scope: !457, file: !3, line: 402, column: 6)
!479 = !DILocation(line: 402, column: 6, scope: !457)
!480 = !DILocation(line: 403, column: 3, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !3, line: 402, column: 28)
!482 = !DILocation(line: 408, column: 11, scope: !457)
!483 = !DILocation(line: 408, column: 9, scope: !457)
!484 = !DILocation(line: 408, column: 2, scope: !457)
!485 = !DILocation(line: 410, column: 1, scope: !457)
!486 = !DILocation(line: 411, column: 2, scope: !457)
!487 = !DILocation(line: 412, column: 1, scope: !457)
!488 = distinct !DISubprogram(name: "acpi_os_acquire_raw_lock", scope: !489, file: !489, line: 104, type: !490, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !522)
!489 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!490 = !DISubroutineType(types: !491)
!491 = !{!463, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !494, line: 23, baseType: !495)
!494 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !494, line: 14, size: 32, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !495, file: !494, line: 15, baseType: !498, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !499, line: 44, baseType: !500)
!499 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !499, line: 14, size: 32, elements: !501)
!501 = !{!502}
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !499, line: 15, baseType: !503, size: 32)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !499, line: 15, size: 32, elements: !504)
!504 = !{!505, !512, !517}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !503, file: !499, line: 16, baseType: !506, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !507, line: 174, baseType: !508)
!507 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 172, size: 32, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !508, file: !507, line: 173, baseType: !511, size: 32)
!511 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !499, line: 24, baseType: !513, size: 16)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !503, file: !499, line: 24, size: 16, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !513, file: !499, line: 25, baseType: !18, size: 8)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !513, file: !499, line: 26, baseType: !18, size: 8, offset: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !499, line: 28, baseType: !518, size: 32)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !503, file: !499, line: 28, size: 32, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !518, file: !499, line: 29, baseType: !24, size: 16)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !518, file: !499, line: 30, baseType: !24, size: 16, offset: 16)
!522 = !{!523, !524, !525, !528}
!523 = !DILocalVariable(name: "lockp", arg: 1, scope: !488, file: !489, line: 104, type: !492)
!524 = !DILocalVariable(name: "flags", scope: !488, file: !489, line: 106, type: !463)
!525 = !DILocalVariable(name: "__dummy", scope: !526, file: !489, line: 108, type: !463)
!526 = distinct !DILexicalBlock(scope: !527, file: !489, line: 108, column: 2)
!527 = distinct !DILexicalBlock(scope: !488, file: !489, line: 108, column: 2)
!528 = !DILocalVariable(name: "__dummy2", scope: !526, file: !489, line: 108, type: !463)
!529 = !DILocation(line: 104, column: 73, scope: !488)
!530 = !DILocation(line: 106, column: 2, scope: !488)
!531 = !DILocation(line: 106, column: 17, scope: !488)
!532 = !DILocation(line: 108, column: 2, scope: !488)
!533 = !DILocation(line: 108, column: 2, scope: !526)
!534 = !DILocation(line: 108, column: 2, scope: !527)
!535 = !DILocation(line: 109, column: 9, scope: !488)
!536 = !DILocation(line: 110, column: 1, scope: !488)
!537 = !DILocation(line: 109, column: 2, scope: !488)
!538 = distinct !DISubprogram(name: "acpi_hw_register_write", scope: !3, file: !3, line: 591, type: !539, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{!5, !7, !7}
!541 = !{!542, !543, !544, !545, !546, !547}
!542 = !DILocalVariable(name: "register_id", arg: 1, scope: !538, file: !3, line: 591, type: !7)
!543 = !DILocalVariable(name: "value", arg: 2, scope: !538, file: !3, line: 591, type: !7)
!544 = !DILocalVariable(name: "status", scope: !538, file: !3, line: 593, type: !5)
!545 = !DILocalVariable(name: "read_value", scope: !538, file: !3, line: 594, type: !7)
!546 = !DILocalVariable(name: "read_value64", scope: !538, file: !3, line: 595, type: !13)
!547 = !DILabel(scope: !538, name: "exit", file: !3, line: 695)
!548 = !DILocation(line: 591, column: 40, scope: !538)
!549 = !DILocation(line: 591, column: 57, scope: !538)
!550 = !DILocation(line: 593, column: 2, scope: !538)
!551 = !DILocation(line: 593, column: 14, scope: !538)
!552 = !DILocation(line: 594, column: 2, scope: !538)
!553 = !DILocation(line: 594, column: 6, scope: !538)
!554 = !DILocation(line: 595, column: 2, scope: !538)
!555 = !DILocation(line: 595, column: 6, scope: !538)
!556 = !DILocation(line: 599, column: 10, scope: !538)
!557 = !DILocation(line: 599, column: 2, scope: !538)
!558 = !DILocation(line: 611, column: 9, scope: !559)
!559 = distinct !DILexicalBlock(scope: !538, file: !3, line: 599, column: 23)
!560 = !DILocation(line: 613, column: 35, scope: !559)
!561 = !DILocation(line: 613, column: 12, scope: !559)
!562 = !DILocation(line: 613, column: 10, scope: !559)
!563 = !DILocation(line: 616, column: 3, scope: !559)
!564 = !DILocation(line: 620, column: 35, scope: !559)
!565 = !DILocation(line: 620, column: 12, scope: !559)
!566 = !DILocation(line: 620, column: 10, scope: !559)
!567 = !DILocation(line: 623, column: 3, scope: !559)
!568 = !DILocation(line: 630, column: 12, scope: !559)
!569 = !DILocation(line: 630, column: 10, scope: !559)
!570 = !DILocation(line: 635, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !559, file: !3, line: 635, column: 7)
!572 = !DILocation(line: 635, column: 7, scope: !559)
!573 = !DILocation(line: 636, column: 4, scope: !574)
!574 = distinct !DILexicalBlock(scope: !571, file: !3, line: 635, column: 29)
!575 = !DILocation(line: 641, column: 3, scope: !559)
!576 = !DILocation(line: 646, column: 35, scope: !559)
!577 = !DILocation(line: 646, column: 12, scope: !559)
!578 = !DILocation(line: 646, column: 10, scope: !559)
!579 = !DILocation(line: 651, column: 3, scope: !559)
!580 = !DILocation(line: 659, column: 7, scope: !559)
!581 = !DILocation(line: 658, column: 10, scope: !559)
!582 = !DILocation(line: 661, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !559, file: !3, line: 661, column: 7)
!584 = !DILocation(line: 661, column: 7, scope: !559)
!585 = !DILocation(line: 662, column: 4, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !3, line: 661, column: 29)
!587 = !DILocation(line: 664, column: 21, scope: !559)
!588 = !DILocation(line: 664, column: 16, scope: !559)
!589 = !DILocation(line: 664, column: 14, scope: !559)
!590 = !DILocation(line: 668, column: 3, scope: !559)
!591 = !DILocation(line: 672, column: 21, scope: !559)
!592 = !DILocation(line: 672, column: 7, scope: !559)
!593 = !DILocation(line: 671, column: 10, scope: !559)
!594 = !DILocation(line: 673, column: 3, scope: !559)
!595 = !DILocation(line: 677, column: 26, scope: !559)
!596 = !DILocation(line: 677, column: 12, scope: !559)
!597 = !DILocation(line: 677, column: 10, scope: !559)
!598 = !DILocation(line: 678, column: 3, scope: !559)
!599 = !DILocation(line: 685, column: 40, scope: !559)
!600 = !DILocation(line: 685, column: 26, scope: !559)
!601 = !DILocation(line: 685, column: 53, scope: !559)
!602 = !DILocation(line: 685, column: 7, scope: !559)
!603 = !DILocation(line: 684, column: 10, scope: !559)
!604 = !DILocation(line: 686, column: 3, scope: !559)
!605 = !DILocation(line: 690, column: 3, scope: !559)
!606 = !DILocation(line: 691, column: 10, scope: !559)
!607 = !DILocation(line: 692, column: 3, scope: !559)
!608 = !DILocation(line: 693, column: 2, scope: !559)
!609 = !DILocation(line: 695, column: 1, scope: !538)
!610 = !DILocation(line: 696, column: 2, scope: !538)
!611 = !DILocation(line: 697, column: 1, scope: !538)
!612 = distinct !DISubprogram(name: "acpi_os_release_raw_lock", scope: !489, file: !489, line: 112, type: !613, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !492, !463}
!615 = !{!616, !617, !618, !621}
!616 = !DILocalVariable(name: "lockp", arg: 1, scope: !612, file: !489, line: 112, type: !492)
!617 = !DILocalVariable(name: "flags", arg: 2, scope: !612, file: !489, line: 113, type: !463)
!618 = !DILocalVariable(name: "__dummy", scope: !619, file: !489, line: 115, type: !463)
!619 = distinct !DILexicalBlock(scope: !620, file: !489, line: 115, column: 2)
!620 = distinct !DILexicalBlock(scope: !612, file: !489, line: 115, column: 2)
!621 = !DILocalVariable(name: "__dummy2", scope: !619, file: !489, line: 115, type: !463)
!622 = !DILocation(line: 112, column: 63, scope: !612)
!623 = !DILocation(line: 113, column: 25, scope: !612)
!624 = !DILocation(line: 115, column: 2, scope: !612)
!625 = !DILocation(line: 115, column: 2, scope: !619)
!626 = !DILocation(line: 115, column: 2, scope: !620)
!627 = !DILocation(line: 116, column: 1, scope: !612)
!628 = !DISubprogram(name: "acpi_ev_walk_gpe_list", scope: !629, file: !629, line: 133, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!629 = !DIFile(filename: "drivers/acpi/acpica/acevents.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eaa23e2a1585a1725a731d4983b0a307")
!630 = !DISubroutineType(types: !631)
!631 = !{!5, !632, !16}
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_callback", file: !633, line: 519, baseType: !634)
!633 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!5, !637, !643, !16}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !633, line: 497, size: 256, elements: !639)
!639 = !{!640, !641, !642, !1388}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !638, file: !633, line: 498, baseType: !637, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !633, line: 499, baseType: !637, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !638, file: !633, line: 500, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !633, line: 480, size: 576, elements: !645)
!645 = !{!646, !1332, !1333, !1334, !1335, !1350, !1382, !1383, !1384, !1385, !1386, !1387}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !644, file: !633, line: 481, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !633, line: 133, size: 384, elements: !649)
!649 = !{!650, !1320, !1321, !1322, !1323, !1328, !1329, !1330, !1331}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !648, file: !633, line: 134, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !653, line: 369, size: 576, elements: !654)
!653 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!654 = !{!655, !663, !676, !687, !701, !715, !724, !1039, !1056, !1071, !1084, !1095, !1107, !1120, !1130, !1148, !1170, !1189, !1208, !1227, !1240, !1266, !1283, !1296, !1310, !1319}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !652, file: !653, line: 370, baseType: !656, size: 128)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !653, line: 73, size: 128, elements: !657)
!657 = !{!658, !659, !660, !661, !662}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !653, line: 74, baseType: !651, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !653, line: 74, baseType: !18, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !653, line: 74, baseType: !18, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !653, line: 74, baseType: !24, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !653, line: 74, baseType: !18, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !652, file: !653, line: 371, baseType: !664, size: 192)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !653, line: 76, size: 192, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !675}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !664, file: !653, line: 77, baseType: !651, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !664, file: !653, line: 77, baseType: !18, size: 8, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !653, line: 77, baseType: !18, size: 8, offset: 72)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !664, file: !653, line: 77, baseType: !24, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !653, line: 77, baseType: !18, size: 8, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !664, file: !653, line: 77, baseType: !672, size: 24, offset: 104)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 24, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 3)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !664, file: !653, line: 78, baseType: !13, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !652, file: !653, line: 372, baseType: !677, size: 256)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !653, line: 93, size: 256, elements: !678)
!678 = !{!679, !680, !681, !682, !683, !684, !686}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !677, file: !653, line: 94, baseType: !651, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !677, file: !653, line: 94, baseType: !18, size: 8, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !677, file: !653, line: 94, baseType: !18, size: 8, offset: 72)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !677, file: !653, line: 94, baseType: !24, size: 16, offset: 80)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !677, file: !653, line: 94, baseType: !18, size: 8, offset: 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !677, file: !653, line: 94, baseType: !685, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !677, file: !653, line: 94, baseType: !7, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !652, file: !653, line: 373, baseType: !688, size: 384)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !653, line: 97, size: 384, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !697, !698, !699, !700}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !688, file: !653, line: 98, baseType: !651, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !688, file: !653, line: 98, baseType: !18, size: 8, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !653, line: 98, baseType: !18, size: 8, offset: 72)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !688, file: !653, line: 98, baseType: !24, size: 16, offset: 80)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !653, line: 98, baseType: !18, size: 8, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !688, file: !653, line: 98, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !688, file: !653, line: 98, baseType: !7, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !688, file: !653, line: 99, baseType: !7, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !688, file: !653, line: 100, baseType: !696, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !688, file: !653, line: 101, baseType: !647, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !652, file: !653, line: 374, baseType: !702, size: 384)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !653, line: 104, size: 384, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !712, !713, !714}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !702, file: !653, line: 105, baseType: !651, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !653, line: 105, baseType: !18, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !653, line: 105, baseType: !18, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !702, file: !653, line: 105, baseType: !24, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !653, line: 105, baseType: !18, size: 8, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !702, file: !653, line: 105, baseType: !647, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !702, file: !653, line: 106, baseType: !711, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !702, file: !653, line: 107, baseType: !696, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !702, file: !653, line: 108, baseType: !7, size: 32, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !702, file: !653, line: 109, baseType: !7, size: 32, offset: 352)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !652, file: !653, line: 375, baseType: !716, size: 192)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !653, line: 118, size: 192, elements: !717)
!717 = !{!718, !719, !720, !721, !722, !723}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !716, file: !653, line: 119, baseType: !651, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !716, file: !653, line: 119, baseType: !18, size: 8, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !653, line: 119, baseType: !18, size: 8, offset: 72)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !653, line: 119, baseType: !24, size: 16, offset: 80)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !653, line: 119, baseType: !18, size: 8, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !716, file: !653, line: 119, baseType: !16, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !652, file: !653, line: 376, baseType: !725, size: 448)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !653, line: 144, size: 448, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !1036, !1037, !1038}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !725, file: !653, line: 145, baseType: !651, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !725, file: !653, line: 145, baseType: !18, size: 8, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !725, file: !653, line: 145, baseType: !18, size: 8, offset: 72)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !725, file: !653, line: 145, baseType: !24, size: 16, offset: 80)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !653, line: 145, baseType: !18, size: 8, offset: 96)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !725, file: !653, line: 145, baseType: !18, size: 8, offset: 104)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !725, file: !653, line: 146, baseType: !18, size: 8, offset: 112)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !725, file: !653, line: 147, baseType: !18, size: 8, offset: 120)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !725, file: !653, line: 148, baseType: !651, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !653, line: 149, baseType: !651, size: 64, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !725, file: !653, line: 150, baseType: !696, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !725, file: !653, line: 154, baseType: !739, size: 64, offset: 320)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !653, line: 151, size: 64, elements: !740)
!740 = !{!741, !1035}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !739, file: !653, line: 152, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !633, line: 248, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!5, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !748, line: 37, size: 9024, elements: !749)
!748 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !983, !984, !985, !986, !987, !989, !991, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1027, !1033}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !747, file: !748, line: 38, baseType: !746, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !747, file: !748, line: 39, baseType: !18, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !747, file: !748, line: 40, baseType: !18, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !747, file: !748, line: 41, baseType: !24, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !747, file: !748, line: 42, baseType: !18, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !747, file: !748, line: 43, baseType: !18, size: 8, offset: 104)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !747, file: !748, line: 44, baseType: !18, size: 8, offset: 112)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !747, file: !748, line: 45, baseType: !758, size: 16, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !6, line: 445, baseType: !24)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !747, file: !748, line: 46, baseType: !18, size: 8, offset: 144)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !747, file: !748, line: 47, baseType: !18, size: 8, offset: 152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !747, file: !748, line: 48, baseType: !18, size: 8, offset: 160)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !747, file: !748, line: 49, baseType: !18, size: 8, offset: 168)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !747, file: !748, line: 50, baseType: !18, size: 8, offset: 176)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !747, file: !748, line: 51, baseType: !18, size: 8, offset: 184)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !747, file: !748, line: 52, baseType: !18, size: 8, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !747, file: !748, line: 53, baseType: !18, size: 8, offset: 200)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !747, file: !748, line: 54, baseType: !696, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !747, file: !748, line: 55, baseType: !7, size: 32, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !747, file: !748, line: 56, baseType: !7, size: 32, offset: 352)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !747, file: !748, line: 57, baseType: !7, size: 32, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !747, file: !748, line: 58, baseType: !7, size: 32, offset: 416)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !747, file: !748, line: 60, baseType: !773, size: 640, offset: 448)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !633, line: 909, size: 640, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !864, !865, !981, !982}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !773, file: !633, line: 910, baseType: !696, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !773, file: !633, line: 911, baseType: !696, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !773, file: !633, line: 912, baseType: !696, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !773, file: !633, line: 913, baseType: !696, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !773, file: !633, line: 914, baseType: !696, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !773, file: !633, line: 915, baseType: !781, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !633, line: 891, size: 1600, elements: !783)
!783 = !{!784, !804, !820}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !782, file: !633, line: 892, baseType: !785, size: 448)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !633, line: 844, size: 448, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !803}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !785, file: !633, line: 845, baseType: !781, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !785, file: !633, line: 845, baseType: !18, size: 8, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !633, line: 845, baseType: !18, size: 8, offset: 72)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !785, file: !633, line: 845, baseType: !24, size: 16, offset: 80)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !785, file: !633, line: 845, baseType: !696, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !785, file: !633, line: 845, baseType: !781, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !785, file: !633, line: 845, baseType: !647, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !785, file: !633, line: 845, baseType: !795, size: 64, offset: 320)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !633, line: 732, size: 64, elements: !796)
!796 = !{!797, !798, !799, !800, !801, !802}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !795, file: !633, line: 733, baseType: !13, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !795, file: !633, line: 734, baseType: !7, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !795, file: !633, line: 735, baseType: !685, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !795, file: !633, line: 736, baseType: !696, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !795, file: !633, line: 737, baseType: !685, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !795, file: !633, line: 738, baseType: !781, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !785, file: !633, line: 845, baseType: !18, size: 8, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !782, file: !633, line: 893, baseType: !805, size: 640)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !633, line: 851, size: 640, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !805, file: !633, line: 852, baseType: !781, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !805, file: !633, line: 852, baseType: !18, size: 8, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !633, line: 852, baseType: !18, size: 8, offset: 72)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !805, file: !633, line: 852, baseType: !24, size: 16, offset: 80)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !805, file: !633, line: 852, baseType: !696, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !805, file: !633, line: 852, baseType: !781, size: 64, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !805, file: !633, line: 852, baseType: !647, size: 64, offset: 256)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !805, file: !633, line: 852, baseType: !795, size: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !805, file: !633, line: 852, baseType: !18, size: 8, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !805, file: !633, line: 852, baseType: !685, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !805, file: !633, line: 853, baseType: !696, size: 64, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !805, file: !633, line: 854, baseType: !7, size: 32, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !805, file: !633, line: 855, baseType: !7, size: 32, offset: 608)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !782, file: !633, line: 894, baseType: !821, size: 1600)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !633, line: 862, size: 1600, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !821, file: !633, line: 863, baseType: !781, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !821, file: !633, line: 863, baseType: !18, size: 8, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !633, line: 863, baseType: !18, size: 8, offset: 72)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !821, file: !633, line: 863, baseType: !24, size: 16, offset: 80)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !821, file: !633, line: 863, baseType: !696, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !821, file: !633, line: 863, baseType: !781, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !821, file: !633, line: 863, baseType: !647, size: 64, offset: 256)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !821, file: !633, line: 863, baseType: !795, size: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !821, file: !633, line: 863, baseType: !18, size: 8, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !821, file: !633, line: 863, baseType: !781, size: 64, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !821, file: !633, line: 864, baseType: !781, size: 64, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !821, file: !633, line: 865, baseType: !685, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !821, file: !633, line: 866, baseType: !18, size: 8, offset: 640)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !821, file: !633, line: 867, baseType: !685, size: 64, offset: 704)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !821, file: !633, line: 868, baseType: !685, size: 64, offset: 768)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !821, file: !633, line: 869, baseType: !685, size: 64, offset: 832)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !821, file: !633, line: 870, baseType: !840, size: 32, offset: 896)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 4)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !821, file: !633, line: 871, baseType: !7, size: 32, offset: 928)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !821, file: !633, line: 872, baseType: !7, size: 32, offset: 960)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !821, file: !633, line: 873, baseType: !7, size: 32, offset: 992)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !821, file: !633, line: 874, baseType: !7, size: 32, offset: 1024)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !821, file: !633, line: 875, baseType: !7, size: 32, offset: 1056)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !821, file: !633, line: 876, baseType: !7, size: 32, offset: 1088)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !821, file: !633, line: 877, baseType: !7, size: 32, offset: 1120)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !821, file: !633, line: 878, baseType: !7, size: 32, offset: 1152)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !821, file: !633, line: 879, baseType: !7, size: 32, offset: 1184)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !821, file: !633, line: 880, baseType: !7, size: 32, offset: 1216)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !821, file: !633, line: 881, baseType: !7, size: 32, offset: 1248)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !821, file: !633, line: 882, baseType: !7, size: 32, offset: 1280)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !821, file: !633, line: 883, baseType: !7, size: 32, offset: 1312)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !821, file: !633, line: 884, baseType: !24, size: 16, offset: 1344)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !821, file: !633, line: 885, baseType: !18, size: 8, offset: 1360)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !821, file: !633, line: 886, baseType: !18, size: 8, offset: 1368)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !821, file: !633, line: 887, baseType: !18, size: 8, offset: 1376)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !821, file: !633, line: 888, baseType: !861, size: 160, offset: 1384)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, elements: !862)
!862 = !{!863}
!863 = !DISubrange(count: 20)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !773, file: !633, line: 916, baseType: !647, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !773, file: !633, line: 917, baseType: !866, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !633, line: 679, size: 640, elements: !868)
!868 = !{!869, !877, !890, !899, !908, !921, !935, !947, !959}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !867, file: !633, line: 680, baseType: !870, size: 128)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !633, line: 575, size: 128, elements: !871)
!871 = !{!872, !873, !874, !875, !876}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !870, file: !633, line: 576, baseType: !16, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !870, file: !633, line: 576, baseType: !18, size: 8, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !870, file: !633, line: 576, baseType: !18, size: 8, offset: 72)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !870, file: !633, line: 576, baseType: !24, size: 16, offset: 80)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !870, file: !633, line: 576, baseType: !24, size: 16, offset: 96)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !867, file: !633, line: 681, baseType: !878, size: 384)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !633, line: 604, size: 384, elements: !879)
!879 = !{!880, !881, !882, !883, !884, !885, !886, !887, !888, !889}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !633, line: 605, baseType: !16, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !878, file: !633, line: 605, baseType: !18, size: 8, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !878, file: !633, line: 605, baseType: !18, size: 8, offset: 72)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !878, file: !633, line: 605, baseType: !24, size: 16, offset: 80)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !878, file: !633, line: 605, baseType: !24, size: 16, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !878, file: !633, line: 606, baseType: !24, size: 16, offset: 112)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !878, file: !633, line: 607, baseType: !781, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !878, file: !633, line: 608, baseType: !696, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !878, file: !633, line: 609, baseType: !696, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !878, file: !633, line: 610, baseType: !13, size: 64, offset: 320)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !867, file: !633, line: 682, baseType: !891, size: 192)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !633, line: 582, size: 192, elements: !892)
!892 = !{!893, !894, !895, !896, !897, !898}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !891, file: !633, line: 583, baseType: !16, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !891, file: !633, line: 583, baseType: !18, size: 8, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !891, file: !633, line: 583, baseType: !18, size: 8, offset: 72)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !891, file: !633, line: 583, baseType: !24, size: 16, offset: 80)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !891, file: !633, line: 583, baseType: !24, size: 16, offset: 96)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !891, file: !633, line: 584, baseType: !651, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !867, file: !633, line: 683, baseType: !900, size: 192)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !633, line: 616, size: 192, elements: !901)
!901 = !{!902, !903, !904, !905, !906, !907}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !900, file: !633, line: 617, baseType: !16, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !900, file: !633, line: 617, baseType: !18, size: 8, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !900, file: !633, line: 617, baseType: !18, size: 8, offset: 72)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !900, file: !633, line: 617, baseType: !24, size: 16, offset: 80)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !900, file: !633, line: 617, baseType: !24, size: 16, offset: 96)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !900, file: !633, line: 618, baseType: !647, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !867, file: !633, line: 684, baseType: !909, size: 448)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !633, line: 621, size: 448, elements: !910)
!910 = !{!911, !912, !913, !914, !915, !916, !917, !918, !919, !920}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !909, file: !633, line: 622, baseType: !16, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !909, file: !633, line: 622, baseType: !18, size: 8, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !909, file: !633, line: 622, baseType: !18, size: 8, offset: 72)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !909, file: !633, line: 622, baseType: !24, size: 16, offset: 80)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !909, file: !633, line: 622, baseType: !24, size: 16, offset: 96)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !909, file: !633, line: 623, baseType: !7, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !909, file: !633, line: 624, baseType: !781, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !909, file: !633, line: 625, baseType: !696, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !909, file: !633, line: 626, baseType: !696, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !909, file: !633, line: 627, baseType: !7, size: 32, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !867, file: !633, line: 685, baseType: !922, size: 512)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !633, line: 590, size: 512, elements: !923)
!923 = !{!924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !922, file: !633, line: 591, baseType: !16, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !922, file: !633, line: 591, baseType: !18, size: 8, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !922, file: !633, line: 591, baseType: !18, size: 8, offset: 72)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !922, file: !633, line: 591, baseType: !24, size: 16, offset: 80)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !922, file: !633, line: 591, baseType: !24, size: 16, offset: 96)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !922, file: !633, line: 592, baseType: !7, size: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !922, file: !633, line: 593, baseType: !651, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !922, file: !633, line: 594, baseType: !651, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !922, file: !633, line: 595, baseType: !746, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !922, file: !633, line: 596, baseType: !16, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !922, file: !633, line: 597, baseType: !7, size: 32, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !867, file: !633, line: 686, baseType: !936, size: 320)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !633, line: 634, size: 320, elements: !937)
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !633, line: 635, baseType: !16, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !936, file: !633, line: 635, baseType: !18, size: 8, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !936, file: !633, line: 635, baseType: !18, size: 8, offset: 72)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !936, file: !633, line: 635, baseType: !24, size: 16, offset: 80)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !936, file: !633, line: 635, baseType: !24, size: 16, offset: 96)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !936, file: !633, line: 636, baseType: !18, size: 8, offset: 112)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !936, file: !633, line: 637, baseType: !746, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !936, file: !633, line: 638, baseType: !651, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !936, file: !633, line: 639, baseType: !13, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !867, file: !633, line: 687, baseType: !948, size: 640)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !633, line: 646, size: 640, elements: !949)
!949 = !{!950, !951, !952, !953, !954, !955}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !948, file: !633, line: 647, baseType: !16, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !948, file: !633, line: 647, baseType: !18, size: 8, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !948, file: !633, line: 647, baseType: !18, size: 8, offset: 72)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !948, file: !633, line: 647, baseType: !24, size: 16, offset: 80)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !948, file: !633, line: 647, baseType: !24, size: 16, offset: 96)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !948, file: !633, line: 648, baseType: !956, size: 512, offset: 128)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 512, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 8)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !867, file: !633, line: 688, baseType: !960, size: 320)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !633, line: 669, size: 320, elements: !961)
!961 = !{!962, !963, !964, !965, !966, !967, !968, !969, !970}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !960, file: !633, line: 670, baseType: !16, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !960, file: !633, line: 670, baseType: !18, size: 8, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !960, file: !633, line: 670, baseType: !18, size: 8, offset: 72)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !960, file: !633, line: 670, baseType: !24, size: 16, offset: 80)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !960, file: !633, line: 670, baseType: !24, size: 16, offset: 96)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !960, file: !633, line: 671, baseType: !18, size: 8, offset: 112)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !960, file: !633, line: 672, baseType: !647, size: 64, offset: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !960, file: !633, line: 673, baseType: !651, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !960, file: !633, line: 674, baseType: !971, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !633, line: 660, size: 128, elements: !973)
!973 = !{!974, !980}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !972, file: !633, line: 661, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !6, line: 1061, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !979, !7, !16}
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !16)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !972, file: !633, line: 662, baseType: !16, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !773, file: !633, line: 918, baseType: !781, size: 64, offset: 512)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !773, file: !633, line: 919, baseType: !7, size: 32, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !747, file: !748, line: 61, baseType: !7, size: 32, offset: 1088)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !747, file: !748, line: 62, baseType: !7, size: 32, offset: 1120)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !747, file: !748, line: 63, baseType: !24, size: 16, offset: 1152)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !747, file: !748, line: 64, baseType: !18, size: 8, offset: 1168)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !747, file: !748, line: 66, baseType: !988, size: 2688, offset: 1216)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 2688, elements: !56)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !747, file: !748, line: 67, baseType: !990, size: 3072, offset: 3904)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 3072, elements: !957)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !747, file: !748, line: 68, baseType: !992, size: 576, offset: 6976)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 576, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 9)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !747, file: !748, line: 69, baseType: !711, size: 64, offset: 7552)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !747, file: !748, line: 71, baseType: !696, size: 64, offset: 7616)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !747, file: !748, line: 72, baseType: !711, size: 64, offset: 7680)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !747, file: !748, line: 73, baseType: !866, size: 64, offset: 7744)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !747, file: !748, line: 74, baseType: !647, size: 64, offset: 7808)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !747, file: !748, line: 75, baseType: !651, size: 64, offset: 7872)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !747, file: !748, line: 76, baseType: !647, size: 64, offset: 7936)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !747, file: !748, line: 77, baseType: !781, size: 64, offset: 8000)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !747, file: !748, line: 78, baseType: !651, size: 64, offset: 8064)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !747, file: !748, line: 79, baseType: !647, size: 64, offset: 8128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !747, file: !748, line: 80, baseType: !685, size: 64, offset: 8192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !747, file: !748, line: 81, baseType: !781, size: 64, offset: 8256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !747, file: !748, line: 82, baseType: !1008, size: 64, offset: 8320)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !633, line: 718, size: 128, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1010, file: !633, line: 722, baseType: !7, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1010, file: !633, line: 723, baseType: !7, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1010, file: !633, line: 724, baseType: !24, size: 16, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1010, file: !633, line: 725, baseType: !18, size: 8, offset: 80)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1010, file: !633, line: 726, baseType: !18, size: 8, offset: 88)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1010, file: !633, line: 727, baseType: !18, size: 8, offset: 96)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !747, file: !748, line: 83, baseType: !781, size: 64, offset: 8384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !747, file: !748, line: 84, baseType: !651, size: 64, offset: 8448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !747, file: !748, line: 85, baseType: !866, size: 64, offset: 8512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !747, file: !748, line: 86, baseType: !651, size: 64, offset: 8576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !747, file: !748, line: 87, baseType: !866, size: 64, offset: 8640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !747, file: !748, line: 88, baseType: !781, size: 64, offset: 8704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !747, file: !748, line: 89, baseType: !781, size: 64, offset: 8768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !747, file: !748, line: 90, baseType: !1026, size: 64, offset: 8832)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !747, file: !748, line: 91, baseType: !1028, size: 64, offset: 8896)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !633, line: 652, baseType: !1029)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!5, !746, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !747, file: !748, line: 92, baseType: !1034, size: 64, offset: 8960)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !633, line: 656, baseType: !743)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !739, file: !653, line: 153, baseType: !651, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !725, file: !653, line: 156, baseType: !7, size: 32, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !725, file: !653, line: 157, baseType: !758, size: 16, offset: 416)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !725, file: !653, line: 158, baseType: !18, size: 8, offset: 432)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !652, file: !653, line: 377, baseType: !1040, size: 576)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !653, line: 122, size: 576, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1040, file: !653, line: 123, baseType: !651, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1040, file: !653, line: 123, baseType: !18, size: 8, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1040, file: !653, line: 123, baseType: !18, size: 8, offset: 72)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1040, file: !653, line: 123, baseType: !24, size: 16, offset: 80)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1040, file: !653, line: 123, baseType: !18, size: 8, offset: 96)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !1040, file: !653, line: 123, baseType: !18, size: 8, offset: 104)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !1040, file: !653, line: 124, baseType: !24, size: 16, offset: 112)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !1040, file: !653, line: 125, baseType: !16, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1040, file: !653, line: 126, baseType: !13, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !1040, file: !653, line: 127, baseType: !1026, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1040, file: !653, line: 128, baseType: !651, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1040, file: !653, line: 129, baseType: !651, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1040, file: !653, line: 130, baseType: !647, size: 64, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !1040, file: !653, line: 131, baseType: !18, size: 8, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !652, file: !653, line: 378, baseType: !1057, size: 512)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !653, line: 134, size: 512, elements: !1058)
!1058 = !{!1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1057, file: !653, line: 135, baseType: !651, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1057, file: !653, line: 135, baseType: !18, size: 8, offset: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1057, file: !653, line: 135, baseType: !18, size: 8, offset: 72)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1057, file: !653, line: 135, baseType: !24, size: 16, offset: 80)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1057, file: !653, line: 135, baseType: !18, size: 8, offset: 96)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1057, file: !653, line: 135, baseType: !18, size: 8, offset: 104)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1057, file: !653, line: 136, baseType: !647, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1057, file: !653, line: 137, baseType: !651, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1057, file: !653, line: 138, baseType: !651, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1057, file: !653, line: 139, baseType: !22, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1057, file: !653, line: 140, baseType: !7, size: 32, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1057, file: !653, line: 141, baseType: !16, size: 64, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !652, file: !653, line: 379, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !653, line: 185, size: 320, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1083}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1072, file: !653, line: 186, baseType: !651, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1072, file: !653, line: 186, baseType: !18, size: 8, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1072, file: !653, line: 186, baseType: !18, size: 8, offset: 72)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1072, file: !653, line: 186, baseType: !24, size: 16, offset: 80)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1072, file: !653, line: 186, baseType: !18, size: 8, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1072, file: !653, line: 186, baseType: !1080, size: 128, offset: 128)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 128, elements: !1081)
!1081 = !{!1082}
!1082 = !DISubrange(count: 2)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1072, file: !653, line: 186, baseType: !651, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !652, file: !653, line: 380, baseType: !1085, size: 384)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !653, line: 188, size: 384, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1085, file: !653, line: 189, baseType: !651, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1085, file: !653, line: 189, baseType: !18, size: 8, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1085, file: !653, line: 189, baseType: !18, size: 8, offset: 72)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1085, file: !653, line: 189, baseType: !24, size: 16, offset: 80)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1085, file: !653, line: 189, baseType: !18, size: 8, offset: 96)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1085, file: !653, line: 190, baseType: !1080, size: 128, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1085, file: !653, line: 190, baseType: !651, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !1085, file: !653, line: 190, baseType: !643, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !652, file: !653, line: 381, baseType: !1096, size: 384)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !653, line: 193, size: 384, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1096, file: !653, line: 194, baseType: !651, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1096, file: !653, line: 194, baseType: !18, size: 8, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1096, file: !653, line: 194, baseType: !18, size: 8, offset: 72)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1096, file: !653, line: 194, baseType: !24, size: 16, offset: 80)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1096, file: !653, line: 194, baseType: !18, size: 8, offset: 96)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1096, file: !653, line: 194, baseType: !1080, size: 128, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1096, file: !653, line: 194, baseType: !651, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1096, file: !653, line: 194, baseType: !7, size: 32, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1096, file: !653, line: 195, baseType: !7, size: 32, offset: 352)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !652, file: !653, line: 382, baseType: !1108, size: 384)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !653, line: 198, size: 384, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1108, file: !653, line: 199, baseType: !651, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1108, file: !653, line: 199, baseType: !18, size: 8, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1108, file: !653, line: 199, baseType: !18, size: 8, offset: 72)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1108, file: !653, line: 199, baseType: !24, size: 16, offset: 80)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !653, line: 199, baseType: !18, size: 8, offset: 96)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1108, file: !653, line: 201, baseType: !18, size: 8, offset: 104)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1108, file: !653, line: 202, baseType: !18, size: 8, offset: 112)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1108, file: !653, line: 203, baseType: !1080, size: 128, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1108, file: !653, line: 203, baseType: !651, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1108, file: !653, line: 203, baseType: !23, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !652, file: !653, line: 383, baseType: !1121, size: 320)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !653, line: 206, size: 320, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1121, file: !653, line: 207, baseType: !651, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1121, file: !653, line: 207, baseType: !18, size: 8, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1121, file: !653, line: 207, baseType: !18, size: 8, offset: 72)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1121, file: !653, line: 207, baseType: !24, size: 16, offset: 80)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1121, file: !653, line: 207, baseType: !18, size: 8, offset: 96)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1121, file: !653, line: 207, baseType: !1080, size: 128, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1121, file: !653, line: 207, baseType: !651, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !652, file: !653, line: 384, baseType: !1131, size: 384)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !653, line: 234, size: 384, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1131, file: !653, line: 235, baseType: !651, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1131, file: !653, line: 235, baseType: !18, size: 8, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1131, file: !653, line: 235, baseType: !18, size: 8, offset: 72)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1131, file: !653, line: 235, baseType: !24, size: 16, offset: 80)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1131, file: !653, line: 235, baseType: !18, size: 8, offset: 96)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1131, file: !653, line: 235, baseType: !18, size: 8, offset: 104)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1131, file: !653, line: 235, baseType: !18, size: 8, offset: 112)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1131, file: !653, line: 235, baseType: !18, size: 8, offset: 120)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1131, file: !653, line: 235, baseType: !647, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1131, file: !653, line: 235, baseType: !7, size: 32, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1131, file: !653, line: 235, baseType: !7, size: 32, offset: 224)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1131, file: !653, line: 235, baseType: !7, size: 32, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1131, file: !653, line: 235, baseType: !18, size: 8, offset: 288)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1131, file: !653, line: 235, baseType: !18, size: 8, offset: 296)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1131, file: !653, line: 235, baseType: !651, size: 64, offset: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !652, file: !653, line: 385, baseType: !1149, size: 576)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !653, line: 238, size: 576, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1149, file: !653, line: 239, baseType: !651, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1149, file: !653, line: 239, baseType: !18, size: 8, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1149, file: !653, line: 239, baseType: !18, size: 8, offset: 72)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1149, file: !653, line: 239, baseType: !24, size: 16, offset: 80)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1149, file: !653, line: 239, baseType: !18, size: 8, offset: 96)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1149, file: !653, line: 239, baseType: !18, size: 8, offset: 104)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1149, file: !653, line: 239, baseType: !18, size: 8, offset: 112)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1149, file: !653, line: 239, baseType: !18, size: 8, offset: 120)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1149, file: !653, line: 239, baseType: !647, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1149, file: !653, line: 239, baseType: !7, size: 32, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1149, file: !653, line: 239, baseType: !7, size: 32, offset: 224)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1149, file: !653, line: 239, baseType: !7, size: 32, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1149, file: !653, line: 239, baseType: !18, size: 8, offset: 288)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1149, file: !653, line: 239, baseType: !18, size: 8, offset: 296)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1149, file: !653, line: 239, baseType: !24, size: 16, offset: 304)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1149, file: !653, line: 240, baseType: !651, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !1149, file: !653, line: 241, baseType: !696, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !1149, file: !653, line: 242, baseType: !24, size: 16, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !1149, file: !653, line: 243, baseType: !696, size: 64, offset: 512)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !652, file: !653, line: 386, baseType: !1171, size: 384)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !653, line: 263, size: 384, elements: !1172)
!1172 = !{!1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1171, file: !653, line: 264, baseType: !651, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1171, file: !653, line: 264, baseType: !18, size: 8, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1171, file: !653, line: 264, baseType: !18, size: 8, offset: 72)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1171, file: !653, line: 264, baseType: !24, size: 16, offset: 80)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1171, file: !653, line: 264, baseType: !18, size: 8, offset: 96)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1171, file: !653, line: 264, baseType: !18, size: 8, offset: 104)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1171, file: !653, line: 264, baseType: !18, size: 8, offset: 112)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1171, file: !653, line: 264, baseType: !18, size: 8, offset: 120)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1171, file: !653, line: 264, baseType: !647, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1171, file: !653, line: 264, baseType: !7, size: 32, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1171, file: !653, line: 264, baseType: !7, size: 32, offset: 224)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1171, file: !653, line: 264, baseType: !7, size: 32, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1171, file: !653, line: 264, baseType: !18, size: 8, offset: 288)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1171, file: !653, line: 264, baseType: !18, size: 8, offset: 296)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1171, file: !653, line: 264, baseType: !18, size: 8, offset: 304)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1171, file: !653, line: 265, baseType: !651, size: 64, offset: 320)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !652, file: !653, line: 387, baseType: !1190, size: 448)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !653, line: 246, size: 448, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1190, file: !653, line: 247, baseType: !651, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1190, file: !653, line: 247, baseType: !18, size: 8, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1190, file: !653, line: 247, baseType: !18, size: 8, offset: 72)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1190, file: !653, line: 247, baseType: !24, size: 16, offset: 80)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !653, line: 247, baseType: !18, size: 8, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1190, file: !653, line: 247, baseType: !18, size: 8, offset: 104)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1190, file: !653, line: 247, baseType: !18, size: 8, offset: 112)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1190, file: !653, line: 247, baseType: !18, size: 8, offset: 120)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1190, file: !653, line: 247, baseType: !647, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1190, file: !653, line: 247, baseType: !7, size: 32, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1190, file: !653, line: 247, baseType: !7, size: 32, offset: 224)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1190, file: !653, line: 247, baseType: !7, size: 32, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1190, file: !653, line: 247, baseType: !18, size: 8, offset: 288)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1190, file: !653, line: 247, baseType: !18, size: 8, offset: 296)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1190, file: !653, line: 247, baseType: !651, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1190, file: !653, line: 248, baseType: !651, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !652, file: !653, line: 388, baseType: !1209, size: 448)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !653, line: 251, size: 448, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1209, file: !653, line: 252, baseType: !651, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1209, file: !653, line: 252, baseType: !18, size: 8, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1209, file: !653, line: 252, baseType: !18, size: 8, offset: 72)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1209, file: !653, line: 252, baseType: !24, size: 16, offset: 80)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1209, file: !653, line: 252, baseType: !18, size: 8, offset: 96)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1209, file: !653, line: 252, baseType: !18, size: 8, offset: 104)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1209, file: !653, line: 252, baseType: !18, size: 8, offset: 112)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1209, file: !653, line: 252, baseType: !18, size: 8, offset: 120)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1209, file: !653, line: 252, baseType: !647, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1209, file: !653, line: 252, baseType: !7, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1209, file: !653, line: 252, baseType: !7, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1209, file: !653, line: 252, baseType: !7, size: 32, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1209, file: !653, line: 252, baseType: !18, size: 8, offset: 288)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1209, file: !653, line: 252, baseType: !18, size: 8, offset: 296)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1209, file: !653, line: 257, baseType: !651, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1209, file: !653, line: 258, baseType: !651, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !652, file: !653, line: 389, baseType: !1228, size: 512)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !653, line: 274, size: 512, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1228, file: !653, line: 275, baseType: !651, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1228, file: !653, line: 275, baseType: !18, size: 8, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1228, file: !653, line: 275, baseType: !18, size: 8, offset: 72)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1228, file: !653, line: 275, baseType: !24, size: 16, offset: 80)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !653, line: 275, baseType: !18, size: 8, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1228, file: !653, line: 275, baseType: !647, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1228, file: !653, line: 276, baseType: !7, size: 32, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1228, file: !653, line: 277, baseType: !975, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1228, file: !653, line: 278, baseType: !16, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1228, file: !653, line: 279, baseType: !1080, size: 128, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !652, file: !653, line: 390, baseType: !1241, size: 576)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !653, line: 282, size: 576, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1255, !1256, !1257, !1258, !1264, !1265}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1241, file: !653, line: 283, baseType: !651, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1241, file: !653, line: 283, baseType: !18, size: 8, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1241, file: !653, line: 283, baseType: !18, size: 8, offset: 72)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1241, file: !653, line: 283, baseType: !24, size: 16, offset: 80)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !653, line: 283, baseType: !18, size: 8, offset: 96)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1241, file: !653, line: 283, baseType: !18, size: 8, offset: 104)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1241, file: !653, line: 284, baseType: !18, size: 8, offset: 112)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1241, file: !653, line: 285, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !6, line: 1093, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!5, !7, !22, !7, !12, !16, !16}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1241, file: !653, line: 286, baseType: !647, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1241, file: !653, line: 287, baseType: !16, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !1241, file: !653, line: 288, baseType: !16, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1241, file: !653, line: 289, baseType: !1259, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !6, line: 1126, baseType: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!5, !979, !7, !16, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1241, file: !653, line: 290, baseType: !651, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1241, file: !653, line: 291, baseType: !651, size: 64, offset: 512)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !652, file: !653, line: 391, baseType: !1267, size: 512)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !653, line: 309, size: 512, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1267, file: !653, line: 310, baseType: !651, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1267, file: !653, line: 310, baseType: !18, size: 8, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1267, file: !653, line: 310, baseType: !18, size: 8, offset: 72)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1267, file: !653, line: 310, baseType: !24, size: 16, offset: 80)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1267, file: !653, line: 310, baseType: !18, size: 8, offset: 96)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1267, file: !653, line: 310, baseType: !18, size: 8, offset: 104)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1267, file: !653, line: 311, baseType: !18, size: 8, offset: 112)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1267, file: !653, line: 312, baseType: !18, size: 8, offset: 120)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1267, file: !653, line: 313, baseType: !16, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1267, file: !653, line: 314, baseType: !647, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1267, file: !653, line: 315, baseType: !711, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1267, file: !653, line: 316, baseType: !696, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1267, file: !653, line: 317, baseType: !696, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1267, file: !653, line: 318, baseType: !7, size: 32, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !652, file: !653, line: 392, baseType: !1284, size: 448)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !653, line: 342, size: 448, elements: !1285)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1284, file: !653, line: 343, baseType: !651, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1284, file: !653, line: 343, baseType: !18, size: 8, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1284, file: !653, line: 343, baseType: !18, size: 8, offset: 72)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1284, file: !653, line: 343, baseType: !24, size: 16, offset: 80)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1284, file: !653, line: 343, baseType: !18, size: 8, offset: 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1284, file: !653, line: 343, baseType: !647, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1284, file: !653, line: 344, baseType: !647, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1284, file: !653, line: 345, baseType: !16, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1284, file: !653, line: 346, baseType: !696, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1284, file: !653, line: 347, baseType: !7, size: 32, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !652, file: !653, line: 393, baseType: !1297, size: 256)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !653, line: 352, size: 256, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1309}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1297, file: !653, line: 353, baseType: !651, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1297, file: !653, line: 353, baseType: !18, size: 8, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1297, file: !653, line: 353, baseType: !18, size: 8, offset: 72)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1297, file: !653, line: 353, baseType: !24, size: 16, offset: 80)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1297, file: !653, line: 353, baseType: !18, size: 8, offset: 96)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1297, file: !653, line: 353, baseType: !1305, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !6, line: 1064, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !979, !16}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1297, file: !653, line: 354, baseType: !16, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !652, file: !653, line: 394, baseType: !1311, size: 192)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !653, line: 359, size: 192, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1311, file: !653, line: 360, baseType: !651, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1311, file: !653, line: 360, baseType: !18, size: 8, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1311, file: !653, line: 360, baseType: !18, size: 8, offset: 72)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1311, file: !653, line: 360, baseType: !24, size: 16, offset: 80)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1311, file: !653, line: 360, baseType: !18, size: 8, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1311, file: !653, line: 360, baseType: !651, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !653, line: 401, baseType: !648, size: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !648, file: !633, line: 135, baseType: !18, size: 8, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !648, file: !633, line: 136, baseType: !18, size: 8, offset: 72)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !633, line: 137, baseType: !24, size: 16, offset: 80)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !648, file: !633, line: 138, baseType: !1324, size: 32, offset: 96)
!1324 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !72, line: 328, size: 32, elements: !1325)
!1325 = !{!1326, !1327}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1324, file: !72, line: 329, baseType: !7, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1324, file: !72, line: 330, baseType: !840, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !648, file: !633, line: 139, baseType: !647, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !648, file: !633, line: 140, baseType: !647, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !648, file: !633, line: 141, baseType: !647, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !648, file: !633, line: 142, baseType: !758, size: 16, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !644, file: !633, line: 482, baseType: !643, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !633, line: 483, baseType: !643, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !644, file: !633, line: 484, baseType: !637, size: 64, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !644, file: !633, line: 485, baseType: !1336, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !633, line: 466, size: 320, elements: !1338)
!1338 = !{!1339, !1344, !1345, !1346, !1347, !1348, !1349}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !1337, file: !633, line: 467, baseType: !1340, size: 128)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !633, line: 459, size: 128, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1340, file: !633, line: 460, baseType: !18, size: 8)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1340, file: !633, line: 461, baseType: !13, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !1337, file: !633, line: 468, baseType: !1340, size: 128, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !1337, file: !633, line: 469, baseType: !24, size: 16, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !1337, file: !633, line: 470, baseType: !18, size: 8, offset: 272)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !1337, file: !633, line: 471, baseType: !18, size: 8, offset: 280)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !1337, file: !633, line: 472, baseType: !18, size: 8, offset: 288)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !1337, file: !633, line: 473, baseType: !18, size: 8, offset: 296)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !644, file: !633, line: 486, baseType: !1351, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !633, line: 448, size: 192, elements: !1353)
!1353 = !{!1354, !1377, !1378, !1379, !1380, !1381}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1352, file: !633, line: 449, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !633, line: 438, size: 64, elements: !1356)
!1356 = !{!1357, !1358, !1371}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1355, file: !633, line: 439, baseType: !647, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1355, file: !633, line: 440, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !633, line: 419, size: 256, elements: !1361)
!1361 = !{!1362, !1367, !1368, !1369, !1370}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1360, file: !633, line: 420, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !6, line: 1058, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!7, !979, !7, !16}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1360, file: !633, line: 421, baseType: !16, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1360, file: !633, line: 422, baseType: !647, size: 64, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !1360, file: !633, line: 423, baseType: !18, size: 8, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !1360, file: !633, line: 424, baseType: !18, size: 8, offset: 200)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1355, file: !633, line: 441, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !633, line: 429, size: 128, elements: !1374)
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !1373, file: !633, line: 430, baseType: !647, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1373, file: !633, line: 431, baseType: !1372, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1352, file: !633, line: 450, baseType: !1336, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1352, file: !633, line: 451, baseType: !18, size: 8, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1352, file: !633, line: 452, baseType: !18, size: 8, offset: 136)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !1352, file: !633, line: 453, baseType: !18, size: 8, offset: 144)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !1352, file: !633, line: 454, baseType: !18, size: 8, offset: 152)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !644, file: !633, line: 487, baseType: !13, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !644, file: !633, line: 488, baseType: !7, size: 32, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !644, file: !633, line: 489, baseType: !24, size: 16, offset: 480)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !644, file: !633, line: 490, baseType: !24, size: 16, offset: 496)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !644, file: !633, line: 491, baseType: !18, size: 8, offset: 512)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !644, file: !633, line: 492, baseType: !18, size: 8, offset: 520)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !638, file: !633, line: 501, baseType: !7, size: 32, offset: 192)
!1389 = distinct !DISubprogram(name: "acpi_hw_get_bit_register_info", scope: !3, file: !3, line: 426, type: !1390, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1398)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!1392, !7}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_bit_register_info", file: !633, line: 950, size: 32, elements: !1394)
!1394 = !{!1395, !1396, !1397}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "parent_register", scope: !1393, file: !633, line: 951, baseType: !18, size: 8)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "bit_position", scope: !1393, file: !633, line: 952, baseType: !18, size: 8, offset: 8)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "access_bit_mask", scope: !1393, file: !633, line: 953, baseType: !24, size: 16, offset: 16)
!1398 = !{!1399}
!1399 = !DILocalVariable(name: "register_id", arg: 1, scope: !1389, file: !3, line: 426, type: !7)
!1400 = !DILocation(line: 426, column: 66, scope: !1389)
!1401 = !DILocation(line: 430, column: 6, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 430, column: 6)
!1403 = !DILocation(line: 430, column: 18, scope: !1402)
!1404 = !DILocation(line: 430, column: 6, scope: !1389)
!1405 = !DILocation(line: 431, column: 3, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 430, column: 37)
!1407 = !DILocation(line: 433, column: 3, scope: !1406)
!1408 = !DILocation(line: 436, column: 38, scope: !1389)
!1409 = !DILocation(line: 436, column: 11, scope: !1389)
!1410 = !DILocation(line: 436, column: 2, scope: !1389)
!1411 = !DILocation(line: 437, column: 1, scope: !1389)
!1412 = distinct !DISubprogram(name: "acpi_hw_write_pm1_control", scope: !3, file: !3, line: 456, type: !539, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1413)
!1413 = !{!1414, !1415, !1416}
!1414 = !DILocalVariable(name: "pm1a_control", arg: 1, scope: !1412, file: !3, line: 456, type: !7)
!1415 = !DILocalVariable(name: "pm1b_control", arg: 2, scope: !1412, file: !3, line: 456, type: !7)
!1416 = !DILocalVariable(name: "status", scope: !1412, file: !3, line: 458, type: !5)
!1417 = !DILocation(line: 456, column: 43, scope: !1412)
!1418 = !DILocation(line: 456, column: 61, scope: !1412)
!1419 = !DILocation(line: 458, column: 2, scope: !1412)
!1420 = !DILocation(line: 458, column: 14, scope: !1412)
!1421 = !DILocation(line: 463, column: 20, scope: !1412)
!1422 = !DILocation(line: 463, column: 6, scope: !1412)
!1423 = !DILocation(line: 462, column: 9, scope: !1412)
!1424 = !DILocation(line: 464, column: 6, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 464, column: 6)
!1426 = !DILocation(line: 464, column: 6, scope: !1412)
!1427 = !DILocation(line: 465, column: 3, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 464, column: 28)
!1429 = !DILocation(line: 468, column: 40, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 468, column: 6)
!1431 = !DILocation(line: 468, column: 6, scope: !1430)
!1432 = !DILocation(line: 468, column: 6, scope: !1412)
!1433 = !DILocation(line: 470, column: 21, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 468, column: 49)
!1435 = !DILocation(line: 470, column: 7, scope: !1434)
!1436 = !DILocation(line: 469, column: 10, scope: !1434)
!1437 = !DILocation(line: 472, column: 2, scope: !1434)
!1438 = !DILocation(line: 473, column: 2, scope: !1412)
!1439 = !DILocation(line: 474, column: 1, scope: !1412)
!1440 = distinct !DISubprogram(name: "acpi_hw_register_read", scope: !3, file: !3, line: 488, type: !1441, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!5, !7, !344}
!1443 = !{!1444, !1445, !1446, !1447, !1448}
!1444 = !DILocalVariable(name: "register_id", arg: 1, scope: !1440, file: !3, line: 488, type: !7)
!1445 = !DILocalVariable(name: "return_value", arg: 2, scope: !1440, file: !3, line: 488, type: !344)
!1446 = !DILocalVariable(name: "value", scope: !1440, file: !3, line: 490, type: !7)
!1447 = !DILocalVariable(name: "value64", scope: !1440, file: !3, line: 491, type: !13)
!1448 = !DILocalVariable(name: "status", scope: !1440, file: !3, line: 492, type: !5)
!1449 = !DILocation(line: 488, column: 39, scope: !1440)
!1450 = !DILocation(line: 488, column: 57, scope: !1440)
!1451 = !DILocation(line: 490, column: 2, scope: !1440)
!1452 = !DILocation(line: 490, column: 6, scope: !1440)
!1453 = !DILocation(line: 491, column: 2, scope: !1440)
!1454 = !DILocation(line: 491, column: 6, scope: !1440)
!1455 = !DILocation(line: 492, column: 2, scope: !1440)
!1456 = !DILocation(line: 492, column: 14, scope: !1440)
!1457 = !DILocation(line: 496, column: 10, scope: !1440)
!1458 = !DILocation(line: 496, column: 2, scope: !1440)
!1459 = !DILocation(line: 499, column: 12, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 496, column: 23)
!1461 = !DILocation(line: 499, column: 10, scope: !1460)
!1462 = !DILocation(line: 502, column: 3, scope: !1460)
!1463 = !DILocation(line: 506, column: 12, scope: !1460)
!1464 = !DILocation(line: 506, column: 10, scope: !1460)
!1465 = !DILocation(line: 509, column: 3, scope: !1460)
!1466 = !DILocation(line: 513, column: 12, scope: !1460)
!1467 = !DILocation(line: 513, column: 10, scope: !1460)
!1468 = !DILocation(line: 524, column: 9, scope: !1460)
!1469 = !DILocation(line: 525, column: 3, scope: !1460)
!1470 = !DILocation(line: 530, column: 7, scope: !1460)
!1471 = !DILocation(line: 529, column: 10, scope: !1460)
!1472 = !DILocation(line: 531, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 531, column: 7)
!1474 = !DILocation(line: 531, column: 7, scope: !1460)
!1475 = !DILocation(line: 532, column: 17, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 531, column: 29)
!1477 = !DILocation(line: 532, column: 12, scope: !1476)
!1478 = !DILocation(line: 532, column: 10, scope: !1476)
!1479 = !DILocation(line: 533, column: 3, scope: !1476)
!1480 = !DILocation(line: 534, column: 3, scope: !1460)
!1481 = !DILocation(line: 538, column: 12, scope: !1460)
!1482 = !DILocation(line: 538, column: 10, scope: !1460)
!1483 = !DILocation(line: 539, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 539, column: 7)
!1485 = !DILocation(line: 539, column: 7, scope: !1460)
!1486 = !DILocation(line: 540, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 539, column: 29)
!1488 = !DILocation(line: 540, column: 12, scope: !1487)
!1489 = !DILocation(line: 540, column: 10, scope: !1487)
!1490 = !DILocation(line: 541, column: 3, scope: !1487)
!1491 = !DILocation(line: 543, column: 3, scope: !1460)
!1492 = !DILocation(line: 548, column: 39, scope: !1460)
!1493 = !DILocation(line: 548, column: 25, scope: !1460)
!1494 = !DILocation(line: 548, column: 7, scope: !1460)
!1495 = !DILocation(line: 547, column: 10, scope: !1460)
!1496 = !DILocation(line: 549, column: 3, scope: !1460)
!1497 = !DILocation(line: 553, column: 3, scope: !1460)
!1498 = !DILocation(line: 554, column: 10, scope: !1460)
!1499 = !DILocation(line: 555, column: 3, scope: !1460)
!1500 = !DILocation(line: 558, column: 6, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 558, column: 6)
!1502 = !DILocation(line: 558, column: 6, scope: !1440)
!1503 = !DILocation(line: 559, column: 24, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 558, column: 28)
!1505 = !DILocation(line: 559, column: 4, scope: !1504)
!1506 = !DILocation(line: 559, column: 17, scope: !1504)
!1507 = !DILocation(line: 560, column: 2, scope: !1504)
!1508 = !DILocation(line: 562, column: 2, scope: !1440)
!1509 = !DILocation(line: 563, column: 1, scope: !1440)
!1510 = distinct !DISubprogram(name: "acpi_hw_read_multiple", scope: !3, file: !3, line: 714, type: !1511, scopeLine: 717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!5, !344, !70, !70}
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520}
!1514 = !DILocalVariable(name: "value", arg: 1, scope: !1510, file: !3, line: 714, type: !344)
!1515 = !DILocalVariable(name: "register_a", arg: 2, scope: !1510, file: !3, line: 715, type: !70)
!1516 = !DILocalVariable(name: "register_b", arg: 3, scope: !1510, file: !3, line: 716, type: !70)
!1517 = !DILocalVariable(name: "value_a", scope: !1510, file: !3, line: 718, type: !7)
!1518 = !DILocalVariable(name: "value_b", scope: !1510, file: !3, line: 719, type: !7)
!1519 = !DILocalVariable(name: "value64", scope: !1510, file: !3, line: 720, type: !13)
!1520 = !DILocalVariable(name: "status", scope: !1510, file: !3, line: 721, type: !5)
!1521 = !DILocation(line: 714, column: 28, scope: !1510)
!1522 = !DILocation(line: 715, column: 38, scope: !1510)
!1523 = !DILocation(line: 716, column: 38, scope: !1510)
!1524 = !DILocation(line: 718, column: 2, scope: !1510)
!1525 = !DILocation(line: 718, column: 6, scope: !1510)
!1526 = !DILocation(line: 719, column: 2, scope: !1510)
!1527 = !DILocation(line: 719, column: 6, scope: !1510)
!1528 = !DILocation(line: 720, column: 2, scope: !1510)
!1529 = !DILocation(line: 720, column: 6, scope: !1510)
!1530 = !DILocation(line: 721, column: 2, scope: !1510)
!1531 = !DILocation(line: 721, column: 14, scope: !1510)
!1532 = !DILocation(line: 725, column: 34, scope: !1510)
!1533 = !DILocation(line: 725, column: 11, scope: !1510)
!1534 = !DILocation(line: 725, column: 9, scope: !1510)
!1535 = !DILocation(line: 726, column: 6, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 726, column: 6)
!1537 = !DILocation(line: 726, column: 6, scope: !1510)
!1538 = !DILocation(line: 727, column: 11, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 726, column: 28)
!1540 = !DILocation(line: 727, column: 3, scope: !1539)
!1541 = !DILocation(line: 729, column: 17, scope: !1510)
!1542 = !DILocation(line: 729, column: 12, scope: !1510)
!1543 = !DILocation(line: 729, column: 10, scope: !1510)
!1544 = !DILocation(line: 733, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 733, column: 6)
!1546 = !DILocation(line: 733, column: 18, scope: !1545)
!1547 = !DILocation(line: 733, column: 6, scope: !1510)
!1548 = !DILocation(line: 734, column: 35, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 733, column: 27)
!1550 = !DILocation(line: 734, column: 12, scope: !1549)
!1551 = !DILocation(line: 734, column: 10, scope: !1549)
!1552 = !DILocation(line: 735, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 735, column: 7)
!1554 = !DILocation(line: 735, column: 7, scope: !1549)
!1555 = !DILocation(line: 736, column: 12, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 735, column: 29)
!1557 = !DILocation(line: 736, column: 4, scope: !1556)
!1558 = !DILocation(line: 738, column: 18, scope: !1549)
!1559 = !DILocation(line: 738, column: 13, scope: !1549)
!1560 = !DILocation(line: 738, column: 11, scope: !1549)
!1561 = !DILocation(line: 739, column: 2, scope: !1549)
!1562 = !DILocation(line: 751, column: 12, scope: !1510)
!1563 = !DILocation(line: 751, column: 22, scope: !1510)
!1564 = !DILocation(line: 751, column: 20, scope: !1510)
!1565 = !DILocation(line: 751, column: 3, scope: !1510)
!1566 = !DILocation(line: 751, column: 9, scope: !1510)
!1567 = !DILocation(line: 752, column: 2, scope: !1510)
!1568 = !DILocation(line: 753, column: 1, scope: !1510)
!1569 = distinct !DISubprogram(name: "acpi_hw_write_multiple", scope: !3, file: !3, line: 770, type: !1570, scopeLine: 773, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!5, !7, !70, !70}
!1572 = !{!1573, !1574, !1575, !1576}
!1573 = !DILocalVariable(name: "value", arg: 1, scope: !1569, file: !3, line: 770, type: !7)
!1574 = !DILocalVariable(name: "register_a", arg: 2, scope: !1569, file: !3, line: 771, type: !70)
!1575 = !DILocalVariable(name: "register_b", arg: 3, scope: !1569, file: !3, line: 772, type: !70)
!1576 = !DILocalVariable(name: "status", scope: !1569, file: !3, line: 774, type: !5)
!1577 = !DILocation(line: 770, column: 28, scope: !1569)
!1578 = !DILocation(line: 771, column: 39, scope: !1569)
!1579 = !DILocation(line: 772, column: 39, scope: !1569)
!1580 = !DILocation(line: 774, column: 2, scope: !1569)
!1581 = !DILocation(line: 774, column: 14, scope: !1569)
!1582 = !DILocation(line: 778, column: 25, scope: !1569)
!1583 = !DILocation(line: 778, column: 32, scope: !1569)
!1584 = !DILocation(line: 778, column: 11, scope: !1569)
!1585 = !DILocation(line: 778, column: 9, scope: !1569)
!1586 = !DILocation(line: 779, column: 6, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 779, column: 6)
!1588 = !DILocation(line: 779, column: 6, scope: !1569)
!1589 = !DILocation(line: 780, column: 11, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 779, column: 28)
!1591 = !DILocation(line: 780, column: 3, scope: !1590)
!1592 = !DILocation(line: 795, column: 6, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 795, column: 6)
!1594 = !DILocation(line: 795, column: 18, scope: !1593)
!1595 = !DILocation(line: 795, column: 6, scope: !1569)
!1596 = !DILocation(line: 796, column: 26, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 795, column: 27)
!1598 = !DILocation(line: 796, column: 33, scope: !1597)
!1599 = !DILocation(line: 796, column: 12, scope: !1597)
!1600 = !DILocation(line: 796, column: 10, scope: !1597)
!1601 = !DILocation(line: 797, column: 2, scope: !1597)
!1602 = !DILocation(line: 799, column: 10, scope: !1569)
!1603 = !DILocation(line: 799, column: 2, scope: !1569)
!1604 = !DILocation(line: 800, column: 1, scope: !1569)
!1605 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1606, file: !1606, line: 32, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1606 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1607 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1606, file: !1606, line: 43, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
