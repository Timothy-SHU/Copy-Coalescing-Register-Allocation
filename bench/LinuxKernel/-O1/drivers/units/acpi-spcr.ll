; ModuleID = 'drivers/acpi/spcr.c'
source_filename = "drivers/acpi/spcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qdf2400_e44_present: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qdf2400_e44_present ; .previous"

%struct.acpi_table_spcr = type <{ %struct.acpi_table_header, i8, [3 x i8], %struct.acpi_generic_address, i8, i8, i32, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i32 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>

@qdf2400_e44_present = hidden global i8 0, align 1, !dbg !0
@__UNIQUE_ID___addressable_qdf2400_e44_present292 = internal global ptr @qdf2400_e44_present, section ".discard.addressable", align 8, !dbg !47
@acpi_parse_spcr.opts = internal global [64 x i8] zeroinitializer, align 16, !dbg !49
@acpi_disabled = external dso_local global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"SPCR\00", align 1, !dbg !117
@.str.1 = private unnamed_addr constant [37 x i8] c"\016ACPI: SPCR: SPCR table version %d\0A\00", align 1, !dbg !122
@.str.2 = private unnamed_addr constant [92 x i8] c"\013ACPI: SPCR: [Firmware Bug]: Unacceptable wide SPCR Access Width. Defaulting to byte size\0A\00", align 1, !dbg !127
@.str.3 = private unnamed_addr constant [85 x i8] c"\013ACPI: SPCR: [Firmware Bug]: Unexpected SPCR Access Width. Defaulting to byte size\0A\00", align 1, !dbg !132
@.str.4 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1, !dbg !137
@.str.5 = private unnamed_addr constant [7 x i8] c"mmio16\00", align 1, !dbg !139
@.str.6 = private unnamed_addr constant [7 x i8] c"mmio32\00", align 1, !dbg !144
@.str.7 = private unnamed_addr constant [3 x i8] c"io\00", align 1, !dbg !146
@.str.8 = private unnamed_addr constant [6 x i8] c"pl011\00", align 1, !dbg !149
@.str.9 = private unnamed_addr constant [5 x i8] c"uart\00", align 1, !dbg !151
@.str.10 = private unnamed_addr constant [12 x i8] c"qdf2400_e44\00", align 1, !dbg !153
@.str.11 = private unnamed_addr constant [13 x i8] c"%s,%s,0x%llx\00", align 1, !dbg !158
@.str.12 = private unnamed_addr constant [16 x i8] c"%s,%s,0x%llx,%d\00", align 1, !dbg !163
@.str.13 = private unnamed_addr constant [27 x i8] c"\016ACPI: SPCR: console: %s\0A\00", align 1, !dbg !168
@.str.14 = private unnamed_addr constant [7 x i8] c"QCOM  \00", align 1, !dbg !173
@.str.15 = private unnamed_addr constant [9 x i8] c"QDF2432 \00", align 1, !dbg !175
@.str.16 = private unnamed_addr constant [9 x i8] c"QDF2400 \00", align 1, !dbg !180
@.str.17 = private unnamed_addr constant [7 x i8] c"APMC0D\00", align 1, !dbg !182
@.str.18 = private unnamed_addr constant [7 x i8] c"HPE   \00", align 1, !dbg !184
@.str.19 = private unnamed_addr constant [9 x i8] c"XGENESPC\00", align 1, !dbg !186
@.str.20 = private unnamed_addr constant [9 x i8] c"ProLiant\00", align 1, !dbg !188
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_qdf2400_e44_present292], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @acpi_parse_spcr(i1 noundef zeroext %enable_earlycon, i1 noundef zeroext %enable_console) #0 section ".init.text" align 16 !dbg !51 {
entry:
  %retval = alloca i32, align 4
  %enable_earlycon.addr = alloca i8, align 1
  %enable_console.addr = alloca i8, align 1
  %table = alloca ptr, align 8
  %status = alloca i32, align 4
  %uart = alloca ptr, align 8
  %iotype = alloca ptr, align 8
  %baud_rate = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %bit_width = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  %frombool = zext i1 %enable_earlycon to i8
  store i8 %frombool, ptr %enable_earlycon.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable_earlycon.addr, metadata !59, metadata !DIExpression()), !dbg !199
  %frombool1 = zext i1 %enable_console to i8
  store i8 %frombool1, ptr %enable_console.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %enable_console.addr, metadata !60, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #6, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %table, metadata !61, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %status, metadata !103, metadata !DIExpression()), !dbg !204
  call void @llvm.lifetime.start.p0(i64 8, ptr %uart) #6, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %uart, metadata !105, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 8, ptr %iotype) #6, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %iotype, metadata !107, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 4, ptr %baud_rate) #6, !dbg !209
  call void @llvm.dbg.declare(metadata ptr %baud_rate, metadata !108, metadata !DIExpression()), !dbg !210
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #6, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %err, metadata !109, metadata !DIExpression()), !dbg !212
  %0 = load i32, ptr @acpi_disabled, align 4, !dbg !213
  %tobool = icmp ne i32 %0, 0, !dbg !213
  br i1 %tobool, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !216
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !216

if.end:                                           ; preds = %entry
  %call = call i32 @acpi_get_table(ptr noundef @.str, i32 noundef 0, ptr noundef %table) #7, !dbg !217
  store i32 %call, ptr %status, align 4, !dbg !218
  %1 = load i32, ptr %status, align 4, !dbg !219
  %tobool2 = icmp ne i32 %1, 0, !dbg !219
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !221

if.then3:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4, !dbg !222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !222

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %table, align 8, !dbg !223
  %header = getelementptr inbounds %struct.acpi_table_spcr, ptr %2, i32 0, i32 0, !dbg !225
  %revision = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 2, !dbg !226
  %3 = load i8, ptr %revision, align 1, !dbg !226
  %conv = zext i8 %3 to i32, !dbg !223
  %cmp = icmp slt i32 %conv, 2, !dbg !227
  br i1 %cmp, label %if.then6, label %if.end11, !dbg !228

if.then6:                                         ; preds = %if.end4
  br label %do.body, !dbg !229

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !231

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !231

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %table, align 8, !dbg !229
  %header7 = getelementptr inbounds %struct.acpi_table_spcr, ptr %4, i32 0, i32 0, !dbg !229
  %revision8 = getelementptr inbounds %struct.acpi_table_header, ptr %header7, i32 0, i32 2, !dbg !229
  %5 = load i8, ptr %revision8, align 1, !dbg !229
  %conv9 = zext i8 %5 to i32, !dbg !229
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %conv9) #8, !dbg !229
  store i32 %call10, ptr %tmp, align 4, !dbg !231
  %6 = load i32, ptr %tmp, align 4, !dbg !229
  br label %if.end11, !dbg !233

