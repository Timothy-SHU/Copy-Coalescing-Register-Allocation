; ModuleID = 'drivers/acpi/acpica/hwvalid.c'
source_filename = "drivers/acpi/acpica/hwvalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_port_info = type { ptr, i16, i16, i8 }

@acpi_gbl_truncate_io_addresses = external dso_local global i8, align 1
@_acpi_module_name = internal constant [8 x i8] c"hwvalid\00", align 1, !dbg !0
@.str = private unnamed_addr constant [30 x i8] c"Bad BitWidth parameter: %8.8X\00", align 1, !dbg !20
@acpi_protected_ports = internal constant [17 x %struct.acpi_port_info] [%struct.acpi_port_info { ptr @.str.2, i16 0, i16 15, i8 2 }, %struct.acpi_port_info { ptr @.str.3, i16 32, i16 33, i8 0 }, %struct.acpi_port_info { ptr @.str.4, i16 64, i16 67, i8 2 }, %struct.acpi_port_info { ptr @.str.5, i16 72, i16 75, i8 2 }, %struct.acpi_port_info { ptr @.str.6, i16 112, i16 113, i8 2 }, %struct.acpi_port_info { ptr @.str.7, i16 116, i16 118, i8 2 }, %struct.acpi_port_info { ptr @.str.8, i16 129, i16 131, i8 2 }, %struct.acpi_port_info { ptr @.str.9, i16 135, i16 135, i8 2 }, %struct.acpi_port_info { ptr @.str.10, i16 137, i16 139, i8 2 }, %struct.acpi_port_info { ptr @.str.11, i16 143, i16 143, i8 2 }, %struct.acpi_port_info { ptr @.str.12, i16 144, i16 145, i8 2 }, %struct.acpi_port_info { ptr @.str.13, i16 147, i16 148, i8 2 }, %struct.acpi_port_info { ptr @.str.14, i16 150, i16 151, i8 2 }, %struct.acpi_port_info { ptr @.str.15, i16 160, i16 161, i8 0 }, %struct.acpi_port_info { ptr @.str.16, i16 192, i16 223, i8 2 }, %struct.acpi_port_info { ptr @.str.17, i16 1232, i16 1233, i8 0 }, %struct.acpi_port_info { ptr @.str.18, i16 3320, i16 3327, i8 2 }], align 16, !dbg !74
@.str.1 = private unnamed_addr constant [59 x i8] c"Illegal I/O port address/length above 64K: %8.8X%8.8X/0x%X\00", align 1, !dbg !26
@acpi_gbl_osi_data = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1, !dbg !31
@.str.3 = private unnamed_addr constant [5 x i8] c"PIC0\00", align 1, !dbg !36
@.str.4 = private unnamed_addr constant [5 x i8] c"PIT1\00", align 1, !dbg !41
@.str.5 = private unnamed_addr constant [5 x i8] c"PIT2\00", align 1, !dbg !43
@.str.6 = private unnamed_addr constant [4 x i8] c"RTC\00", align 1, !dbg !45
@.str.7 = private unnamed_addr constant [5 x i8] c"CMOS\00", align 1, !dbg !47
@.str.8 = private unnamed_addr constant [5 x i8] c"DMA1\00", align 1, !dbg !49
@.str.9 = private unnamed_addr constant [6 x i8] c"DMA1L\00", align 1, !dbg !51
@.str.10 = private unnamed_addr constant [5 x i8] c"DMA2\00", align 1, !dbg !56
@.str.11 = private unnamed_addr constant [6 x i8] c"DMA2L\00", align 1, !dbg !58
@.str.12 = private unnamed_addr constant [5 x i8] c"ARBC\00", align 1, !dbg !60
@.str.13 = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1, !dbg !62
@.str.14 = private unnamed_addr constant [4 x i8] c"POS\00", align 1, !dbg !64
@.str.15 = private unnamed_addr constant [5 x i8] c"PIC1\00", align 1, !dbg !66
@.str.16 = private unnamed_addr constant [5 x i8] c"IDMA\00", align 1, !dbg !68
@.str.17 = private unnamed_addr constant [5 x i8] c"ELCR\00", align 1, !dbg !70
@.str.18 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1, !dbg !72

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_read_port(i64 noundef %address, ptr noundef %value, i32 noundef %width) #0 align 16 !dbg !104 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %value.addr = alloca ptr, align 8
  %width.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %one_byte = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !109, metadata !DIExpression()), !dbg !115
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !110, metadata !DIExpression()), !dbg !116
  store i32 %width, ptr %width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !111, metadata !DIExpression()), !dbg !117
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !118
  call void @llvm.dbg.declare(metadata ptr %status, metadata !112, metadata !DIExpression()), !dbg !119
  call void @llvm.lifetime.start.p0(i64 4, ptr %one_byte) #4, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %one_byte, metadata !113, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %i, metadata !114, metadata !DIExpression()), !dbg !123
  %0 = load i8, ptr @acpi_gbl_truncate_io_addresses, align 1, !dbg !124
  %tobool = icmp ne i8 %0, 0, !dbg !124
  br i1 %tobool, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %address.addr, align 8, !dbg !127
  %and = and i64 %1, 65535, !dbg !127
  store i64 %and, ptr %address.addr, align 8, !dbg !127
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %address.addr, align 8, !dbg !130
  %3 = load i32, ptr %width.addr, align 4, !dbg !131
  %call = call i32 @acpi_hw_validate_io_request(i64 noundef %2, i32 noundef %3) #5, !dbg !132
  store i32 %call, ptr %status, align 4, !dbg !133
  %4 = load i32, ptr %status, align 4, !dbg !134
  %tobool1 = icmp ne i32 %4, 0, !dbg !134
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !136

