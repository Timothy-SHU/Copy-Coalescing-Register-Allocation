; ModuleID = 'drivers/acpi/acpica/utexcep.c'
source_filename = "drivers/acpi/acpica/utexcep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_format_exception: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_format_exception ; .previous"

%struct.acpi_exception_info = type { ptr }

@_acpi_module_name = internal constant [8 x i8] c"utexcep\00", align 1, !dbg !0
@.str = private unnamed_addr constant [32 x i8] c"Unknown exception code: 0x%8.8X\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [20 x i8] c"UNKNOWN_STATUS_CODE\00", align 1, !dbg !13
@__UNIQUE_ID___addressable_acpi_format_exception174 = internal global ptr @acpi_format_exception, section ".discard.addressable", align 8, !dbg !18
@acpi_gbl_exception_names_env = internal constant [36 x %struct.acpi_exception_info] [%struct.acpi_exception_info { ptr @.str.2 }, %struct.acpi_exception_info { ptr @.str.3 }, %struct.acpi_exception_info { ptr @.str.4 }, %struct.acpi_exception_info { ptr @.str.5 }, %struct.acpi_exception_info { ptr @.str.6 }, %struct.acpi_exception_info { ptr @.str.7 }, %struct.acpi_exception_info { ptr @.str.8 }, %struct.acpi_exception_info { ptr @.str.9 }, %struct.acpi_exception_info { ptr @.str.10 }, %struct.acpi_exception_info { ptr @.str.11 }, %struct.acpi_exception_info { ptr @.str.12 }, %struct.acpi_exception_info { ptr @.str.13 }, %struct.acpi_exception_info { ptr @.str.14 }, %struct.acpi_exception_info { ptr @.str.15 }, %struct.acpi_exception_info { ptr @.str.16 }, %struct.acpi_exception_info { ptr @.str.17 }, %struct.acpi_exception_info { ptr @.str.18 }, %struct.acpi_exception_info { ptr @.str.19 }, %struct.acpi_exception_info { ptr @.str.20 }, %struct.acpi_exception_info { ptr @.str.21 }, %struct.acpi_exception_info { ptr @.str.22 }, %struct.acpi_exception_info { ptr @.str.23 }, %struct.acpi_exception_info { ptr @.str.24 }, %struct.acpi_exception_info { ptr @.str.25 }, %struct.acpi_exception_info { ptr @.str.26 }, %struct.acpi_exception_info { ptr @.str.27 }, %struct.acpi_exception_info { ptr @.str.28 }, %struct.acpi_exception_info { ptr @.str.29 }, %struct.acpi_exception_info { ptr @.str.30 }, %struct.acpi_exception_info { ptr @.str.31 }, %struct.acpi_exception_info { ptr @.str.32 }, %struct.acpi_exception_info { ptr @.str.33 }, %struct.acpi_exception_info { ptr @.str.34 }, %struct.acpi_exception_info { ptr @.str.35 }, %struct.acpi_exception_info { ptr @.str.36 }, %struct.acpi_exception_info { ptr @.str.37 }], align 16, !dbg !132
@acpi_gbl_exception_names_pgm = internal constant [10 x %struct.acpi_exception_info] [%struct.acpi_exception_info zeroinitializer, %struct.acpi_exception_info { ptr @.str.38 }, %struct.acpi_exception_info { ptr @.str.39 }, %struct.acpi_exception_info { ptr @.str.40 }, %struct.acpi_exception_info { ptr @.str.41 }, %struct.acpi_exception_info { ptr @.str.42 }, %struct.acpi_exception_info { ptr @.str.43 }, %struct.acpi_exception_info { ptr @.str.44 }, %struct.acpi_exception_info { ptr @.str.45 }, %struct.acpi_exception_info { ptr @.str.46 }], align 16, !dbg !169
@acpi_gbl_exception_names_tbl = internal constant [6 x %struct.acpi_exception_info] [%struct.acpi_exception_info zeroinitializer, %struct.acpi_exception_info { ptr @.str.47 }, %struct.acpi_exception_info { ptr @.str.48 }, %struct.acpi_exception_info { ptr @.str.49 }, %struct.acpi_exception_info { ptr @.str.50 }, %struct.acpi_exception_info { ptr @.str.51 }], align 16, !dbg !182
@acpi_gbl_exception_names_aml = internal constant [38 x %struct.acpi_exception_info] [%struct.acpi_exception_info zeroinitializer, %struct.acpi_exception_info { ptr @.str.52 }, %struct.acpi_exception_info { ptr @.str.53 }, %struct.acpi_exception_info { ptr @.str.54 }, %struct.acpi_exception_info { ptr @.str.55 }, %struct.acpi_exception_info { ptr @.str.56 }, %struct.acpi_exception_info { ptr @.str.57 }, %struct.acpi_exception_info { ptr @.str.58 }, %struct.acpi_exception_info { ptr @.str.59 }, %struct.acpi_exception_info { ptr @.str.60 }, %struct.acpi_exception_info { ptr @.str.61 }, %struct.acpi_exception_info { ptr @.str.62 }, %struct.acpi_exception_info { ptr @.str.63 }, %struct.acpi_exception_info { ptr @.str.64 }, %struct.acpi_exception_info { ptr @.str.65 }, %struct.acpi_exception_info { ptr @.str.66 }, %struct.acpi_exception_info { ptr @.str.67 }, %struct.acpi_exception_info { ptr @.str.68 }, %struct.acpi_exception_info { ptr @.str.69 }, %struct.acpi_exception_info { ptr @.str.70 }, %struct.acpi_exception_info { ptr @.str.71 }, %struct.acpi_exception_info { ptr @.str.72 }, %struct.acpi_exception_info { ptr @.str.73 }, %struct.acpi_exception_info { ptr @.str.74 }, %struct.acpi_exception_info { ptr @.str.75 }, %struct.acpi_exception_info { ptr @.str.76 }, %struct.acpi_exception_info { ptr @.str.77 }, %struct.acpi_exception_info { ptr @.str.78 }, %struct.acpi_exception_info { ptr @.str.79 }, %struct.acpi_exception_info { ptr @.str.80 }, %struct.acpi_exception_info { ptr @.str.81 }, %struct.acpi_exception_info { ptr @.str.82 }, %struct.acpi_exception_info { ptr @.str.83 }, %struct.acpi_exception_info { ptr @.str.84 }, %struct.acpi_exception_info { ptr @.str.85 }, %struct.acpi_exception_info { ptr @.str.86 }, %struct.acpi_exception_info { ptr @.str.87 }, %struct.acpi_exception_info { ptr @.str.88 }], align 16, !dbg !274
@acpi_gbl_exception_names_ctrl = internal constant [13 x %struct.acpi_exception_info] [%struct.acpi_exception_info zeroinitializer, %struct.acpi_exception_info { ptr @.str.89 }, %struct.acpi_exception_info { ptr @.str.90 }, %struct.acpi_exception_info { ptr @.str.91 }, %struct.acpi_exception_info { ptr @.str.92 }, %struct.acpi_exception_info { ptr @.str.93 }, %struct.acpi_exception_info { ptr @.str.94 }, %struct.acpi_exception_info { ptr @.str.95 }, %struct.acpi_exception_info { ptr @.str.96 }, %struct.acpi_exception_info { ptr @.str.97 }, %struct.acpi_exception_info { ptr @.str.98 }, %struct.acpi_exception_info { ptr @.str.99 }, %struct.acpi_exception_info { ptr @.str.100 }], align 16, !dbg !303
@.str.2 = private unnamed_addr constant [6 x i8] c"AE_OK\00", align 1, !dbg !20
@.str.3 = private unnamed_addr constant [9 x i8] c"AE_ERROR\00", align 1, !dbg !26
@.str.4 = private unnamed_addr constant [18 x i8] c"AE_NO_ACPI_TABLES\00", align 1, !dbg !31
@.str.5 = private unnamed_addr constant [16 x i8] c"AE_NO_NAMESPACE\00", align 1, !dbg !36
@.str.6 = private unnamed_addr constant [13 x i8] c"AE_NO_MEMORY\00", align 1, !dbg !41
@.str.7 = private unnamed_addr constant [13 x i8] c"AE_NOT_FOUND\00", align 1, !dbg !46
@.str.8 = private unnamed_addr constant [13 x i8] c"AE_NOT_EXIST\00", align 1, !dbg !48
@.str.9 = private unnamed_addr constant [18 x i8] c"AE_ALREADY_EXISTS\00", align 1, !dbg !50
@.str.10 = private unnamed_addr constant [8 x i8] c"AE_TYPE\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [15 x i8] c"AE_NULL_OBJECT\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [14 x i8] c"AE_NULL_ENTRY\00", align 1, !dbg !62
@.str.13 = private unnamed_addr constant [19 x i8] c"AE_BUFFER_OVERFLOW\00", align 1, !dbg !67
@.str.14 = private unnamed_addr constant [18 x i8] c"AE_STACK_OVERFLOW\00", align 1, !dbg !72
@.str.15 = private unnamed_addr constant [19 x i8] c"AE_STACK_UNDERFLOW\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [19 x i8] c"AE_NOT_IMPLEMENTED\00", align 1, !dbg !76
@.str.17 = private unnamed_addr constant [11 x i8] c"AE_SUPPORT\00", align 1, !dbg !78
@.str.18 = private unnamed_addr constant [9 x i8] c"AE_LIMIT\00", align 1, !dbg !83
@.str.19 = private unnamed_addr constant [8 x i8] c"AE_TIME\00", align 1, !dbg !85
@.str.20 = private unnamed_addr constant [20 x i8] c"AE_ACQUIRE_DEADLOCK\00", align 1, !dbg !87
@.str.21 = private unnamed_addr constant [20 x i8] c"AE_RELEASE_DEADLOCK\00", align 1, !dbg !89
@.str.22 = private unnamed_addr constant [16 x i8] c"AE_NOT_ACQUIRED\00", align 1, !dbg !91
@.str.23 = private unnamed_addr constant [20 x i8] c"AE_ALREADY_ACQUIRED\00", align 1, !dbg !93
@.str.24 = private unnamed_addr constant [24 x i8] c"AE_NO_HARDWARE_RESPONSE\00", align 1, !dbg !95
@.str.25 = private unnamed_addr constant [18 x i8] c"AE_NO_GLOBAL_LOCK\00", align 1, !dbg !100
@.str.26 = private unnamed_addr constant [16 x i8] c"AE_ABORT_METHOD\00", align 1, !dbg !102
@.str.27 = private unnamed_addr constant [16 x i8] c"AE_SAME_HANDLER\00", align 1, !dbg !104
@.str.28 = private unnamed_addr constant [14 x i8] c"AE_NO_HANDLER\00", align 1, !dbg !106
@.str.29 = private unnamed_addr constant [18 x i8] c"AE_OWNER_ID_LIMIT\00", align 1, !dbg !108
@.str.30 = private unnamed_addr constant [18 x i8] c"AE_NOT_CONFIGURED\00", align 1, !dbg !110
@.str.31 = private unnamed_addr constant [10 x i8] c"AE_ACCESS\00", align 1, !dbg !112
@.str.32 = private unnamed_addr constant [12 x i8] c"AE_IO_ERROR\00", align 1, !dbg !117
@.str.33 = private unnamed_addr constant [20 x i8] c"AE_NUMERIC_OVERFLOW\00", align 1, !dbg !122
@.str.34 = private unnamed_addr constant [16 x i8] c"AE_HEX_OVERFLOW\00", align 1, !dbg !124
@.str.35 = private unnamed_addr constant [20 x i8] c"AE_DECIMAL_OVERFLOW\00", align 1, !dbg !126
@.str.36 = private unnamed_addr constant [18 x i8] c"AE_OCTAL_OVERFLOW\00", align 1, !dbg !128
@.str.37 = private unnamed_addr constant [16 x i8] c"AE_END_OF_TABLE\00", align 1, !dbg !130
@.str.38 = private unnamed_addr constant [17 x i8] c"AE_BAD_PARAMETER\00", align 1, !dbg !142
@.str.39 = private unnamed_addr constant [17 x i8] c"AE_BAD_CHARACTER\00", align 1, !dbg !147
@.str.40 = private unnamed_addr constant [16 x i8] c"AE_BAD_PATHNAME\00", align 1, !dbg !149
@.str.41 = private unnamed_addr constant [12 x i8] c"AE_BAD_DATA\00", align 1, !dbg !151
@.str.42 = private unnamed_addr constant [20 x i8] c"AE_BAD_HEX_CONSTANT\00", align 1, !dbg !153
@.str.43 = private unnamed_addr constant [22 x i8] c"AE_BAD_OCTAL_CONSTANT\00", align 1, !dbg !155
@.str.44 = private unnamed_addr constant [24 x i8] c"AE_BAD_DECIMAL_CONSTANT\00", align 1, !dbg !160
@.str.45 = private unnamed_addr constant [21 x i8] c"AE_MISSING_ARGUMENTS\00", align 1, !dbg !162
@.str.46 = private unnamed_addr constant [15 x i8] c"AE_BAD_ADDRESS\00", align 1, !dbg !167
@.str.47 = private unnamed_addr constant [17 x i8] c"AE_BAD_SIGNATURE\00", align 1, !dbg !172
@.str.48 = private unnamed_addr constant [14 x i8] c"AE_BAD_HEADER\00", align 1, !dbg !174
@.str.49 = private unnamed_addr constant [16 x i8] c"AE_BAD_CHECKSUM\00", align 1, !dbg !176
@.str.50 = private unnamed_addr constant [13 x i8] c"AE_BAD_VALUE\00", align 1, !dbg !178
@.str.51 = private unnamed_addr constant [24 x i8] c"AE_INVALID_TABLE_LENGTH\00", align 1, !dbg !180
@.str.52 = private unnamed_addr constant [18 x i8] c"AE_AML_BAD_OPCODE\00", align 1, !dbg !185
@.str.53 = private unnamed_addr constant [18 x i8] c"AE_AML_NO_OPERAND\00", align 1, !dbg !187
@.str.54 = private unnamed_addr constant [20 x i8] c"AE_AML_OPERAND_TYPE\00", align 1, !dbg !189
@.str.55 = private unnamed_addr constant [21 x i8] c"AE_AML_OPERAND_VALUE\00", align 1, !dbg !191
@.str.56 = private unnamed_addr constant [27 x i8] c"AE_AML_UNINITIALIZED_LOCAL\00", align 1, !dbg !193
@.str.57 = private unnamed_addr constant [25 x i8] c"AE_AML_UNINITIALIZED_ARG\00", align 1, !dbg !198
@.str.58 = private unnamed_addr constant [29 x i8] c"AE_AML_UNINITIALIZED_ELEMENT\00", align 1, !dbg !203
@.str.59 = private unnamed_addr constant [24 x i8] c"AE_AML_NUMERIC_OVERFLOW\00", align 1, !dbg !208
@.str.60 = private unnamed_addr constant [20 x i8] c"AE_AML_REGION_LIMIT\00", align 1, !dbg !210
@.str.61 = private unnamed_addr constant [20 x i8] c"AE_AML_BUFFER_LIMIT\00", align 1, !dbg !212
@.str.62 = private unnamed_addr constant [21 x i8] c"AE_AML_PACKAGE_LIMIT\00", align 1, !dbg !214
@.str.63 = private unnamed_addr constant [22 x i8] c"AE_AML_DIVIDE_BY_ZERO\00", align 1, !dbg !216
@.str.64 = private unnamed_addr constant [16 x i8] c"AE_AML_BAD_NAME\00", align 1, !dbg !218
@.str.65 = private unnamed_addr constant [22 x i8] c"AE_AML_NAME_NOT_FOUND\00", align 1, !dbg !220
@.str.66 = private unnamed_addr constant [16 x i8] c"AE_AML_INTERNAL\00", align 1, !dbg !222
@.str.67 = private unnamed_addr constant [24 x i8] c"AE_AML_INVALID_SPACE_ID\00", align 1, !dbg !224
@.str.68 = private unnamed_addr constant [20 x i8] c"AE_AML_STRING_LIMIT\00", align 1, !dbg !226
@.str.69 = private unnamed_addr constant [23 x i8] c"AE_AML_NO_RETURN_VALUE\00", align 1, !dbg !228
@.str.70 = private unnamed_addr constant [20 x i8] c"AE_AML_METHOD_LIMIT\00", align 1, !dbg !233
@.str.71 = private unnamed_addr constant [17 x i8] c"AE_AML_NOT_OWNER\00", align 1, !dbg !235
@.str.72 = private unnamed_addr constant [19 x i8] c"AE_AML_MUTEX_ORDER\00", align 1, !dbg !237
@.str.73 = private unnamed_addr constant [26 x i8] c"AE_AML_MUTEX_NOT_ACQUIRED\00", align 1, !dbg !239
@.str.74 = private unnamed_addr constant [29 x i8] c"AE_AML_INVALID_RESOURCE_TYPE\00", align 1, !dbg !244
@.str.75 = private unnamed_addr constant [21 x i8] c"AE_AML_INVALID_INDEX\00", align 1, !dbg !246
@.str.76 = private unnamed_addr constant [22 x i8] c"AE_AML_REGISTER_LIMIT\00", align 1, !dbg !248
@.str.77 = private unnamed_addr constant [16 x i8] c"AE_AML_NO_WHILE\00", align 1, !dbg !250
@.str.78 = private unnamed_addr constant [17 x i8] c"AE_AML_ALIGNMENT\00", align 1, !dbg !252
@.str.79 = private unnamed_addr constant [27 x i8] c"AE_AML_NO_RESOURCE_END_TAG\00", align 1, !dbg !254
@.str.80 = private unnamed_addr constant [26 x i8] c"AE_AML_BAD_RESOURCE_VALUE\00", align 1, !dbg !256
@.str.81 = private unnamed_addr constant [26 x i8] c"AE_AML_CIRCULAR_REFERENCE\00", align 1, !dbg !258
@.str.82 = private unnamed_addr constant [27 x i8] c"AE_AML_BAD_RESOURCE_LENGTH\00", align 1, !dbg !260
@.str.83 = private unnamed_addr constant [23 x i8] c"AE_AML_ILLEGAL_ADDRESS\00", align 1, !dbg !262
@.str.84 = private unnamed_addr constant [20 x i8] c"AE_AML_LOOP_TIMEOUT\00", align 1, !dbg !264
@.str.85 = private unnamed_addr constant [26 x i8] c"AE_AML_UNINITIALIZED_NODE\00", align 1, !dbg !266
@.str.86 = private unnamed_addr constant [19 x i8] c"AE_AML_TARGET_TYPE\00", align 1, !dbg !268
@.str.87 = private unnamed_addr constant [16 x i8] c"AE_AML_PROTOCOL\00", align 1, !dbg !270
@.str.88 = private unnamed_addr constant [21 x i8] c"AE_AML_BUFFER_LENGTH\00", align 1, !dbg !272
@.str.89 = private unnamed_addr constant [21 x i8] c"AE_CTRL_RETURN_VALUE\00", align 1, !dbg !279
@.str.90 = private unnamed_addr constant [16 x i8] c"AE_CTRL_PENDING\00", align 1, !dbg !281
@.str.91 = private unnamed_addr constant [18 x i8] c"AE_CTRL_TERMINATE\00", align 1, !dbg !283
@.str.92 = private unnamed_addr constant [13 x i8] c"AE_CTRL_TRUE\00", align 1, !dbg !285
@.str.93 = private unnamed_addr constant [14 x i8] c"AE_CTRL_FALSE\00", align 1, !dbg !287
@.str.94 = private unnamed_addr constant [14 x i8] c"AE_CTRL_DEPTH\00", align 1, !dbg !289
@.str.95 = private unnamed_addr constant [12 x i8] c"AE_CTRL_END\00", align 1, !dbg !291
@.str.96 = private unnamed_addr constant [17 x i8] c"AE_CTRL_TRANSFER\00", align 1, !dbg !293
@.str.97 = private unnamed_addr constant [14 x i8] c"AE_CTRL_BREAK\00", align 1, !dbg !295
@.str.98 = private unnamed_addr constant [17 x i8] c"AE_CTRL_CONTINUE\00", align 1, !dbg !297
@.str.99 = private unnamed_addr constant [23 x i8] c"AE_CTRL_PARSE_CONTINUE\00", align 1, !dbg !299
@.str.100 = private unnamed_addr constant [22 x i8] c"AE_CTRL_PARSE_PENDING\00", align 1, !dbg !301
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_format_exception174], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_format_exception(i32 noundef %status) #0 align 16 !dbg !317 {
entry:
  %retval = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %exception = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !329, metadata !DIExpression()), !dbg !332
  call void @llvm.lifetime.start.p0(i64 8, ptr %exception) #4, !dbg !333
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !330, metadata !DIExpression()), !dbg !334
  %0 = load i32, ptr %status.addr, align 4, !dbg !335
  %call = call ptr @acpi_ut_validate_exception(i32 noundef %0) #5, !dbg !336
  store ptr %call, ptr %exception, align 8, !dbg !337
  %1 = load ptr, ptr %exception, align 8, !dbg !338
  %tobool = icmp ne ptr %1, null, !dbg !338
  br i1 %tobool, label %if.end, label %if.then, !dbg !340

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status.addr, align 4, !dbg !341
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 41, ptr noundef @.str, i32 noundef %2) #5, !dbg !341
  store ptr @.str.1, ptr %retval, align 8, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !343

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %exception, align 8, !dbg !344
  %name = getelementptr inbounds %struct.acpi_exception_info, ptr %3, i32 0, i32 0, !dbg !345
  %4 = load ptr, ptr %name, align 8, !dbg !345
  store ptr %4, ptr %retval, align 8, !dbg !346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !346

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %exception) #4, !dbg !347
  %5 = load ptr, ptr %retval, align 8, !dbg !347
  ret ptr %5, !dbg !347
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_validate_exception(i32 noundef %status) #0 align 16 !dbg !348 {
entry:
  %retval = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  %sub_status = alloca i32, align 4
  %exception = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !352, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 4, ptr %sub_status) #4, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %sub_status, metadata !353, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 8, ptr %exception) #4, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !354, metadata !DIExpression()), !dbg !359
  store ptr null, ptr %exception, align 8, !dbg !359
  %0 = load i32, ptr %status.addr, align 4, !dbg !360
  %and = and i32 %0, -61441, !dbg !361
  store i32 %and, ptr %sub_status, align 4, !dbg !362
  %1 = load i32, ptr %status.addr, align 4, !dbg !363
  %and1 = and i32 %1, 61440, !dbg !364
  switch i32 %and1, label %sw.default [
    i32 0, label %sw.bb
    i32 4096, label %sw.bb2
    i32 8192, label %sw.bb8
    i32 12288, label %sw.bb14
    i32 16384, label %sw.bb20
  ], !dbg !365

