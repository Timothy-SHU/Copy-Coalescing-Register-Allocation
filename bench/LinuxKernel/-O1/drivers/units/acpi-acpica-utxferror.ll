; ModuleID = 'drivers/acpi/acpica/utxferror.c'
source_filename = "drivers/acpi/acpica/utxferror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_error: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_error ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_exception: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_exception ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_warning: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_warning ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_info: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_info ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_bios_error: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_bios_error ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_bios_exception: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_bios_exception ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_bios_warning: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_bios_warning ; .previous"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"\013ACPI Error: \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c" (%8.8X/%s-%u)\0A\00", align 1, !dbg !7
@__UNIQUE_ID___addressable_acpi_error174 = internal global ptr @acpi_error, section ".discard.addressable", align 8, !dbg !12
@.str.2 = private unnamed_addr constant [19 x i8] c"\013ACPI Error: %s, \00", align 1, !dbg !18
@__UNIQUE_ID___addressable_acpi_exception175 = internal global ptr @acpi_exception, section ".discard.addressable", align 8, !dbg !23
@.str.3 = private unnamed_addr constant [17 x i8] c"\014ACPI Warning: \00", align 1, !dbg !25
@__UNIQUE_ID___addressable_acpi_warning176 = internal global ptr @acpi_warning, section ".discard.addressable", align 8, !dbg !30
@.str.4 = private unnamed_addr constant [9 x i8] c"\016ACPI: \00", align 1, !dbg !32
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !37
@__UNIQUE_ID___addressable_acpi_info177 = internal global ptr @acpi_info, section ".discard.addressable", align 8, !dbg !42
@.str.6 = private unnamed_addr constant [26 x i8] c"\013ACPI BIOS Error (bug): \00", align 1, !dbg !44
@__UNIQUE_ID___addressable_acpi_bios_error178 = internal global ptr @acpi_bios_error, section ".discard.addressable", align 8, !dbg !49
@.str.7 = private unnamed_addr constant [30 x i8] c"\013ACPI BIOS Error (bug): %s, \00", align 1, !dbg !51
@__UNIQUE_ID___addressable_acpi_bios_exception179 = internal global ptr @acpi_bios_exception, section ".discard.addressable", align 8, !dbg !56
@.str.8 = private unnamed_addr constant [28 x i8] c"\014ACPI BIOS Warning (bug): \00", align 1, !dbg !58
@__UNIQUE_ID___addressable_acpi_bios_warning180 = internal global ptr @acpi_bios_warning, section ".discard.addressable", align 8, !dbg !63
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_error174, ptr @__UNIQUE_ID___addressable_acpi_exception175, ptr @__UNIQUE_ID___addressable_acpi_warning176, ptr @__UNIQUE_ID___addressable_acpi_info177, ptr @__UNIQUE_ID___addressable_acpi_bios_error178, ptr @__UNIQUE_ID___addressable_acpi_bios_exception179, ptr @__UNIQUE_ID___addressable_acpi_bios_warning180], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_error(ptr noundef %module_name, i32 noundef %line_number, ptr noundef %format, ...) #0 align 16 !dbg !74 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !85, metadata !DIExpression()), !dbg !101
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !86, metadata !DIExpression()), !dbg !102
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !87, metadata !DIExpression()), !dbg !103
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #5, !dbg !104
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !88, metadata !DIExpression()), !dbg !105
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str) #6, !dbg !106
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !107
  call void @llvm.va_start(ptr %arraydecay), !dbg !107
  %0 = load ptr, ptr %format.addr, align 8, !dbg !108
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !109
  call void @acpi_os_vprintf(ptr noundef %0, ptr noundef %arraydecay1) #6, !dbg !110
  %1 = load ptr, ptr %module_name.addr, align 8, !dbg !111
  %2 = load i32, ptr %line_number.addr, align 4, !dbg !111
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %1, i32 noundef %2) #6, !dbg !111
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !112
  call void @llvm.va_end(ptr %arraydecay2), !dbg !112
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #5, !dbg !113
  ret void, !dbg !113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !114 dso_local void @acpi_os_printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !118 dso_local void @acpi_os_vprintf(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_exception(ptr noundef %module_name, i32 noundef %line_number, i32 noundef %status, ptr noundef %format, ...) #0 align 16 !dbg !122 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !128, metadata !DIExpression()), !dbg !133
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !129, metadata !DIExpression()), !dbg !134
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !130, metadata !DIExpression()), !dbg !135
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !131, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #5, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !132, metadata !DIExpression()), !dbg !138
  %0 = load i32, ptr %status.addr, align 4, !dbg !139
  %tobool = icmp ne i32 %0, 0, !dbg !139
  br i1 %tobool, label %if.else, label %if.then, !dbg !141