if.end11:                                         ; preds = %do.end, %if.end4
  %7 = load ptr, ptr %table, align 8, !dbg !234
  %serial_port = getelementptr inbounds %struct.acpi_table_spcr, ptr %7, i32 0, i32 3, !dbg !235
  %space_id = getelementptr inbounds %struct.acpi_generic_address, ptr %serial_port, i32 0, i32 0, !dbg !236
  %8 = load i8, ptr %space_id, align 1, !dbg !236
  %conv12 = zext i8 %8 to i32, !dbg !234
  %cmp13 = icmp eq i32 %conv12, 0, !dbg !237
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !238

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr %bit_width) #6, !dbg !239
  call void @llvm.dbg.declare(metadata ptr %bit_width, metadata !110, metadata !DIExpression()), !dbg !240
  %9 = load ptr, ptr %table, align 8, !dbg !241
  %serial_port16 = getelementptr inbounds %struct.acpi_table_spcr, ptr %9, i32 0, i32 3, !dbg !242
  %access_width = getelementptr inbounds %struct.acpi_generic_address, ptr %serial_port16, i32 0, i32 3, !dbg !243
  %10 = load i8, ptr %access_width, align 1, !dbg !243
  %conv17 = zext i8 %10 to i32, !dbg !241
  store i32 %conv17, ptr %bit_width, align 4, !dbg !240
  %11 = load i32, ptr %bit_width, align 4, !dbg !244
  %cmp18 = icmp ugt i32 %11, 29, !dbg !246
  br i1 %cmp18, label %if.then20, label %if.end26, !dbg !247

if.then20:                                        ; preds = %if.then15
  br label %do.body21, !dbg !248

do.body21:                                        ; preds = %if.then20
  br label %do.cond22, !dbg !251

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !251

do.end23:                                         ; preds = %do.cond22
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #8, !dbg !248
  store i32 %call25, ptr %tmp24, align 4, !dbg !251
  %12 = load i32, ptr %tmp24, align 4, !dbg !248
  store i32 6, ptr %bit_width, align 4, !dbg !253
  br label %if.end26, !dbg !254

if.end26:                                         ; preds = %do.end23, %if.then15
  %13 = load i32, ptr %bit_width, align 4, !dbg !255
  %add = add i32 %13, 2, !dbg !255
  %shl = shl i32 1, %add, !dbg !255
  switch i32 %shl, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb32
    i32 32, label %sw.bb33
  ], !dbg !256

sw.default:                                       ; preds = %if.end26
  br label %do.body27, !dbg !257

do.body27:                                        ; preds = %sw.default
  br label %do.cond28, !dbg !260

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !260

do.end29:                                         ; preds = %do.cond28
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #8, !dbg !257
  store i32 %call31, ptr %tmp30, align 4, !dbg !260
  %14 = load i32, ptr %tmp30, align 4, !dbg !257
  br label %sw.bb, !dbg !262

sw.bb:                                            ; preds = %if.end26, %do.end29
  store ptr @.str.4, ptr %iotype, align 8, !dbg !263
  br label %sw.epilog, !dbg !264

sw.bb32:                                          ; preds = %if.end26
  store ptr @.str.5, ptr %iotype, align 8, !dbg !265
  br label %sw.epilog, !dbg !266

sw.bb33:                                          ; preds = %if.end26
  store ptr @.str.6, ptr %iotype, align 8, !dbg !267
  br label %sw.epilog, !dbg !268

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb32, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %bit_width) #6, !dbg !269
  br label %if.end34, !dbg !270

if.else:                                          ; preds = %if.end11
  store ptr @.str.7, ptr %iotype, align 8, !dbg !271
  br label %if.end34

if.end34:                                         ; preds = %if.else, %sw.epilog
  %15 = load ptr, ptr %table, align 8, !dbg !272
  %interface_type = getelementptr inbounds %struct.acpi_table_spcr, ptr %15, i32 0, i32 1, !dbg !273
  %16 = load i8, ptr %interface_type, align 1, !dbg !273
  %conv35 = zext i8 %16 to i32, !dbg !272
  switch i32 %conv35, label %sw.default39 [
    i32 13, label %sw.bb36
    i32 3, label %sw.bb37
    i32 14, label %sw.bb37
    i32 16, label %sw.bb37
    i32 0, label %sw.bb38
    i32 1, label %sw.bb38
    i32 18, label %sw.bb38
    i32 5, label %sw.bb38
  ], !dbg !274

sw.bb36:                                          ; preds = %if.end34
  store ptr @.str.6, ptr %iotype, align 8, !dbg !275
  br label %sw.bb37, !dbg !277

sw.bb37:                                          ; preds = %if.end34, %if.end34, %if.end34, %sw.bb36
  store ptr @.str.8, ptr %uart, align 8, !dbg !278
  br label %sw.epilog40, !dbg !279

sw.bb38:                                          ; preds = %if.end34, %if.end34, %if.end34, %if.end34
  store ptr @.str.9, ptr %uart, align 8, !dbg !280
  br label %sw.epilog40, !dbg !281

sw.default39:                                     ; preds = %if.end34
  store i32 -2, ptr %err, align 4, !dbg !282
  br label %done, !dbg !283

sw.epilog40:                                      ; preds = %sw.bb38, %sw.bb37
  %17 = load ptr, ptr %table, align 8, !dbg !284
  %baud_rate41 = getelementptr inbounds %struct.acpi_table_spcr, ptr %17, i32 0, i32 7, !dbg !285
  %18 = load i8, ptr %baud_rate41, align 1, !dbg !285
  %conv42 = zext i8 %18 to i32, !dbg !284
  switch i32 %conv42, label %sw.default48 [
    i32 0, label %sw.bb43
    i32 3, label %sw.bb44
    i32 4, label %sw.bb45
    i32 6, label %sw.bb46
    i32 7, label %sw.bb47
  ], !dbg !286

sw.bb43:                                          ; preds = %sw.epilog40
  store i32 0, ptr %baud_rate, align 4, !dbg !287
  br label %sw.epilog49, !dbg !289

sw.bb44:                                          ; preds = %sw.epilog40
  store i32 9600, ptr %baud_rate, align 4, !dbg !290
  br label %sw.epilog49, !dbg !291

sw.bb45:                                          ; preds = %sw.epilog40
  store i32 19200, ptr %baud_rate, align 4, !dbg !292
  br label %sw.epilog49, !dbg !293

sw.bb46:                                          ; preds = %sw.epilog40
  store i32 57600, ptr %baud_rate, align 4, !dbg !294
  br label %sw.epilog49, !dbg !295

sw.bb47:                                          ; preds = %sw.epilog40
  store i32 115200, ptr %baud_rate, align 4, !dbg !296
  br label %sw.epilog49, !dbg !297

sw.default48:                                     ; preds = %sw.epilog40
  store i32 -2, ptr %err, align 4, !dbg !298
  br label %done, !dbg !299