sw.bb:                                            ; preds = %entry
  %2 = load i32, ptr %sub_status, align 4, !dbg !366
  %cmp = icmp ule i32 %2, 35, !dbg !369
  br i1 %cmp, label %if.then, label %if.end, !dbg !370

if.then:                                          ; preds = %sw.bb
  %3 = load i32, ptr %sub_status, align 4, !dbg !371
  %idxprom = zext i32 %3 to i64, !dbg !373
  %arrayidx = getelementptr [36 x %struct.acpi_exception_info], ptr @acpi_gbl_exception_names_env, i64 0, i64 %idxprom, !dbg !373
  store ptr %arrayidx, ptr %exception, align 8, !dbg !374
  br label %if.end, !dbg !375

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !376

sw.bb2:                                           ; preds = %entry
  %4 = load i32, ptr %sub_status, align 4, !dbg !377
  %cmp3 = icmp ule i32 %4, 9, !dbg !379
  br i1 %cmp3, label %if.then4, label %if.end7, !dbg !380

if.then4:                                         ; preds = %sw.bb2
  %5 = load i32, ptr %sub_status, align 4, !dbg !381
  %idxprom5 = zext i32 %5 to i64, !dbg !383
  %arrayidx6 = getelementptr [10 x %struct.acpi_exception_info], ptr @acpi_gbl_exception_names_pgm, i64 0, i64 %idxprom5, !dbg !383
  store ptr %arrayidx6, ptr %exception, align 8, !dbg !384
  br label %if.end7, !dbg !385

