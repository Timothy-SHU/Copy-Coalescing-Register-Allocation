; ModuleID = 'drivers/acpi/acpica/utxface.c'
source_filename = "drivers/acpi/acpica/utxface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_purge_cached_objects: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_purge_cached_objects ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_interface: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_interface ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_remove_interface: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_remove_interface ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_interface_handler: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_interface_handler ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_check_address_range: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_check_address_range ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_decode_pld_buffer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_decode_pld_buffer ; .previous"

%struct.acpi_interface_info = type { ptr, ptr, i8, i8 }
%struct.acpi_pld_info = type { i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }

@acpi_gbl_state_cache = external dso_local global ptr, align 8
@acpi_gbl_operand_cache = external dso_local global ptr, align 8
@acpi_gbl_ps_node_cache = external dso_local global ptr, align 8
@acpi_gbl_ps_node_ext_cache = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_purge_cached_objects174 = internal global ptr @acpi_purge_cached_objects, section ".discard.addressable", align 8, !dbg !0
@acpi_gbl_osi_mutex = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_install_interface175 = internal global ptr @acpi_install_interface, section ".discard.addressable", align 8, !dbg !39
@__UNIQUE_ID___addressable_acpi_remove_interface176 = internal global ptr @acpi_remove_interface, section ".discard.addressable", align 8, !dbg !41
@acpi_gbl_interface_handler = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_install_interface_handler177 = internal global ptr @acpi_install_interface_handler, section ".discard.addressable", align 8, !dbg !43
@__UNIQUE_ID___addressable_acpi_check_address_range178 = internal global ptr @acpi_check_address_range, section ".discard.addressable", align 8, !dbg !45
@__UNIQUE_ID___addressable_acpi_decode_pld_buffer179 = internal global ptr @acpi_decode_pld_buffer, section ".discard.addressable", align 8, !dbg !47
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !49
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_purge_cached_objects174, ptr @__UNIQUE_ID___addressable_acpi_install_interface175, ptr @__UNIQUE_ID___addressable_acpi_remove_interface176, ptr @__UNIQUE_ID___addressable_acpi_install_interface_handler177, ptr @__UNIQUE_ID___addressable_acpi_check_address_range178, ptr @__UNIQUE_ID___addressable_acpi_decode_pld_buffer179], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_terminate() #0 section ".init.text" align 16 !dbg !64 {
entry:
  %status = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %status, metadata !68, metadata !DIExpression()), !dbg !70
  call void @acpi_ut_subsystem_shutdown() #15, !dbg !71
  call void @acpi_ut_mutex_terminate() #15, !dbg !72
  %call = call i32 @acpi_os_terminate() #15, !dbg !73
  store i32 %call, ptr %status, align 4, !dbg !74
  %0 = load i32, ptr %status, align 4, !dbg !75
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !76
  ret i32 %0, !dbg !75
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !77 dso_local void @acpi_ut_subsystem_shutdown() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !81 dso_local void @acpi_ut_mutex_terminate() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !82 dso_local i32 @acpi_os_terminate() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_purge_cached_objects() #4 align 16 !dbg !84 {
entry:
  %0 = load ptr, ptr @acpi_gbl_state_cache, align 8, !dbg !85
  %call = call i32 @acpi_os_purge_cache(ptr noundef %0) #15, !dbg !86
  %1 = load ptr, ptr @acpi_gbl_operand_cache, align 8, !dbg !87
  %call1 = call i32 @acpi_os_purge_cache(ptr noundef %1) #15, !dbg !88
  %2 = load ptr, ptr @acpi_gbl_ps_node_cache, align 8, !dbg !89
  %call2 = call i32 @acpi_os_purge_cache(ptr noundef %2) #15, !dbg !90
  %3 = load ptr, ptr @acpi_gbl_ps_node_ext_cache, align 8, !dbg !91
  %call3 = call i32 @acpi_os_purge_cache(ptr noundef %3) #15, !dbg !92
  ret i32 0, !dbg !93
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !94 dso_local i32 @acpi_os_purge_cache(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_interface(ptr noundef %interface_name) #4 align 16 !dbg !101 {
entry:
  %retval = alloca i32, align 4
  %interface_name.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %interface_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %interface_name, ptr %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interface_name.addr, metadata !107, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %status, metadata !108, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 8, ptr %interface_info) #14, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %interface_info, metadata !109, metadata !DIExpression()), !dbg !125
  %0 = load ptr, ptr %interface_name.addr, align 8, !dbg !126
  %tobool = icmp ne ptr %0, null, !dbg !126
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !128

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %interface_name.addr, align 8, !dbg !129
  %call = call i64 @strlen(ptr noundef %1) #15, !dbg !130
  %cmp = icmp eq i64 %call, 0, !dbg !131
  br i1 %cmp, label %if.then, label %if.end, !dbg !132

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !133

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !135
  %call1 = call i32 @acpi_os_wait_semaphore(ptr noundef %2, i32 noundef 1, i16 noundef zeroext -1) #15, !dbg !135
  store i32 %call1, ptr %status, align 4, !dbg !136
  %3 = load i32, ptr %status, align 4, !dbg !137
  %tobool2 = icmp ne i32 %3, 0, !dbg !137
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !139

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4, !dbg !140
  store i32 %4, ptr %retval, align 4, !dbg !142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !142

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %interface_name.addr, align 8, !dbg !143
  %call5 = call ptr @acpi_ut_get_interface(ptr noundef %5) #15, !dbg !144
  store ptr %call5, ptr %interface_info, align 8, !dbg !145
  %6 = load ptr, ptr %interface_info, align 8, !dbg !146
  %tobool6 = icmp ne ptr %6, null, !dbg !146
  br i1 %tobool6, label %if.then7, label %if.else15, !dbg !148

if.then7:                                         ; preds = %if.end4
  %7 = load ptr, ptr %interface_info, align 8, !dbg !149
  %flags = getelementptr inbounds %struct.acpi_interface_info, ptr %7, i32 0, i32 2, !dbg !152
  %8 = load i8, ptr %flags, align 8, !dbg !152
  %conv = zext i8 %8 to i32, !dbg !149
  %and = and i32 %conv, 1, !dbg !153
  %tobool8 = icmp ne i32 %and, 0, !dbg !153
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !154

if.then9:                                         ; preds = %if.then7
  %9 = load ptr, ptr %interface_info, align 8, !dbg !155
  %flags10 = getelementptr inbounds %struct.acpi_interface_info, ptr %9, i32 0, i32 2, !dbg !157
  %10 = load i8, ptr %flags10, align 8, !dbg !158
  %conv11 = zext i8 %10 to i32, !dbg !158
  %and12 = and i32 %conv11, -2, !dbg !158
  %conv13 = trunc i32 %and12 to i8, !dbg !158
  store i8 %conv13, ptr %flags10, align 8, !dbg !158
  store i32 0, ptr %status, align 4, !dbg !159
  br label %if.end14, !dbg !160

if.else:                                          ; preds = %if.then7
  store i32 7, ptr %status, align 4, !dbg !161
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  br label %if.end17, !dbg !163

if.else15:                                        ; preds = %if.end4
  %11 = load ptr, ptr %interface_name.addr, align 8, !dbg !164
  %call16 = call i32 @acpi_ut_install_interface(ptr noundef %11) #15, !dbg !166
  store i32 %call16, ptr %status, align 4, !dbg !167
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.end14
  %12 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !168
  %call18 = call i32 @acpi_os_signal_semaphore(ptr noundef %12, i32 noundef 1) #15, !dbg !168
  %13 = load i32, ptr %status, align 4, !dbg !169
  store i32 %13, ptr %retval, align 4, !dbg !170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !170

cleanup:                                          ; preds = %if.end17, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %interface_info) #14, !dbg !171
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !171
  %14 = load i32, ptr %retval, align 4, !dbg !171
  ret i32 %14, !dbg !171
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !172 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !178 dso_local i32 @acpi_os_wait_semaphore(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !184 dso_local ptr @acpi_ut_get_interface(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !187 dso_local i32 @acpi_ut_install_interface(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !188 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_remove_interface(ptr noundef %interface_name) #4 align 16 !dbg !191 {
entry:
  %retval = alloca i32, align 4
  %interface_name.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %interface_name, ptr %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interface_name.addr, metadata !193, metadata !DIExpression()), !dbg !195
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %status, metadata !194, metadata !DIExpression()), !dbg !197
  %0 = load ptr, ptr %interface_name.addr, align 8, !dbg !198
  %tobool = icmp ne ptr %0, null, !dbg !198
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !200

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %interface_name.addr, align 8, !dbg !201
  %call = call i64 @strlen(ptr noundef %1) #15, !dbg !202
  %cmp = icmp eq i64 %call, 0, !dbg !203
  br i1 %cmp, label %if.then, label %if.end, !dbg !204

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !205

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !207
  %call1 = call i32 @acpi_os_wait_semaphore(ptr noundef %2, i32 noundef 1, i16 noundef zeroext -1) #15, !dbg !207
  store i32 %call1, ptr %status, align 4, !dbg !208
  %3 = load i32, ptr %status, align 4, !dbg !209
  %tobool2 = icmp ne i32 %3, 0, !dbg !209
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !211

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4, !dbg !212
  store i32 %4, ptr %retval, align 4, !dbg !214
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !214

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %interface_name.addr, align 8, !dbg !215
  %call5 = call i32 @acpi_ut_remove_interface(ptr noundef %5) #15, !dbg !216
  store i32 %call5, ptr %status, align 4, !dbg !217
  %6 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !218
  %call6 = call i32 @acpi_os_signal_semaphore(ptr noundef %6, i32 noundef 1) #15, !dbg !218
  %7 = load i32, ptr %status, align 4, !dbg !219
  store i32 %7, ptr %retval, align 4, !dbg !220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !220

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !221
  %8 = load i32, ptr %retval, align 4, !dbg !221
  ret i32 %8, !dbg !221
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !222 dso_local i32 @acpi_ut_remove_interface(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_interface_handler(ptr noundef %handler) #4 align 16 !dbg !223 {
entry:
  %retval = alloca i32, align 4
  %handler.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !231, metadata !DIExpression()), !dbg !233
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %status, metadata !232, metadata !DIExpression()), !dbg !235
  %0 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !236
  %call = call i32 @acpi_os_wait_semaphore(ptr noundef %0, i32 noundef 1, i16 noundef zeroext -1) #15, !dbg !236
  store i32 %call, ptr %status, align 4, !dbg !237
  %1 = load i32, ptr %status, align 4, !dbg !238
  %tobool = icmp ne i32 %1, 0, !dbg !238
  br i1 %tobool, label %if.then, label %if.end, !dbg !240

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !241
  store i32 %2, ptr %retval, align 4, !dbg !243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !243

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %handler.addr, align 8, !dbg !244
  %tobool1 = icmp ne ptr %3, null, !dbg !244
  br i1 %tobool1, label %land.lhs.true, label %if.else, !dbg !246

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr @acpi_gbl_interface_handler, align 8, !dbg !247
  %tobool2 = icmp ne ptr %4, null, !dbg !247
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !248

if.then3:                                         ; preds = %land.lhs.true
  store i32 7, ptr %status, align 4, !dbg !249
  br label %if.end4, !dbg !251

