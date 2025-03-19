; ModuleID = 'drivers/acpi/acpica/hwxfsleep.c'
source_filename = "drivers/acpi/acpica/hwxfsleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_set_firmware_waking_vector: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_set_firmware_waking_vector ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_enter_sleep_state_s4bios: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_enter_sleep_state_s4bios ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_enter_sleep_state_prep: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_enter_sleep_state_prep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_enter_sleep_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_enter_sleep_state ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_leave_sleep_state_prep: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_leave_sleep_state_prep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_leave_sleep_state: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_leave_sleep_state ; .previous"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_table_facs = type { [4 x i8], i32, i32, i32, i32, i32, i64, i8, [3 x i8], i32, [24 x i8] }
%struct.acpi_object_list = type { i32, ptr }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.anon = type { i32, i64 }

@acpi_gbl_FACS = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_set_firmware_waking_vector174 = internal global ptr @acpi_set_firmware_waking_vector, section ".discard.addressable", align 8, !dbg !0
@acpi_gbl_system_awake_and_running = external dso_local global i8, align 1
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@__UNIQUE_ID___addressable_acpi_enter_sleep_state_s4bios175 = internal global ptr @acpi_enter_sleep_state_s4bios, section ".discard.addressable", align 8, !dbg !17
@acpi_gbl_sleep_type_a = external dso_local global i8, align 1
@acpi_gbl_sleep_type_b = external dso_local global i8, align 1
@acpi_gbl_sleep_type_a_s0 = external dso_local global i8, align 1
@acpi_gbl_sleep_type_b_s0 = external dso_local global i8, align 1
@.str = private unnamed_addr constant [6 x i8] c"\\_PTS\00", align 1, !dbg !19
@.str.1 = private unnamed_addr constant [10 x i8] c"\\_SI._SST\00", align 1, !dbg !25
@__UNIQUE_ID___addressable_acpi_enter_sleep_state_prep176 = internal global ptr @acpi_enter_sleep_state_prep, section ".discard.addressable", align 8, !dbg !30
@_acpi_module_name = internal constant [10 x i8] c"hwxfsleep\00", align 1, !dbg !43
@.str.2 = private unnamed_addr constant [41 x i8] c"Sleep values out of range: A=0x%X B=0x%X\00", align 1, !dbg !32
@acpi_gbl_reduced_hardware = external dso_local global i8, align 1
@__UNIQUE_ID___addressable_acpi_enter_sleep_state177 = internal global ptr @acpi_enter_sleep_state, section ".discard.addressable", align 8, !dbg !37
@__UNIQUE_ID___addressable_acpi_leave_sleep_state_prep178 = internal global ptr @acpi_leave_sleep_state_prep, section ".discard.addressable", align 8, !dbg !39
@__UNIQUE_ID___addressable_acpi_leave_sleep_state179 = internal global ptr @acpi_leave_sleep_state, section ".discard.addressable", align 8, !dbg !41
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_set_firmware_waking_vector174, ptr @__UNIQUE_ID___addressable_acpi_enter_sleep_state_s4bios175, ptr @__UNIQUE_ID___addressable_acpi_enter_sleep_state_prep176, ptr @__UNIQUE_ID___addressable_acpi_enter_sleep_state177, ptr @__UNIQUE_ID___addressable_acpi_leave_sleep_state_prep178, ptr @__UNIQUE_ID___addressable_acpi_leave_sleep_state179], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_set_firmware_waking_vector(i64 noundef %physical_address, i64 noundef %physical_address64) #0 align 16 !dbg !56 {
entry:
  %physical_address.addr = alloca i64, align 8
  %physical_address64.addr = alloca i64, align 8
  store i64 %physical_address, ptr %physical_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physical_address.addr, metadata !64, metadata !DIExpression()), !dbg !66
  store i64 %physical_address64, ptr %physical_address64.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physical_address64.addr, metadata !65, metadata !DIExpression()), !dbg !67
  %0 = load ptr, ptr @acpi_gbl_FACS, align 8, !dbg !68
  %tobool = icmp ne ptr %0, null, !dbg !68
  br i1 %tobool, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @acpi_gbl_FACS, align 8, !dbg !71
  %2 = load i64, ptr %physical_address.addr, align 8, !dbg !73
  %3 = load i64, ptr %physical_address64.addr, align 8, !dbg !74
  %call = call i32 @acpi_hw_set_firmware_waking_vector(ptr noundef %1, i64 noundef %2, i64 noundef %3) #4, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !77
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_set_firmware_waking_vector(ptr noundef %facs, i64 noundef %physical_address, i64 noundef %physical_address64) #0 align 16 !dbg !78 {
entry:
  %facs.addr = alloca ptr, align 8
  %physical_address.addr = alloca i64, align 8
  %physical_address64.addr = alloca i64, align 8
  store ptr %facs, ptr %facs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %facs.addr, metadata !106, metadata !DIExpression()), !dbg !109
  store i64 %physical_address, ptr %physical_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physical_address.addr, metadata !107, metadata !DIExpression()), !dbg !110
  store i64 %physical_address64, ptr %physical_address64.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %physical_address64.addr, metadata !108, metadata !DIExpression()), !dbg !111
  %0 = load i64, ptr %physical_address.addr, align 8, !dbg !112
  %conv = trunc i64 %0 to i32, !dbg !113
  %1 = load ptr, ptr %facs.addr, align 8, !dbg !114
  %firmware_waking_vector = getelementptr inbounds %struct.acpi_table_facs, ptr %1, i32 0, i32 3, !dbg !115
  store i32 %conv, ptr %firmware_waking_vector, align 1, !dbg !116
  %2 = load ptr, ptr %facs.addr, align 8, !dbg !117
  %length = getelementptr inbounds %struct.acpi_table_facs, ptr %2, i32 0, i32 1, !dbg !119
  %3 = load i32, ptr %length, align 1, !dbg !119
  %cmp = icmp ugt i32 %3, 32, !dbg !120
  br i1 %cmp, label %if.then, label %if.end7, !dbg !121

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %facs.addr, align 8, !dbg !122
  %version = getelementptr inbounds %struct.acpi_table_facs, ptr %4, i32 0, i32 7, !dbg !125
  %5 = load i8, ptr %version, align 1, !dbg !125
  %conv2 = zext i8 %5 to i32, !dbg !122
  %cmp3 = icmp sge i32 %conv2, 1, !dbg !126
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !127

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %physical_address64.addr, align 8, !dbg !128
  %7 = load ptr, ptr %facs.addr, align 8, !dbg !130
  %xfirmware_waking_vector = getelementptr inbounds %struct.acpi_table_facs, ptr %7, i32 0, i32 6, !dbg !131
  store i64 %6, ptr %xfirmware_waking_vector, align 1, !dbg !132
  br label %if.end, !dbg !133

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %facs.addr, align 8, !dbg !134
  %xfirmware_waking_vector6 = getelementptr inbounds %struct.acpi_table_facs, ptr %8, i32 0, i32 6, !dbg !136
  store i64 0, ptr %xfirmware_waking_vector6, align 1, !dbg !137
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %if.end7, !dbg !138