sw.epilog49:                                      ; preds = %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43
  %19 = load ptr, ptr %table, align 8, !dbg !300
  %header50 = getelementptr inbounds %struct.acpi_table_spcr, ptr %19, i32 0, i32 0, !dbg !302
  %call51 = call zeroext i1 @qdf2400_erratum_44_present(ptr noundef %header50) #7, !dbg !303
  br i1 %call51, label %if.then52, label %if.end56, !dbg !304

if.then52:                                        ; preds = %sw.epilog49
  store i8 1, ptr @qdf2400_e44_present, align 1, !dbg !305
  %20 = load i8, ptr %enable_earlycon.addr, align 1, !dbg !307, !range !309, !noundef !310
  %tobool53 = trunc i8 %20 to i1, !dbg !307
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !311

if.then54:                                        ; preds = %if.then52
  store ptr @.str.10, ptr %uart, align 8, !dbg !312
  br label %if.end55, !dbg !313

if.end55:                                         ; preds = %if.then54, %if.then52
  br label %if.end56, !dbg !314

if.end56:                                         ; preds = %if.end55, %sw.epilog49
  %21 = load ptr, ptr %table, align 8, !dbg !315
  %call57 = call zeroext i1 @xgene_8250_erratum_present(ptr noundef %21) #7, !dbg !317
  br i1 %call57, label %if.then58, label %if.end59, !dbg !318

if.then58:                                        ; preds = %if.end56
  store ptr @.str.6, ptr %iotype, align 8, !dbg !319
  store i32 0, ptr %baud_rate, align 4, !dbg !321
  br label %if.end59, !dbg !322

if.end59:                                         ; preds = %if.then58, %if.end56
  %22 = load i32, ptr %baud_rate, align 4, !dbg !323
  %tobool60 = icmp ne i32 %22, 0, !dbg !323
  br i1 %tobool60, label %if.else64, label %if.then61, !dbg !325

if.then61:                                        ; preds = %if.end59
  %23 = load ptr, ptr %uart, align 8, !dbg !326
  %24 = load ptr, ptr %iotype, align 8, !dbg !328
  %25 = load ptr, ptr %table, align 8, !dbg !329
  %serial_port62 = getelementptr inbounds %struct.acpi_table_spcr, ptr %25, i32 0, i32 3, !dbg !330
  %address = getelementptr inbounds %struct.acpi_generic_address, ptr %serial_port62, i32 0, i32 4, !dbg !331
  %26 = load i64, ptr %address, align 1, !dbg !331
  %call63 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @acpi_parse_spcr.opts, i64 noundef 64, ptr noundef @.str.11, ptr noundef %23, ptr noundef %24, i64 noundef %26) #7, !dbg !332
  br label %if.end68, !dbg !333

if.else64:                                        ; preds = %if.end59
  %27 = load ptr, ptr %uart, align 8, !dbg !334
  %28 = load ptr, ptr %iotype, align 8, !dbg !336
  %29 = load ptr, ptr %table, align 8, !dbg !337
  %serial_port65 = getelementptr inbounds %struct.acpi_table_spcr, ptr %29, i32 0, i32 3, !dbg !338
  %address66 = getelementptr inbounds %struct.acpi_generic_address, ptr %serial_port65, i32 0, i32 4, !dbg !339
  %30 = load i64, ptr %address66, align 1, !dbg !339
  %31 = load i32, ptr %baud_rate, align 4, !dbg !340
  %call67 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @acpi_parse_spcr.opts, i64 noundef 64, ptr noundef @.str.12, ptr noundef %27, ptr noundef %28, i64 noundef %30, i32 noundef %31) #7, !dbg !341
  br label %if.end68

if.end68:                                         ; preds = %if.else64, %if.then61
  br label %do.body69, !dbg !342

do.body69:                                        ; preds = %if.end68
  br label %do.cond70, !dbg !344

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !344

do.end71:                                         ; preds = %do.cond70
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef @acpi_parse_spcr.opts) #8, !dbg !342
  store i32 %call73, ptr %tmp72, align 4, !dbg !344
  %32 = load i32, ptr %tmp72, align 4, !dbg !342
  %33 = load i8, ptr %enable_earlycon.addr, align 1, !dbg !346, !range !309, !noundef !310
  %tobool74 = trunc i8 %33 to i1, !dbg !346
  br i1 %tobool74, label %if.then75, label %if.end77, !dbg !348

if.then75:                                        ; preds = %do.end71
  %call76 = call i32 @setup_earlycon(ptr noundef @acpi_parse_spcr.opts) #7, !dbg !349
  br label %if.end77, !dbg !349

if.end77:                                         ; preds = %if.then75, %do.end71
  %34 = load i8, ptr %enable_console.addr, align 1, !dbg !350, !range !309, !noundef !310
  %tobool78 = trunc i8 %34 to i1, !dbg !350
  br i1 %tobool78, label %if.then79, label %if.else83, !dbg !352

if.then79:                                        ; preds = %if.end77
  %35 = load ptr, ptr %uart, align 8, !dbg !353
  %36 = load ptr, ptr %uart, align 8, !dbg !354
  %call80 = call i64 @strlen(ptr noundef %36) #7, !dbg !355
  %add.ptr = getelementptr i8, ptr @acpi_parse_spcr.opts, i64 %call80, !dbg !356
  %add.ptr81 = getelementptr i8, ptr %add.ptr, i64 1, !dbg !357
  %call82 = call i32 @add_preferred_console(ptr noundef %35, i32 noundef 0, ptr noundef %add.ptr81) #7, !dbg !358
  store i32 %call82, ptr %err, align 4, !dbg !359
  br label %if.end84, !dbg !360

if.else83:                                        ; preds = %if.end77
  store i32 0, ptr %err, align 4, !dbg !361
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.then79
  br label %done, !dbg !350

done:                                             ; preds = %if.end84, %sw.default48, %sw.default39
  call void @llvm.dbg.label(metadata !113), !dbg !362
  %37 = load ptr, ptr %table, align 8, !dbg !363
  call void @acpi_put_table(ptr noundef %37) #7, !dbg !364
  %38 = load i32, ptr %err, align 4, !dbg !365
  store i32 %38, ptr %retval, align 4, !dbg !366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !366