if.else:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %handler.addr, align 8, !dbg !252
  store ptr %5, ptr @acpi_gbl_interface_handler, align 8, !dbg !254
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %6 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !255
  %call5 = call i32 @acpi_os_signal_semaphore(ptr noundef %6, i32 noundef 1) #15, !dbg !255
  %7 = load i32, ptr %status, align 4, !dbg !256
  store i32 %7, ptr %retval, align 4, !dbg !257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !257

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !258
  %8 = load i32, ptr %retval, align 4, !dbg !258
  ret i32 %8, !dbg !258
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_update_interfaces(i8 noundef zeroext %action) #4 align 16 !dbg !259 {
entry:
  %retval = alloca i32, align 4
  %action.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %action, ptr %action.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !263, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %status, metadata !264, metadata !DIExpression()), !dbg !267
  %0 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !268
  %call = call i32 @acpi_os_wait_semaphore(ptr noundef %0, i32 noundef 1, i16 noundef zeroext -1) #15, !dbg !268
  store i32 %call, ptr %status, align 4, !dbg !269
  %1 = load i32, ptr %status, align 4, !dbg !270
  %tobool = icmp ne i32 %1, 0, !dbg !270
  br i1 %tobool, label %if.then, label %if.end, !dbg !272

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !273
  store i32 %2, ptr %retval, align 4, !dbg !275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !275

if.end:                                           ; preds = %entry
  %3 = load i8, ptr %action.addr, align 1, !dbg !276
  %call1 = call i32 @acpi_ut_update_interfaces(i8 noundef zeroext %3) #15, !dbg !277
  store i32 %call1, ptr %status, align 4, !dbg !278
  %4 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !279
  %call2 = call i32 @acpi_os_signal_semaphore(ptr noundef %4, i32 noundef 1) #15, !dbg !279
  %5 = load i32, ptr %status, align 4, !dbg !280
  store i32 %5, ptr %retval, align 4, !dbg !281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !281

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !282
  %6 = load i32, ptr %retval, align 4, !dbg !282
  ret i32 %6, !dbg !282
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !283 dso_local i32 @acpi_ut_update_interfaces(i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_check_address_range(i8 noundef zeroext %space_id, i64 noundef %address, i64 noundef %length, i8 noundef zeroext %warn) #4 align 16 !dbg !284 {
entry:
  %retval = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %warn.addr = alloca i8, align 1
  %overlaps = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !290, metadata !DIExpression()), !dbg !296
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !291, metadata !DIExpression()), !dbg !297
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !292, metadata !DIExpression()), !dbg !298
  store i8 %warn, ptr %warn.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %warn.addr, metadata !293, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 4, ptr %overlaps) #14, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %overlaps, metadata !294, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %status, metadata !295, metadata !DIExpression()), !dbg !303
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #15, !dbg !304
  store i32 %call, ptr %status, align 4, !dbg !305
  %0 = load i32, ptr %status, align 4, !dbg !306
  %tobool = icmp ne i32 %0, 0, !dbg !306
  br i1 %tobool, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !309

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !311
  %2 = load i64, ptr %address.addr, align 8, !dbg !312
  %3 = load i64, ptr %length.addr, align 8, !dbg !313
  %conv = trunc i64 %3 to i32, !dbg !314
  %4 = load i8, ptr %warn.addr, align 1, !dbg !315
  %call1 = call i32 @acpi_ut_check_address_range(i8 noundef zeroext %1, i64 noundef %2, i32 noundef %conv, i8 noundef zeroext %4) #15, !dbg !316
  store i32 %call1, ptr %overlaps, align 4, !dbg !317
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #15, !dbg !318
  %5 = load i32, ptr %overlaps, align 4, !dbg !319
  store i32 %5, ptr %retval, align 4, !dbg !320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !320

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !321
  call void @llvm.lifetime.end.p0(i64 4, ptr %overlaps) #14, !dbg !321
  %6 = load i32, ptr %retval, align 4, !dbg !321
  ret i32 %6, !dbg !321
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !322 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !326 dso_local i32 @acpi_ut_check_address_range(i8 noundef zeroext, i64 noundef, i32 noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !329 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_decode_pld_buffer(ptr noundef %in_buffer, i64 noundef %length, ptr noundef %return_buffer) #4 align 16 !dbg !330 {
entry:
  %retval = alloca i32, align 4
  %in_buffer.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %return_buffer.addr = alloca ptr, align 8
  %pld_info = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  %dword = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %in_buffer, ptr %in_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_buffer.addr, metadata !368, metadata !DIExpression()), !dbg !374
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !369, metadata !DIExpression()), !dbg !375
  store ptr %return_buffer, ptr %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_buffer.addr, metadata !370, metadata !DIExpression()), !dbg !376
  call void @llvm.lifetime.start.p0(i64 8, ptr %pld_info) #14, !dbg !377
  call void @llvm.dbg.declare(metadata ptr %pld_info, metadata !371, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #14, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !372, metadata !DIExpression()), !dbg !380
  %0 = load ptr, ptr %in_buffer.addr, align 8, !dbg !381
  %1 = ptrtoint ptr %0 to i64, !dbg !381
  %2 = inttoptr i64 %1 to ptr, !dbg !381
  store ptr %2, ptr %buffer, align 8, !dbg !380
  call void @llvm.lifetime.start.p0(i64 4, ptr %dword) #14, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %dword, metadata !373, metadata !DIExpression()), !dbg !383
  %3 = load ptr, ptr %in_buffer.addr, align 8, !dbg !384
  %tobool = icmp ne ptr %3, null, !dbg !384
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !386

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %return_buffer.addr, align 8, !dbg !387
  %tobool1 = icmp ne ptr %4, null, !dbg !387
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !388

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %5 = load i64, ptr %length.addr, align 8, !dbg !389
  %cmp = icmp ult i64 %5, 16, !dbg !390
  br i1 %cmp, label %if.then, label %if.end, !dbg !391

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !392
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !392

if.end:                                           ; preds = %lor.lhs.false2
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 34) #15, !dbg !394
  store ptr %call, ptr %pld_info, align 8, !dbg !395
  %6 = load ptr, ptr %pld_info, align 8, !dbg !396
  %tobool3 = icmp ne ptr %6, null, !dbg !396
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !398

