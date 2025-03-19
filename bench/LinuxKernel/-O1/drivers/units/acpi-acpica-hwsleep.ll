; ModuleID = 'drivers/acpi/acpica/hwsleep.c'
source_filename = "drivers/acpi/acpica/hwsleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.acpi_fixed_event_info = type { i8, i8, i16, i16 }
%struct.acpi_bit_register_info = type { i8, i8, i16 }

@acpi_gbl_system_awake_and_running = external dso_local global i8, align 1
@acpi_gbl_sleep_type_a = external dso_local global i8, align 1
@acpi_gbl_sleep_type_b = external dso_local global i8, align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@acpi_gbl_sleep_type_a_s0 = external dso_local global i8, align 1
@acpi_gbl_sleep_type_b_s0 = external dso_local global i8, align 1
@.str = private unnamed_addr constant [10 x i8] c"\\_SI._SST\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"\\_WAK\00", align 1, !dbg !7
@acpi_gbl_fixed_event_info = external dso_local global [5 x %struct.acpi_fixed_event_info], align 16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_legacy_sleep(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !45 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %sleep_type_reg_info = alloca ptr, align 8
  %sleep_enable_reg_info = alloca ptr, align 8
  %pm1a_control = alloca i32, align 4
  %pm1b_control = alloca i32, align 4
  %in_value = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !49, metadata !DIExpression()), !dbg !66
  call void @llvm.lifetime.start.p0(i64 8, ptr %sleep_type_reg_info) #7, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %sleep_type_reg_info, metadata !50, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %sleep_enable_reg_info) #7, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %sleep_enable_reg_info, metadata !61, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 4, ptr %pm1a_control) #7, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %pm1a_control, metadata !62, metadata !DIExpression()), !dbg !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %pm1b_control) #7, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %pm1b_control, metadata !63, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_value) #7, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %in_value, metadata !64, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %status, metadata !65, metadata !DIExpression()), !dbg !78
  %call = call ptr @acpi_hw_get_bit_register_info(i32 noundef 17) #8, !dbg !79
  store ptr %call, ptr %sleep_type_reg_info, align 8, !dbg !80
  %call1 = call ptr @acpi_hw_get_bit_register_info(i32 noundef 18) #8, !dbg !81
  store ptr %call1, ptr %sleep_enable_reg_info, align 8, !dbg !82
  %call2 = call i32 @acpi_write_bit_register(i32 noundef 6, i32 noundef 1) #8, !dbg !83
  store i32 %call2, ptr %status, align 4, !dbg !84
  %0 = load i32, ptr %status, align 4, !dbg !85
  %tobool = icmp ne i32 %0, 0, !dbg !85
  br i1 %tobool, label %if.then, label %if.end, !dbg !87

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !88
  store i32 %1, ptr %retval, align 4, !dbg !88
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !88

if.end:                                           ; preds = %entry
  %call3 = call i32 @acpi_hw_disable_all_gpes() #8, !dbg !90
  store i32 %call3, ptr %status, align 4, !dbg !91
  %2 = load i32, ptr %status, align 4, !dbg !92
  %tobool4 = icmp ne i32 %2, 0, !dbg !92
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !94

if.then5:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !95
  store i32 %3, ptr %retval, align 4, !dbg !95
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !95

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @acpi_hw_clear_acpi_status() #8, !dbg !97
  store i32 %call7, ptr %status, align 4, !dbg !98
  %4 = load i32, ptr %status, align 4, !dbg !99
  %tobool8 = icmp ne i32 %4, 0, !dbg !99
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !101

if.then9:                                         ; preds = %if.end6
  %5 = load i32, ptr %status, align 4, !dbg !102
  store i32 %5, ptr %retval, align 4, !dbg !102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !102

if.end10:                                         ; preds = %if.end6
  store i8 0, ptr @acpi_gbl_system_awake_and_running, align 1, !dbg !104
  %call11 = call i32 @acpi_hw_enable_all_wakeup_gpes() #8, !dbg !105
  store i32 %call11, ptr %status, align 4, !dbg !106
  %6 = load i32, ptr %status, align 4, !dbg !107
  %tobool12 = icmp ne i32 %6, 0, !dbg !107
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !109

if.then13:                                        ; preds = %if.end10
  %7 = load i32, ptr %status, align 4, !dbg !110
  store i32 %7, ptr %retval, align 4, !dbg !110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !110

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @acpi_hw_register_read(i32 noundef 3, ptr noundef %pm1a_control) #8, !dbg !112
  store i32 %call15, ptr %status, align 4, !dbg !113
  %8 = load i32, ptr %status, align 4, !dbg !114
  %tobool16 = icmp ne i32 %8, 0, !dbg !114
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !116

if.then17:                                        ; preds = %if.end14
  %9 = load i32, ptr %status, align 4, !dbg !117
  store i32 %9, ptr %retval, align 4, !dbg !117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !117

if.end18:                                         ; preds = %if.end14
  %10 = load ptr, ptr %sleep_type_reg_info, align 8, !dbg !119
  %access_bit_mask = getelementptr inbounds %struct.acpi_bit_register_info, ptr %10, i32 0, i32 2, !dbg !120
  %11 = load i16, ptr %access_bit_mask, align 2, !dbg !120
  %conv = zext i16 %11 to i32, !dbg !119
  %12 = load ptr, ptr %sleep_enable_reg_info, align 8, !dbg !121
  %access_bit_mask19 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %12, i32 0, i32 2, !dbg !122
  %13 = load i16, ptr %access_bit_mask19, align 2, !dbg !122
  %conv20 = zext i16 %13 to i32, !dbg !121
  %or = or i32 %conv, %conv20, !dbg !123
  %not = xor i32 %or, -1, !dbg !124
  %14 = load i32, ptr %pm1a_control, align 4, !dbg !125
  %and = and i32 %14, %not, !dbg !125
  store i32 %and, ptr %pm1a_control, align 4, !dbg !125
  %15 = load i32, ptr %pm1a_control, align 4, !dbg !126
  store i32 %15, ptr %pm1b_control, align 4, !dbg !127
  %16 = load i8, ptr @acpi_gbl_sleep_type_a, align 1, !dbg !128
  %conv21 = zext i8 %16 to i32, !dbg !128
  %17 = load ptr, ptr %sleep_type_reg_info, align 8, !dbg !129
  %bit_position = getelementptr inbounds %struct.acpi_bit_register_info, ptr %17, i32 0, i32 1, !dbg !130
  %18 = load i8, ptr %bit_position, align 1, !dbg !130
  %conv22 = zext i8 %18 to i32, !dbg !129
  %shl = shl i32 %conv21, %conv22, !dbg !131
  %19 = load i32, ptr %pm1a_control, align 4, !dbg !132
  %or23 = or i32 %19, %shl, !dbg !132
  store i32 %or23, ptr %pm1a_control, align 4, !dbg !132
  %20 = load i8, ptr @acpi_gbl_sleep_type_b, align 1, !dbg !133
  %conv24 = zext i8 %20 to i32, !dbg !133
  %21 = load ptr, ptr %sleep_type_reg_info, align 8, !dbg !134
  %bit_position25 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %21, i32 0, i32 1, !dbg !135
  %22 = load i8, ptr %bit_position25, align 1, !dbg !135
  %conv26 = zext i8 %22 to i32, !dbg !134
  %shl27 = shl i32 %conv24, %conv26, !dbg !136
  %23 = load i32, ptr %pm1b_control, align 4, !dbg !137
  %or28 = or i32 %23, %shl27, !dbg !137
  store i32 %or28, ptr %pm1b_control, align 4, !dbg !137
  %24 = load i32, ptr %pm1a_control, align 4, !dbg !138
  %25 = load i32, ptr %pm1b_control, align 4, !dbg !139
  %call29 = call i32 @acpi_hw_write_pm1_control(i32 noundef %24, i32 noundef %25) #8, !dbg !140
  store i32 %call29, ptr %status, align 4, !dbg !141
  %26 = load i32, ptr %status, align 4, !dbg !142
  %tobool30 = icmp ne i32 %26, 0, !dbg !142
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !144