if.then2:                                         ; preds = %if.end
  %5 = load i64, ptr %address.addr, align 8, !dbg !137
  %6 = load ptr, ptr %value.addr, align 8, !dbg !139
  %7 = load i32, ptr %width.addr, align 4, !dbg !140
  %call3 = call i32 @acpi_os_read_port(i64 noundef %5, ptr noundef %6, i32 noundef %7) #5, !dbg !141
  store i32 %call3, ptr %status, align 4, !dbg !142
  %8 = load i32, ptr %status, align 4, !dbg !143
  store i32 %8, ptr %retval, align 4, !dbg !144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !144

if.end4:                                          ; preds = %if.end
  %9 = load i32, ptr %status, align 4, !dbg !145
  %cmp = icmp ne i32 %9, 12320, !dbg !147
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !148

if.then5:                                         ; preds = %if.end4
  %10 = load i32, ptr %status, align 4, !dbg !149
  store i32 %10, ptr %retval, align 4, !dbg !151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !151

if.end6:                                          ; preds = %if.end4
  store i32 0, ptr %i, align 4, !dbg !152
  %11 = load ptr, ptr %value.addr, align 8, !dbg !154
  store i32 0, ptr %11, align 4, !dbg !155
  br label %for.cond, !dbg !156

for.cond:                                         ; preds = %for.inc, %if.end6
  %12 = load i32, ptr %i, align 4, !dbg !157
  %13 = load i32, ptr %width.addr, align 4, !dbg !159
  %cmp7 = icmp ult i32 %12, %13, !dbg !160
  br i1 %cmp7, label %for.body, label %for.end, !dbg !161

for.body:                                         ; preds = %for.cond
  %14 = load i64, ptr %address.addr, align 8, !dbg !162
  %call8 = call i32 @acpi_hw_validate_io_request(i64 noundef %14, i32 noundef 8) #5, !dbg !165
  %cmp9 = icmp eq i32 %call8, 0, !dbg !166
  br i1 %cmp9, label %if.then10, label %if.end15, !dbg !167

if.then10:                                        ; preds = %for.body
  %15 = load i64, ptr %address.addr, align 8, !dbg !168
  %call11 = call i32 @acpi_os_read_port(i64 noundef %15, ptr noundef %one_byte, i32 noundef 8) #5, !dbg !170
  store i32 %call11, ptr %status, align 4, !dbg !171
  %16 = load i32, ptr %status, align 4, !dbg !172
  %tobool12 = icmp ne i32 %16, 0, !dbg !172
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !174

if.then13:                                        ; preds = %if.then10
  %17 = load i32, ptr %status, align 4, !dbg !175
  store i32 %17, ptr %retval, align 4, !dbg !177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !177

if.end14:                                         ; preds = %if.then10
  %18 = load i32, ptr %one_byte, align 4, !dbg !178
  %19 = load i32, ptr %i, align 4, !dbg !179
  %shl = shl i32 %18, %19, !dbg !180
  %20 = load ptr, ptr %value.addr, align 8, !dbg !181
  %21 = load i32, ptr %20, align 4, !dbg !182
  %or = or i32 %21, %shl, !dbg !182
  store i32 %or, ptr %20, align 4, !dbg !182
  br label %if.end15, !dbg !183

if.end15:                                         ; preds = %if.end14, %for.body
  %22 = load i64, ptr %address.addr, align 8, !dbg !184
  %inc = add i64 %22, 1, !dbg !184
  store i64 %inc, ptr %address.addr, align 8, !dbg !184
  br label %for.inc, !dbg !185

for.inc:                                          ; preds = %if.end15
  %23 = load i32, ptr %i, align 4, !dbg !186
  %add = add i32 %23, 8, !dbg !186
  store i32 %add, ptr %i, align 4, !dbg !186
  br label %for.cond, !dbg !187, !llvm.loop !188

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !192

cleanup:                                          ; preds = %for.end, %if.then13, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !193
  call void @llvm.lifetime.end.p0(i64 4, ptr %one_byte) #4, !dbg !193
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !193
  %24 = load i32, ptr %retval, align 4, !dbg !193
  ret i32 %24, !dbg !193
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_validate_io_request(i64 noundef %address, i32 noundef %bit_width) #0 align 16 !dbg !194 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %byte_width = alloca i32, align 4
  %last_address = alloca i64, align 8
  %port_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !198, metadata !DIExpression()), !dbg !205
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !199, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %i, metadata !200, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 4, ptr %byte_width) #4, !dbg !209
  call void @llvm.dbg.declare(metadata ptr %byte_width, metadata !201, metadata !DIExpression()), !dbg !210
  call void @llvm.lifetime.start.p0(i64 8, ptr %last_address) #4, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %last_address, metadata !202, metadata !DIExpression()), !dbg !212
  call void @llvm.lifetime.start.p0(i64 8, ptr %port_info) #4, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %port_info, metadata !203, metadata !DIExpression()), !dbg !214
  %0 = load i32, ptr %bit_width.addr, align 4, !dbg !215
  %cmp = icmp ne i32 %0, 8, !dbg !217
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !218

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %bit_width.addr, align 4, !dbg !219
  %cmp1 = icmp ne i32 %1, 16, !dbg !220
  br i1 %cmp1, label %land.lhs.true2, label %if.end, !dbg !221

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %bit_width.addr, align 4, !dbg !222
  %cmp3 = icmp ne i32 %2, 32, !dbg !223
  br i1 %cmp3, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %land.lhs.true2
  %3 = load i32, ptr %bit_width.addr, align 4, !dbg !225
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 102, ptr noundef @.str, i32 noundef %3) #5, !dbg !225
  store i32 4097, ptr %retval, align 4, !dbg !227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !227

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  store ptr @acpi_protected_ports, ptr %port_info, align 8, !dbg !228
  %4 = load i32, ptr %bit_width.addr, align 4, !dbg !229
  %shr = lshr i32 %4, 3, !dbg !229
  store i32 %shr, ptr %byte_width, align 4, !dbg !230
  %5 = load i64, ptr %address.addr, align 8, !dbg !231
  %6 = load i32, ptr %byte_width, align 4, !dbg !232
  %conv = zext i32 %6 to i64, !dbg !232
  %add = add i64 %5, %conv, !dbg !233
  %sub = sub i64 %add, 1, !dbg !234
  store i64 %sub, ptr %last_address, align 8, !dbg !235
  %7 = load i64, ptr %last_address, align 8, !dbg !236
  %cmp4 = icmp ugt i64 %7, 65535, !dbg !238
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !239

