; ModuleID = 'drivers/scsi/scsi_common.c'
source_filename = "drivers/scsi/scsi_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_command_size_tbl: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_command_size_tbl ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_device_type: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_device_type ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_pr_type_to_block: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_pr_type_to_block ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_block_pr_type_to_scsi: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad block_pr_type_to_scsi ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsilun_to_int: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsilun_to_int ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_int_to_scsilun: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad int_to_scsilun ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_normalize_sense: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_normalize_sense ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_sense_desc_find: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_sense_desc_find ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_build_sense_buffer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_build_sense_buffer ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_set_sense_information: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_set_sense_information ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_set_sense_field_pointer: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_set_sense_field_pointer ; .previous"

%struct.scsi_lun = type { [8 x i8] }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon = type { i64 }
%struct.anon.0 = type { i32 }
%struct.anon.1 = type { i16 }

@__UNIQUE_ID_file195 = internal constant [42 x i8] c"scsi_common.file=drivers/scsi/scsi_common\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license196 = internal constant [27 x i8] c"scsi_common.license=GPL v2\00", section ".modinfo", align 1, !dbg !86
@scsi_command_size_tbl = hidden constant [8 x i8] c"\06\0A\0A\0C\10\0C\0A\0A", align 1, !dbg !92
@__UNIQUE_ID___addressable_scsi_command_size_tbl197 = internal global ptr @scsi_command_size_tbl, section ".discard.addressable", align 8, !dbg !99
@.str = private unnamed_addr constant [18 x i8] c"Well-known LUN   \00", align 1, !dbg !101
@.str.1 = private unnamed_addr constant [18 x i8] c"No Device        \00", align 1, !dbg !106
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown          \00", align 1, !dbg !108
@scsi_device_types = internal constant [21 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 16, !dbg !170
@__UNIQUE_ID___addressable_scsi_device_type198 = internal global ptr @scsi_device_type, section ".discard.addressable", align 8, !dbg !110
@__UNIQUE_ID___addressable_scsi_pr_type_to_block199 = internal global ptr @scsi_pr_type_to_block, section ".discard.addressable", align 8, !dbg !112
@__UNIQUE_ID___addressable_block_pr_type_to_scsi200 = internal global ptr @block_pr_type_to_scsi, section ".discard.addressable", align 8, !dbg !114
@__UNIQUE_ID___addressable_scsilun_to_int201 = internal global ptr @scsilun_to_int, section ".discard.addressable", align 8, !dbg !116
@__UNIQUE_ID___addressable_int_to_scsilun202 = internal global ptr @int_to_scsilun, section ".discard.addressable", align 8, !dbg !118
@__UNIQUE_ID___addressable_scsi_normalize_sense205 = internal global ptr @scsi_normalize_sense, section ".discard.addressable", align 8, !dbg !120
@__UNIQUE_ID___addressable_scsi_sense_desc_find206 = internal global ptr @scsi_sense_desc_find, section ".discard.addressable", align 8, !dbg !122
@__UNIQUE_ID___addressable_scsi_build_sense_buffer207 = internal global ptr @scsi_build_sense_buffer, section ".discard.addressable", align 8, !dbg !124
@__UNIQUE_ID___addressable_scsi_set_sense_information208 = internal global ptr @scsi_set_sense_information, section ".discard.addressable", align 8, !dbg !126
@__UNIQUE_ID___addressable_scsi_set_sense_field_pointer209 = internal global ptr @scsi_set_sense_field_pointer, section ".discard.addressable", align 8, !dbg !128
@.str.3 = private unnamed_addr constant [18 x i8] c"Direct-Access    \00", align 1, !dbg !130
@.str.4 = private unnamed_addr constant [18 x i8] c"Sequential-Access\00", align 1, !dbg !132
@.str.5 = private unnamed_addr constant [18 x i8] c"Printer          \00", align 1, !dbg !134
@.str.6 = private unnamed_addr constant [18 x i8] c"Processor        \00", align 1, !dbg !136
@.str.7 = private unnamed_addr constant [18 x i8] c"WORM             \00", align 1, !dbg !138
@.str.8 = private unnamed_addr constant [18 x i8] c"CD-ROM           \00", align 1, !dbg !140
@.str.9 = private unnamed_addr constant [18 x i8] c"Scanner          \00", align 1, !dbg !142
@.str.10 = private unnamed_addr constant [18 x i8] c"Optical Device   \00", align 1, !dbg !144
@.str.11 = private unnamed_addr constant [18 x i8] c"Medium Changer   \00", align 1, !dbg !146
@.str.12 = private unnamed_addr constant [18 x i8] c"Communications   \00", align 1, !dbg !148
@.str.13 = private unnamed_addr constant [18 x i8] c"ASC IT8          \00", align 1, !dbg !150
@.str.14 = private unnamed_addr constant [18 x i8] c"RAID             \00", align 1, !dbg !152
@.str.15 = private unnamed_addr constant [18 x i8] c"Enclosure        \00", align 1, !dbg !154
@.str.16 = private unnamed_addr constant [18 x i8] c"Direct-Access-RBC\00", align 1, !dbg !156
@.str.17 = private unnamed_addr constant [18 x i8] c"Optical card     \00", align 1, !dbg !158
@.str.18 = private unnamed_addr constant [18 x i8] c"Bridge controller\00", align 1, !dbg !160
@.str.19 = private unnamed_addr constant [18 x i8] c"Object storage   \00", align 1, !dbg !162
@.str.20 = private unnamed_addr constant [18 x i8] c"Automation/Drive \00", align 1, !dbg !164
@.str.21 = private unnamed_addr constant [18 x i8] c"Security Manager \00", align 1, !dbg !166
@.str.22 = private unnamed_addr constant [18 x i8] c"Direct-Access-ZBC\00", align 1, !dbg !168
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_file195, ptr @__UNIQUE_ID_license196, ptr @__UNIQUE_ID___addressable_scsi_command_size_tbl197, ptr @__UNIQUE_ID___addressable_scsi_device_type198, ptr @__UNIQUE_ID___addressable_scsi_pr_type_to_block199, ptr @__UNIQUE_ID___addressable_block_pr_type_to_scsi200, ptr @__UNIQUE_ID___addressable_scsilun_to_int201, ptr @__UNIQUE_ID___addressable_int_to_scsilun202, ptr @__UNIQUE_ID___addressable_scsi_normalize_sense205, ptr @__UNIQUE_ID___addressable_scsi_sense_desc_find206, ptr @__UNIQUE_ID___addressable_scsi_build_sense_buffer207, ptr @__UNIQUE_ID___addressable_scsi_set_sense_information208, ptr @__UNIQUE_ID___addressable_scsi_set_sense_field_pointer209], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @scsi_device_type(i32 noundef %type) #0 align 16 !dbg !189 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = load i32, ptr %type.addr, align 4, !dbg !195
  %cmp = icmp eq i32 %0, 30, !dbg !197
  br i1 %cmp, label %if.then, label %if.end, !dbg !198

if.then:                                          ; preds = %entry
  store ptr @.str, ptr %retval, align 8, !dbg !199
  br label %return, !dbg !199

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !200
  %cmp1 = icmp eq i32 %1, 31, !dbg !202
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !203

if.then2:                                         ; preds = %if.end
  store ptr @.str.1, ptr %retval, align 8, !dbg !204
  br label %return, !dbg !204

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %type.addr, align 4, !dbg !205
  %conv = zext i32 %2 to i64, !dbg !205
  %cmp4 = icmp uge i64 %conv, 21, !dbg !207
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !208

if.then6:                                         ; preds = %if.end3
  store ptr @.str.2, ptr %retval, align 8, !dbg !209
  br label %return, !dbg !209

if.end7:                                          ; preds = %if.end3
  %3 = load i32, ptr %type.addr, align 4, !dbg !210
  %idxprom = zext i32 %3 to i64, !dbg !211
  %arrayidx = getelementptr [21 x ptr], ptr @scsi_device_types, i64 0, i64 %idxprom, !dbg !211
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !211
  store ptr %4, ptr %retval, align 8, !dbg !212
  br label %return, !dbg !212

return:                                           ; preds = %if.end7, %if.then6, %if.then2, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !213
  ret ptr %5, !dbg !213
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @scsi_pr_type_to_block(i32 noundef %type) #0 align 16 !dbg !214 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load i32, ptr %type.addr, align 4, !dbg !220
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb1
    i32 5, label %sw.bb2
    i32 6, label %sw.bb3
    i32 7, label %sw.bb4
    i32 8, label %sw.bb5
  ], !dbg !221

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !222
  br label %return, !dbg !222

sw.bb1:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4, !dbg !224
  br label %return, !dbg !224

sw.bb2:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !225
  br label %return, !dbg !225

sw.bb3:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !226
  br label %return, !dbg !226

sw.bb4:                                           ; preds = %entry
  store i32 5, ptr %retval, align 4, !dbg !227
  br label %return, !dbg !227

sw.bb5:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !228
  br label %return, !dbg !228

sw.epilog:                                        ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !229
  br label %return, !dbg !229

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4, !dbg !230
  ret i32 %1, !dbg !230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @block_pr_type_to_scsi(i32 noundef %type) #0 align 16 !dbg !231 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !235, metadata !DIExpression()), !dbg !236
  %0 = load i32, ptr %type.addr, align 4, !dbg !237
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
  ], !dbg !238

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !239
  br label %return, !dbg !239

sw.bb1:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4, !dbg !241
  br label %return, !dbg !241

sw.bb2:                                           ; preds = %entry
  store i32 5, ptr %retval, align 4, !dbg !242
  br label %return, !dbg !242

sw.bb3:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4, !dbg !243
  br label %return, !dbg !243

sw.bb4:                                           ; preds = %entry
  store i32 7, ptr %retval, align 4, !dbg !244
  br label %return, !dbg !244

sw.bb5:                                           ; preds = %entry
  store i32 8, ptr %retval, align 4, !dbg !245
  br label %return, !dbg !245

sw.epilog:                                        ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !246
  br label %return, !dbg !246

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4, !dbg !247
  ret i32 %1, !dbg !247
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @scsilun_to_int(ptr noundef %scsilun) #0 align 16 !dbg !248 {
entry:
  %scsilun.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %lun = alloca i64, align 8
  store ptr %scsilun, ptr %scsilun.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scsilun.addr, metadata !259, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %i, metadata !260, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 8, ptr %lun) #5, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %lun, metadata !261, metadata !DIExpression()), !dbg !266
  store i64 0, ptr %lun, align 8, !dbg !267
  store i32 0, ptr %i, align 4, !dbg !268
  br label %for.cond, !dbg !270

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !271
  %conv = sext i32 %0 to i64, !dbg !271
  %cmp = icmp ult i64 %conv, 8, !dbg !273
  br i1 %cmp, label %for.body, label %for.end, !dbg !274

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %lun, align 8, !dbg !275
  %2 = load ptr, ptr %scsilun.addr, align 8, !dbg !276
  %scsi_lun = getelementptr inbounds %struct.scsi_lun, ptr %2, i32 0, i32 0, !dbg !277
  %3 = load i32, ptr %i, align 4, !dbg !278
  %idxprom = sext i32 %3 to i64, !dbg !276
  %arrayidx = getelementptr [8 x i8], ptr %scsi_lun, i64 0, i64 %idxprom, !dbg !276
  %4 = load i8, ptr %arrayidx, align 1, !dbg !276
  %conv2 = zext i8 %4 to i64, !dbg !279
  %5 = load i32, ptr %i, align 4, !dbg !280
  %add = add i32 %5, 1, !dbg !281
  %mul = mul i32 %add, 8, !dbg !282
  %sh_prom = zext i32 %mul to i64, !dbg !283
  %shl = shl i64 %conv2, %sh_prom, !dbg !283
  %6 = load ptr, ptr %scsilun.addr, align 8, !dbg !284
  %scsi_lun3 = getelementptr inbounds %struct.scsi_lun, ptr %6, i32 0, i32 0, !dbg !285
  %7 = load i32, ptr %i, align 4, !dbg !286
  %add4 = add i32 %7, 1, !dbg !287
  %idxprom5 = sext i32 %add4 to i64, !dbg !284
  %arrayidx6 = getelementptr [8 x i8], ptr %scsi_lun3, i64 0, i64 %idxprom5, !dbg !284
  %8 = load i8, ptr %arrayidx6, align 1, !dbg !284
  %conv7 = zext i8 %8 to i64, !dbg !288
  %9 = load i32, ptr %i, align 4, !dbg !289
  %mul8 = mul i32 %9, 8, !dbg !290
  %sh_prom9 = zext i32 %mul8 to i64, !dbg !291
  %shl10 = shl i64 %conv7, %sh_prom9, !dbg !291
  %or = or i64 %shl, %shl10, !dbg !292
  %or11 = or i64 %1, %or, !dbg !293
  store i64 %or11, ptr %lun, align 8, !dbg !294
  br label %for.inc, !dbg !295

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !296
  %add12 = add i32 %10, 2, !dbg !296
  store i32 %add12, ptr %i, align 4, !dbg !296
  br label %for.cond, !dbg !297, !llvm.loop !298