if.then31:                                        ; preds = %if.end18
  %27 = load i32, ptr %status, align 4, !dbg !145
  store i32 %27, ptr %retval, align 4, !dbg !145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !145

if.end32:                                         ; preds = %if.end18
  %28 = load ptr, ptr %sleep_enable_reg_info, align 8, !dbg !147
  %access_bit_mask33 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %28, i32 0, i32 2, !dbg !148
  %29 = load i16, ptr %access_bit_mask33, align 2, !dbg !148
  %conv34 = zext i16 %29 to i32, !dbg !147
  %30 = load i32, ptr %pm1a_control, align 4, !dbg !149
  %or35 = or i32 %30, %conv34, !dbg !149
  store i32 %or35, ptr %pm1a_control, align 4, !dbg !149
  %31 = load ptr, ptr %sleep_enable_reg_info, align 8, !dbg !150
  %access_bit_mask36 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %31, i32 0, i32 2, !dbg !151
  %32 = load i16, ptr %access_bit_mask36, align 2, !dbg !151
  %conv37 = zext i16 %32 to i32, !dbg !150
  %33 = load i32, ptr %pm1b_control, align 4, !dbg !152
  %or38 = or i32 %33, %conv37, !dbg !152
  store i32 %or38, ptr %pm1b_control, align 4, !dbg !152
  %34 = load i8, ptr %sleep_state.addr, align 1, !dbg !153
  %conv39 = zext i8 %34 to i32, !dbg !153
  %cmp = icmp slt i32 %conv39, 4, !dbg !155
  br i1 %cmp, label %if.then41, label %if.end52, !dbg !156

if.then41:                                        ; preds = %if.end32
  br label %do.body, !dbg !157

do.body:                                          ; preds = %if.then41
  br i1 false, label %cond.true, label %cond.false, !dbg !159

cond.true:                                        ; preds = %do.body
  br i1 false, label %if.end51, label %if.then50, !dbg !161

cond.false:                                       ; preds = %do.body
  br i1 false, label %cond.true42, label %cond.false47, !dbg !159

cond.true42:                                      ; preds = %cond.false
  br i1 false, label %cond.true43, label %cond.false44, !dbg !161

cond.true43:                                      ; preds = %cond.true42
  br i1 true, label %if.end51, label %if.then50, !dbg !161

cond.false44:                                     ; preds = %cond.true42
  %call45 = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #8, !dbg !161
  br i1 %call45, label %if.end51, label %if.then50, !dbg !161

cond.false47:                                     ; preds = %cond.false
  %call48 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 159) #8, !dbg !161
  br i1 %call48, label %if.end51, label %if.then50, !dbg !159

if.then50:                                        ; preds = %cond.false47, %cond.false44, %cond.true43, %cond.true
  call void @wbinvd() #8, !dbg !161
  br label %if.end51, !dbg !161

if.end51:                                         ; preds = %if.then50, %cond.false47, %cond.false44, %cond.true43, %cond.true
  br label %do.cond, !dbg !159

do.cond:                                          ; preds = %if.end51
  br label %do.end, !dbg !159

do.end:                                           ; preds = %do.cond
  br label %if.end52, !dbg !163

if.end52:                                         ; preds = %do.end, %if.end32
  %35 = load i8, ptr %sleep_state.addr, align 1, !dbg !164
  %36 = load i32, ptr %pm1a_control, align 4, !dbg !165
  %37 = load i32, ptr %pm1b_control, align 4, !dbg !166
  %call53 = call i32 @acpi_os_enter_sleep(i8 noundef zeroext %35, i32 noundef %36, i32 noundef %37) #8, !dbg !167
  store i32 %call53, ptr %status, align 4, !dbg !168
  %38 = load i32, ptr %status, align 4, !dbg !169
  %cmp54 = icmp eq i32 %38, 16387, !dbg !171
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !172

if.then56:                                        ; preds = %if.end52
  store i32 0, ptr %retval, align 4, !dbg !173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !173

if.end57:                                         ; preds = %if.end52
  %39 = load i32, ptr %status, align 4, !dbg !175
  %tobool58 = icmp ne i32 %39, 0, !dbg !175
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !177

if.then59:                                        ; preds = %if.end57
  %40 = load i32, ptr %status, align 4, !dbg !178
  store i32 %40, ptr %retval, align 4, !dbg !178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !178

if.end60:                                         ; preds = %if.end57
  %41 = load i32, ptr %pm1a_control, align 4, !dbg !180
  %42 = load i32, ptr %pm1b_control, align 4, !dbg !181
  %call61 = call i32 @acpi_hw_write_pm1_control(i32 noundef %41, i32 noundef %42) #8, !dbg !182
  store i32 %call61, ptr %status, align 4, !dbg !183
  %43 = load i32, ptr %status, align 4, !dbg !184
  %tobool62 = icmp ne i32 %43, 0, !dbg !184
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !186

if.then63:                                        ; preds = %if.end60
  %44 = load i32, ptr %status, align 4, !dbg !187
  store i32 %44, ptr %retval, align 4, !dbg !187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !187

if.end64:                                         ; preds = %if.end60
  %45 = load i8, ptr %sleep_state.addr, align 1, !dbg !189
  %conv65 = zext i8 %45 to i32, !dbg !189
  %cmp66 = icmp sgt i32 %conv65, 3, !dbg !191
  br i1 %cmp66, label %if.then68, label %if.end75, !dbg !192

if.then68:                                        ; preds = %if.end64
  call void @acpi_os_stall(i32 noundef 10000000) #8, !dbg !193
  %46 = load ptr, ptr %sleep_enable_reg_info, align 8, !dbg !195
  %access_bit_mask69 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %46, i32 0, i32 2, !dbg !196
  %47 = load i16, ptr %access_bit_mask69, align 2, !dbg !196
  %conv70 = zext i16 %47 to i32, !dbg !195
  %call71 = call i32 @acpi_hw_register_write(i32 noundef 3, i32 noundef %conv70) #8, !dbg !197
  store i32 %call71, ptr %status, align 4, !dbg !198
  %48 = load i32, ptr %status, align 4, !dbg !199
  %tobool72 = icmp ne i32 %48, 0, !dbg !199
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !201

if.then73:                                        ; preds = %if.then68
  %49 = load i32, ptr %status, align 4, !dbg !202
  store i32 %49, ptr %retval, align 4, !dbg !202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !202

if.end74:                                         ; preds = %if.then68
  br label %if.end75, !dbg !204