if.end7:                                          ; preds = %if.then4, %sw.bb2
  br label %sw.epilog, !dbg !386

sw.bb8:                                           ; preds = %entry
  %6 = load i32, ptr %sub_status, align 4, !dbg !387
  %cmp9 = icmp ule i32 %6, 5, !dbg !389
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !390

if.then10:                                        ; preds = %sw.bb8
  %7 = load i32, ptr %sub_status, align 4, !dbg !391
  %idxprom11 = zext i32 %7 to i64, !dbg !393
  %arrayidx12 = getelementptr [6 x %struct.acpi_exception_info], ptr @acpi_gbl_exception_names_tbl, i64 0, i64 %idxprom11, !dbg !393
  store ptr %arrayidx12, ptr %exception, align 8, !dbg !394
  br label %if.end13, !dbg !395

if.end13:                                         ; preds = %if.then10, %sw.bb8
  br label %sw.epilog, !dbg !396

sw.bb14:                                          ; preds = %entry
  %8 = load i32, ptr %sub_status, align 4, !dbg !397
  %cmp15 = icmp ule i32 %8, 37, !dbg !399
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !400

if.then16:                                        ; preds = %sw.bb14
  %9 = load i32, ptr %sub_status, align 4, !dbg !401
  %idxprom17 = zext i32 %9 to i64, !dbg !403
  %arrayidx18 = getelementptr [38 x %struct.acpi_exception_info], ptr @acpi_gbl_exception_names_aml, i64 0, i64 %idxprom17, !dbg !403
  store ptr %arrayidx18, ptr %exception, align 8, !dbg !404
  br label %if.end19, !dbg !405