for.end:                                          ; preds = %for.cond
  %11 = load i64, ptr %lun, align 8, !dbg !302
  call void @llvm.lifetime.end.p0(i64 8, ptr %lun) #5, !dbg !303
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !303
  ret i64 %11, !dbg !304
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @int_to_scsilun(i64 noundef %lun, ptr noundef %scsilun) #0 align 16 !dbg !305 {
entry:
  %lun.addr = alloca i64, align 8
  %scsilun.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i64 %lun, ptr %lun.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lun.addr, metadata !309, metadata !DIExpression()), !dbg !312
  store ptr %scsilun, ptr %scsilun.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %scsilun.addr, metadata !310, metadata !DIExpression()), !dbg !313
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %i, metadata !311, metadata !DIExpression()), !dbg !315
  %0 = load ptr, ptr %scsilun.addr, align 8, !dbg !316
  %scsi_lun = getelementptr inbounds %struct.scsi_lun, ptr %0, i32 0, i32 0, !dbg !317
  %arraydecay = getelementptr inbounds [8 x i8], ptr %scsi_lun, i64 0, i64 0, !dbg !318
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 8, i1 false), !dbg !318
  store i32 0, ptr %i, align 4, !dbg !319
  br label %for.cond, !dbg !321

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !322
  %conv = sext i32 %1 to i64, !dbg !322
  %cmp = icmp ult i64 %conv, 8, !dbg !324
  br i1 %cmp, label %for.body, label %for.end, !dbg !325

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %lun.addr, align 8, !dbg !326
  %shr = lshr i64 %2, 8, !dbg !328
  %and = and i64 %shr, 255, !dbg !329
  %conv2 = trunc i64 %and to i8, !dbg !330
  %3 = load ptr, ptr %scsilun.addr, align 8, !dbg !331
  %scsi_lun3 = getelementptr inbounds %struct.scsi_lun, ptr %3, i32 0, i32 0, !dbg !332
  %4 = load i32, ptr %i, align 4, !dbg !333
  %idxprom = sext i32 %4 to i64, !dbg !331
  %arrayidx = getelementptr [8 x i8], ptr %scsi_lun3, i64 0, i64 %idxprom, !dbg !331
  store i8 %conv2, ptr %arrayidx, align 1, !dbg !334
  %5 = load i64, ptr %lun.addr, align 8, !dbg !335
  %and4 = and i64 %5, 255, !dbg !336
  %conv5 = trunc i64 %and4 to i8, !dbg !335
  %6 = load ptr, ptr %scsilun.addr, align 8, !dbg !337
  %scsi_lun6 = getelementptr inbounds %struct.scsi_lun, ptr %6, i32 0, i32 0, !dbg !338
  %7 = load i32, ptr %i, align 4, !dbg !339
  %add = add i32 %7, 1, !dbg !340
  %idxprom7 = sext i32 %add to i64, !dbg !337
  %arrayidx8 = getelementptr [8 x i8], ptr %scsi_lun6, i64 0, i64 %idxprom7, !dbg !337
  store i8 %conv5, ptr %arrayidx8, align 1, !dbg !341
  %8 = load i64, ptr %lun.addr, align 8, !dbg !342
  %shr9 = lshr i64 %8, 16, !dbg !343
  store i64 %shr9, ptr %lun.addr, align 8, !dbg !344
  br label %for.inc, !dbg !345

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !346
  %add10 = add i32 %9, 2, !dbg !346
  store i32 %add10, ptr %i, align 4, !dbg !346
  br label %for.cond, !dbg !347, !llvm.loop !348

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !350
  ret void, !dbg !350
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @scsi_normalize_sense(ptr noundef %sense_buffer, i32 noundef %sb_len, ptr noundef %sshdr) #0 align 16 !dbg !351 {
entry:
  %retval = alloca i1, align 1
  %sense_buffer.addr = alloca ptr, align 8
  %sb_len.addr = alloca i32, align 4
  %sshdr.addr = alloca ptr, align 8
  %__UNIQUE_ID___x203 = alloca i32, align 4
  %__UNIQUE_ID___y204 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %sense_buffer, ptr %sense_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sense_buffer.addr, metadata !372, metadata !DIExpression()), !dbg !382
  store i32 %sb_len, ptr %sb_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sb_len.addr, metadata !373, metadata !DIExpression()), !dbg !383
  store ptr %sshdr, ptr %sshdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sshdr.addr, metadata !374, metadata !DIExpression()), !dbg !384
  %0 = load ptr, ptr %sshdr.addr, align 8, !dbg !385
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 8, i1 false), !dbg !386
  %1 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !387
  %tobool = icmp ne ptr %1, null, !dbg !387
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !389

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %sb_len.addr, align 4, !dbg !390
  %tobool1 = icmp ne i32 %2, 0, !dbg !390
  br i1 %tobool1, label %if.end, label %if.then, !dbg !391

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !392
  br label %return, !dbg !392

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !393
  %arrayidx = getelementptr i8, ptr %3, i64 0, !dbg !393
  %4 = load i8, ptr %arrayidx, align 1, !dbg !393
  %conv = zext i8 %4 to i32, !dbg !393
  %and = and i32 %conv, 127, !dbg !394
  %conv2 = trunc i32 %and to i8, !dbg !395
  %5 = load ptr, ptr %sshdr.addr, align 8, !dbg !396
  %response_code = getelementptr inbounds %struct.scsi_sense_hdr, ptr %5, i32 0, i32 0, !dbg !397
  store i8 %conv2, ptr %response_code, align 1, !dbg !398
  %6 = load ptr, ptr %sshdr.addr, align 8, !dbg !399
  %call = call zeroext i1 @scsi_sense_valid(ptr noundef %6) #6, !dbg !401
  br i1 %call, label %if.end4, label %if.then3, !dbg !402

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !403
  br label %return, !dbg !403

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %sshdr.addr, align 8, !dbg !404
  %response_code5 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %7, i32 0, i32 0, !dbg !405
  %8 = load i8, ptr %response_code5, align 1, !dbg !405
  %conv6 = zext i8 %8 to i32, !dbg !404
  %cmp = icmp sge i32 %conv6, 114, !dbg !406
  br i1 %cmp, label %if.then8, label %if.else, !dbg !407

if.then8:                                         ; preds = %if.end4
  %9 = load i32, ptr %sb_len.addr, align 4, !dbg !408
  %cmp9 = icmp sgt i32 %9, 1, !dbg !411
  br i1 %cmp9, label %if.then11, label %if.end16, !dbg !412

if.then11:                                        ; preds = %if.then8
  %10 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !413
  %arrayidx12 = getelementptr i8, ptr %10, i64 1, !dbg !413
  %11 = load i8, ptr %arrayidx12, align 1, !dbg !413
  %conv13 = zext i8 %11 to i32, !dbg !413
  %and14 = and i32 %conv13, 15, !dbg !414
  %conv15 = trunc i32 %and14 to i8, !dbg !415
  %12 = load ptr, ptr %sshdr.addr, align 8, !dbg !416
  %sense_key = getelementptr inbounds %struct.scsi_sense_hdr, ptr %12, i32 0, i32 1, !dbg !417
  store i8 %conv15, ptr %sense_key, align 1, !dbg !418
  br label %if.end16, !dbg !416

if.end16:                                         ; preds = %if.then11, %if.then8
  %13 = load i32, ptr %sb_len.addr, align 4, !dbg !419
  %cmp17 = icmp sgt i32 %13, 2, !dbg !421
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !422

if.then19:                                        ; preds = %if.end16
  %14 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !423
  %arrayidx20 = getelementptr i8, ptr %14, i64 2, !dbg !423
  %15 = load i8, ptr %arrayidx20, align 1, !dbg !423
  %16 = load ptr, ptr %sshdr.addr, align 8, !dbg !424
  %asc = getelementptr inbounds %struct.scsi_sense_hdr, ptr %16, i32 0, i32 2, !dbg !425
  store i8 %15, ptr %asc, align 1, !dbg !426
  br label %if.end21, !dbg !424

if.end21:                                         ; preds = %if.then19, %if.end16
  %17 = load i32, ptr %sb_len.addr, align 4, !dbg !427
  %cmp22 = icmp sgt i32 %17, 3, !dbg !429
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !430

if.then24:                                        ; preds = %if.end21
  %18 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !431
  %arrayidx25 = getelementptr i8, ptr %18, i64 3, !dbg !431
  %19 = load i8, ptr %arrayidx25, align 1, !dbg !431
  %20 = load ptr, ptr %sshdr.addr, align 8, !dbg !432
  %ascq = getelementptr inbounds %struct.scsi_sense_hdr, ptr %20, i32 0, i32 3, !dbg !433
  store i8 %19, ptr %ascq, align 1, !dbg !434
  br label %if.end26, !dbg !432

if.end26:                                         ; preds = %if.then24, %if.end21
  %21 = load i32, ptr %sb_len.addr, align 4, !dbg !435
  %cmp27 = icmp sgt i32 %21, 7, !dbg !437
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !438

if.then29:                                        ; preds = %if.end26
  %22 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !439
  %arrayidx30 = getelementptr i8, ptr %22, i64 7, !dbg !439
  %23 = load i8, ptr %arrayidx30, align 1, !dbg !439
  %24 = load ptr, ptr %sshdr.addr, align 8, !dbg !440
  %additional_length = getelementptr inbounds %struct.scsi_sense_hdr, ptr %24, i32 0, i32 7, !dbg !441
  store i8 %23, ptr %additional_length, align 1, !dbg !442
  br label %if.end31, !dbg !440

if.end31:                                         ; preds = %if.then29, %if.end26
  br label %if.end61, !dbg !443

if.else:                                          ; preds = %if.end4
  %25 = load i32, ptr %sb_len.addr, align 4, !dbg !444
  %cmp32 = icmp sgt i32 %25, 2, !dbg !446
  br i1 %cmp32, label %if.then34, label %if.end40, !dbg !447

if.then34:                                        ; preds = %if.else
  %26 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !448
  %arrayidx35 = getelementptr i8, ptr %26, i64 2, !dbg !448
  %27 = load i8, ptr %arrayidx35, align 1, !dbg !448
  %conv36 = zext i8 %27 to i32, !dbg !448
  %and37 = and i32 %conv36, 15, !dbg !449
  %conv38 = trunc i32 %and37 to i8, !dbg !450
  %28 = load ptr, ptr %sshdr.addr, align 8, !dbg !451
  %sense_key39 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %28, i32 0, i32 1, !dbg !452
  store i8 %conv38, ptr %sense_key39, align 1, !dbg !453
  br label %if.end40, !dbg !451

if.end40:                                         ; preds = %if.then34, %if.else
  %29 = load i32, ptr %sb_len.addr, align 4, !dbg !454
  %cmp41 = icmp sgt i32 %29, 7, !dbg !455
  br i1 %cmp41, label %if.then43, label %if.end60, !dbg !456

if.then43:                                        ; preds = %if.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x203) #5, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x203, metadata !375, metadata !DIExpression()), !dbg !457
  %30 = load i32, ptr %sb_len.addr, align 4, !dbg !457
  store i32 %30, ptr %__UNIQUE_ID___x203, align 4, !dbg !457
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y204) #5, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y204, metadata !381, metadata !DIExpression()), !dbg !457
  %31 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !457
  %arrayidx44 = getelementptr i8, ptr %31, i64 7, !dbg !457
  %32 = load i8, ptr %arrayidx44, align 1, !dbg !457
  %conv45 = zext i8 %32 to i32, !dbg !457
  %add = add i32 %conv45, 8, !dbg !457
  store i32 %add, ptr %__UNIQUE_ID___y204, align 4, !dbg !457
  %33 = load i32, ptr %__UNIQUE_ID___x203, align 4, !dbg !457
  %34 = load i32, ptr %__UNIQUE_ID___y204, align 4, !dbg !457
  %cmp46 = icmp slt i32 %33, %34, !dbg !457
  br i1 %cmp46, label %cond.true, label %cond.false, !dbg !457

cond.true:                                        ; preds = %if.then43
  %35 = load i32, ptr %__UNIQUE_ID___x203, align 4, !dbg !457
  br label %cond.end, !dbg !457

cond.false:                                       ; preds = %if.then43
  %36 = load i32, ptr %__UNIQUE_ID___y204, align 4, !dbg !457
  br label %cond.end, !dbg !457

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %36, %cond.false ], !dbg !457
  store i32 %cond, ptr %tmp, align 4, !dbg !457
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y204) #5, !dbg !458
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x203) #5, !dbg !458
  %37 = load i32, ptr %tmp, align 4, !dbg !457
  store i32 %37, ptr %sb_len.addr, align 4, !dbg !459
  %38 = load i32, ptr %sb_len.addr, align 4, !dbg !460
  %cmp48 = icmp sgt i32 %38, 12, !dbg !462
  br i1 %cmp48, label %if.then50, label %if.end53, !dbg !463

if.then50:                                        ; preds = %cond.end
  %39 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !464
  %arrayidx51 = getelementptr i8, ptr %39, i64 12, !dbg !464
  %40 = load i8, ptr %arrayidx51, align 1, !dbg !464
  %41 = load ptr, ptr %sshdr.addr, align 8, !dbg !465
  %asc52 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %41, i32 0, i32 2, !dbg !466
  store i8 %40, ptr %asc52, align 1, !dbg !467
  br label %if.end53, !dbg !465

if.end53:                                         ; preds = %if.then50, %cond.end
  %42 = load i32, ptr %sb_len.addr, align 4, !dbg !468
  %cmp54 = icmp sgt i32 %42, 13, !dbg !470
  br i1 %cmp54, label %if.then56, label %if.end59, !dbg !471

if.then56:                                        ; preds = %if.end53
  %43 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !472
  %arrayidx57 = getelementptr i8, ptr %43, i64 13, !dbg !472
  %44 = load i8, ptr %arrayidx57, align 1, !dbg !472
  %45 = load ptr, ptr %sshdr.addr, align 8, !dbg !473
  %ascq58 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %45, i32 0, i32 3, !dbg !474
  store i8 %44, ptr %ascq58, align 1, !dbg !475
  br label %if.end59, !dbg !473

if.end59:                                         ; preds = %if.then56, %if.end53
  br label %if.end60, !dbg !476

if.end60:                                         ; preds = %if.end59, %if.end40
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end31
  store i1 true, ptr %retval, align 1, !dbg !477
  br label %return, !dbg !477

return:                                           ; preds = %if.end61, %if.then3, %if.then
  %46 = load i1, ptr %retval, align 1, !dbg !478
  ret i1 %46, !dbg !478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @scsi_sense_valid(ptr noundef %sshdr) #4 align 16 !dbg !479 {