if.end75:                                         ; preds = %if.end74, %if.end64
  br label %do.body76, !dbg !205

do.body76:                                        ; preds = %do.cond81, %if.end75
  %call77 = call i32 @acpi_read_bit_register(i32 noundef 6, ptr noundef %in_value) #8, !dbg !206
  store i32 %call77, ptr %status, align 4, !dbg !208
  %50 = load i32, ptr %status, align 4, !dbg !209
  %tobool78 = icmp ne i32 %50, 0, !dbg !209
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !211

if.then79:                                        ; preds = %do.body76
  %51 = load i32, ptr %status, align 4, !dbg !212
  store i32 %51, ptr %retval, align 4, !dbg !212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !212

if.end80:                                         ; preds = %do.body76
  br label %do.cond81, !dbg !214

do.cond81:                                        ; preds = %if.end80
  %52 = load i32, ptr %in_value, align 4, !dbg !215
  %tobool82 = icmp ne i32 %52, 0, !dbg !216
  %lnot = xor i1 %tobool82, true, !dbg !216
  br i1 %lnot, label %do.body76, label %do.end83, !dbg !214, !llvm.loop !217

do.end83:                                         ; preds = %do.cond81
  store i32 0, ptr %retval, align 4, !dbg !221
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !221

cleanup:                                          ; preds = %do.end83, %if.then79, %if.then73, %if.then63, %if.then59, %if.then56, %if.then31, %if.then17, %if.then13, %if.then9, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !222
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_value) #7, !dbg !222
  call void @llvm.lifetime.end.p0(i64 4, ptr %pm1b_control) #7, !dbg !222
  call void @llvm.lifetime.end.p0(i64 4, ptr %pm1a_control) #7, !dbg !222
  call void @llvm.lifetime.end.p0(i64 8, ptr %sleep_enable_reg_info) #7, !dbg !222
  call void @llvm.lifetime.end.p0(i64 8, ptr %sleep_type_reg_info) #7, !dbg !222
  %53 = load i32, ptr %retval, align 4, !dbg !222
  ret i32 %53, !dbg !222
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !223 dso_local ptr @acpi_hw_get_bit_register_info(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !227 dso_local i32 @acpi_write_bit_register(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !231 dso_local i32 @acpi_hw_disable_all_gpes() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !234 dso_local i32 @acpi_hw_clear_acpi_status() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !235 dso_local i32 @acpi_hw_enable_all_wakeup_gpes() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !236 dso_local i32 @acpi_hw_register_read(i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !240 dso_local i32 @acpi_hw_write_pm1_control(i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !241 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !252, metadata !DIExpression()), !dbg !254
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !253, metadata !DIExpression()), !dbg !255
  %0 = load i64, ptr %nr.addr, align 8, !dbg !256
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !257
  br i1 %1, label %cond.true, label %cond.false, !dbg !257

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !258
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !259
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !260
  %conv = zext i1 %call to i32, !dbg !260
  br label %cond.end, !dbg !257

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !261
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !262
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #8, !dbg !263
  %conv2 = zext i1 %call1 to i32, !dbg !263
  br label %cond.end, !dbg !257

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !257
  %tobool = icmp ne i32 %cond, 0, !dbg !257
  ret i1 %tobool, !dbg !264
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #4 align 16 !dbg !265 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !270, metadata !DIExpression()), !dbg !273
  %0 = load i16, ptr %bit.addr, align 2, !dbg !274
  %1 = load i16, ptr %bit.addr, align 2, !dbg !275
  %conv = zext i16 %1 to i32, !dbg !275
  %and = and i32 %conv, 7, !dbg !276
  %shl = shl i32 1, %and, !dbg !277
  %2 = load i16, ptr %bit.addr, align 2, !dbg !278
  %conv1 = zext i16 %2 to i32, !dbg !278
  %shr = ashr i32 %conv1, 3, !dbg !279
  %idxprom = sext i32 %shr to i64, !dbg !280
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !280
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #7
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !281, !srcloc !282

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !281

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !271), !dbg !283
  store i1 true, ptr %retval, align 1, !dbg !284
  br label %return, !dbg !284

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !272), !dbg !285
  store i1 false, ptr %retval, align 1, !dbg !286
  br label %return, !dbg !286

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !287
  ret i1 %3, !dbg !287
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wbinvd() #4 align 16 !dbg !288 {
entry:
  call void @native_wbinvd() #8, !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !294 dso_local i32 @acpi_os_enter_sleep(i8 noundef zeroext, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !298 dso_local void @acpi_os_stall(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !301 dso_local i32 @acpi_hw_register_write(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !302 dso_local i32 @acpi_read_bit_register(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_legacy_wake_prep(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !303 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %sleep_type_reg_info = alloca ptr, align 8
  %sleep_enable_reg_info = alloca ptr, align 8
  %pm1a_control = alloca i32, align 4
  %pm1b_control = alloca i32, align 4
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !305, metadata !DIExpression()), !dbg !311
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %status, metadata !306, metadata !DIExpression()), !dbg !313
  store i32 0, ptr %status, align 4, !dbg !313
  call void @llvm.lifetime.start.p0(i64 8, ptr %sleep_type_reg_info) #7, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %sleep_type_reg_info, metadata !307, metadata !DIExpression()), !dbg !315
  call void @llvm.lifetime.start.p0(i64 8, ptr %sleep_enable_reg_info) #7, !dbg !316
  call void @llvm.dbg.declare(metadata ptr %sleep_enable_reg_info, metadata !308, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 4, ptr %pm1a_control) #7, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %pm1a_control, metadata !309, metadata !DIExpression()), !dbg !319
  call void @llvm.lifetime.start.p0(i64 4, ptr %pm1b_control) #7, !dbg !320
  call void @llvm.dbg.declare(metadata ptr %pm1b_control, metadata !310, metadata !DIExpression()), !dbg !321
  %0 = load i8, ptr @acpi_gbl_sleep_type_a_s0, align 1, !dbg !322
  %conv = zext i8 %0 to i32, !dbg !322
  %cmp = icmp ne i32 %conv, 255, !dbg !324
  br i1 %cmp, label %if.then, label %if.end17, !dbg !325

if.then:                                          ; preds = %entry
  %call = call ptr @acpi_hw_get_bit_register_info(i32 noundef 17) #8, !dbg !326
  store ptr %call, ptr %sleep_type_reg_info, align 8, !dbg !328
  %call2 = call ptr @acpi_hw_get_bit_register_info(i32 noundef 18) #8, !dbg !329
  store ptr %call2, ptr %sleep_enable_reg_info, align 8, !dbg !330
  %call3 = call i32 @acpi_hw_register_read(i32 noundef 3, ptr noundef %pm1a_control) #8, !dbg !331
  store i32 %call3, ptr %status, align 4, !dbg !332
  %1 = load i32, ptr %status, align 4, !dbg !333
  %tobool = icmp ne i32 %1, 0, !dbg !333
  br i1 %tobool, label %if.end, label %if.then4, !dbg !335

