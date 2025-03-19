; ModuleID = 'drivers/acpi/acpica/hwxface.c'
source_filename = "drivers/acpi/acpica/hwxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_reset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_reset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_read: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_write: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_read_bit_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_read_bit_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_write_bit_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_write_bit_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_sleep_type_data: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_sleep_type_data ; .previous"

%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
%struct.acpi_bit_register_info = type { i8, i8, i16 }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }

@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@__UNIQUE_ID___addressable_acpi_reset174 = internal global ptr @acpi_reset, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_acpi_read175 = internal global ptr @acpi_read, section ".discard.addressable", align 8, !dbg !42
@__UNIQUE_ID___addressable_acpi_write176 = internal global ptr @acpi_write, section ".discard.addressable", align 8, !dbg !44
@__UNIQUE_ID___addressable_acpi_read_bit_register177 = internal global ptr @acpi_read_bit_register, section ".discard.addressable", align 8, !dbg !46
@acpi_gbl_hardware_lock = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_write_bit_register178 = internal global ptr @acpi_write_bit_register, section ".discard.addressable", align 8, !dbg !48
@acpi_gbl_sleep_state_names = external dso_local global [6 x ptr], align 16
@_acpi_module_name = internal constant [8 x i8] c"hwxface\00", align 1, !dbg !73
@.str = private unnamed_addr constant [41 x i8] c"No Sleep State object returned from [%s]\00", align 1, !dbg !50
@.str.1 = private unnamed_addr constant [43 x i8] c"Sleep State return object is not a Package\00", align 1, !dbg !56
@.str.2 = private unnamed_addr constant [34 x i8] c"While evaluating Sleep State [%s]\00", align 1, !dbg !61
@__UNIQUE_ID___addressable_acpi_get_sleep_type_data179 = internal global ptr @acpi_get_sleep_type_data, section ".discard.addressable", align 8, !dbg !66
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !68
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_reset174, ptr @__UNIQUE_ID___addressable_acpi_read175, ptr @__UNIQUE_ID___addressable_acpi_write176, ptr @__UNIQUE_ID___addressable_acpi_read_bit_register177, ptr @__UNIQUE_ID___addressable_acpi_write_bit_register178, ptr @__UNIQUE_ID___addressable_acpi_get_sleep_type_data179], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_reset() #0 align 16 !dbg !88 {
entry:
  %retval = alloca i32, align 4
  %reset_reg = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %reset_reg) #13, !dbg !103
  call void @llvm.dbg.declare(metadata ptr %reset_reg, metadata !92, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %status, metadata !102, metadata !DIExpression()), !dbg !106
  store ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 39), ptr %reset_reg, align 8, !dbg !107
  %0 = load i32, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 38), align 1, !dbg !108
  %and = and i32 %0, 1024, !dbg !110
  %tobool = icmp ne i32 %and, 0, !dbg !110
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !111

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %reset_reg, align 8, !dbg !112
  %address = getelementptr inbounds %struct.acpi_generic_address, ptr %1, i32 0, i32 4, !dbg !113
  %2 = load i64, ptr %address, align 1, !dbg !113
  %tobool1 = icmp ne i64 %2, 0, !dbg !112
  br i1 %tobool1, label %if.end, label %if.then, !dbg !114

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 6, ptr %retval, align 4, !dbg !115
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !115

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %reset_reg, align 8, !dbg !117
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %3, i32 0, i32 0, !dbg !119
  %4 = load i8, ptr %space_id, align 1, !dbg !119
  %conv = zext i8 %4 to i32, !dbg !117
  %cmp = icmp eq i32 %conv, 1, !dbg !120
  br i1 %cmp, label %if.then3, label %if.else, !dbg !121

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %reset_reg, align 8, !dbg !122
  %address4 = getelementptr inbounds %struct.acpi_generic_address, ptr %5, i32 0, i32 4, !dbg !124
  %6 = load i64, ptr %address4, align 1, !dbg !124
  %7 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 40), align 1, !dbg !125
  %conv5 = zext i8 %7 to i32, !dbg !126
  %call = call i32 @acpi_os_write_port(i64 noundef %6, i32 noundef %conv5, i32 noundef 8) #14, !dbg !127
  store i32 %call, ptr %status, align 4, !dbg !128
  br label %if.end8, !dbg !129

if.else:                                          ; preds = %if.end
  %8 = load i8, ptr getelementptr inbounds (%struct.acpi_table_fadt, ptr @acpi_gbl_FADT, i32 0, i32 40), align 1, !dbg !130
  %conv6 = zext i8 %8 to i64, !dbg !132
  %9 = load ptr, ptr %reset_reg, align 8, !dbg !133
  %call7 = call i32 @acpi_hw_write(i64 noundef %conv6, ptr noundef %9) #14, !dbg !134
  store i32 %call7, ptr %status, align 4, !dbg !135
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %10 = load i32, ptr %status, align 4, !dbg !136
  store i32 %10, ptr %retval, align 4, !dbg !136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !136

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !137
  call void @llvm.lifetime.end.p0(i64 8, ptr %reset_reg) #13, !dbg !137
  %11 = load i32, ptr %retval, align 4, !dbg !137
  ret i32 %11, !dbg !137
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !138 dso_local i32 @acpi_os_write_port(i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !142 dso_local i32 @acpi_hw_write(i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_read(ptr noundef %return_value, ptr noundef %reg) #0 align 16 !dbg !146 {
entry:
  %return_value.addr = alloca ptr, align 8
  %reg.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !151, metadata !DIExpression()), !dbg !154
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !152, metadata !DIExpression()), !dbg !155
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %status, metadata !153, metadata !DIExpression()), !dbg !157
  %0 = load ptr, ptr %return_value.addr, align 8, !dbg !158
  %1 = load ptr, ptr %reg.addr, align 8, !dbg !159
  %call = call i32 @acpi_hw_read(ptr noundef %0, ptr noundef %1) #14, !dbg !160
  store i32 %call, ptr %status, align 4, !dbg !161
  %2 = load i32, ptr %status, align 4, !dbg !162
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !163
  ret i32 %2, !dbg !164
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !165 dso_local i32 @acpi_hw_read(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_write(i64 noundef %value, ptr noundef %reg) #0 align 16 !dbg !166 {
entry:
  %value.addr = alloca i64, align 8
  %reg.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !168, metadata !DIExpression()), !dbg !171
  store ptr %reg, ptr %reg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !169, metadata !DIExpression()), !dbg !172
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %status, metadata !170, metadata !DIExpression()), !dbg !174
  %0 = load i64, ptr %value.addr, align 8, !dbg !175
  %1 = load ptr, ptr %reg.addr, align 8, !dbg !176
  %call = call i32 @acpi_hw_write(i64 noundef %0, ptr noundef %1) #14, !dbg !177
  store i32 %call, ptr %status, align 4, !dbg !178
  %2 = load i32, ptr %status, align 4, !dbg !179
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !180
  ret i32 %2, !dbg !181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_read_bit_register(i32 noundef %register_id, ptr noundef %return_value) #0 align 16 !dbg !182 {
entry:
  %retval = alloca i32, align 4
  %register_id.addr = alloca i32, align 4
  %return_value.addr = alloca ptr, align 8
  %bit_reg_info = alloca ptr, align 8
  %register_value = alloca i32, align 4
  %value = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %register_id, ptr %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %register_id.addr, metadata !187, metadata !DIExpression()), !dbg !203
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !188, metadata !DIExpression()), !dbg !204
  call void @llvm.lifetime.start.p0(i64 8, ptr %bit_reg_info) #13, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %bit_reg_info, metadata !189, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_value) #13, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %register_value, metadata !200, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !209
  call void @llvm.dbg.declare(metadata ptr %value, metadata !201, metadata !DIExpression()), !dbg !210
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %status, metadata !202, metadata !DIExpression()), !dbg !212
  %0 = load i32, ptr %register_id.addr, align 4, !dbg !213
  %call = call ptr @acpi_hw_get_bit_register_info(i32 noundef %0) #14, !dbg !214
  store ptr %call, ptr %bit_reg_info, align 8, !dbg !215
  %1 = load ptr, ptr %bit_reg_info, align 8, !dbg !216
  %tobool = icmp ne ptr %1, null, !dbg !216
  br i1 %tobool, label %if.end, label %if.then, !dbg !218

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !219

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bit_reg_info, align 8, !dbg !221
  %parent_register = getelementptr inbounds %struct.acpi_bit_register_info, ptr %2, i32 0, i32 0, !dbg !222
  %3 = load i8, ptr %parent_register, align 2, !dbg !222
  %conv = zext i8 %3 to i32, !dbg !221
  %call1 = call i32 @acpi_hw_register_read(i32 noundef %conv, ptr noundef %register_value) #14, !dbg !223
  store i32 %call1, ptr %status, align 4, !dbg !224
  %4 = load i32, ptr %status, align 4, !dbg !225
  %tobool2 = icmp ne i32 %4, 0, !dbg !225
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !227

if.then3:                                         ; preds = %if.end
  %5 = load i32, ptr %status, align 4, !dbg !228
  store i32 %5, ptr %retval, align 4, !dbg !228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !228

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr %register_value, align 4, !dbg !230
  %7 = load ptr, ptr %bit_reg_info, align 8, !dbg !231
  %access_bit_mask = getelementptr inbounds %struct.acpi_bit_register_info, ptr %7, i32 0, i32 2, !dbg !232
  %8 = load i16, ptr %access_bit_mask, align 2, !dbg !232
  %conv5 = zext i16 %8 to i32, !dbg !231
  %and = and i32 %6, %conv5, !dbg !233
  %9 = load ptr, ptr %bit_reg_info, align 8, !dbg !234
  %bit_position = getelementptr inbounds %struct.acpi_bit_register_info, ptr %9, i32 0, i32 1, !dbg !235
  %10 = load i8, ptr %bit_position, align 1, !dbg !235
  %conv6 = zext i8 %10 to i32, !dbg !234
  %shr = lshr i32 %and, %conv6, !dbg !236
  store i32 %shr, ptr %value, align 4, !dbg !237
  %11 = load i32, ptr %value, align 4, !dbg !238
  %12 = load ptr, ptr %return_value.addr, align 8, !dbg !239
  store i32 %11, ptr %12, align 4, !dbg !240
  store i32 0, ptr %retval, align 4, !dbg !241
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !241

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !242
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !242
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_value) #13, !dbg !242
  call void @llvm.lifetime.end.p0(i64 8, ptr %bit_reg_info) #13, !dbg !242
  %13 = load i32, ptr %retval, align 4, !dbg !242
  ret i32 %13, !dbg !242
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !243 dso_local ptr @acpi_hw_get_bit_register_info(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !246 dso_local i32 @acpi_hw_register_read(i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_write_bit_register(i32 noundef %register_id, i32 noundef %value) #0 align 16 !dbg !247 {
entry:
  %retval = alloca i32, align 4
  %register_id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %bit_reg_info = alloca ptr, align 8
  %lock_flags = alloca i64, align 8
  %register_value = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %register_id, ptr %register_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %register_id.addr, metadata !251, metadata !DIExpression()), !dbg !258
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !252, metadata !DIExpression()), !dbg !259
  call void @llvm.lifetime.start.p0(i64 8, ptr %bit_reg_info) #13, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %bit_reg_info, metadata !253, metadata !DIExpression()), !dbg !261
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock_flags) #13, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %lock_flags, metadata !254, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 4, ptr %register_value) #13, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %register_value, metadata !255, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %status, metadata !256, metadata !DIExpression()), !dbg !267
  store i32 0, ptr %status, align 4, !dbg !267
  %0 = load i32, ptr %register_id.addr, align 4, !dbg !268
  %call = call ptr @acpi_hw_get_bit_register_info(i32 noundef %0) #14, !dbg !269
  store ptr %call, ptr %bit_reg_info, align 8, !dbg !270
  %1 = load ptr, ptr %bit_reg_info, align 8, !dbg !271
  %tobool = icmp ne ptr %1, null, !dbg !271
  br i1 %tobool, label %if.end, label %if.then, !dbg !273

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !274

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @acpi_gbl_hardware_lock, align 8, !dbg !276
  %call1 = call i64 @acpi_os_acquire_raw_lock(ptr noundef %2) #14, !dbg !277
  store i64 %call1, ptr %lock_flags, align 8, !dbg !278
  %3 = load ptr, ptr %bit_reg_info, align 8, !dbg !279
  %parent_register = getelementptr inbounds %struct.acpi_bit_register_info, ptr %3, i32 0, i32 0, !dbg !281
  %4 = load i8, ptr %parent_register, align 2, !dbg !281
  %conv = zext i8 %4 to i32, !dbg !279
  %cmp = icmp ne i32 %conv, 1, !dbg !282
  br i1 %cmp, label %if.then3, label %if.else, !dbg !283

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %bit_reg_info, align 8, !dbg !284
  %parent_register4 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %5, i32 0, i32 0, !dbg !286
  %6 = load i8, ptr %parent_register4, align 2, !dbg !286
  %conv5 = zext i8 %6 to i32, !dbg !284
  %call6 = call i32 @acpi_hw_register_read(i32 noundef %conv5, ptr noundef %register_value) #14, !dbg !287
  store i32 %call6, ptr %status, align 4, !dbg !288
  %7 = load i32, ptr %status, align 4, !dbg !289
  %tobool7 = icmp ne i32 %7, 0, !dbg !289
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !291

if.then8:                                         ; preds = %if.then3
  br label %unlock_and_exit, !dbg !292

if.end9:                                          ; preds = %if.then3
  %8 = load i32, ptr %register_value, align 4, !dbg !294
  %9 = load ptr, ptr %bit_reg_info, align 8, !dbg !294
  %access_bit_mask = getelementptr inbounds %struct.acpi_bit_register_info, ptr %9, i32 0, i32 2, !dbg !294
  %10 = load i16, ptr %access_bit_mask, align 2, !dbg !294
  %conv10 = zext i16 %10 to i32, !dbg !294
  %not = xor i32 %conv10, -1, !dbg !294
  %and = and i32 %8, %not, !dbg !294
  %11 = load i32, ptr %value.addr, align 4, !dbg !294
  %12 = load ptr, ptr %bit_reg_info, align 8, !dbg !294
  %bit_position = getelementptr inbounds %struct.acpi_bit_register_info, ptr %12, i32 0, i32 1, !dbg !294
  %13 = load i8, ptr %bit_position, align 1, !dbg !294
  %conv11 = zext i8 %13 to i32, !dbg !294
  %shl = shl i32 %11, %conv11, !dbg !294
  %14 = load ptr, ptr %bit_reg_info, align 8, !dbg !294
  %access_bit_mask12 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %14, i32 0, i32 2, !dbg !294
  %15 = load i16, ptr %access_bit_mask12, align 2, !dbg !294
  %conv13 = zext i16 %15 to i32, !dbg !294
  %and14 = and i32 %shl, %conv13, !dbg !294
  %or = or i32 %and, %and14, !dbg !294
  store i32 %or, ptr %register_value, align 4, !dbg !294
  %16 = load ptr, ptr %bit_reg_info, align 8, !dbg !295
  %parent_register15 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %16, i32 0, i32 0, !dbg !296
  %17 = load i8, ptr %parent_register15, align 2, !dbg !296
  %conv16 = zext i8 %17 to i32, !dbg !295
  %18 = load i32, ptr %register_value, align 4, !dbg !297
  %call17 = call i32 @acpi_hw_register_write(i32 noundef %conv16, i32 noundef %18) #14, !dbg !298
  store i32 %call17, ptr %status, align 4, !dbg !299
  br label %if.end28, !dbg !300

if.else:                                          ; preds = %if.end
  %19 = load i32, ptr %value.addr, align 4, !dbg !301
  %20 = load ptr, ptr %bit_reg_info, align 8, !dbg !301
  %bit_position18 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %20, i32 0, i32 1, !dbg !301
  %21 = load i8, ptr %bit_position18, align 1, !dbg !301
  %conv19 = zext i8 %21 to i32, !dbg !301
  %shl20 = shl i32 %19, %conv19, !dbg !301
  %22 = load ptr, ptr %bit_reg_info, align 8, !dbg !301
  %access_bit_mask21 = getelementptr inbounds %struct.acpi_bit_register_info, ptr %22, i32 0, i32 2, !dbg !301
  %23 = load i16, ptr %access_bit_mask21, align 2, !dbg !301
  %conv22 = zext i16 %23 to i32, !dbg !301
  %and23 = and i32 %shl20, %conv22, !dbg !301
  store i32 %and23, ptr %register_value, align 4, !dbg !303
  %24 = load i32, ptr %register_value, align 4, !dbg !304
  %tobool24 = icmp ne i32 %24, 0, !dbg !304
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !306

if.then25:                                        ; preds = %if.else
  %25 = load i32, ptr %register_value, align 4, !dbg !307
  %call26 = call i32 @acpi_hw_register_write(i32 noundef 1, i32 noundef %25) #14, !dbg !309
  store i32 %call26, ptr %status, align 4, !dbg !310
  br label %if.end27, !dbg !311