cleanup:                                          ; preds = %done, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #6, !dbg !367
  call void @llvm.lifetime.end.p0(i64 4, ptr %baud_rate) #6, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %iotype) #6, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %uart) #6, !dbg !367
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #6, !dbg !367
  %39 = load i32, ptr %retval, align 4, !dbg !367
  ret i32 %39, !dbg !367
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !368 dso_local i32 @acpi_get_table(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !373 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @qdf2400_erratum_44_present(ptr noundef %h) #5 align 16 !dbg !379 {
entry:
  %retval = alloca i1, align 1
  %h.addr = alloca ptr, align 8
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load ptr, ptr %h.addr, align 8, !dbg !385
  %oem_id = getelementptr inbounds %struct.acpi_table_header, ptr %0, i32 0, i32 4, !dbg !387
  %arraydecay = getelementptr inbounds [6 x i8], ptr %oem_id, i64 0, i64 0, !dbg !385
  %call = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef @.str.14, i64 noundef 6) #7, !dbg !388
  %tobool = icmp ne i32 %call, 0, !dbg !388
  br i1 %tobool, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !390
  br label %return, !dbg !390

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %h.addr, align 8, !dbg !391
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, ptr %1, i32 0, i32 5, !dbg !393
  %arraydecay1 = getelementptr inbounds [8 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !391
  %call2 = call i32 @memcmp(ptr noundef %arraydecay1, ptr noundef @.str.15, i64 noundef 8) #7, !dbg !394
  %tobool3 = icmp ne i32 %call2, 0, !dbg !394
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !395

if.then4:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !396
  br label %return, !dbg !396

if.end5:                                          ; preds = %if.end
  %2 = load ptr, ptr %h.addr, align 8, !dbg !397
  %oem_table_id6 = getelementptr inbounds %struct.acpi_table_header, ptr %2, i32 0, i32 5, !dbg !399
  %arraydecay7 = getelementptr inbounds [8 x i8], ptr %oem_table_id6, i64 0, i64 0, !dbg !397
  %call8 = call i32 @memcmp(ptr noundef %arraydecay7, ptr noundef @.str.16, i64 noundef 8) #7, !dbg !400
  %tobool9 = icmp ne i32 %call8, 0, !dbg !400
  br i1 %tobool9, label %if.end11, label %land.lhs.true, !dbg !401

land.lhs.true:                                    ; preds = %if.end5
  %3 = load ptr, ptr %h.addr, align 8, !dbg !402
  %oem_revision = getelementptr inbounds %struct.acpi_table_header, ptr %3, i32 0, i32 6, !dbg !403
  %4 = load i32, ptr %oem_revision, align 1, !dbg !403
  %cmp = icmp eq i32 %4, 1, !dbg !404
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !405

if.then10:                                        ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !406
  br label %return, !dbg !406

if.end11:                                         ; preds = %land.lhs.true, %if.end5
  store i1 false, ptr %retval, align 1, !dbg !407
  br label %return, !dbg !407

return:                                           ; preds = %if.end11, %if.then10, %if.then4, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !408
  ret i1 %5, !dbg !408
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @xgene_8250_erratum_present(ptr noundef %tb) #5 align 16 !dbg !409 {
entry:
  %retval = alloca i1, align 1
  %tb.addr = alloca ptr, align 8
  %xgene_8250 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tb, ptr %tb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tb.addr, metadata !413, metadata !DIExpression()), !dbg !415
  call void @llvm.lifetime.start.p0(i64 1, ptr %xgene_8250) #6, !dbg !416
  call void @llvm.dbg.declare(metadata ptr %xgene_8250, metadata !414, metadata !DIExpression()), !dbg !417
  store i8 0, ptr %xgene_8250, align 1, !dbg !417
  %0 = load ptr, ptr %tb.addr, align 8, !dbg !418
  %interface_type = getelementptr inbounds %struct.acpi_table_spcr, ptr %0, i32 0, i32 1, !dbg !420
  %1 = load i8, ptr %interface_type, align 1, !dbg !420
  %conv = zext i8 %1 to i32, !dbg !418
  %cmp = icmp ne i32 %conv, 0, !dbg !421
  br i1 %cmp, label %if.then, label %if.end, !dbg !422

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tb.addr, align 8, !dbg !424
  %header = getelementptr inbounds %struct.acpi_table_spcr, ptr %2, i32 0, i32 0, !dbg !426
  %oem_id = getelementptr inbounds %struct.acpi_table_header, ptr %header, i32 0, i32 4, !dbg !427
  %arraydecay = getelementptr inbounds [6 x i8], ptr %oem_id, i64 0, i64 0, !dbg !424
  %call = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef @.str.17, i64 noundef 6) #7, !dbg !428
  %tobool = icmp ne i32 %call, 0, !dbg !428
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !429

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %tb.addr, align 8, !dbg !430
  %header2 = getelementptr inbounds %struct.acpi_table_spcr, ptr %3, i32 0, i32 0, !dbg !431
  %oem_id3 = getelementptr inbounds %struct.acpi_table_header, ptr %header2, i32 0, i32 4, !dbg !432
  %arraydecay4 = getelementptr inbounds [6 x i8], ptr %oem_id3, i64 0, i64 0, !dbg !430
  %call5 = call i32 @memcmp(ptr noundef %arraydecay4, ptr noundef @.str.18, i64 noundef 6) #7, !dbg !433
  %tobool6 = icmp ne i32 %call5, 0, !dbg !433
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !434

if.then7:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !435
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !435

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %4 = load ptr, ptr %tb.addr, align 8, !dbg !436
  %header9 = getelementptr inbounds %struct.acpi_table_spcr, ptr %4, i32 0, i32 0, !dbg !438
  %oem_table_id = getelementptr inbounds %struct.acpi_table_header, ptr %header9, i32 0, i32 5, !dbg !439
  %arraydecay10 = getelementptr inbounds [8 x i8], ptr %oem_table_id, i64 0, i64 0, !dbg !436
  %call11 = call i32 @memcmp(ptr noundef %arraydecay10, ptr noundef @.str.19, i64 noundef 8) #7, !dbg !440
  %tobool12 = icmp ne i32 %call11, 0, !dbg !440
  br i1 %tobool12, label %if.end18, label %land.lhs.true13, !dbg !441

land.lhs.true13:                                  ; preds = %if.end8
  %5 = load ptr, ptr %tb.addr, align 8, !dbg !442
  %header14 = getelementptr inbounds %struct.acpi_table_spcr, ptr %5, i32 0, i32 0, !dbg !443
  %oem_revision = getelementptr inbounds %struct.acpi_table_header, ptr %header14, i32 0, i32 6, !dbg !444
  %6 = load i32, ptr %oem_revision, align 1, !dbg !444
  %cmp15 = icmp eq i32 %6, 0, !dbg !445
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !446

if.then17:                                        ; preds = %land.lhs.true13
  store i8 1, ptr %xgene_8250, align 1, !dbg !447
  br label %if.end18, !dbg !448

if.end18:                                         ; preds = %if.then17, %land.lhs.true13, %if.end8
  %7 = load ptr, ptr %tb.addr, align 8, !dbg !449
  %header19 = getelementptr inbounds %struct.acpi_table_spcr, ptr %7, i32 0, i32 0, !dbg !451
  %oem_table_id20 = getelementptr inbounds %struct.acpi_table_header, ptr %header19, i32 0, i32 5, !dbg !452
  %arraydecay21 = getelementptr inbounds [8 x i8], ptr %oem_table_id20, i64 0, i64 0, !dbg !449
  %call22 = call i32 @memcmp(ptr noundef %arraydecay21, ptr noundef @.str.20, i64 noundef 8) #7, !dbg !453
  %tobool23 = icmp ne i32 %call22, 0, !dbg !453
  br i1 %tobool23, label %if.end30, label %land.lhs.true24, !dbg !454