entry:
  %retval = alloca i1, align 1
  %sshdr.addr = alloca ptr, align 8
  store ptr %sshdr, ptr %sshdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sshdr.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %0 = load ptr, ptr %sshdr.addr, align 8, !dbg !487
  %tobool = icmp ne ptr %0, null, !dbg !487
  br i1 %tobool, label %if.end, label %if.then, !dbg !489

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !490
  br label %return, !dbg !490

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %sshdr.addr, align 8, !dbg !491
  %response_code = getelementptr inbounds %struct.scsi_sense_hdr, ptr %1, i32 0, i32 0, !dbg !492
  %2 = load i8, ptr %response_code, align 1, !dbg !492
  %conv = zext i8 %2 to i32, !dbg !491
  %and = and i32 %conv, 112, !dbg !493
  %cmp = icmp eq i32 %and, 112, !dbg !494
  store i1 %cmp, ptr %retval, align 1, !dbg !495
  br label %return, !dbg !495

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !496
  ret i1 %3, !dbg !496
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @scsi_sense_desc_find(ptr noundef %sense_buffer, i32 noundef %sb_len, i32 noundef %desc_type) #0 align 16 !dbg !497 {
entry:
  %retval = alloca ptr, align 8
  %sense_buffer.addr = alloca ptr, align 8
  %sb_len.addr = alloca i32, align 4
  %desc_type.addr = alloca i32, align 4
  %add_sen_len = alloca i32, align 4
  %add_len = alloca i32, align 4
  %desc_len = alloca i32, align 4
  %k = alloca i32, align 4
  %descp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sense_buffer, ptr %sense_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sense_buffer.addr, metadata !501, metadata !DIExpression()), !dbg !509
  store i32 %sb_len, ptr %sb_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sb_len.addr, metadata !502, metadata !DIExpression()), !dbg !510
  store i32 %desc_type, ptr %desc_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %desc_type.addr, metadata !503, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 4, ptr %add_sen_len) #5, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %add_sen_len, metadata !504, metadata !DIExpression()), !dbg !513
  call void @llvm.lifetime.start.p0(i64 4, ptr %add_len) #5, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %add_len, metadata !505, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 4, ptr %desc_len) #5, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %desc_len, metadata !506, metadata !DIExpression()), !dbg !515
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %k, metadata !507, metadata !DIExpression()), !dbg !516
  call void @llvm.lifetime.start.p0(i64 8, ptr %descp) #5, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %descp, metadata !508, metadata !DIExpression()), !dbg !518
  %0 = load i32, ptr %sb_len.addr, align 4, !dbg !519
  %cmp = icmp slt i32 %0, 8, !dbg !521
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !522

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !523
  %arrayidx = getelementptr i8, ptr %1, i64 7, !dbg !523
  %2 = load i8, ptr %arrayidx, align 1, !dbg !523
  %conv = zext i8 %2 to i32, !dbg !523
  store i32 %conv, ptr %add_sen_len, align 4, !dbg !524
  %cmp1 = icmp eq i32 0, %conv, !dbg !525
  br i1 %cmp1, label %if.then, label %if.end, !dbg !526

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !527

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !528
  %arrayidx3 = getelementptr i8, ptr %3, i64 0, !dbg !528
  %4 = load i8, ptr %arrayidx3, align 1, !dbg !528
  %conv4 = zext i8 %4 to i32, !dbg !528
  %cmp5 = icmp slt i32 %conv4, 114, !dbg !530
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !531

lor.lhs.false7:                                   ; preds = %if.end
  %5 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !532
  %arrayidx8 = getelementptr i8, ptr %5, i64 0, !dbg !532
  %6 = load i8, ptr %arrayidx8, align 1, !dbg !532
  %conv9 = zext i8 %6 to i32, !dbg !532
  %cmp10 = icmp sgt i32 %conv9, 115, !dbg !533
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !534

if.then12:                                        ; preds = %lor.lhs.false7, %if.end
  store ptr null, ptr %retval, align 8, !dbg !535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !535

if.end13:                                         ; preds = %lor.lhs.false7
  %7 = load i32, ptr %add_sen_len, align 4, !dbg !536
  %8 = load i32, ptr %sb_len.addr, align 4, !dbg !537
  %sub = sub i32 %8, 8, !dbg !538
  %cmp14 = icmp slt i32 %7, %sub, !dbg !539
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !540

cond.true:                                        ; preds = %if.end13
  %9 = load i32, ptr %add_sen_len, align 4, !dbg !541
  br label %cond.end, !dbg !540

cond.false:                                       ; preds = %if.end13
  %10 = load i32, ptr %sb_len.addr, align 4, !dbg !542
  %sub16 = sub i32 %10, 8, !dbg !543
  br label %cond.end, !dbg !540

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %sub16, %cond.false ], !dbg !540
  store i32 %cond, ptr %add_sen_len, align 4, !dbg !544
  %11 = load ptr, ptr %sense_buffer.addr, align 8, !dbg !545
  %arrayidx17 = getelementptr i8, ptr %11, i64 8, !dbg !545
  store ptr %arrayidx17, ptr %descp, align 8, !dbg !546
  store i32 0, ptr %desc_len, align 4, !dbg !547
  store i32 0, ptr %k, align 4, !dbg !549
  br label %for.cond, !dbg !550

for.cond:                                         ; preds = %for.inc, %cond.end
  %12 = load i32, ptr %k, align 4, !dbg !551
  %13 = load i32, ptr %add_sen_len, align 4, !dbg !553
  %cmp18 = icmp slt i32 %12, %13, !dbg !554
  br i1 %cmp18, label %for.body, label %for.end, !dbg !555

for.body:                                         ; preds = %for.cond
  %14 = load i32, ptr %desc_len, align 4, !dbg !556
  %15 = load ptr, ptr %descp, align 8, !dbg !558
  %idx.ext = sext i32 %14 to i64, !dbg !558
  %add.ptr = getelementptr i8, ptr %15, i64 %idx.ext, !dbg !558
  store ptr %add.ptr, ptr %descp, align 8, !dbg !558
  %16 = load i32, ptr %k, align 4, !dbg !559
  %17 = load i32, ptr %add_sen_len, align 4, !dbg !560
  %sub20 = sub i32 %17, 1, !dbg !561
  %cmp21 = icmp slt i32 %16, %sub20, !dbg !562
  br i1 %cmp21, label %cond.true23, label %cond.false26, !dbg !563

cond.true23:                                      ; preds = %for.body
  %18 = load ptr, ptr %descp, align 8, !dbg !564
  %arrayidx24 = getelementptr i8, ptr %18, i64 1, !dbg !564
  %19 = load i8, ptr %arrayidx24, align 1, !dbg !564
  %conv25 = zext i8 %19 to i32, !dbg !564
  br label %cond.end27, !dbg !563

cond.false26:                                     ; preds = %for.body
  br label %cond.end27, !dbg !563

cond.end27:                                       ; preds = %cond.false26, %cond.true23
  %cond28 = phi i32 [ %conv25, %cond.true23 ], [ -1, %cond.false26 ], !dbg !563
  store i32 %cond28, ptr %add_len, align 4, !dbg !565
  %20 = load i32, ptr %add_len, align 4, !dbg !566
  %add = add i32 %20, 2, !dbg !567
  store i32 %add, ptr %desc_len, align 4, !dbg !568
  %21 = load ptr, ptr %descp, align 8, !dbg !569
  %arrayidx29 = getelementptr i8, ptr %21, i64 0, !dbg !569
  %22 = load i8, ptr %arrayidx29, align 1, !dbg !569
  %conv30 = zext i8 %22 to i32, !dbg !569
  %23 = load i32, ptr %desc_type.addr, align 4, !dbg !571
  %cmp31 = icmp eq i32 %conv30, %23, !dbg !572
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !573

if.then33:                                        ; preds = %cond.end27
  %24 = load ptr, ptr %descp, align 8, !dbg !574
  store ptr %24, ptr %retval, align 8, !dbg !575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !575

if.end34:                                         ; preds = %cond.end27
  %25 = load i32, ptr %add_len, align 4, !dbg !576
  %cmp35 = icmp slt i32 %25, 0, !dbg !578
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !579

if.then37:                                        ; preds = %if.end34
  br label %for.end, !dbg !580

if.end38:                                         ; preds = %if.end34
  br label %for.inc, !dbg !581

for.inc:                                          ; preds = %if.end38
  %26 = load i32, ptr %desc_len, align 4, !dbg !582
  %27 = load i32, ptr %k, align 4, !dbg !583
  %add39 = add i32 %27, %26, !dbg !583
  store i32 %add39, ptr %k, align 4, !dbg !583
  br label %for.cond, !dbg !584, !llvm.loop !585

for.end:                                          ; preds = %if.then37, %for.cond
  store ptr null, ptr %retval, align 8, !dbg !587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !587

cleanup:                                          ; preds = %for.end, %if.then33, %if.then12, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %descp) #5, !dbg !588
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5, !dbg !588
  call void @llvm.lifetime.end.p0(i64 4, ptr %desc_len) #5, !dbg !588
  call void @llvm.lifetime.end.p0(i64 4, ptr %add_len) #5, !dbg !588
  call void @llvm.lifetime.end.p0(i64 4, ptr %add_sen_len) #5, !dbg !588
  %28 = load ptr, ptr %retval, align 8, !dbg !588
  ret ptr %28, !dbg !588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scsi_build_sense_buffer(i32 noundef %desc, ptr noundef %buf, i8 noundef zeroext %key, i8 noundef zeroext %asc, i8 noundef zeroext %ascq) #0 align 16 !dbg !589 {
entry:
  %desc.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %key.addr = alloca i8, align 1
  %asc.addr = alloca i8, align 1
  %ascq.addr = alloca i8, align 1
  store i32 %desc, ptr %desc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !594, metadata !DIExpression()), !dbg !599
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !595, metadata !DIExpression()), !dbg !600
  store i8 %key, ptr %key.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !596, metadata !DIExpression()), !dbg !601
  store i8 %asc, ptr %asc.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %asc.addr, metadata !597, metadata !DIExpression()), !dbg !602
  store i8 %ascq, ptr %ascq.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ascq.addr, metadata !598, metadata !DIExpression()), !dbg !603
  %0 = load i32, ptr %desc.addr, align 4, !dbg !604
  %tobool = icmp ne i32 %0, 0, !dbg !604
  br i1 %tobool, label %if.then, label %if.else, !dbg !606

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !607
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !607
  store i8 114, ptr %arrayidx, align 1, !dbg !609
  %2 = load i8, ptr %key.addr, align 1, !dbg !610
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !611
  %arrayidx1 = getelementptr i8, ptr %3, i64 1, !dbg !611
  store i8 %2, ptr %arrayidx1, align 1, !dbg !612
  %4 = load i8, ptr %asc.addr, align 1, !dbg !613
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !614
  %arrayidx2 = getelementptr i8, ptr %5, i64 2, !dbg !614
  store i8 %4, ptr %arrayidx2, align 1, !dbg !615
  %6 = load i8, ptr %ascq.addr, align 1, !dbg !616
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !617
  %arrayidx3 = getelementptr i8, ptr %7, i64 3, !dbg !617
  store i8 %6, ptr %arrayidx3, align 1, !dbg !618
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !619
  %arrayidx4 = getelementptr i8, ptr %8, i64 7, !dbg !619
  store i8 0, ptr %arrayidx4, align 1, !dbg !620
  br label %if.end, !dbg !621

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !622
  %arrayidx5 = getelementptr i8, ptr %9, i64 0, !dbg !622
  store i8 112, ptr %arrayidx5, align 1, !dbg !624
  %10 = load i8, ptr %key.addr, align 1, !dbg !625
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !626
  %arrayidx6 = getelementptr i8, ptr %11, i64 2, !dbg !626
  store i8 %10, ptr %arrayidx6, align 1, !dbg !627
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !628
  %arrayidx7 = getelementptr i8, ptr %12, i64 7, !dbg !628
  store i8 10, ptr %arrayidx7, align 1, !dbg !629
  %13 = load i8, ptr %asc.addr, align 1, !dbg !630
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !631
  %arrayidx8 = getelementptr i8, ptr %14, i64 12, !dbg !631
  store i8 %13, ptr %arrayidx8, align 1, !dbg !632
  %15 = load i8, ptr %ascq.addr, align 1, !dbg !633
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !634
  %arrayidx9 = getelementptr i8, ptr %16, i64 13, !dbg !634
  store i8 %15, ptr %arrayidx9, align 1, !dbg !635
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !636
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @scsi_set_sense_information(ptr noundef %buf, i32 noundef %buf_len, i64 noundef %info) #0 align 16 !dbg !637 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %buf_len.addr = alloca i32, align 4
  %info.addr = alloca i64, align 8
  %ucp = alloca ptr, align 8
  %len = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !641, metadata !DIExpression()), !dbg !648
  store i32 %buf_len, ptr %buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buf_len.addr, metadata !642, metadata !DIExpression()), !dbg !649
  store i64 %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !643, metadata !DIExpression()), !dbg !650
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !651
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !651
  %1 = load i8, ptr %arrayidx, align 1, !dbg !651
  %conv = zext i8 %1 to i32, !dbg !651
  %and = and i32 %conv, 127, !dbg !652
  %cmp = icmp eq i32 %and, 114, !dbg !653
  br i1 %cmp, label %if.then, label %if.else, !dbg !654

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucp) #5, !dbg !655
  call void @llvm.dbg.declare(metadata ptr %ucp, metadata !644, metadata !DIExpression()), !dbg !656
  call void @llvm.lifetime.start.p0(i64 1, ptr %len) #5, !dbg !655
  call void @llvm.dbg.declare(metadata ptr %len, metadata !647, metadata !DIExpression()), !dbg !657
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !658
  %arrayidx2 = getelementptr i8, ptr %2, i64 7, !dbg !658
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !658
  store i8 %3, ptr %len, align 1, !dbg !659
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !660
  %5 = load i8, ptr %len, align 1, !dbg !661
  %conv3 = zext i8 %5 to i32, !dbg !661
  %add = add i32 %conv3, 8, !dbg !662
  %call = call ptr @scsi_sense_desc_find(ptr noundef %4, i32 noundef %add, i32 noundef 0) #6, !dbg !663
  store ptr %call, ptr %ucp, align 8, !dbg !664
  %6 = load ptr, ptr %ucp, align 8, !dbg !665
  %tobool = icmp ne ptr %6, null, !dbg !665
  br i1 %tobool, label %if.end, label %if.then4, !dbg !667