if.end27:                                         ; preds = %if.then25, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end9
  br label %unlock_and_exit, !dbg !312

unlock_and_exit:                                  ; preds = %if.end28, %if.then8
  call void @llvm.dbg.label(metadata !257), !dbg !313
  %26 = load ptr, ptr @acpi_gbl_hardware_lock, align 8, !dbg !314
  %27 = load i64, ptr %lock_flags, align 8, !dbg !315
  call void @acpi_os_release_raw_lock(ptr noundef %26, i64 noundef %27) #14, !dbg !316
  %28 = load i32, ptr %status, align 4, !dbg !317
  store i32 %28, ptr %retval, align 4, !dbg !317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !317

cleanup:                                          ; preds = %unlock_and_exit, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !318
  call void @llvm.lifetime.end.p0(i64 4, ptr %register_value) #13, !dbg !318
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock_flags) #13, !dbg !318
  call void @llvm.lifetime.end.p0(i64 8, ptr %bit_reg_info) #13, !dbg !318
  %29 = load i32, ptr %retval, align 4, !dbg !318
  ret i32 %29, !dbg !318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @acpi_os_acquire_raw_lock(ptr noundef %lockp) #4 align 16 !dbg !319 {
entry:
  %lockp.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lockp, ptr %lockp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockp.addr, metadata !353, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !354, metadata !DIExpression()), !dbg !361
  br label %do.body, !dbg !362

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !355, metadata !DIExpression()), !dbg !363
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !358, metadata !DIExpression()), !dbg !363
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !363
  %conv = zext i1 %cmp to i32, !dbg !363
  store i32 1, ptr %tmp, align 4, !dbg !363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !364
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !364
  %0 = load i32, ptr %tmp, align 4, !dbg !363
  %1 = load ptr, ptr %lockp.addr, align 8, !dbg !364
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %1) #14, !dbg !364
  store i64 %call, ptr %flags, align 8, !dbg !364
  br label %do.cond, !dbg !364

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !364

do.end:                                           ; preds = %do.cond
  %2 = load i64, ptr %flags, align 8, !dbg !365
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !366
  ret i64 %2, !dbg !367
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !368 dso_local i32 @acpi_hw_register_write(i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_release_raw_lock(ptr noundef %lockp, i64 noundef %flags) #4 align 16 !dbg !369 {
entry:
  %lockp.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lockp, ptr %lockp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lockp.addr, metadata !373, metadata !DIExpression()), !dbg !379
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !374, metadata !DIExpression()), !dbg !380
  br label %do.body, !dbg !381

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !378, metadata !DIExpression()), !dbg !382
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !382
  %conv = zext i1 %cmp to i32, !dbg !382
  store i32 1, ptr %tmp, align 4, !dbg !382
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !383
  %0 = load i32, ptr %tmp, align 4, !dbg !382
  %1 = load ptr, ptr %lockp.addr, align 8, !dbg !383
  %2 = load i64, ptr %flags.addr, align 8, !dbg !383
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i64 noundef %2) #14, !dbg !383
  br label %do.end, !dbg !383

do.end:                                           ; preds = %do.body
  ret void, !dbg !384
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_sleep_type_data(i8 noundef zeroext %sleep_state, ptr noundef %sleep_type_a, ptr noundef %sleep_type_b) #0 align 16 !dbg !385 {
entry:
  %retval = alloca i32, align 4
  %sleep_state.addr = alloca i8, align 1
  %sleep_type_a.addr = alloca ptr, align 8
  %sleep_type_b.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca ptr, align 8
  %elements = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %sleep_state, ptr %sleep_state.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !390, metadata !DIExpression()), !dbg !1216
  store ptr %sleep_type_a, ptr %sleep_type_a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sleep_type_a.addr, metadata !391, metadata !DIExpression()), !dbg !1217
  store ptr %sleep_type_b, ptr %sleep_type_b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sleep_type_b.addr, metadata !392, metadata !DIExpression()), !dbg !1218
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %status, metadata !393, metadata !DIExpression()), !dbg !1220
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !1221
  call void @llvm.dbg.declare(metadata ptr %info, metadata !394, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 8, ptr %elements) #13, !dbg !1223
  call void @llvm.dbg.declare(metadata ptr %elements, metadata !1212, metadata !DIExpression()), !dbg !1224
  %0 = load i8, ptr %sleep_state.addr, align 1, !dbg !1225
  %conv = zext i8 %0 to i32, !dbg !1225
  %cmp = icmp sgt i32 %conv, 5, !dbg !1227
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1228

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %sleep_type_a.addr, align 8, !dbg !1229
  %tobool = icmp ne ptr %1, null, !dbg !1229
  br i1 %tobool, label %lor.lhs.false2, label %if.then, !dbg !1230

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %sleep_type_b.addr, align 8, !dbg !1231
  %tobool3 = icmp ne ptr %2, null, !dbg !1231
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1232

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1233

if.end:                                           ; preds = %lor.lhs.false2
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 88) #14, !dbg !1235
  store ptr %call, ptr %info, align 8, !dbg !1236
  %3 = load ptr, ptr %info, align 8, !dbg !1237
  %tobool4 = icmp ne ptr %3, null, !dbg !1237
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !1239

if.then5:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !1240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1240

if.end6:                                          ; preds = %if.end
  %4 = load i8, ptr %sleep_state.addr, align 1, !dbg !1242
  %idxprom = zext i8 %4 to i64, !dbg !1243
  %arrayidx = getelementptr [6 x ptr], ptr @acpi_gbl_sleep_state_names, i64 0, i64 %idxprom, !dbg !1243
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1243
  %6 = load ptr, ptr %info, align 8, !dbg !1244
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %6, i32 0, i32 1, !dbg !1245
  store ptr %5, ptr %relative_pathname, align 8, !dbg !1246
  %7 = load ptr, ptr %info, align 8, !dbg !1247
  %call7 = call i32 @acpi_ns_evaluate(ptr noundef %7) #14, !dbg !1248
  store i32 %call7, ptr %status, align 4, !dbg !1249
  %8 = load i32, ptr %status, align 4, !dbg !1250
  %tobool8 = icmp ne i32 %8, 0, !dbg !1250
  br i1 %tobool8, label %if.then9, label %if.end14, !dbg !1252

if.then9:                                         ; preds = %if.end6
  %9 = load i32, ptr %status, align 4, !dbg !1253
  %cmp10 = icmp eq i32 %9, 5, !dbg !1256
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1257

if.then12:                                        ; preds = %if.then9
  br label %final_cleanup, !dbg !1258

if.end13:                                         ; preds = %if.then9
  br label %warning_cleanup, !dbg !1260

if.end14:                                         ; preds = %if.end6
  %10 = load ptr, ptr %info, align 8, !dbg !1261
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, ptr %10, i32 0, i32 7, !dbg !1263
  %11 = load ptr, ptr %return_object, align 8, !dbg !1263
  %tobool15 = icmp ne ptr %11, null, !dbg !1261
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !1264

if.then16:                                        ; preds = %if.end14
  %12 = load ptr, ptr %info, align 8, !dbg !1265
  %relative_pathname17 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %12, i32 0, i32 1, !dbg !1265
  %13 = load ptr, ptr %relative_pathname17, align 8, !dbg !1265
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 377, ptr noundef @.str, ptr noundef %13) #14, !dbg !1265
  store i32 12306, ptr %status, align 4, !dbg !1267
  br label %warning_cleanup, !dbg !1268

if.end18:                                         ; preds = %if.end14
  %14 = load ptr, ptr %info, align 8, !dbg !1269
  %return_object19 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %14, i32 0, i32 7, !dbg !1271
  %15 = load ptr, ptr %return_object19, align 8, !dbg !1271
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %15, i32 0, i32 2, !dbg !1272
  %16 = load i8, ptr %type, align 1, !dbg !1272
  %conv20 = zext i8 %16 to i32, !dbg !1269
  %cmp21 = icmp ne i32 %conv20, 4, !dbg !1273
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1274

if.then23:                                        ; preds = %if.end18
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 386, ptr noundef @.str.1) #14, !dbg !1275
  store i32 12291, ptr %status, align 4, !dbg !1277
  br label %return_value_cleanup, !dbg !1278

if.end24:                                         ; preds = %if.end18
  %17 = load ptr, ptr %info, align 8, !dbg !1279
  %return_object25 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %17, i32 0, i32 7, !dbg !1280
  %18 = load ptr, ptr %return_object25, align 8, !dbg !1280
  %elements26 = getelementptr inbounds %struct.acpi_object_package, ptr %18, i32 0, i32 6, !dbg !1281
  %19 = load ptr, ptr %elements26, align 8, !dbg !1281
  store ptr %19, ptr %elements, align 8, !dbg !1282
  %20 = load ptr, ptr %info, align 8, !dbg !1283
  %return_object27 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %20, i32 0, i32 7, !dbg !1284
  %21 = load ptr, ptr %return_object27, align 8, !dbg !1284
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %21, i32 0, i32 9, !dbg !1285
  %22 = load i32, ptr %count, align 4, !dbg !1285
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %sw.bb41
  ], !dbg !1286

sw.bb:                                            ; preds = %if.end24
  store i32 12299, ptr %status, align 4, !dbg !1287
  br label %sw.epilog, !dbg !1289

sw.bb28:                                          ; preds = %if.end24
  %23 = load ptr, ptr %elements, align 8, !dbg !1290
  %arrayidx29 = getelementptr ptr, ptr %23, i64 0, !dbg !1290
  %24 = load ptr, ptr %arrayidx29, align 8, !dbg !1290
  %type30 = getelementptr inbounds %struct.acpi_object_common, ptr %24, i32 0, i32 2, !dbg !1292
  %25 = load i8, ptr %type30, align 1, !dbg !1292
  %conv31 = zext i8 %25 to i32, !dbg !1290
  %cmp32 = icmp ne i32 %conv31, 1, !dbg !1293
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !1294

if.then34:                                        ; preds = %sw.bb28
  store i32 12291, ptr %status, align 4, !dbg !1295
  br label %sw.epilog, !dbg !1297

if.end35:                                         ; preds = %sw.bb28
  %26 = load ptr, ptr %elements, align 8, !dbg !1298
  %arrayidx36 = getelementptr ptr, ptr %26, i64 0, !dbg !1298
  %27 = load ptr, ptr %arrayidx36, align 8, !dbg !1298
  %value = getelementptr inbounds %struct.acpi_object_integer, ptr %27, i32 0, i32 6, !dbg !1299
  %28 = load i64, ptr %value, align 8, !dbg !1299
  %conv37 = trunc i64 %28 to i8, !dbg !1300
  %29 = load ptr, ptr %sleep_type_a.addr, align 8, !dbg !1301
  store i8 %conv37, ptr %29, align 1, !dbg !1302
  %30 = load ptr, ptr %elements, align 8, !dbg !1303
  %arrayidx38 = getelementptr ptr, ptr %30, i64 0, !dbg !1303
  %31 = load ptr, ptr %arrayidx38, align 8, !dbg !1303
  %value39 = getelementptr inbounds %struct.acpi_object_integer, ptr %31, i32 0, i32 6, !dbg !1304
  %32 = load i64, ptr %value39, align 8, !dbg !1304
  %shr = lshr i64 %32, 8, !dbg !1305
  %conv40 = trunc i64 %shr to i8, !dbg !1306
  %33 = load ptr, ptr %sleep_type_b.addr, align 8, !dbg !1307
  store i8 %conv40, ptr %33, align 1, !dbg !1308
  br label %sw.epilog, !dbg !1309

sw.bb41:                                          ; preds = %if.end24
  br label %sw.default, !dbg !1310

sw.default:                                       ; preds = %if.end24, %sw.bb41
  %34 = load ptr, ptr %elements, align 8, !dbg !1311
  %arrayidx42 = getelementptr ptr, ptr %34, i64 0, !dbg !1311
  %35 = load ptr, ptr %arrayidx42, align 8, !dbg !1311
  %type43 = getelementptr inbounds %struct.acpi_object_common, ptr %35, i32 0, i32 2, !dbg !1313
  %36 = load i8, ptr %type43, align 1, !dbg !1313
  %conv44 = zext i8 %36 to i32, !dbg !1311
  %cmp45 = icmp ne i32 %conv44, 1, !dbg !1314
  br i1 %cmp45, label %if.then53, label %lor.lhs.false47, !dbg !1315

lor.lhs.false47:                                  ; preds = %sw.default
  %37 = load ptr, ptr %elements, align 8, !dbg !1316
  %arrayidx48 = getelementptr ptr, ptr %37, i64 1, !dbg !1316
  %38 = load ptr, ptr %arrayidx48, align 8, !dbg !1316
  %type49 = getelementptr inbounds %struct.acpi_object_common, ptr %38, i32 0, i32 2, !dbg !1317
  %39 = load i8, ptr %type49, align 1, !dbg !1317
  %conv50 = zext i8 %39 to i32, !dbg !1316
  %cmp51 = icmp ne i32 %conv50, 1, !dbg !1318
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !1319

if.then53:                                        ; preds = %lor.lhs.false47, %sw.default
  store i32 12291, ptr %status, align 4, !dbg !1320
  br label %sw.epilog, !dbg !1322

if.end54:                                         ; preds = %lor.lhs.false47
  %40 = load ptr, ptr %elements, align 8, !dbg !1323
  %arrayidx55 = getelementptr ptr, ptr %40, i64 0, !dbg !1323
  %41 = load ptr, ptr %arrayidx55, align 8, !dbg !1323
  %value56 = getelementptr inbounds %struct.acpi_object_integer, ptr %41, i32 0, i32 6, !dbg !1324
  %42 = load i64, ptr %value56, align 8, !dbg !1324
  %conv57 = trunc i64 %42 to i8, !dbg !1325
  %43 = load ptr, ptr %sleep_type_a.addr, align 8, !dbg !1326
  store i8 %conv57, ptr %43, align 1, !dbg !1327
  %44 = load ptr, ptr %elements, align 8, !dbg !1328
  %arrayidx58 = getelementptr ptr, ptr %44, i64 1, !dbg !1328
  %45 = load ptr, ptr %arrayidx58, align 8, !dbg !1328
  %value59 = getelementptr inbounds %struct.acpi_object_integer, ptr %45, i32 0, i32 6, !dbg !1329
  %46 = load i64, ptr %value59, align 8, !dbg !1329
  %conv60 = trunc i64 %46 to i8, !dbg !1330
  %47 = load ptr, ptr %sleep_type_b.addr, align 8, !dbg !1331
  store i8 %conv60, ptr %47, align 1, !dbg !1332
  br label %sw.epilog, !dbg !1333

sw.epilog:                                        ; preds = %if.end54, %if.then53, %if.end35, %if.then34, %sw.bb
  br label %return_value_cleanup, !dbg !1334

return_value_cleanup:                             ; preds = %sw.epilog, %if.then23
  call void @llvm.dbg.label(metadata !1213), !dbg !1335
  %48 = load ptr, ptr %info, align 8, !dbg !1336
  %return_object61 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %48, i32 0, i32 7, !dbg !1337
  %49 = load ptr, ptr %return_object61, align 8, !dbg !1337
  call void @acpi_ut_remove_reference(ptr noundef %49) #14, !dbg !1338
  br label %warning_cleanup, !dbg !1338

warning_cleanup:                                  ; preds = %return_value_cleanup, %if.then16, %if.end13
  call void @llvm.dbg.label(metadata !1214), !dbg !1339
  %50 = load i32, ptr %status, align 4, !dbg !1340
  %tobool62 = icmp ne i32 %50, 0, !dbg !1340
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !1342

if.then63:                                        ; preds = %warning_cleanup
  %51 = load i32, ptr %status, align 4, !dbg !1343
  %52 = load ptr, ptr %info, align 8, !dbg !1343
  %relative_pathname64 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %52, i32 0, i32 1, !dbg !1343
  %53 = load ptr, ptr %relative_pathname64, align 8, !dbg !1343
  call void (ptr, i32, i32, ptr, ...) @acpi_exception(ptr noundef @_acpi_module_name, i32 noundef 438, i32 noundef %51, ptr noundef @.str.2, ptr noundef %53) #14, !dbg !1343
  br label %if.end65, !dbg !1345

if.end65:                                         ; preds = %if.then63, %warning_cleanup
  br label %final_cleanup, !dbg !1340

final_cleanup:                                    ; preds = %if.end65, %if.then12
  call void @llvm.dbg.label(metadata !1215), !dbg !1346
  %54 = load ptr, ptr %info, align 8, !dbg !1347
  call void @acpi_os_free(ptr noundef %54) #14, !dbg !1347
  %55 = load i32, ptr %status, align 4, !dbg !1348
  store i32 %55, ptr %retval, align 4, !dbg !1348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1348