if.then6:                                         ; preds = %if.end
  %8 = load i64, ptr %address.addr, align 8, !dbg !240
  %shr7 = lshr i64 %8, 32, !dbg !240
  %conv8 = trunc i64 %shr7 to i32, !dbg !240
  %9 = load i64, ptr %address.addr, align 8, !dbg !240
  %conv9 = trunc i64 %9 to i32, !dbg !240
  %10 = load i32, ptr %byte_width, align 4, !dbg !240
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 119, ptr noundef @.str.1, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %10) #5, !dbg !240
  store i32 16, ptr %retval, align 4, !dbg !242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

if.end10:                                         ; preds = %if.end
  %11 = load i64, ptr %address.addr, align 8, !dbg !243
  %cmp11 = icmp ugt i64 %11, 3327, !dbg !245
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !246

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4, !dbg !247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !247

if.end14:                                         ; preds = %if.end10
  store i32 0, ptr %i, align 4, !dbg !249
  br label %for.cond, !dbg !251

for.cond:                                         ; preds = %for.inc, %if.end14
  %12 = load i32, ptr %i, align 4, !dbg !252
  %conv15 = zext i32 %12 to i64, !dbg !252
  %cmp16 = icmp ult i64 %conv15, 17, !dbg !254
  br i1 %cmp16, label %for.body, label %for.end, !dbg !255

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %address.addr, align 8, !dbg !256
  %14 = load ptr, ptr %port_info, align 8, !dbg !259
  %end = getelementptr inbounds %struct.acpi_port_info, ptr %14, i32 0, i32 2, !dbg !260
  %15 = load i16, ptr %end, align 2, !dbg !260
  %conv18 = zext i16 %15 to i64, !dbg !259
  %cmp19 = icmp ule i64 %13, %conv18, !dbg !261
  br i1 %cmp19, label %land.lhs.true21, label %if.end36, !dbg !262

land.lhs.true21:                                  ; preds = %for.body
  %16 = load i64, ptr %last_address, align 8, !dbg !263
  %17 = load ptr, ptr %port_info, align 8, !dbg !264
  %start = getelementptr inbounds %struct.acpi_port_info, ptr %17, i32 0, i32 1, !dbg !265
  %18 = load i16, ptr %start, align 8, !dbg !265
  %conv22 = zext i16 %18 to i64, !dbg !264
  %cmp23 = icmp uge i64 %16, %conv22, !dbg !266
  br i1 %cmp23, label %if.then25, label %if.end36, !dbg !267

if.then25:                                        ; preds = %land.lhs.true21
  %19 = load ptr, ptr %port_info, align 8, !dbg !268
  %osi_dependency = getelementptr inbounds %struct.acpi_port_info, ptr %19, i32 0, i32 3, !dbg !271
  %20 = load i8, ptr %osi_dependency, align 4, !dbg !271
  %conv26 = zext i8 %20 to i32, !dbg !268
  %cmp27 = icmp eq i32 %conv26, 0, !dbg !272
  br i1 %cmp27, label %if.then34, label %lor.lhs.false, !dbg !273

lor.lhs.false:                                    ; preds = %if.then25
  %21 = load i8, ptr @acpi_gbl_osi_data, align 1, !dbg !274
  %conv29 = zext i8 %21 to i32, !dbg !274
  %22 = load ptr, ptr %port_info, align 8, !dbg !275
  %osi_dependency30 = getelementptr inbounds %struct.acpi_port_info, ptr %22, i32 0, i32 3, !dbg !276
  %23 = load i8, ptr %osi_dependency30, align 4, !dbg !276
  %conv31 = zext i8 %23 to i32, !dbg !275
  %cmp32 = icmp eq i32 %conv29, %conv31, !dbg !277
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !278

if.then34:                                        ; preds = %lor.lhs.false, %if.then25
  store i32 12320, ptr %retval, align 4, !dbg !279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !279

if.end35:                                         ; preds = %lor.lhs.false
  br label %if.end36, !dbg !281

if.end36:                                         ; preds = %if.end35, %land.lhs.true21, %for.body
  %24 = load i64, ptr %last_address, align 8, !dbg !282
  %25 = load ptr, ptr %port_info, align 8, !dbg !284
  %end37 = getelementptr inbounds %struct.acpi_port_info, ptr %25, i32 0, i32 2, !dbg !285
  %26 = load i16, ptr %end37, align 2, !dbg !285
  %conv38 = zext i16 %26 to i64, !dbg !284
  %cmp39 = icmp ule i64 %24, %conv38, !dbg !286
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !287

if.then41:                                        ; preds = %if.end36
  br label %for.end, !dbg !288

if.end42:                                         ; preds = %if.end36
  br label %for.inc, !dbg !290

for.inc:                                          ; preds = %if.end42
  %27 = load i32, ptr %i, align 4, !dbg !291
  %inc = add i32 %27, 1, !dbg !291
  store i32 %inc, ptr %i, align 4, !dbg !291
  %28 = load ptr, ptr %port_info, align 8, !dbg !292
  %incdec.ptr = getelementptr %struct.acpi_port_info, ptr %28, i32 1, !dbg !292
  store ptr %incdec.ptr, ptr %port_info, align 8, !dbg !292
  br label %for.cond, !dbg !293, !llvm.loop !294

for.end:                                          ; preds = %if.then41, %for.cond
  store i32 0, ptr %retval, align 4, !dbg !296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !296