if.end7:                                          ; preds = %if.end, %entry
  ret i32 0, !dbg !139
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_enter_sleep_state_s4bios() #0 align 16 !dbg !140 {
entry:
  %retval = alloca i32, align 4
  %in_value = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_value) #5, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %in_value, metadata !144, metadata !DIExpression()), !dbg !147
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %status, metadata !145, metadata !DIExpression()), !dbg !149
  %call = call i32 @acpi_write_bit_register(i32 noundef 6, i32 noundef 1) #4, !dbg !150
  store i32 %call, ptr %status, align 4, !dbg !151
  %0 = load i32, ptr %status, align 4, !dbg !152
  %tobool = icmp ne i32 %0, 0, !dbg !152
  br i1 %tobool, label %if.then, label %if.end, !dbg !154

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %status, align 4, !dbg !155
  store i32 %1, ptr %retval, align 4, !dbg !155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !155

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_hw_clear_acpi_status() #4, !dbg !157
  store i32 %call1, ptr %status, align 4, !dbg !158
  %2 = load i32, ptr %status, align 4, !dbg !159
  %tobool2 = icmp ne i32 %2, 0, !dbg !159
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !161

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !162
  store i32 %3, ptr %retval, align 4, !dbg !162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !162

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @acpi_hw_disable_all_gpes() #4, !dbg !164
  store i32 %call5, ptr %status, align 4, !dbg !165
  %4 = load i32, ptr %status, align 4, !dbg !166
  %tobool6 = icmp ne i32 %4, 0, !dbg !166
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !168

if.then7:                                         ; preds = %if.end4
  %5 = load i32, ptr %status, align 4, !dbg !169
  store i32 %5, ptr %retval, align 4, !dbg !169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !169

if.end8:                                          ; preds = %if.end4
  store i8 0, ptr @acpi_gbl_system_awake_and_running, align 1, !dbg !171
  %call9 = call i32 @acpi_hw_enable_all_wakeup_gpes() #4, !dbg !172
  store i32 %call9, ptr %status, align 4, !dbg !173
  %6 = load i32, ptr %status, align 4, !dbg !174
  %tobool10 = icmp ne i32 %6, 0, !dbg !174
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !176

if.then11:                                        ; preds = %if.end8
  %7 = load i32, ptr %status, align 4, !dbg !177
  store i32 %7, ptr %retval, align 4, !dbg !177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !177

if.end12:                                         ; preds = %if.end8
  %8 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 6), align 1, !dbg !179
  %conv = zext i32 %8 to i64, !dbg !180
  %9 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 9), align 1, !dbg !181
  %conv13 = zext i8 %9 to i32, !dbg !182
  %call14 = call i32 @acpi_hw_write_port(i64 noundef %conv, i32 noundef %conv13, i32 noundef 8) #4, !dbg !183
  store i32 %call14, ptr %status, align 4, !dbg !184
  %10 = load i32, ptr %status, align 4, !dbg !185
  %tobool15 = icmp ne i32 %10, 0, !dbg !185
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !187

if.then16:                                        ; preds = %if.end12
  %11 = load i32, ptr %status, align 4, !dbg !188
  store i32 %11, ptr %retval, align 4, !dbg !188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !188

if.end17:                                         ; preds = %if.end12
  br label %do.body, !dbg !190

do.body:                                          ; preds = %do.cond, %if.end17
  call void @acpi_os_stall(i32 noundef 1000) #4, !dbg !191
  %call18 = call i32 @acpi_read_bit_register(i32 noundef 6, ptr noundef %in_value) #4, !dbg !193
  store i32 %call18, ptr %status, align 4, !dbg !194
  %12 = load i32, ptr %status, align 4, !dbg !195
  %tobool19 = icmp ne i32 %12, 0, !dbg !195
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !197

if.then20:                                        ; preds = %do.body
  %13 = load i32, ptr %status, align 4, !dbg !198
  store i32 %13, ptr %retval, align 4, !dbg !198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !198

if.end21:                                         ; preds = %do.body
  br label %do.cond, !dbg !200

do.cond:                                          ; preds = %if.end21
  %14 = load i32, ptr %in_value, align 4, !dbg !201
  %tobool22 = icmp ne i32 %14, 0, !dbg !202
  %lnot = xor i1 %tobool22, true, !dbg !202
  br i1 %lnot, label %do.body, label %do.end, !dbg !200, !llvm.loop !203

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4, !dbg !207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !207