if.then4:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !399

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %buffer, align 8, !dbg !401
  %arrayidx = getelementptr i32, ptr %7, i64 0, !dbg !401
  %8 = load i32, ptr %arrayidx, align 4, !dbg !401
  store i32 %8, ptr %dword, align 4, !dbg !401
  %9 = load i32, ptr %dword, align 4, !dbg !402
  %shr = lshr i32 %9, 0, !dbg !402
  %and = and i32 %shr, 127, !dbg !402
  %conv = trunc i32 %and to i8, !dbg !402
  %10 = load ptr, ptr %pld_info, align 8, !dbg !403
  %revision = getelementptr inbounds %struct.acpi_pld_info, ptr %10, i32 0, i32 0, !dbg !404
  store i8 %conv, ptr %revision, align 2, !dbg !405
  %11 = load i32, ptr %dword, align 4, !dbg !406
  %shr6 = lshr i32 %11, 7, !dbg !406
  %and7 = and i32 %shr6, 1, !dbg !406
  %conv8 = trunc i32 %and7 to i8, !dbg !406
  %12 = load ptr, ptr %pld_info, align 8, !dbg !407
  %ignore_color = getelementptr inbounds %struct.acpi_pld_info, ptr %12, i32 0, i32 1, !dbg !408
  store i8 %conv8, ptr %ignore_color, align 1, !dbg !409
  %13 = load i32, ptr %dword, align 4, !dbg !410
  %shr9 = lshr i32 %13, 8, !dbg !410
  %and10 = and i32 %shr9, 255, !dbg !410
  %conv11 = trunc i32 %and10 to i8, !dbg !410
  %14 = load ptr, ptr %pld_info, align 8, !dbg !411
  %red = getelementptr inbounds %struct.acpi_pld_info, ptr %14, i32 0, i32 2, !dbg !412
  store i8 %conv11, ptr %red, align 2, !dbg !413
  %15 = load i32, ptr %dword, align 4, !dbg !414
  %shr12 = lshr i32 %15, 16, !dbg !414
  %and13 = and i32 %shr12, 255, !dbg !414
  %conv14 = trunc i32 %and13 to i8, !dbg !414
  %16 = load ptr, ptr %pld_info, align 8, !dbg !415
  %green = getelementptr inbounds %struct.acpi_pld_info, ptr %16, i32 0, i32 3, !dbg !416
  store i8 %conv14, ptr %green, align 1, !dbg !417
  %17 = load i32, ptr %dword, align 4, !dbg !418
  %shr15 = lshr i32 %17, 24, !dbg !418
  %and16 = and i32 %shr15, 255, !dbg !418
  %conv17 = trunc i32 %and16 to i8, !dbg !418
  %18 = load ptr, ptr %pld_info, align 8, !dbg !419
  %blue = getelementptr inbounds %struct.acpi_pld_info, ptr %18, i32 0, i32 4, !dbg !420
  store i8 %conv17, ptr %blue, align 2, !dbg !421
  %19 = load ptr, ptr %buffer, align 8, !dbg !422
  %arrayidx18 = getelementptr i32, ptr %19, i64 1, !dbg !422
  %20 = load i32, ptr %arrayidx18, align 4, !dbg !422
  store i32 %20, ptr %dword, align 4, !dbg !422
  %21 = load i32, ptr %dword, align 4, !dbg !423
  %shr19 = lshr i32 %21, 0, !dbg !423
  %and20 = and i32 %shr19, 65535, !dbg !423
  %conv21 = trunc i32 %and20 to i16, !dbg !423
  %22 = load ptr, ptr %pld_info, align 8, !dbg !424
  %width = getelementptr inbounds %struct.acpi_pld_info, ptr %22, i32 0, i32 5, !dbg !425
  store i16 %conv21, ptr %width, align 2, !dbg !426
  %23 = load i32, ptr %dword, align 4, !dbg !427
  %shr22 = lshr i32 %23, 16, !dbg !427
  %and23 = and i32 %shr22, 65535, !dbg !427
  %conv24 = trunc i32 %and23 to i16, !dbg !427
  %24 = load ptr, ptr %pld_info, align 8, !dbg !428
  %height = getelementptr inbounds %struct.acpi_pld_info, ptr %24, i32 0, i32 6, !dbg !429
  store i16 %conv24, ptr %height, align 2, !dbg !430
  %25 = load ptr, ptr %buffer, align 8, !dbg !431
  %arrayidx25 = getelementptr i32, ptr %25, i64 2, !dbg !431
  %26 = load i32, ptr %arrayidx25, align 4, !dbg !431
  store i32 %26, ptr %dword, align 4, !dbg !431
  %27 = load i32, ptr %dword, align 4, !dbg !432
  %shr26 = lshr i32 %27, 0, !dbg !432
  %and27 = and i32 %shr26, 1, !dbg !432
  %conv28 = trunc i32 %and27 to i8, !dbg !432
  %28 = load ptr, ptr %pld_info, align 8, !dbg !433
  %user_visible = getelementptr inbounds %struct.acpi_pld_info, ptr %28, i32 0, i32 7, !dbg !434
  store i8 %conv28, ptr %user_visible, align 2, !dbg !435
  %29 = load i32, ptr %dword, align 4, !dbg !436
  %shr29 = lshr i32 %29, 1, !dbg !436
  %and30 = and i32 %shr29, 1, !dbg !436
  %conv31 = trunc i32 %and30 to i8, !dbg !436
  %30 = load ptr, ptr %pld_info, align 8, !dbg !437
  %dock = getelementptr inbounds %struct.acpi_pld_info, ptr %30, i32 0, i32 8, !dbg !438
  store i8 %conv31, ptr %dock, align 1, !dbg !439
  %31 = load i32, ptr %dword, align 4, !dbg !440
  %shr32 = lshr i32 %31, 2, !dbg !440
  %and33 = and i32 %shr32, 1, !dbg !440
  %conv34 = trunc i32 %and33 to i8, !dbg !440
  %32 = load ptr, ptr %pld_info, align 8, !dbg !441
  %lid = getelementptr inbounds %struct.acpi_pld_info, ptr %32, i32 0, i32 9, !dbg !442
  store i8 %conv34, ptr %lid, align 2, !dbg !443
  %33 = load i32, ptr %dword, align 4, !dbg !444
  %shr35 = lshr i32 %33, 3, !dbg !444
  %and36 = and i32 %shr35, 7, !dbg !444
  %conv37 = trunc i32 %and36 to i8, !dbg !444
  %34 = load ptr, ptr %pld_info, align 8, !dbg !445
  %panel = getelementptr inbounds %struct.acpi_pld_info, ptr %34, i32 0, i32 10, !dbg !446
  store i8 %conv37, ptr %panel, align 1, !dbg !447
  %35 = load i32, ptr %dword, align 4, !dbg !448
  %shr38 = lshr i32 %35, 6, !dbg !448
  %and39 = and i32 %shr38, 3, !dbg !448
  %conv40 = trunc i32 %and39 to i8, !dbg !448
  %36 = load ptr, ptr %pld_info, align 8, !dbg !449
  %vertical_position = getelementptr inbounds %struct.acpi_pld_info, ptr %36, i32 0, i32 11, !dbg !450
  store i8 %conv40, ptr %vertical_position, align 2, !dbg !451
  %37 = load i32, ptr %dword, align 4, !dbg !452
  %shr41 = lshr i32 %37, 8, !dbg !452
  %and42 = and i32 %shr41, 3, !dbg !452
  %conv43 = trunc i32 %and42 to i8, !dbg !452
  %38 = load ptr, ptr %pld_info, align 8, !dbg !453
  %horizontal_position = getelementptr inbounds %struct.acpi_pld_info, ptr %38, i32 0, i32 12, !dbg !454
  store i8 %conv43, ptr %horizontal_position, align 1, !dbg !455
  %39 = load i32, ptr %dword, align 4, !dbg !456
  %shr44 = lshr i32 %39, 10, !dbg !456
  %and45 = and i32 %shr44, 15, !dbg !456
  %conv46 = trunc i32 %and45 to i8, !dbg !456
  %40 = load ptr, ptr %pld_info, align 8, !dbg !457
  %shape = getelementptr inbounds %struct.acpi_pld_info, ptr %40, i32 0, i32 13, !dbg !458
  store i8 %conv46, ptr %shape, align 2, !dbg !459
  %41 = load i32, ptr %dword, align 4, !dbg !460
  %shr47 = lshr i32 %41, 14, !dbg !460
  %and48 = and i32 %shr47, 1, !dbg !460
  %conv49 = trunc i32 %and48 to i8, !dbg !460
  %42 = load ptr, ptr %pld_info, align 8, !dbg !461
  %group_orientation = getelementptr inbounds %struct.acpi_pld_info, ptr %42, i32 0, i32 14, !dbg !462
  store i8 %conv49, ptr %group_orientation, align 1, !dbg !463
  %43 = load i32, ptr %dword, align 4, !dbg !464
  %shr50 = lshr i32 %43, 15, !dbg !464
  %and51 = and i32 %shr50, 255, !dbg !464
  %conv52 = trunc i32 %and51 to i8, !dbg !464
  %44 = load ptr, ptr %pld_info, align 8, !dbg !465
  %group_token = getelementptr inbounds %struct.acpi_pld_info, ptr %44, i32 0, i32 15, !dbg !466
  store i8 %conv52, ptr %group_token, align 2, !dbg !467
  %45 = load i32, ptr %dword, align 4, !dbg !468
  %shr53 = lshr i32 %45, 23, !dbg !468
  %and54 = and i32 %shr53, 255, !dbg !468
  %conv55 = trunc i32 %and54 to i8, !dbg !468
  %46 = load ptr, ptr %pld_info, align 8, !dbg !469
  %group_position = getelementptr inbounds %struct.acpi_pld_info, ptr %46, i32 0, i32 16, !dbg !470
  store i8 %conv55, ptr %group_position, align 1, !dbg !471
  %47 = load i32, ptr %dword, align 4, !dbg !472
  %shr56 = lshr i32 %47, 31, !dbg !472
  %and57 = and i32 %shr56, 1, !dbg !472
  %conv58 = trunc i32 %and57 to i8, !dbg !472
  %48 = load ptr, ptr %pld_info, align 8, !dbg !473
  %bay = getelementptr inbounds %struct.acpi_pld_info, ptr %48, i32 0, i32 17, !dbg !474
  store i8 %conv58, ptr %bay, align 2, !dbg !475
  %49 = load ptr, ptr %buffer, align 8, !dbg !476
  %arrayidx59 = getelementptr i32, ptr %49, i64 3, !dbg !476
  %50 = load i32, ptr %arrayidx59, align 4, !dbg !476
  store i32 %50, ptr %dword, align 4, !dbg !476
  %51 = load i32, ptr %dword, align 4, !dbg !477
  %shr60 = lshr i32 %51, 0, !dbg !477
  %and61 = and i32 %shr60, 1, !dbg !477
  %conv62 = trunc i32 %and61 to i8, !dbg !477
  %52 = load ptr, ptr %pld_info, align 8, !dbg !478
  %ejectable = getelementptr inbounds %struct.acpi_pld_info, ptr %52, i32 0, i32 18, !dbg !479
  store i8 %conv62, ptr %ejectable, align 1, !dbg !480
  %53 = load i32, ptr %dword, align 4, !dbg !481
  %shr63 = lshr i32 %53, 1, !dbg !481
  %and64 = and i32 %shr63, 1, !dbg !481
  %conv65 = trunc i32 %and64 to i8, !dbg !481
  %54 = load ptr, ptr %pld_info, align 8, !dbg !482
  %ospm_eject_required = getelementptr inbounds %struct.acpi_pld_info, ptr %54, i32 0, i32 19, !dbg !483
  store i8 %conv65, ptr %ospm_eject_required, align 2, !dbg !484
  %55 = load i32, ptr %dword, align 4, !dbg !485
  %shr66 = lshr i32 %55, 2, !dbg !485
  %and67 = and i32 %shr66, 255, !dbg !485
  %conv68 = trunc i32 %and67 to i8, !dbg !485
  %56 = load ptr, ptr %pld_info, align 8, !dbg !486
  %cabinet_number = getelementptr inbounds %struct.acpi_pld_info, ptr %56, i32 0, i32 20, !dbg !487
  store i8 %conv68, ptr %cabinet_number, align 1, !dbg !488
  %57 = load i32, ptr %dword, align 4, !dbg !489
  %shr69 = lshr i32 %57, 10, !dbg !489
  %and70 = and i32 %shr69, 255, !dbg !489
  %conv71 = trunc i32 %and70 to i8, !dbg !489
  %58 = load ptr, ptr %pld_info, align 8, !dbg !490
  %card_cage_number = getelementptr inbounds %struct.acpi_pld_info, ptr %58, i32 0, i32 21, !dbg !491
  store i8 %conv71, ptr %card_cage_number, align 2, !dbg !492
  %59 = load i32, ptr %dword, align 4, !dbg !493
  %shr72 = lshr i32 %59, 18, !dbg !493
  %and73 = and i32 %shr72, 1, !dbg !493
  %conv74 = trunc i32 %and73 to i8, !dbg !493
  %60 = load ptr, ptr %pld_info, align 8, !dbg !494
  %reference = getelementptr inbounds %struct.acpi_pld_info, ptr %60, i32 0, i32 22, !dbg !495
  store i8 %conv74, ptr %reference, align 1, !dbg !496
  %61 = load i32, ptr %dword, align 4, !dbg !497
  %shr75 = lshr i32 %61, 19, !dbg !497
  %and76 = and i32 %shr75, 15, !dbg !497
  %conv77 = trunc i32 %and76 to i8, !dbg !497
  %62 = load ptr, ptr %pld_info, align 8, !dbg !498
  %rotation = getelementptr inbounds %struct.acpi_pld_info, ptr %62, i32 0, i32 23, !dbg !499
  store i8 %conv77, ptr %rotation, align 2, !dbg !500
  %63 = load i32, ptr %dword, align 4, !dbg !501
  %shr78 = lshr i32 %63, 23, !dbg !501
  %and79 = and i32 %shr78, 31, !dbg !501
  %conv80 = trunc i32 %and79 to i8, !dbg !501
  %64 = load ptr, ptr %pld_info, align 8, !dbg !502
  %order = getelementptr inbounds %struct.acpi_pld_info, ptr %64, i32 0, i32 24, !dbg !503
  store i8 %conv80, ptr %order, align 1, !dbg !504
  %65 = load i64, ptr %length.addr, align 8, !dbg !505
  %cmp81 = icmp uge i64 %65, 20, !dbg !507
  br i1 %cmp81, label %if.then83, label %if.end91, !dbg !508

if.then83:                                        ; preds = %if.end5
  %66 = load ptr, ptr %buffer, align 8, !dbg !509
  %arrayidx84 = getelementptr i32, ptr %66, i64 4, !dbg !509
  %67 = load i32, ptr %arrayidx84, align 4, !dbg !509
  store i32 %67, ptr %dword, align 4, !dbg !509
  %68 = load i32, ptr %dword, align 4, !dbg !511
  %shr85 = lshr i32 %68, 0, !dbg !511
  %and86 = and i32 %shr85, 65535, !dbg !511
  %conv87 = trunc i32 %and86 to i16, !dbg !511
  %69 = load ptr, ptr %pld_info, align 8, !dbg !512
  %vertical_offset = getelementptr inbounds %struct.acpi_pld_info, ptr %69, i32 0, i32 26, !dbg !513
  store i16 %conv87, ptr %vertical_offset, align 2, !dbg !514
  %70 = load i32, ptr %dword, align 4, !dbg !515
  %shr88 = lshr i32 %70, 16, !dbg !515
  %and89 = and i32 %shr88, 65535, !dbg !515
  %conv90 = trunc i32 %and89 to i16, !dbg !515
  %71 = load ptr, ptr %pld_info, align 8, !dbg !516
  %horizontal_offset = getelementptr inbounds %struct.acpi_pld_info, ptr %71, i32 0, i32 27, !dbg !517
  store i16 %conv90, ptr %horizontal_offset, align 2, !dbg !518
  br label %if.end91, !dbg !519

if.end91:                                         ; preds = %if.then83, %if.end5
  %72 = load ptr, ptr %pld_info, align 8, !dbg !520
  %73 = load ptr, ptr %return_buffer.addr, align 8, !dbg !521
  store ptr %72, ptr %73, align 8, !dbg !522
  store i32 0, ptr %retval, align 4, !dbg !523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !523