if.end19:                                         ; preds = %if.then16, %sw.bb14
  br label %sw.epilog, !dbg !406

sw.bb20:                                          ; preds = %entry
  %10 = load i32, ptr %sub_status, align 4, !dbg !407
  %cmp21 = icmp ule i32 %10, 12, !dbg !409
  br i1 %cmp21, label %if.then22, label %if.end25, !dbg !410

if.then22:                                        ; preds = %sw.bb20
  %11 = load i32, ptr %sub_status, align 4, !dbg !411
  %idxprom23 = zext i32 %11 to i64, !dbg !413
  %arrayidx24 = getelementptr [13 x %struct.acpi_exception_info], ptr @acpi_gbl_exception_names_ctrl, i64 0, i64 %idxprom23, !dbg !413
  store ptr %arrayidx24, ptr %exception, align 8, !dbg !414
  br label %if.end25, !dbg !415

if.end25:                                         ; preds = %if.then22, %sw.bb20
  br label %sw.epilog, !dbg !416

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !417

sw.epilog:                                        ; preds = %sw.default, %if.end25, %if.end19, %if.end13, %if.end7, %if.end
  %12 = load ptr, ptr %exception, align 8, !dbg !418
  %tobool = icmp ne ptr %12, null, !dbg !418
  br i1 %tobool, label %lor.lhs.false, label %if.then27, !dbg !420