if.then4:                                         ; preds = %if.then
  %7 = load i8, ptr %len, align 1, !dbg !668
  %conv5 = zext i8 %7 to i32, !dbg !668
  %add6 = add i32 %conv5, 12, !dbg !670
  %conv7 = trunc i32 %add6 to i8, !dbg !668
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !671
  %arrayidx8 = getelementptr i8, ptr %8, i64 7, !dbg !671
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !672
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !673
  %add.ptr = getelementptr i8, ptr %9, i64 8, !dbg !674
  %10 = load i8, ptr %len, align 1, !dbg !675
  %conv9 = zext i8 %10 to i32, !dbg !675
  %idx.ext = sext i32 %conv9 to i64, !dbg !676
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i64 %idx.ext, !dbg !676
  store ptr %add.ptr10, ptr %ucp, align 8, !dbg !677
  br label %if.end, !dbg !678

if.end:                                           ; preds = %if.then4, %if.then
  %11 = load i32, ptr %buf_len.addr, align 4, !dbg !679
  %12 = load i8, ptr %len, align 1, !dbg !681
  %conv11 = zext i8 %12 to i32, !dbg !681
  %add12 = add i32 %conv11, 12, !dbg !682
  %cmp13 = icmp slt i32 %11, %add12, !dbg !683
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !684

if.then15:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !685
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !685

if.end16:                                         ; preds = %if.end
  %13 = load ptr, ptr %ucp, align 8, !dbg !686
  %arrayidx17 = getelementptr i8, ptr %13, i64 0, !dbg !686
  store i8 0, ptr %arrayidx17, align 1, !dbg !687
  %14 = load ptr, ptr %ucp, align 8, !dbg !688
  %arrayidx18 = getelementptr i8, ptr %14, i64 1, !dbg !688
  store i8 10, ptr %arrayidx18, align 1, !dbg !689
  %15 = load ptr, ptr %ucp, align 8, !dbg !690
  %arrayidx19 = getelementptr i8, ptr %15, i64 2, !dbg !690
  store i8 -128, ptr %arrayidx19, align 1, !dbg !691
  %16 = load ptr, ptr %ucp, align 8, !dbg !692
  %arrayidx20 = getelementptr i8, ptr %16, i64 3, !dbg !692
  store i8 0, ptr %arrayidx20, align 1, !dbg !693
  %17 = load i64, ptr %info.addr, align 8, !dbg !694
  %18 = load ptr, ptr %ucp, align 8, !dbg !695
  %arrayidx21 = getelementptr i8, ptr %18, i64 4, !dbg !695
  call void @put_unaligned_be64(i64 noundef %17, ptr noundef %arrayidx21) #6, !dbg !696
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !697
  br label %cleanup, !dbg !697

cleanup:                                          ; preds = %if.end16, %if.then15
  call void @llvm.lifetime.end.p0(i64 1, ptr %len) #5, !dbg !697
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucp) #5, !dbg !697
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end44, !dbg !698

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !699
  %arrayidx23 = getelementptr i8, ptr %19, i64 0, !dbg !699
  %20 = load i8, ptr %arrayidx23, align 1, !dbg !699
  %conv24 = zext i8 %20 to i32, !dbg !699
  %and25 = and i32 %conv24, 127, !dbg !701
  %cmp26 = icmp eq i32 %and25, 112, !dbg !702
  br i1 %cmp26, label %if.then28, label %if.end43, !dbg !703

if.then28:                                        ; preds = %if.else
  %21 = load i64, ptr %info.addr, align 8, !dbg !704
  %cmp29 = icmp ule i64 %21, 4294967295, !dbg !707
  br i1 %cmp29, label %if.then31, label %if.else35, !dbg !708

if.then31:                                        ; preds = %if.then28
  %22 = load ptr, ptr %buf.addr, align 8, !dbg !709
  %arrayidx32 = getelementptr i8, ptr %22, i64 0, !dbg !709
  %23 = load i8, ptr %arrayidx32, align 1, !dbg !710
  %conv33 = zext i8 %23 to i32, !dbg !710
  %or = or i32 %conv33, 128, !dbg !710
  %conv34 = trunc i32 %or to i8, !dbg !710
  store i8 %conv34, ptr %arrayidx32, align 1, !dbg !710
  br label %if.end40, !dbg !709

if.else35:                                        ; preds = %if.then28
  %24 = load ptr, ptr %buf.addr, align 8, !dbg !711
  %arrayidx36 = getelementptr i8, ptr %24, i64 0, !dbg !711
  %25 = load i8, ptr %arrayidx36, align 1, !dbg !712
  %conv37 = zext i8 %25 to i32, !dbg !712
  %and38 = and i32 %conv37, 127, !dbg !712
  %conv39 = trunc i32 %and38 to i8, !dbg !712
  store i8 %conv39, ptr %arrayidx36, align 1, !dbg !712
  br label %if.end40

if.end40:                                         ; preds = %if.else35, %if.then31
  %26 = load i64, ptr %info.addr, align 8, !dbg !713
  %conv41 = trunc i64 %26 to i32, !dbg !714
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !715
  %arrayidx42 = getelementptr i8, ptr %27, i64 3, !dbg !715
  call void @put_unaligned_be32(i32 noundef %conv41, ptr noundef %arrayidx42) #6, !dbg !716
  br label %if.end43, !dbg !717

if.end43:                                         ; preds = %if.end40, %if.else
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %cleanup.cont
  store i32 0, ptr %retval, align 4, !dbg !718
  br label %return, !dbg !718

return:                                           ; preds = %if.end44, %cleanup
  %28 = load i32, ptr %retval, align 4, !dbg !719
  ret i32 %28, !dbg !719

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_be64(i64 noundef %val, ptr noundef %p) #4 align 16 !dbg !44 {
entry:
  %val.addr = alloca i64, align 8
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !48, metadata !DIExpression()), !dbg !720
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !49, metadata !DIExpression()), !dbg !721
  br label %do.body, !dbg !722

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #5, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !50, metadata !DIExpression()), !dbg !723
  %0 = load ptr, ptr %p.addr, align 8, !dbg !723
  store ptr %0, ptr %__pptr, align 8, !dbg !723
  %1 = load i64, ptr %val.addr, align 8, !dbg !723
  %2 = call i64 @llvm.bswap.i64(i64 %1), !dbg !723
  %3 = load ptr, ptr %__pptr, align 8, !dbg !723
  %x = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 0, !dbg !723
  store i64 %2, ptr %x, align 1, !dbg !723
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #5, !dbg !722
  br label %do.end, !dbg !723

do.end:                                           ; preds = %do.body
  ret void, !dbg !724
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_be32(i32 noundef %val, ptr noundef %p) #4 align 16 !dbg !58 {
entry:
  %val.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !62, metadata !DIExpression()), !dbg !725
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !63, metadata !DIExpression()), !dbg !726
  br label %do.body, !dbg !727

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #5, !dbg !728
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !64, metadata !DIExpression()), !dbg !728
  %0 = load ptr, ptr %p.addr, align 8, !dbg !728
  store ptr %0, ptr %__pptr, align 8, !dbg !728
  %1 = load i32, ptr %val.addr, align 4, !dbg !728
  %2 = call i32 @llvm.bswap.i32(i32 %1), !dbg !728
  %3 = load ptr, ptr %__pptr, align 8, !dbg !728
  %x = getelementptr inbounds %struct.anon.0, ptr %3, i32 0, i32 0, !dbg !728
  store i32 %2, ptr %x, align 1, !dbg !728
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #5, !dbg !727
  br label %do.end, !dbg !728

do.end:                                           ; preds = %do.body
  ret void, !dbg !729
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @scsi_set_sense_field_pointer(ptr noundef %buf, i32 noundef %buf_len, i16 noundef zeroext %fp, i8 noundef zeroext %bp, i1 noundef zeroext %cd) #0 align 16 !dbg !730 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %buf_len.addr = alloca i32, align 4
  %fp.addr = alloca i16, align 2
  %bp.addr = alloca i8, align 1
  %cd.addr = alloca i8, align 1
  %ucp = alloca ptr, align 8
  %len = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !734, metadata !DIExpression()), !dbg !741
  store i32 %buf_len, ptr %buf_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buf_len.addr, metadata !735, metadata !DIExpression()), !dbg !742
  store i16 %fp, ptr %fp.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !736, metadata !DIExpression()), !dbg !743
  store i8 %bp, ptr %bp.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bp.addr, metadata !737, metadata !DIExpression()), !dbg !744
  %frombool = zext i1 %cd to i8
  store i8 %frombool, ptr %cd.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %cd.addr, metadata !738, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 8, ptr %ucp) #5, !dbg !746
  call void @llvm.dbg.declare(metadata ptr %ucp, metadata !739, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 1, ptr %len) #5, !dbg !746
  call void @llvm.dbg.declare(metadata ptr %len, metadata !740, metadata !DIExpression()), !dbg !748
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !749
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !749
  %1 = load i8, ptr %arrayidx, align 1, !dbg !749
  %conv = zext i8 %1 to i32, !dbg !749
  %and = and i32 %conv, 127, !dbg !751
  %cmp = icmp eq i32 %and, 114, !dbg !752
  br i1 %cmp, label %if.then, label %if.else, !dbg !753

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !754
  %arrayidx2 = getelementptr i8, ptr %2, i64 7, !dbg !754
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !754
  store i8 %3, ptr %len, align 1, !dbg !756
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !757
  %5 = load i8, ptr %len, align 1, !dbg !758
  %conv3 = zext i8 %5 to i32, !dbg !758
  %add = add i32 %conv3, 8, !dbg !759
  %call = call ptr @scsi_sense_desc_find(ptr noundef %4, i32 noundef %add, i32 noundef 2) #6, !dbg !760
  store ptr %call, ptr %ucp, align 8, !dbg !761
  %6 = load ptr, ptr %ucp, align 8, !dbg !762
  %tobool = icmp ne ptr %6, null, !dbg !762
  br i1 %tobool, label %if.end, label %if.then4, !dbg !764

if.then4:                                         ; preds = %if.then
  %7 = load i8, ptr %len, align 1, !dbg !765
  %conv5 = zext i8 %7 to i32, !dbg !765
  %add6 = add i32 %conv5, 8, !dbg !767
  %conv7 = trunc i32 %add6 to i8, !dbg !765
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !768
  %arrayidx8 = getelementptr i8, ptr %8, i64 7, !dbg !768
  store i8 %conv7, ptr %arrayidx8, align 1, !dbg !769
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !770
  %add.ptr = getelementptr i8, ptr %9, i64 8, !dbg !771
  %10 = load i8, ptr %len, align 1, !dbg !772
  %conv9 = zext i8 %10 to i32, !dbg !772
  %idx.ext = sext i32 %conv9 to i64, !dbg !773
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i64 %idx.ext, !dbg !773
  store ptr %add.ptr10, ptr %ucp, align 8, !dbg !774
  br label %if.end, !dbg !775

if.end:                                           ; preds = %if.then4, %if.then
  %11 = load i32, ptr %buf_len.addr, align 4, !dbg !776
  %12 = load i8, ptr %len, align 1, !dbg !778
  %conv11 = zext i8 %12 to i32, !dbg !778
  %add12 = add i32 %conv11, 8, !dbg !779
  %cmp13 = icmp slt i32 %11, %add12, !dbg !780
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !781

if.then15:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !782

if.end16:                                         ; preds = %if.end
  %13 = load ptr, ptr %ucp, align 8, !dbg !783
  %arrayidx17 = getelementptr i8, ptr %13, i64 0, !dbg !783
  store i8 2, ptr %arrayidx17, align 1, !dbg !784
  %14 = load ptr, ptr %ucp, align 8, !dbg !785
  %arrayidx18 = getelementptr i8, ptr %14, i64 1, !dbg !785
  store i8 6, ptr %arrayidx18, align 1, !dbg !786
  %15 = load ptr, ptr %ucp, align 8, !dbg !787
  %arrayidx19 = getelementptr i8, ptr %15, i64 4, !dbg !787
  store i8 -128, ptr %arrayidx19, align 1, !dbg !788
  %16 = load i8, ptr %cd.addr, align 1, !dbg !789, !range !791, !noundef !792
  %tobool20 = trunc i8 %16 to i1, !dbg !789
  br i1 %tobool20, label %if.then21, label %if.end25, !dbg !793

if.then21:                                        ; preds = %if.end16
  %17 = load ptr, ptr %ucp, align 8, !dbg !794
  %arrayidx22 = getelementptr i8, ptr %17, i64 4, !dbg !794
  %18 = load i8, ptr %arrayidx22, align 1, !dbg !795
  %conv23 = zext i8 %18 to i32, !dbg !795
  %or = or i32 %conv23, 64, !dbg !795
  %conv24 = trunc i32 %or to i8, !dbg !795
  store i8 %conv24, ptr %arrayidx22, align 1, !dbg !795
  br label %if.end25, !dbg !794

if.end25:                                         ; preds = %if.then21, %if.end16
  %19 = load i8, ptr %bp.addr, align 1, !dbg !796
  %conv26 = zext i8 %19 to i32, !dbg !796
  %cmp27 = icmp slt i32 %conv26, 8, !dbg !798
  br i1 %cmp27, label %if.then29, label %if.end36, !dbg !799

if.then29:                                        ; preds = %if.end25
  %20 = load i8, ptr %bp.addr, align 1, !dbg !800
  %conv30 = zext i8 %20 to i32, !dbg !800
  %or31 = or i32 8, %conv30, !dbg !801
  %21 = load ptr, ptr %ucp, align 8, !dbg !802
  %arrayidx32 = getelementptr i8, ptr %21, i64 4, !dbg !802
  %22 = load i8, ptr %arrayidx32, align 1, !dbg !803
  %conv33 = zext i8 %22 to i32, !dbg !803
  %or34 = or i32 %conv33, %or31, !dbg !803
  %conv35 = trunc i32 %or34 to i8, !dbg !803
  store i8 %conv35, ptr %arrayidx32, align 1, !dbg !803
  br label %if.end36, !dbg !802