cleanup:                                          ; preds = %for.end, %if.then34, %if.then13, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port_info) #4, !dbg !297
  call void @llvm.lifetime.end.p0(i64 8, ptr %last_address) #4, !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %byte_width) #4, !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !297
  %29 = load i32, ptr %retval, align 4, !dbg !297
  ret i32 %29, !dbg !297
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !298 dso_local i32 @acpi_os_read_port(i64 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_write_port(i64 noundef %address, i32 noundef %value, i32 noundef %width) #0 align 16 !dbg !300 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %value.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !304, metadata !DIExpression()), !dbg !309
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !305, metadata !DIExpression()), !dbg !310
  store i32 %width, ptr %width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %width.addr, metadata !306, metadata !DIExpression()), !dbg !311
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %status, metadata !307, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %i, metadata !308, metadata !DIExpression()), !dbg !315
  %0 = load i8, ptr @acpi_gbl_truncate_io_addresses, align 1, !dbg !316
  %tobool = icmp ne i8 %0, 0, !dbg !316
  br i1 %tobool, label %if.then, label %if.end, !dbg !318

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %address.addr, align 8, !dbg !319
  %and = and i64 %1, 65535, !dbg !319
  store i64 %and, ptr %address.addr, align 8, !dbg !319
  br label %if.end, !dbg !321

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %address.addr, align 8, !dbg !322
  %3 = load i32, ptr %width.addr, align 4, !dbg !323
  %call = call i32 @acpi_hw_validate_io_request(i64 noundef %2, i32 noundef %3) #5, !dbg !324
  store i32 %call, ptr %status, align 4, !dbg !325
  %4 = load i32, ptr %status, align 4, !dbg !326
  %tobool1 = icmp ne i32 %4, 0, !dbg !326
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !328

if.then2:                                         ; preds = %if.end
  %5 = load i64, ptr %address.addr, align 8, !dbg !329
  %6 = load i32, ptr %value.addr, align 4, !dbg !331
  %7 = load i32, ptr %width.addr, align 4, !dbg !332
  %call3 = call i32 @acpi_os_write_port(i64 noundef %5, i32 noundef %6, i32 noundef %7) #5, !dbg !333
  store i32 %call3, ptr %status, align 4, !dbg !334
  %8 = load i32, ptr %status, align 4, !dbg !335
  store i32 %8, ptr %retval, align 4, !dbg !336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !336

if.end4:                                          ; preds = %if.end
  %9 = load i32, ptr %status, align 4, !dbg !337
  %cmp = icmp ne i32 %9, 12320, !dbg !339
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !340

if.then5:                                         ; preds = %if.end4
  %10 = load i32, ptr %status, align 4, !dbg !341
  store i32 %10, ptr %retval, align 4, !dbg !343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !343

if.end6:                                          ; preds = %if.end4
  store i32 0, ptr %i, align 4, !dbg !344
  br label %for.cond, !dbg !346

for.cond:                                         ; preds = %for.inc, %if.end6
  %11 = load i32, ptr %i, align 4, !dbg !347
  %12 = load i32, ptr %width.addr, align 4, !dbg !349
  %cmp7 = icmp ult i32 %11, %12, !dbg !350
  br i1 %cmp7, label %for.body, label %for.end, !dbg !351

for.body:                                         ; preds = %for.cond
  %13 = load i64, ptr %address.addr, align 8, !dbg !352
  %call8 = call i32 @acpi_hw_validate_io_request(i64 noundef %13, i32 noundef 8) #5, !dbg !355
  %cmp9 = icmp eq i32 %call8, 0, !dbg !356
  br i1 %cmp9, label %if.then10, label %if.end16, !dbg !357

if.then10:                                        ; preds = %for.body
  %14 = load i64, ptr %address.addr, align 8, !dbg !358
  %15 = load i32, ptr %value.addr, align 4, !dbg !360
  %16 = load i32, ptr %i, align 4, !dbg !361
  %shr = lshr i32 %15, %16, !dbg !362
  %and11 = and i32 %shr, 255, !dbg !363
  %call12 = call i32 @acpi_os_write_port(i64 noundef %14, i32 noundef %and11, i32 noundef 8) #5, !dbg !364
  store i32 %call12, ptr %status, align 4, !dbg !365
  %17 = load i32, ptr %status, align 4, !dbg !366
  %tobool13 = icmp ne i32 %17, 0, !dbg !366
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !368

if.then14:                                        ; preds = %if.then10
  %18 = load i32, ptr %status, align 4, !dbg !369
  store i32 %18, ptr %retval, align 4, !dbg !371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !371

if.end15:                                         ; preds = %if.then10
  br label %if.end16, !dbg !372

if.end16:                                         ; preds = %if.end15, %for.body
  %19 = load i64, ptr %address.addr, align 8, !dbg !373
  %inc = add i64 %19, 1, !dbg !373
  store i64 %inc, ptr %address.addr, align 8, !dbg !373
  br label %for.inc, !dbg !374

for.inc:                                          ; preds = %if.end16
  %20 = load i32, ptr %i, align 4, !dbg !375
  %add = add i32 %20, 8, !dbg !375
  store i32 %add, ptr %i, align 4, !dbg !375
  br label %for.cond, !dbg !376, !llvm.loop !377

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !379

cleanup:                                          ; preds = %for.end, %if.then14, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !380
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !380
  %21 = load i32, ptr %retval, align 4, !dbg !380
  ret i32 %21, !dbg !380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !381 dso_local i32 @acpi_os_write_port(i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_validate_io_block(i64 noundef %address, i32 noundef %bit_width, i32 noundef %count) #0 align 16 !dbg !382 {
entry:
  %retval = alloca i32, align 4
  %address.addr = alloca i64, align 8
  %bit_width.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !386, metadata !DIExpression()), !dbg !390
  store i32 %bit_width, ptr %bit_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit_width.addr, metadata !387, metadata !DIExpression()), !dbg !391
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !388, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %status, metadata !389, metadata !DIExpression()), !dbg !394
  br label %while.cond, !dbg !395

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !396
  %dec = add i32 %0, -1, !dbg !396
  store i32 %dec, ptr %count.addr, align 4, !dbg !396
  %tobool = icmp ne i32 %0, 0, !dbg !395
  br i1 %tobool, label %while.body, label %while.end, !dbg !395

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %address.addr, align 8, !dbg !397
  %2 = load i32, ptr %bit_width.addr, align 4, !dbg !399
  %call = call i32 @acpi_hw_validate_io_request(i64 noundef %1, i32 noundef %2) #5, !dbg !400
  store i32 %call, ptr %status, align 4, !dbg !401
  %3 = load i32, ptr %status, align 4, !dbg !402
  %tobool1 = icmp ne i32 %3, 0, !dbg !402
  br i1 %tobool1, label %if.then, label %if.end, !dbg !404