lor.lhs.false:                                    ; preds = %sw.epilog
  %13 = load ptr, ptr %exception, align 8, !dbg !421
  %name = getelementptr inbounds %struct.acpi_exception_info, ptr %13, i32 0, i32 0, !dbg !422
  %14 = load ptr, ptr %name, align 8, !dbg !422
  %tobool26 = icmp ne ptr %14, null, !dbg !421
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !423

if.then27:                                        ; preds = %lor.lhs.false, %sw.epilog
  store ptr null, ptr %retval, align 8, !dbg !424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !424

if.end28:                                         ; preds = %lor.lhs.false
  %15 = load ptr, ptr %exception, align 8, !dbg !426
  store ptr %15, ptr %retval, align 8, !dbg !427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !427

cleanup:                                          ; preds = %if.end28, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %exception) #4, !dbg !428
  call void @llvm.lifetime.end.p0(i64 4, ptr %sub_status) #4, !dbg !428
  %16 = load ptr, ptr %retval, align 8, !dbg !428
  ret ptr %16, !dbg !428
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !429 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!308, !309, !310, !311, !312, !313, !314, !315}
!llvm.ident = !{!316}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !306, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utexcep.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utexcep\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utexcep.ll drivers/acpi/acpica/utexcep.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utexcep.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f1584d84578356bf7bb4f3e051185ee")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!7, !13, !18, !0, !20, !26, !31, !36, !41, !46, !48, !50, !52, !57, !62, !67, !72, !74, !76, !78, !83, !85, !87, !89, !91, !93, !95, !100, !102, !104, !106, !108, !110, !112, !117, !122, !124, !126, !128, !130, !132, !142, !147, !149, !151, !153, !155, !160, !162, !167, !169, !172, !174, !176, !178, !180, !182, !185, !187, !189, !191, !193, !198, !203, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !233, !235, !237, !239, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !11)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!12}
!12 = !DISubrange(count: 32)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 20)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_format_exception174", scope: !2, file: !3, line: 50, type: !5, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !22, line: 206, type: !23, isLocal: true, isDefinition: true)
!22 = !DIFile(filename: "./include/acpi/acexcep.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9828fce55ed0bf55e85041fa87fde680")
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 48, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 6)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !22, line: 207, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 72, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 9)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !22, line: 208, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 144, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 18)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !22, line: 209, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 16)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !22, line: 210, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 104, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 13)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !22, line: 211, type: !43, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !22, line: 212, type: !43, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !22, line: 213, type: !33, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !22, line: 214, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 8)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !22, line: 215, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 15)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !22, line: 216, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 14)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !22, line: 217, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 152, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 19)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !22, line: 218, type: !33, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !22, line: 219, type: !69, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !22, line: 220, type: !69, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !22, line: 221, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 88, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 11)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !22, line: 222, type: !28, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !22, line: 223, type: !54, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !22, line: 224, type: !15, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !22, line: 226, type: !15, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(scope: null, file: !22, line: 228, type: !38, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !22, line: 230, type: !15, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !22, line: 232, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 24)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !22, line: 234, type: !33, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !22, line: 235, type: !38, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !22, line: 236, type: !38, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !22, line: 238, type: !64, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !22, line: 240, type: !33, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !22, line: 242, type: !33, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !22, line: 244, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 80, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 10)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !22, line: 245, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 12)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !22, line: 246, type: !15, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !22, line: 248, type: !38, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !22, line: 250, type: !15, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !22, line: 252, type: !33, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !22, line: 254, type: !38, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_env", scope: !2, file: !22, line: 205, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 2304, elements: !140)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_exception_info", file: !22, line: 40, size: 64, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !136, file: !22, line: 41, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!140 = !{!141}
!141 = !DISubrange(count: 36)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !22, line: 259, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 136, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 17)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !22, line: 260, type: !144, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !22, line: 262, type: !38, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !22, line: 264, type: !119, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !22, line: 266, type: !15, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !22, line: 267, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 176, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 22)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !22, line: 269, type: !97, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !22, line: 271, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 21)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !22, line: 273, type: !59, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_pgm", scope: !2, file: !22, line: 257, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 640, elements: !115)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !22, line: 278, type: !144, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !22, line: 279, type: !64, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !22, line: 280, type: !38, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !22, line: 281, type: !43, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !22, line: 282, type: !97, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_tbl", scope: !2, file: !22, line: 276, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 384, elements: !24)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !22, line: 288, type: !33, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !22, line: 289, type: !33, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !22, line: 290, type: !15, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !22, line: 292, type: !164, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !22, line: 294, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 216, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 27)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !22, line: 296, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 25)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !22, line: 298, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 232, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 29)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !22, line: 300, type: !97, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !22, line: 302, type: !15, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !22, line: 304, type: !15, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !22, line: 306, type: !164, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !22, line: 308, type: !157, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !22, line: 310, type: !38, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !22, line: 312, type: !157, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !22, line: 314, type: !38, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !22, line: 316, type: !97, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !22, line: 318, type: !15, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !22, line: 320, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 184, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 23)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !22, line: 322, type: !15, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !22, line: 324, type: !144, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !22, line: 326, type: !69, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !22, line: 327, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 26)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !22, line: 329, type: !205, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !22, line: 331, type: !164, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !22, line: 333, type: !157, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !22, line: 335, type: !38, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !22, line: 336, type: !144, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !22, line: 338, type: !195, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !22, line: 340, type: !241, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !22, line: 342, type: !241, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !22, line: 344, type: !195, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !22, line: 346, type: !230, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !22, line: 348, type: !15, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !22, line: 350, type: !241, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !22, line: 352, type: !69, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !22, line: 354, type: !38, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !22, line: 355, type: !164, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_aml", scope: !2, file: !22, line: 286, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 2432, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 38)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !22, line: 361, type: !164, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !22, line: 362, type: !38, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(scope: null, file: !22, line: 363, type: !33, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !22, line: 364, type: !43, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !22, line: 365, type: !64, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !22, line: 366, type: !64, isLocal: true, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !22, line: 367, type: !119, isLocal: true, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !22, line: 368, type: !144, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !22, line: 369, type: !64, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !22, line: 370, type: !144, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !22, line: 371, type: !230, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !22, line: 372, type: !157, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "acpi_gbl_exception_names_ctrl", scope: !2, file: !22, line: 359, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 832, elements: !44)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !307, size: 64, elements: !55)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!308 = !{i32 7, !"Dwarf Version", i32 5}
!309 = !{i32 2, !"Debug Info Version", i32 3}
!310 = !{i32 1, !"wchar_size", i32 2}
!311 = !{i32 8, !"cf-protection-branch", i32 1}
!312 = !{i32 4, !"function_return_thunk_extern", i32 1}
!313 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!314 = !{i32 1, !"Code Model", i32 2}
!315 = !{i32 1, !"override-stack-alignment", i32 8}
!316 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!317 = distinct !DISubprogram(name: "acpi_format_exception", scope: !3, file: !3, line: 30, type: !318, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !322, line: 421, baseType: !323)
!322 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !324, line: 21, baseType: !325)
!324 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !326, line: 27, baseType: !327)
!326 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!327 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!328 = !{!329, !330}
!329 = !DILocalVariable(name: "status", arg: 1, scope: !317, file: !3, line: 30, type: !321)
!330 = !DILocalVariable(name: "exception", scope: !317, file: !3, line: 32, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!332 = !DILocation(line: 30, column: 47, scope: !317)
!333 = !DILocation(line: 32, column: 2, scope: !317)
!334 = !DILocation(line: 32, column: 36, scope: !317)
!335 = !DILocation(line: 36, column: 41, scope: !317)
!336 = !DILocation(line: 36, column: 14, scope: !317)
!337 = !DILocation(line: 36, column: 12, scope: !317)
!338 = !DILocation(line: 37, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !317, file: !3, line: 37, column: 6)
!340 = !DILocation(line: 37, column: 6, scope: !317)
!341 = !DILocation(line: 41, column: 3, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !3, line: 37, column: 18)
!343 = !DILocation(line: 44, column: 3, scope: !342)
!344 = !DILocation(line: 47, column: 10, scope: !317)
!345 = !DILocation(line: 47, column: 21, scope: !317)
!346 = !DILocation(line: 47, column: 2, scope: !317)
!347 = !DILocation(line: 48, column: 1, scope: !317)
!348 = distinct !DISubprogram(name: "acpi_ut_validate_exception", scope: !3, file: !3, line: 65, type: !349, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !351)
!349 = !DISubroutineType(types: !350)
!350 = !{!331, !321}
!351 = !{!352, !353, !354}
!352 = !DILocalVariable(name: "status", arg: 1, scope: !348, file: !3, line: 65, type: !321)
!353 = !DILocalVariable(name: "sub_status", scope: !348, file: !3, line: 67, type: !323)
!354 = !DILocalVariable(name: "exception", scope: !348, file: !3, line: 68, type: !331)
!355 = !DILocation(line: 65, column: 74, scope: !348)
!356 = !DILocation(line: 67, column: 2, scope: !348)
!357 = !DILocation(line: 67, column: 6, scope: !348)
!358 = !DILocation(line: 68, column: 2, scope: !348)
!359 = !DILocation(line: 68, column: 36, scope: !348)
!360 = !DILocation(line: 75, column: 16, scope: !348)
!361 = !DILocation(line: 75, column: 23, scope: !348)
!362 = !DILocation(line: 75, column: 13, scope: !348)
!363 = !DILocation(line: 77, column: 10, scope: !348)
!364 = !DILocation(line: 77, column: 17, scope: !348)
!365 = !DILocation(line: 77, column: 2, scope: !348)
!366 = !DILocation(line: 80, column: 7, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 80, column: 7)
!368 = distinct !DILexicalBlock(scope: !348, file: !3, line: 77, column: 33)
!369 = !DILocation(line: 80, column: 18, scope: !367)
!370 = !DILocation(line: 80, column: 7, scope: !368)
!371 = !DILocation(line: 81, column: 46, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !3, line: 80, column: 38)
!373 = !DILocation(line: 81, column: 17, scope: !372)
!374 = !DILocation(line: 81, column: 14, scope: !372)
!375 = !DILocation(line: 82, column: 3, scope: !372)
!376 = !DILocation(line: 83, column: 3, scope: !368)
!377 = !DILocation(line: 87, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !368, file: !3, line: 87, column: 7)
!379 = !DILocation(line: 87, column: 18, scope: !378)
!380 = !DILocation(line: 87, column: 7, scope: !368)
!381 = !DILocation(line: 88, column: 46, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !3, line: 87, column: 38)
!383 = !DILocation(line: 88, column: 17, scope: !382)
!384 = !DILocation(line: 88, column: 14, scope: !382)
!385 = !DILocation(line: 89, column: 3, scope: !382)
!386 = !DILocation(line: 90, column: 3, scope: !368)
!387 = !DILocation(line: 94, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !368, file: !3, line: 94, column: 7)
!389 = !DILocation(line: 94, column: 18, scope: !388)
!390 = !DILocation(line: 94, column: 7, scope: !368)
!391 = !DILocation(line: 95, column: 46, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 94, column: 38)
!393 = !DILocation(line: 95, column: 17, scope: !392)
!394 = !DILocation(line: 95, column: 14, scope: !392)
!395 = !DILocation(line: 96, column: 3, scope: !392)
!396 = !DILocation(line: 97, column: 3, scope: !368)
!397 = !DILocation(line: 101, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !368, file: !3, line: 101, column: 7)
!399 = !DILocation(line: 101, column: 18, scope: !398)
!400 = !DILocation(line: 101, column: 7, scope: !368)
!401 = !DILocation(line: 102, column: 46, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 101, column: 38)
!403 = !DILocation(line: 102, column: 17, scope: !402)
!404 = !DILocation(line: 102, column: 14, scope: !402)
!405 = !DILocation(line: 103, column: 3, scope: !402)
!406 = !DILocation(line: 104, column: 3, scope: !368)
!407 = !DILocation(line: 108, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !368, file: !3, line: 108, column: 7)
!409 = !DILocation(line: 108, column: 18, scope: !408)
!410 = !DILocation(line: 108, column: 7, scope: !368)
!411 = !DILocation(line: 109, column: 47, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !3, line: 108, column: 39)
!413 = !DILocation(line: 109, column: 17, scope: !412)
!414 = !DILocation(line: 109, column: 14, scope: !412)
!415 = !DILocation(line: 110, column: 3, scope: !412)
!416 = !DILocation(line: 111, column: 3, scope: !368)
!417 = !DILocation(line: 115, column: 3, scope: !368)
!418 = !DILocation(line: 118, column: 7, scope: !419)
!419 = distinct !DILexicalBlock(scope: !348, file: !3, line: 118, column: 6)
!420 = !DILocation(line: 118, column: 17, scope: !419)
!421 = !DILocation(line: 118, column: 21, scope: !419)
!422 = !DILocation(line: 118, column: 32, scope: !419)
!423 = !DILocation(line: 118, column: 6, scope: !348)
!424 = !DILocation(line: 119, column: 3, scope: !425)
!425 = distinct !DILexicalBlock(scope: !419, file: !3, line: 118, column: 38)
!426 = !DILocation(line: 122, column: 10, scope: !348)
!427 = !DILocation(line: 122, column: 2, scope: !348)
!428 = !DILocation(line: 123, column: 1, scope: !348)
!429 = !DISubprogram(name: "acpi_error", scope: !430, file: !430, line: 901, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!431 = !DISubroutineType(types: !432)
!432 = !{null, !320, !323, !320, null}