if.end36:                                         ; preds = %if.then29, %if.end25
  %23 = load i16, ptr %fp.addr, align 2, !dbg !804
  %24 = load ptr, ptr %ucp, align 8, !dbg !805
  %arrayidx37 = getelementptr i8, ptr %24, i64 5, !dbg !805
  call void @put_unaligned_be16(i16 noundef zeroext %23, ptr noundef %arrayidx37) #6, !dbg !806
  br label %if.end72, !dbg !807

if.else:                                          ; preds = %entry
  %25 = load ptr, ptr %buf.addr, align 8, !dbg !808
  %arrayidx38 = getelementptr i8, ptr %25, i64 0, !dbg !808
  %26 = load i8, ptr %arrayidx38, align 1, !dbg !808
  %conv39 = zext i8 %26 to i32, !dbg !808
  %and40 = and i32 %conv39, 127, !dbg !810
  %cmp41 = icmp eq i32 %and40, 112, !dbg !811
  br i1 %cmp41, label %if.then43, label %if.end71, !dbg !812

if.then43:                                        ; preds = %if.else
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !813
  %arrayidx44 = getelementptr i8, ptr %27, i64 7, !dbg !813
  %28 = load i8, ptr %arrayidx44, align 1, !dbg !813
  store i8 %28, ptr %len, align 1, !dbg !815
  %29 = load i8, ptr %len, align 1, !dbg !816
  %conv45 = zext i8 %29 to i32, !dbg !816
  %cmp46 = icmp slt i32 %conv45, 18, !dbg !818
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !819

if.then48:                                        ; preds = %if.then43
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !820
  %arrayidx49 = getelementptr i8, ptr %30, i64 7, !dbg !820
  store i8 18, ptr %arrayidx49, align 1, !dbg !821
  br label %if.end50, !dbg !820

if.end50:                                         ; preds = %if.then48, %if.then43
  %31 = load ptr, ptr %buf.addr, align 8, !dbg !822
  %arrayidx51 = getelementptr i8, ptr %31, i64 15, !dbg !822
  store i8 -128, ptr %arrayidx51, align 1, !dbg !823
  %32 = load i8, ptr %cd.addr, align 1, !dbg !824, !range !791, !noundef !792
  %tobool52 = trunc i8 %32 to i1, !dbg !824
  br i1 %tobool52, label %if.then53, label %if.end58, !dbg !826

if.then53:                                        ; preds = %if.end50
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !827
  %arrayidx54 = getelementptr i8, ptr %33, i64 15, !dbg !827
  %34 = load i8, ptr %arrayidx54, align 1, !dbg !828
  %conv55 = zext i8 %34 to i32, !dbg !828
  %or56 = or i32 %conv55, 64, !dbg !828
  %conv57 = trunc i32 %or56 to i8, !dbg !828
  store i8 %conv57, ptr %arrayidx54, align 1, !dbg !828
  br label %if.end58, !dbg !827

if.end58:                                         ; preds = %if.then53, %if.end50
  %35 = load i8, ptr %bp.addr, align 1, !dbg !829
  %conv59 = zext i8 %35 to i32, !dbg !829
  %cmp60 = icmp slt i32 %conv59, 8, !dbg !831
  br i1 %cmp60, label %if.then62, label %if.end69, !dbg !832

if.then62:                                        ; preds = %if.end58
  %36 = load i8, ptr %bp.addr, align 1, !dbg !833
  %conv63 = zext i8 %36 to i32, !dbg !833
  %or64 = or i32 8, %conv63, !dbg !834
  %37 = load ptr, ptr %buf.addr, align 8, !dbg !835
  %arrayidx65 = getelementptr i8, ptr %37, i64 15, !dbg !835
  %38 = load i8, ptr %arrayidx65, align 1, !dbg !836
  %conv66 = zext i8 %38 to i32, !dbg !836
  %or67 = or i32 %conv66, %or64, !dbg !836
  %conv68 = trunc i32 %or67 to i8, !dbg !836
  store i8 %conv68, ptr %arrayidx65, align 1, !dbg !836
  br label %if.end69, !dbg !835

if.end69:                                         ; preds = %if.then62, %if.end58
  %39 = load i16, ptr %fp.addr, align 2, !dbg !837
  %40 = load ptr, ptr %buf.addr, align 8, !dbg !838
  %arrayidx70 = getelementptr i8, ptr %40, i64 16, !dbg !838
  call void @put_unaligned_be16(i16 noundef zeroext %39, ptr noundef %arrayidx70) #6, !dbg !839
  br label %if.end71, !dbg !840

if.end71:                                         ; preds = %if.end69, %if.else
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end36
  store i32 0, ptr %retval, align 4, !dbg !841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !841

cleanup:                                          ; preds = %if.end72, %if.then15
  call void @llvm.lifetime.end.p0(i64 1, ptr %len) #5, !dbg !842
  call void @llvm.lifetime.end.p0(i64 8, ptr %ucp) #5, !dbg !842
  %41 = load i32, ptr %retval, align 4, !dbg !842
  ret i32 %41, !dbg !842
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @put_unaligned_be16(i16 noundef zeroext %val, ptr noundef %p) #4 align 16 !dbg !71 {
entry:
  %val.addr = alloca i16, align 2
  %p.addr = alloca ptr, align 8
  %__pptr = alloca ptr, align 8
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !78, metadata !DIExpression()), !dbg !843
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !79, metadata !DIExpression()), !dbg !844
  br label %do.body, !dbg !845

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #5, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !80, metadata !DIExpression()), !dbg !846
  %0 = load ptr, ptr %p.addr, align 8, !dbg !846
  store ptr %0, ptr %__pptr, align 8, !dbg !846
  %1 = load i16, ptr %val.addr, align 2, !dbg !846
  %2 = call i16 @llvm.bswap.i16(i16 %1), !dbg !846
  %3 = load ptr, ptr %__pptr, align 8, !dbg !846
  %x = getelementptr inbounds %struct.anon.1, ptr %3, i32 0, i32 0, !dbg !846
  store i16 %2, ptr %x, align 1, !dbg !846
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #5, !dbg !845
  br label %do.end, !dbg !846