if.then:                                          ; preds = %while.body
  %4 = load i32, ptr %status, align 4, !dbg !405
  store i32 %4, ptr %retval, align 4, !dbg !405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !405

if.end:                                           ; preds = %while.body
  %5 = load i32, ptr %bit_width.addr, align 4, !dbg !406
  %shr = lshr i32 %5, 3, !dbg !406
  %conv = zext i32 %shr to i64, !dbg !406
  %6 = load i64, ptr %address.addr, align 8, !dbg !407
  %add = add i64 %6, %conv, !dbg !407
  store i64 %add, ptr %address.addr, align 8, !dbg !407
  br label %while.cond, !dbg !395, !llvm.loop !408

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !410

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !411
  %7 = load i32, ptr %retval, align 4, !dbg !411
  ret i32 %7, !dbg !411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !412 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !91, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.hwvalid.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22hwvalid\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/hwvalid.ll drivers/acpi/acpica/hwvalid.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/hwvalid.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "490bb81c0fe0f53513afce35cd2b63ef")
!4 = !{!5, !10, !15, !12, !16}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !6, line: 19, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !8, line: 24, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !11, line: 421, baseType: !12)
!11 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !14)
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !11, line: 128, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !18)
!18 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!19 = !{!20, !26, !0, !31, !36, !41, !43, !45, !47, !49, !51, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 240, elements: !24)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !{!25}
!25 = !DISubrange(count: 30)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 472, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 59)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 4)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 40, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 5)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !38, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !38, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !33, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !38, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !38, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 48, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 6)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !38, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !53, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !38, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !53, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !33, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !38, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !38, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !38, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !33, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "acpi_protected_ports", scope: !2, file: !3, line: 51, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2176, elements: !89)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_port_info", file: !79, line: 1074, size: 128, elements: !80)
!79 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!80 = !{!81, !83, !84, !85}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !78, file: !79, line: 1075, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !78, file: !79, line: 1076, baseType: !5, size: 16, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !78, file: !79, line: 1077, baseType: !5, size: 16, offset: 80)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "osi_dependency", scope: !78, file: !79, line: 1078, baseType: !86, size: 8, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !6, line: 17, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !8, line: 21, baseType: !88)
!88 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !{!90}
!90 = !DISubrange(count: 17)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !93)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!93 = !{!94}
!94 = !DISubrange(count: 8)
!95 = !{i32 7, !"Dwarf Version", i32 5}
!96 = !{i32 2, !"Debug Info Version", i32 3}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 8, !"cf-protection-branch", i32 1}
!99 = !{i32 4, !"function_return_thunk_extern", i32 1}
!100 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!101 = !{i32 1, !"Code Model", i32 2}
!102 = !{i32 1, !"override-stack-alignment", i32 8}
!103 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!104 = distinct !DISubprogram(name: "acpi_hw_read_port", scope: !3, file: !3, line: 187, type: !105, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !108)
!105 = !DISubroutineType(types: !106)
!106 = !{!10, !15, !107, !12}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!108 = !{!109, !110, !111, !112, !113, !114}
!109 = !DILocalVariable(name: "address", arg: 1, scope: !104, file: !3, line: 187, type: !15)
!110 = !DILocalVariable(name: "value", arg: 2, scope: !104, file: !3, line: 187, type: !107)
!111 = !DILocalVariable(name: "width", arg: 3, scope: !104, file: !3, line: 187, type: !12)
!112 = !DILocalVariable(name: "status", scope: !104, file: !3, line: 189, type: !10)
!113 = !DILocalVariable(name: "one_byte", scope: !104, file: !3, line: 190, type: !12)
!114 = !DILocalVariable(name: "i", scope: !104, file: !3, line: 191, type: !12)
!115 = !DILocation(line: 187, column: 47, scope: !104)
!116 = !DILocation(line: 187, column: 61, scope: !104)
!117 = !DILocation(line: 187, column: 72, scope: !104)
!118 = !DILocation(line: 189, column: 2, scope: !104)
!119 = !DILocation(line: 189, column: 14, scope: !104)
!120 = !DILocation(line: 190, column: 2, scope: !104)
!121 = !DILocation(line: 190, column: 6, scope: !104)
!122 = !DILocation(line: 191, column: 2, scope: !104)
!123 = !DILocation(line: 191, column: 6, scope: !104)
!124 = !DILocation(line: 195, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !104, file: !3, line: 195, column: 6)
!126 = !DILocation(line: 195, column: 6, scope: !104)
!127 = !DILocation(line: 196, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !3, line: 195, column: 38)
!129 = !DILocation(line: 197, column: 2, scope: !128)
!130 = !DILocation(line: 201, column: 39, scope: !104)
!131 = !DILocation(line: 201, column: 48, scope: !104)
!132 = !DILocation(line: 201, column: 11, scope: !104)
!133 = !DILocation(line: 201, column: 9, scope: !104)
!134 = !DILocation(line: 202, column: 6, scope: !135)
!135 = distinct !DILexicalBlock(scope: !104, file: !3, line: 202, column: 6)
!136 = !DILocation(line: 202, column: 6, scope: !104)
!137 = !DILocation(line: 203, column: 30, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 202, column: 28)
!139 = !DILocation(line: 203, column: 39, scope: !138)
!140 = !DILocation(line: 203, column: 46, scope: !138)
!141 = !DILocation(line: 203, column: 12, scope: !138)
!142 = !DILocation(line: 203, column: 10, scope: !138)
!143 = !DILocation(line: 204, column: 11, scope: !138)
!144 = !DILocation(line: 204, column: 3, scope: !138)
!145 = !DILocation(line: 207, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !104, file: !3, line: 207, column: 6)
!147 = !DILocation(line: 207, column: 13, scope: !146)
!148 = !DILocation(line: 207, column: 6, scope: !104)
!149 = !DILocation(line: 208, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !3, line: 207, column: 40)
!151 = !DILocation(line: 208, column: 3, scope: !150)
!152 = !DILocation(line: 216, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !104, file: !3, line: 216, column: 2)
!154 = !DILocation(line: 216, column: 15, scope: !153)
!155 = !DILocation(line: 216, column: 21, scope: !153)
!156 = !DILocation(line: 216, column: 7, scope: !153)
!157 = !DILocation(line: 216, column: 26, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !3, line: 216, column: 2)
!159 = !DILocation(line: 216, column: 30, scope: !158)
!160 = !DILocation(line: 216, column: 28, scope: !158)
!161 = !DILocation(line: 216, column: 2, scope: !153)
!162 = !DILocation(line: 220, column: 35, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !3, line: 220, column: 7)
!164 = distinct !DILexicalBlock(scope: !158, file: !3, line: 216, column: 45)
!165 = !DILocation(line: 220, column: 7, scope: !163)
!166 = !DILocation(line: 220, column: 47, scope: !163)
!167 = !DILocation(line: 220, column: 7, scope: !164)
!168 = !DILocation(line: 221, column: 31, scope: !169)
!169 = distinct !DILexicalBlock(scope: !163, file: !3, line: 220, column: 57)
!170 = !DILocation(line: 221, column: 13, scope: !169)
!171 = !DILocation(line: 221, column: 11, scope: !169)
!172 = !DILocation(line: 222, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !3, line: 222, column: 8)
!174 = !DILocation(line: 222, column: 8, scope: !169)
!175 = !DILocation(line: 223, column: 13, scope: !176)
!176 = distinct !DILexicalBlock(scope: !173, file: !3, line: 222, column: 30)
!177 = !DILocation(line: 223, column: 5, scope: !176)
!178 = !DILocation(line: 226, column: 15, scope: !169)
!179 = !DILocation(line: 226, column: 27, scope: !169)
!180 = !DILocation(line: 226, column: 24, scope: !169)
!181 = !DILocation(line: 226, column: 5, scope: !169)
!182 = !DILocation(line: 226, column: 11, scope: !169)
!183 = !DILocation(line: 227, column: 3, scope: !169)
!184 = !DILocation(line: 229, column: 10, scope: !164)
!185 = !DILocation(line: 230, column: 2, scope: !164)
!186 = !DILocation(line: 216, column: 39, scope: !158)
!187 = !DILocation(line: 216, column: 2, scope: !158)
!188 = distinct !{!188, !161, !189, !190, !191}
!189 = !DILocation(line: 230, column: 2, scope: !153)
!190 = !{!"llvm.loop.mustprogress"}
!191 = !{!"llvm.loop.unroll.disable"}
!192 = !DILocation(line: 232, column: 2, scope: !104)
!193 = !DILocation(line: 233, column: 1, scope: !104)
!194 = distinct !DISubprogram(name: "acpi_hw_validate_io_request", scope: !3, file: !3, line: 90, type: !195, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!10, !15, !12}
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DILocalVariable(name: "address", arg: 1, scope: !194, file: !3, line: 90, type: !15)
!199 = !DILocalVariable(name: "bit_width", arg: 2, scope: !194, file: !3, line: 90, type: !12)
!200 = !DILocalVariable(name: "i", scope: !194, file: !3, line: 92, type: !12)
!201 = !DILocalVariable(name: "byte_width", scope: !194, file: !3, line: 93, type: !12)
!202 = !DILocalVariable(name: "last_address", scope: !194, file: !3, line: 94, type: !15)
!203 = !DILocalVariable(name: "port_info", scope: !194, file: !3, line: 95, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!205 = !DILocation(line: 90, column: 45, scope: !194)
!206 = !DILocation(line: 90, column: 58, scope: !194)
!207 = !DILocation(line: 92, column: 2, scope: !194)
!208 = !DILocation(line: 92, column: 6, scope: !194)
!209 = !DILocation(line: 93, column: 2, scope: !194)
!210 = !DILocation(line: 93, column: 6, scope: !194)
!211 = !DILocation(line: 94, column: 2, scope: !194)
!212 = !DILocation(line: 94, column: 18, scope: !194)
!213 = !DILocation(line: 95, column: 2, scope: !194)
!214 = !DILocation(line: 95, column: 31, scope: !194)
!215 = !DILocation(line: 101, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !194, file: !3, line: 101, column: 6)
!217 = !DILocation(line: 101, column: 17, scope: !216)
!218 = !DILocation(line: 101, column: 23, scope: !216)
!219 = !DILocation(line: 101, column: 27, scope: !216)
!220 = !DILocation(line: 101, column: 37, scope: !216)
!221 = !DILocation(line: 101, column: 44, scope: !216)
!222 = !DILocation(line: 101, column: 48, scope: !216)
!223 = !DILocation(line: 101, column: 58, scope: !216)
!224 = !DILocation(line: 101, column: 6, scope: !194)
!225 = !DILocation(line: 102, column: 3, scope: !226)
!226 = distinct !DILexicalBlock(scope: !216, file: !3, line: 101, column: 66)
!227 = !DILocation(line: 104, column: 3, scope: !226)
!228 = !DILocation(line: 107, column: 12, scope: !194)
!229 = !DILocation(line: 108, column: 15, scope: !194)
!230 = !DILocation(line: 108, column: 13, scope: !194)
!231 = !DILocation(line: 109, column: 17, scope: !194)
!232 = !DILocation(line: 109, column: 27, scope: !194)
!233 = !DILocation(line: 109, column: 25, scope: !194)
!234 = !DILocation(line: 109, column: 38, scope: !194)
!235 = !DILocation(line: 109, column: 15, scope: !194)
!236 = !DILocation(line: 118, column: 6, scope: !237)
!237 = distinct !DILexicalBlock(scope: !194, file: !3, line: 118, column: 6)
!238 = !DILocation(line: 118, column: 19, scope: !237)
!239 = !DILocation(line: 118, column: 6, scope: !194)
!240 = !DILocation(line: 119, column: 3, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 118, column: 38)
!242 = !DILocation(line: 122, column: 3, scope: !241)
!243 = !DILocation(line: 127, column: 6, scope: !244)
!244 = distinct !DILexicalBlock(scope: !194, file: !3, line: 127, column: 6)
!245 = !DILocation(line: 127, column: 14, scope: !244)
!246 = !DILocation(line: 127, column: 6, scope: !194)
!247 = !DILocation(line: 128, column: 3, scope: !248)
!248 = distinct !DILexicalBlock(scope: !244, file: !3, line: 127, column: 70)
!249 = !DILocation(line: 133, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !194, file: !3, line: 133, column: 2)
!251 = !DILocation(line: 133, column: 7, scope: !250)
!252 = !DILocation(line: 133, column: 14, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !3, line: 133, column: 2)
!254 = !DILocation(line: 133, column: 16, scope: !253)
!255 = !DILocation(line: 133, column: 2, scope: !250)
!256 = !DILocation(line: 143, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 143, column: 7)
!258 = distinct !DILexicalBlock(scope: !253, file: !3, line: 133, column: 60)
!259 = !DILocation(line: 143, column: 19, scope: !257)
!260 = !DILocation(line: 143, column: 30, scope: !257)
!261 = !DILocation(line: 143, column: 16, scope: !257)
!262 = !DILocation(line: 144, column: 7, scope: !257)
!263 = !DILocation(line: 144, column: 11, scope: !257)
!264 = !DILocation(line: 144, column: 27, scope: !257)
!265 = !DILocation(line: 144, column: 38, scope: !257)
!266 = !DILocation(line: 144, column: 24, scope: !257)
!267 = !DILocation(line: 143, column: 7, scope: !258)
!268 = !DILocation(line: 148, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 148, column: 8)
!270 = distinct !DILexicalBlock(scope: !257, file: !3, line: 144, column: 46)
!271 = !DILocation(line: 148, column: 19, scope: !269)
!272 = !DILocation(line: 148, column: 34, scope: !269)
!273 = !DILocation(line: 148, column: 57, scope: !269)
!274 = !DILocation(line: 149, column: 8, scope: !269)
!275 = !DILocation(line: 149, column: 29, scope: !269)
!276 = !DILocation(line: 149, column: 40, scope: !269)
!277 = !DILocation(line: 149, column: 26, scope: !269)
!278 = !DILocation(line: 148, column: 8, scope: !270)
!279 = !DILocation(line: 157, column: 5, scope: !280)
!280 = distinct !DILexicalBlock(scope: !269, file: !3, line: 149, column: 56)
!281 = !DILocation(line: 159, column: 3, scope: !270)
!282 = !DILocation(line: 163, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !258, file: !3, line: 163, column: 7)
!284 = !DILocation(line: 163, column: 23, scope: !283)
!285 = !DILocation(line: 163, column: 34, scope: !283)
!286 = !DILocation(line: 163, column: 20, scope: !283)
!287 = !DILocation(line: 163, column: 7, scope: !258)
!288 = !DILocation(line: 164, column: 4, scope: !289)
!289 = distinct !DILexicalBlock(scope: !283, file: !3, line: 163, column: 39)
!290 = !DILocation(line: 166, column: 2, scope: !258)
!291 = !DILocation(line: 133, column: 43, scope: !253)
!292 = !DILocation(line: 133, column: 56, scope: !253)
!293 = !DILocation(line: 133, column: 2, scope: !253)
!294 = distinct !{!294, !255, !295, !190, !191}
!295 = !DILocation(line: 166, column: 2, scope: !250)
!296 = !DILocation(line: 168, column: 2, scope: !194)
!297 = !DILocation(line: 169, column: 1, scope: !194)
!298 = !DISubprogram(name: "acpi_os_read_port", scope: !299, file: !299, line: 267, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!300 = distinct !DISubprogram(name: "acpi_hw_write_port", scope: !3, file: !3, line: 251, type: !301, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{!10, !15, !12, !12}
!303 = !{!304, !305, !306, !307, !308}
!304 = !DILocalVariable(name: "address", arg: 1, scope: !300, file: !3, line: 251, type: !15)
!305 = !DILocalVariable(name: "value", arg: 2, scope: !300, file: !3, line: 251, type: !12)
!306 = !DILocalVariable(name: "width", arg: 3, scope: !300, file: !3, line: 251, type: !12)
!307 = !DILocalVariable(name: "status", scope: !300, file: !3, line: 253, type: !10)
!308 = !DILocalVariable(name: "i", scope: !300, file: !3, line: 254, type: !12)
!309 = !DILocation(line: 251, column: 48, scope: !300)
!310 = !DILocation(line: 251, column: 61, scope: !300)
!311 = !DILocation(line: 251, column: 72, scope: !300)
!312 = !DILocation(line: 253, column: 2, scope: !300)
!313 = !DILocation(line: 253, column: 14, scope: !300)
!314 = !DILocation(line: 254, column: 2, scope: !300)
!315 = !DILocation(line: 254, column: 6, scope: !300)
!316 = !DILocation(line: 258, column: 6, scope: !317)
!317 = distinct !DILexicalBlock(scope: !300, file: !3, line: 258, column: 6)
!318 = !DILocation(line: 258, column: 6, scope: !300)
!319 = !DILocation(line: 259, column: 11, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !3, line: 258, column: 38)
!321 = !DILocation(line: 260, column: 2, scope: !320)
!322 = !DILocation(line: 264, column: 39, scope: !300)
!323 = !DILocation(line: 264, column: 48, scope: !300)
!324 = !DILocation(line: 264, column: 11, scope: !300)
!325 = !DILocation(line: 264, column: 9, scope: !300)
!326 = !DILocation(line: 265, column: 6, scope: !327)
!327 = distinct !DILexicalBlock(scope: !300, file: !3, line: 265, column: 6)
!328 = !DILocation(line: 265, column: 6, scope: !300)
!329 = !DILocation(line: 266, column: 31, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !3, line: 265, column: 28)
!331 = !DILocation(line: 266, column: 40, scope: !330)
!332 = !DILocation(line: 266, column: 47, scope: !330)
!333 = !DILocation(line: 266, column: 12, scope: !330)
!334 = !DILocation(line: 266, column: 10, scope: !330)
!335 = !DILocation(line: 267, column: 11, scope: !330)
!336 = !DILocation(line: 267, column: 3, scope: !330)
!337 = !DILocation(line: 270, column: 6, scope: !338)
!338 = distinct !DILexicalBlock(scope: !300, file: !3, line: 270, column: 6)
!339 = !DILocation(line: 270, column: 13, scope: !338)
!340 = !DILocation(line: 270, column: 6, scope: !300)
!341 = !DILocation(line: 271, column: 11, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !3, line: 270, column: 40)
!343 = !DILocation(line: 271, column: 3, scope: !342)
!344 = !DILocation(line: 279, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !300, file: !3, line: 279, column: 2)
!346 = !DILocation(line: 279, column: 7, scope: !345)
!347 = !DILocation(line: 279, column: 14, scope: !348)
!348 = distinct !DILexicalBlock(scope: !345, file: !3, line: 279, column: 2)
!349 = !DILocation(line: 279, column: 18, scope: !348)
!350 = !DILocation(line: 279, column: 16, scope: !348)
!351 = !DILocation(line: 279, column: 2, scope: !345)
!352 = !DILocation(line: 283, column: 35, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 283, column: 7)
!354 = distinct !DILexicalBlock(scope: !348, file: !3, line: 279, column: 33)
!355 = !DILocation(line: 283, column: 7, scope: !353)
!356 = !DILocation(line: 283, column: 47, scope: !353)
!357 = !DILocation(line: 283, column: 7, scope: !354)
!358 = !DILocation(line: 285, column: 27, scope: !359)
!359 = distinct !DILexicalBlock(scope: !353, file: !3, line: 283, column: 57)
!360 = !DILocation(line: 285, column: 37, scope: !359)
!361 = !DILocation(line: 285, column: 46, scope: !359)
!362 = !DILocation(line: 285, column: 43, scope: !359)
!363 = !DILocation(line: 285, column: 49, scope: !359)
!364 = !DILocation(line: 285, column: 8, scope: !359)
!365 = !DILocation(line: 284, column: 11, scope: !359)
!366 = !DILocation(line: 286, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !359, file: !3, line: 286, column: 8)
!368 = !DILocation(line: 286, column: 8, scope: !359)
!369 = !DILocation(line: 287, column: 13, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !3, line: 286, column: 30)
!371 = !DILocation(line: 287, column: 5, scope: !370)
!372 = !DILocation(line: 289, column: 3, scope: !359)
!373 = !DILocation(line: 291, column: 10, scope: !354)
!374 = !DILocation(line: 292, column: 2, scope: !354)
!375 = !DILocation(line: 279, column: 27, scope: !348)
!376 = !DILocation(line: 279, column: 2, scope: !348)
!377 = distinct !{!377, !351, !378, !190, !191}
!378 = !DILocation(line: 292, column: 2, scope: !345)
!379 = !DILocation(line: 294, column: 2, scope: !300)
!380 = !DILocation(line: 295, column: 1, scope: !300)
!381 = !DISubprogram(name: "acpi_os_write_port", scope: !299, file: !299, line: 271, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = distinct !DISubprogram(name: "acpi_hw_validate_io_block", scope: !3, file: !3, line: 311, type: !383, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!10, !16, !12, !12}
!385 = !{!386, !387, !388, !389}
!386 = !DILocalVariable(name: "address", arg: 1, scope: !382, file: !3, line: 311, type: !16)
!387 = !DILocalVariable(name: "bit_width", arg: 2, scope: !382, file: !3, line: 311, type: !12)
!388 = !DILocalVariable(name: "count", arg: 3, scope: !382, file: !3, line: 311, type: !12)
!389 = !DILocalVariable(name: "status", scope: !382, file: !3, line: 313, type: !10)
!390 = !DILocation(line: 311, column: 43, scope: !382)
!391 = !DILocation(line: 311, column: 56, scope: !382)
!392 = !DILocation(line: 311, column: 71, scope: !382)
!393 = !DILocation(line: 313, column: 2, scope: !382)
!394 = !DILocation(line: 313, column: 14, scope: !382)
!395 = !DILocation(line: 315, column: 2, scope: !382)
!396 = !DILocation(line: 315, column: 14, scope: !382)
!397 = !DILocation(line: 316, column: 57, scope: !398)
!398 = distinct !DILexicalBlock(scope: !382, file: !3, line: 315, column: 18)
!399 = !DILocation(line: 317, column: 12, scope: !398)
!400 = !DILocation(line: 316, column: 12, scope: !398)
!401 = !DILocation(line: 316, column: 10, scope: !398)
!402 = !DILocation(line: 318, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !3, line: 318, column: 7)
!404 = !DILocation(line: 318, column: 7, scope: !398)
!405 = !DILocation(line: 319, column: 4, scope: !403)
!406 = !DILocation(line: 321, column: 14, scope: !398)
!407 = !DILocation(line: 321, column: 11, scope: !398)
!408 = distinct !{!408, !395, !409, !190, !191}
!409 = !DILocation(line: 322, column: 2, scope: !382)
!410 = !DILocation(line: 324, column: 2, scope: !382)
!411 = !DILocation(line: 325, column: 1, scope: !382)
!412 = !DISubprogram(name: "acpi_error", scope: !413, file: !413, line: 901, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416, !12, !416, null}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