cleanup:                                          ; preds = %if.end91, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dword) #14, !dbg !524
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #14, !dbg !524
  call void @llvm.lifetime.end.p0(i64 8, ptr %pld_info) #14, !dbg !524
  %74 = load i32, ptr %retval, align 4, !dbg !524
  ret i32 %74, !dbg !524
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #5 align 16 !dbg !525 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !529, metadata !DIExpression()), !dbg !540
  %0 = load i64, ptr %size.addr, align 8, !dbg !541
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !530, metadata !DIExpression()), !dbg !542
  br label %do.body, !dbg !542

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !532, metadata !DIExpression()), !dbg !543
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !543
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !535, metadata !DIExpression()), !dbg !543
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !543
  %conv = zext i1 %cmp to i32, !dbg !543
  store i32 1, ptr %tmp, align 4, !dbg !543
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !544
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !544
  %1 = load i32, ptr %tmp, align 4, !dbg !543
  %call = call i64 @arch_local_save_flags() #15, !dbg !544
  store i64 %call, ptr %_flags, align 8, !dbg !544
  br label %do.cond, !dbg !544

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !544

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !536, metadata !DIExpression()), !dbg !545
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !539, metadata !DIExpression()), !dbg !545
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !545
  %conv6 = zext i1 %cmp5 to i32, !dbg !545
  store i32 1, ptr %tmp7, align 4, !dbg !545
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !546
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !546
  %2 = load i32, ptr %tmp7, align 4, !dbg !545
  %3 = load i64, ptr %_flags, align 8, !dbg !546
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !546
  store i32 %call9, ptr %tmp8, align 4, !dbg !546
  %4 = load i32, ptr %tmp8, align 4, !dbg !546
  store i32 %4, ptr %tmp1, align 4, !dbg !544
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !547
  %5 = load i32, ptr %tmp1, align 4, !dbg !542
  %tobool = icmp ne i32 %5, 0, !dbg !547
  %6 = zext i1 %tobool to i64, !dbg !547
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !547
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !548
  ret ptr %call10, !dbg !549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !550 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !558, metadata !DIExpression()), !dbg !560
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !559, metadata !DIExpression()), !dbg !561
  %0 = load i64, ptr %size.addr, align 8, !dbg !562
  %1 = load i32, ptr %flags.addr, align 4, !dbg !563
  %or = or i32 %1, 256, !dbg !564
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !565
  ret ptr %call, !dbg !566
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !567 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !571
  ret i64 %call, !dbg !572
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !573 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !578, metadata !DIExpression()), !dbg !579
  %0 = load i64, ptr %flags.addr, align 8, !dbg !580
  %and = and i64 %0, 512, !dbg !581
  %tobool = icmp ne i64 %and, 0, !dbg !582
  %lnot = xor i1 %tobool, true, !dbg !582
  %lnot.ext = zext i1 %lnot to i32, !dbg !582
  ret i32 %lnot.ext, !dbg !583
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !584 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !586, metadata !DIExpression()), !dbg !591
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !587, metadata !DIExpression()), !dbg !592
  %0 = load i64, ptr %size.addr, align 8, !dbg !593
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !594
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !595

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !596
  %tobool = icmp ne i64 %2, 0, !dbg !596
  br i1 %tobool, label %if.then, label %if.end7, !dbg !597

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %index, metadata !588, metadata !DIExpression()), !dbg !599
  %3 = load i64, ptr %size.addr, align 8, !dbg !600
  %cmp = icmp ugt i64 %3, 8192, !dbg !602
  br i1 %cmp, label %if.then1, label %if.end, !dbg !603

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !604
  %5 = load i32, ptr %flags.addr, align 4, !dbg !605
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !606
  store ptr %call, ptr %retval, align 8, !dbg !607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !607

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !608
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !608
  store i32 %call2, ptr %index, align 4, !dbg !609
  %7 = load i32, ptr %flags.addr, align 4, !dbg !610
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !611
  %9 = ptrtoint ptr %8 to i64, !dbg !611
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !612
  %idxprom = zext i32 %call3 to i64, !dbg !613
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !613
  %10 = load i32, ptr %index, align 4, !dbg !614
  %idxprom4 = zext i32 %10 to i64, !dbg !613
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !613
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !613
  %12 = load i32, ptr %flags.addr, align 4, !dbg !615
  %13 = load i64, ptr %size.addr, align 8, !dbg !616
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !617
  store ptr %call6, ptr %retval, align 8, !dbg !618
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !618

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !619
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !620
  %15 = load i32, ptr %flags.addr, align 4, !dbg !621
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !622
  store ptr %call8, ptr %retval, align 8, !dbg !623
  br label %return, !dbg !623

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !624
  ret ptr %16, !dbg !624
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !625 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !626 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !632, metadata !DIExpression()), !dbg !634
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !633, metadata !DIExpression()), !dbg !635
  %0 = load i64, ptr %size.addr, align 8, !dbg !636
  %tobool = icmp ne i64 %0, 0, !dbg !636
  br i1 %tobool, label %if.end, label %if.then, !dbg !638

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !639
  br label %return, !dbg !639

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !640
  %cmp = icmp ule i64 %1, 8, !dbg !642
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !643

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !644
  br label %return, !dbg !644

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !645
  %cmp3 = icmp ugt i64 %2, 64, !dbg !647
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !648

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !649
  %cmp4 = icmp ule i64 %3, 96, !dbg !650
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !651

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !652
  br label %return, !dbg !652

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !653
  %cmp7 = icmp ugt i64 %4, 128, !dbg !655
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !656

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !657
  %cmp9 = icmp ule i64 %5, 192, !dbg !658
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !659

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !660
  br label %return, !dbg !660

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !661
  %cmp12 = icmp ule i64 %6, 8, !dbg !663
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !664

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !665
  br label %return, !dbg !665

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !666
  %cmp15 = icmp ule i64 %7, 16, !dbg !668
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !669

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !670
  br label %return, !dbg !670

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !671
  %cmp18 = icmp ule i64 %8, 32, !dbg !673
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !674

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !675
  br label %return, !dbg !675

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !676
  %cmp21 = icmp ule i64 %9, 64, !dbg !678
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !679

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !680
  br label %return, !dbg !680

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !681
  %cmp24 = icmp ule i64 %10, 128, !dbg !683
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !684

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !685
  br label %return, !dbg !685

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !686
  %cmp27 = icmp ule i64 %11, 256, !dbg !688
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !689

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !690
  br label %return, !dbg !690

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !691
  %cmp30 = icmp ule i64 %12, 512, !dbg !693
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !694

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !695
  br label %return, !dbg !695

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !696
  %cmp33 = icmp ule i64 %13, 1024, !dbg !698
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !699

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !700
  br label %return, !dbg !700

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !701
  %cmp36 = icmp ule i64 %14, 2048, !dbg !703
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !704

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !705
  br label %return, !dbg !705

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !706
  %cmp39 = icmp ule i64 %15, 4096, !dbg !708
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !709

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !710
  br label %return, !dbg !710

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !711
  %cmp42 = icmp ule i64 %16, 8192, !dbg !713
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !714

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !715
  br label %return, !dbg !715

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !716
  %cmp45 = icmp ule i64 %17, 16384, !dbg !718
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !719

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !720
  br label %return, !dbg !720

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !721
  %cmp48 = icmp ule i64 %18, 32768, !dbg !723
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !724

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !725
  br label %return, !dbg !725

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !726
  %cmp51 = icmp ule i64 %19, 65536, !dbg !728
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !729

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !730
  br label %return, !dbg !730

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !731
  %cmp54 = icmp ule i64 %20, 131072, !dbg !733
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !734

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !735
  br label %return, !dbg !735

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !736
  %cmp57 = icmp ule i64 %21, 262144, !dbg !738
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !739

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !740
  br label %return, !dbg !740

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !741
  %cmp60 = icmp ule i64 %22, 524288, !dbg !743
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !744

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !745
  br label %return, !dbg !745

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !746
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !748
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !749

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !750
  br label %return, !dbg !750

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !751
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !753
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !754

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !756, !range !758, !noundef !759
  %tobool69 = trunc i8 %25 to i1, !dbg !756
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !760

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !761

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !762, !srcloc !765
  unreachable, !dbg !762

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !766

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !767

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !768

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !770

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !768

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !772, !srcloc !774
  br label %do.end75, !dbg !772

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !768

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !775
  br label %return, !dbg !775

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !776
  ret i32 %26, !dbg !776
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !777 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !780 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !784, metadata !DIExpression()), !dbg !786
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !785, metadata !DIExpression()), !dbg !787
  %0 = load i32, ptr %flags.addr, align 4, !dbg !788
  %and = and i32 %0, 17, !dbg !788
  %cmp = icmp eq i32 %and, 0, !dbg !788
  %lnot = xor i1 %cmp, true, !dbg !788
  %lnot1 = xor i1 %lnot, true, !dbg !788
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !788
  %conv = sext i32 %lnot.ext to i64, !dbg !788
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !788
  %tobool = icmp ne i64 %expval, 0, !dbg !788
  br i1 %tobool, label %if.then, label %if.end, !dbg !790

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !791
  br label %return, !dbg !791

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !792
  %and2 = and i32 %1, 1, !dbg !794
  %tobool3 = icmp ne i32 %and2, 0, !dbg !794
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !795

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !796
  br label %return, !dbg !796

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !797
  br label %return, !dbg !797

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !799
  ret i32 %2, !dbg !799
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !800 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !801 dso_local void @__compiletime_assert_173() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !802 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !804, metadata !DIExpression()), !dbg !806
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !807, !srcloc !808
  %0 = load i64, ptr %flags, align 8, !dbg !809
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !810
  ret i64 %0, !dbg !811
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_purge_cached_objects174", scope: !2, file: !3, line: 245, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utxface.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utxface\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utxface.ll drivers/acpi/acpica/utxface.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utxface.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "039ef86bd04bf8b0b4a209eafd7c4af0")
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
!21 = !{!22, !28, !24, !29, !30, !33, !37, !32}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !31, line: 42, baseType: !32)
!31 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !36)
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !31, line: 154, baseType: !7)
!38 = !{!0, !39, !41, !43, !45, !47, !49}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_interface175", scope: !2, file: !3, line: 298, type: !28, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_remove_interface176", scope: !2, file: !3, line: 332, type: !28, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_interface_handler177", scope: !2, file: !3, line: 367, type: !28, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_check_address_range178", scope: !2, file: !3, line: 433, type: !28, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_decode_pld_buffer179", scope: !2, file: !3, line: 524, type: !28, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 168, elements: !53)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !{!54}
!54 = !DISubrange(count: 21)
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 8, !"cf-protection-branch", i32 1}
!59 = !{i32 4, !"function_return_thunk_extern", i32 1}
!60 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!61 = !{i32 1, !"Code Model", i32 2}
!62 = !{i32 1, !"override-stack-alignment", i32 8}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = distinct !DISubprogram(name: "acpi_terminate", scope: !3, file: !3, line: 30, type: !65, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{!22}
!67 = !{!68}
!68 = !DILocalVariable(name: "status", scope: !64, file: !3, line: 32, type: !22)
!69 = !DILocation(line: 32, column: 2, scope: !64)
!70 = !DILocation(line: 32, column: 14, scope: !64)
!71 = !DILocation(line: 38, column: 2, scope: !64)
!72 = !DILocation(line: 42, column: 2, scope: !64)
!73 = !DILocation(line: 46, column: 11, scope: !64)
!74 = !DILocation(line: 46, column: 9, scope: !64)
!75 = !DILocation(line: 47, column: 2, scope: !64)
!76 = !DILocation(line: 48, column: 1, scope: !64)
!77 = !DISubprogram(name: "acpi_ut_subsystem_shutdown", scope: !78, file: !78, line: 254, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!78 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!79 = !DISubroutineType(types: !80)
!80 = !{null}
!81 = !DISubprogram(name: "acpi_ut_mutex_terminate", scope: !78, file: !78, line: 644, type: !79, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !DISubprogram(name: "acpi_os_terminate", scope: !83, file: !83, line: 42, type: !65, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!83 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!84 = distinct !DISubprogram(name: "acpi_purge_cached_objects", scope: !3, file: !3, line: 233, type: !65, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!85 = !DILocation(line: 237, column: 28, scope: !84)
!86 = !DILocation(line: 237, column: 8, scope: !84)
!87 = !DILocation(line: 238, column: 28, scope: !84)
!88 = !DILocation(line: 238, column: 8, scope: !84)
!89 = !DILocation(line: 239, column: 28, scope: !84)
!90 = !DILocation(line: 239, column: 8, scope: !84)
!91 = !DILocation(line: 240, column: 28, scope: !84)
!92 = !DILocation(line: 240, column: 8, scope: !84)
!93 = !DILocation(line: 242, column: 2, scope: !84)
!94 = !DISubprogram(name: "acpi_os_purge_cache", scope: !95, file: !95, line: 211, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!96 = !DISubroutineType(types: !97)
!97 = !{!22, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !100, line: 11, flags: DIFlagFwdDecl)
!100 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!101 = distinct !DISubprogram(name: "acpi_install_interface", scope: !3, file: !3, line: 258, type: !102, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!102 = !DISubroutineType(types: !103)
!103 = !{!22, !104}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !23, line: 423, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!106 = !{!107, !108, !109}
!107 = !DILocalVariable(name: "interface_name", arg: 1, scope: !101, file: !3, line: 258, type: !104)
!108 = !DILocalVariable(name: "status", scope: !101, file: !3, line: 260, type: !22)
!109 = !DILocalVariable(name: "interface_info", scope: !101, file: !3, line: 261, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_interface_info", file: !112, line: 1061, size: 192, elements: !113)
!112 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!113 = !{!114, !115, !116, !120}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !112, line: 1062, baseType: !105, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !112, line: 1063, baseType: !110, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !111, file: !112, line: 1064, baseType: !117, size: 8, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !119)
!119 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !111, file: !112, line: 1065, baseType: !117, size: 8, offset: 136)
!121 = !DILocation(line: 258, column: 48, scope: !101)
!122 = !DILocation(line: 260, column: 2, scope: !101)
!123 = !DILocation(line: 260, column: 14, scope: !101)
!124 = !DILocation(line: 261, column: 2, scope: !101)
!125 = !DILocation(line: 261, column: 30, scope: !101)
!126 = !DILocation(line: 265, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !101, file: !3, line: 265, column: 6)
!128 = !DILocation(line: 265, column: 22, scope: !127)
!129 = !DILocation(line: 265, column: 33, scope: !127)
!130 = !DILocation(line: 265, column: 26, scope: !127)
!131 = !DILocation(line: 265, column: 49, scope: !127)
!132 = !DILocation(line: 265, column: 6, scope: !101)
!133 = !DILocation(line: 266, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !127, file: !3, line: 265, column: 56)
!135 = !DILocation(line: 269, column: 11, scope: !101)
!136 = !DILocation(line: 269, column: 9, scope: !101)
!137 = !DILocation(line: 270, column: 6, scope: !138)
!138 = distinct !DILexicalBlock(scope: !101, file: !3, line: 270, column: 6)
!139 = !DILocation(line: 270, column: 6, scope: !101)
!140 = !DILocation(line: 271, column: 11, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 270, column: 28)
!142 = !DILocation(line: 271, column: 3, scope: !141)
!143 = !DILocation(line: 276, column: 41, scope: !101)
!144 = !DILocation(line: 276, column: 19, scope: !101)
!145 = !DILocation(line: 276, column: 17, scope: !101)
!146 = !DILocation(line: 277, column: 6, scope: !147)
!147 = distinct !DILexicalBlock(scope: !101, file: !3, line: 277, column: 6)
!148 = !DILocation(line: 277, column: 6, scope: !101)
!149 = !DILocation(line: 282, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 282, column: 7)
!151 = distinct !DILexicalBlock(scope: !147, file: !3, line: 277, column: 22)
!152 = !DILocation(line: 282, column: 23, scope: !150)
!153 = !DILocation(line: 282, column: 29, scope: !150)
!154 = !DILocation(line: 282, column: 7, scope: !151)
!155 = !DILocation(line: 283, column: 4, scope: !156)
!156 = distinct !DILexicalBlock(scope: !150, file: !3, line: 282, column: 49)
!157 = !DILocation(line: 283, column: 20, scope: !156)
!158 = !DILocation(line: 283, column: 26, scope: !156)
!159 = !DILocation(line: 284, column: 11, scope: !156)
!160 = !DILocation(line: 285, column: 3, scope: !156)
!161 = !DILocation(line: 286, column: 11, scope: !162)
!162 = distinct !DILexicalBlock(scope: !150, file: !3, line: 285, column: 10)
!163 = !DILocation(line: 288, column: 2, scope: !151)
!164 = !DILocation(line: 291, column: 38, scope: !165)
!165 = distinct !DILexicalBlock(scope: !147, file: !3, line: 288, column: 9)
!166 = !DILocation(line: 291, column: 12, scope: !165)
!167 = !DILocation(line: 291, column: 10, scope: !165)
!168 = !DILocation(line: 294, column: 2, scope: !101)
!169 = !DILocation(line: 295, column: 10, scope: !101)
!170 = !DILocation(line: 295, column: 2, scope: !101)
!171 = !DILocation(line: 296, column: 1, scope: !101)
!172 = !DISubprogram(name: "strlen", scope: !173, file: !173, line: 128, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!173 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!174 = !DISubroutineType(types: !175)
!175 = !{!32, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!178 = !DISubprogram(name: "acpi_os_wait_semaphore", scope: !95, file: !95, line: 136, type: !179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DISubroutineType(types: !180)
!180 = !{!22, !28, !24, !181}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !183)
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !DISubprogram(name: "acpi_ut_get_interface", scope: !78, file: !78, line: 477, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{!110, !104}
!187 = !DISubprogram(name: "acpi_ut_install_interface", scope: !78, file: !78, line: 471, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !95, file: !95, line: 140, type: !189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DISubroutineType(types: !190)
!190 = !{!22, !28, !24}
!191 = distinct !DISubprogram(name: "acpi_remove_interface", scope: !3, file: !3, line: 311, type: !102, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!192 = !{!193, !194}
!193 = !DILocalVariable(name: "interface_name", arg: 1, scope: !191, file: !3, line: 311, type: !104)
!194 = !DILocalVariable(name: "status", scope: !191, file: !3, line: 313, type: !22)
!195 = !DILocation(line: 311, column: 47, scope: !191)
!196 = !DILocation(line: 313, column: 2, scope: !191)
!197 = !DILocation(line: 313, column: 14, scope: !191)
!198 = !DILocation(line: 317, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !191, file: !3, line: 317, column: 6)
!200 = !DILocation(line: 317, column: 22, scope: !199)
!201 = !DILocation(line: 317, column: 33, scope: !199)
!202 = !DILocation(line: 317, column: 26, scope: !199)
!203 = !DILocation(line: 317, column: 49, scope: !199)
!204 = !DILocation(line: 317, column: 6, scope: !191)
!205 = !DILocation(line: 318, column: 3, scope: !206)
!206 = distinct !DILexicalBlock(scope: !199, file: !3, line: 317, column: 56)
!207 = !DILocation(line: 321, column: 11, scope: !191)
!208 = !DILocation(line: 321, column: 9, scope: !191)
!209 = !DILocation(line: 322, column: 6, scope: !210)
!210 = distinct !DILexicalBlock(scope: !191, file: !3, line: 322, column: 6)
!211 = !DILocation(line: 322, column: 6, scope: !191)
!212 = !DILocation(line: 323, column: 11, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !3, line: 322, column: 28)
!214 = !DILocation(line: 323, column: 3, scope: !213)
!215 = !DILocation(line: 326, column: 36, scope: !191)
!216 = !DILocation(line: 326, column: 11, scope: !191)
!217 = !DILocation(line: 326, column: 9, scope: !191)
!218 = !DILocation(line: 328, column: 2, scope: !191)
!219 = !DILocation(line: 329, column: 10, scope: !191)
!220 = !DILocation(line: 329, column: 2, scope: !191)
!221 = !DILocation(line: 330, column: 1, scope: !191)
!222 = !DISubprogram(name: "acpi_ut_remove_interface", scope: !78, file: !78, line: 473, type: !102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!223 = distinct !DISubprogram(name: "acpi_install_interface_handler", scope: !3, file: !3, line: 348, type: !224, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !230)
!224 = !DISubroutineType(types: !225)
!225 = !{!22, !226}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interface_handler", file: !23, line: 1140, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!24, !104, !24}
!230 = !{!231, !232}
!231 = !DILocalVariable(name: "handler", arg: 1, scope: !223, file: !3, line: 348, type: !226)
!232 = !DILocalVariable(name: "status", scope: !223, file: !3, line: 350, type: !22)
!233 = !DILocation(line: 348, column: 67, scope: !223)
!234 = !DILocation(line: 350, column: 2, scope: !223)
!235 = !DILocation(line: 350, column: 14, scope: !223)
!236 = !DILocation(line: 352, column: 11, scope: !223)
!237 = !DILocation(line: 352, column: 9, scope: !223)
!238 = !DILocation(line: 353, column: 6, scope: !239)
!239 = distinct !DILexicalBlock(scope: !223, file: !3, line: 353, column: 6)
!240 = !DILocation(line: 353, column: 6, scope: !223)
!241 = !DILocation(line: 354, column: 11, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !3, line: 353, column: 28)
!243 = !DILocation(line: 354, column: 3, scope: !242)
!244 = !DILocation(line: 357, column: 6, scope: !245)
!245 = distinct !DILexicalBlock(scope: !223, file: !3, line: 357, column: 6)
!246 = !DILocation(line: 357, column: 14, scope: !245)
!247 = !DILocation(line: 357, column: 17, scope: !245)
!248 = !DILocation(line: 357, column: 6, scope: !223)
!249 = !DILocation(line: 358, column: 10, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !3, line: 357, column: 45)
!251 = !DILocation(line: 359, column: 2, scope: !250)
!252 = !DILocation(line: 360, column: 32, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 359, column: 9)
!254 = !DILocation(line: 360, column: 30, scope: !253)
!255 = !DILocation(line: 363, column: 2, scope: !223)
!256 = !DILocation(line: 364, column: 10, scope: !223)
!257 = !DILocation(line: 364, column: 2, scope: !223)
!258 = !DILocation(line: 365, column: 1, scope: !223)
!259 = distinct !DISubprogram(name: "acpi_update_interfaces", scope: !3, file: !3, line: 382, type: !260, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{!22, !117}
!262 = !{!263, !264}
!263 = !DILocalVariable(name: "action", arg: 1, scope: !259, file: !3, line: 382, type: !117)
!264 = !DILocalVariable(name: "status", scope: !259, file: !3, line: 384, type: !22)
!265 = !DILocation(line: 382, column: 39, scope: !259)
!266 = !DILocation(line: 384, column: 2, scope: !259)
!267 = !DILocation(line: 384, column: 14, scope: !259)
!268 = !DILocation(line: 386, column: 11, scope: !259)
!269 = !DILocation(line: 386, column: 9, scope: !259)
!270 = !DILocation(line: 387, column: 6, scope: !271)
!271 = distinct !DILexicalBlock(scope: !259, file: !3, line: 387, column: 6)
!272 = !DILocation(line: 387, column: 6, scope: !259)
!273 = !DILocation(line: 388, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !3, line: 387, column: 28)
!275 = !DILocation(line: 388, column: 3, scope: !274)
!276 = !DILocation(line: 391, column: 37, scope: !259)
!277 = !DILocation(line: 391, column: 11, scope: !259)
!278 = !DILocation(line: 391, column: 9, scope: !259)
!279 = !DILocation(line: 393, column: 2, scope: !259)
!280 = !DILocation(line: 394, column: 10, scope: !259)
!281 = !DILocation(line: 394, column: 2, scope: !259)
!282 = !DILocation(line: 395, column: 1, scope: !259)
!283 = !DISubprogram(name: "acpi_ut_update_interfaces", scope: !78, file: !78, line: 475, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = distinct !DISubprogram(name: "acpi_check_address_range", scope: !3, file: !3, line: 414, type: !285, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !289)
!285 = !DISubroutineType(types: !286)
!286 = !{!24, !287, !288, !33, !117}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !23, line: 814, baseType: !117)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !34)
!289 = !{!290, !291, !292, !293, !294, !295}
!290 = !DILocalVariable(name: "space_id", arg: 1, scope: !284, file: !3, line: 414, type: !287)
!291 = !DILocalVariable(name: "address", arg: 2, scope: !284, file: !3, line: 415, type: !288)
!292 = !DILocalVariable(name: "length", arg: 3, scope: !284, file: !3, line: 416, type: !33)
!293 = !DILocalVariable(name: "warn", arg: 4, scope: !284, file: !3, line: 416, type: !117)
!294 = !DILocalVariable(name: "overlaps", scope: !284, file: !3, line: 418, type: !24)
!295 = !DILocalVariable(name: "status", scope: !284, file: !3, line: 419, type: !22)
!296 = !DILocation(line: 414, column: 46, scope: !284)
!297 = !DILocation(line: 415, column: 27, scope: !284)
!298 = !DILocation(line: 416, column: 15, scope: !284)
!299 = !DILocation(line: 416, column: 26, scope: !284)
!300 = !DILocation(line: 418, column: 2, scope: !284)
!301 = !DILocation(line: 418, column: 6, scope: !284)
!302 = !DILocation(line: 419, column: 2, scope: !284)
!303 = !DILocation(line: 419, column: 14, scope: !284)
!304 = !DILocation(line: 421, column: 11, scope: !284)
!305 = !DILocation(line: 421, column: 9, scope: !284)
!306 = !DILocation(line: 422, column: 6, scope: !307)
!307 = distinct !DILexicalBlock(scope: !284, file: !3, line: 422, column: 6)
!308 = !DILocation(line: 422, column: 6, scope: !284)
!309 = !DILocation(line: 423, column: 3, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !3, line: 422, column: 28)
!311 = !DILocation(line: 426, column: 41, scope: !284)
!312 = !DILocation(line: 426, column: 51, scope: !284)
!313 = !DILocation(line: 427, column: 18, scope: !284)
!314 = !DILocation(line: 427, column: 13, scope: !284)
!315 = !DILocation(line: 427, column: 26, scope: !284)
!316 = !DILocation(line: 426, column: 13, scope: !284)
!317 = !DILocation(line: 426, column: 11, scope: !284)
!318 = !DILocation(line: 429, column: 8, scope: !284)
!319 = !DILocation(line: 430, column: 10, scope: !284)
!320 = !DILocation(line: 430, column: 2, scope: !284)
!321 = !DILocation(line: 431, column: 1, scope: !284)
!322 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !78, file: !78, line: 646, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DISubroutineType(types: !324)
!324 = !{!22, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !112, line: 17, baseType: !24)
!326 = !DISubprogram(name: "acpi_ut_check_address_range", scope: !78, file: !78, line: 698, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubroutineType(types: !328)
!328 = !{!24, !287, !288, !24, !117}
!329 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !78, file: !78, line: 648, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = distinct !DISubprogram(name: "acpi_decode_pld_buffer", scope: !3, file: !3, line: 451, type: !331, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !367)
!331 = !DISubroutineType(types: !332)
!332 = !{!22, !333, !33, !334}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pld_info", file: !337, line: 77, size: 272, elements: !338)
!337 = !DIFile(filename: "./include/acpi/acbuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65439b7b1669741c8cb9b42802ea004c")
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !336, file: !337, line: 78, baseType: !117, size: 8)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_color", scope: !336, file: !337, line: 79, baseType: !117, size: 8, offset: 8)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !336, file: !337, line: 80, baseType: !117, size: 8, offset: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !336, file: !337, line: 81, baseType: !117, size: 8, offset: 24)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !336, file: !337, line: 82, baseType: !117, size: 8, offset: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !336, file: !337, line: 83, baseType: !181, size: 16, offset: 48)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !336, file: !337, line: 84, baseType: !181, size: 16, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "user_visible", scope: !336, file: !337, line: 85, baseType: !117, size: 8, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !336, file: !337, line: 86, baseType: !117, size: 8, offset: 88)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !336, file: !337, line: 87, baseType: !117, size: 8, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !336, file: !337, line: 88, baseType: !117, size: 8, offset: 104)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !336, file: !337, line: 89, baseType: !117, size: 8, offset: 112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !336, file: !337, line: 90, baseType: !117, size: 8, offset: 120)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !336, file: !337, line: 91, baseType: !117, size: 8, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "group_orientation", scope: !336, file: !337, line: 92, baseType: !117, size: 8, offset: 136)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "group_token", scope: !336, file: !337, line: 93, baseType: !117, size: 8, offset: 144)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "group_position", scope: !336, file: !337, line: 94, baseType: !117, size: 8, offset: 152)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "bay", scope: !336, file: !337, line: 95, baseType: !117, size: 8, offset: 160)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !336, file: !337, line: 96, baseType: !117, size: 8, offset: 168)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ospm_eject_required", scope: !336, file: !337, line: 97, baseType: !117, size: 8, offset: 176)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cabinet_number", scope: !336, file: !337, line: 98, baseType: !117, size: 8, offset: 184)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "card_cage_number", scope: !336, file: !337, line: 99, baseType: !117, size: 8, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !336, file: !337, line: 100, baseType: !117, size: 8, offset: 200)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !336, file: !337, line: 101, baseType: !117, size: 8, offset: 208)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !336, file: !337, line: 102, baseType: !117, size: 8, offset: 216)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !336, file: !337, line: 103, baseType: !117, size: 8, offset: 224)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_offset", scope: !336, file: !337, line: 104, baseType: !181, size: 16, offset: 240)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_offset", scope: !336, file: !337, line: 105, baseType: !181, size: 16, offset: 256)
!367 = !{!368, !369, !370, !371, !372, !373}
!368 = !DILocalVariable(name: "in_buffer", arg: 1, scope: !330, file: !3, line: 451, type: !333)
!369 = !DILocalVariable(name: "length", arg: 2, scope: !330, file: !3, line: 452, type: !33)
!370 = !DILocalVariable(name: "return_buffer", arg: 3, scope: !330, file: !3, line: 452, type: !334)
!371 = !DILocalVariable(name: "pld_info", scope: !330, file: !3, line: 454, type: !335)
!372 = !DILocalVariable(name: "buffer", scope: !330, file: !3, line: 455, type: !29)
!373 = !DILocalVariable(name: "dword", scope: !330, file: !3, line: 456, type: !24)
!374 = !DILocation(line: 451, column: 28, scope: !330)
!375 = !DILocation(line: 452, column: 20, scope: !330)
!376 = !DILocation(line: 452, column: 51, scope: !330)
!377 = !DILocation(line: 454, column: 2, scope: !330)
!378 = !DILocation(line: 454, column: 24, scope: !330)
!379 = !DILocation(line: 455, column: 2, scope: !330)
!380 = !DILocation(line: 455, column: 7, scope: !330)
!381 = !DILocation(line: 455, column: 16, scope: !330)
!382 = !DILocation(line: 456, column: 2, scope: !330)
!383 = !DILocation(line: 456, column: 6, scope: !330)
!384 = !DILocation(line: 460, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !330, file: !3, line: 460, column: 6)
!386 = !DILocation(line: 460, column: 17, scope: !385)
!387 = !DILocation(line: 460, column: 21, scope: !385)
!388 = !DILocation(line: 461, column: 6, scope: !385)
!389 = !DILocation(line: 461, column: 10, scope: !385)
!390 = !DILocation(line: 461, column: 17, scope: !385)
!391 = !DILocation(line: 460, column: 6, scope: !330)
!392 = !DILocation(line: 462, column: 3, scope: !393)
!393 = distinct !DILexicalBlock(scope: !385, file: !3, line: 461, column: 47)
!394 = !DILocation(line: 465, column: 13, scope: !330)
!395 = !DILocation(line: 465, column: 11, scope: !330)
!396 = !DILocation(line: 466, column: 7, scope: !397)
!397 = distinct !DILexicalBlock(scope: !330, file: !3, line: 466, column: 6)
!398 = !DILocation(line: 466, column: 6, scope: !330)
!399 = !DILocation(line: 467, column: 3, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !3, line: 466, column: 17)
!401 = !DILocation(line: 472, column: 2, scope: !330)
!402 = !DILocation(line: 473, column: 23, scope: !330)
!403 = !DILocation(line: 473, column: 2, scope: !330)
!404 = !DILocation(line: 473, column: 12, scope: !330)
!405 = !DILocation(line: 473, column: 21, scope: !330)
!406 = !DILocation(line: 474, column: 27, scope: !330)
!407 = !DILocation(line: 474, column: 2, scope: !330)
!408 = !DILocation(line: 474, column: 12, scope: !330)
!409 = !DILocation(line: 474, column: 25, scope: !330)
!410 = !DILocation(line: 475, column: 18, scope: !330)
!411 = !DILocation(line: 475, column: 2, scope: !330)
!412 = !DILocation(line: 475, column: 12, scope: !330)
!413 = !DILocation(line: 475, column: 16, scope: !330)
!414 = !DILocation(line: 476, column: 20, scope: !330)
!415 = !DILocation(line: 476, column: 2, scope: !330)
!416 = !DILocation(line: 476, column: 12, scope: !330)
!417 = !DILocation(line: 476, column: 18, scope: !330)
!418 = !DILocation(line: 477, column: 19, scope: !330)
!419 = !DILocation(line: 477, column: 2, scope: !330)
!420 = !DILocation(line: 477, column: 12, scope: !330)
!421 = !DILocation(line: 477, column: 17, scope: !330)
!422 = !DILocation(line: 481, column: 2, scope: !330)
!423 = !DILocation(line: 482, column: 20, scope: !330)
!424 = !DILocation(line: 482, column: 2, scope: !330)
!425 = !DILocation(line: 482, column: 12, scope: !330)
!426 = !DILocation(line: 482, column: 18, scope: !330)
!427 = !DILocation(line: 483, column: 21, scope: !330)
!428 = !DILocation(line: 483, column: 2, scope: !330)
!429 = !DILocation(line: 483, column: 12, scope: !330)
!430 = !DILocation(line: 483, column: 19, scope: !330)
!431 = !DILocation(line: 487, column: 2, scope: !330)
!432 = !DILocation(line: 488, column: 27, scope: !330)
!433 = !DILocation(line: 488, column: 2, scope: !330)
!434 = !DILocation(line: 488, column: 12, scope: !330)
!435 = !DILocation(line: 488, column: 25, scope: !330)
!436 = !DILocation(line: 489, column: 19, scope: !330)
!437 = !DILocation(line: 489, column: 2, scope: !330)
!438 = !DILocation(line: 489, column: 12, scope: !330)
!439 = !DILocation(line: 489, column: 17, scope: !330)
!440 = !DILocation(line: 490, column: 18, scope: !330)
!441 = !DILocation(line: 490, column: 2, scope: !330)
!442 = !DILocation(line: 490, column: 12, scope: !330)
!443 = !DILocation(line: 490, column: 16, scope: !330)
!444 = !DILocation(line: 491, column: 20, scope: !330)
!445 = !DILocation(line: 491, column: 2, scope: !330)
!446 = !DILocation(line: 491, column: 12, scope: !330)
!447 = !DILocation(line: 491, column: 18, scope: !330)
!448 = !DILocation(line: 492, column: 32, scope: !330)
!449 = !DILocation(line: 492, column: 2, scope: !330)
!450 = !DILocation(line: 492, column: 12, scope: !330)
!451 = !DILocation(line: 492, column: 30, scope: !330)
!452 = !DILocation(line: 493, column: 34, scope: !330)
!453 = !DILocation(line: 493, column: 2, scope: !330)
!454 = !DILocation(line: 493, column: 12, scope: !330)
!455 = !DILocation(line: 493, column: 32, scope: !330)
!456 = !DILocation(line: 494, column: 20, scope: !330)
!457 = !DILocation(line: 494, column: 2, scope: !330)
!458 = !DILocation(line: 494, column: 12, scope: !330)
!459 = !DILocation(line: 494, column: 18, scope: !330)
!460 = !DILocation(line: 495, column: 32, scope: !330)
!461 = !DILocation(line: 495, column: 2, scope: !330)
!462 = !DILocation(line: 495, column: 12, scope: !330)
!463 = !DILocation(line: 495, column: 30, scope: !330)
!464 = !DILocation(line: 496, column: 26, scope: !330)
!465 = !DILocation(line: 496, column: 2, scope: !330)
!466 = !DILocation(line: 496, column: 12, scope: !330)
!467 = !DILocation(line: 496, column: 24, scope: !330)
!468 = !DILocation(line: 497, column: 29, scope: !330)
!469 = !DILocation(line: 497, column: 2, scope: !330)
!470 = !DILocation(line: 497, column: 12, scope: !330)
!471 = !DILocation(line: 497, column: 27, scope: !330)
!472 = !DILocation(line: 498, column: 18, scope: !330)
!473 = !DILocation(line: 498, column: 2, scope: !330)
!474 = !DILocation(line: 498, column: 12, scope: !330)
!475 = !DILocation(line: 498, column: 16, scope: !330)
!476 = !DILocation(line: 502, column: 2, scope: !330)
!477 = !DILocation(line: 503, column: 24, scope: !330)
!478 = !DILocation(line: 503, column: 2, scope: !330)
!479 = !DILocation(line: 503, column: 12, scope: !330)
!480 = !DILocation(line: 503, column: 22, scope: !330)
!481 = !DILocation(line: 504, column: 34, scope: !330)
!482 = !DILocation(line: 504, column: 2, scope: !330)
!483 = !DILocation(line: 504, column: 12, scope: !330)
!484 = !DILocation(line: 504, column: 32, scope: !330)
!485 = !DILocation(line: 505, column: 29, scope: !330)
!486 = !DILocation(line: 505, column: 2, scope: !330)
!487 = !DILocation(line: 505, column: 12, scope: !330)
!488 = !DILocation(line: 505, column: 27, scope: !330)
!489 = !DILocation(line: 506, column: 31, scope: !330)
!490 = !DILocation(line: 506, column: 2, scope: !330)
!491 = !DILocation(line: 506, column: 12, scope: !330)
!492 = !DILocation(line: 506, column: 29, scope: !330)
!493 = !DILocation(line: 507, column: 24, scope: !330)
!494 = !DILocation(line: 507, column: 2, scope: !330)
!495 = !DILocation(line: 507, column: 12, scope: !330)
!496 = !DILocation(line: 507, column: 22, scope: !330)
!497 = !DILocation(line: 508, column: 23, scope: !330)
!498 = !DILocation(line: 508, column: 2, scope: !330)
!499 = !DILocation(line: 508, column: 12, scope: !330)
!500 = !DILocation(line: 508, column: 21, scope: !330)
!501 = !DILocation(line: 509, column: 20, scope: !330)
!502 = !DILocation(line: 509, column: 2, scope: !330)
!503 = !DILocation(line: 509, column: 12, scope: !330)
!504 = !DILocation(line: 509, column: 18, scope: !330)
!505 = !DILocation(line: 511, column: 6, scope: !506)
!506 = distinct !DILexicalBlock(scope: !330, file: !3, line: 511, column: 6)
!507 = !DILocation(line: 511, column: 13, scope: !506)
!508 = !DILocation(line: 511, column: 6, scope: !330)
!509 = !DILocation(line: 515, column: 3, scope: !510)
!510 = distinct !DILexicalBlock(scope: !506, file: !3, line: 511, column: 43)
!511 = !DILocation(line: 516, column: 31, scope: !510)
!512 = !DILocation(line: 516, column: 3, scope: !510)
!513 = !DILocation(line: 516, column: 13, scope: !510)
!514 = !DILocation(line: 516, column: 29, scope: !510)
!515 = !DILocation(line: 517, column: 33, scope: !510)
!516 = !DILocation(line: 517, column: 3, scope: !510)
!517 = !DILocation(line: 517, column: 13, scope: !510)
!518 = !DILocation(line: 517, column: 31, scope: !510)
!519 = !DILocation(line: 518, column: 2, scope: !510)
!520 = !DILocation(line: 520, column: 19, scope: !330)
!521 = !DILocation(line: 520, column: 3, scope: !330)
!522 = !DILocation(line: 520, column: 17, scope: !330)
!523 = !DILocation(line: 521, column: 2, scope: !330)
!524 = !DILocation(line: 522, column: 1, scope: !330)
!525 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !83, file: !83, line: 55, type: !526, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!526 = !DISubroutineType(types: !527)
!527 = !{!28, !33}
!528 = !{!529, !530, !532, !535, !536, !539}
!529 = !DILocalVariable(name: "size", arg: 1, scope: !525, file: !83, line: 55, type: !33)
!530 = !DILocalVariable(name: "_flags", scope: !531, file: !83, line: 57, type: !32)
!531 = distinct !DILexicalBlock(scope: !525, file: !83, line: 57, column: 23)
!532 = !DILocalVariable(name: "__dummy", scope: !533, file: !83, line: 57, type: !32)
!533 = distinct !DILexicalBlock(scope: !534, file: !83, line: 57, column: 23)
!534 = distinct !DILexicalBlock(scope: !531, file: !83, line: 57, column: 23)
!535 = !DILocalVariable(name: "__dummy2", scope: !533, file: !83, line: 57, type: !32)
!536 = !DILocalVariable(name: "__dummy", scope: !537, file: !83, line: 57, type: !32)
!537 = distinct !DILexicalBlock(scope: !538, file: !83, line: 57, column: 23)
!538 = distinct !DILexicalBlock(scope: !531, file: !83, line: 57, column: 23)
!539 = !DILocalVariable(name: "__dummy2", scope: !537, file: !83, line: 57, type: !32)
!540 = !DILocation(line: 55, column: 55, scope: !525)
!541 = !DILocation(line: 57, column: 17, scope: !525)
!542 = !DILocation(line: 57, column: 23, scope: !531)
!543 = !DILocation(line: 57, column: 23, scope: !533)
!544 = !DILocation(line: 57, column: 23, scope: !534)
!545 = !DILocation(line: 57, column: 23, scope: !537)
!546 = !DILocation(line: 57, column: 23, scope: !538)
!547 = !DILocation(line: 57, column: 23, scope: !525)
!548 = !DILocation(line: 57, column: 9, scope: !525)
!549 = !DILocation(line: 57, column: 2, scope: !525)
!550 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !551, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!551 = !DISubroutineType(types: !552)
!552 = !{!28, !553, !37}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 61, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !555, line: 72, baseType: !556)
!555 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !555, line: 16, baseType: !32)
!557 = !{!558, !559}
!558 = !DILocalVariable(name: "size", arg: 1, scope: !550, file: !12, line: 719, type: !553)
!559 = !DILocalVariable(name: "flags", arg: 2, scope: !550, file: !12, line: 719, type: !37)
!560 = !DILocation(line: 719, column: 52, scope: !550)
!561 = !DILocation(line: 719, column: 64, scope: !550)
!562 = !DILocation(line: 721, column: 17, scope: !550)
!563 = !DILocation(line: 721, column: 23, scope: !550)
!564 = !DILocation(line: 721, column: 29, scope: !550)
!565 = !DILocation(line: 721, column: 9, scope: !550)
!566 = !DILocation(line: 721, column: 2, scope: !550)
!567 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !568, file: !568, line: 65, type: !569, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!568 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!569 = !DISubroutineType(types: !570)
!570 = !{!32}
!571 = !DILocation(line: 67, column: 9, scope: !567)
!572 = !DILocation(line: 67, column: 2, scope: !567)
!573 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !568, file: !568, line: 120, type: !574, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !577)
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !32}
!576 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!577 = !{!578}
!578 = !DILocalVariable(name: "flags", arg: 1, scope: !573, file: !568, line: 120, type: !32)
!579 = !DILocation(line: 120, column: 67, scope: !573)
!580 = !DILocation(line: 122, column: 11, scope: !573)
!581 = !DILocation(line: 122, column: 17, scope: !573)
!582 = !DILocation(line: 122, column: 9, scope: !573)
!583 = !DILocation(line: 122, column: 2, scope: !573)
!584 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !551, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !585)
!585 = !{!586, !587, !588}
!586 = !DILocalVariable(name: "size", arg: 1, scope: !584, file: !12, line: 591, type: !553)
!587 = !DILocalVariable(name: "flags", arg: 2, scope: !584, file: !12, line: 591, type: !37)
!588 = !DILocalVariable(name: "index", scope: !589, file: !12, line: 594, type: !7)
!589 = distinct !DILexicalBlock(scope: !590, file: !12, line: 593, column: 42)
!590 = distinct !DILexicalBlock(scope: !584, file: !12, line: 593, column: 6)
!591 = !DILocation(line: 591, column: 61, scope: !584)
!592 = !DILocation(line: 591, column: 73, scope: !584)
!593 = !DILocation(line: 593, column: 27, scope: !590)
!594 = !DILocation(line: 593, column: 6, scope: !590)
!595 = !DILocation(line: 593, column: 33, scope: !590)
!596 = !DILocation(line: 593, column: 36, scope: !590)
!597 = !DILocation(line: 593, column: 6, scope: !584)
!598 = !DILocation(line: 594, column: 3, scope: !589)
!599 = !DILocation(line: 594, column: 16, scope: !589)
!600 = !DILocation(line: 596, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !589, file: !12, line: 596, column: 7)
!602 = !DILocation(line: 596, column: 12, scope: !601)
!603 = !DILocation(line: 596, column: 7, scope: !589)
!604 = !DILocation(line: 597, column: 25, scope: !601)
!605 = !DILocation(line: 597, column: 31, scope: !601)
!606 = !DILocation(line: 597, column: 11, scope: !601)
!607 = !DILocation(line: 597, column: 4, scope: !601)
!608 = !DILocation(line: 599, column: 11, scope: !589)
!609 = !DILocation(line: 599, column: 9, scope: !589)
!610 = !DILocation(line: 601, column: 33, scope: !589)
!611 = !DILocation(line: 601, column: 40, scope: !589)
!612 = !DILocation(line: 601, column: 20, scope: !589)
!613 = !DILocation(line: 601, column: 5, scope: !589)
!614 = !DILocation(line: 601, column: 51, scope: !589)
!615 = !DILocation(line: 602, column: 5, scope: !589)
!616 = !DILocation(line: 602, column: 12, scope: !589)
!617 = !DILocation(line: 600, column: 10, scope: !589)
!618 = !DILocation(line: 600, column: 3, scope: !589)
!619 = !DILocation(line: 603, column: 2, scope: !590)
!620 = !DILocation(line: 604, column: 19, scope: !584)
!621 = !DILocation(line: 604, column: 25, scope: !584)
!622 = !DILocation(line: 604, column: 9, scope: !584)
!623 = !DILocation(line: 604, column: 2, scope: !584)
!624 = !DILocation(line: 605, column: 1, scope: !584)
!625 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !627, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!627 = !DISubroutineType(types: !628)
!628 = !{!7, !553, !629}
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !31, line: 35, baseType: !630)
!630 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!631 = !{!632, !633}
!632 = !DILocalVariable(name: "size", arg: 1, scope: !626, file: !12, line: 444, type: !553)
!633 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !626, file: !12, line: 445, type: !629)
!634 = !DILocation(line: 444, column: 60, scope: !626)
!635 = !DILocation(line: 445, column: 16, scope: !626)
!636 = !DILocation(line: 447, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !626, file: !12, line: 447, column: 6)
!638 = !DILocation(line: 447, column: 6, scope: !626)
!639 = !DILocation(line: 448, column: 3, scope: !637)
!640 = !DILocation(line: 450, column: 6, scope: !641)
!641 = distinct !DILexicalBlock(scope: !626, file: !12, line: 450, column: 6)
!642 = !DILocation(line: 450, column: 11, scope: !641)
!643 = !DILocation(line: 450, column: 6, scope: !626)
!644 = !DILocation(line: 451, column: 3, scope: !641)
!645 = !DILocation(line: 453, column: 32, scope: !646)
!646 = distinct !DILexicalBlock(scope: !626, file: !12, line: 453, column: 6)
!647 = !DILocation(line: 453, column: 37, scope: !646)
!648 = !DILocation(line: 453, column: 42, scope: !646)
!649 = !DILocation(line: 453, column: 45, scope: !646)
!650 = !DILocation(line: 453, column: 50, scope: !646)
!651 = !DILocation(line: 453, column: 6, scope: !626)
!652 = !DILocation(line: 454, column: 3, scope: !646)
!653 = !DILocation(line: 455, column: 32, scope: !654)
!654 = distinct !DILexicalBlock(scope: !626, file: !12, line: 455, column: 6)
!655 = !DILocation(line: 455, column: 37, scope: !654)
!656 = !DILocation(line: 455, column: 43, scope: !654)
!657 = !DILocation(line: 455, column: 46, scope: !654)
!658 = !DILocation(line: 455, column: 51, scope: !654)
!659 = !DILocation(line: 455, column: 6, scope: !626)
!660 = !DILocation(line: 456, column: 3, scope: !654)
!661 = !DILocation(line: 457, column: 6, scope: !662)
!662 = distinct !DILexicalBlock(scope: !626, file: !12, line: 457, column: 6)
!663 = !DILocation(line: 457, column: 11, scope: !662)
!664 = !DILocation(line: 457, column: 6, scope: !626)
!665 = !DILocation(line: 457, column: 26, scope: !662)
!666 = !DILocation(line: 458, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !626, file: !12, line: 458, column: 6)
!668 = !DILocation(line: 458, column: 11, scope: !667)
!669 = !DILocation(line: 458, column: 6, scope: !626)
!670 = !DILocation(line: 458, column: 26, scope: !667)
!671 = !DILocation(line: 459, column: 6, scope: !672)
!672 = distinct !DILexicalBlock(scope: !626, file: !12, line: 459, column: 6)
!673 = !DILocation(line: 459, column: 11, scope: !672)
!674 = !DILocation(line: 459, column: 6, scope: !626)
!675 = !DILocation(line: 459, column: 26, scope: !672)
!676 = !DILocation(line: 460, column: 6, scope: !677)
!677 = distinct !DILexicalBlock(scope: !626, file: !12, line: 460, column: 6)
!678 = !DILocation(line: 460, column: 11, scope: !677)
!679 = !DILocation(line: 460, column: 6, scope: !626)
!680 = !DILocation(line: 460, column: 26, scope: !677)
!681 = !DILocation(line: 461, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !626, file: !12, line: 461, column: 6)
!683 = !DILocation(line: 461, column: 11, scope: !682)
!684 = !DILocation(line: 461, column: 6, scope: !626)
!685 = !DILocation(line: 461, column: 26, scope: !682)
!686 = !DILocation(line: 462, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !626, file: !12, line: 462, column: 6)
!688 = !DILocation(line: 462, column: 11, scope: !687)
!689 = !DILocation(line: 462, column: 6, scope: !626)
!690 = !DILocation(line: 462, column: 26, scope: !687)
!691 = !DILocation(line: 463, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !626, file: !12, line: 463, column: 6)
!693 = !DILocation(line: 463, column: 11, scope: !692)
!694 = !DILocation(line: 463, column: 6, scope: !626)
!695 = !DILocation(line: 463, column: 26, scope: !692)
!696 = !DILocation(line: 464, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !626, file: !12, line: 464, column: 6)
!698 = !DILocation(line: 464, column: 11, scope: !697)
!699 = !DILocation(line: 464, column: 6, scope: !626)
!700 = !DILocation(line: 464, column: 26, scope: !697)
!701 = !DILocation(line: 465, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !626, file: !12, line: 465, column: 6)
!703 = !DILocation(line: 465, column: 11, scope: !702)
!704 = !DILocation(line: 465, column: 6, scope: !626)
!705 = !DILocation(line: 465, column: 26, scope: !702)
!706 = !DILocation(line: 466, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !626, file: !12, line: 466, column: 6)
!708 = !DILocation(line: 466, column: 11, scope: !707)
!709 = !DILocation(line: 466, column: 6, scope: !626)
!710 = !DILocation(line: 466, column: 26, scope: !707)
!711 = !DILocation(line: 467, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !626, file: !12, line: 467, column: 6)
!713 = !DILocation(line: 467, column: 11, scope: !712)
!714 = !DILocation(line: 467, column: 6, scope: !626)
!715 = !DILocation(line: 467, column: 26, scope: !712)
!716 = !DILocation(line: 468, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !626, file: !12, line: 468, column: 6)
!718 = !DILocation(line: 468, column: 11, scope: !717)
!719 = !DILocation(line: 468, column: 6, scope: !626)
!720 = !DILocation(line: 468, column: 26, scope: !717)
!721 = !DILocation(line: 469, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !626, file: !12, line: 469, column: 6)
!723 = !DILocation(line: 469, column: 11, scope: !722)
!724 = !DILocation(line: 469, column: 6, scope: !626)
!725 = !DILocation(line: 469, column: 26, scope: !722)
!726 = !DILocation(line: 470, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !626, file: !12, line: 470, column: 6)
!728 = !DILocation(line: 470, column: 11, scope: !727)
!729 = !DILocation(line: 470, column: 6, scope: !626)
!730 = !DILocation(line: 470, column: 26, scope: !727)
!731 = !DILocation(line: 471, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !626, file: !12, line: 471, column: 6)
!733 = !DILocation(line: 471, column: 11, scope: !732)
!734 = !DILocation(line: 471, column: 6, scope: !626)
!735 = !DILocation(line: 471, column: 26, scope: !732)
!736 = !DILocation(line: 472, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !626, file: !12, line: 472, column: 6)
!738 = !DILocation(line: 472, column: 11, scope: !737)
!739 = !DILocation(line: 472, column: 6, scope: !626)
!740 = !DILocation(line: 472, column: 26, scope: !737)
!741 = !DILocation(line: 473, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !626, file: !12, line: 473, column: 6)
!743 = !DILocation(line: 473, column: 11, scope: !742)
!744 = !DILocation(line: 473, column: 6, scope: !626)
!745 = !DILocation(line: 473, column: 26, scope: !742)
!746 = !DILocation(line: 474, column: 6, scope: !747)
!747 = distinct !DILexicalBlock(scope: !626, file: !12, line: 474, column: 6)
!748 = !DILocation(line: 474, column: 11, scope: !747)
!749 = !DILocation(line: 474, column: 6, scope: !626)
!750 = !DILocation(line: 474, column: 27, scope: !747)
!751 = !DILocation(line: 475, column: 6, scope: !752)
!752 = distinct !DILexicalBlock(scope: !626, file: !12, line: 475, column: 6)
!753 = !DILocation(line: 475, column: 11, scope: !752)
!754 = !DILocation(line: 475, column: 6, scope: !626)
!755 = !DILocation(line: 475, column: 32, scope: !752)
!756 = !DILocation(line: 477, column: 50, scope: !757)
!757 = distinct !DILexicalBlock(scope: !626, file: !12, line: 477, column: 6)
!758 = !{i8 0, i8 2}
!759 = !{}
!760 = !DILocation(line: 477, column: 6, scope: !626)
!761 = !DILocation(line: 478, column: 3, scope: !757)
!762 = !DILocation(line: 478, column: 3, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !12, line: 478, column: 3)
!764 = distinct !DILexicalBlock(scope: !757, file: !12, line: 478, column: 3)
!765 = !{i32 -2143034944}
!766 = !DILocation(line: 478, column: 3, scope: !764)
!767 = !DILocation(line: 480, column: 3, scope: !757)
!768 = !DILocation(line: 480, column: 3, scope: !769)
!769 = distinct !DILexicalBlock(scope: !757, file: !12, line: 480, column: 3)
!770 = !DILocation(line: 480, column: 3, scope: !771)
!771 = distinct !DILexicalBlock(scope: !769, file: !12, line: 480, column: 3)
!772 = !DILocation(line: 480, column: 3, scope: !773)
!773 = distinct !DILexicalBlock(scope: !769, file: !12, line: 480, column: 3)
!774 = !{i64 2151932555, i64 2151932584, i64 2151932630, i64 2151932688, i64 2151932742, i64 2151932796, i64 2151932851, i64 2151932882}
!775 = !DILocation(line: 483, column: 2, scope: !626)
!776 = !DILocation(line: 484, column: 1, scope: !626)
!777 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!778 = !DISubroutineType(types: !779)
!779 = !{!28, !98, !37, !553}
!780 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !781, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!11, !37, !32}
!783 = !{!784, !785}
!784 = !DILocalVariable(name: "flags", arg: 1, scope: !780, file: !12, line: 401, type: !37)
!785 = !DILocalVariable(name: "caller", arg: 2, scope: !780, file: !12, line: 401, type: !32)
!786 = !DILocation(line: 401, column: 67, scope: !780)
!787 = !DILocation(line: 401, column: 88, scope: !780)
!788 = !DILocation(line: 407, column: 6, scope: !789)
!789 = distinct !DILexicalBlock(scope: !780, file: !12, line: 407, column: 6)
!790 = !DILocation(line: 407, column: 6, scope: !780)
!791 = !DILocation(line: 413, column: 3, scope: !789)
!792 = !DILocation(line: 423, column: 38, scope: !793)
!793 = distinct !DILexicalBlock(scope: !780, file: !12, line: 423, column: 6)
!794 = !DILocation(line: 423, column: 44, scope: !793)
!795 = !DILocation(line: 423, column: 6, scope: !780)
!796 = !DILocation(line: 424, column: 3, scope: !793)
!797 = !DILocation(line: 426, column: 3, scope: !798)
!798 = distinct !DILexicalBlock(scope: !780, file: !12, line: 425, column: 6)
!799 = !DILocation(line: 429, column: 1, scope: !780)
!800 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!801 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !79, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!802 = distinct !DISubprogram(name: "native_save_fl", scope: !568, file: !568, line: 17, type: !569, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!803 = !{!804}
!804 = !DILocalVariable(name: "flags", scope: !802, file: !568, line: 19, type: !32)
!805 = !DILocation(line: 19, column: 2, scope: !802)
!806 = !DILocation(line: 19, column: 16, scope: !802)
!807 = !DILocation(line: 26, column: 2, scope: !802)
!808 = !{i64 1522474, i64 1522495}
!809 = !DILocation(line: 32, column: 9, scope: !802)
!810 = !DILocation(line: 33, column: 1, scope: !802)
!811 = !DILocation(line: 32, column: 2, scope: !802)