cleanup:                                          ; preds = %final_cleanup, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %elements) #13, !dbg !1349
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !1349
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1349
  %56 = load i32, ptr %retval, align 4, !dbg !1349
  ret i32 %56, !dbg !1349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1350 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1354, metadata !DIExpression()), !dbg !1365
  %0 = load i64, ptr %size.addr, align 8, !dbg !1366
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1355, metadata !DIExpression()), !dbg !1367
  br label %do.body, !dbg !1367

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1357, metadata !DIExpression()), !dbg !1368
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1360, metadata !DIExpression()), !dbg !1368
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1368
  %conv = zext i1 %cmp to i32, !dbg !1368
  store i32 1, ptr %tmp, align 4, !dbg !1368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1369
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1369
  %1 = load i32, ptr %tmp, align 4, !dbg !1368
  %call = call i64 @arch_local_save_flags() #14, !dbg !1369
  store i64 %call, ptr %_flags, align 8, !dbg !1369
  br label %do.cond, !dbg !1369

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1369

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1361, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1364, metadata !DIExpression()), !dbg !1370
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1370
  %conv6 = zext i1 %cmp5 to i32, !dbg !1370
  store i32 1, ptr %tmp7, align 4, !dbg !1370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1371
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1371
  %2 = load i32, ptr %tmp7, align 4, !dbg !1370
  %3 = load i64, ptr %_flags, align 8, !dbg !1371
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1371
  store i32 %call9, ptr %tmp8, align 4, !dbg !1371
  %4 = load i32, ptr %tmp8, align 4, !dbg !1371
  store i32 %4, ptr %tmp1, align 4, !dbg !1369
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1372
  %5 = load i32, ptr %tmp1, align 4, !dbg !1367
  %tobool = icmp ne i32 %5, 0, !dbg !1372
  %6 = zext i1 %tobool to i64, !dbg !1372
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1372
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1373
  ret ptr %call10, !dbg !1374
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1375 dso_local i32 @acpi_ns_evaluate(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1379 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1383 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1387 dso_local void @acpi_exception(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1390 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1394, metadata !DIExpression()), !dbg !1395
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1396
  call void @kfree(ptr noundef %0) #14, !dbg !1397
  ret void, !dbg !1398
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1399 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1401 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1402 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1410, metadata !DIExpression()), !dbg !1412
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1411, metadata !DIExpression()), !dbg !1413
  %0 = load i64, ptr %size.addr, align 8, !dbg !1414
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1415
  %or = or i32 %1, 256, !dbg !1416
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1417
  ret ptr %call, !dbg !1418
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1419 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1423
  ret i64 %call, !dbg !1424
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1425 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1429, metadata !DIExpression()), !dbg !1430
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1431
  %and = and i64 %0, 512, !dbg !1432
  %tobool = icmp ne i64 %and, 0, !dbg !1433
  %lnot = xor i1 %tobool, true, !dbg !1433
  %lnot.ext = zext i1 %lnot to i32, !dbg !1433
  ret i32 %lnot.ext, !dbg !1434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1435 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1437, metadata !DIExpression()), !dbg !1442
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1438, metadata !DIExpression()), !dbg !1443
  %0 = load i64, ptr %size.addr, align 8, !dbg !1444
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1445
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1446

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1447
  %tobool = icmp ne i64 %2, 0, !dbg !1447
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1448

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1449
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1439, metadata !DIExpression()), !dbg !1450
  %3 = load i64, ptr %size.addr, align 8, !dbg !1451
  %cmp = icmp ugt i64 %3, 8192, !dbg !1453
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1454

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1455
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1456
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1457
  store ptr %call, ptr %retval, align 8, !dbg !1458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1458

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1459
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1459
  store i32 %call2, ptr %index, align 4, !dbg !1460
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1461
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1462
  %9 = ptrtoint ptr %8 to i64, !dbg !1462
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1463
  %idxprom = zext i32 %call3 to i64, !dbg !1464
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1464
  %10 = load i32, ptr %index, align 4, !dbg !1465
  %idxprom4 = zext i32 %10 to i64, !dbg !1464
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1464
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1464
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1466
  %13 = load i64, ptr %size.addr, align 8, !dbg !1467
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1468
  store ptr %call6, ptr %retval, align 8, !dbg !1469
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1469

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1470
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1471
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1472
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1473
  store ptr %call8, ptr %retval, align 8, !dbg !1474
  br label %return, !dbg !1474

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1475
  ret ptr %16, !dbg !1475
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1476 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1477 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1483, metadata !DIExpression()), !dbg !1485
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1484, metadata !DIExpression()), !dbg !1486
  %0 = load i64, ptr %size.addr, align 8, !dbg !1487
  %tobool = icmp ne i64 %0, 0, !dbg !1487
  br i1 %tobool, label %if.end, label %if.then, !dbg !1489

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1490
  br label %return, !dbg !1490

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1491
  %cmp = icmp ule i64 %1, 8, !dbg !1493
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1494

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1496
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1498
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1499

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1500
  %cmp4 = icmp ule i64 %3, 96, !dbg !1501
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1502

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1503
  br label %return, !dbg !1503

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1504
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1506
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1507

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1508
  %cmp9 = icmp ule i64 %5, 192, !dbg !1509
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1510

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1511
  br label %return, !dbg !1511

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1512
  %cmp12 = icmp ule i64 %6, 8, !dbg !1514
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1515

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1516
  br label %return, !dbg !1516

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1517
  %cmp15 = icmp ule i64 %7, 16, !dbg !1519
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1520

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1521
  br label %return, !dbg !1521

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1522
  %cmp18 = icmp ule i64 %8, 32, !dbg !1524
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1525

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1526
  br label %return, !dbg !1526

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1527
  %cmp21 = icmp ule i64 %9, 64, !dbg !1529
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1530

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1531
  br label %return, !dbg !1531

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1532
  %cmp24 = icmp ule i64 %10, 128, !dbg !1534
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1535

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1536
  br label %return, !dbg !1536

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1537
  %cmp27 = icmp ule i64 %11, 256, !dbg !1539
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1540

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1541
  br label %return, !dbg !1541

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1542
  %cmp30 = icmp ule i64 %12, 512, !dbg !1544
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1545

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1546
  br label %return, !dbg !1546

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1547
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1549
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1550

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1551
  br label %return, !dbg !1551

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1552
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1554
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1555

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1556
  br label %return, !dbg !1556

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1557
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1559
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1560

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1561
  br label %return, !dbg !1561

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1562
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1564
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1565

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1566
  br label %return, !dbg !1566

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1567
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1569
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1570

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1571
  br label %return, !dbg !1571

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1572
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1574
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1575

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1576
  br label %return, !dbg !1576

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1577
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1579
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1580

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1581
  br label %return, !dbg !1581

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1582
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1584
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1585

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1586
  br label %return, !dbg !1586

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1587
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1589
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1590

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1591
  br label %return, !dbg !1591

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1592
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1594
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1595

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1596
  br label %return, !dbg !1596

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1597
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1599
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1600

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1601
  br label %return, !dbg !1601

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1602
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1604
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1605

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1606
  br label %return, !dbg !1606

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1607, !range !1609, !noundef !1610
  %tobool69 = trunc i8 %25 to i1, !dbg !1607
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1611

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1612

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1613, !srcloc !1616
  unreachable, !dbg !1613

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1617

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1618

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1619

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1621

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1619

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #13, !dbg !1623, !srcloc !1625
  br label %do.end75, !dbg !1623

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1619

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1626
  br label %return, !dbg !1626

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1627
  ret i32 %26, !dbg !1627
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1628 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1634 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1638, metadata !DIExpression()), !dbg !1640
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1639, metadata !DIExpression()), !dbg !1641
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1642
  %and = and i32 %0, 17, !dbg !1642
  %cmp = icmp eq i32 %and, 0, !dbg !1642
  %lnot = xor i1 %cmp, true, !dbg !1642
  %lnot1 = xor i1 %lnot, true, !dbg !1642
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1642
  %conv = sext i32 %lnot.ext to i64, !dbg !1642
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1642
  %tobool = icmp ne i64 %expval, 0, !dbg !1642
  br i1 %tobool, label %if.then, label %if.end, !dbg !1644

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1645
  br label %return, !dbg !1645

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1646
  %and2 = and i32 %1, 1, !dbg !1648
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1648
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1649

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1650
  br label %return, !dbg !1650

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1651
  br label %return, !dbg !1651

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1653
  ret i32 %2, !dbg !1653
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1654 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1655 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1658 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1661
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1660, metadata !DIExpression()), !dbg !1662
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1663, !srcloc !1664
  %0 = load i64, ptr %flags, align 8, !dbg !1665
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1666
  ret i64 %0, !dbg !1667
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1668 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_reset174", scope: !2, file: !3, line: 72, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.hwxface.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22hwxface\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/hwxface.ll drivers/acpi/acpica/hwxface.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !41, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwxface.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c308b036b1a25567e039cddf2177775a")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !28, !32, !36, !29, !37, !38, !40}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !23, line: 814, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !23, line: 128, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !35)
!35 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !33)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !39, line: 154, baseType: !7)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !{!0, !42, !44, !46, !48, !50, !56, !61, !66, !68, !73}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_read175", scope: !2, file: !3, line: 102, type: !36, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_write176", scope: !2, file: !3, line: 126, type: !36, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_read_bit_register177", scope: !2, file: !3, line: 191, type: !36, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_write_bit_register178", scope: !2, file: !3, line: 295, type: !36, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 328, elements: !54)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!55}
!55 = !DISubrange(count: 41)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !3, line: 386, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 344, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 43)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !3, line: 438, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 272, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 34)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_sleep_type_data179", scope: !2, file: !3, line: 448, type: !36, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 168, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 21)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !77)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!77 = !{!78}
!78 = !DISubrange(count: 8)
!79 = !{i32 7, !"Dwarf Version", i32 5}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 8, !"cf-protection-branch", i32 1}
!83 = !{i32 4, !"function_return_thunk_extern", i32 1}
!84 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!85 = !{i32 1, !"Code Model", i32 2}
!86 = !{i32 1, !"override-stack-alignment", i32 8}
!87 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!88 = distinct !DISubprogram(name: "acpi_reset", scope: !3, file: !3, line: 32, type: !89, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{!22}
!91 = !{!92, !102}
!92 = !DILocalVariable(name: "reset_reg", scope: !88, file: !3, line: 34, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !95, line: 90, size: 96, elements: !96)
!95 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !94, file: !95, line: 91, baseType: !29, size: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !94, file: !95, line: 92, baseType: !29, size: 8, offset: 8)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !94, file: !95, line: 93, baseType: !29, size: 8, offset: 16)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !94, file: !95, line: 94, baseType: !29, size: 8, offset: 24)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !94, file: !95, line: 95, baseType: !33, size: 64, offset: 32)
!102 = !DILocalVariable(name: "status", scope: !88, file: !3, line: 35, type: !22)
!103 = !DILocation(line: 34, column: 2, scope: !88)
!104 = !DILocation(line: 34, column: 31, scope: !88)
!105 = !DILocation(line: 35, column: 2, scope: !88)
!106 = !DILocation(line: 35, column: 14, scope: !88)
!107 = !DILocation(line: 39, column: 12, scope: !88)
!108 = !DILocation(line: 43, column: 22, scope: !109)
!109 = distinct !DILexicalBlock(scope: !88, file: !3, line: 43, column: 6)
!110 = !DILocation(line: 43, column: 28, scope: !109)
!111 = !DILocation(line: 43, column: 56, scope: !109)
!112 = !DILocation(line: 44, column: 7, scope: !109)
!113 = !DILocation(line: 44, column: 18, scope: !109)
!114 = !DILocation(line: 43, column: 6, scope: !88)
!115 = !DILocation(line: 45, column: 3, scope: !116)
!116 = distinct !DILexicalBlock(scope: !109, file: !3, line: 44, column: 27)
!117 = !DILocation(line: 48, column: 6, scope: !118)
!118 = distinct !DILexicalBlock(scope: !88, file: !3, line: 48, column: 6)
!119 = !DILocation(line: 48, column: 17, scope: !118)
!120 = !DILocation(line: 48, column: 26, scope: !118)
!121 = !DILocation(line: 48, column: 6, scope: !88)
!122 = !DILocation(line: 60, column: 48, scope: !123)
!123 = distinct !DILexicalBlock(scope: !118, file: !3, line: 48, column: 55)
!124 = !DILocation(line: 60, column: 59, scope: !123)
!125 = !DILocation(line: 61, column: 24, scope: !123)
!126 = !DILocation(line: 61, column: 10, scope: !123)
!127 = !DILocation(line: 60, column: 12, scope: !123)
!128 = !DILocation(line: 60, column: 10, scope: !123)
!129 = !DILocation(line: 63, column: 2, scope: !123)
!130 = !DILocation(line: 66, column: 40, scope: !131)
!131 = distinct !DILexicalBlock(scope: !118, file: !3, line: 63, column: 9)
!132 = !DILocation(line: 66, column: 26, scope: !131)
!133 = !DILocation(line: 66, column: 53, scope: !131)
!134 = !DILocation(line: 66, column: 12, scope: !131)
!135 = !DILocation(line: 66, column: 10, scope: !131)
!136 = !DILocation(line: 69, column: 2, scope: !88)
!137 = !DILocation(line: 70, column: 1, scope: !88)
!138 = !DISubprogram(name: "acpi_os_write_port", scope: !139, file: !139, line: 271, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!139 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!140 = !DISubroutineType(types: !141)
!141 = !{!22, !32, !24, !24}
!142 = !DISubprogram(name: "acpi_hw_write", scope: !143, file: !143, line: 37, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!143 = !DIFile(filename: "drivers/acpi/acpica/achware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e639ab6c676f6257d869bb312951f39d")
!144 = !DISubroutineType(types: !145)
!145 = !{!22, !33, !93}
!146 = distinct !DISubprogram(name: "acpi_read", scope: !3, file: !3, line: 92, type: !147, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!147 = !DISubroutineType(types: !148)
!148 = !{!22, !149, !93}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!150 = !{!151, !152, !153}
!151 = !DILocalVariable(name: "return_value", arg: 1, scope: !146, file: !3, line: 92, type: !149)
!152 = !DILocalVariable(name: "reg", arg: 2, scope: !146, file: !3, line: 92, type: !93)
!153 = !DILocalVariable(name: "status", scope: !146, file: !3, line: 94, type: !22)
!154 = !DILocation(line: 92, column: 28, scope: !146)
!155 = !DILocation(line: 92, column: 71, scope: !146)
!156 = !DILocation(line: 94, column: 2, scope: !146)
!157 = !DILocation(line: 94, column: 14, scope: !146)
!158 = !DILocation(line: 98, column: 24, scope: !146)
!159 = !DILocation(line: 98, column: 38, scope: !146)
!160 = !DILocation(line: 98, column: 11, scope: !146)
!161 = !DILocation(line: 98, column: 9, scope: !146)
!162 = !DILocation(line: 99, column: 10, scope: !146)
!163 = !DILocation(line: 100, column: 1, scope: !146)
!164 = !DILocation(line: 99, column: 2, scope: !146)
!165 = !DISubprogram(name: "acpi_hw_read", scope: !143, file: !143, line: 35, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = distinct !DISubprogram(name: "acpi_write", scope: !3, file: !3, line: 116, type: !144, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !167)
!167 = !{!168, !169, !170}
!168 = !DILocalVariable(name: "value", arg: 1, scope: !166, file: !3, line: 116, type: !33)
!169 = !DILocalVariable(name: "reg", arg: 2, scope: !166, file: !3, line: 116, type: !93)
!170 = !DILocalVariable(name: "status", scope: !166, file: !3, line: 118, type: !22)
!171 = !DILocation(line: 116, column: 28, scope: !166)
!172 = !DILocation(line: 116, column: 64, scope: !166)
!173 = !DILocation(line: 118, column: 2, scope: !166)
!174 = !DILocation(line: 118, column: 14, scope: !166)
!175 = !DILocation(line: 122, column: 25, scope: !166)
!176 = !DILocation(line: 122, column: 32, scope: !166)
!177 = !DILocation(line: 122, column: 11, scope: !166)
!178 = !DILocation(line: 122, column: 9, scope: !166)
!179 = !DILocation(line: 123, column: 10, scope: !166)
!180 = !DILocation(line: 124, column: 1, scope: !166)
!181 = !DILocation(line: 123, column: 2, scope: !166)
!182 = distinct !DISubprogram(name: "acpi_read_bit_register", scope: !3, file: !3, line: 153, type: !183, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!183 = !DISubroutineType(types: !184)
!184 = !{!22, !24, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!186 = !{!187, !188, !189, !200, !201, !202}
!187 = !DILocalVariable(name: "register_id", arg: 1, scope: !182, file: !3, line: 153, type: !24)
!188 = !DILocalVariable(name: "return_value", arg: 2, scope: !182, file: !3, line: 153, type: !185)
!189 = !DILocalVariable(name: "bit_reg_info", scope: !182, file: !3, line: 155, type: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_bit_register_info", file: !192, line: 950, size: 32, elements: !193)
!192 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!193 = !{!194, !195, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent_register", scope: !191, file: !192, line: 951, baseType: !29, size: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "bit_position", scope: !191, file: !192, line: 952, baseType: !29, size: 8, offset: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "access_bit_mask", scope: !191, file: !192, line: 953, baseType: !197, size: 16, offset: 16)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !199)
!199 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!200 = !DILocalVariable(name: "register_value", scope: !182, file: !3, line: 156, type: !24)
!201 = !DILocalVariable(name: "value", scope: !182, file: !3, line: 157, type: !24)
!202 = !DILocalVariable(name: "status", scope: !182, file: !3, line: 158, type: !22)
!203 = !DILocation(line: 153, column: 40, scope: !182)
!204 = !DILocation(line: 153, column: 58, scope: !182)
!205 = !DILocation(line: 155, column: 2, scope: !182)
!206 = !DILocation(line: 155, column: 33, scope: !182)
!207 = !DILocation(line: 156, column: 2, scope: !182)
!208 = !DILocation(line: 156, column: 6, scope: !182)
!209 = !DILocation(line: 157, column: 2, scope: !182)
!210 = !DILocation(line: 157, column: 6, scope: !182)
!211 = !DILocation(line: 158, column: 2, scope: !182)
!212 = !DILocation(line: 158, column: 14, scope: !182)
!213 = !DILocation(line: 164, column: 47, scope: !182)
!214 = !DILocation(line: 164, column: 17, scope: !182)
!215 = !DILocation(line: 164, column: 15, scope: !182)
!216 = !DILocation(line: 165, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !182, file: !3, line: 165, column: 6)
!218 = !DILocation(line: 165, column: 6, scope: !182)
!219 = !DILocation(line: 166, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !3, line: 165, column: 21)
!221 = !DILocation(line: 171, column: 33, scope: !182)
!222 = !DILocation(line: 171, column: 47, scope: !182)
!223 = !DILocation(line: 171, column: 11, scope: !182)
!224 = !DILocation(line: 171, column: 9, scope: !182)
!225 = !DILocation(line: 173, column: 6, scope: !226)
!226 = distinct !DILexicalBlock(scope: !182, file: !3, line: 173, column: 6)
!227 = !DILocation(line: 173, column: 6, scope: !182)
!228 = !DILocation(line: 174, column: 3, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 173, column: 28)
!230 = !DILocation(line: 179, column: 12, scope: !182)
!231 = !DILocation(line: 179, column: 29, scope: !182)
!232 = !DILocation(line: 179, column: 43, scope: !182)
!233 = !DILocation(line: 179, column: 27, scope: !182)
!234 = !DILocation(line: 180, column: 7, scope: !182)
!235 = !DILocation(line: 180, column: 21, scope: !182)
!236 = !DILocation(line: 180, column: 4, scope: !182)
!237 = !DILocation(line: 179, column: 8, scope: !182)
!238 = !DILocation(line: 187, column: 18, scope: !182)
!239 = !DILocation(line: 187, column: 3, scope: !182)
!240 = !DILocation(line: 187, column: 16, scope: !182)
!241 = !DILocation(line: 188, column: 2, scope: !182)
!242 = !DILocation(line: 189, column: 1, scope: !182)
!243 = !DISubprogram(name: "acpi_hw_get_bit_register_info", scope: !143, file: !143, line: 39, type: !244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!244 = !DISubroutineType(types: !245)
!245 = !{!190, !24}
!246 = !DISubprogram(name: "acpi_hw_register_read", scope: !143, file: !143, line: 43, type: !183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = distinct !DISubprogram(name: "acpi_write_bit_register", scope: !3, file: !3, line: 214, type: !248, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{!22, !24, !24}
!250 = !{!251, !252, !253, !254, !255, !256, !257}
!251 = !DILocalVariable(name: "register_id", arg: 1, scope: !247, file: !3, line: 214, type: !24)
!252 = !DILocalVariable(name: "value", arg: 2, scope: !247, file: !3, line: 214, type: !24)
!253 = !DILocalVariable(name: "bit_reg_info", scope: !247, file: !3, line: 216, type: !190)
!254 = !DILocalVariable(name: "lock_flags", scope: !247, file: !3, line: 217, type: !40)
!255 = !DILocalVariable(name: "register_value", scope: !247, file: !3, line: 218, type: !24)
!256 = !DILocalVariable(name: "status", scope: !247, file: !3, line: 219, type: !22)
!257 = !DILabel(scope: !247, name: "unlock_and_exit", file: !3, line: 289)
!258 = !DILocation(line: 214, column: 41, scope: !247)
!259 = !DILocation(line: 214, column: 58, scope: !247)
!260 = !DILocation(line: 216, column: 2, scope: !247)
!261 = !DILocation(line: 216, column: 33, scope: !247)
!262 = !DILocation(line: 217, column: 2, scope: !247)
!263 = !DILocation(line: 217, column: 17, scope: !247)
!264 = !DILocation(line: 218, column: 2, scope: !247)
!265 = !DILocation(line: 218, column: 6, scope: !247)
!266 = !DILocation(line: 219, column: 2, scope: !247)
!267 = !DILocation(line: 219, column: 14, scope: !247)
!268 = !DILocation(line: 225, column: 47, scope: !247)
!269 = !DILocation(line: 225, column: 17, scope: !247)
!270 = !DILocation(line: 225, column: 15, scope: !247)
!271 = !DILocation(line: 226, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !247, file: !3, line: 226, column: 6)
!273 = !DILocation(line: 226, column: 6, scope: !247)
!274 = !DILocation(line: 227, column: 3, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !3, line: 226, column: 21)
!276 = !DILocation(line: 230, column: 40, scope: !247)
!277 = !DILocation(line: 230, column: 15, scope: !247)
!278 = !DILocation(line: 230, column: 13, scope: !247)
!279 = !DILocation(line: 236, column: 6, scope: !280)
!280 = distinct !DILexicalBlock(scope: !247, file: !3, line: 236, column: 6)
!281 = !DILocation(line: 236, column: 20, scope: !280)
!282 = !DILocation(line: 236, column: 36, scope: !280)
!283 = !DILocation(line: 236, column: 6, scope: !247)
!284 = !DILocation(line: 243, column: 34, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !3, line: 236, column: 65)
!286 = !DILocation(line: 243, column: 48, scope: !285)
!287 = !DILocation(line: 243, column: 12, scope: !285)
!288 = !DILocation(line: 243, column: 10, scope: !285)
!289 = !DILocation(line: 245, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !3, line: 245, column: 7)
!291 = !DILocation(line: 245, column: 7, scope: !285)
!292 = !DILocation(line: 246, column: 4, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !3, line: 245, column: 29)
!294 = !DILocation(line: 253, column: 3, scope: !285)
!295 = !DILocation(line: 258, column: 35, scope: !285)
!296 = !DILocation(line: 258, column: 49, scope: !285)
!297 = !DILocation(line: 259, column: 7, scope: !285)
!298 = !DILocation(line: 258, column: 12, scope: !285)
!299 = !DILocation(line: 258, column: 10, scope: !285)
!300 = !DILocation(line: 260, column: 2, scope: !285)
!301 = !DILocation(line: 269, column: 20, scope: !302)
!302 = distinct !DILexicalBlock(scope: !280, file: !3, line: 260, column: 9)
!303 = !DILocation(line: 269, column: 18, scope: !302)
!304 = !DILocation(line: 277, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !3, line: 277, column: 7)
!306 = !DILocation(line: 277, column: 7, scope: !302)
!307 = !DILocation(line: 280, column: 10, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !3, line: 277, column: 23)
!309 = !DILocation(line: 279, column: 8, scope: !308)
!310 = !DILocation(line: 278, column: 11, scope: !308)
!311 = !DILocation(line: 281, column: 3, scope: !308)
!312 = !DILocation(line: 236, column: 39, scope: !280)
!313 = !DILocation(line: 289, column: 1, scope: !247)
!314 = !DILocation(line: 291, column: 27, scope: !247)
!315 = !DILocation(line: 291, column: 51, scope: !247)
!316 = !DILocation(line: 291, column: 2, scope: !247)
!317 = !DILocation(line: 292, column: 2, scope: !247)
!318 = !DILocation(line: 293, column: 1, scope: !247)
!319 = distinct !DISubprogram(name: "acpi_os_acquire_raw_lock", scope: !320, file: !320, line: 104, type: !321, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !352)
!320 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!321 = !DISubroutineType(types: !322)
!322 = !{!40, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !325, line: 23, baseType: !326)
!325 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !325, line: 14, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !326, file: !325, line: 15, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !330, line: 44, baseType: !331)
!330 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !330, line: 14, size: 32, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, scope: !331, file: !330, line: 15, baseType: !334, size: 32)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !331, file: !330, line: 15, size: 32, elements: !335)
!335 = !{!336, !342, !347}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !334, file: !330, line: 16, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !39, line: 174, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 172, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !338, file: !39, line: 173, baseType: !341, size: 32)
!341 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!342 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !330, line: 24, baseType: !343, size: 16)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !330, line: 24, size: 16, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !343, file: !330, line: 25, baseType: !29, size: 8)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !343, file: !330, line: 26, baseType: !29, size: 8, offset: 8)
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !330, line: 28, baseType: !348, size: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !334, file: !330, line: 28, size: 32, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !348, file: !330, line: 29, baseType: !197, size: 16)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !348, file: !330, line: 30, baseType: !197, size: 16, offset: 16)
!352 = !{!353, !354, !355, !358}
!353 = !DILocalVariable(name: "lockp", arg: 1, scope: !319, file: !320, line: 104, type: !323)
!354 = !DILocalVariable(name: "flags", scope: !319, file: !320, line: 106, type: !40)
!355 = !DILocalVariable(name: "__dummy", scope: !356, file: !320, line: 108, type: !40)
!356 = distinct !DILexicalBlock(scope: !357, file: !320, line: 108, column: 2)
!357 = distinct !DILexicalBlock(scope: !319, file: !320, line: 108, column: 2)
!358 = !DILocalVariable(name: "__dummy2", scope: !356, file: !320, line: 108, type: !40)
!359 = !DILocation(line: 104, column: 73, scope: !319)
!360 = !DILocation(line: 106, column: 2, scope: !319)
!361 = !DILocation(line: 106, column: 17, scope: !319)
!362 = !DILocation(line: 108, column: 2, scope: !319)
!363 = !DILocation(line: 108, column: 2, scope: !356)
!364 = !DILocation(line: 108, column: 2, scope: !357)
!365 = !DILocation(line: 109, column: 9, scope: !319)
!366 = !DILocation(line: 110, column: 1, scope: !319)
!367 = !DILocation(line: 109, column: 2, scope: !319)
!368 = !DISubprogram(name: "acpi_hw_register_write", scope: !143, file: !143, line: 45, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = distinct !DISubprogram(name: "acpi_os_release_raw_lock", scope: !320, file: !320, line: 112, type: !370, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !323, !40}
!372 = !{!373, !374, !375, !378}
!373 = !DILocalVariable(name: "lockp", arg: 1, scope: !369, file: !320, line: 112, type: !323)
!374 = !DILocalVariable(name: "flags", arg: 2, scope: !369, file: !320, line: 113, type: !40)
!375 = !DILocalVariable(name: "__dummy", scope: !376, file: !320, line: 115, type: !40)
!376 = distinct !DILexicalBlock(scope: !377, file: !320, line: 115, column: 2)
!377 = distinct !DILexicalBlock(scope: !369, file: !320, line: 115, column: 2)
!378 = !DILocalVariable(name: "__dummy2", scope: !376, file: !320, line: 115, type: !40)
!379 = !DILocation(line: 112, column: 63, scope: !369)
!380 = !DILocation(line: 113, column: 25, scope: !369)
!381 = !DILocation(line: 115, column: 2, scope: !369)
!382 = !DILocation(line: 115, column: 2, scope: !376)
!383 = !DILocation(line: 115, column: 2, scope: !377)
!384 = !DILocation(line: 116, column: 1, scope: !369)
!385 = distinct !DISubprogram(name: "acpi_get_sleep_type_data", scope: !3, file: !3, line: 335, type: !386, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !389)
!386 = !DISubroutineType(types: !387)
!387 = !{!22, !29, !388, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!389 = !{!390, !391, !392, !393, !394, !1212, !1213, !1214, !1215}
!390 = !DILocalVariable(name: "sleep_state", arg: 1, scope: !385, file: !3, line: 335, type: !29)
!391 = !DILocalVariable(name: "sleep_type_a", arg: 2, scope: !385, file: !3, line: 335, type: !388)
!392 = !DILocalVariable(name: "sleep_type_b", arg: 3, scope: !385, file: !3, line: 335, type: !388)
!393 = !DILocalVariable(name: "status", scope: !385, file: !3, line: 337, type: !22)
!394 = !DILocalVariable(name: "info", scope: !385, file: !3, line: 338, type: !395)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !397, line: 152, size: 704, elements: !398)
!397 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!398 = !{!399, !1151, !1153, !1154, !1155, !1156, !1157, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !396, file: !397, line: 155, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !192, line: 133, size: 384, elements: !402)
!402 = !{!403, !1139, !1140, !1141, !1142, !1147, !1148, !1149, !1150}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !401, file: !192, line: 134, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !406, line: 369, size: 576, elements: !407)
!406 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!407 = !{!408, !416, !429, !440, !453, !467, !476, !790, !807, !823, !836, !914, !926, !939, !949, !967, !989, !1008, !1027, !1046, !1059, !1085, !1102, !1115, !1129, !1138}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !405, file: !406, line: 370, baseType: !409, size: 128)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !406, line: 73, size: 128, elements: !410)
!410 = !{!411, !412, !413, !414, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !409, file: !406, line: 74, baseType: !404, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !409, file: !406, line: 74, baseType: !29, size: 8, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !409, file: !406, line: 74, baseType: !29, size: 8, offset: 72)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !409, file: !406, line: 74, baseType: !197, size: 16, offset: 80)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !406, line: 74, baseType: !29, size: 8, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !405, file: !406, line: 371, baseType: !417, size: 192)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !406, line: 76, size: 192, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !428}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !417, file: !406, line: 77, baseType: !404, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !417, file: !406, line: 77, baseType: !29, size: 8, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !406, line: 77, baseType: !29, size: 8, offset: 72)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !417, file: !406, line: 77, baseType: !197, size: 16, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !406, line: 77, baseType: !29, size: 8, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !417, file: !406, line: 77, baseType: !425, size: 24, offset: 104)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 3)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !417, file: !406, line: 78, baseType: !33, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !405, file: !406, line: 372, baseType: !430, size: 256)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !406, line: 93, size: 256, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !439}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !430, file: !406, line: 94, baseType: !404, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !430, file: !406, line: 94, baseType: !29, size: 8, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !430, file: !406, line: 94, baseType: !29, size: 8, offset: 72)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !430, file: !406, line: 94, baseType: !197, size: 16, offset: 80)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !430, file: !406, line: 94, baseType: !29, size: 8, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !430, file: !406, line: 94, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !430, file: !406, line: 94, baseType: !24, size: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !405, file: !406, line: 373, baseType: !441, size: 384)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !406, line: 97, size: 384, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !441, file: !406, line: 98, baseType: !404, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !441, file: !406, line: 98, baseType: !29, size: 8, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !441, file: !406, line: 98, baseType: !29, size: 8, offset: 72)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !441, file: !406, line: 98, baseType: !197, size: 16, offset: 80)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !406, line: 98, baseType: !29, size: 8, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !441, file: !406, line: 98, baseType: !388, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !441, file: !406, line: 98, baseType: !24, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !441, file: !406, line: 99, baseType: !24, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !441, file: !406, line: 100, baseType: !388, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !441, file: !406, line: 101, baseType: !400, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !405, file: !406, line: 374, baseType: !454, size: 384)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !406, line: 104, size: 384, elements: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !462, !464, !465, !466}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !454, file: !406, line: 105, baseType: !404, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !454, file: !406, line: 105, baseType: !29, size: 8, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !454, file: !406, line: 105, baseType: !29, size: 8, offset: 72)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !454, file: !406, line: 105, baseType: !197, size: 16, offset: 80)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !454, file: !406, line: 105, baseType: !29, size: 8, offset: 96)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !454, file: !406, line: 105, baseType: !400, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !454, file: !406, line: 106, baseType: !463, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !454, file: !406, line: 107, baseType: !388, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !454, file: !406, line: 108, baseType: !24, size: 32, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !454, file: !406, line: 109, baseType: !24, size: 32, offset: 352)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !405, file: !406, line: 375, baseType: !468, size: 192)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !406, line: 118, size: 192, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !468, file: !406, line: 119, baseType: !404, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !406, line: 119, baseType: !29, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !406, line: 119, baseType: !29, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !468, file: !406, line: 119, baseType: !197, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !406, line: 119, baseType: !29, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !468, file: !406, line: 119, baseType: !36, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !405, file: !406, line: 376, baseType: !477, size: 448)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !406, line: 144, size: 448, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !787, !788, !789}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !477, file: !406, line: 145, baseType: !404, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !477, file: !406, line: 145, baseType: !29, size: 8, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !477, file: !406, line: 145, baseType: !29, size: 8, offset: 72)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !477, file: !406, line: 145, baseType: !197, size: 16, offset: 80)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !477, file: !406, line: 145, baseType: !29, size: 8, offset: 96)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !477, file: !406, line: 145, baseType: !29, size: 8, offset: 104)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !477, file: !406, line: 146, baseType: !29, size: 8, offset: 112)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !477, file: !406, line: 147, baseType: !29, size: 8, offset: 120)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !477, file: !406, line: 148, baseType: !404, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !477, file: !406, line: 149, baseType: !404, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !477, file: !406, line: 150, baseType: !388, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !477, file: !406, line: 154, baseType: !491, size: 64, offset: 320)
!491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !406, line: 151, size: 64, elements: !492)
!492 = !{!493, !786}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !491, file: !406, line: 152, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !192, line: 248, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!22, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !397, line: 37, size: 9024, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !732, !733, !734, !735, !736, !740, !742, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !769, !770, !771, !772, !773, !774, !775, !776, !778, !784}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !499, file: !397, line: 38, baseType: !498, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !397, line: 39, baseType: !29, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !499, file: !397, line: 40, baseType: !29, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !499, file: !397, line: 41, baseType: !197, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !499, file: !397, line: 42, baseType: !29, size: 8, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !499, file: !397, line: 43, baseType: !29, size: 8, offset: 104)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !499, file: !397, line: 44, baseType: !29, size: 8, offset: 112)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !499, file: !397, line: 45, baseType: !509, size: 16, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !23, line: 445, baseType: !197)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !499, file: !397, line: 46, baseType: !29, size: 8, offset: 144)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !499, file: !397, line: 47, baseType: !29, size: 8, offset: 152)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !499, file: !397, line: 48, baseType: !29, size: 8, offset: 160)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !499, file: !397, line: 49, baseType: !29, size: 8, offset: 168)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !499, file: !397, line: 50, baseType: !29, size: 8, offset: 176)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !499, file: !397, line: 51, baseType: !29, size: 8, offset: 184)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !499, file: !397, line: 52, baseType: !29, size: 8, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !499, file: !397, line: 53, baseType: !29, size: 8, offset: 200)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !499, file: !397, line: 54, baseType: !388, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !499, file: !397, line: 55, baseType: !24, size: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !499, file: !397, line: 56, baseType: !24, size: 32, offset: 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !499, file: !397, line: 57, baseType: !24, size: 32, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !499, file: !397, line: 58, baseType: !24, size: 32, offset: 416)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !499, file: !397, line: 60, baseType: !524, size: 640, offset: 448)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !192, line: 909, size: 640, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !615, !616, !730, !731}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !524, file: !192, line: 910, baseType: !388, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !524, file: !192, line: 911, baseType: !388, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !524, file: !192, line: 912, baseType: !388, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !524, file: !192, line: 913, baseType: !388, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !524, file: !192, line: 914, baseType: !388, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !524, file: !192, line: 915, baseType: !532, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !192, line: 891, size: 1600, elements: !534)
!534 = !{!535, !555, !571}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !533, file: !192, line: 892, baseType: !536, size: 448)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !192, line: 844, size: 448, elements: !537)
!537 = !{!538, !539, !540, !541, !542, !543, !544, !545, !554}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !536, file: !192, line: 845, baseType: !532, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !536, file: !192, line: 845, baseType: !29, size: 8, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !192, line: 845, baseType: !29, size: 8, offset: 72)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !536, file: !192, line: 845, baseType: !197, size: 16, offset: 80)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !536, file: !192, line: 845, baseType: !388, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !192, line: 845, baseType: !532, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !536, file: !192, line: 845, baseType: !400, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !536, file: !192, line: 845, baseType: !546, size: 64, offset: 320)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !192, line: 732, size: 64, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !546, file: !192, line: 733, baseType: !33, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !546, file: !192, line: 734, baseType: !24, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !546, file: !192, line: 735, baseType: !438, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !546, file: !192, line: 736, baseType: !388, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !546, file: !192, line: 737, baseType: !438, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !546, file: !192, line: 738, baseType: !532, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !536, file: !192, line: 845, baseType: !29, size: 8, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !533, file: !192, line: 893, baseType: !556, size: 640)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !192, line: 851, size: 640, elements: !557)
!557 = !{!558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !556, file: !192, line: 852, baseType: !532, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !556, file: !192, line: 852, baseType: !29, size: 8, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !556, file: !192, line: 852, baseType: !29, size: 8, offset: 72)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !556, file: !192, line: 852, baseType: !197, size: 16, offset: 80)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !556, file: !192, line: 852, baseType: !388, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !192, line: 852, baseType: !532, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !556, file: !192, line: 852, baseType: !400, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !556, file: !192, line: 852, baseType: !546, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !556, file: !192, line: 852, baseType: !29, size: 8, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !556, file: !192, line: 852, baseType: !438, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !556, file: !192, line: 853, baseType: !388, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !556, file: !192, line: 854, baseType: !24, size: 32, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !556, file: !192, line: 855, baseType: !24, size: 32, offset: 608)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !533, file: !192, line: 894, baseType: !572, size: 1600)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !192, line: 862, size: 1600, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !572, file: !192, line: 863, baseType: !532, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !572, file: !192, line: 863, baseType: !29, size: 8, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !192, line: 863, baseType: !29, size: 8, offset: 72)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !572, file: !192, line: 863, baseType: !197, size: 16, offset: 80)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !572, file: !192, line: 863, baseType: !388, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !572, file: !192, line: 863, baseType: !532, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !572, file: !192, line: 863, baseType: !400, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !572, file: !192, line: 863, baseType: !546, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !572, file: !192, line: 863, baseType: !29, size: 8, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !572, file: !192, line: 863, baseType: !532, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !572, file: !192, line: 864, baseType: !532, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !572, file: !192, line: 865, baseType: !438, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !572, file: !192, line: 866, baseType: !29, size: 8, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !572, file: !192, line: 867, baseType: !438, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !572, file: !192, line: 868, baseType: !438, size: 64, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !572, file: !192, line: 869, baseType: !438, size: 64, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !572, file: !192, line: 870, baseType: !591, size: 32, offset: 896)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 4)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !572, file: !192, line: 871, baseType: !24, size: 32, offset: 928)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !572, file: !192, line: 872, baseType: !24, size: 32, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !572, file: !192, line: 873, baseType: !24, size: 32, offset: 992)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !572, file: !192, line: 874, baseType: !24, size: 32, offset: 1024)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !572, file: !192, line: 875, baseType: !24, size: 32, offset: 1056)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !572, file: !192, line: 876, baseType: !24, size: 32, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !572, file: !192, line: 877, baseType: !24, size: 32, offset: 1120)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !572, file: !192, line: 878, baseType: !24, size: 32, offset: 1152)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !572, file: !192, line: 879, baseType: !24, size: 32, offset: 1184)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !572, file: !192, line: 880, baseType: !24, size: 32, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !572, file: !192, line: 881, baseType: !24, size: 32, offset: 1248)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !572, file: !192, line: 882, baseType: !24, size: 32, offset: 1280)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !572, file: !192, line: 883, baseType: !24, size: 32, offset: 1312)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !572, file: !192, line: 884, baseType: !197, size: 16, offset: 1344)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !572, file: !192, line: 885, baseType: !29, size: 8, offset: 1360)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !572, file: !192, line: 886, baseType: !29, size: 8, offset: 1368)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !572, file: !192, line: 887, baseType: !29, size: 8, offset: 1376)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !572, file: !192, line: 888, baseType: !612, size: 160, offset: 1384)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 20)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !524, file: !192, line: 916, baseType: !400, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !524, file: !192, line: 917, baseType: !617, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !192, line: 679, size: 640, elements: !619)
!619 = !{!620, !628, !641, !650, !659, !672, !686, !698, !708}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !618, file: !192, line: 680, baseType: !621, size: 128)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !192, line: 575, size: 128, elements: !622)
!622 = !{!623, !624, !625, !626, !627}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !621, file: !192, line: 576, baseType: !36, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !621, file: !192, line: 576, baseType: !29, size: 8, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !192, line: 576, baseType: !29, size: 8, offset: 72)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !621, file: !192, line: 576, baseType: !197, size: 16, offset: 80)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !621, file: !192, line: 576, baseType: !197, size: 16, offset: 96)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !618, file: !192, line: 681, baseType: !629, size: 384)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !192, line: 604, size: 384, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !629, file: !192, line: 605, baseType: !36, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !629, file: !192, line: 605, baseType: !29, size: 8, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !192, line: 605, baseType: !29, size: 8, offset: 72)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !629, file: !192, line: 605, baseType: !197, size: 16, offset: 80)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !629, file: !192, line: 605, baseType: !197, size: 16, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !629, file: !192, line: 606, baseType: !197, size: 16, offset: 112)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !629, file: !192, line: 607, baseType: !532, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !629, file: !192, line: 608, baseType: !388, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !629, file: !192, line: 609, baseType: !388, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !629, file: !192, line: 610, baseType: !33, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !618, file: !192, line: 682, baseType: !642, size: 192)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !192, line: 582, size: 192, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !649}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !642, file: !192, line: 583, baseType: !36, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !642, file: !192, line: 583, baseType: !29, size: 8, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !192, line: 583, baseType: !29, size: 8, offset: 72)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !642, file: !192, line: 583, baseType: !197, size: 16, offset: 80)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !642, file: !192, line: 583, baseType: !197, size: 16, offset: 96)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !642, file: !192, line: 584, baseType: !404, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !618, file: !192, line: 683, baseType: !651, size: 192)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !192, line: 616, size: 192, elements: !652)
!652 = !{!653, !654, !655, !656, !657, !658}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !651, file: !192, line: 617, baseType: !36, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !651, file: !192, line: 617, baseType: !29, size: 8, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !192, line: 617, baseType: !29, size: 8, offset: 72)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !192, line: 617, baseType: !197, size: 16, offset: 80)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !651, file: !192, line: 617, baseType: !197, size: 16, offset: 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !651, file: !192, line: 618, baseType: !400, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !618, file: !192, line: 684, baseType: !660, size: 448)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !192, line: 621, size: 448, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !192, line: 622, baseType: !36, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !660, file: !192, line: 622, baseType: !29, size: 8, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !192, line: 622, baseType: !29, size: 8, offset: 72)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !660, file: !192, line: 622, baseType: !197, size: 16, offset: 80)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !660, file: !192, line: 622, baseType: !197, size: 16, offset: 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !660, file: !192, line: 623, baseType: !24, size: 32, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !660, file: !192, line: 624, baseType: !532, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !660, file: !192, line: 625, baseType: !388, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !660, file: !192, line: 626, baseType: !388, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !660, file: !192, line: 627, baseType: !24, size: 32, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !618, file: !192, line: 685, baseType: !673, size: 512)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !192, line: 590, size: 512, elements: !674)
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !673, file: !192, line: 591, baseType: !36, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !673, file: !192, line: 591, baseType: !29, size: 8, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !673, file: !192, line: 591, baseType: !29, size: 8, offset: 72)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !673, file: !192, line: 591, baseType: !197, size: 16, offset: 80)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !673, file: !192, line: 591, baseType: !197, size: 16, offset: 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !673, file: !192, line: 592, baseType: !24, size: 32, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !673, file: !192, line: 593, baseType: !404, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !673, file: !192, line: 594, baseType: !404, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !673, file: !192, line: 595, baseType: !498, size: 64, offset: 320)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !673, file: !192, line: 596, baseType: !36, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !673, file: !192, line: 597, baseType: !24, size: 32, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !618, file: !192, line: 686, baseType: !687, size: 320)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !192, line: 634, size: 320, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !687, file: !192, line: 635, baseType: !36, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !687, file: !192, line: 635, baseType: !29, size: 8, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !192, line: 635, baseType: !29, size: 8, offset: 72)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !687, file: !192, line: 635, baseType: !197, size: 16, offset: 80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !687, file: !192, line: 635, baseType: !197, size: 16, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !687, file: !192, line: 636, baseType: !29, size: 8, offset: 112)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !687, file: !192, line: 637, baseType: !498, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !687, file: !192, line: 638, baseType: !404, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !687, file: !192, line: 639, baseType: !33, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !618, file: !192, line: 687, baseType: !699, size: 640)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !192, line: 646, size: 640, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !192, line: 647, baseType: !36, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !699, file: !192, line: 647, baseType: !29, size: 8, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !192, line: 647, baseType: !29, size: 8, offset: 72)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !699, file: !192, line: 647, baseType: !197, size: 16, offset: 80)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !699, file: !192, line: 647, baseType: !197, size: 16, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !699, file: !192, line: 648, baseType: !707, size: 512, offset: 128)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 512, elements: !77)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !618, file: !192, line: 688, baseType: !709, size: 320)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !192, line: 669, size: 320, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !192, line: 670, baseType: !36, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !192, line: 670, baseType: !29, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !192, line: 670, baseType: !29, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !709, file: !192, line: 670, baseType: !197, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !709, file: !192, line: 670, baseType: !197, size: 16, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !709, file: !192, line: 671, baseType: !29, size: 8, offset: 112)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !192, line: 672, baseType: !400, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !709, file: !192, line: 673, baseType: !404, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !709, file: !192, line: 674, baseType: !720, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !192, line: 660, size: 128, elements: !722)
!722 = !{!723, !729}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !721, file: !192, line: 661, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !23, line: 1061, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !728, !24, !36}
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !23, line: 424, baseType: !36)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !721, file: !192, line: 662, baseType: !36, size: 64, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !524, file: !192, line: 918, baseType: !532, size: 64, offset: 512)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !524, file: !192, line: 919, baseType: !24, size: 32, offset: 576)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !499, file: !397, line: 61, baseType: !24, size: 32, offset: 1088)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !499, file: !397, line: 62, baseType: !24, size: 32, offset: 1120)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !499, file: !397, line: 63, baseType: !197, size: 16, offset: 1152)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !499, file: !397, line: 64, baseType: !29, size: 8, offset: 1168)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !499, file: !397, line: 66, baseType: !737, size: 2688, offset: 1216)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 2688, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 7)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !499, file: !397, line: 67, baseType: !741, size: 3072, offset: 3904)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 3072, elements: !77)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !499, file: !397, line: 68, baseType: !743, size: 576, offset: 6976)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 576, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 9)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !499, file: !397, line: 69, baseType: !463, size: 64, offset: 7552)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !499, file: !397, line: 71, baseType: !388, size: 64, offset: 7616)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !499, file: !397, line: 72, baseType: !463, size: 64, offset: 7680)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !499, file: !397, line: 73, baseType: !617, size: 64, offset: 7744)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !499, file: !397, line: 74, baseType: !400, size: 64, offset: 7808)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !499, file: !397, line: 75, baseType: !404, size: 64, offset: 7872)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !499, file: !397, line: 76, baseType: !400, size: 64, offset: 7936)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !499, file: !397, line: 77, baseType: !532, size: 64, offset: 8000)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !499, file: !397, line: 78, baseType: !404, size: 64, offset: 8064)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !499, file: !397, line: 79, baseType: !400, size: 64, offset: 8128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !499, file: !397, line: 80, baseType: !438, size: 64, offset: 8192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !499, file: !397, line: 81, baseType: !532, size: 64, offset: 8256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !499, file: !397, line: 82, baseType: !759, size: 64, offset: 8320)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !192, line: 718, size: 128, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !761, file: !192, line: 722, baseType: !24, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !761, file: !192, line: 723, baseType: !24, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !192, line: 724, baseType: !197, size: 16, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !761, file: !192, line: 725, baseType: !29, size: 8, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !761, file: !192, line: 726, baseType: !29, size: 8, offset: 88)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !192, line: 727, baseType: !29, size: 8, offset: 96)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !499, file: !397, line: 83, baseType: !532, size: 64, offset: 8384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !499, file: !397, line: 84, baseType: !404, size: 64, offset: 8448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !499, file: !397, line: 85, baseType: !617, size: 64, offset: 8512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !499, file: !397, line: 86, baseType: !404, size: 64, offset: 8576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !499, file: !397, line: 87, baseType: !617, size: 64, offset: 8640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !499, file: !397, line: 88, baseType: !532, size: 64, offset: 8704)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !499, file: !397, line: 89, baseType: !532, size: 64, offset: 8768)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !499, file: !397, line: 90, baseType: !777, size: 64, offset: 8832)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !499, file: !397, line: 91, baseType: !779, size: 64, offset: 8896)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !192, line: 652, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!22, !498, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !499, file: !397, line: 92, baseType: !785, size: 64, offset: 8960)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !192, line: 656, baseType: !495)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !491, file: !406, line: 153, baseType: !404, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !477, file: !406, line: 156, baseType: !24, size: 32, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !477, file: !406, line: 157, baseType: !509, size: 16, offset: 416)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !477, file: !406, line: 158, baseType: !29, size: 8, offset: 432)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !405, file: !406, line: 377, baseType: !791, size: 576)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !406, line: 122, size: 576, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !791, file: !406, line: 123, baseType: !404, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !791, file: !406, line: 123, baseType: !29, size: 8, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !791, file: !406, line: 123, baseType: !29, size: 8, offset: 72)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !791, file: !406, line: 123, baseType: !197, size: 16, offset: 80)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !791, file: !406, line: 123, baseType: !29, size: 8, offset: 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !791, file: !406, line: 123, baseType: !29, size: 8, offset: 104)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !791, file: !406, line: 124, baseType: !197, size: 16, offset: 112)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !791, file: !406, line: 125, baseType: !36, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !791, file: !406, line: 126, baseType: !33, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !791, file: !406, line: 127, baseType: !777, size: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !791, file: !406, line: 128, baseType: !404, size: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !791, file: !406, line: 129, baseType: !404, size: 64, offset: 384)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !791, file: !406, line: 130, baseType: !400, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !791, file: !406, line: 131, baseType: !29, size: 8, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !405, file: !406, line: 378, baseType: !808, size: 512)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !406, line: 134, size: 512, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !821, !822}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !808, file: !406, line: 135, baseType: !404, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !808, file: !406, line: 135, baseType: !29, size: 8, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !406, line: 135, baseType: !29, size: 8, offset: 72)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !808, file: !406, line: 135, baseType: !197, size: 16, offset: 80)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !406, line: 135, baseType: !29, size: 8, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !808, file: !406, line: 135, baseType: !29, size: 8, offset: 104)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !808, file: !406, line: 136, baseType: !400, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !808, file: !406, line: 137, baseType: !404, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !406, line: 138, baseType: !404, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !808, file: !406, line: 139, baseType: !820, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !33)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !808, file: !406, line: 140, baseType: !24, size: 32, offset: 384)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !808, file: !406, line: 141, baseType: !36, size: 64, offset: 448)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !405, file: !406, line: 379, baseType: !824, size: 320)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !406, line: 185, size: 320, elements: !825)
!825 = !{!826, !827, !828, !829, !830, !831, !835}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !824, file: !406, line: 186, baseType: !404, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !824, file: !406, line: 186, baseType: !29, size: 8, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !406, line: 186, baseType: !29, size: 8, offset: 72)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !824, file: !406, line: 186, baseType: !197, size: 16, offset: 80)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !824, file: !406, line: 186, baseType: !29, size: 8, offset: 96)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !824, file: !406, line: 186, baseType: !832, size: 128, offset: 128)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 128, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 2)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !824, file: !406, line: 186, baseType: !404, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !405, file: !406, line: 380, baseType: !837, size: 384)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !406, line: 188, size: 384, elements: !838)
!838 = !{!839, !840, !841, !842, !843, !844, !845, !846}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !837, file: !406, line: 189, baseType: !404, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !837, file: !406, line: 189, baseType: !29, size: 8, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !837, file: !406, line: 189, baseType: !29, size: 8, offset: 72)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !837, file: !406, line: 189, baseType: !197, size: 16, offset: 80)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !406, line: 189, baseType: !29, size: 8, offset: 96)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !837, file: !406, line: 190, baseType: !832, size: 128, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !837, file: !406, line: 190, baseType: !404, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !837, file: !406, line: 190, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !192, line: 480, size: 576, elements: !849)
!849 = !{!850, !851, !852, !853, !861, !876, !908, !909, !910, !911, !912, !913}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !848, file: !192, line: 481, baseType: !400, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !848, file: !192, line: 482, baseType: !847, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !192, line: 483, baseType: !847, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !848, file: !192, line: 484, baseType: !854, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !192, line: 497, size: 256, elements: !856)
!856 = !{!857, !858, !859, !860}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !855, file: !192, line: 498, baseType: !854, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !855, file: !192, line: 499, baseType: !854, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !855, file: !192, line: 500, baseType: !847, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !855, file: !192, line: 501, baseType: !24, size: 32, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !848, file: !192, line: 485, baseType: !862, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !192, line: 466, size: 320, elements: !864)
!864 = !{!865, !870, !871, !872, !873, !874, !875}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !863, file: !192, line: 467, baseType: !866, size: 128)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !192, line: 459, size: 128, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !866, file: !192, line: 460, baseType: !29, size: 8)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !866, file: !192, line: 461, baseType: !33, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !863, file: !192, line: 468, baseType: !866, size: 128, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !863, file: !192, line: 469, baseType: !197, size: 16, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !863, file: !192, line: 470, baseType: !29, size: 8, offset: 272)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !863, file: !192, line: 471, baseType: !29, size: 8, offset: 280)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !863, file: !192, line: 472, baseType: !29, size: 8, offset: 288)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !863, file: !192, line: 473, baseType: !29, size: 8, offset: 296)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !848, file: !192, line: 486, baseType: !877, size: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !192, line: 448, size: 192, elements: !879)
!879 = !{!880, !903, !904, !905, !906, !907}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !878, file: !192, line: 449, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !192, line: 438, size: 64, elements: !882)
!882 = !{!883, !884, !897}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !881, file: !192, line: 439, baseType: !400, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !881, file: !192, line: 440, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !192, line: 419, size: 256, elements: !887)
!887 = !{!888, !893, !894, !895, !896}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !886, file: !192, line: 420, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !23, line: 1058, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!24, !728, !24, !36}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !886, file: !192, line: 421, baseType: !36, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !886, file: !192, line: 422, baseType: !400, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !886, file: !192, line: 423, baseType: !29, size: 8, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !886, file: !192, line: 424, baseType: !29, size: 8, offset: 200)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !881, file: !192, line: 441, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !192, line: 429, size: 128, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !899, file: !192, line: 430, baseType: !400, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !899, file: !192, line: 431, baseType: !898, size: 64, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !878, file: !192, line: 450, baseType: !862, size: 64, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !878, file: !192, line: 451, baseType: !29, size: 8, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !878, file: !192, line: 452, baseType: !29, size: 8, offset: 136)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !878, file: !192, line: 453, baseType: !29, size: 8, offset: 144)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !878, file: !192, line: 454, baseType: !29, size: 8, offset: 152)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !848, file: !192, line: 487, baseType: !33, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !848, file: !192, line: 488, baseType: !24, size: 32, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !848, file: !192, line: 489, baseType: !197, size: 16, offset: 480)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !848, file: !192, line: 490, baseType: !197, size: 16, offset: 496)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !848, file: !192, line: 491, baseType: !29, size: 8, offset: 512)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !848, file: !192, line: 492, baseType: !29, size: 8, offset: 520)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !405, file: !406, line: 381, baseType: !915, size: 384)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !406, line: 193, size: 384, elements: !916)
!916 = !{!917, !918, !919, !920, !921, !922, !923, !924, !925}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !915, file: !406, line: 194, baseType: !404, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !915, file: !406, line: 194, baseType: !29, size: 8, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !915, file: !406, line: 194, baseType: !29, size: 8, offset: 72)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !915, file: !406, line: 194, baseType: !197, size: 16, offset: 80)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !915, file: !406, line: 194, baseType: !29, size: 8, offset: 96)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !915, file: !406, line: 194, baseType: !832, size: 128, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !915, file: !406, line: 194, baseType: !404, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !915, file: !406, line: 194, baseType: !24, size: 32, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !915, file: !406, line: 195, baseType: !24, size: 32, offset: 352)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !405, file: !406, line: 382, baseType: !927, size: 384)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !406, line: 198, size: 384, elements: !928)
!928 = !{!929, !930, !931, !932, !933, !934, !935, !936, !937, !938}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !927, file: !406, line: 199, baseType: !404, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !927, file: !406, line: 199, baseType: !29, size: 8, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !927, file: !406, line: 199, baseType: !29, size: 8, offset: 72)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !927, file: !406, line: 199, baseType: !197, size: 16, offset: 80)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !927, file: !406, line: 199, baseType: !29, size: 8, offset: 96)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !927, file: !406, line: 201, baseType: !29, size: 8, offset: 104)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !927, file: !406, line: 202, baseType: !29, size: 8, offset: 112)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !927, file: !406, line: 203, baseType: !832, size: 128, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !927, file: !406, line: 203, baseType: !404, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !927, file: !406, line: 203, baseType: !32, size: 64, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !405, file: !406, line: 383, baseType: !940, size: 320)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !406, line: 206, size: 320, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !940, file: !406, line: 207, baseType: !404, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !940, file: !406, line: 207, baseType: !29, size: 8, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !940, file: !406, line: 207, baseType: !29, size: 8, offset: 72)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !940, file: !406, line: 207, baseType: !197, size: 16, offset: 80)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !940, file: !406, line: 207, baseType: !29, size: 8, offset: 96)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !940, file: !406, line: 207, baseType: !832, size: 128, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !940, file: !406, line: 207, baseType: !404, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !405, file: !406, line: 384, baseType: !950, size: 384)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !406, line: 234, size: 384, elements: !951)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !950, file: !406, line: 235, baseType: !404, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !950, file: !406, line: 235, baseType: !29, size: 8, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !950, file: !406, line: 235, baseType: !29, size: 8, offset: 72)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !950, file: !406, line: 235, baseType: !197, size: 16, offset: 80)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !950, file: !406, line: 235, baseType: !29, size: 8, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !950, file: !406, line: 235, baseType: !29, size: 8, offset: 104)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !950, file: !406, line: 235, baseType: !29, size: 8, offset: 112)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !950, file: !406, line: 235, baseType: !29, size: 8, offset: 120)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !950, file: !406, line: 235, baseType: !400, size: 64, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !950, file: !406, line: 235, baseType: !24, size: 32, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !950, file: !406, line: 235, baseType: !24, size: 32, offset: 224)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !950, file: !406, line: 235, baseType: !24, size: 32, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !950, file: !406, line: 235, baseType: !29, size: 8, offset: 288)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !950, file: !406, line: 235, baseType: !29, size: 8, offset: 296)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !950, file: !406, line: 235, baseType: !404, size: 64, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !405, file: !406, line: 385, baseType: !968, size: 576)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !406, line: 238, size: 576, elements: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !968, file: !406, line: 239, baseType: !404, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !968, file: !406, line: 239, baseType: !29, size: 8, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !968, file: !406, line: 239, baseType: !29, size: 8, offset: 72)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !968, file: !406, line: 239, baseType: !197, size: 16, offset: 80)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !406, line: 239, baseType: !29, size: 8, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !968, file: !406, line: 239, baseType: !29, size: 8, offset: 104)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !968, file: !406, line: 239, baseType: !29, size: 8, offset: 112)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !968, file: !406, line: 239, baseType: !29, size: 8, offset: 120)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !968, file: !406, line: 239, baseType: !400, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !968, file: !406, line: 239, baseType: !24, size: 32, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !968, file: !406, line: 239, baseType: !24, size: 32, offset: 224)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !968, file: !406, line: 239, baseType: !24, size: 32, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !968, file: !406, line: 239, baseType: !29, size: 8, offset: 288)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !968, file: !406, line: 239, baseType: !29, size: 8, offset: 296)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !968, file: !406, line: 239, baseType: !197, size: 16, offset: 304)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !968, file: !406, line: 240, baseType: !404, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !968, file: !406, line: 241, baseType: !388, size: 64, offset: 384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !968, file: !406, line: 242, baseType: !197, size: 16, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !968, file: !406, line: 243, baseType: !388, size: 64, offset: 512)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !405, file: !406, line: 386, baseType: !990, size: 384)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !406, line: 263, size: 384, elements: !991)
!991 = !{!992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !990, file: !406, line: 264, baseType: !404, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !990, file: !406, line: 264, baseType: !29, size: 8, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !990, file: !406, line: 264, baseType: !29, size: 8, offset: 72)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !990, file: !406, line: 264, baseType: !197, size: 16, offset: 80)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !990, file: !406, line: 264, baseType: !29, size: 8, offset: 96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !990, file: !406, line: 264, baseType: !29, size: 8, offset: 104)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !990, file: !406, line: 264, baseType: !29, size: 8, offset: 112)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !990, file: !406, line: 264, baseType: !29, size: 8, offset: 120)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !990, file: !406, line: 264, baseType: !400, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !990, file: !406, line: 264, baseType: !24, size: 32, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !990, file: !406, line: 264, baseType: !24, size: 32, offset: 224)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !990, file: !406, line: 264, baseType: !24, size: 32, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !990, file: !406, line: 264, baseType: !29, size: 8, offset: 288)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !990, file: !406, line: 264, baseType: !29, size: 8, offset: 296)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !990, file: !406, line: 264, baseType: !29, size: 8, offset: 304)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !990, file: !406, line: 265, baseType: !404, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !405, file: !406, line: 387, baseType: !1009, size: 448)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !406, line: 246, size: 448, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1009, file: !406, line: 247, baseType: !404, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1009, file: !406, line: 247, baseType: !29, size: 8, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1009, file: !406, line: 247, baseType: !29, size: 8, offset: 72)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1009, file: !406, line: 247, baseType: !197, size: 16, offset: 80)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1009, file: !406, line: 247, baseType: !29, size: 8, offset: 96)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1009, file: !406, line: 247, baseType: !29, size: 8, offset: 104)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1009, file: !406, line: 247, baseType: !29, size: 8, offset: 112)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1009, file: !406, line: 247, baseType: !29, size: 8, offset: 120)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1009, file: !406, line: 247, baseType: !400, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1009, file: !406, line: 247, baseType: !24, size: 32, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1009, file: !406, line: 247, baseType: !24, size: 32, offset: 224)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1009, file: !406, line: 247, baseType: !24, size: 32, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1009, file: !406, line: 247, baseType: !29, size: 8, offset: 288)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1009, file: !406, line: 247, baseType: !29, size: 8, offset: 296)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1009, file: !406, line: 247, baseType: !404, size: 64, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1009, file: !406, line: 248, baseType: !404, size: 64, offset: 384)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !405, file: !406, line: 388, baseType: !1028, size: 448)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !406, line: 251, size: 448, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1028, file: !406, line: 252, baseType: !404, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1028, file: !406, line: 252, baseType: !29, size: 8, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1028, file: !406, line: 252, baseType: !29, size: 8, offset: 72)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1028, file: !406, line: 252, baseType: !197, size: 16, offset: 80)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1028, file: !406, line: 252, baseType: !29, size: 8, offset: 96)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1028, file: !406, line: 252, baseType: !29, size: 8, offset: 104)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1028, file: !406, line: 252, baseType: !29, size: 8, offset: 112)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1028, file: !406, line: 252, baseType: !29, size: 8, offset: 120)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1028, file: !406, line: 252, baseType: !400, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1028, file: !406, line: 252, baseType: !24, size: 32, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1028, file: !406, line: 252, baseType: !24, size: 32, offset: 224)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1028, file: !406, line: 252, baseType: !24, size: 32, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1028, file: !406, line: 252, baseType: !29, size: 8, offset: 288)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1028, file: !406, line: 252, baseType: !29, size: 8, offset: 296)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1028, file: !406, line: 257, baseType: !404, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1028, file: !406, line: 258, baseType: !404, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !405, file: !406, line: 389, baseType: !1047, size: 512)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !406, line: 274, size: 512, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1047, file: !406, line: 275, baseType: !404, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1047, file: !406, line: 275, baseType: !29, size: 8, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1047, file: !406, line: 275, baseType: !29, size: 8, offset: 72)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1047, file: !406, line: 275, baseType: !197, size: 16, offset: 80)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1047, file: !406, line: 275, baseType: !29, size: 8, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1047, file: !406, line: 275, baseType: !400, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1047, file: !406, line: 276, baseType: !24, size: 32, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1047, file: !406, line: 277, baseType: !724, size: 64, offset: 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1047, file: !406, line: 278, baseType: !36, size: 64, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1047, file: !406, line: 279, baseType: !832, size: 128, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !405, file: !406, line: 390, baseType: !1060, size: 576)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !406, line: 282, size: 576, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1074, !1075, !1076, !1077, !1083, !1084}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1060, file: !406, line: 283, baseType: !404, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1060, file: !406, line: 283, baseType: !29, size: 8, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1060, file: !406, line: 283, baseType: !29, size: 8, offset: 72)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1060, file: !406, line: 283, baseType: !197, size: 16, offset: 80)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1060, file: !406, line: 283, baseType: !29, size: 8, offset: 96)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1060, file: !406, line: 283, baseType: !29, size: 8, offset: 104)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1060, file: !406, line: 284, baseType: !29, size: 8, offset: 112)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1060, file: !406, line: 285, baseType: !1070, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !23, line: 1093, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!22, !24, !820, !24, !149, !36, !36}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1060, file: !406, line: 286, baseType: !400, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1060, file: !406, line: 287, baseType: !36, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !1060, file: !406, line: 288, baseType: !36, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1060, file: !406, line: 289, baseType: !1078, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !23, line: 1126, baseType: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!22, !728, !24, !36, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1060, file: !406, line: 290, baseType: !404, size: 64, offset: 448)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1060, file: !406, line: 291, baseType: !404, size: 64, offset: 512)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !405, file: !406, line: 391, baseType: !1086, size: 512)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !406, line: 309, size: 512, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1086, file: !406, line: 310, baseType: !404, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1086, file: !406, line: 310, baseType: !29, size: 8, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1086, file: !406, line: 310, baseType: !29, size: 8, offset: 72)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1086, file: !406, line: 310, baseType: !197, size: 16, offset: 80)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1086, file: !406, line: 310, baseType: !29, size: 8, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1086, file: !406, line: 310, baseType: !29, size: 8, offset: 104)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1086, file: !406, line: 311, baseType: !29, size: 8, offset: 112)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1086, file: !406, line: 312, baseType: !29, size: 8, offset: 120)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1086, file: !406, line: 313, baseType: !36, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1086, file: !406, line: 314, baseType: !400, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1086, file: !406, line: 315, baseType: !463, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1086, file: !406, line: 316, baseType: !388, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1086, file: !406, line: 317, baseType: !388, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1086, file: !406, line: 318, baseType: !24, size: 32, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !405, file: !406, line: 392, baseType: !1103, size: 448)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !406, line: 342, size: 448, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1103, file: !406, line: 343, baseType: !404, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1103, file: !406, line: 343, baseType: !29, size: 8, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1103, file: !406, line: 343, baseType: !29, size: 8, offset: 72)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1103, file: !406, line: 343, baseType: !197, size: 16, offset: 80)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1103, file: !406, line: 343, baseType: !29, size: 8, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1103, file: !406, line: 343, baseType: !400, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1103, file: !406, line: 344, baseType: !400, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1103, file: !406, line: 345, baseType: !36, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1103, file: !406, line: 346, baseType: !388, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1103, file: !406, line: 347, baseType: !24, size: 32, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !405, file: !406, line: 393, baseType: !1116, size: 256)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !406, line: 352, size: 256, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1128}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1116, file: !406, line: 353, baseType: !404, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1116, file: !406, line: 353, baseType: !29, size: 8, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1116, file: !406, line: 353, baseType: !29, size: 8, offset: 72)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1116, file: !406, line: 353, baseType: !197, size: 16, offset: 80)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !406, line: 353, baseType: !29, size: 8, offset: 96)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1116, file: !406, line: 353, baseType: !1124, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !23, line: 1064, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !728, !36}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1116, file: !406, line: 354, baseType: !36, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !405, file: !406, line: 394, baseType: !1130, size: 192)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !406, line: 359, size: 192, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1130, file: !406, line: 360, baseType: !404, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1130, file: !406, line: 360, baseType: !29, size: 8, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1130, file: !406, line: 360, baseType: !29, size: 8, offset: 72)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1130, file: !406, line: 360, baseType: !197, size: 16, offset: 80)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !406, line: 360, baseType: !29, size: 8, offset: 96)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1130, file: !406, line: 360, baseType: !404, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !405, file: !406, line: 401, baseType: !401, size: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !401, file: !192, line: 135, baseType: !29, size: 8, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !401, file: !192, line: 136, baseType: !29, size: 8, offset: 72)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !192, line: 137, baseType: !197, size: 16, offset: 80)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !192, line: 138, baseType: !1143, size: 32, offset: 96)
!1143 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !95, line: 328, size: 32, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1143, file: !95, line: 329, baseType: !24, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1143, file: !95, line: 330, baseType: !591, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !401, file: !192, line: 139, baseType: !400, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !401, file: !192, line: 140, baseType: !400, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !401, file: !192, line: 141, baseType: !400, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !401, file: !192, line: 142, baseType: !509, size: 16, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !396, file: !397, line: 156, baseType: !1152, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !396, file: !397, line: 157, baseType: !463, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !396, file: !397, line: 159, baseType: !400, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !396, file: !397, line: 160, baseType: !404, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !396, file: !397, line: 161, baseType: !438, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !396, file: !397, line: 163, baseType: !1158, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !192, line: 351, size: 56, elements: !1161)
!1161 = !{!1162, !1168, !1177, !1185, !1194}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1160, file: !192, line: 352, baseType: !1163, size: 56)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !192, line: 295, size: 56, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1163, file: !192, line: 296, baseType: !591, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1163, file: !192, line: 297, baseType: !197, size: 16, offset: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1163, file: !192, line: 298, baseType: !29, size: 8, offset: 48)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1160, file: !192, line: 353, baseType: !1169, size: 56)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !192, line: 314, size: 56, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1169, file: !192, line: 315, baseType: !29, size: 8)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1169, file: !192, line: 316, baseType: !29, size: 8, offset: 8)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1169, file: !192, line: 317, baseType: !29, size: 8, offset: 16)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1169, file: !192, line: 318, baseType: !29, size: 8, offset: 24)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1169, file: !192, line: 319, baseType: !29, size: 8, offset: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1169, file: !192, line: 320, baseType: !197, size: 16, offset: 40)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1160, file: !192, line: 354, baseType: !1178, size: 56)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !192, line: 325, size: 56, elements: !1179)
!1179 = !{!1180, !1181, !1182, !1184}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1178, file: !192, line: 326, baseType: !29, size: 8)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1178, file: !192, line: 327, baseType: !29, size: 8, offset: 8)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1178, file: !192, line: 328, baseType: !1183, size: 32, offset: 16)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !592)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1178, file: !192, line: 329, baseType: !29, size: 8, offset: 48)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1160, file: !192, line: 355, baseType: !1186, size: 56)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !192, line: 334, size: 56, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1192, !1193}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1186, file: !192, line: 335, baseType: !29, size: 8)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1186, file: !192, line: 336, baseType: !29, size: 8, offset: 8)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1186, file: !192, line: 337, baseType: !1191, size: 16, offset: 16)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 16, elements: !833)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1186, file: !192, line: 338, baseType: !29, size: 8, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1186, file: !192, line: 339, baseType: !197, size: 16, offset: 40)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1160, file: !192, line: 356, baseType: !1195, size: 56)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !192, line: 342, size: 56, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1195, file: !192, line: 343, baseType: !29, size: 8)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1195, file: !192, line: 344, baseType: !29, size: 8, offset: 8)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1195, file: !192, line: 345, baseType: !29, size: 8, offset: 16)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1195, file: !192, line: 346, baseType: !29, size: 8, offset: 24)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1195, file: !192, line: 347, baseType: !29, size: 8, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1195, file: !192, line: 348, baseType: !197, size: 16, offset: 40)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !396, file: !397, line: 164, baseType: !404, size: 64, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !396, file: !397, line: 165, baseType: !404, size: 64, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !396, file: !397, line: 167, baseType: !24, size: 32, offset: 576)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !396, file: !397, line: 168, baseType: !24, size: 32, offset: 608)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !396, file: !397, line: 169, baseType: !197, size: 16, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !396, file: !397, line: 170, baseType: !197, size: 16, offset: 656)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !396, file: !397, line: 171, baseType: !29, size: 8, offset: 672)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !396, file: !397, line: 172, baseType: !29, size: 8, offset: 680)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !396, file: !397, line: 173, baseType: !29, size: 8, offset: 688)
!1212 = !DILocalVariable(name: "elements", scope: !385, file: !3, line: 339, type: !463)
!1213 = !DILabel(scope: !385, name: "return_value_cleanup", file: !3, line: 433)
!1214 = !DILabel(scope: !385, name: "warning_cleanup", file: !3, line: 436)
!1215 = !DILabel(scope: !385, name: "final_cleanup", file: !3, line: 443)
!1216 = !DILocation(line: 335, column: 29, scope: !385)
!1217 = !DILocation(line: 335, column: 46, scope: !385)
!1218 = !DILocation(line: 335, column: 64, scope: !385)
!1219 = !DILocation(line: 337, column: 2, scope: !385)
!1220 = !DILocation(line: 337, column: 14, scope: !385)
!1221 = !DILocation(line: 338, column: 2, scope: !385)
!1222 = !DILocation(line: 338, column: 29, scope: !385)
!1223 = !DILocation(line: 339, column: 2, scope: !385)
!1224 = !DILocation(line: 339, column: 30, scope: !385)
!1225 = !DILocation(line: 345, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !385, file: !3, line: 345, column: 6)
!1227 = !DILocation(line: 345, column: 19, scope: !1226)
!1228 = !DILocation(line: 345, column: 40, scope: !1226)
!1229 = !DILocation(line: 345, column: 44, scope: !1226)
!1230 = !DILocation(line: 345, column: 57, scope: !1226)
!1231 = !DILocation(line: 345, column: 61, scope: !1226)
!1232 = !DILocation(line: 345, column: 6, scope: !385)
!1233 = !DILocation(line: 346, column: 3, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 345, column: 75)
!1235 = !DILocation(line: 351, column: 9, scope: !385)
!1236 = !DILocation(line: 351, column: 7, scope: !385)
!1237 = !DILocation(line: 352, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !385, file: !3, line: 352, column: 6)
!1239 = !DILocation(line: 352, column: 6, scope: !385)
!1240 = !DILocation(line: 353, column: 3, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 352, column: 13)
!1242 = !DILocation(line: 360, column: 55, scope: !385)
!1243 = !DILocation(line: 360, column: 28, scope: !385)
!1244 = !DILocation(line: 360, column: 2, scope: !385)
!1245 = !DILocation(line: 360, column: 8, scope: !385)
!1246 = !DILocation(line: 360, column: 26, scope: !385)
!1247 = !DILocation(line: 362, column: 28, scope: !385)
!1248 = !DILocation(line: 362, column: 11, scope: !385)
!1249 = !DILocation(line: 362, column: 9, scope: !385)
!1250 = !DILocation(line: 363, column: 6, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !385, file: !3, line: 363, column: 6)
!1252 = !DILocation(line: 363, column: 6, scope: !385)
!1253 = !DILocation(line: 364, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 364, column: 7)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 363, column: 28)
!1256 = !DILocation(line: 364, column: 14, scope: !1254)
!1257 = !DILocation(line: 364, column: 7, scope: !1255)
!1258 = !DILocation(line: 368, column: 4, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 364, column: 31)
!1260 = !DILocation(line: 371, column: 3, scope: !1255)
!1261 = !DILocation(line: 376, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !385, file: !3, line: 376, column: 6)
!1263 = !DILocation(line: 376, column: 13, scope: !1262)
!1264 = !DILocation(line: 376, column: 6, scope: !385)
!1265 = !DILocation(line: 377, column: 3, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 376, column: 28)
!1267 = !DILocation(line: 379, column: 10, scope: !1266)
!1268 = !DILocation(line: 380, column: 3, scope: !1266)
!1269 = !DILocation(line: 385, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !385, file: !3, line: 385, column: 6)
!1271 = !DILocation(line: 385, column: 12, scope: !1270)
!1272 = !DILocation(line: 385, column: 34, scope: !1270)
!1273 = !DILocation(line: 385, column: 39, scope: !1270)
!1274 = !DILocation(line: 385, column: 6, scope: !385)
!1275 = !DILocation(line: 386, column: 3, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 385, column: 61)
!1277 = !DILocation(line: 388, column: 10, scope: !1276)
!1278 = !DILocation(line: 389, column: 3, scope: !1276)
!1279 = !DILocation(line: 397, column: 13, scope: !385)
!1280 = !DILocation(line: 397, column: 19, scope: !385)
!1281 = !DILocation(line: 397, column: 42, scope: !385)
!1282 = !DILocation(line: 397, column: 11, scope: !385)
!1283 = !DILocation(line: 398, column: 10, scope: !385)
!1284 = !DILocation(line: 398, column: 16, scope: !385)
!1285 = !DILocation(line: 398, column: 39, scope: !385)
!1286 = !DILocation(line: 398, column: 2, scope: !385)
!1287 = !DILocation(line: 401, column: 10, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !385, file: !3, line: 398, column: 46)
!1289 = !DILocation(line: 402, column: 3, scope: !1288)
!1290 = !DILocation(line: 406, column: 7, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 406, column: 7)
!1292 = !DILocation(line: 406, column: 27, scope: !1291)
!1293 = !DILocation(line: 406, column: 32, scope: !1291)
!1294 = !DILocation(line: 406, column: 7, scope: !1288)
!1295 = !DILocation(line: 407, column: 11, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 406, column: 54)
!1297 = !DILocation(line: 408, column: 4, scope: !1296)
!1298 = !DILocation(line: 413, column: 23, scope: !1288)
!1299 = !DILocation(line: 413, column: 44, scope: !1288)
!1300 = !DILocation(line: 413, column: 19, scope: !1288)
!1301 = !DILocation(line: 413, column: 4, scope: !1288)
!1302 = !DILocation(line: 413, column: 17, scope: !1288)
!1303 = !DILocation(line: 414, column: 24, scope: !1288)
!1304 = !DILocation(line: 414, column: 45, scope: !1288)
!1305 = !DILocation(line: 414, column: 51, scope: !1288)
!1306 = !DILocation(line: 414, column: 19, scope: !1288)
!1307 = !DILocation(line: 414, column: 4, scope: !1288)
!1308 = !DILocation(line: 414, column: 17, scope: !1288)
!1309 = !DILocation(line: 415, column: 3, scope: !1288)
!1310 = !DILocation(line: 417, column: 2, scope: !1288)
!1311 = !DILocation(line: 420, column: 8, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 420, column: 7)
!1313 = !DILocation(line: 420, column: 28, scope: !1312)
!1314 = !DILocation(line: 420, column: 33, scope: !1312)
!1315 = !DILocation(line: 420, column: 55, scope: !1312)
!1316 = !DILocation(line: 421, column: 8, scope: !1312)
!1317 = !DILocation(line: 421, column: 28, scope: !1312)
!1318 = !DILocation(line: 421, column: 33, scope: !1312)
!1319 = !DILocation(line: 420, column: 7, scope: !1288)
!1320 = !DILocation(line: 422, column: 11, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 421, column: 56)
!1322 = !DILocation(line: 423, column: 4, scope: !1321)
!1323 = !DILocation(line: 428, column: 23, scope: !1288)
!1324 = !DILocation(line: 428, column: 44, scope: !1288)
!1325 = !DILocation(line: 428, column: 19, scope: !1288)
!1326 = !DILocation(line: 428, column: 4, scope: !1288)
!1327 = !DILocation(line: 428, column: 17, scope: !1288)
!1328 = !DILocation(line: 429, column: 23, scope: !1288)
!1329 = !DILocation(line: 429, column: 44, scope: !1288)
!1330 = !DILocation(line: 429, column: 19, scope: !1288)
!1331 = !DILocation(line: 429, column: 4, scope: !1288)
!1332 = !DILocation(line: 429, column: 17, scope: !1288)
!1333 = !DILocation(line: 430, column: 3, scope: !1288)
!1334 = !DILocation(line: 431, column: 2, scope: !1288)
!1335 = !DILocation(line: 433, column: 1, scope: !385)
!1336 = !DILocation(line: 434, column: 27, scope: !385)
!1337 = !DILocation(line: 434, column: 33, scope: !385)
!1338 = !DILocation(line: 434, column: 2, scope: !385)
!1339 = !DILocation(line: 436, column: 1, scope: !385)
!1340 = !DILocation(line: 437, column: 6, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !385, file: !3, line: 437, column: 6)
!1342 = !DILocation(line: 437, column: 6, scope: !385)
!1343 = !DILocation(line: 438, column: 3, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 437, column: 28)
!1345 = !DILocation(line: 441, column: 2, scope: !1344)
!1346 = !DILocation(line: 443, column: 1, scope: !385)
!1347 = !DILocation(line: 444, column: 2, scope: !385)
!1348 = !DILocation(line: 445, column: 2, scope: !385)
!1349 = !DILocation(line: 446, column: 1, scope: !385)
!1350 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !320, file: !320, line: 55, type: !1351, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!36, !37}
!1353 = !{!1354, !1355, !1357, !1360, !1361, !1364}
!1354 = !DILocalVariable(name: "size", arg: 1, scope: !1350, file: !320, line: 55, type: !37)
!1355 = !DILocalVariable(name: "_flags", scope: !1356, file: !320, line: 57, type: !40)
!1356 = distinct !DILexicalBlock(scope: !1350, file: !320, line: 57, column: 23)
!1357 = !DILocalVariable(name: "__dummy", scope: !1358, file: !320, line: 57, type: !40)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !320, line: 57, column: 23)
!1359 = distinct !DILexicalBlock(scope: !1356, file: !320, line: 57, column: 23)
!1360 = !DILocalVariable(name: "__dummy2", scope: !1358, file: !320, line: 57, type: !40)
!1361 = !DILocalVariable(name: "__dummy", scope: !1362, file: !320, line: 57, type: !40)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !320, line: 57, column: 23)
!1363 = distinct !DILexicalBlock(scope: !1356, file: !320, line: 57, column: 23)
!1364 = !DILocalVariable(name: "__dummy2", scope: !1362, file: !320, line: 57, type: !40)
!1365 = !DILocation(line: 55, column: 55, scope: !1350)
!1366 = !DILocation(line: 57, column: 17, scope: !1350)
!1367 = !DILocation(line: 57, column: 23, scope: !1356)
!1368 = !DILocation(line: 57, column: 23, scope: !1358)
!1369 = !DILocation(line: 57, column: 23, scope: !1359)
!1370 = !DILocation(line: 57, column: 23, scope: !1362)
!1371 = !DILocation(line: 57, column: 23, scope: !1363)
!1372 = !DILocation(line: 57, column: 23, scope: !1350)
!1373 = !DILocation(line: 57, column: 9, scope: !1350)
!1374 = !DILocation(line: 57, column: 2, scope: !1350)
!1375 = !DISubprogram(name: "acpi_ns_evaluate", scope: !1376, file: !1376, line: 208, type: !1377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!22, !395}
!1379 = !DISubprogram(name: "acpi_error", scope: !1380, file: !1380, line: 901, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1380 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !1152, !24, !1152, null}
!1383 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1384, file: !1384, line: 369, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1384 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !404}
!1387 = !DISubprogram(name: "acpi_exception", scope: !1380, file: !1380, line: 906, type: !1388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !1152, !24, !22, !1152, null}
!1390 = distinct !DISubprogram(name: "acpi_os_free", scope: !320, file: !320, line: 60, type: !1391, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !36}
!1393 = !{!1394}
!1394 = !DILocalVariable(name: "memory", arg: 1, scope: !1390, file: !320, line: 60, type: !36)
!1395 = !DILocation(line: 60, column: 39, scope: !1390)
!1396 = !DILocation(line: 62, column: 8, scope: !1390)
!1397 = !DILocation(line: 62, column: 2, scope: !1390)
!1398 = !DILocation(line: 63, column: 1, scope: !1390)
!1399 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1400, file: !1400, line: 32, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1401 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1400, file: !1400, line: 43, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1402 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1403, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!36, !1405, !38}
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 61, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1407, line: 72, baseType: !1408)
!1407 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1407, line: 16, baseType: !40)
!1409 = !{!1410, !1411}
!1410 = !DILocalVariable(name: "size", arg: 1, scope: !1402, file: !12, line: 719, type: !1405)
!1411 = !DILocalVariable(name: "flags", arg: 2, scope: !1402, file: !12, line: 719, type: !38)
!1412 = !DILocation(line: 719, column: 52, scope: !1402)
!1413 = !DILocation(line: 719, column: 64, scope: !1402)
!1414 = !DILocation(line: 721, column: 17, scope: !1402)
!1415 = !DILocation(line: 721, column: 23, scope: !1402)
!1416 = !DILocation(line: 721, column: 29, scope: !1402)
!1417 = !DILocation(line: 721, column: 9, scope: !1402)
!1418 = !DILocation(line: 721, column: 2, scope: !1402)
!1419 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1420, file: !1420, line: 65, type: !1421, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1420 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!40}
!1423 = !DILocation(line: 67, column: 9, scope: !1419)
!1424 = !DILocation(line: 67, column: 2, scope: !1419)
!1425 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1420, file: !1420, line: 120, type: !1426, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!341, !40}
!1428 = !{!1429}
!1429 = !DILocalVariable(name: "flags", arg: 1, scope: !1425, file: !1420, line: 120, type: !40)
!1430 = !DILocation(line: 120, column: 67, scope: !1425)
!1431 = !DILocation(line: 122, column: 11, scope: !1425)
!1432 = !DILocation(line: 122, column: 17, scope: !1425)
!1433 = !DILocation(line: 122, column: 9, scope: !1425)
!1434 = !DILocation(line: 122, column: 2, scope: !1425)
!1435 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1403, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1436)
!1436 = !{!1437, !1438, !1439}
!1437 = !DILocalVariable(name: "size", arg: 1, scope: !1435, file: !12, line: 591, type: !1405)
!1438 = !DILocalVariable(name: "flags", arg: 2, scope: !1435, file: !12, line: 591, type: !38)
!1439 = !DILocalVariable(name: "index", scope: !1440, file: !12, line: 594, type: !7)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !12, line: 593, column: 42)
!1441 = distinct !DILexicalBlock(scope: !1435, file: !12, line: 593, column: 6)
!1442 = !DILocation(line: 591, column: 61, scope: !1435)
!1443 = !DILocation(line: 591, column: 73, scope: !1435)
!1444 = !DILocation(line: 593, column: 27, scope: !1441)
!1445 = !DILocation(line: 593, column: 6, scope: !1441)
!1446 = !DILocation(line: 593, column: 33, scope: !1441)
!1447 = !DILocation(line: 593, column: 36, scope: !1441)
!1448 = !DILocation(line: 593, column: 6, scope: !1435)
!1449 = !DILocation(line: 594, column: 3, scope: !1440)
!1450 = !DILocation(line: 594, column: 16, scope: !1440)
!1451 = !DILocation(line: 596, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1440, file: !12, line: 596, column: 7)
!1453 = !DILocation(line: 596, column: 12, scope: !1452)
!1454 = !DILocation(line: 596, column: 7, scope: !1440)
!1455 = !DILocation(line: 597, column: 25, scope: !1452)
!1456 = !DILocation(line: 597, column: 31, scope: !1452)
!1457 = !DILocation(line: 597, column: 11, scope: !1452)
!1458 = !DILocation(line: 597, column: 4, scope: !1452)
!1459 = !DILocation(line: 599, column: 11, scope: !1440)
!1460 = !DILocation(line: 599, column: 9, scope: !1440)
!1461 = !DILocation(line: 601, column: 33, scope: !1440)
!1462 = !DILocation(line: 601, column: 40, scope: !1440)
!1463 = !DILocation(line: 601, column: 20, scope: !1440)
!1464 = !DILocation(line: 601, column: 5, scope: !1440)
!1465 = !DILocation(line: 601, column: 51, scope: !1440)
!1466 = !DILocation(line: 602, column: 5, scope: !1440)
!1467 = !DILocation(line: 602, column: 12, scope: !1440)
!1468 = !DILocation(line: 600, column: 10, scope: !1440)
!1469 = !DILocation(line: 600, column: 3, scope: !1440)
!1470 = !DILocation(line: 603, column: 2, scope: !1441)
!1471 = !DILocation(line: 604, column: 19, scope: !1435)
!1472 = !DILocation(line: 604, column: 25, scope: !1435)
!1473 = !DILocation(line: 604, column: 9, scope: !1435)
!1474 = !DILocation(line: 604, column: 2, scope: !1435)
!1475 = !DILocation(line: 605, column: 1, scope: !1435)
!1476 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1477 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1478, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1482)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!7, !1405, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 35, baseType: !1481)
!1481 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1482 = !{!1483, !1484}
!1483 = !DILocalVariable(name: "size", arg: 1, scope: !1477, file: !12, line: 444, type: !1405)
!1484 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1477, file: !12, line: 445, type: !1480)
!1485 = !DILocation(line: 444, column: 60, scope: !1477)
!1486 = !DILocation(line: 445, column: 16, scope: !1477)
!1487 = !DILocation(line: 447, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 447, column: 6)
!1489 = !DILocation(line: 447, column: 6, scope: !1477)
!1490 = !DILocation(line: 448, column: 3, scope: !1488)
!1491 = !DILocation(line: 450, column: 6, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 450, column: 6)
!1493 = !DILocation(line: 450, column: 11, scope: !1492)
!1494 = !DILocation(line: 450, column: 6, scope: !1477)
!1495 = !DILocation(line: 451, column: 3, scope: !1492)
!1496 = !DILocation(line: 453, column: 32, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 453, column: 6)
!1498 = !DILocation(line: 453, column: 37, scope: !1497)
!1499 = !DILocation(line: 453, column: 42, scope: !1497)
!1500 = !DILocation(line: 453, column: 45, scope: !1497)
!1501 = !DILocation(line: 453, column: 50, scope: !1497)
!1502 = !DILocation(line: 453, column: 6, scope: !1477)
!1503 = !DILocation(line: 454, column: 3, scope: !1497)
!1504 = !DILocation(line: 455, column: 32, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 455, column: 6)
!1506 = !DILocation(line: 455, column: 37, scope: !1505)
!1507 = !DILocation(line: 455, column: 43, scope: !1505)
!1508 = !DILocation(line: 455, column: 46, scope: !1505)
!1509 = !DILocation(line: 455, column: 51, scope: !1505)
!1510 = !DILocation(line: 455, column: 6, scope: !1477)
!1511 = !DILocation(line: 456, column: 3, scope: !1505)
!1512 = !DILocation(line: 457, column: 6, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 457, column: 6)
!1514 = !DILocation(line: 457, column: 11, scope: !1513)
!1515 = !DILocation(line: 457, column: 6, scope: !1477)
!1516 = !DILocation(line: 457, column: 26, scope: !1513)
!1517 = !DILocation(line: 458, column: 6, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 458, column: 6)
!1519 = !DILocation(line: 458, column: 11, scope: !1518)
!1520 = !DILocation(line: 458, column: 6, scope: !1477)
!1521 = !DILocation(line: 458, column: 26, scope: !1518)
!1522 = !DILocation(line: 459, column: 6, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 459, column: 6)
!1524 = !DILocation(line: 459, column: 11, scope: !1523)
!1525 = !DILocation(line: 459, column: 6, scope: !1477)
!1526 = !DILocation(line: 459, column: 26, scope: !1523)
!1527 = !DILocation(line: 460, column: 6, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 460, column: 6)
!1529 = !DILocation(line: 460, column: 11, scope: !1528)
!1530 = !DILocation(line: 460, column: 6, scope: !1477)
!1531 = !DILocation(line: 460, column: 26, scope: !1528)
!1532 = !DILocation(line: 461, column: 6, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 461, column: 6)
!1534 = !DILocation(line: 461, column: 11, scope: !1533)
!1535 = !DILocation(line: 461, column: 6, scope: !1477)
!1536 = !DILocation(line: 461, column: 26, scope: !1533)
!1537 = !DILocation(line: 462, column: 6, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 462, column: 6)
!1539 = !DILocation(line: 462, column: 11, scope: !1538)
!1540 = !DILocation(line: 462, column: 6, scope: !1477)
!1541 = !DILocation(line: 462, column: 26, scope: !1538)
!1542 = !DILocation(line: 463, column: 6, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 463, column: 6)
!1544 = !DILocation(line: 463, column: 11, scope: !1543)
!1545 = !DILocation(line: 463, column: 6, scope: !1477)
!1546 = !DILocation(line: 463, column: 26, scope: !1543)
!1547 = !DILocation(line: 464, column: 6, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 464, column: 6)
!1549 = !DILocation(line: 464, column: 11, scope: !1548)
!1550 = !DILocation(line: 464, column: 6, scope: !1477)
!1551 = !DILocation(line: 464, column: 26, scope: !1548)
!1552 = !DILocation(line: 465, column: 6, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 465, column: 6)
!1554 = !DILocation(line: 465, column: 11, scope: !1553)
!1555 = !DILocation(line: 465, column: 6, scope: !1477)
!1556 = !DILocation(line: 465, column: 26, scope: !1553)
!1557 = !DILocation(line: 466, column: 6, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 466, column: 6)
!1559 = !DILocation(line: 466, column: 11, scope: !1558)
!1560 = !DILocation(line: 466, column: 6, scope: !1477)
!1561 = !DILocation(line: 466, column: 26, scope: !1558)
!1562 = !DILocation(line: 467, column: 6, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 467, column: 6)
!1564 = !DILocation(line: 467, column: 11, scope: !1563)
!1565 = !DILocation(line: 467, column: 6, scope: !1477)
!1566 = !DILocation(line: 467, column: 26, scope: !1563)
!1567 = !DILocation(line: 468, column: 6, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 468, column: 6)
!1569 = !DILocation(line: 468, column: 11, scope: !1568)
!1570 = !DILocation(line: 468, column: 6, scope: !1477)
!1571 = !DILocation(line: 468, column: 26, scope: !1568)
!1572 = !DILocation(line: 469, column: 6, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 469, column: 6)
!1574 = !DILocation(line: 469, column: 11, scope: !1573)
!1575 = !DILocation(line: 469, column: 6, scope: !1477)
!1576 = !DILocation(line: 469, column: 26, scope: !1573)
!1577 = !DILocation(line: 470, column: 6, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 470, column: 6)
!1579 = !DILocation(line: 470, column: 11, scope: !1578)
!1580 = !DILocation(line: 470, column: 6, scope: !1477)
!1581 = !DILocation(line: 470, column: 26, scope: !1578)
!1582 = !DILocation(line: 471, column: 6, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 471, column: 6)
!1584 = !DILocation(line: 471, column: 11, scope: !1583)
!1585 = !DILocation(line: 471, column: 6, scope: !1477)
!1586 = !DILocation(line: 471, column: 26, scope: !1583)
!1587 = !DILocation(line: 472, column: 6, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 472, column: 6)
!1589 = !DILocation(line: 472, column: 11, scope: !1588)
!1590 = !DILocation(line: 472, column: 6, scope: !1477)
!1591 = !DILocation(line: 472, column: 26, scope: !1588)
!1592 = !DILocation(line: 473, column: 6, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 473, column: 6)
!1594 = !DILocation(line: 473, column: 11, scope: !1593)
!1595 = !DILocation(line: 473, column: 6, scope: !1477)
!1596 = !DILocation(line: 473, column: 26, scope: !1593)
!1597 = !DILocation(line: 474, column: 6, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 474, column: 6)
!1599 = !DILocation(line: 474, column: 11, scope: !1598)
!1600 = !DILocation(line: 474, column: 6, scope: !1477)
!1601 = !DILocation(line: 474, column: 27, scope: !1598)
!1602 = !DILocation(line: 475, column: 6, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 475, column: 6)
!1604 = !DILocation(line: 475, column: 11, scope: !1603)
!1605 = !DILocation(line: 475, column: 6, scope: !1477)
!1606 = !DILocation(line: 475, column: 32, scope: !1603)
!1607 = !DILocation(line: 477, column: 50, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1477, file: !12, line: 477, column: 6)
!1609 = !{i8 0, i8 2}
!1610 = !{}
!1611 = !DILocation(line: 477, column: 6, scope: !1477)
!1612 = !DILocation(line: 478, column: 3, scope: !1608)
!1613 = !DILocation(line: 478, column: 3, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !12, line: 478, column: 3)
!1615 = distinct !DILexicalBlock(scope: !1608, file: !12, line: 478, column: 3)
!1616 = !{i32 -2143036231}
!1617 = !DILocation(line: 478, column: 3, scope: !1615)
!1618 = !DILocation(line: 480, column: 3, scope: !1608)
!1619 = !DILocation(line: 480, column: 3, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1608, file: !12, line: 480, column: 3)
!1621 = !DILocation(line: 480, column: 3, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1620, file: !12, line: 480, column: 3)
!1623 = !DILocation(line: 480, column: 3, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !12, line: 480, column: 3)
!1625 = !{i64 2151931268, i64 2151931297, i64 2151931343, i64 2151931401, i64 2151931455, i64 2151931509, i64 2151931564, i64 2151931595}
!1626 = !DILocation(line: 483, column: 2, scope: !1477)
!1627 = !DILocation(line: 484, column: 1, scope: !1477)
!1628 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!36, !1631, !38, !1405}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1633, line: 11, flags: DIFlagFwdDecl)
!1633 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1634 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1635, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1637)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!11, !38, !40}
!1637 = !{!1638, !1639}
!1638 = !DILocalVariable(name: "flags", arg: 1, scope: !1634, file: !12, line: 401, type: !38)
!1639 = !DILocalVariable(name: "caller", arg: 2, scope: !1634, file: !12, line: 401, type: !40)
!1640 = !DILocation(line: 401, column: 67, scope: !1634)
!1641 = !DILocation(line: 401, column: 88, scope: !1634)
!1642 = !DILocation(line: 407, column: 6, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1634, file: !12, line: 407, column: 6)
!1644 = !DILocation(line: 407, column: 6, scope: !1634)
!1645 = !DILocation(line: 413, column: 3, scope: !1643)
!1646 = !DILocation(line: 423, column: 38, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1634, file: !12, line: 423, column: 6)
!1648 = !DILocation(line: 423, column: 44, scope: !1647)
!1649 = !DILocation(line: 423, column: 6, scope: !1634)
!1650 = !DILocation(line: 424, column: 3, scope: !1647)
!1651 = !DILocation(line: 426, column: 3, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1634, file: !12, line: 425, column: 6)
!1653 = !DILocation(line: 429, column: 1, scope: !1634)
!1654 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1655 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1656, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{null}
!1658 = distinct !DISubprogram(name: "native_save_fl", scope: !1420, file: !1420, line: 17, type: !1421, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!1659 = !{!1660}
!1660 = !DILocalVariable(name: "flags", scope: !1658, file: !1420, line: 19, type: !40)
!1661 = !DILocation(line: 19, column: 2, scope: !1658)
!1662 = !DILocation(line: 19, column: 16, scope: !1658)
!1663 = !DILocation(line: 26, column: 2, scope: !1658)
!1664 = !{i64 1521187, i64 1521208}
!1665 = !DILocation(line: 32, column: 9, scope: !1658)
!1666 = !DILocation(line: 33, column: 1, scope: !1658)
!1667 = !DILocation(line: 32, column: 2, scope: !1658)
!1668 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