do.end:                                           ; preds = %do.body
  ret void, !dbg !847
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file195", scope: !2, file: !3, line: 15, type: !177, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/scsi/.scsi_common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/scsi/scsi_common\22 -D KBUILD_BASENAME=\22scsi_common\22 -D KBUILD_MODNAME=\22scsi_common\22 -D __KBUILD_MODNAME=kmod_scsi_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/scsi/scsi_common.ll drivers/scsi/scsi_common.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !85, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/scsi/scsi_common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ce287774eb086f22d7b973216489402")
!4 = !{!5, !15, !24}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pr_type", file: !6, line: 24, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/pr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "678fec6da46b67afa0010544b1c97f3e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "PR_WRITE_EXCLUSIVE", value: 1)
!10 = !DIEnumerator(name: "PR_EXCLUSIVE_ACCESS", value: 2)
!11 = !DIEnumerator(name: "PR_WRITE_EXCLUSIVE_REG_ONLY", value: 3)
!12 = !DIEnumerator(name: "PR_EXCLUSIVE_ACCESS_REG_ONLY", value: 4)
!13 = !DIEnumerator(name: "PR_WRITE_EXCLUSIVE_ALL_REGS", value: 5)
!14 = !DIEnumerator(name: "PR_EXCLUSIVE_ACCESS_ALL_REGS", value: 6)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_pr_type", file: !16, line: 13, baseType: !7, size: 32, elements: !17)
!16 = !DIFile(filename: "./include/scsi/scsi_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b8b3b24b57e553caf051ea243d77c221")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "SCSI_PR_WRITE_EXCLUSIVE", value: 1)
!19 = !DIEnumerator(name: "SCSI_PR_EXCLUSIVE_ACCESS", value: 3)
!20 = !DIEnumerator(name: "SCSI_PR_WRITE_EXCLUSIVE_REG_ONLY", value: 5)
!21 = !DIEnumerator(name: "SCSI_PR_EXCLUSIVE_ACCESS_REG_ONLY", value: 6)
!22 = !DIEnumerator(name: "SCSI_PR_WRITE_EXCLUSIVE_ALL_REGS", value: 7)
!23 = !DIEnumerator(name: "SCSI_PR_EXCLUSIVE_ACCESS_ALL_REGS", value: 8)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 10, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "false", value: 0)
!28 = !DIEnumerator(name: "true", value: 1)
!29 = !{!30, !31, !32, !37, !39, !41, !54, !34, !56, !68, !40, !69, !84, !75}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !33, line: 23, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 21, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !7)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !43, line: 82, size: 64, elements: !52)
!43 = !DIFile(filename: "./include/asm-generic/unaligned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "748f8f0540bc62c04225db7eeae0e022")
!44 = distinct !DISubprogram(name: "put_unaligned_be64", scope: !43, file: !43, line: 80, type: !45, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !32, !30}
!47 = !{!48, !49, !50}
!48 = !DILocalVariable(name: "val", arg: 1, scope: !44, file: !43, line: 80, type: !32)
!49 = !DILocalVariable(name: "p", arg: 2, scope: !44, file: !43, line: 80, type: !30)
!50 = !DILocalVariable(name: "__pptr", scope: !51, file: !43, line: 82, type: !41)
!51 = distinct !DILexicalBlock(scope: !44, file: !43, line: 82, column: 2)
!52 = !{!53}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !42, file: !43, line: 82, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be64", file: !55, line: 41, baseType: !34)
!55 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !58, file: !43, line: 77, size: 32, elements: !66)
!58 = distinct !DISubprogram(name: "put_unaligned_be32", scope: !43, file: !43, line: 75, type: !59, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !39, !30}
!61 = !{!62, !63, !64}
!62 = !DILocalVariable(name: "val", arg: 1, scope: !58, file: !43, line: 75, type: !39)
!63 = !DILocalVariable(name: "p", arg: 2, scope: !58, file: !43, line: 75, type: !30)
!64 = !DILocalVariable(name: "__pptr", scope: !65, file: !43, line: 77, type: !56)
!65 = distinct !DILexicalBlock(scope: !58, file: !43, line: 77, column: 2)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !57, file: !43, line: 77, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !55, line: 39, baseType: !40)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !43, line: 72, size: 16, elements: !82)
!71 = distinct !DISubprogram(name: "put_unaligned_be16", scope: !43, file: !43, line: 70, type: !72, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !30}
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !76)
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80}
!78 = !DILocalVariable(name: "val", arg: 1, scope: !71, file: !43, line: 70, type: !74)
!79 = !DILocalVariable(name: "p", arg: 2, scope: !71, file: !43, line: 70, type: !30)
!80 = !DILocalVariable(name: "__pptr", scope: !81, file: !43, line: 72, type: !69)
!81 = distinct !DILexicalBlock(scope: !71, file: !43, line: 72, column: 2)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !70, file: !43, line: 72, baseType: !84, size: 16)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !55, line: 37, baseType: !75)
!85 = !{!0, !86, !92, !99, !101, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license196", scope: !2, file: !3, line: 15, type: !88, isLocal: true, isDefinition: true, align: 8)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 216, elements: !90)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!90 = !{!91}
!91 = !DISubrange(count: 27)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "scsi_command_size_tbl", scope: !2, file: !3, line: 18, type: !94, isLocal: false, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !97)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !{!98}
!98 = !DISubrange(count: 8)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_command_size_tbl197", scope: !2, file: !3, line: 21, type: !30, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !103, isLocal: true, isDefinition: true)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 144, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 18)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !103, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !103, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_device_type198", scope: !2, file: !3, line: 65, type: !30, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_pr_type_to_block199", scope: !2, file: !3, line: 86, type: !30, isLocal: true, isDefinition: true)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_block_pr_type_to_scsi200", scope: !2, file: !3, line: 107, type: !30, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsilun_to_int201", scope: !2, file: !3, line: 140, type: !30, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_int_to_scsilun202", scope: !2, file: !3, line: 169, type: !30, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_normalize_sense205", scope: !2, file: !3, line: 232, type: !30, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_sense_desc_find206", scope: !2, file: !3, line: 271, type: !30, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_build_sense_buffer207", scope: !2, file: !3, line: 299, type: !30, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_set_sense_information208", scope: !2, file: !3, line: 347, type: !30, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_set_sense_field_pointer209", scope: !2, file: !3, line: 400, type: !30, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !103, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !103, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !103, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !3, line: 31, type: !103, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !103, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !103, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !103, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !103, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !3, line: 36, type: !103, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 37, type: !103, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 38, type: !103, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 40, type: !103, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !103, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !103, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !103, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !103, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !103, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !103, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !103, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 48, type: !103, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "scsi_device_types", scope: !2, file: !3, line: 27, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 1344, elements: !175)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!175 = !{!176}
!176 = !DISubrange(count: 21)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 336, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 42)
!180 = !{i32 7, !"Dwarf Version", i32 5}
!181 = !{i32 2, !"Debug Info Version", i32 3}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 8, !"cf-protection-branch", i32 1}
!184 = !{i32 4, !"function_return_thunk_extern", i32 1}
!185 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!186 = !{i32 1, !"Code Model", i32 2}
!187 = !{i32 1, !"override-stack-alignment", i32 8}
!188 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!189 = distinct !DISubprogram(name: "scsi_device_type", scope: !3, file: !3, line: 55, type: !190, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!174, !7}
!192 = !{!193}
!193 = !DILocalVariable(name: "type", arg: 1, scope: !189, file: !3, line: 55, type: !7)
!194 = !DILocation(line: 55, column: 39, scope: !189)
!195 = !DILocation(line: 57, column: 6, scope: !196)
!196 = distinct !DILexicalBlock(scope: !189, file: !3, line: 57, column: 6)
!197 = !DILocation(line: 57, column: 11, scope: !196)
!198 = !DILocation(line: 57, column: 6, scope: !189)
!199 = !DILocation(line: 58, column: 3, scope: !196)
!200 = !DILocation(line: 59, column: 6, scope: !201)
!201 = distinct !DILexicalBlock(scope: !189, file: !3, line: 59, column: 6)
!202 = !DILocation(line: 59, column: 11, scope: !201)
!203 = !DILocation(line: 59, column: 6, scope: !189)
!204 = !DILocation(line: 60, column: 3, scope: !201)
!205 = !DILocation(line: 61, column: 6, scope: !206)
!206 = distinct !DILexicalBlock(scope: !189, file: !3, line: 61, column: 6)
!207 = !DILocation(line: 61, column: 11, scope: !206)
!208 = !DILocation(line: 61, column: 6, scope: !189)
!209 = !DILocation(line: 62, column: 3, scope: !206)
!210 = !DILocation(line: 63, column: 27, scope: !189)
!211 = !DILocation(line: 63, column: 9, scope: !189)
!212 = !DILocation(line: 63, column: 2, scope: !189)
!213 = !DILocation(line: 64, column: 1, scope: !189)
!214 = distinct !DISubprogram(name: "scsi_pr_type_to_block", scope: !3, file: !3, line: 67, type: !215, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!5, !15}
!217 = !{!218}
!218 = !DILocalVariable(name: "type", arg: 1, scope: !214, file: !3, line: 67, type: !15)
!219 = !DILocation(line: 67, column: 54, scope: !214)
!220 = !DILocation(line: 69, column: 10, scope: !214)
!221 = !DILocation(line: 69, column: 2, scope: !214)
!222 = !DILocation(line: 71, column: 3, scope: !223)
!223 = distinct !DILexicalBlock(scope: !214, file: !3, line: 69, column: 16)
!224 = !DILocation(line: 73, column: 3, scope: !223)
!225 = !DILocation(line: 75, column: 3, scope: !223)
!226 = !DILocation(line: 77, column: 3, scope: !223)
!227 = !DILocation(line: 79, column: 3, scope: !223)
!228 = !DILocation(line: 81, column: 3, scope: !223)
!229 = !DILocation(line: 84, column: 2, scope: !214)
!230 = !DILocation(line: 85, column: 1, scope: !214)
!231 = distinct !DISubprogram(name: "block_pr_type_to_scsi", scope: !3, file: !3, line: 88, type: !232, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!15, !5}
!234 = !{!235}
!235 = !DILocalVariable(name: "type", arg: 1, scope: !231, file: !3, line: 88, type: !5)
!236 = !DILocation(line: 88, column: 54, scope: !231)
!237 = !DILocation(line: 90, column: 10, scope: !231)
!238 = !DILocation(line: 90, column: 2, scope: !231)
!239 = !DILocation(line: 92, column: 3, scope: !240)
!240 = distinct !DILexicalBlock(scope: !231, file: !3, line: 90, column: 16)
!241 = !DILocation(line: 94, column: 3, scope: !240)
!242 = !DILocation(line: 96, column: 3, scope: !240)
!243 = !DILocation(line: 98, column: 3, scope: !240)
!244 = !DILocation(line: 100, column: 3, scope: !240)
!245 = !DILocation(line: 102, column: 3, scope: !240)
!246 = !DILocation(line: 105, column: 2, scope: !231)
!247 = !DILocation(line: 106, column: 1, scope: !231)
!248 = distinct !DISubprogram(name: "scsilun_to_int", scope: !3, file: !3, line: 129, type: !249, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !258)
!249 = !DISubroutineType(types: !250)
!250 = !{!32, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_lun", file: !253, line: 274, size: 64, elements: !254)
!253 = !DIFile(filename: "./include/scsi/scsi_proto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "77cf2b62faf3e11ee8f23d341eca254d")
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_lun", scope: !252, file: !253, line: 275, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 64, elements: !97)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !96)
!258 = !{!259, !260, !261}
!259 = !DILocalVariable(name: "scsilun", arg: 1, scope: !248, file: !3, line: 129, type: !251)
!260 = !DILocalVariable(name: "i", scope: !248, file: !3, line: 131, type: !31)
!261 = !DILocalVariable(name: "lun", scope: !248, file: !3, line: 132, type: !32)
!262 = !DILocation(line: 129, column: 37, scope: !248)
!263 = !DILocation(line: 131, column: 2, scope: !248)
!264 = !DILocation(line: 131, column: 6, scope: !248)
!265 = !DILocation(line: 132, column: 2, scope: !248)
!266 = !DILocation(line: 132, column: 6, scope: !248)
!267 = !DILocation(line: 134, column: 6, scope: !248)
!268 = !DILocation(line: 135, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !248, file: !3, line: 135, column: 2)
!270 = !DILocation(line: 135, column: 7, scope: !269)
!271 = !DILocation(line: 135, column: 14, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !3, line: 135, column: 2)
!273 = !DILocation(line: 135, column: 16, scope: !272)
!274 = !DILocation(line: 135, column: 2, scope: !269)
!275 = !DILocation(line: 136, column: 9, scope: !272)
!276 = !DILocation(line: 136, column: 22, scope: !272)
!277 = !DILocation(line: 136, column: 31, scope: !272)
!278 = !DILocation(line: 136, column: 40, scope: !272)
!279 = !DILocation(line: 136, column: 17, scope: !272)
!280 = !DILocation(line: 136, column: 48, scope: !272)
!281 = !DILocation(line: 136, column: 50, scope: !272)
!282 = !DILocation(line: 136, column: 55, scope: !272)
!283 = !DILocation(line: 136, column: 43, scope: !272)
!284 = !DILocation(line: 137, column: 15, scope: !272)
!285 = !DILocation(line: 137, column: 24, scope: !272)
!286 = !DILocation(line: 137, column: 33, scope: !272)
!287 = !DILocation(line: 137, column: 35, scope: !272)
!288 = !DILocation(line: 137, column: 10, scope: !272)
!289 = !DILocation(line: 137, column: 44, scope: !272)
!290 = !DILocation(line: 137, column: 46, scope: !272)
!291 = !DILocation(line: 137, column: 40, scope: !272)
!292 = !DILocation(line: 136, column: 61, scope: !272)
!293 = !DILocation(line: 136, column: 13, scope: !272)
!294 = !DILocation(line: 136, column: 7, scope: !272)
!295 = !DILocation(line: 136, column: 3, scope: !272)
!296 = !DILocation(line: 135, column: 33, scope: !272)
!297 = !DILocation(line: 135, column: 2, scope: !272)
!298 = distinct !{!298, !274, !299, !300, !301}
!299 = !DILocation(line: 137, column: 51, scope: !269)
!300 = !{!"llvm.loop.mustprogress"}
!301 = !{!"llvm.loop.unroll.disable"}
!302 = !DILocation(line: 138, column: 9, scope: !248)
!303 = !DILocation(line: 139, column: 1, scope: !248)
!304 = !DILocation(line: 138, column: 2, scope: !248)
!305 = distinct !DISubprogram(name: "int_to_scsilun", scope: !3, file: !3, line: 157, type: !306, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !32, !251}
!308 = !{!309, !310, !311}
!309 = !DILocalVariable(name: "lun", arg: 1, scope: !305, file: !3, line: 157, type: !32)
!310 = !DILocalVariable(name: "scsilun", arg: 2, scope: !305, file: !3, line: 157, type: !251)
!311 = !DILocalVariable(name: "i", scope: !305, file: !3, line: 159, type: !31)
!312 = !DILocation(line: 157, column: 25, scope: !305)
!313 = !DILocation(line: 157, column: 47, scope: !305)
!314 = !DILocation(line: 159, column: 2, scope: !305)
!315 = !DILocation(line: 159, column: 6, scope: !305)
!316 = !DILocation(line: 161, column: 9, scope: !305)
!317 = !DILocation(line: 161, column: 18, scope: !305)
!318 = !DILocation(line: 161, column: 2, scope: !305)
!319 = !DILocation(line: 163, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !305, file: !3, line: 163, column: 2)
!321 = !DILocation(line: 163, column: 7, scope: !320)
!322 = !DILocation(line: 163, column: 14, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !3, line: 163, column: 2)
!324 = !DILocation(line: 163, column: 16, scope: !323)
!325 = !DILocation(line: 163, column: 2, scope: !320)
!326 = !DILocation(line: 164, column: 27, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 163, column: 39)
!328 = !DILocation(line: 164, column: 31, scope: !327)
!329 = !DILocation(line: 164, column: 37, scope: !327)
!330 = !DILocation(line: 164, column: 26, scope: !327)
!331 = !DILocation(line: 164, column: 3, scope: !327)
!332 = !DILocation(line: 164, column: 12, scope: !327)
!333 = !DILocation(line: 164, column: 21, scope: !327)
!334 = !DILocation(line: 164, column: 24, scope: !327)
!335 = !DILocation(line: 165, column: 28, scope: !327)
!336 = !DILocation(line: 165, column: 32, scope: !327)
!337 = !DILocation(line: 165, column: 3, scope: !327)
!338 = !DILocation(line: 165, column: 12, scope: !327)
!339 = !DILocation(line: 165, column: 21, scope: !327)
!340 = !DILocation(line: 165, column: 22, scope: !327)
!341 = !DILocation(line: 165, column: 26, scope: !327)
!342 = !DILocation(line: 166, column: 9, scope: !327)
!343 = !DILocation(line: 166, column: 13, scope: !327)
!344 = !DILocation(line: 166, column: 7, scope: !327)
!345 = !DILocation(line: 167, column: 2, scope: !327)
!346 = !DILocation(line: 163, column: 33, scope: !323)
!347 = !DILocation(line: 163, column: 2, scope: !323)
!348 = distinct !{!348, !325, !349, !300, !301}
!349 = !DILocation(line: 167, column: 2, scope: !320)
!350 = !DILocation(line: 168, column: 1, scope: !305)
!351 = distinct !DISubprogram(name: "scsi_normalize_sense", scope: !3, file: !3, line: 190, type: !352, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !371)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !357, !31, !360}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !355, line: 35, baseType: !356)
!355 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!356 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !33, line: 17, baseType: !257)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_sense_hdr", file: !16, line: 63, size: 64, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "response_code", scope: !361, file: !16, line: 64, baseType: !359, size: 8)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sense_key", scope: !361, file: !16, line: 65, baseType: !359, size: 8, offset: 8)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "asc", scope: !361, file: !16, line: 66, baseType: !359, size: 8, offset: 16)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ascq", scope: !361, file: !16, line: 67, baseType: !359, size: 8, offset: 24)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "byte4", scope: !361, file: !16, line: 68, baseType: !359, size: 8, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "byte5", scope: !361, file: !16, line: 69, baseType: !359, size: 8, offset: 40)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "byte6", scope: !361, file: !16, line: 70, baseType: !359, size: 8, offset: 48)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "additional_length", scope: !361, file: !16, line: 71, baseType: !359, size: 8, offset: 56)
!371 = !{!372, !373, !374, !375, !381}
!372 = !DILocalVariable(name: "sense_buffer", arg: 1, scope: !351, file: !3, line: 190, type: !357)
!373 = !DILocalVariable(name: "sb_len", arg: 2, scope: !351, file: !3, line: 190, type: !31)
!374 = !DILocalVariable(name: "sshdr", arg: 3, scope: !351, file: !3, line: 191, type: !360)
!375 = !DILocalVariable(name: "__UNIQUE_ID___x203", scope: !376, file: !3, line: 222, type: !31)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 222, column: 13)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 221, column: 19)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 221, column: 7)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 215, column: 9)
!380 = distinct !DILexicalBlock(scope: !351, file: !3, line: 203, column: 6)
!381 = !DILocalVariable(name: "__UNIQUE_ID___y204", scope: !376, file: !3, line: 222, type: !31)
!382 = !DILocation(line: 190, column: 37, scope: !351)
!383 = !DILocation(line: 190, column: 55, scope: !351)
!384 = !DILocation(line: 191, column: 29, scope: !351)
!385 = !DILocation(line: 193, column: 9, scope: !351)
!386 = !DILocation(line: 193, column: 2, scope: !351)
!387 = !DILocation(line: 195, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !351, file: !3, line: 195, column: 6)
!389 = !DILocation(line: 195, column: 20, scope: !388)
!390 = !DILocation(line: 195, column: 24, scope: !388)
!391 = !DILocation(line: 195, column: 6, scope: !351)
!392 = !DILocation(line: 196, column: 3, scope: !388)
!393 = !DILocation(line: 198, column: 26, scope: !351)
!394 = !DILocation(line: 198, column: 42, scope: !351)
!395 = !DILocation(line: 198, column: 25, scope: !351)
!396 = !DILocation(line: 198, column: 2, scope: !351)
!397 = !DILocation(line: 198, column: 9, scope: !351)
!398 = !DILocation(line: 198, column: 23, scope: !351)
!399 = !DILocation(line: 200, column: 24, scope: !400)
!400 = distinct !DILexicalBlock(scope: !351, file: !3, line: 200, column: 6)
!401 = !DILocation(line: 200, column: 7, scope: !400)
!402 = !DILocation(line: 200, column: 6, scope: !351)
!403 = !DILocation(line: 201, column: 3, scope: !400)
!404 = !DILocation(line: 203, column: 6, scope: !380)
!405 = !DILocation(line: 203, column: 13, scope: !380)
!406 = !DILocation(line: 203, column: 27, scope: !380)
!407 = !DILocation(line: 203, column: 6, scope: !351)
!408 = !DILocation(line: 207, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 207, column: 7)
!410 = distinct !DILexicalBlock(scope: !380, file: !3, line: 203, column: 36)
!411 = !DILocation(line: 207, column: 14, scope: !409)
!412 = !DILocation(line: 207, column: 7, scope: !410)
!413 = !DILocation(line: 208, column: 24, scope: !409)
!414 = !DILocation(line: 208, column: 40, scope: !409)
!415 = !DILocation(line: 208, column: 23, scope: !409)
!416 = !DILocation(line: 208, column: 4, scope: !409)
!417 = !DILocation(line: 208, column: 11, scope: !409)
!418 = !DILocation(line: 208, column: 21, scope: !409)
!419 = !DILocation(line: 209, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !410, file: !3, line: 209, column: 7)
!421 = !DILocation(line: 209, column: 14, scope: !420)
!422 = !DILocation(line: 209, column: 7, scope: !410)
!423 = !DILocation(line: 210, column: 17, scope: !420)
!424 = !DILocation(line: 210, column: 4, scope: !420)
!425 = !DILocation(line: 210, column: 11, scope: !420)
!426 = !DILocation(line: 210, column: 15, scope: !420)
!427 = !DILocation(line: 211, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !410, file: !3, line: 211, column: 7)
!429 = !DILocation(line: 211, column: 14, scope: !428)
!430 = !DILocation(line: 211, column: 7, scope: !410)
!431 = !DILocation(line: 212, column: 18, scope: !428)
!432 = !DILocation(line: 212, column: 4, scope: !428)
!433 = !DILocation(line: 212, column: 11, scope: !428)
!434 = !DILocation(line: 212, column: 16, scope: !428)
!435 = !DILocation(line: 213, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !410, file: !3, line: 213, column: 7)
!437 = !DILocation(line: 213, column: 14, scope: !436)
!438 = !DILocation(line: 213, column: 7, scope: !410)
!439 = !DILocation(line: 214, column: 31, scope: !436)
!440 = !DILocation(line: 214, column: 4, scope: !436)
!441 = !DILocation(line: 214, column: 11, scope: !436)
!442 = !DILocation(line: 214, column: 29, scope: !436)
!443 = !DILocation(line: 215, column: 2, scope: !410)
!444 = !DILocation(line: 219, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !379, file: !3, line: 219, column: 7)
!446 = !DILocation(line: 219, column: 14, scope: !445)
!447 = !DILocation(line: 219, column: 7, scope: !379)
!448 = !DILocation(line: 220, column: 24, scope: !445)
!449 = !DILocation(line: 220, column: 40, scope: !445)
!450 = !DILocation(line: 220, column: 23, scope: !445)
!451 = !DILocation(line: 220, column: 4, scope: !445)
!452 = !DILocation(line: 220, column: 11, scope: !445)
!453 = !DILocation(line: 220, column: 21, scope: !445)
!454 = !DILocation(line: 221, column: 7, scope: !378)
!455 = !DILocation(line: 221, column: 14, scope: !378)
!456 = !DILocation(line: 221, column: 7, scope: !379)
!457 = !DILocation(line: 222, column: 13, scope: !376)
!458 = !DILocation(line: 222, column: 13, scope: !377)
!459 = !DILocation(line: 222, column: 11, scope: !377)
!460 = !DILocation(line: 223, column: 8, scope: !461)
!461 = distinct !DILexicalBlock(scope: !377, file: !3, line: 223, column: 8)
!462 = !DILocation(line: 223, column: 15, scope: !461)
!463 = !DILocation(line: 223, column: 8, scope: !377)
!464 = !DILocation(line: 224, column: 18, scope: !461)
!465 = !DILocation(line: 224, column: 5, scope: !461)
!466 = !DILocation(line: 224, column: 12, scope: !461)
!467 = !DILocation(line: 224, column: 16, scope: !461)
!468 = !DILocation(line: 225, column: 8, scope: !469)
!469 = distinct !DILexicalBlock(scope: !377, file: !3, line: 225, column: 8)
!470 = !DILocation(line: 225, column: 15, scope: !469)
!471 = !DILocation(line: 225, column: 8, scope: !377)
!472 = !DILocation(line: 226, column: 19, scope: !469)
!473 = !DILocation(line: 226, column: 5, scope: !469)
!474 = !DILocation(line: 226, column: 12, scope: !469)
!475 = !DILocation(line: 226, column: 17, scope: !469)
!476 = !DILocation(line: 227, column: 3, scope: !377)
!477 = !DILocation(line: 230, column: 2, scope: !351)
!478 = !DILocation(line: 231, column: 1, scope: !351)
!479 = distinct !DISubprogram(name: "scsi_sense_valid", scope: !16, file: !16, line: 74, type: !480, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!480 = !DISubroutineType(types: !481)
!481 = !{!354, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!484 = !{!485}
!485 = !DILocalVariable(name: "sshdr", arg: 1, scope: !479, file: !16, line: 74, type: !482)
!486 = !DILocation(line: 74, column: 66, scope: !479)
!487 = !DILocation(line: 76, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !479, file: !16, line: 76, column: 6)
!489 = !DILocation(line: 76, column: 6, scope: !479)
!490 = !DILocation(line: 77, column: 3, scope: !488)
!491 = !DILocation(line: 79, column: 10, scope: !479)
!492 = !DILocation(line: 79, column: 17, scope: !479)
!493 = !DILocation(line: 79, column: 31, scope: !479)
!494 = !DILocation(line: 79, column: 39, scope: !479)
!495 = !DILocation(line: 79, column: 2, scope: !479)
!496 = !DILocation(line: 80, column: 1, scope: !479)
!497 = distinct !DISubprogram(name: "scsi_sense_desc_find", scope: !3, file: !3, line: 247, type: !498, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{!357, !357, !31, !31}
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508}
!501 = !DILocalVariable(name: "sense_buffer", arg: 1, scope: !497, file: !3, line: 247, type: !357)
!502 = !DILocalVariable(name: "sb_len", arg: 2, scope: !497, file: !3, line: 247, type: !31)
!503 = !DILocalVariable(name: "desc_type", arg: 3, scope: !497, file: !3, line: 248, type: !31)
!504 = !DILocalVariable(name: "add_sen_len", scope: !497, file: !3, line: 250, type: !31)
!505 = !DILocalVariable(name: "add_len", scope: !497, file: !3, line: 250, type: !31)
!506 = !DILocalVariable(name: "desc_len", scope: !497, file: !3, line: 250, type: !31)
!507 = !DILocalVariable(name: "k", scope: !497, file: !3, line: 250, type: !31)
!508 = !DILocalVariable(name: "descp", scope: !497, file: !3, line: 251, type: !357)
!509 = !DILocation(line: 247, column: 44, scope: !497)
!510 = !DILocation(line: 247, column: 62, scope: !497)
!511 = !DILocation(line: 248, column: 9, scope: !497)
!512 = !DILocation(line: 250, column: 2, scope: !497)
!513 = !DILocation(line: 250, column: 6, scope: !497)
!514 = !DILocation(line: 250, column: 19, scope: !497)
!515 = !DILocation(line: 250, column: 28, scope: !497)
!516 = !DILocation(line: 250, column: 38, scope: !497)
!517 = !DILocation(line: 251, column: 2, scope: !497)
!518 = !DILocation(line: 251, column: 13, scope: !497)
!519 = !DILocation(line: 253, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !497, file: !3, line: 253, column: 6)
!521 = !DILocation(line: 253, column: 14, scope: !520)
!522 = !DILocation(line: 253, column: 19, scope: !520)
!523 = !DILocation(line: 253, column: 43, scope: !520)
!524 = !DILocation(line: 253, column: 41, scope: !520)
!525 = !DILocation(line: 253, column: 25, scope: !520)
!526 = !DILocation(line: 253, column: 6, scope: !497)
!527 = !DILocation(line: 254, column: 3, scope: !520)
!528 = !DILocation(line: 255, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !497, file: !3, line: 255, column: 6)
!530 = !DILocation(line: 255, column: 23, scope: !529)
!531 = !DILocation(line: 255, column: 31, scope: !529)
!532 = !DILocation(line: 255, column: 35, scope: !529)
!533 = !DILocation(line: 255, column: 51, scope: !529)
!534 = !DILocation(line: 255, column: 6, scope: !497)
!535 = !DILocation(line: 256, column: 3, scope: !529)
!536 = !DILocation(line: 257, column: 17, scope: !497)
!537 = !DILocation(line: 257, column: 32, scope: !497)
!538 = !DILocation(line: 257, column: 39, scope: !497)
!539 = !DILocation(line: 257, column: 29, scope: !497)
!540 = !DILocation(line: 257, column: 16, scope: !497)
!541 = !DILocation(line: 258, column: 4, scope: !497)
!542 = !DILocation(line: 258, column: 19, scope: !497)
!543 = !DILocation(line: 258, column: 26, scope: !497)
!544 = !DILocation(line: 257, column: 14, scope: !497)
!545 = !DILocation(line: 259, column: 11, scope: !497)
!546 = !DILocation(line: 259, column: 8, scope: !497)
!547 = !DILocation(line: 260, column: 16, scope: !548)
!548 = distinct !DILexicalBlock(scope: !497, file: !3, line: 260, column: 2)
!549 = !DILocation(line: 260, column: 23, scope: !548)
!550 = !DILocation(line: 260, column: 7, scope: !548)
!551 = !DILocation(line: 260, column: 28, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !3, line: 260, column: 2)
!553 = !DILocation(line: 260, column: 32, scope: !552)
!554 = !DILocation(line: 260, column: 30, scope: !552)
!555 = !DILocation(line: 260, column: 2, scope: !548)
!556 = !DILocation(line: 261, column: 12, scope: !557)
!557 = distinct !DILexicalBlock(scope: !552, file: !3, line: 260, column: 60)
!558 = !DILocation(line: 261, column: 9, scope: !557)
!559 = !DILocation(line: 262, column: 14, scope: !557)
!560 = !DILocation(line: 262, column: 19, scope: !557)
!561 = !DILocation(line: 262, column: 31, scope: !557)
!562 = !DILocation(line: 262, column: 16, scope: !557)
!563 = !DILocation(line: 262, column: 13, scope: !557)
!564 = !DILocation(line: 262, column: 39, scope: !557)
!565 = !DILocation(line: 262, column: 11, scope: !557)
!566 = !DILocation(line: 263, column: 14, scope: !557)
!567 = !DILocation(line: 263, column: 22, scope: !557)
!568 = !DILocation(line: 263, column: 12, scope: !557)
!569 = !DILocation(line: 264, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !557, file: !3, line: 264, column: 7)
!571 = !DILocation(line: 264, column: 19, scope: !570)
!572 = !DILocation(line: 264, column: 16, scope: !570)
!573 = !DILocation(line: 264, column: 7, scope: !557)
!574 = !DILocation(line: 265, column: 11, scope: !570)
!575 = !DILocation(line: 265, column: 4, scope: !570)
!576 = !DILocation(line: 266, column: 7, scope: !577)
!577 = distinct !DILexicalBlock(scope: !557, file: !3, line: 266, column: 7)
!578 = !DILocation(line: 266, column: 15, scope: !577)
!579 = !DILocation(line: 266, column: 7, scope: !557)
!580 = !DILocation(line: 267, column: 4, scope: !577)
!581 = !DILocation(line: 268, column: 2, scope: !557)
!582 = !DILocation(line: 260, column: 50, scope: !552)
!583 = !DILocation(line: 260, column: 47, scope: !552)
!584 = !DILocation(line: 260, column: 2, scope: !552)
!585 = distinct !{!585, !555, !586, !300, !301}
!586 = !DILocation(line: 268, column: 2, scope: !548)
!587 = !DILocation(line: 269, column: 2, scope: !497)
!588 = !DILocation(line: 270, column: 1, scope: !497)
!589 = distinct !DISubprogram(name: "scsi_build_sense_buffer", scope: !3, file: !3, line: 283, type: !590, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !31, !592, !359, !359, !359}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!593 = !{!594, !595, !596, !597, !598}
!594 = !DILocalVariable(name: "desc", arg: 1, scope: !589, file: !3, line: 283, type: !31)
!595 = !DILocalVariable(name: "buf", arg: 2, scope: !589, file: !3, line: 283, type: !592)
!596 = !DILocalVariable(name: "key", arg: 3, scope: !589, file: !3, line: 283, type: !359)
!597 = !DILocalVariable(name: "asc", arg: 4, scope: !589, file: !3, line: 283, type: !359)
!598 = !DILocalVariable(name: "ascq", arg: 5, scope: !589, file: !3, line: 283, type: !359)
!599 = !DILocation(line: 283, column: 34, scope: !589)
!600 = !DILocation(line: 283, column: 44, scope: !589)
!601 = !DILocation(line: 283, column: 52, scope: !589)
!602 = !DILocation(line: 283, column: 60, scope: !589)
!603 = !DILocation(line: 283, column: 68, scope: !589)
!604 = !DILocation(line: 285, column: 6, scope: !605)
!605 = distinct !DILexicalBlock(scope: !589, file: !3, line: 285, column: 6)
!606 = !DILocation(line: 285, column: 6, scope: !589)
!607 = !DILocation(line: 286, column: 3, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 285, column: 12)
!609 = !DILocation(line: 286, column: 10, scope: !608)
!610 = !DILocation(line: 287, column: 12, scope: !608)
!611 = !DILocation(line: 287, column: 3, scope: !608)
!612 = !DILocation(line: 287, column: 10, scope: !608)
!613 = !DILocation(line: 288, column: 12, scope: !608)
!614 = !DILocation(line: 288, column: 3, scope: !608)
!615 = !DILocation(line: 288, column: 10, scope: !608)
!616 = !DILocation(line: 289, column: 12, scope: !608)
!617 = !DILocation(line: 289, column: 3, scope: !608)
!618 = !DILocation(line: 289, column: 10, scope: !608)
!619 = !DILocation(line: 290, column: 3, scope: !608)
!620 = !DILocation(line: 290, column: 10, scope: !608)
!621 = !DILocation(line: 291, column: 2, scope: !608)
!622 = !DILocation(line: 292, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !605, file: !3, line: 291, column: 9)
!624 = !DILocation(line: 292, column: 10, scope: !623)
!625 = !DILocation(line: 293, column: 12, scope: !623)
!626 = !DILocation(line: 293, column: 3, scope: !623)
!627 = !DILocation(line: 293, column: 10, scope: !623)
!628 = !DILocation(line: 294, column: 3, scope: !623)
!629 = !DILocation(line: 294, column: 10, scope: !623)
!630 = !DILocation(line: 295, column: 13, scope: !623)
!631 = !DILocation(line: 295, column: 3, scope: !623)
!632 = !DILocation(line: 295, column: 11, scope: !623)
!633 = !DILocation(line: 296, column: 13, scope: !623)
!634 = !DILocation(line: 296, column: 3, scope: !623)
!635 = !DILocation(line: 296, column: 11, scope: !623)
!636 = !DILocation(line: 298, column: 1, scope: !589)
!637 = distinct !DISubprogram(name: "scsi_set_sense_information", scope: !3, file: !3, line: 311, type: !638, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !640)
!638 = !DISubroutineType(types: !639)
!639 = !{!31, !592, !31, !32}
!640 = !{!641, !642, !643, !644, !647}
!641 = !DILocalVariable(name: "buf", arg: 1, scope: !637, file: !3, line: 311, type: !592)
!642 = !DILocalVariable(name: "buf_len", arg: 2, scope: !637, file: !3, line: 311, type: !31)
!643 = !DILocalVariable(name: "info", arg: 3, scope: !637, file: !3, line: 311, type: !32)
!644 = !DILocalVariable(name: "ucp", scope: !645, file: !3, line: 314, type: !592)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 313, column: 31)
!646 = distinct !DILexicalBlock(scope: !637, file: !3, line: 313, column: 6)
!647 = !DILocalVariable(name: "len", scope: !645, file: !3, line: 314, type: !359)
!648 = !DILocation(line: 311, column: 36, scope: !637)
!649 = !DILocation(line: 311, column: 45, scope: !637)
!650 = !DILocation(line: 311, column: 58, scope: !637)
!651 = !DILocation(line: 313, column: 7, scope: !646)
!652 = !DILocation(line: 313, column: 14, scope: !646)
!653 = !DILocation(line: 313, column: 22, scope: !646)
!654 = !DILocation(line: 313, column: 6, scope: !637)
!655 = !DILocation(line: 314, column: 3, scope: !645)
!656 = !DILocation(line: 314, column: 7, scope: !645)
!657 = !DILocation(line: 314, column: 12, scope: !645)
!658 = !DILocation(line: 316, column: 9, scope: !645)
!659 = !DILocation(line: 316, column: 7, scope: !645)
!660 = !DILocation(line: 317, column: 38, scope: !645)
!661 = !DILocation(line: 317, column: 43, scope: !645)
!662 = !DILocation(line: 317, column: 47, scope: !645)
!663 = !DILocation(line: 317, column: 17, scope: !645)
!664 = !DILocation(line: 317, column: 7, scope: !645)
!665 = !DILocation(line: 318, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !645, file: !3, line: 318, column: 7)
!667 = !DILocation(line: 318, column: 7, scope: !645)
!668 = !DILocation(line: 319, column: 13, scope: !669)
!669 = distinct !DILexicalBlock(scope: !666, file: !3, line: 318, column: 13)
!670 = !DILocation(line: 319, column: 17, scope: !669)
!671 = !DILocation(line: 319, column: 4, scope: !669)
!672 = !DILocation(line: 319, column: 11, scope: !669)
!673 = !DILocation(line: 320, column: 10, scope: !669)
!674 = !DILocation(line: 320, column: 14, scope: !669)
!675 = !DILocation(line: 320, column: 20, scope: !669)
!676 = !DILocation(line: 320, column: 18, scope: !669)
!677 = !DILocation(line: 320, column: 8, scope: !669)
!678 = !DILocation(line: 321, column: 3, scope: !669)
!679 = !DILocation(line: 323, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !645, file: !3, line: 323, column: 7)
!681 = !DILocation(line: 323, column: 17, scope: !680)
!682 = !DILocation(line: 323, column: 21, scope: !680)
!683 = !DILocation(line: 323, column: 15, scope: !680)
!684 = !DILocation(line: 323, column: 7, scope: !645)
!685 = !DILocation(line: 325, column: 4, scope: !680)
!686 = !DILocation(line: 327, column: 3, scope: !645)
!687 = !DILocation(line: 327, column: 10, scope: !645)
!688 = !DILocation(line: 328, column: 3, scope: !645)
!689 = !DILocation(line: 328, column: 10, scope: !645)
!690 = !DILocation(line: 329, column: 3, scope: !645)
!691 = !DILocation(line: 329, column: 10, scope: !645)
!692 = !DILocation(line: 330, column: 3, scope: !645)
!693 = !DILocation(line: 330, column: 10, scope: !645)
!694 = !DILocation(line: 331, column: 22, scope: !645)
!695 = !DILocation(line: 331, column: 29, scope: !645)
!696 = !DILocation(line: 331, column: 3, scope: !645)
!697 = !DILocation(line: 332, column: 2, scope: !646)
!698 = !DILocation(line: 332, column: 2, scope: !645)
!699 = !DILocation(line: 332, column: 14, scope: !700)
!700 = distinct !DILexicalBlock(scope: !646, file: !3, line: 332, column: 13)
!701 = !DILocation(line: 332, column: 21, scope: !700)
!702 = !DILocation(line: 332, column: 29, scope: !700)
!703 = !DILocation(line: 332, column: 13, scope: !646)
!704 = !DILocation(line: 338, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 338, column: 7)
!706 = distinct !DILexicalBlock(scope: !700, file: !3, line: 332, column: 38)
!707 = !DILocation(line: 338, column: 12, scope: !705)
!708 = !DILocation(line: 338, column: 7, scope: !706)
!709 = !DILocation(line: 339, column: 4, scope: !705)
!710 = !DILocation(line: 339, column: 11, scope: !705)
!711 = !DILocation(line: 341, column: 4, scope: !705)
!712 = !DILocation(line: 341, column: 11, scope: !705)
!713 = !DILocation(line: 342, column: 27, scope: !706)
!714 = !DILocation(line: 342, column: 22, scope: !706)
!715 = !DILocation(line: 342, column: 34, scope: !706)
!716 = !DILocation(line: 342, column: 3, scope: !706)
!717 = !DILocation(line: 343, column: 2, scope: !706)
!718 = !DILocation(line: 345, column: 2, scope: !637)
!719 = !DILocation(line: 346, column: 1, scope: !637)
!720 = !DILocation(line: 80, column: 43, scope: !44)
!721 = !DILocation(line: 80, column: 54, scope: !44)
!722 = !DILocation(line: 82, column: 2, scope: !44)
!723 = !DILocation(line: 82, column: 2, scope: !51)
!724 = !DILocation(line: 83, column: 1, scope: !44)
!725 = !DILocation(line: 75, column: 43, scope: !58)
!726 = !DILocation(line: 75, column: 54, scope: !58)
!727 = !DILocation(line: 77, column: 2, scope: !58)
!728 = !DILocation(line: 77, column: 2, scope: !65)
!729 = !DILocation(line: 78, column: 1, scope: !58)
!730 = distinct !DISubprogram(name: "scsi_set_sense_field_pointer", scope: !3, file: !3, line: 361, type: !731, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!31, !592, !31, !74, !359, !354}
!733 = !{!734, !735, !736, !737, !738, !739, !740}
!734 = !DILocalVariable(name: "buf", arg: 1, scope: !730, file: !3, line: 361, type: !592)
!735 = !DILocalVariable(name: "buf_len", arg: 2, scope: !730, file: !3, line: 361, type: !31)
!736 = !DILocalVariable(name: "fp", arg: 3, scope: !730, file: !3, line: 361, type: !74)
!737 = !DILocalVariable(name: "bp", arg: 4, scope: !730, file: !3, line: 361, type: !359)
!738 = !DILocalVariable(name: "cd", arg: 5, scope: !730, file: !3, line: 361, type: !354)
!739 = !DILocalVariable(name: "ucp", scope: !730, file: !3, line: 363, type: !592)
!740 = !DILocalVariable(name: "len", scope: !730, file: !3, line: 363, type: !359)
!741 = !DILocation(line: 361, column: 38, scope: !730)
!742 = !DILocation(line: 361, column: 47, scope: !730)
!743 = !DILocation(line: 361, column: 60, scope: !730)
!744 = !DILocation(line: 361, column: 67, scope: !730)
!745 = !DILocation(line: 361, column: 76, scope: !730)
!746 = !DILocation(line: 363, column: 2, scope: !730)
!747 = !DILocation(line: 363, column: 6, scope: !730)
!748 = !DILocation(line: 363, column: 11, scope: !730)
!749 = !DILocation(line: 365, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !730, file: !3, line: 365, column: 6)
!751 = !DILocation(line: 365, column: 14, scope: !750)
!752 = !DILocation(line: 365, column: 22, scope: !750)
!753 = !DILocation(line: 365, column: 6, scope: !730)
!754 = !DILocation(line: 366, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !750, file: !3, line: 365, column: 31)
!756 = !DILocation(line: 366, column: 7, scope: !755)
!757 = !DILocation(line: 367, column: 38, scope: !755)
!758 = !DILocation(line: 367, column: 43, scope: !755)
!759 = !DILocation(line: 367, column: 47, scope: !755)
!760 = !DILocation(line: 367, column: 17, scope: !755)
!761 = !DILocation(line: 367, column: 7, scope: !755)
!762 = !DILocation(line: 368, column: 8, scope: !763)
!763 = distinct !DILexicalBlock(scope: !755, file: !3, line: 368, column: 7)
!764 = !DILocation(line: 368, column: 7, scope: !755)
!765 = !DILocation(line: 369, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !763, file: !3, line: 368, column: 13)
!767 = !DILocation(line: 369, column: 17, scope: !766)
!768 = !DILocation(line: 369, column: 4, scope: !766)
!769 = !DILocation(line: 369, column: 11, scope: !766)
!770 = !DILocation(line: 370, column: 10, scope: !766)
!771 = !DILocation(line: 370, column: 14, scope: !766)
!772 = !DILocation(line: 370, column: 20, scope: !766)
!773 = !DILocation(line: 370, column: 18, scope: !766)
!774 = !DILocation(line: 370, column: 8, scope: !766)
!775 = !DILocation(line: 371, column: 3, scope: !766)
!776 = !DILocation(line: 373, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !755, file: !3, line: 373, column: 7)
!778 = !DILocation(line: 373, column: 17, scope: !777)
!779 = !DILocation(line: 373, column: 21, scope: !777)
!780 = !DILocation(line: 373, column: 15, scope: !777)
!781 = !DILocation(line: 373, column: 7, scope: !755)
!782 = !DILocation(line: 375, column: 4, scope: !777)
!783 = !DILocation(line: 377, column: 3, scope: !755)
!784 = !DILocation(line: 377, column: 10, scope: !755)
!785 = !DILocation(line: 378, column: 3, scope: !755)
!786 = !DILocation(line: 378, column: 10, scope: !755)
!787 = !DILocation(line: 379, column: 3, scope: !755)
!788 = !DILocation(line: 379, column: 10, scope: !755)
!789 = !DILocation(line: 380, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !755, file: !3, line: 380, column: 7)
!791 = !{i8 0, i8 2}
!792 = !{}
!793 = !DILocation(line: 380, column: 7, scope: !755)
!794 = !DILocation(line: 381, column: 4, scope: !790)
!795 = !DILocation(line: 381, column: 11, scope: !790)
!796 = !DILocation(line: 382, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !755, file: !3, line: 382, column: 7)
!798 = !DILocation(line: 382, column: 10, scope: !797)
!799 = !DILocation(line: 382, column: 7, scope: !755)
!800 = !DILocation(line: 383, column: 20, scope: !797)
!801 = !DILocation(line: 383, column: 18, scope: !797)
!802 = !DILocation(line: 383, column: 4, scope: !797)
!803 = !DILocation(line: 383, column: 11, scope: !797)
!804 = !DILocation(line: 384, column: 22, scope: !755)
!805 = !DILocation(line: 384, column: 27, scope: !755)
!806 = !DILocation(line: 384, column: 3, scope: !755)
!807 = !DILocation(line: 385, column: 2, scope: !755)
!808 = !DILocation(line: 385, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !750, file: !3, line: 385, column: 13)
!810 = !DILocation(line: 385, column: 21, scope: !809)
!811 = !DILocation(line: 385, column: 29, scope: !809)
!812 = !DILocation(line: 385, column: 13, scope: !750)
!813 = !DILocation(line: 386, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !3, line: 385, column: 38)
!815 = !DILocation(line: 386, column: 7, scope: !814)
!816 = !DILocation(line: 387, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !814, file: !3, line: 387, column: 7)
!818 = !DILocation(line: 387, column: 11, scope: !817)
!819 = !DILocation(line: 387, column: 7, scope: !814)
!820 = !DILocation(line: 388, column: 4, scope: !817)
!821 = !DILocation(line: 388, column: 11, scope: !817)
!822 = !DILocation(line: 390, column: 3, scope: !814)
!823 = !DILocation(line: 390, column: 11, scope: !814)
!824 = !DILocation(line: 391, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !814, file: !3, line: 391, column: 7)
!826 = !DILocation(line: 391, column: 7, scope: !814)
!827 = !DILocation(line: 392, column: 4, scope: !825)
!828 = !DILocation(line: 392, column: 12, scope: !825)
!829 = !DILocation(line: 393, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !814, file: !3, line: 393, column: 7)
!831 = !DILocation(line: 393, column: 10, scope: !830)
!832 = !DILocation(line: 393, column: 7, scope: !814)
!833 = !DILocation(line: 394, column: 21, scope: !830)
!834 = !DILocation(line: 394, column: 19, scope: !830)
!835 = !DILocation(line: 394, column: 4, scope: !830)
!836 = !DILocation(line: 394, column: 12, scope: !830)
!837 = !DILocation(line: 395, column: 22, scope: !814)
!838 = !DILocation(line: 395, column: 27, scope: !814)
!839 = !DILocation(line: 395, column: 3, scope: !814)
!840 = !DILocation(line: 396, column: 2, scope: !814)
!841 = !DILocation(line: 398, column: 2, scope: !730)
!842 = !DILocation(line: 399, column: 1, scope: !730)
!843 = !DILocation(line: 70, column: 43, scope: !71)
!844 = !DILocation(line: 70, column: 54, scope: !71)
!845 = !DILocation(line: 72, column: 2, scope: !71)
!846 = !DILocation(line: 72, column: 2, scope: !81)
!847 = !DILocation(line: 73, column: 1, scope: !71)