if.then4:                                         ; preds = %if.then
  %2 = load ptr, ptr %sleep_type_reg_info, align 8, !dbg !336
  %access_bit_mask = getelementptr inbounds %struct.acpi_bit_register_info, ptr %2, i32 0, i32 2, !dbg !338
  %3 = load i16, ptr %access_bit_mask, align 2, !dbg !338
  %conv5 = zext i16 %3 to i32, !dbg !336
  %4 = load ptr, ptr %sleep_enable_reg_info, align 8, !dbg !339
  %access_bit_mask6 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %4, i32 0, i32 2, !dbg !340
  %5 = load i16, ptr %access_bit_mask6, align 2, !dbg !340
  %conv7 = zext i16 %5 to i32, !dbg !339
  %or = or i32 %conv5, %conv7, !dbg !341
  %not = xor i32 %or, -1, !dbg !342
  %6 = load i32, ptr %pm1a_control, align 4, !dbg !343
  %and = and i32 %6, %not, !dbg !343
  store i32 %and, ptr %pm1a_control, align 4, !dbg !343
  %7 = load i32, ptr %pm1a_control, align 4, !dbg !344
  store i32 %7, ptr %pm1b_control, align 4, !dbg !345
  %8 = load i8, ptr @acpi_gbl_sleep_type_a_s0, align 1, !dbg !346
  %conv8 = zext i8 %8 to i32, !dbg !346
  %9 = load ptr, ptr %sleep_type_reg_info, align 8, !dbg !347
  %bit_position = getelementptr inbounds %struct.acpi_bit_register_info, ptr %9, i32 0, i32 1, !dbg !348
  %10 = load i8, ptr %bit_position, align 1, !dbg !348
  %conv9 = zext i8 %10 to i32, !dbg !347
  %shl = shl i32 %conv8, %conv9, !dbg !349
  %11 = load i32, ptr %pm1a_control, align 4, !dbg !350
  %or10 = or i32 %11, %shl, !dbg !350
  store i32 %or10, ptr %pm1a_control, align 4, !dbg !350
  %12 = load i8, ptr @acpi_gbl_sleep_type_b_s0, align 1, !dbg !351
  %conv11 = zext i8 %12 to i32, !dbg !351
  %13 = load ptr, ptr %sleep_type_reg_info, align 8, !dbg !352
  %bit_position12 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %13, i32 0, i32 1, !dbg !353
  %14 = load i8, ptr %bit_position12, align 1, !dbg !353
  %conv13 = zext i8 %14 to i32, !dbg !352
  %shl14 = shl i32 %conv11, %conv13, !dbg !354
  %15 = load i32, ptr %pm1b_control, align 4, !dbg !355
  %or15 = or i32 %15, %shl14, !dbg !355
  store i32 %or15, ptr %pm1b_control, align 4, !dbg !355
  %16 = load i32, ptr %pm1a_control, align 4, !dbg !356
  %17 = load i32, ptr %pm1b_control, align 4, !dbg !357
  %call16 = call i32 @acpi_hw_write_pm1_control(i32 noundef %16, i32 noundef %17) #8, !dbg !358
  br label %if.end, !dbg !359

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end17, !dbg !360

if.end17:                                         ; preds = %if.end, %entry
  %18 = load i32, ptr %status, align 4, !dbg !361
  call void @llvm.lifetime.end.p0(i64 4, ptr %pm1b_control) #7, !dbg !362
  call void @llvm.lifetime.end.p0(i64 4, ptr %pm1a_control) #7, !dbg !362
  call void @llvm.lifetime.end.p0(i64 8, ptr %sleep_enable_reg_info) #7, !dbg !362
  call void @llvm.lifetime.end.p0(i64 8, ptr %sleep_type_reg_info) #7, !dbg !362
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !362
  ret i32 %18, !dbg !361
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_legacy_wake(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !363 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !365, metadata !DIExpression()), !dbg !367
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #7, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %status, metadata !366, metadata !DIExpression()), !dbg !369
  store i8 -1, ptr @acpi_gbl_sleep_type_a, align 1, !dbg !370
  call void @acpi_hw_execute_sleep_method(ptr noundef @.str, i32 noundef 2) #8, !dbg !371
  %call = call i32 @acpi_hw_disable_all_gpes() #8, !dbg !372
  store i32 %call, ptr %status, align 4, !dbg !373
  %0 = load i32, ptr %status, align 4, !dbg !374
  %tobool = icmp ne i32 %0, 0, !dbg !374
  br i1 %tobool, label %if.then, label %if.end, !dbg !376

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !377
  store i32 %1, ptr %retval, align 4, !dbg !377
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !377

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_enable_all_runtime_gpes() #8, !dbg !379
  store i32 %call1, ptr %status, align 4, !dbg !380
  %2 = load i32, ptr %status, align 4, !dbg !381
  %tobool2 = icmp ne i32 %2, 0, !dbg !381
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !383

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !384
  store i32 %3, ptr %retval, align 4, !dbg !384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !384