land.lhs.true24:                                  ; preds = %if.end18
  %8 = load ptr, ptr %tb.addr, align 8, !dbg !455
  %header25 = getelementptr inbounds %struct.acpi_table_spcr, ptr %8, i32 0, i32 0, !dbg !456
  %oem_revision26 = getelementptr inbounds %struct.acpi_table_header, ptr %header25, i32 0, i32 6, !dbg !457
  %9 = load i32, ptr %oem_revision26, align 1, !dbg !457
  %cmp27 = icmp eq i32 %9, 1, !dbg !458
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !459

if.then29:                                        ; preds = %land.lhs.true24
  store i8 1, ptr %xgene_8250, align 1, !dbg !460
  br label %if.end30, !dbg !461

if.end30:                                         ; preds = %if.then29, %land.lhs.true24, %if.end18
  %10 = load i8, ptr %xgene_8250, align 1, !dbg !462, !range !309, !noundef !310
  %tobool31 = trunc i8 %10 to i1, !dbg !462
  store i1 %tobool31, ptr %retval, align 1, !dbg !463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !463

cleanup:                                          ; preds = %if.end30, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %xgene_8250) #6, !dbg !464
  %11 = load i1, ptr %retval, align 1, !dbg !464
  ret i1 %11, !dbg !464
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !465 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !474 dso_local i32 @setup_earlycon(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !478 dso_local i32 @add_preferred_console(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !482 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !486 dso_local void @acpi_put_table(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !489 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "qdf2400_e44_present", scope: !2, file: !3, line: 22, type: !55, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.spcr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/spcr\22 -D KBUILD_BASENAME=\22spcr\22 -D KBUILD_MODNAME=\22spcr\22 -D __KBUILD_MODNAME=kmod_spcr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/spcr.ll drivers/acpi/spcr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !46, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/spcr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b75d8863e4e5343c15498ab2a85baea6")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !44, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !16, line: 68, size: 288, elements: !17)
!16 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!17 = !{!18, !23, !28, !32, !33, !37, !41, !42, !43}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !15, file: !16, line: 69, baseType: !19, size: 32)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !21)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!22}
!22 = !DISubrange(count: 4)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !15, file: !16, line: 70, baseType: !24, size: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !15, file: !16, line: 71, baseType: !29, size: 8, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !31)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !15, file: !16, line: 72, baseType: !29, size: 8, offset: 72)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !15, file: !16, line: 73, baseType: !34, size: 48, offset: 80)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 48, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 6)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !15, file: !16, line: 74, baseType: !38, size: 64, offset: 128)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 8)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !15, file: !16, line: 75, baseType: !24, size: 32, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !15, file: !16, line: 76, baseType: !19, size: 32, offset: 224)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !15, file: !16, line: 77, baseType: !24, size: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !45, line: 814, baseType: !29)
!45 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!46 = !{!47, !49, !117, !122, !127, !132, !137, !139, !144, !146, !149, !151, !153, !158, !163, !168, !0, !173, !175, !180, !182, !184, !186, !188}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qdf2400_e44_present292", scope: !2, file: !3, line: 23, type: !12, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "opts", scope: !51, file: !3, line: 87, type: !114, isLocal: true, isDefinition: true)
!51 = distinct !DISubprogram(name: "acpi_parse_spcr", scope: !3, file: !3, line: 85, type: !52, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !55, !55}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !56, line: 35, baseType: !57)
!56 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!57 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!58 = !{!59, !60, !61, !103, !105, !107, !108, !109, !110, !113}
!59 = !DILocalVariable(name: "enable_earlycon", arg: 1, scope: !51, file: !3, line: 85, type: !55)
!60 = !DILocalVariable(name: "enable_console", arg: 2, scope: !51, file: !3, line: 85, type: !55)
!61 = !DILocalVariable(name: "table", scope: !51, file: !3, line: 88, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_spcr", file: !64, line: 102, size: 640, elements: !65)
!64 = !DIFile(filename: "./include/acpi/actbl3.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ae5563d00103906288df21d0542d6a3a")
!65 = !{!66, !67, !68, !72, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !96, !97, !98, !99, !100, !101, !102}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !63, file: !64, line: 103, baseType: !15, size: 288)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "interface_type", scope: !63, file: !64, line: 104, baseType: !29, size: 8, offset: 288)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !63, file: !64, line: 105, baseType: !69, size: 24, offset: 296)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "serial_port", scope: !63, file: !64, line: 106, baseType: !73, size: 96, offset: 320)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_generic_address", file: !16, line: 90, size: 96, elements: !74)
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !73, file: !16, line: 91, baseType: !29, size: 8)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !73, file: !16, line: 92, baseType: !29, size: 8, offset: 8)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !73, file: !16, line: 93, baseType: !29, size: 8, offset: 16)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "access_width", scope: !73, file: !16, line: 94, baseType: !29, size: 8, offset: 24)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !73, file: !16, line: 95, baseType: !80, size: 64, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !82)
!82 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_type", scope: !63, file: !64, line: 107, baseType: !29, size: 8, offset: 416)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "pc_interrupt", scope: !63, file: !64, line: 108, baseType: !29, size: 8, offset: 424)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !63, file: !64, line: 109, baseType: !24, size: 32, offset: 432)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "baud_rate", scope: !63, file: !64, line: 110, baseType: !29, size: 8, offset: 464)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !63, file: !64, line: 111, baseType: !29, size: 8, offset: 472)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !63, file: !64, line: 112, baseType: !29, size: 8, offset: 480)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !63, file: !64, line: 113, baseType: !29, size: 8, offset: 488)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "terminal_type", scope: !63, file: !64, line: 114, baseType: !29, size: 8, offset: 496)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !63, file: !64, line: 115, baseType: !29, size: 8, offset: 504)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pci_device_id", scope: !63, file: !64, line: 116, baseType: !93, size: 16, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !95)
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pci_vendor_id", scope: !63, file: !64, line: 117, baseType: !93, size: 16, offset: 528)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "pci_bus", scope: !63, file: !64, line: 118, baseType: !29, size: 8, offset: 544)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "pci_device", scope: !63, file: !64, line: 119, baseType: !29, size: 8, offset: 552)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "pci_function", scope: !63, file: !64, line: 120, baseType: !29, size: 8, offset: 560)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pci_flags", scope: !63, file: !64, line: 121, baseType: !24, size: 32, offset: 568)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pci_segment", scope: !63, file: !64, line: 122, baseType: !29, size: 8, offset: 600)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !63, file: !64, line: 123, baseType: !24, size: 32, offset: 608)
!103 = !DILocalVariable(name: "status", scope: !51, file: !3, line: 89, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !45, line: 421, baseType: !24)
!105 = !DILocalVariable(name: "uart", scope: !51, file: !3, line: 90, type: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!107 = !DILocalVariable(name: "iotype", scope: !51, file: !3, line: 91, type: !106)
!108 = !DILocalVariable(name: "baud_rate", scope: !51, file: !3, line: 92, type: !54)
!109 = !DILocalVariable(name: "err", scope: !51, file: !3, line: 93, type: !54)
!110 = !DILocalVariable(name: "bit_width", scope: !111, file: !3, line: 106, type: !24)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 105, column: 67)
!112 = distinct !DILexicalBlock(scope: !51, file: !3, line: 105, column: 6)
!113 = !DILabel(scope: !51, name: "done", file: !3, line: 226)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 512, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 64)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 40, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 5)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 296, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 37)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 736, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 92)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 680, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 85)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !119, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 56, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 7)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !141, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !70)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !34, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !119, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 96, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 12)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 104, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 13)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 16)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 216, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 27)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !141, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 72, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 9)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !177, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !141, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !141, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !177, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !177, isLocal: true, isDefinition: true)
!190 = !{i32 7, !"Dwarf Version", i32 5}
!191 = !{i32 2, !"Debug Info Version", i32 3}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 8, !"cf-protection-branch", i32 1}
!194 = !{i32 4, !"function_return_thunk_extern", i32 1}
!195 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!196 = !{i32 1, !"Code Model", i32 2}
!197 = !{i32 1, !"override-stack-alignment", i32 8}
!198 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!199 = !DILocation(line: 85, column: 33, scope: !51)
!200 = !DILocation(line: 85, column: 55, scope: !51)
!201 = !DILocation(line: 88, column: 2, scope: !51)
!202 = !DILocation(line: 88, column: 26, scope: !51)
!203 = !DILocation(line: 89, column: 2, scope: !51)
!204 = !DILocation(line: 89, column: 14, scope: !51)
!205 = !DILocation(line: 90, column: 2, scope: !51)
!206 = !DILocation(line: 90, column: 8, scope: !51)
!207 = !DILocation(line: 91, column: 2, scope: !51)
!208 = !DILocation(line: 91, column: 8, scope: !51)
!209 = !DILocation(line: 92, column: 2, scope: !51)
!210 = !DILocation(line: 92, column: 6, scope: !51)
!211 = !DILocation(line: 93, column: 2, scope: !51)
!212 = !DILocation(line: 93, column: 6, scope: !51)
!213 = !DILocation(line: 95, column: 6, scope: !214)
!214 = distinct !DILexicalBlock(scope: !51, file: !3, line: 95, column: 6)
!215 = !DILocation(line: 95, column: 6, scope: !51)
!216 = !DILocation(line: 96, column: 3, scope: !214)
!217 = !DILocation(line: 98, column: 11, scope: !51)
!218 = !DILocation(line: 98, column: 9, scope: !51)
!219 = !DILocation(line: 99, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !51, file: !3, line: 99, column: 6)
!221 = !DILocation(line: 99, column: 6, scope: !51)
!222 = !DILocation(line: 100, column: 3, scope: !220)
!223 = !DILocation(line: 102, column: 6, scope: !224)
!224 = distinct !DILexicalBlock(scope: !51, file: !3, line: 102, column: 6)
!225 = !DILocation(line: 102, column: 13, scope: !224)
!226 = !DILocation(line: 102, column: 20, scope: !224)
!227 = !DILocation(line: 102, column: 29, scope: !224)
!228 = !DILocation(line: 102, column: 6, scope: !51)
!229 = !DILocation(line: 103, column: 3, scope: !230)
!230 = distinct !DILexicalBlock(scope: !224, file: !3, line: 103, column: 3)
!231 = !DILocation(line: 103, column: 3, scope: !232)
!232 = distinct !DILexicalBlock(scope: !230, file: !3, line: 103, column: 3)
!233 = !DILocation(line: 103, column: 3, scope: !224)
!234 = !DILocation(line: 105, column: 6, scope: !112)
!235 = !DILocation(line: 105, column: 13, scope: !112)
!236 = !DILocation(line: 105, column: 25, scope: !112)
!237 = !DILocation(line: 105, column: 34, scope: !112)
!238 = !DILocation(line: 105, column: 6, scope: !51)
!239 = !DILocation(line: 106, column: 3, scope: !111)
!240 = !DILocation(line: 106, column: 7, scope: !111)
!241 = !DILocation(line: 106, column: 19, scope: !111)
!242 = !DILocation(line: 106, column: 26, scope: !111)
!243 = !DILocation(line: 106, column: 38, scope: !111)
!244 = !DILocation(line: 108, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !111, file: !3, line: 108, column: 7)
!246 = !DILocation(line: 108, column: 17, scope: !245)
!247 = !DILocation(line: 108, column: 7, scope: !111)
!248 = !DILocation(line: 109, column: 4, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 109, column: 4)
!250 = distinct !DILexicalBlock(scope: !245, file: !3, line: 108, column: 40)
!251 = !DILocation(line: 109, column: 4, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !3, line: 109, column: 4)
!253 = !DILocation(line: 110, column: 14, scope: !250)
!254 = !DILocation(line: 111, column: 3, scope: !250)
!255 = !DILocation(line: 112, column: 11, scope: !111)
!256 = !DILocation(line: 112, column: 3, scope: !111)
!257 = !DILocation(line: 114, column: 4, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 114, column: 4)
!259 = distinct !DILexicalBlock(scope: !111, file: !3, line: 112, column: 47)
!260 = !DILocation(line: 114, column: 4, scope: !261)
!261 = distinct !DILexicalBlock(scope: !258, file: !3, line: 114, column: 4)
!262 = !DILocation(line: 114, column: 4, scope: !259)
!263 = !DILocation(line: 117, column: 11, scope: !259)
!264 = !DILocation(line: 118, column: 4, scope: !259)
!265 = !DILocation(line: 120, column: 11, scope: !259)
!266 = !DILocation(line: 121, column: 4, scope: !259)
!267 = !DILocation(line: 123, column: 11, scope: !259)
!268 = !DILocation(line: 124, column: 4, scope: !259)
!269 = !DILocation(line: 126, column: 2, scope: !112)
!270 = !DILocation(line: 126, column: 2, scope: !111)
!271 = !DILocation(line: 127, column: 10, scope: !112)
!272 = !DILocation(line: 129, column: 10, scope: !51)
!273 = !DILocation(line: 129, column: 17, scope: !51)
!274 = !DILocation(line: 129, column: 2, scope: !51)
!275 = !DILocation(line: 131, column: 10, scope: !276)
!276 = distinct !DILexicalBlock(scope: !51, file: !3, line: 129, column: 33)
!277 = !DILocation(line: 131, column: 3, scope: !276)
!278 = !DILocation(line: 136, column: 8, scope: !276)
!279 = !DILocation(line: 137, column: 3, scope: !276)
!280 = !DILocation(line: 142, column: 8, scope: !276)
!281 = !DILocation(line: 143, column: 3, scope: !276)
!282 = !DILocation(line: 145, column: 7, scope: !276)
!283 = !DILocation(line: 146, column: 3, scope: !276)
!284 = !DILocation(line: 149, column: 10, scope: !51)
!285 = !DILocation(line: 149, column: 17, scope: !51)
!286 = !DILocation(line: 149, column: 2, scope: !51)
!287 = !DILocation(line: 155, column: 13, scope: !288)
!288 = distinct !DILexicalBlock(scope: !51, file: !3, line: 149, column: 28)
!289 = !DILocation(line: 156, column: 3, scope: !288)
!290 = !DILocation(line: 158, column: 13, scope: !288)
!291 = !DILocation(line: 159, column: 3, scope: !288)
!292 = !DILocation(line: 161, column: 13, scope: !288)
!293 = !DILocation(line: 162, column: 3, scope: !288)
!294 = !DILocation(line: 164, column: 13, scope: !288)
!295 = !DILocation(line: 165, column: 3, scope: !288)
!296 = !DILocation(line: 167, column: 13, scope: !288)
!297 = !DILocation(line: 168, column: 3, scope: !288)
!298 = !DILocation(line: 170, column: 7, scope: !288)
!299 = !DILocation(line: 171, column: 3, scope: !288)
!300 = !DILocation(line: 192, column: 34, scope: !301)
!301 = distinct !DILexicalBlock(scope: !51, file: !3, line: 192, column: 6)
!302 = !DILocation(line: 192, column: 41, scope: !301)
!303 = !DILocation(line: 192, column: 6, scope: !301)
!304 = !DILocation(line: 192, column: 6, scope: !51)
!305 = !DILocation(line: 193, column: 23, scope: !306)
!306 = distinct !DILexicalBlock(scope: !301, file: !3, line: 192, column: 50)
!307 = !DILocation(line: 194, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !306, file: !3, line: 194, column: 7)
!309 = !{i8 0, i8 2}
!310 = !{}
!311 = !DILocation(line: 194, column: 7, scope: !306)
!312 = !DILocation(line: 195, column: 9, scope: !308)
!313 = !DILocation(line: 195, column: 4, scope: !308)
!314 = !DILocation(line: 196, column: 2, scope: !306)
!315 = !DILocation(line: 198, column: 33, scope: !316)
!316 = distinct !DILexicalBlock(scope: !51, file: !3, line: 198, column: 6)
!317 = !DILocation(line: 198, column: 6, scope: !316)
!318 = !DILocation(line: 198, column: 6, scope: !51)
!319 = !DILocation(line: 199, column: 10, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 198, column: 41)
!321 = !DILocation(line: 206, column: 13, scope: !320)
!322 = !DILocation(line: 207, column: 2, scope: !320)
!323 = !DILocation(line: 209, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !51, file: !3, line: 209, column: 6)
!325 = !DILocation(line: 209, column: 6, scope: !51)
!326 = !DILocation(line: 210, column: 48, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !3, line: 209, column: 18)
!328 = !DILocation(line: 210, column: 54, scope: !327)
!329 = !DILocation(line: 211, column: 5, scope: !327)
!330 = !DILocation(line: 211, column: 12, scope: !327)
!331 = !DILocation(line: 211, column: 24, scope: !327)
!332 = !DILocation(line: 210, column: 3, scope: !327)
!333 = !DILocation(line: 212, column: 2, scope: !327)
!334 = !DILocation(line: 213, column: 51, scope: !335)
!335 = distinct !DILexicalBlock(scope: !324, file: !3, line: 212, column: 9)
!336 = !DILocation(line: 213, column: 57, scope: !335)
!337 = !DILocation(line: 214, column: 5, scope: !335)
!338 = !DILocation(line: 214, column: 12, scope: !335)
!339 = !DILocation(line: 214, column: 24, scope: !335)
!340 = !DILocation(line: 214, column: 33, scope: !335)
!341 = !DILocation(line: 213, column: 3, scope: !335)
!342 = !DILocation(line: 217, column: 2, scope: !343)
!343 = distinct !DILexicalBlock(scope: !51, file: !3, line: 217, column: 2)
!344 = !DILocation(line: 217, column: 2, scope: !345)
!345 = distinct !DILexicalBlock(scope: !343, file: !3, line: 217, column: 2)
!346 = !DILocation(line: 219, column: 6, scope: !347)
!347 = distinct !DILexicalBlock(scope: !51, file: !3, line: 219, column: 6)
!348 = !DILocation(line: 219, column: 6, scope: !51)
!349 = !DILocation(line: 220, column: 3, scope: !347)
!350 = !DILocation(line: 222, column: 6, scope: !351)
!351 = distinct !DILexicalBlock(scope: !51, file: !3, line: 222, column: 6)
!352 = !DILocation(line: 222, column: 6, scope: !51)
!353 = !DILocation(line: 223, column: 31, scope: !351)
!354 = !DILocation(line: 223, column: 54, scope: !351)
!355 = !DILocation(line: 223, column: 47, scope: !351)
!356 = !DILocation(line: 223, column: 45, scope: !351)
!357 = !DILocation(line: 223, column: 60, scope: !351)
!358 = !DILocation(line: 223, column: 9, scope: !351)
!359 = !DILocation(line: 223, column: 7, scope: !351)
!360 = !DILocation(line: 223, column: 3, scope: !351)
!361 = !DILocation(line: 225, column: 7, scope: !351)
!362 = !DILocation(line: 226, column: 1, scope: !51)
!363 = !DILocation(line: 227, column: 45, scope: !51)
!364 = !DILocation(line: 227, column: 2, scope: !51)
!365 = !DILocation(line: 228, column: 9, scope: !51)
!366 = !DILocation(line: 228, column: 2, scope: !51)
!367 = !DILocation(line: 229, column: 1, scope: !51)
!368 = !DISubprogram(name: "acpi_get_table", scope: !369, file: !369, line: 489, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!370 = !DISubroutineType(types: !371)
!371 = !{!104, !372, !24, !13}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !45, line: 423, baseType: !106)
!373 = !DISubprogram(name: "_printk", scope: !374, file: !374, line: 153, type: !375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!375 = !DISubroutineType(types: !376)
!376 = !{!54, !377, null}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!379 = distinct !DISubprogram(name: "qdf2400_erratum_44_present", scope: !3, file: !3, line: 30, type: !380, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{!55, !14}
!382 = !{!383}
!383 = !DILocalVariable(name: "h", arg: 1, scope: !379, file: !3, line: 30, type: !14)
!384 = !DILocation(line: 30, column: 66, scope: !379)
!385 = !DILocation(line: 32, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !379, file: !3, line: 32, column: 6)
!387 = !DILocation(line: 32, column: 16, scope: !386)
!388 = !DILocation(line: 32, column: 6, scope: !386)
!389 = !DILocation(line: 32, column: 6, scope: !379)
!390 = !DILocation(line: 33, column: 3, scope: !386)
!391 = !DILocation(line: 35, column: 14, scope: !392)
!392 = distinct !DILexicalBlock(scope: !379, file: !3, line: 35, column: 6)
!393 = !DILocation(line: 35, column: 17, scope: !392)
!394 = !DILocation(line: 35, column: 7, scope: !392)
!395 = !DILocation(line: 35, column: 6, scope: !379)
!396 = !DILocation(line: 36, column: 3, scope: !392)
!397 = !DILocation(line: 38, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !379, file: !3, line: 38, column: 6)
!399 = !DILocation(line: 38, column: 17, scope: !398)
!400 = !DILocation(line: 38, column: 7, scope: !398)
!401 = !DILocation(line: 38, column: 67, scope: !398)
!402 = !DILocation(line: 39, column: 4, scope: !398)
!403 = !DILocation(line: 39, column: 7, scope: !398)
!404 = !DILocation(line: 39, column: 20, scope: !398)
!405 = !DILocation(line: 38, column: 6, scope: !379)
!406 = !DILocation(line: 40, column: 3, scope: !398)
!407 = !DILocation(line: 42, column: 2, scope: !379)
!408 = !DILocation(line: 43, column: 1, scope: !379)
!409 = distinct !DISubprogram(name: "xgene_8250_erratum_present", scope: !3, file: !3, line: 50, type: !410, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!55, !62}
!412 = !{!413, !414}
!413 = !DILocalVariable(name: "tb", arg: 1, scope: !409, file: !3, line: 50, type: !62)
!414 = !DILocalVariable(name: "xgene_8250", scope: !409, file: !3, line: 52, type: !55)
!415 = !DILocation(line: 50, column: 64, scope: !409)
!416 = !DILocation(line: 52, column: 2, scope: !409)
!417 = !DILocation(line: 52, column: 7, scope: !409)
!418 = !DILocation(line: 54, column: 6, scope: !419)
!419 = distinct !DILexicalBlock(scope: !409, file: !3, line: 54, column: 6)
!420 = !DILocation(line: 54, column: 10, scope: !419)
!421 = !DILocation(line: 54, column: 25, scope: !419)
!422 = !DILocation(line: 54, column: 6, scope: !409)
!423 = !DILocation(line: 55, column: 3, scope: !419)
!424 = !DILocation(line: 57, column: 13, scope: !425)
!425 = distinct !DILexicalBlock(scope: !409, file: !3, line: 57, column: 6)
!426 = !DILocation(line: 57, column: 17, scope: !425)
!427 = !DILocation(line: 57, column: 24, scope: !425)
!428 = !DILocation(line: 57, column: 6, scope: !425)
!429 = !DILocation(line: 57, column: 60, scope: !425)
!430 = !DILocation(line: 58, column: 13, scope: !425)
!431 = !DILocation(line: 58, column: 17, scope: !425)
!432 = !DILocation(line: 58, column: 24, scope: !425)
!433 = !DILocation(line: 58, column: 6, scope: !425)
!434 = !DILocation(line: 57, column: 6, scope: !409)
!435 = !DILocation(line: 59, column: 3, scope: !425)
!436 = !DILocation(line: 61, column: 14, scope: !437)
!437 = distinct !DILexicalBlock(scope: !409, file: !3, line: 61, column: 6)
!438 = !DILocation(line: 61, column: 18, scope: !437)
!439 = !DILocation(line: 61, column: 25, scope: !437)
!440 = !DILocation(line: 61, column: 7, scope: !437)
!441 = !DILocation(line: 62, column: 30, scope: !437)
!442 = !DILocation(line: 62, column: 33, scope: !437)
!443 = !DILocation(line: 62, column: 37, scope: !437)
!444 = !DILocation(line: 62, column: 44, scope: !437)
!445 = !DILocation(line: 62, column: 57, scope: !437)
!446 = !DILocation(line: 61, column: 6, scope: !409)
!447 = !DILocation(line: 63, column: 14, scope: !437)
!448 = !DILocation(line: 63, column: 3, scope: !437)
!449 = !DILocation(line: 65, column: 14, scope: !450)
!450 = distinct !DILexicalBlock(scope: !409, file: !3, line: 65, column: 6)
!451 = !DILocation(line: 65, column: 18, scope: !450)
!452 = !DILocation(line: 65, column: 25, scope: !450)
!453 = !DILocation(line: 65, column: 7, scope: !450)
!454 = !DILocation(line: 66, column: 30, scope: !450)
!455 = !DILocation(line: 66, column: 33, scope: !450)
!456 = !DILocation(line: 66, column: 37, scope: !450)
!457 = !DILocation(line: 66, column: 44, scope: !450)
!458 = !DILocation(line: 66, column: 57, scope: !450)
!459 = !DILocation(line: 65, column: 6, scope: !409)
!460 = !DILocation(line: 67, column: 14, scope: !450)
!461 = !DILocation(line: 67, column: 3, scope: !450)
!462 = !DILocation(line: 69, column: 9, scope: !409)
!463 = !DILocation(line: 69, column: 2, scope: !409)
!464 = !DILocation(line: 70, column: 1, scope: !409)
!465 = !DISubprogram(name: "snprintf", scope: !466, file: !466, line: 12, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!467 = !DISubroutineType(types: !468)
!468 = !{!54, !106, !469, !377, null}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 61, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !471, line: 72, baseType: !472)
!471 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !471, line: 16, baseType: !473)
!473 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!474 = !DISubprogram(name: "setup_earlycon", scope: !475, file: !475, line: 944, type: !476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DIFile(filename: "./include/linux/serial_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7055ea58a7a181cb3963c528b528c8b1")
!476 = !DISubroutineType(types: !477)
!477 = !{!54, !106}
!478 = !DISubprogram(name: "add_preferred_console", scope: !479, file: !479, line: 343, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!479 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!480 = !DISubroutineType(types: !481)
!481 = !{!54, !106, !54, !106}
!482 = !DISubprogram(name: "strlen", scope: !483, file: !483, line: 128, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!483 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!484 = !DISubroutineType(types: !485)
!485 = !{!473, !377}
!486 = !DISubprogram(name: "acpi_put_table", scope: !369, file: !369, line: 493, type: !487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !14}
!489 = !DISubprogram(name: "memcmp", scope: !483, file: !483, line: 196, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DISubroutineType(types: !491)
!491 = !{!54, !492, !492, !470}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