if.then:                                          ; preds = %entry
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str) #6, !dbg !142
  br label %if.end, !dbg !144

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %status.addr, align 4, !dbg !145
  %call = call ptr @acpi_format_exception(i32 noundef %1) #6, !dbg !147
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.2, ptr noundef %call) #6, !dbg !148
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !149
  call void @llvm.va_start(ptr %arraydecay), !dbg !149
  %2 = load ptr, ptr %format.addr, align 8, !dbg !150
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !151
  call void @acpi_os_vprintf(ptr noundef %2, ptr noundef %arraydecay1) #6, !dbg !152
  %3 = load ptr, ptr %module_name.addr, align 8, !dbg !153
  %4 = load i32, ptr %line_number.addr, align 4, !dbg !153
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %3, i32 noundef %4) #6, !dbg !153
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !154
  call void @llvm.va_end(ptr %arraydecay2), !dbg !154
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #5, !dbg !155
  ret void, !dbg !155
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !156 dso_local ptr @acpi_format_exception(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_warning(ptr noundef %module_name, i32 noundef %line_number, ptr noundef %format, ...) #0 align 16 !dbg !160 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !162, metadata !DIExpression()), !dbg !166
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !163, metadata !DIExpression()), !dbg !167
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !164, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #5, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !165, metadata !DIExpression()), !dbg !170
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.3) #6, !dbg !171
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !172
  call void @llvm.va_start(ptr %arraydecay), !dbg !172
  %0 = load ptr, ptr %format.addr, align 8, !dbg !173
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !174
  call void @acpi_os_vprintf(ptr noundef %0, ptr noundef %arraydecay1) #6, !dbg !175
  %1 = load ptr, ptr %module_name.addr, align 8, !dbg !176
  %2 = load i32, ptr %line_number.addr, align 4, !dbg !176
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %1, i32 noundef %2) #6, !dbg !176
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !177
  call void @llvm.va_end(ptr %arraydecay2), !dbg !177
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #5, !dbg !178
  ret void, !dbg !178
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_info(ptr noundef %format, ...) #0 align 16 !dbg !179 {
entry:
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !181, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #5, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !182, metadata !DIExpression()), !dbg !185
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.4) #6, !dbg !186
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !187
  call void @llvm.va_start(ptr %arraydecay), !dbg !187
  %0 = load ptr, ptr %format.addr, align 8, !dbg !188
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !189
  call void @acpi_os_vprintf(ptr noundef %0, ptr noundef %arraydecay1) #6, !dbg !190
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.5) #6, !dbg !191
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !192
  call void @llvm.va_end(ptr %arraydecay2), !dbg !192
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #5, !dbg !193
  ret void, !dbg !193
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_bios_error(ptr noundef %module_name, i32 noundef %line_number, ptr noundef %format, ...) #0 align 16 !dbg !194 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !196, metadata !DIExpression()), !dbg !200
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !197, metadata !DIExpression()), !dbg !201
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !198, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #5, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !199, metadata !DIExpression()), !dbg !204
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.6) #6, !dbg !205
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !206
  call void @llvm.va_start(ptr %arraydecay), !dbg !206
  %0 = load ptr, ptr %format.addr, align 8, !dbg !207
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !208
  call void @acpi_os_vprintf(ptr noundef %0, ptr noundef %arraydecay1) #6, !dbg !209
  %1 = load ptr, ptr %module_name.addr, align 8, !dbg !210
  %2 = load i32, ptr %line_number.addr, align 4, !dbg !210
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %1, i32 noundef %2) #6, !dbg !210
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !211
  call void @llvm.va_end(ptr %arraydecay2), !dbg !211
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #5, !dbg !212
  ret void, !dbg !212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_bios_exception(ptr noundef %module_name, i32 noundef %line_number, i32 noundef %status, ptr noundef %format, ...) #0 align 16 !dbg !213 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %status.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !215, metadata !DIExpression()), !dbg !220
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !216, metadata !DIExpression()), !dbg !221
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !217, metadata !DIExpression()), !dbg !222
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !218, metadata !DIExpression()), !dbg !223
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #5, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !219, metadata !DIExpression()), !dbg !225
  %0 = load i32, ptr %status.addr, align 4, !dbg !226
  %tobool = icmp ne i32 %0, 0, !dbg !226
  br i1 %tobool, label %if.else, label %if.then, !dbg !228