if.end4:                                          ; preds = %if.end
  %4 = load i8, ptr %sleep_state.addr, align 1, !dbg !386
  %conv = zext i8 %4 to i32, !dbg !386
  call void @acpi_hw_execute_sleep_method(ptr noundef @.str.1, i32 noundef %conv) #8, !dbg !387
  %call5 = call i32 @acpi_write_bit_register(i32 noundef 6, i32 noundef 1) #8, !dbg !388
  store i8 1, ptr @acpi_gbl_system_awake_and_running, align 1, !dbg !389
  %5 = load i8, ptr getelementptr inbounds ([5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 2, i32 1), align 1, !dbg !390
  %conv6 = zext i8 %5 to i32, !dbg !391
  %call7 = call i32 @acpi_write_bit_register(i32 noundef %conv6, i32 noundef 1) #8, !dbg !392
  %6 = load i8, ptr getelementptr inbounds ([5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 2), align 4, !dbg !393
  %conv8 = zext i8 %6 to i32, !dbg !394
  %call9 = call i32 @acpi_write_bit_register(i32 noundef %conv8, i32 noundef 1) #8, !dbg !395
  %7 = load i8, ptr getelementptr inbounds ([5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 3, i32 1), align 1, !dbg !396
  %conv10 = zext i8 %7 to i32, !dbg !397
  %call11 = call i32 @acpi_write_bit_register(i32 noundef %conv10, i32 noundef 1) #8, !dbg !398
  %8 = load i8, ptr getelementptr inbounds ([5 x %struct.acpi_fixed_event_info], ptr @acpi_gbl_fixed_event_info, i64 0, i64 3), align 2, !dbg !399
  %conv12 = zext i8 %8 to i32, !dbg !400
  %call13 = call i32 @acpi_write_bit_register(i32 noundef %conv12, i32 noundef 1) #8, !dbg !401
  call void @acpi_hw_execute_sleep_method(ptr noundef @.str, i32 noundef 1) #8, !dbg !402
  %9 = load i32, ptr %status, align 4, !dbg !403
  store i32 %9, ptr %retval, align 4, !dbg !403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !403

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #7, !dbg !404
  %10 = load i32, ptr %retval, align 4, !dbg !404
  ret i32 %10, !dbg !404
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !405 dso_local void @acpi_hw_execute_sleep_method(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !409 dso_local i32 @acpi_hw_enable_all_runtime_gpes() #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !410 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !415, metadata !DIExpression()), !dbg !417
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !416, metadata !DIExpression()), !dbg !418
  %0 = load i64, ptr %nr.addr, align 8, !dbg !419
  %and = and i64 %0, 63, !dbg !420
  %shl = shl i64 1, %and, !dbg !421
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !422
  %2 = load i64, ptr %nr.addr, align 8, !dbg !423
  %shr = ashr i64 %2, 6, !dbg !424
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !422
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !422
  %and1 = and i64 %shl, %3, !dbg !425
  %cmp = icmp ne i64 %and1, 0, !dbg !426
  ret i1 %cmp, !dbg !427
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !428 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !430, metadata !DIExpression()), !dbg !433
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !431, metadata !DIExpression()), !dbg !434
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #7, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !432, metadata !DIExpression()), !dbg !436
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !437
  %1 = load i64, ptr %nr.addr, align 8, !dbg !438
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #7, !dbg !439, !srcloc !440
  %3 = icmp ult i8 %2, 2, !dbg !439
  call void @llvm.assume(i1 %3), !dbg !439
  store i8 %2, ptr %oldbit, align 1, !dbg !439
  %4 = load i8, ptr %oldbit, align 1, !dbg !441, !range !442, !noundef !443
  %tobool = trunc i8 %4 to i1, !dbg !441
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #7, !dbg !444
  ret i1 %tobool, !dbg !445
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_wbinvd() #4 align 16 !dbg !446 {
entry:
  call void asm sideeffect "wbinvd", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !447, !srcloc !448
  ret void, !dbg !449
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!12}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 255, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/hwsleep.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7abd41c055044ba5821accb17e3127ab")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.hwsleep.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22hwsleep\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/hwsleep.ll drivers/acpi/acpica/hwsleep.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !13, retainedTypes: !20, globals: !35, splitDebugInlining: false, nameTableKind: None)
!13 = !{!14}
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 10, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "false", value: 0)
!19 = !DIEnumerator(name: "true", value: 1)
!20 = !{!21, !26, !27, !29, !33}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !22, line: 17, baseType: !23)
!22 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !24, line: 21, baseType: !25)
!24 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !30, line: 421, baseType: !31)
!30 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !22, line: 21, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !24, line: 27, baseType: !16)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!35 = !{!0, !7}
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 8, !"cf-protection-branch", i32 1}
!40 = !{i32 4, !"function_return_thunk_extern", i32 1}
!41 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{i32 1, !"override-stack-alignment", i32 8}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "acpi_hw_legacy_sleep", scope: !2, file: !2, line: 30, type: !46, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{!29, !21}
!48 = !{!49, !50, !61, !62, !63, !64, !65}
!49 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !45, file: !2, line: 30, type: !21)
!50 = !DILocalVariable(name: "sleep_type_reg_info", scope: !45, file: !2, line: 32, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_bit_register_info", file: !53, line: 950, size: 32, elements: !54)
!53 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!54 = !{!55, !56, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "parent_register", scope: !52, file: !53, line: 951, baseType: !21, size: 8)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "bit_position", scope: !52, file: !53, line: 952, baseType: !21, size: 8, offset: 8)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "access_bit_mask", scope: !52, file: !53, line: 953, baseType: !58, size: 16, offset: 16)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !22, line: 19, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !24, line: 24, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !DILocalVariable(name: "sleep_enable_reg_info", scope: !45, file: !2, line: 33, type: !51)
!62 = !DILocalVariable(name: "pm1a_control", scope: !45, file: !2, line: 34, type: !31)
!63 = !DILocalVariable(name: "pm1b_control", scope: !45, file: !2, line: 35, type: !31)
!64 = !DILocalVariable(name: "in_value", scope: !45, file: !2, line: 36, type: !31)
!65 = !DILocalVariable(name: "status", scope: !45, file: !2, line: 37, type: !29)
!66 = !DILocation(line: 30, column: 37, scope: !45)
!67 = !DILocation(line: 32, column: 2, scope: !45)
!68 = !DILocation(line: 32, column: 33, scope: !45)
!69 = !DILocation(line: 33, column: 2, scope: !45)
!70 = !DILocation(line: 33, column: 33, scope: !45)
!71 = !DILocation(line: 34, column: 2, scope: !45)
!72 = !DILocation(line: 34, column: 6, scope: !45)
!73 = !DILocation(line: 35, column: 2, scope: !45)
!74 = !DILocation(line: 35, column: 6, scope: !45)
!75 = !DILocation(line: 36, column: 2, scope: !45)
!76 = !DILocation(line: 36, column: 6, scope: !45)
!77 = !DILocation(line: 37, column: 2, scope: !45)
!78 = !DILocation(line: 37, column: 14, scope: !45)
!79 = !DILocation(line: 42, column: 6, scope: !45)
!80 = !DILocation(line: 41, column: 22, scope: !45)
!81 = !DILocation(line: 44, column: 6, scope: !45)
!82 = !DILocation(line: 43, column: 24, scope: !45)
!83 = !DILocation(line: 48, column: 11, scope: !45)
!84 = !DILocation(line: 48, column: 9, scope: !45)
!85 = !DILocation(line: 50, column: 6, scope: !86)
!86 = distinct !DILexicalBlock(scope: !45, file: !2, line: 50, column: 6)
!87 = !DILocation(line: 50, column: 6, scope: !45)
!88 = !DILocation(line: 51, column: 3, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !2, line: 50, column: 28)
!90 = !DILocation(line: 55, column: 11, scope: !45)
!91 = !DILocation(line: 55, column: 9, scope: !45)
!92 = !DILocation(line: 56, column: 6, scope: !93)
!93 = distinct !DILexicalBlock(scope: !45, file: !2, line: 56, column: 6)
!94 = !DILocation(line: 56, column: 6, scope: !45)
!95 = !DILocation(line: 57, column: 3, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !2, line: 56, column: 28)
!97 = !DILocation(line: 59, column: 11, scope: !45)
!98 = !DILocation(line: 59, column: 9, scope: !45)
!99 = !DILocation(line: 60, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !45, file: !2, line: 60, column: 6)
!101 = !DILocation(line: 60, column: 6, scope: !45)
!102 = !DILocation(line: 61, column: 3, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !2, line: 60, column: 28)
!104 = !DILocation(line: 63, column: 36, scope: !45)
!105 = !DILocation(line: 66, column: 11, scope: !45)
!106 = !DILocation(line: 66, column: 9, scope: !45)
!107 = !DILocation(line: 67, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !45, file: !2, line: 67, column: 6)
!109 = !DILocation(line: 67, column: 6, scope: !45)
!110 = !DILocation(line: 68, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !2, line: 67, column: 28)
!112 = !DILocation(line: 73, column: 11, scope: !45)
!113 = !DILocation(line: 73, column: 9, scope: !45)
!114 = !DILocation(line: 75, column: 6, scope: !115)
!115 = distinct !DILexicalBlock(scope: !45, file: !2, line: 75, column: 6)
!116 = !DILocation(line: 75, column: 6, scope: !45)
!117 = !DILocation(line: 76, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !2, line: 75, column: 28)
!119 = !DILocation(line: 83, column: 20, scope: !45)
!120 = !DILocation(line: 83, column: 41, scope: !45)
!121 = !DILocation(line: 84, column: 6, scope: !45)
!122 = !DILocation(line: 84, column: 29, scope: !45)
!123 = !DILocation(line: 83, column: 57, scope: !45)
!124 = !DILocation(line: 83, column: 18, scope: !45)
!125 = !DILocation(line: 83, column: 15, scope: !45)
!126 = !DILocation(line: 85, column: 17, scope: !45)
!127 = !DILocation(line: 85, column: 15, scope: !45)
!128 = !DILocation(line: 90, column: 7, scope: !45)
!129 = !DILocation(line: 90, column: 32, scope: !45)
!130 = !DILocation(line: 90, column: 53, scope: !45)
!131 = !DILocation(line: 90, column: 29, scope: !45)
!132 = !DILocation(line: 89, column: 15, scope: !45)
!133 = !DILocation(line: 92, column: 7, scope: !45)
!134 = !DILocation(line: 92, column: 32, scope: !45)
!135 = !DILocation(line: 92, column: 53, scope: !45)
!136 = !DILocation(line: 92, column: 29, scope: !45)
!137 = !DILocation(line: 91, column: 15, scope: !45)
!138 = !DILocation(line: 101, column: 37, scope: !45)
!139 = !DILocation(line: 101, column: 51, scope: !45)
!140 = !DILocation(line: 101, column: 11, scope: !45)
!141 = !DILocation(line: 101, column: 9, scope: !45)
!142 = !DILocation(line: 102, column: 6, scope: !143)
!143 = distinct !DILexicalBlock(scope: !45, file: !2, line: 102, column: 6)
!144 = !DILocation(line: 102, column: 6, scope: !45)
!145 = !DILocation(line: 103, column: 3, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !2, line: 102, column: 28)
!147 = !DILocation(line: 108, column: 18, scope: !45)
!148 = !DILocation(line: 108, column: 41, scope: !45)
!149 = !DILocation(line: 108, column: 15, scope: !45)
!150 = !DILocation(line: 109, column: 18, scope: !45)
!151 = !DILocation(line: 109, column: 41, scope: !45)
!152 = !DILocation(line: 109, column: 15, scope: !45)
!153 = !DILocation(line: 113, column: 6, scope: !154)
!154 = distinct !DILexicalBlock(scope: !45, file: !2, line: 113, column: 6)
!155 = !DILocation(line: 113, column: 18, scope: !154)
!156 = !DILocation(line: 113, column: 6, scope: !45)
!157 = !DILocation(line: 114, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !2, line: 113, column: 35)
!159 = !DILocation(line: 114, column: 3, scope: !160)
!160 = distinct !DILexicalBlock(scope: !158, file: !2, line: 114, column: 3)
!161 = !DILocation(line: 114, column: 3, scope: !162)
!162 = distinct !DILexicalBlock(scope: !160, file: !2, line: 114, column: 3)
!163 = !DILocation(line: 115, column: 2, scope: !158)
!164 = !DILocation(line: 117, column: 31, scope: !45)
!165 = !DILocation(line: 117, column: 44, scope: !45)
!166 = !DILocation(line: 117, column: 58, scope: !45)
!167 = !DILocation(line: 117, column: 11, scope: !45)
!168 = !DILocation(line: 117, column: 9, scope: !45)
!169 = !DILocation(line: 118, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !45, file: !2, line: 118, column: 6)
!171 = !DILocation(line: 118, column: 13, scope: !170)
!172 = !DILocation(line: 118, column: 6, scope: !45)
!173 = !DILocation(line: 119, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !2, line: 118, column: 35)
!175 = !DILocation(line: 121, column: 6, scope: !176)
!176 = distinct !DILexicalBlock(scope: !45, file: !2, line: 121, column: 6)
!177 = !DILocation(line: 121, column: 6, scope: !45)
!178 = !DILocation(line: 122, column: 3, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !2, line: 121, column: 28)
!180 = !DILocation(line: 127, column: 37, scope: !45)
!181 = !DILocation(line: 127, column: 51, scope: !45)
!182 = !DILocation(line: 127, column: 11, scope: !45)
!183 = !DILocation(line: 127, column: 9, scope: !45)
!184 = !DILocation(line: 128, column: 6, scope: !185)
!185 = distinct !DILexicalBlock(scope: !45, file: !2, line: 128, column: 6)
!186 = !DILocation(line: 128, column: 6, scope: !45)
!187 = !DILocation(line: 129, column: 3, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !2, line: 128, column: 28)
!189 = !DILocation(line: 132, column: 6, scope: !190)
!190 = distinct !DILexicalBlock(scope: !45, file: !2, line: 132, column: 6)
!191 = !DILocation(line: 132, column: 18, scope: !190)
!192 = !DILocation(line: 132, column: 6, scope: !45)
!193 = !DILocation(line: 144, column: 3, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !2, line: 132, column: 35)
!195 = !DILocation(line: 147, column: 7, scope: !194)
!196 = !DILocation(line: 148, column: 7, scope: !194)
!197 = !DILocation(line: 146, column: 12, scope: !194)
!198 = !DILocation(line: 146, column: 10, scope: !194)
!199 = !DILocation(line: 149, column: 7, scope: !200)
!200 = distinct !DILexicalBlock(scope: !194, file: !2, line: 149, column: 7)
!201 = !DILocation(line: 149, column: 7, scope: !194)
!202 = !DILocation(line: 150, column: 4, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !2, line: 149, column: 29)
!204 = !DILocation(line: 152, column: 2, scope: !194)
!205 = !DILocation(line: 156, column: 2, scope: !45)
!206 = !DILocation(line: 158, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !45, file: !2, line: 156, column: 5)
!208 = !DILocation(line: 157, column: 10, scope: !207)
!209 = !DILocation(line: 159, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !2, line: 159, column: 7)
!211 = !DILocation(line: 159, column: 7, scope: !207)
!212 = !DILocation(line: 160, column: 4, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !2, line: 159, column: 29)
!214 = !DILocation(line: 163, column: 2, scope: !207)
!215 = !DILocation(line: 163, column: 12, scope: !45)
!216 = !DILocation(line: 163, column: 11, scope: !45)
!217 = distinct !{!217, !205, !218, !219, !220}
!218 = !DILocation(line: 163, column: 20, scope: !45)
!219 = !{!"llvm.loop.mustprogress"}
!220 = !{!"llvm.loop.unroll.disable"}
!221 = !DILocation(line: 165, column: 2, scope: !45)
!222 = !DILocation(line: 166, column: 1, scope: !45)
!223 = !DISubprogram(name: "acpi_hw_get_bit_register_info", scope: !224, file: !224, line: 39, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!224 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!225 = !DISubroutineType(types: !226)
!226 = !{!51, !31}
!227 = !DISubprogram(name: "acpi_write_bit_register", scope: !228, file: !228, line: 860, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!229 = !DISubroutineType(types: !230)
!230 = !{!29, !31, !31}
!231 = !DISubprogram(name: "acpi_hw_disable_all_gpes", scope: !228, file: !228, line: 765, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubroutineType(types: !233)
!233 = !{!29}
!234 = !DISubprogram(name: "acpi_hw_clear_acpi_status", scope: !224, file: !224, line: 47, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubprogram(name: "acpi_hw_enable_all_wakeup_gpes", scope: !228, file: !228, line: 766, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!236 = !DISubprogram(name: "acpi_hw_register_read", scope: !224, file: !224, line: 43, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubroutineType(types: !238)
!238 = !{!29, !31, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!240 = !DISubprogram(name: "acpi_hw_write_pm1_control", scope: !224, file: !224, line: 41, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = distinct !DISubprogram(name: "arch_test_bit", scope: !242, file: !242, line: 237, type: !243, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !251)
!242 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !28, !248}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !246, line: 35, baseType: !247)
!246 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!247 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!251 = !{!252, !253}
!252 = !DILocalVariable(name: "nr", arg: 1, scope: !241, file: !242, line: 237, type: !28)
!253 = !DILocalVariable(name: "addr", arg: 2, scope: !241, file: !242, line: 237, type: !248)
!254 = !DILocation(line: 237, column: 29, scope: !241)
!255 = !DILocation(line: 237, column: 63, scope: !241)
!256 = !DILocation(line: 239, column: 30, scope: !241)
!257 = !DILocation(line: 239, column: 9, scope: !241)
!258 = !DILocation(line: 239, column: 54, scope: !241)
!259 = !DILocation(line: 239, column: 58, scope: !241)
!260 = !DILocation(line: 239, column: 36, scope: !241)
!261 = !DILocation(line: 240, column: 26, scope: !241)
!262 = !DILocation(line: 240, column: 30, scope: !241)
!263 = !DILocation(line: 240, column: 8, scope: !241)
!264 = !DILocation(line: 239, column: 2, scope: !241)
!265 = distinct !DISubprogram(name: "_static_cpu_has", scope: !266, file: !266, line: 173, type: !267, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !269)
!266 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!267 = !DISubroutineType(types: !268)
!268 = !{!245, !58}
!269 = !{!270, !271, !272}
!270 = !DILocalVariable(name: "bit", arg: 1, scope: !265, file: !266, line: 173, type: !58)
!271 = !DILabel(scope: !265, name: "t_yes", file: !266, line: 187)
!272 = !DILabel(scope: !265, name: "t_no", file: !266, line: 189)
!273 = !DILocation(line: 173, column: 49, scope: !265)
!274 = !DILocation(line: 183, column: 24, scope: !265)
!275 = !DILocation(line: 184, column: 30, scope: !265)
!276 = !DILocation(line: 184, column: 34, scope: !265)
!277 = !DILocation(line: 184, column: 26, scope: !265)
!278 = !DILocation(line: 185, column: 70, scope: !265)
!279 = !DILocation(line: 185, column: 74, scope: !265)
!280 = !DILocation(line: 185, column: 25, scope: !265)
!281 = !DILocation(line: 175, column: 2, scope: !265)
!282 = !{i64 2149596248, i64 2149596281, i64 2149596287, i64 2149596303, i64 2149596322, i64 2149596353, i64 2149597306, i64 2149595895, i64 2149597312, i64 2149597360, i64 2149597424, i64 2149597488, i64 2149597545, i64 2149597752, i64 2149597800, i64 2149597864, i64 2149597928, i64 2149597985, i64 2149596013, i64 2149596038, i64 2149598195, i64 2149598323, i64 2149598256, i64 2149598337, i64 2149598351, i64 2149598467, i64 2149598412, i64 2149598481, i64 2149596172, i64 1757772, i64 1757812, i64 1757821, i64 1757871, i64 1757892, i64 1757912}
!283 = !DILocation(line: 187, column: 1, scope: !265)
!284 = !DILocation(line: 188, column: 2, scope: !265)
!285 = !DILocation(line: 189, column: 1, scope: !265)
!286 = !DILocation(line: 190, column: 2, scope: !265)
!287 = !DILocation(line: 191, column: 1, scope: !265)
!288 = distinct !DISubprogram(name: "wbinvd", scope: !289, file: !289, line: 171, type: !290, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!289 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!290 = !DISubroutineType(types: !291)
!291 = !{null}
!292 = !DILocation(line: 173, column: 2, scope: !288)
!293 = !DILocation(line: 174, column: 1, scope: !288)
!294 = !DISubprogram(name: "acpi_os_enter_sleep", scope: !295, file: !295, line: 326, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!296 = !DISubroutineType(types: !297)
!297 = !{!29, !21, !31, !31}
!298 = !DISubprogram(name: "acpi_os_stall", scope: !295, file: !295, line: 260, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !31}
!301 = !DISubprogram(name: "acpi_hw_register_write", scope: !224, file: !224, line: 45, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubprogram(name: "acpi_read_bit_register", scope: !228, file: !228, line: 856, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = distinct !DISubprogram(name: "acpi_hw_legacy_wake_prep", scope: !2, file: !2, line: 182, type: !46, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !304)
!304 = !{!305, !306, !307, !308, !309, !310}
!305 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !303, file: !2, line: 182, type: !21)
!306 = !DILocalVariable(name: "status", scope: !303, file: !2, line: 184, type: !29)
!307 = !DILocalVariable(name: "sleep_type_reg_info", scope: !303, file: !2, line: 185, type: !51)
!308 = !DILocalVariable(name: "sleep_enable_reg_info", scope: !303, file: !2, line: 186, type: !51)
!309 = !DILocalVariable(name: "pm1a_control", scope: !303, file: !2, line: 187, type: !31)
!310 = !DILocalVariable(name: "pm1b_control", scope: !303, file: !2, line: 188, type: !31)
!311 = !DILocation(line: 182, column: 41, scope: !303)
!312 = !DILocation(line: 184, column: 2, scope: !303)
!313 = !DILocation(line: 184, column: 14, scope: !303)
!314 = !DILocation(line: 185, column: 2, scope: !303)
!315 = !DILocation(line: 185, column: 33, scope: !303)
!316 = !DILocation(line: 186, column: 2, scope: !303)
!317 = !DILocation(line: 186, column: 33, scope: !303)
!318 = !DILocation(line: 187, column: 2, scope: !303)
!319 = !DILocation(line: 187, column: 6, scope: !303)
!320 = !DILocation(line: 188, column: 2, scope: !303)
!321 = !DILocation(line: 188, column: 6, scope: !303)
!322 = !DILocation(line: 197, column: 6, scope: !323)
!323 = distinct !DILexicalBlock(scope: !303, file: !2, line: 197, column: 6)
!324 = !DILocation(line: 197, column: 31, scope: !323)
!325 = !DILocation(line: 197, column: 6, scope: !303)
!326 = !DILocation(line: 199, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !2, line: 197, column: 59)
!328 = !DILocation(line: 198, column: 23, scope: !327)
!329 = !DILocation(line: 201, column: 7, scope: !327)
!330 = !DILocation(line: 200, column: 25, scope: !327)
!331 = !DILocation(line: 205, column: 12, scope: !327)
!332 = !DILocation(line: 205, column: 10, scope: !327)
!333 = !DILocation(line: 207, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !327, file: !2, line: 207, column: 7)
!335 = !DILocation(line: 207, column: 7, scope: !327)
!336 = !DILocation(line: 211, column: 22, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !2, line: 207, column: 29)
!338 = !DILocation(line: 211, column: 43, scope: !337)
!339 = !DILocation(line: 212, column: 8, scope: !337)
!340 = !DILocation(line: 213, column: 8, scope: !337)
!341 = !DILocation(line: 211, column: 59, scope: !337)
!342 = !DILocation(line: 211, column: 20, scope: !337)
!343 = !DILocation(line: 211, column: 17, scope: !337)
!344 = !DILocation(line: 214, column: 19, scope: !337)
!345 = !DILocation(line: 214, column: 17, scope: !337)
!346 = !DILocation(line: 218, column: 21, scope: !337)
!347 = !DILocation(line: 219, column: 7, scope: !337)
!348 = !DILocation(line: 219, column: 28, scope: !337)
!349 = !DILocation(line: 218, column: 46, scope: !337)
!350 = !DILocation(line: 218, column: 17, scope: !337)
!351 = !DILocation(line: 220, column: 21, scope: !337)
!352 = !DILocation(line: 221, column: 7, scope: !337)
!353 = !DILocation(line: 221, column: 28, scope: !337)
!354 = !DILocation(line: 220, column: 46, scope: !337)
!355 = !DILocation(line: 220, column: 17, scope: !337)
!356 = !DILocation(line: 225, column: 36, scope: !337)
!357 = !DILocation(line: 226, column: 8, scope: !337)
!358 = !DILocation(line: 225, column: 10, scope: !337)
!359 = !DILocation(line: 227, column: 3, scope: !337)
!360 = !DILocation(line: 228, column: 2, scope: !327)
!361 = !DILocation(line: 230, column: 2, scope: !303)
!362 = !DILocation(line: 231, column: 1, scope: !303)
!363 = distinct !DISubprogram(name: "acpi_hw_legacy_wake", scope: !2, file: !2, line: 246, type: !46, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !364)
!364 = !{!365, !366}
!365 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !363, file: !2, line: 246, type: !21)
!366 = !DILocalVariable(name: "status", scope: !363, file: !2, line: 248, type: !29)
!367 = !DILocation(line: 246, column: 36, scope: !363)
!368 = !DILocation(line: 248, column: 2, scope: !363)
!369 = !DILocation(line: 248, column: 14, scope: !363)
!370 = !DILocation(line: 254, column: 24, scope: !363)
!371 = !DILocation(line: 255, column: 2, scope: !363)
!372 = !DILocation(line: 265, column: 11, scope: !363)
!373 = !DILocation(line: 265, column: 9, scope: !363)
!374 = !DILocation(line: 266, column: 6, scope: !375)
!375 = distinct !DILexicalBlock(scope: !363, file: !2, line: 266, column: 6)
!376 = !DILocation(line: 266, column: 6, scope: !363)
!377 = !DILocation(line: 267, column: 3, scope: !378)
!378 = distinct !DILexicalBlock(scope: !375, file: !2, line: 266, column: 28)
!379 = !DILocation(line: 270, column: 11, scope: !363)
!380 = !DILocation(line: 270, column: 9, scope: !363)
!381 = !DILocation(line: 271, column: 6, scope: !382)
!382 = distinct !DILexicalBlock(scope: !363, file: !2, line: 271, column: 6)
!383 = !DILocation(line: 271, column: 6, scope: !363)
!384 = !DILocation(line: 272, column: 3, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !2, line: 271, column: 28)
!386 = !DILocation(line: 279, column: 53, scope: !363)
!387 = !DILocation(line: 279, column: 2, scope: !363)
!388 = !DILocation(line: 286, column: 8, scope: !363)
!389 = !DILocation(line: 288, column: 36, scope: !363)
!390 = !DILocation(line: 295, column: 9, scope: !363)
!391 = !DILocation(line: 293, column: 30, scope: !363)
!392 = !DILocation(line: 293, column: 6, scope: !363)
!393 = !DILocation(line: 300, column: 9, scope: !363)
!394 = !DILocation(line: 298, column: 30, scope: !363)
!395 = !DILocation(line: 298, column: 6, scope: !363)
!396 = !DILocation(line: 307, column: 9, scope: !363)
!397 = !DILocation(line: 305, column: 30, scope: !363)
!398 = !DILocation(line: 305, column: 6, scope: !363)
!399 = !DILocation(line: 312, column: 9, scope: !363)
!400 = !DILocation(line: 310, column: 30, scope: !363)
!401 = !DILocation(line: 310, column: 6, scope: !363)
!402 = !DILocation(line: 314, column: 2, scope: !363)
!403 = !DILocation(line: 315, column: 2, scope: !363)
!404 = !DILocation(line: 316, column: 1, scope: !363)
!405 = !DISubprogram(name: "acpi_hw_execute_sleep_method", scope: !224, file: !224, line: 61, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408, !31}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!409 = !DISubprogram(name: "acpi_hw_enable_all_runtime_gpes", scope: !224, file: !224, line: 104, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!410 = distinct !DISubprogram(name: "constant_test_bit", scope: !242, file: !242, line: 204, type: !411, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !414)
!411 = !DISubroutineType(types: !412)
!412 = !{!245, !413, !248}
!413 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!414 = !{!415, !416}
!415 = !DILocalVariable(name: "nr", arg: 1, scope: !410, file: !242, line: 204, type: !413)
!416 = !DILocalVariable(name: "addr", arg: 2, scope: !410, file: !242, line: 204, type: !248)
!417 = !DILocation(line: 204, column: 52, scope: !410)
!418 = !DILocation(line: 204, column: 86, scope: !410)
!419 = !DILocation(line: 206, column: 19, scope: !410)
!420 = !DILocation(line: 206, column: 22, scope: !410)
!421 = !DILocation(line: 206, column: 15, scope: !410)
!422 = !DILocation(line: 207, column: 4, scope: !410)
!423 = !DILocation(line: 207, column: 9, scope: !410)
!424 = !DILocation(line: 207, column: 12, scope: !410)
!425 = !DILocation(line: 206, column: 44, scope: !410)
!426 = !DILocation(line: 207, column: 37, scope: !410)
!427 = !DILocation(line: 206, column: 2, scope: !410)
!428 = distinct !DISubprogram(name: "variable_test_bit", scope: !242, file: !242, line: 224, type: !411, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12, retainedNodes: !429)
!429 = !{!430, !431, !432}
!430 = !DILocalVariable(name: "nr", arg: 1, scope: !428, file: !242, line: 224, type: !413)
!431 = !DILocalVariable(name: "addr", arg: 2, scope: !428, file: !242, line: 224, type: !248)
!432 = !DILocalVariable(name: "oldbit", scope: !428, file: !242, line: 226, type: !245)
!433 = !DILocation(line: 224, column: 52, scope: !428)
!434 = !DILocation(line: 224, column: 86, scope: !428)
!435 = !DILocation(line: 226, column: 2, scope: !428)
!436 = !DILocation(line: 226, column: 7, scope: !428)
!437 = !DILocation(line: 231, column: 33, scope: !428)
!438 = !DILocation(line: 231, column: 46, scope: !428)
!439 = !DILocation(line: 228, column: 2, scope: !428)
!440 = !{i64 2147890848, i64 2147890922}
!441 = !DILocation(line: 233, column: 9, scope: !428)
!442 = !{i8 0, i8 2}
!443 = !{}
!444 = !DILocation(line: 234, column: 1, scope: !428)
!445 = !DILocation(line: 233, column: 2, scope: !428)
!446 = distinct !DISubprogram(name: "native_wbinvd", scope: !289, file: !289, line: 118, type: !290, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !12)
!447 = !DILocation(line: 120, column: 2, scope: !446)
!448 = !{i64 2050745}
!449 = !DILocation(line: 121, column: 1, scope: !446)