cleanup:                                          ; preds = %do.end, %if.then20, %if.then16, %if.then11, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !208
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_value) #5, !dbg !208
  %15 = load i32, ptr %retval, align 4, !dbg !208
  ret i32 %15, !dbg !208
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !209 dso_local i32 @acpi_write_bit_register(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !213 dso_local i32 @acpi_hw_clear_acpi_status() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !215 dso_local i32 @acpi_hw_disable_all_gpes() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !216 dso_local i32 @acpi_hw_enable_all_wakeup_gpes() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !217 dso_local i32 @acpi_hw_write_port(i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !221 dso_local void @acpi_os_stall(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !225 dso_local i32 @acpi_read_bit_register(i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_enter_sleep_state_prep(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !229 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %arg_list = alloca %struct.acpi_object_list, align 8
  %arg = alloca %union.acpi_object, align 8
  %sst_value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !233, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %status, metadata !234, metadata !DIExpression()), !dbg !294
  call void @llvm.lifetime.start.p0(i64 16, ptr %arg_list) #5, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !235, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg) #5, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !290, metadata !DIExpression()), !dbg !298
  call void @llvm.lifetime.start.p0(i64 4, ptr %sst_value) #5, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %sst_value, metadata !291, metadata !DIExpression()), !dbg !300
  %0 = load i8, ptr %sleep_state.addr, align 1, !dbg !301
  %call = call i32 @acpi_get_sleep_type_data(i8 noundef zeroext %0, ptr noundef @acpi_gbl_sleep_type_a, ptr noundef @acpi_gbl_sleep_type_b) #4, !dbg !302
  store i32 %call, ptr %status, align 4, !dbg !303
  %1 = load i32, ptr %status, align 4, !dbg !304
  %tobool = icmp ne i32 %1, 0, !dbg !304
  br i1 %tobool, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !307
  store i32 %2, ptr %retval, align 4, !dbg !307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !307

if.end:                                           ; preds = %entry
  %call1 = call i32 @acpi_get_sleep_type_data(i8 noundef zeroext 0, ptr noundef @acpi_gbl_sleep_type_a_s0, ptr noundef @acpi_gbl_sleep_type_b_s0) #4, !dbg !309
  store i32 %call1, ptr %status, align 4, !dbg !310
  %3 = load i32, ptr %status, align 4, !dbg !311
  %tobool2 = icmp ne i32 %3, 0, !dbg !311
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !313

if.then3:                                         ; preds = %if.end
  store i8 -1, ptr @acpi_gbl_sleep_type_a_s0, align 1, !dbg !314
  br label %if.end4, !dbg !316

if.end4:                                          ; preds = %if.then3, %if.end
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 0, !dbg !317
  store i32 1, ptr %count, align 8, !dbg !318
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 1, !dbg !319
  store ptr %arg, ptr %pointer, align 8, !dbg !320
  store i32 1, ptr %arg, align 8, !dbg !321
  %4 = load i8, ptr %sleep_state.addr, align 1, !dbg !322
  %conv = zext i8 %4 to i64, !dbg !322
  %value = getelementptr inbounds %struct.anon, ptr %arg, i32 0, i32 1, !dbg !323
  store i64 %conv, ptr %value, align 8, !dbg !324
  %call5 = call i32 @acpi_evaluate_object(ptr noundef null, ptr noundef @.str, ptr noundef %arg_list, ptr noundef null) #4, !dbg !325
  store i32 %call5, ptr %status, align 4, !dbg !326
  %5 = load i32, ptr %status, align 4, !dbg !327
  %tobool6 = icmp ne i32 %5, 0, !dbg !327
  br i1 %tobool6, label %land.lhs.true, label %if.end9, !dbg !329

land.lhs.true:                                    ; preds = %if.end4
  %6 = load i32, ptr %status, align 4, !dbg !330
  %cmp = icmp ne i32 %6, 5, !dbg !331
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !332

if.then8:                                         ; preds = %land.lhs.true
  %7 = load i32, ptr %status, align 4, !dbg !333
  store i32 %7, ptr %retval, align 4, !dbg !333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !333

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %8 = load i8, ptr %sleep_state.addr, align 1, !dbg !335
  %conv10 = zext i8 %8 to i32, !dbg !335
  switch i32 %conv10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb11
    i32 3, label %sw.bb11
    i32 4, label %sw.bb12
  ], !dbg !336

sw.bb:                                            ; preds = %if.end9
  store i32 1, ptr %sst_value, align 4, !dbg !337
  br label %sw.epilog, !dbg !339

sw.bb11:                                          ; preds = %if.end9, %if.end9, %if.end9
  store i32 3, ptr %sst_value, align 4, !dbg !340
  br label %sw.epilog, !dbg !341

sw.bb12:                                          ; preds = %if.end9
  store i32 4, ptr %sst_value, align 4, !dbg !342
  br label %sw.epilog, !dbg !343

sw.default:                                       ; preds = %if.end9
  store i32 0, ptr %sst_value, align 4, !dbg !344
  br label %sw.epilog, !dbg !345

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb
  %9 = load i32, ptr %sst_value, align 4, !dbg !346
  call void @acpi_hw_execute_sleep_method(ptr noundef @.str.1, i32 noundef %9) #4, !dbg !347
  store i32 0, ptr %retval, align 4, !dbg !348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !348

cleanup:                                          ; preds = %sw.epilog, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sst_value) #5, !dbg !349
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg) #5, !dbg !349
  call void @llvm.lifetime.end.p0(i64 16, ptr %arg_list) #5, !dbg !349
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !349
  %10 = load i32, ptr %retval, align 4, !dbg !349
  ret i32 %10, !dbg !349
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !350 dso_local i32 @acpi_get_sleep_type_data(i8 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !353 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !364 dso_local void @acpi_hw_execute_sleep_method(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_enter_sleep_state(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !367 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !369, metadata !DIExpression()), !dbg !371
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %status, metadata !370, metadata !DIExpression()), !dbg !373
  %0 = load i8, ptr @acpi_gbl_sleep_type_a, align 1, !dbg !374
  %conv = zext i8 %0 to i32, !dbg !374
  %cmp = icmp sgt i32 %conv, 7, !dbg !376
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !377

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr @acpi_gbl_sleep_type_b, align 1, !dbg !378
  %conv2 = zext i8 %1 to i32, !dbg !378
  %cmp3 = icmp sgt i32 %conv2, 7, !dbg !379
  br i1 %cmp3, label %if.then, label %if.end, !dbg !380

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8, ptr @acpi_gbl_sleep_type_a, align 1, !dbg !381
  %conv5 = zext i8 %2 to i32, !dbg !381
  %3 = load i8, ptr @acpi_gbl_sleep_type_b, align 1, !dbg !381
  %conv6 = zext i8 %3 to i32, !dbg !381
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 294, ptr noundef @.str.2, i32 noundef %conv5, i32 noundef %conv6) #4, !dbg !381
  store i32 12292, ptr %retval, align 4, !dbg !383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !383

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !384
  %tobool = icmp ne i8 %4, 0, !dbg !384
  br i1 %tobool, label %if.else, label %if.then7, !dbg !386

if.then7:                                         ; preds = %if.end
  %5 = load i8, ptr %sleep_state.addr, align 1, !dbg !387
  %call = call i32 @acpi_hw_legacy_sleep(i8 noundef zeroext %5) #4, !dbg !388
  store i32 %call, ptr %status, align 4, !dbg !389
  br label %if.end9, !dbg !390

if.else:                                          ; preds = %if.end
  %6 = load i8, ptr %sleep_state.addr, align 1, !dbg !391
  %call8 = call i32 @acpi_hw_extended_sleep(i8 noundef zeroext %6) #4, !dbg !392
  store i32 %call8, ptr %status, align 4, !dbg !393
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %7 = load i32, ptr %status, align 4, !dbg !394
  store i32 %7, ptr %retval, align 4, !dbg !394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !394

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !395
  %8 = load i32, ptr %retval, align 4, !dbg !395
  ret i32 %8, !dbg !395
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !396 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !400 dso_local i32 @acpi_hw_legacy_sleep(i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !401 dso_local i32 @acpi_hw_extended_sleep(i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_leave_sleep_state_prep(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !402 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !404, metadata !DIExpression()), !dbg !406
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %status, metadata !405, metadata !DIExpression()), !dbg !408
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !409
  %tobool = icmp ne i8 %0, 0, !dbg !409
  br i1 %tobool, label %if.else, label %if.then, !dbg !411

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %sleep_state.addr, align 1, !dbg !412
  %call = call i32 @acpi_hw_legacy_wake_prep(i8 noundef zeroext %1) #4, !dbg !413
  store i32 %call, ptr %status, align 4, !dbg !414
  br label %if.end, !dbg !415

if.else:                                          ; preds = %entry
  %2 = load i8, ptr %sleep_state.addr, align 1, !dbg !416
  %call1 = call i32 @acpi_hw_extended_wake_prep(i8 noundef zeroext %2) #4, !dbg !417
  store i32 %call1, ptr %status, align 4, !dbg !418
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %status, align 4, !dbg !419
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !420
  ret i32 %3, !dbg !419
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !421 dso_local i32 @acpi_hw_legacy_wake_prep(i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !422 dso_local i32 @acpi_hw_extended_wake_prep(i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_leave_sleep_state(i8 noundef zeroext %sleep_state) #0 align 16 !dbg !423 {
entry:
  %sleep_state.addr = alloca i8, align 1
  %status = alloca i32, align 4
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !425, metadata !DIExpression()), !dbg !427
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %status, metadata !426, metadata !DIExpression()), !dbg !429
  %0 = load i8, ptr @acpi_gbl_reduced_hardware, align 1, !dbg !430
  %tobool = icmp ne i8 %0, 0, !dbg !430
  br i1 %tobool, label %if.else, label %if.then, !dbg !432

if.then:                                          ; preds = %entry
  %1 = load i8, ptr %sleep_state.addr, align 1, !dbg !433
  %call = call i32 @acpi_hw_legacy_wake(i8 noundef zeroext %1) #4, !dbg !434
  store i32 %call, ptr %status, align 4, !dbg !435
  br label %if.end, !dbg !436

if.else:                                          ; preds = %entry
  %2 = load i8, ptr %sleep_state.addr, align 1, !dbg !437
  %call1 = call i32 @acpi_hw_extended_wake(i8 noundef zeroext %2) #4, !dbg !438
  store i32 %call1, ptr %status, align 4, !dbg !439
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %status, align 4, !dbg !440
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !441
  ret i32 %3, !dbg !440
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !442 dso_local i32 @acpi_hw_legacy_wake(i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !443 dso_local i32 @acpi_hw_extended_wake(i8 noundef zeroext) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_set_firmware_waking_vector174", scope: !2, file: !3, line: 116, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.hwxfsleep.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22hwxfsleep\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/hwxfsleep.ll drivers/acpi/acpica/hwxfsleep.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwxfsleep.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97910ca302486d56388f7cf137253a7c")
!4 = !{!5, !12, !7, !13}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !6, line: 421, baseType: !7)
!6 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!0, !17, !19, !25, !30, !32, !37, !39, !41, !43}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_enter_sleep_state_s4bios175", scope: !2, file: !3, line: 184, type: !12, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 48, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24}
!24 = !DISubrange(count: 6)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 80, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 10)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_enter_sleep_state_prep176", scope: !2, file: !3, line: 272, type: !12, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !3, line: 294, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 328, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 41)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_enter_sleep_state177", scope: !2, file: !3, line: 308, type: !12, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_leave_sleep_state_prep178", scope: !2, file: !3, line: 339, type: !12, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_leave_sleep_state179", scope: !2, file: !3, line: 368, type: !12, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 16, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 80, elements: !28)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 8, !"cf-protection-branch", i32 1}
!51 = !{i32 4, !"function_return_thunk_extern", i32 1}
!52 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!53 = !{i32 1, !"Code Model", i32 2}
!54 = !{i32 1, !"override-stack-alignment", i32 8}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = distinct !DISubprogram(name: "acpi_set_firmware_waking_vector", scope: !3, file: !3, line: 101, type: !57, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!57 = !DISubroutineType(types: !58)
!58 = !{!5, !59, !59}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !6, line: 129, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !8, line: 23, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !10, line: 31, baseType: !62)
!62 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "physical_address", arg: 1, scope: !56, file: !3, line: 101, type: !59)
!65 = !DILocalVariable(name: "physical_address64", arg: 2, scope: !56, file: !3, line: 102, type: !59)
!66 = !DILocation(line: 101, column: 55, scope: !56)
!67 = !DILocation(line: 102, column: 27, scope: !56)
!68 = !DILocation(line: 107, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !56, file: !3, line: 107, column: 6)
!70 = !DILocation(line: 107, column: 6, scope: !56)
!71 = !DILocation(line: 108, column: 44, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !3, line: 107, column: 21)
!73 = !DILocation(line: 109, column: 9, scope: !72)
!74 = !DILocation(line: 110, column: 9, scope: !72)
!75 = !DILocation(line: 108, column: 9, scope: !72)
!76 = !DILocation(line: 111, column: 2, scope: !72)
!77 = !DILocation(line: 113, column: 2, scope: !56)
!78 = distinct !DISubprogram(name: "acpi_hw_set_firmware_waking_vector", scope: !3, file: !3, line: 50, type: !79, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!79 = !DISubroutineType(types: !80)
!80 = !{!5, !81, !59, !59}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_facs", file: !83, line: 162, size: 512, elements: !84)
!83 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!84 = !{!85, !89, !90, !91, !92, !93, !94, !95, !96, !100, !101}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !82, file: !83, line: 163, baseType: !86, size: 32)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 4)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !83, line: 164, baseType: !7, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_signature", scope: !82, file: !83, line: 165, baseType: !7, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_waking_vector", scope: !82, file: !83, line: 166, baseType: !7, size: 32, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "global_lock", scope: !82, file: !83, line: 167, baseType: !7, size: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !83, line: 168, baseType: !7, size: 32, offset: 160)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "xfirmware_waking_vector", scope: !82, file: !83, line: 169, baseType: !60, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !82, file: !83, line: 170, baseType: !13, size: 8, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !82, file: !83, line: 171, baseType: !97, size: 24, offset: 264)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 3)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ospm_flags", scope: !82, file: !83, line: 172, baseType: !7, size: 32, offset: 288)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !82, file: !83, line: 173, baseType: !102, size: 192, offset: 320)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 24)
!105 = !{!106, !107, !108}
!106 = !DILocalVariable(name: "facs", arg: 1, scope: !78, file: !3, line: 50, type: !81)
!107 = !DILocalVariable(name: "physical_address", arg: 2, scope: !78, file: !3, line: 51, type: !59)
!108 = !DILocalVariable(name: "physical_address64", arg: 3, scope: !78, file: !3, line: 52, type: !59)
!109 = !DILocation(line: 50, column: 60, scope: !78)
!110 = !DILocation(line: 51, column: 30, scope: !78)
!111 = !DILocation(line: 52, column: 30, scope: !78)
!112 = !DILocation(line: 67, column: 38, scope: !78)
!113 = !DILocation(line: 67, column: 33, scope: !78)
!114 = !DILocation(line: 67, column: 2, scope: !78)
!115 = !DILocation(line: 67, column: 8, scope: !78)
!116 = !DILocation(line: 67, column: 31, scope: !78)
!117 = !DILocation(line: 69, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !78, file: !3, line: 69, column: 6)
!119 = !DILocation(line: 69, column: 12, scope: !118)
!120 = !DILocation(line: 69, column: 19, scope: !118)
!121 = !DILocation(line: 69, column: 6, scope: !78)
!122 = !DILocation(line: 70, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 70, column: 7)
!124 = distinct !DILexicalBlock(scope: !118, file: !3, line: 69, column: 25)
!125 = !DILocation(line: 70, column: 13, scope: !123)
!126 = !DILocation(line: 70, column: 21, scope: !123)
!127 = !DILocation(line: 70, column: 7, scope: !124)
!128 = !DILocation(line: 74, column: 36, scope: !129)
!129 = distinct !DILexicalBlock(scope: !123, file: !3, line: 70, column: 27)
!130 = !DILocation(line: 74, column: 4, scope: !129)
!131 = !DILocation(line: 74, column: 10, scope: !129)
!132 = !DILocation(line: 74, column: 34, scope: !129)
!133 = !DILocation(line: 75, column: 3, scope: !129)
!134 = !DILocation(line: 78, column: 4, scope: !135)
!135 = distinct !DILexicalBlock(scope: !123, file: !3, line: 75, column: 10)
!136 = !DILocation(line: 78, column: 10, scope: !135)
!137 = !DILocation(line: 78, column: 34, scope: !135)
!138 = !DILocation(line: 80, column: 2, scope: !124)
!139 = !DILocation(line: 82, column: 2, scope: !78)
!140 = distinct !DISubprogram(name: "acpi_enter_sleep_state_s4bios", scope: !3, file: !3, line: 130, type: !141, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!5}
!143 = !{!144, !145}
!144 = !DILocalVariable(name: "in_value", scope: !140, file: !3, line: 132, type: !7)
!145 = !DILocalVariable(name: "status", scope: !140, file: !3, line: 133, type: !5)
!146 = !DILocation(line: 132, column: 2, scope: !140)
!147 = !DILocation(line: 132, column: 6, scope: !140)
!148 = !DILocation(line: 133, column: 2, scope: !140)
!149 = !DILocation(line: 133, column: 14, scope: !140)
!150 = !DILocation(line: 140, column: 6, scope: !140)
!151 = !DILocation(line: 139, column: 9, scope: !140)
!152 = !DILocation(line: 141, column: 6, scope: !153)
!153 = distinct !DILexicalBlock(scope: !140, file: !3, line: 141, column: 6)
!154 = !DILocation(line: 141, column: 6, scope: !140)
!155 = !DILocation(line: 142, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !3, line: 141, column: 28)
!157 = !DILocation(line: 145, column: 11, scope: !140)
!158 = !DILocation(line: 145, column: 9, scope: !140)
!159 = !DILocation(line: 146, column: 6, scope: !160)
!160 = distinct !DILexicalBlock(scope: !140, file: !3, line: 146, column: 6)
!161 = !DILocation(line: 146, column: 6, scope: !140)
!162 = !DILocation(line: 147, column: 3, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !3, line: 146, column: 28)
!164 = !DILocation(line: 154, column: 11, scope: !140)
!165 = !DILocation(line: 154, column: 9, scope: !140)
!166 = !DILocation(line: 155, column: 6, scope: !167)
!167 = distinct !DILexicalBlock(scope: !140, file: !3, line: 155, column: 6)
!168 = !DILocation(line: 155, column: 6, scope: !140)
!169 = !DILocation(line: 156, column: 3, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !3, line: 155, column: 28)
!171 = !DILocation(line: 158, column: 36, scope: !140)
!172 = !DILocation(line: 160, column: 11, scope: !140)
!173 = !DILocation(line: 160, column: 9, scope: !140)
!174 = !DILocation(line: 161, column: 6, scope: !175)
!175 = distinct !DILexicalBlock(scope: !140, file: !3, line: 161, column: 6)
!176 = !DILocation(line: 161, column: 6, scope: !140)
!177 = !DILocation(line: 162, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !3, line: 161, column: 28)
!179 = !DILocation(line: 165, column: 44, scope: !140)
!180 = !DILocation(line: 165, column: 30, scope: !140)
!181 = !DILocation(line: 166, column: 28, scope: !140)
!182 = !DILocation(line: 166, column: 9, scope: !140)
!183 = !DILocation(line: 165, column: 11, scope: !140)
!184 = !DILocation(line: 165, column: 9, scope: !140)
!185 = !DILocation(line: 167, column: 6, scope: !186)
!186 = distinct !DILexicalBlock(scope: !140, file: !3, line: 167, column: 6)
!187 = !DILocation(line: 167, column: 6, scope: !140)
!188 = !DILocation(line: 168, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !3, line: 167, column: 28)
!190 = !DILocation(line: 171, column: 2, scope: !140)
!191 = !DILocation(line: 172, column: 3, scope: !192)
!192 = distinct !DILexicalBlock(scope: !140, file: !3, line: 171, column: 5)
!193 = !DILocation(line: 174, column: 7, scope: !192)
!194 = !DILocation(line: 173, column: 10, scope: !192)
!195 = !DILocation(line: 175, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !3, line: 175, column: 7)
!197 = !DILocation(line: 175, column: 7, scope: !192)
!198 = !DILocation(line: 176, column: 4, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !3, line: 175, column: 29)
!200 = !DILocation(line: 179, column: 2, scope: !192)
!201 = !DILocation(line: 179, column: 12, scope: !140)
!202 = !DILocation(line: 179, column: 11, scope: !140)
!203 = distinct !{!203, !190, !204, !205, !206}
!204 = !DILocation(line: 179, column: 20, scope: !140)
!205 = !{!"llvm.loop.mustprogress"}
!206 = !{!"llvm.loop.unroll.disable"}
!207 = !DILocation(line: 181, column: 2, scope: !140)
!208 = !DILocation(line: 182, column: 1, scope: !140)
!209 = !DISubprogram(name: "acpi_write_bit_register", scope: !210, file: !210, line: 860, type: !211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!211 = !DISubroutineType(types: !212)
!212 = !{!5, !7, !7}
!213 = !DISubprogram(name: "acpi_hw_clear_acpi_status", scope: !214, file: !214, line: 47, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!214 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!215 = !DISubprogram(name: "acpi_hw_disable_all_gpes", scope: !210, file: !210, line: 765, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DISubprogram(name: "acpi_hw_enable_all_wakeup_gpes", scope: !210, file: !210, line: 766, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!217 = !DISubprogram(name: "acpi_hw_write_port", scope: !214, file: !214, line: 74, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{!5, !220, !7, !7}
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6, line: 128, baseType: !60)
!221 = !DISubprogram(name: "acpi_os_stall", scope: !222, file: !222, line: 260, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!223 = !DISubroutineType(types: !224)
!224 = !{null, !7}
!225 = !DISubprogram(name: "acpi_read_bit_register", scope: !210, file: !210, line: 856, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!226 = !DISubroutineType(types: !227)
!227 = !{!5, !7, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!229 = distinct !DISubprogram(name: "acpi_enter_sleep_state_prep", scope: !3, file: !3, line: 202, type: !230, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{!5, !13}
!232 = !{!233, !234, !235, !290, !291}
!233 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !229, file: !3, line: 202, type: !13)
!234 = !DILocalVariable(name: "status", scope: !229, file: !3, line: 204, type: !5)
!235 = !DILocalVariable(name: "arg_list", scope: !229, file: !3, line: 205, type: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !6, line: 956, size: 128, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !236, file: !6, line: 957, baseType: !7, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !236, file: !6, line: 958, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !6, line: 908, size: 192, elements: !242)
!242 = !{!243, !245, !250, !257, !264, !270, !277, !284}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !241, file: !6, line: 909, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6, line: 644, baseType: !7)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !241, file: !6, line: 913, baseType: !246, size: 128)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !6, line: 910, size: 128, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !246, file: !6, line: 911, baseType: !244, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !246, file: !6, line: 912, baseType: !60, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !241, file: !6, line: 919, baseType: !251, size: 128)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !6, line: 915, size: 128, elements: !252)
!252 = !{!253, !254, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !251, file: !6, line: 916, baseType: !244, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !251, file: !6, line: 917, baseType: !7, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !251, file: !6, line: 918, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !241, file: !6, line: 925, baseType: !258, size: 128)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !6, line: 921, size: 128, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !258, file: !6, line: 922, baseType: !244, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !258, file: !6, line: 923, baseType: !7, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !258, file: !6, line: 924, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !241, file: !6, line: 931, baseType: !265, size: 128)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !6, line: 927, size: 128, elements: !266)
!266 = !{!267, !268, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !265, file: !6, line: 928, baseType: !244, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !265, file: !6, line: 929, baseType: !7, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !265, file: !6, line: 930, baseType: !240, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !241, file: !6, line: 937, baseType: !271, size: 128)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !6, line: 933, size: 128, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !271, file: !6, line: 934, baseType: !244, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !271, file: !6, line: 935, baseType: !244, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !271, file: !6, line: 936, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6, line: 424, baseType: !12)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !241, file: !6, line: 944, baseType: !278, size: 192)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !6, line: 939, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !278, file: !6, line: 940, baseType: !244, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !278, file: !6, line: 941, baseType: !7, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !278, file: !6, line: 942, baseType: !220, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !278, file: !6, line: 943, baseType: !7, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !241, file: !6, line: 950, baseType: !285, size: 96)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !6, line: 946, size: 96, elements: !286)
!286 = !{!287, !288, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !285, file: !6, line: 947, baseType: !244, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !285, file: !6, line: 948, baseType: !7, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !285, file: !6, line: 949, baseType: !7, size: 32, offset: 64)
!290 = !DILocalVariable(name: "arg", scope: !229, file: !3, line: 206, type: !241)
!291 = !DILocalVariable(name: "sst_value", scope: !229, file: !3, line: 207, type: !7)
!292 = !DILocation(line: 202, column: 44, scope: !229)
!293 = !DILocation(line: 204, column: 2, scope: !229)
!294 = !DILocation(line: 204, column: 14, scope: !229)
!295 = !DILocation(line: 205, column: 2, scope: !229)
!296 = !DILocation(line: 205, column: 26, scope: !229)
!297 = !DILocation(line: 206, column: 2, scope: !229)
!298 = !DILocation(line: 206, column: 20, scope: !229)
!299 = !DILocation(line: 207, column: 2, scope: !229)
!300 = !DILocation(line: 207, column: 6, scope: !229)
!301 = !DILocation(line: 211, column: 36, scope: !229)
!302 = !DILocation(line: 211, column: 11, scope: !229)
!303 = !DILocation(line: 211, column: 9, scope: !229)
!304 = !DILocation(line: 214, column: 6, scope: !305)
!305 = distinct !DILexicalBlock(scope: !229, file: !3, line: 214, column: 6)
!306 = !DILocation(line: 214, column: 6, scope: !229)
!307 = !DILocation(line: 215, column: 3, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !3, line: 214, column: 28)
!309 = !DILocation(line: 218, column: 11, scope: !229)
!310 = !DILocation(line: 218, column: 9, scope: !229)
!311 = !DILocation(line: 221, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !229, file: !3, line: 221, column: 6)
!313 = !DILocation(line: 221, column: 6, scope: !229)
!314 = !DILocation(line: 222, column: 28, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 221, column: 28)
!316 = !DILocation(line: 223, column: 2, scope: !315)
!317 = !DILocation(line: 227, column: 11, scope: !229)
!318 = !DILocation(line: 227, column: 17, scope: !229)
!319 = !DILocation(line: 228, column: 11, scope: !229)
!320 = !DILocation(line: 228, column: 19, scope: !229)
!321 = !DILocation(line: 229, column: 11, scope: !229)
!322 = !DILocation(line: 230, column: 22, scope: !229)
!323 = !DILocation(line: 230, column: 14, scope: !229)
!324 = !DILocation(line: 230, column: 20, scope: !229)
!325 = !DILocation(line: 233, column: 6, scope: !229)
!326 = !DILocation(line: 232, column: 9, scope: !229)
!327 = !DILocation(line: 234, column: 6, scope: !328)
!328 = distinct !DILexicalBlock(scope: !229, file: !3, line: 234, column: 6)
!329 = !DILocation(line: 234, column: 27, scope: !328)
!330 = !DILocation(line: 234, column: 30, scope: !328)
!331 = !DILocation(line: 234, column: 37, scope: !328)
!332 = !DILocation(line: 234, column: 6, scope: !229)
!333 = !DILocation(line: 235, column: 3, scope: !334)
!334 = distinct !DILexicalBlock(scope: !328, file: !3, line: 234, column: 54)
!335 = !DILocation(line: 240, column: 10, scope: !229)
!336 = !DILocation(line: 240, column: 2, scope: !229)
!337 = !DILocation(line: 243, column: 13, scope: !338)
!338 = distinct !DILexicalBlock(scope: !229, file: !3, line: 240, column: 23)
!339 = !DILocation(line: 244, column: 3, scope: !338)
!340 = !DILocation(line: 250, column: 13, scope: !338)
!341 = !DILocation(line: 251, column: 3, scope: !338)
!342 = !DILocation(line: 255, column: 13, scope: !338)
!343 = !DILocation(line: 256, column: 3, scope: !338)
!344 = !DILocation(line: 260, column: 13, scope: !338)
!345 = !DILocation(line: 261, column: 3, scope: !338)
!346 = !DILocation(line: 268, column: 53, scope: !229)
!347 = !DILocation(line: 268, column: 2, scope: !229)
!348 = !DILocation(line: 269, column: 2, scope: !229)
!349 = !DILocation(line: 270, column: 1, scope: !229)
!350 = !DISubprogram(name: "acpi_get_sleep_type_data", scope: !210, file: !210, line: 867, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{!5, !13, !263, !263}
!353 = !DISubprogram(name: "acpi_evaluate_object", scope: !210, file: !210, line: 549, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DISubroutineType(types: !355)
!355 = !{!5, !276, !356, !357, !358}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !6, line: 423, baseType: !256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !6, line: 978, size: 128, elements: !360)
!360 = !{!361, !363}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !359, file: !6, line: 979, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !6, line: 127, baseType: !60)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !359, file: !6, line: 980, baseType: !12, size: 64, offset: 64)
!364 = !DISubprogram(name: "acpi_hw_execute_sleep_method", scope: !214, file: !214, line: 61, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !256, !7}
!367 = distinct !DISubprogram(name: "acpi_enter_sleep_state", scope: !3, file: !3, line: 286, type: !230, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!368 = !{!369, !370}
!369 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !367, file: !3, line: 286, type: !13)
!370 = !DILocalVariable(name: "status", scope: !367, file: !3, line: 288, type: !5)
!371 = !DILocation(line: 286, column: 39, scope: !367)
!372 = !DILocation(line: 288, column: 2, scope: !367)
!373 = !DILocation(line: 288, column: 14, scope: !367)
!374 = !DILocation(line: 292, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !367, file: !3, line: 292, column: 6)
!376 = !DILocation(line: 292, column: 29, scope: !375)
!377 = !DILocation(line: 292, column: 52, scope: !375)
!378 = !DILocation(line: 293, column: 7, scope: !375)
!379 = !DILocation(line: 293, column: 29, scope: !375)
!380 = !DILocation(line: 292, column: 6, scope: !367)
!381 = !DILocation(line: 294, column: 3, scope: !382)
!382 = distinct !DILexicalBlock(scope: !375, file: !3, line: 293, column: 53)
!383 = !DILocation(line: 296, column: 3, scope: !382)
!384 = !DILocation(line: 300, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !367, file: !3, line: 300, column: 6)
!386 = !DILocation(line: 300, column: 6, scope: !367)
!387 = !DILocation(line: 301, column: 33, scope: !385)
!388 = !DILocation(line: 301, column: 12, scope: !385)
!389 = !DILocation(line: 301, column: 10, scope: !385)
!390 = !DILocation(line: 301, column: 3, scope: !385)
!391 = !DILocation(line: 304, column: 35, scope: !385)
!392 = !DILocation(line: 304, column: 12, scope: !385)
!393 = !DILocation(line: 304, column: 10, scope: !385)
!394 = !DILocation(line: 305, column: 2, scope: !367)
!395 = !DILocation(line: 306, column: 1, scope: !367)
!396 = !DISubprogram(name: "acpi_error", scope: !210, file: !210, line: 901, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399, !7, !399, null}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!400 = !DISubprogram(name: "acpi_hw_legacy_sleep", scope: !214, file: !214, line: 52, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DISubprogram(name: "acpi_hw_extended_sleep", scope: !214, file: !214, line: 63, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!402 = distinct !DISubprogram(name: "acpi_leave_sleep_state_prep", scope: !3, file: !3, line: 324, type: !230, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !403)
!403 = !{!404, !405}
!404 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !402, file: !3, line: 324, type: !13)
!405 = !DILocalVariable(name: "status", scope: !402, file: !3, line: 326, type: !5)
!406 = !DILocation(line: 324, column: 44, scope: !402)
!407 = !DILocation(line: 326, column: 2, scope: !402)
!408 = !DILocation(line: 326, column: 14, scope: !402)
!409 = !DILocation(line: 331, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !402, file: !3, line: 331, column: 6)
!411 = !DILocation(line: 331, column: 6, scope: !402)
!412 = !DILocation(line: 332, column: 37, scope: !410)
!413 = !DILocation(line: 332, column: 12, scope: !410)
!414 = !DILocation(line: 332, column: 10, scope: !410)
!415 = !DILocation(line: 332, column: 3, scope: !410)
!416 = !DILocation(line: 335, column: 39, scope: !410)
!417 = !DILocation(line: 335, column: 12, scope: !410)
!418 = !DILocation(line: 335, column: 10, scope: !410)
!419 = !DILocation(line: 336, column: 2, scope: !402)
!420 = !DILocation(line: 337, column: 1, scope: !402)
!421 = !DISubprogram(name: "acpi_hw_legacy_wake_prep", scope: !214, file: !214, line: 54, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DISubprogram(name: "acpi_hw_extended_wake_prep", scope: !214, file: !214, line: 65, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!423 = distinct !DISubprogram(name: "acpi_leave_sleep_state", scope: !3, file: !3, line: 353, type: !230, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!424 = !{!425, !426}
!425 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !423, file: !3, line: 353, type: !13)
!426 = !DILocalVariable(name: "status", scope: !423, file: !3, line: 355, type: !5)
!427 = !DILocation(line: 353, column: 39, scope: !423)
!428 = !DILocation(line: 355, column: 2, scope: !423)
!429 = !DILocation(line: 355, column: 14, scope: !423)
!430 = !DILocation(line: 360, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !423, file: !3, line: 360, column: 6)
!432 = !DILocation(line: 360, column: 6, scope: !423)
!433 = !DILocation(line: 361, column: 32, scope: !431)
!434 = !DILocation(line: 361, column: 12, scope: !431)
!435 = !DILocation(line: 361, column: 10, scope: !431)
!436 = !DILocation(line: 361, column: 3, scope: !431)
!437 = !DILocation(line: 364, column: 34, scope: !431)
!438 = !DILocation(line: 364, column: 12, scope: !431)
!439 = !DILocation(line: 364, column: 10, scope: !431)
!440 = !DILocation(line: 365, column: 2, scope: !423)
!441 = !DILocation(line: 366, column: 1, scope: !423)
!442 = !DISubprogram(name: "acpi_hw_legacy_wake", scope: !214, file: !214, line: 56, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!443 = !DISubprogram(name: "acpi_hw_extended_wake", scope: !214, file: !214, line: 67, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