if.then:                                          ; preds = %entry
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.6) #6, !dbg !229
  br label %if.end, !dbg !231

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %status.addr, align 4, !dbg !232
  %call = call ptr @acpi_format_exception(i32 noundef %1) #6, !dbg !234
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.7, ptr noundef %call) #6, !dbg !235
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !236
  call void @llvm.va_start(ptr %arraydecay), !dbg !236
  %2 = load ptr, ptr %format.addr, align 8, !dbg !237
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !238
  call void @acpi_os_vprintf(ptr noundef %2, ptr noundef %arraydecay1) #6, !dbg !239
  %3 = load ptr, ptr %module_name.addr, align 8, !dbg !240
  %4 = load i32, ptr %line_number.addr, align 4, !dbg !240
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %3, i32 noundef %4) #6, !dbg !240
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !241
  call void @llvm.va_end(ptr %arraydecay2), !dbg !241
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #5, !dbg !242
  ret void, !dbg !242
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_bios_warning(ptr noundef %module_name, i32 noundef %line_number, ptr noundef %format, ...) #0 align 16 !dbg !243 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !245, metadata !DIExpression()), !dbg !249
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !246, metadata !DIExpression()), !dbg !250
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !247, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #5, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !248, metadata !DIExpression()), !dbg !253
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.8) #6, !dbg !254
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !255
  call void @llvm.va_start(ptr %arraydecay), !dbg !255
  %0 = load ptr, ptr %format.addr, align 8, !dbg !256
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !257
  call void @acpi_os_vprintf(ptr noundef %0, ptr noundef %arraydecay1) #6, !dbg !258
  %1 = load ptr, ptr %module_name.addr, align 8, !dbg !259
  %2 = load i32, ptr %line_number.addr, align 4, !dbg !259
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %1, i32 noundef %2) #6, !dbg !259
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !260
  call void @llvm.va_end(ptr %arraydecay2), !dbg !260
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #5, !dbg !261
  ret void, !dbg !261
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/utxferror.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c06e320404e64601612d6d4923638e87")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 15)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_error174", scope: !14, file: !2, line: 50, type: !16, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utxferror.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utxferror\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utxferror.ll drivers/acpi/acpica/utxferror.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, globals: !17, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !{!0, !7, !12, !18, !23, !25, !30, !32, !37, !42, !44, !49, !51, !56, !58, !63}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 19)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_exception175", scope: !14, file: !2, line: 93, type: !16, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 17)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_warning176", scope: !14, file: !2, line: 124, type: !16, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 9)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 2)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_info177", scope: !14, file: !2, line: 153, type: !16, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 26)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_bios_error178", scope: !14, file: !2, line: 186, type: !16, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 30)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_bios_exception179", scope: !14, file: !2, line: 230, type: !16, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 28)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_bios_warning180", scope: !14, file: !2, line: 263, type: !16, isLocal: true, isDefinition: true)
!65 = !{i32 7, !"Dwarf Version", i32 5}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 8, !"cf-protection-branch", i32 1}
!69 = !{i32 4, !"function_return_thunk_extern", i32 1}
!70 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!71 = !{i32 1, !"Code Model", i32 2}
!72 = !{i32 1, !"override-stack-alignment", i32 8}
!73 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!74 = distinct !DISubprogram(name: "acpi_error", scope: !2, file: !2, line: 35, type: !75, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !84)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !79, !77, null}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !82, line: 27, baseType: !83)
!82 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!83 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!84 = !{!85, !86, !87, !88}
!85 = !DILocalVariable(name: "module_name", arg: 1, scope: !74, file: !2, line: 35, type: !77)
!86 = !DILocalVariable(name: "line_number", arg: 2, scope: !74, file: !2, line: 35, type: !79)
!87 = !DILocalVariable(name: "format", arg: 3, scope: !74, file: !2, line: 35, type: !77)
!88 = !DILocalVariable(name: "arg_list", scope: !74, file: !2, line: 37, type: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !90, line: 5, baseType: !91)
!90 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, elements: !99)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !94)
!94 = !{!95, !96, !97, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !93, file: !2, line: 37, baseType: !83, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !93, file: !2, line: 37, baseType: !83, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !93, file: !2, line: 37, baseType: !16, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !93, file: !2, line: 37, baseType: !16, size: 64, offset: 128)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DILocation(line: 35, column: 24, scope: !74)
!102 = !DILocation(line: 35, column: 41, scope: !74)
!103 = !DILocation(line: 35, column: 66, scope: !74)
!104 = !DILocation(line: 37, column: 2, scope: !74)
!105 = !DILocation(line: 37, column: 10, scope: !74)
!106 = !DILocation(line: 40, column: 2, scope: !74)
!107 = !DILocation(line: 42, column: 2, scope: !74)
!108 = !DILocation(line: 43, column: 18, scope: !74)
!109 = !DILocation(line: 43, column: 26, scope: !74)
!110 = !DILocation(line: 43, column: 2, scope: !74)
!111 = !DILocation(line: 44, column: 2, scope: !74)
!112 = !DILocation(line: 45, column: 2, scope: !74)
!113 = !DILocation(line: 48, column: 1, scope: !74)
!114 = !DISubprogram(name: "acpi_os_printf", scope: !115, file: !115, line: 334, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!116 = !DISubroutineType(types: !117)
!117 = !{null, !77, null}
!118 = !DISubprogram(name: "acpi_os_vprintf", scope: !115, file: !115, line: 338, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !77, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!122 = distinct !DISubprogram(name: "acpi_exception", scope: !2, file: !2, line: 68, type: !123, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !127)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !77, !79, !125, !77, null}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !126, line: 421, baseType: !79)
!126 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!127 = !{!128, !129, !130, !131, !132}
!128 = !DILocalVariable(name: "module_name", arg: 1, scope: !122, file: !2, line: 68, type: !77)
!129 = !DILocalVariable(name: "line_number", arg: 2, scope: !122, file: !2, line: 69, type: !79)
!130 = !DILocalVariable(name: "status", arg: 3, scope: !122, file: !2, line: 69, type: !125)
!131 = !DILocalVariable(name: "format", arg: 4, scope: !122, file: !2, line: 69, type: !77)
!132 = !DILocalVariable(name: "arg_list", scope: !122, file: !2, line: 71, type: !89)
!133 = !DILocation(line: 68, column: 28, scope: !122)
!134 = !DILocation(line: 69, column: 13, scope: !122)
!135 = !DILocation(line: 69, column: 38, scope: !122)
!136 = !DILocation(line: 69, column: 58, scope: !122)
!137 = !DILocation(line: 71, column: 2, scope: !122)
!138 = !DILocation(line: 71, column: 10, scope: !122)
!139 = !DILocation(line: 77, column: 6, scope: !140)
!140 = distinct !DILexicalBlock(scope: !122, file: !2, line: 77, column: 6)
!141 = !DILocation(line: 77, column: 6, scope: !122)
!142 = !DILocation(line: 78, column: 3, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !2, line: 77, column: 28)
!144 = !DILocation(line: 80, column: 2, scope: !143)
!145 = !DILocation(line: 82, column: 33, scope: !146)
!146 = distinct !DILexicalBlock(scope: !140, file: !2, line: 80, column: 9)
!147 = !DILocation(line: 82, column: 11, scope: !146)
!148 = !DILocation(line: 81, column: 3, scope: !146)
!149 = !DILocation(line: 85, column: 2, scope: !122)
!150 = !DILocation(line: 86, column: 18, scope: !122)
!151 = !DILocation(line: 86, column: 26, scope: !122)
!152 = !DILocation(line: 86, column: 2, scope: !122)
!153 = !DILocation(line: 87, column: 2, scope: !122)
!154 = !DILocation(line: 88, column: 2, scope: !122)
!155 = !DILocation(line: 91, column: 1, scope: !122)
!156 = !DISubprogram(name: "acpi_format_exception", scope: !157, file: !157, line: 430, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!158 = !DISubroutineType(types: !159)
!159 = !{!77, !125}
!160 = distinct !DISubprogram(name: "acpi_warning", scope: !2, file: !2, line: 109, type: !75, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !161)
!161 = !{!162, !163, !164, !165}
!162 = !DILocalVariable(name: "module_name", arg: 1, scope: !160, file: !2, line: 109, type: !77)
!163 = !DILocalVariable(name: "line_number", arg: 2, scope: !160, file: !2, line: 109, type: !79)
!164 = !DILocalVariable(name: "format", arg: 3, scope: !160, file: !2, line: 109, type: !77)
!165 = !DILocalVariable(name: "arg_list", scope: !160, file: !2, line: 111, type: !89)
!166 = !DILocation(line: 109, column: 26, scope: !160)
!167 = !DILocation(line: 109, column: 43, scope: !160)
!168 = !DILocation(line: 109, column: 68, scope: !160)
!169 = !DILocation(line: 111, column: 2, scope: !160)
!170 = !DILocation(line: 111, column: 10, scope: !160)
!171 = !DILocation(line: 114, column: 2, scope: !160)
!172 = !DILocation(line: 116, column: 2, scope: !160)
!173 = !DILocation(line: 117, column: 18, scope: !160)
!174 = !DILocation(line: 117, column: 26, scope: !160)
!175 = !DILocation(line: 117, column: 2, scope: !160)
!176 = !DILocation(line: 118, column: 2, scope: !160)
!177 = !DILocation(line: 119, column: 2, scope: !160)
!178 = !DILocation(line: 122, column: 1, scope: !160)
!179 = distinct !DISubprogram(name: "acpi_info", scope: !2, file: !2, line: 138, type: !116, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !180)
!180 = !{!181, !182}
!181 = !DILocalVariable(name: "format", arg: 1, scope: !179, file: !2, line: 138, type: !77)
!182 = !DILocalVariable(name: "arg_list", scope: !179, file: !2, line: 140, type: !89)
!183 = !DILocation(line: 138, column: 52, scope: !179)
!184 = !DILocation(line: 140, column: 2, scope: !179)
!185 = !DILocation(line: 140, column: 10, scope: !179)
!186 = !DILocation(line: 143, column: 2, scope: !179)
!187 = !DILocation(line: 145, column: 2, scope: !179)
!188 = !DILocation(line: 146, column: 18, scope: !179)
!189 = !DILocation(line: 146, column: 26, scope: !179)
!190 = !DILocation(line: 146, column: 2, scope: !179)
!191 = !DILocation(line: 147, column: 2, scope: !179)
!192 = !DILocation(line: 148, column: 2, scope: !179)
!193 = !DILocation(line: 151, column: 1, scope: !179)
!194 = distinct !DISubprogram(name: "acpi_bios_error", scope: !2, file: !2, line: 170, type: !75, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !195)
!195 = !{!196, !197, !198, !199}
!196 = !DILocalVariable(name: "module_name", arg: 1, scope: !194, file: !2, line: 170, type: !77)
!197 = !DILocalVariable(name: "line_number", arg: 2, scope: !194, file: !2, line: 171, type: !79)
!198 = !DILocalVariable(name: "format", arg: 3, scope: !194, file: !2, line: 171, type: !77)
!199 = !DILocalVariable(name: "arg_list", scope: !194, file: !2, line: 173, type: !89)
!200 = !DILocation(line: 170, column: 29, scope: !194)
!201 = !DILocation(line: 171, column: 7, scope: !194)
!202 = !DILocation(line: 171, column: 32, scope: !194)
!203 = !DILocation(line: 173, column: 2, scope: !194)
!204 = !DILocation(line: 173, column: 10, scope: !194)
!205 = !DILocation(line: 176, column: 2, scope: !194)
!206 = !DILocation(line: 178, column: 2, scope: !194)
!207 = !DILocation(line: 179, column: 18, scope: !194)
!208 = !DILocation(line: 179, column: 26, scope: !194)
!209 = !DILocation(line: 179, column: 2, scope: !194)
!210 = !DILocation(line: 180, column: 2, scope: !194)
!211 = !DILocation(line: 181, column: 2, scope: !194)
!212 = !DILocation(line: 184, column: 1, scope: !194)
!213 = distinct !DISubprogram(name: "acpi_bios_exception", scope: !2, file: !2, line: 204, type: !123, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !214)
!214 = !{!215, !216, !217, !218, !219}
!215 = !DILocalVariable(name: "module_name", arg: 1, scope: !213, file: !2, line: 204, type: !77)
!216 = !DILocalVariable(name: "line_number", arg: 2, scope: !213, file: !2, line: 205, type: !79)
!217 = !DILocalVariable(name: "status", arg: 3, scope: !213, file: !2, line: 206, type: !125)
!218 = !DILocalVariable(name: "format", arg: 4, scope: !213, file: !2, line: 206, type: !77)
!219 = !DILocalVariable(name: "arg_list", scope: !213, file: !2, line: 208, type: !89)
!220 = !DILocation(line: 204, column: 33, scope: !213)
!221 = !DILocation(line: 205, column: 11, scope: !213)
!222 = !DILocation(line: 206, column: 19, scope: !213)
!223 = !DILocation(line: 206, column: 39, scope: !213)
!224 = !DILocation(line: 208, column: 2, scope: !213)
!225 = !DILocation(line: 208, column: 10, scope: !213)
!226 = !DILocation(line: 214, column: 6, scope: !227)
!227 = distinct !DILexicalBlock(scope: !213, file: !2, line: 214, column: 6)
!228 = !DILocation(line: 214, column: 6, scope: !213)
!229 = !DILocation(line: 215, column: 3, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !2, line: 214, column: 28)
!231 = !DILocation(line: 217, column: 2, scope: !230)
!232 = !DILocation(line: 219, column: 33, scope: !233)
!233 = distinct !DILexicalBlock(scope: !227, file: !2, line: 217, column: 9)
!234 = !DILocation(line: 219, column: 11, scope: !233)
!235 = !DILocation(line: 218, column: 3, scope: !233)
!236 = !DILocation(line: 222, column: 2, scope: !213)
!237 = !DILocation(line: 223, column: 18, scope: !213)
!238 = !DILocation(line: 223, column: 26, scope: !213)
!239 = !DILocation(line: 223, column: 2, scope: !213)
!240 = !DILocation(line: 224, column: 2, scope: !213)
!241 = !DILocation(line: 225, column: 2, scope: !213)
!242 = !DILocation(line: 228, column: 1, scope: !213)
!243 = distinct !DISubprogram(name: "acpi_bios_warning", scope: !2, file: !2, line: 247, type: !75, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !244)
!244 = !{!245, !246, !247, !248}
!245 = !DILocalVariable(name: "module_name", arg: 1, scope: !243, file: !2, line: 247, type: !77)
!246 = !DILocalVariable(name: "line_number", arg: 2, scope: !243, file: !2, line: 248, type: !79)
!247 = !DILocalVariable(name: "format", arg: 3, scope: !243, file: !2, line: 248, type: !77)
!248 = !DILocalVariable(name: "arg_list", scope: !243, file: !2, line: 250, type: !89)
!249 = !DILocation(line: 247, column: 31, scope: !243)
!250 = !DILocation(line: 248, column: 9, scope: !243)
!251 = !DILocation(line: 248, column: 34, scope: !243)
!252 = !DILocation(line: 250, column: 2, scope: !243)
!253 = !DILocation(line: 250, column: 10, scope: !243)
!254 = !DILocation(line: 253, column: 2, scope: !243)
!255 = !DILocation(line: 255, column: 2, scope: !243)
!256 = !DILocation(line: 256, column: 18, scope: !243)
!257 = !DILocation(line: 256, column: 26, scope: !243)
!258 = !DILocation(line: 256, column: 2, scope: !243)
!259 = !DILocation(line: 257, column: 2, scope: !243)
!260 = !DILocation(line: 258, column: 2, scope: !243)
!261 = !DILocation(line: 261, column: 1, scope: !243)
